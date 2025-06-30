# H2Optimize - Database 

TODO 
- ameliorer le connecteur 
  - augmenter résilience
  - passer avec une extenesion pg 
  - node red
  
- argumentrer les choix technique 


[Escalidraw](https://excalidraw.com/?element=Ahl934wJmsXP_2y54ac9F#room=ff9fff0b0e37ded1e609,w3P887LL-U-rrDN3qX64AA)

![schéma](./doc/image/schema.png)

## Instalation

Créer un fichier **/.env.local**
> Défaut le fichier vide (et c'est OK)

```bash
make startd
```

## Services 

### Persistance des données 

- Base postgres 
- Timescale

Basé sur l'image de timescale

Note : Pas d'optimisation, vérifier la version et les dépendance

---

### Client PostgreSQL 

Solution : *pgAmdin** 
Interface : [http://localhost:8080/](http://localhost:8080/)

Note :
- Configuration pour éviter les sécurité
- Pas configurer pour partir en prod
- Maintient optionel

#### Configuration 

En cas de changement des variable d'environnment modifier `/pgadmin/servers.json` et `/pgadmin/pgpass` pour garder la connexion automatique a la base de donnée

#### Redemarer

`docker compose --env-file $(ENV_FILE) --env-file $(ENV_LOCAL_FILE) up --build pgadmin`

---

### BI

- Metabase 

#### Taux d'humidité en temps réel par capteur

``` 
SELECT
  sensor_humidity.time AS time_bucket,
  sensor_humidity.humidity,
  CAST(sensor_humidity.source_address AS TEXT) AS source_address
FROM
  public.sensor_humidity
WHERE
  {{id_capteur}}
  [[ AND {{date}} ]]
GROUP BY
  time_bucket,
  sensor_humidity.humidity,
  source_address
ORDER BY
  time_bucket ASC;
```
id_capteur : filtre de champ lié à 'source_address'
date : filtre de champ lié à 'time'

### Watcher

**Optionnel**

- Permet juste de créer des backup automatique pour Metabase
- Permet de setup automatiquement Metabase lors de sa création a condition d'avoir une backup
- A utiliser que en dev local
- Ne vas pas miraculeusement récupérer ton travail
- A supprimer

Pour ne pas le lancer : 

Commenter le service dans docker-compose.yml

```
  watcher:
    build:
    ...
    restart: always
```

Lancer manuellement une backup :

`/entrypoint.sh manual-backup`

---

#### Température en temps réel par capteur

```
SELECT
  sensor_temperature.time AS time_bucket,
  sensor_temperature.temperature,
  CAST(sensor_temperature.source_address AS TEXT) AS source_address
FROM
  public.sensor_temperature
WHERE
  {{id_capteur}}
  [[ AND {{date}} ]]
GROUP BY
  time_bucket,
  sensor_temperature.temperature,
  source_address
ORDER BY
  time_bucket ASC;
```
id_capteur : filtre de champ lié à 'source_address'
date : filtre de champ lié à 'time'

---

### connecteur  mqtt python

---

## Aide 

### Comamande de base PostgreSQL 

```sql
-- Ce connecter a postgres
psql -U admin -d postgres

-- Voir les base de données
\l
```

#### Extraction des données des capteurs enregistrer dans app pour les mettres dans une nouvelle base de donnée, Recorded 

```sql
pg_dump -U admin -d app \
  --format=plain \
  --file=/backup/vergo_partial_backup.sql \
  --exclude-table=user \
  --exclude-table=building \
  --exclude-table=classroom \
  --exclude-table=promotion \
  --exclude-table=course \
  --exclude-table=sensor \
  --exclude-table=classroom_sensor \
  --exclude-table=user_promotion \
  --exclude-table=classroom_sensor_sensor \
  --exclude-table=classroom_sensor_classroom \
  --exclude-table=course_classroom
```

---


## Variables d'environement

```yml
DEFAULT_EMAIL=admin@admin.fr
DEFAULT_USER=admin
DEFAULT_PASSWORD=Changeme!1

### DATABASE ### 
# POSTGRES
POSTGRES_CONTAINER_NAME=postgres
POSTGRES_HOST=postgres # Pour les autres service = container name
POSTGRES_EXT_PORT=5432
POSTGRES_INT_PORT=5432
POSTGRES_DB=app
POSTGRES_RECORD_DB=recorded
POSTGRES_METABASE_DB=metabase
POSTGRES_USER=${DEFAULT_USER}
POSTGRES_PASSWORD=${DEFAULT_PASSWORD}

# PGADMIN
PGADMIN_CONTAINER_NAME=pgadmin
PGADMIN_EXT_PORT=8080
PGADMIN_INT_PORT=80
PGADMIN_DEFAULT_EMAIL=${DEFAULT_EMAIL}
PGADMIN_DEFAULT_PASSWORD=${DEFAULT_PASSWORD}

# !!! IMPORTANT !!! 
# In production set: 
#
# PGADMIN_CONFIG_SERVER_MODE=True
#
PGADMIN_CONFIG_SERVER_MODE=False


MQTT_CONTAINER_NAME=mqtt
MQTT_BROKER=176.186.143.117
MQTT_PORT=8828
MQTT_TOPIC="pws-packet/#"


METABASE_CONTAINER_NAME=metabase
METABASE_EXT_PORT=3000
METABASE_INT_PORT=3000

MB_DB_TYPE=postgres
MB_DB_HOST=${POSTGRES_HOST}
MB_DB_PORT=${POSTGRES_INT_PORT}
MB_DB_DBNAME=${POSTGRES_METABASE_DB}
MB_DB_USER=${POSTGRES_USER}
MB_DB_PASS=${POSTGRES_PASSWORD}

MB_SETUP_ADMIN_EMAIL=${DEFAULT_EMAIL}
MB_SETUP_ADMIN_FIRST_NAME=${DEFAULT_USER}
MB_SETUP_ADMIN_LAST_NAME=${DEFAULT_USER}
MB_SETUP_ADMIN_PASSWORD=${POSTGRES_PASSWORD}
MB_SETUP_ADMIN_USERNAME=${DEFAULT_USER}

MB_SETUP_DATABASE=postgres
MB_SETUP_DATABASE_HOST=${POSTGRES_HOST}
MB_SETUP_DATABASE_PORT=${POSTGRES_INT_PORT}
MB_SETUP_DATABASE_NAME=${POSTGRES_RECORD_DB}
MB_SETUP_DATABASE_USERNAME=${POSTGRES_USER}
MB_SETUP_DATABASE_PASSWORD=${POSTGRES_PASSWORD}

```







<!-- 
  # postgres:
  #   image: postgres:17.2-alpine3.21
  #   container_name: ${POSTGRES_CONTAINER_NAME}
  #   restart: always
  #   env_file:
  #     - .env
  #     - .env.local
  #   networks:
  #     - postgres_net
  #   ports:
  #     - "${POSTGRES_EXT_PORT}:5432"
  #   volumes:
  #     - ./:/docker-entrypoint-initdb.d
  #     - postgres_data:/var/lib/postgresql/data
  #     - ./backup:/backup
  #   healthcheck:
  #     test: ["CMD", "pg_isready", "-U", "${POSTGRES_USER}", "-d", "${POSTGRES_DB}"]
  #     interval: 5s
  #     retries: 5 -->
