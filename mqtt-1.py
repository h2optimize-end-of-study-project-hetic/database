import os
import json
import time
import traceback
from datetime import datetime, timezone

import psycopg
import paho.mqtt.client as mqtt

# ------------------ Config ------------------

MQTT_TOPIC = os.getenv("MQTT_TOPIC", "pws-packet/202481594056612/#")
MQTT_BROKER = os.getenv("MQTT_BROKER", "176.186.143.117")
MQTT_PORT = int(os.getenv("MQTT_PORT", 8828))

host = os.getenv("POSTGRES_HOST", "postgres")
port = os.getenv("POSTGRES_INT_PORT", 5432)
dbname = os.getenv("POSTGRES_DB", "app")
user = os.getenv("POSTGRES_USER", "admin")
password = os.getenv("POSTGRES_PASSWORD", "ChangeMe")

# ------------------ Connexion PostgreSQL ------------------

def connect_pg():
    for i in range(5):
        try:
            conn = psycopg.connect(
                dbname=dbname, user=user, password=password, host=host, port=port
            )
            print("[PG] Connexion à PostgreSQL réussie.")
            return conn
        except psycopg.OperationalError as e:
            print(f"[PG] PostgreSQL indisponible (tentative {i+1}/5) : {e}")
            time.sleep(5)
    print("[PG] Échec critique : impossible de se connecter.")
    exit(1)

conn = connect_pg()
cur = conn.cursor()

# ------------------ Utilitaires ------------------

def to_ts(ms):
    return datetime.fromtimestamp(ms / 1000, tz=timezone.utc)

def validate_field(data, key, expected_type):
    try:
        value = data.get(key)
        if isinstance(value, expected_type):
            return value, 1.0
        else:
            return None, 0.0
    except Exception:
        return None, 0.0

# ------------------ Insertion ------------------

def insert_data(data):
    # Sécurité stricte : vérifier que les champs minimaux existent
    if not isinstance(data, dict):
        print(f"[WARN] Rejeté : message non dict → {data}")
        return

    if "tx_time_ms_epoch" not in data or "data" not in data:
        print(f"[WARN] Rejeté : champs requis manquants → {data}")
        return

    try:
        ts_raw = data["tx_time_ms_epoch"]
        ts = to_ts(ts_raw) if isinstance(ts_raw, (int, float)) else datetime.now(timezone.utc)
    except Exception as e:
        print(f"[ERROR] Mauvais format de timestamp : {e}")
        traceback.print_exc()
        return

    d = data["data"]

    sid, s_sid = validate_field(data, "sensor_id", int)
    sink, s_sink = validate_field(data, "sink_id", str)
    addr, s_addr = validate_field(data, "source_address", (int, str))
    eid, s_eid = validate_field(data, "event_id", int)

    score_base = (s_sid + s_sink + s_addr + s_eid) / 5

    print(f"[INSERT] sensor_id={sid}, event_id={eid}, time={ts}")

    try:
        if sid == 112:
            temp, s_temp = validate_field(d, "temperature", (int, float))
            relevance = (score_base + s_temp) / 2
            cur.execute(
                "INSERT INTO sensor_temperature VALUES (%s,%s,%s,%s,%s,%s,%s)",
                (ts, sid, sink, addr, temp, eid, relevance)
            )

        elif sid == 114:
            humidity, s_humidity = validate_field(d, "humidity", (int, float))
            relevance = (score_base + s_humidity) / 2
            cur.execute(
                "INSERT INTO sensor_humidity VALUES (%s,%s,%s,%s,%s,%s,%s)",
                (ts, sid, sink, addr, humidity, eid, relevance)
            )

        elif sid == 127:
            state, s1 = validate_field(d, "state", str)
            move_duration, s2 = validate_field(d, "move_duration", int)
            move_number, s3 = validate_field(d, "move_number", int)
            x_axis, s4 = validate_field(d, "x_axis", int)
            y_axis, s5 = validate_field(d, "y_axis", int)
            z_axis, s6 = validate_field(d, "z_axis", int)
            score = (s1 + s2 + s3 + s4 + s5 + s6) / 6.0
            relevance = (score_base + score) / 2

            cur.execute(
                "INSERT INTO sensor_motion VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
                (ts, sid, sink, addr, state, move_duration, move_number,
                 x_axis, y_axis, z_axis, eid, relevance)
            )

        elif sid == 193:
            neighbors, s_neighbors = validate_field(d, "neighbors", int)
            relevance = (score_base + s_neighbors) / 2
            cur.execute(
                "INSERT INTO sensor_neighbors_count VALUES (%s,%s,%s,%s,%s,%s,%s)",
                (ts, sid, sink, addr, neighbors, eid, relevance)
            )

        elif sid == 192:
            if not isinstance(d, list):
                print("[WARN] Données 'data' attendues sous forme de liste pour sensor_id 192.")
                return
            relevance_total = 0.0
            valid_count = 0
            for n in d:
                address, s1 = validate_field(n, "address", int)
                rssi, s2 = validate_field(n, "rssi", int)
                tx_power, s3 = validate_field(n, "tx_power", int)
                rel = (score_base + (s1 + s2 + s3) / 3) / 2
                relevance_total += rel
                valid_count += 1
                cur.execute(
                    "INSERT INTO sensor_neighbors_detail VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)",
                    (ts, sid, sink, addr, address, rssi, tx_power, eid, rel)
                )
            if valid_count > 0:
                print(f"[INFO] {valid_count} voisins insérés (pertinence moy = {relevance_total/valid_count:.2f})")

        elif sid == 116:
            pressure, s_p = validate_field(d, "atmospheric_pressure", int)
            relevance = (score_base + s_p) / 2
            cur.execute(
                "INSERT INTO sensor_pressure VALUES (%s,%s,%s,%s,%s,%s,%s)",
                (ts, sid, sink, addr, pressure, eid, relevance)
            )

        elif sid == 142:
            voltage, s_v = validate_field(d, "voltage", (int, float))
            relevance = (score_base + s_v) / 2
            cur.execute(
                "INSERT INTO sensor_voltage VALUES (%s,%s,%s,%s,%s,%s,%s)",
                (ts, sid, sink, addr, voltage, eid, relevance)
            )
        else:
            print(f"[WARN] Sensor ID inconnu ou non géré : {sid}")

        conn.commit()
        print(f"[OK] Donnée insérée pour sensor_id={sid}")
    except Exception as e:
        conn.rollback()
        print(f"[ERROR] Insertion échouée pour sensor_id={sid} : {e}")
        traceback.print_exc()

# ------------------ Callbacks MQTT ------------------

def on_connect(client, userdata, flags, reason_code, properties):
    if reason_code.is_failure:
        print(f"[ERROR] Connexion échouée : {reason_code}")
    else:
        print(f"[MQTT] Connecté, abonnement à : {MQTT_TOPIC}")
        client.subscribe(MQTT_TOPIC)

def on_message(client, userdata, message):
    print(f"[MQTT] Message reçu sur {message.topic}")
    try:
        data = json.loads(message.payload)
        if not isinstance(data, dict):
            print(f"[WARN] Message ignoré (non dict) → {data}")
            return
        insert_data(data)
    except json.JSONDecodeError as e:
        print(f"[ERROR] JSON invalide : {e}")
    except Exception as e:
        print(f"[ERROR] Erreur dans on_message : {e}")
        traceback.print_exc()

def on_subscribe(client, userdata, mid, reason_code_list, properties):
    print(f"[MQTT] Abonnement confirmé : {MQTT_TOPIC} (QoS {reason_code_list[0].value})")

# ------------------ Main ------------------

def main():
    mqttc = mqtt.Client(mqtt.CallbackAPIVersion.VERSION2)
    mqttc.on_connect = on_connect
    mqttc.on_message = on_message
    mqttc.on_subscribe = on_subscribe

    mqttc.connect(MQTT_BROKER, MQTT_PORT)
    try:
        print(f"📡 En écoute sur {MQTT_TOPIC}...")
        mqttc.loop_forever()
    except KeyboardInterrupt:
        print("Arrêt manuel demandé")
    finally:
        mqttc.disconnect()
        print("Déconnecté proprement du broker")

if __name__ == "__main__":
    main()
