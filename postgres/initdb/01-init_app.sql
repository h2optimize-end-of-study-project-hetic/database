
\c app;

-- ENUM rôle utilisateur
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'role') THEN
        CREATE TYPE role AS ENUM ('admin', 'staff', 'technician', 'intern', 'guest');
    END IF;
END $$;

-- Fonction de mise à jour automatique du champ updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = now();
   RETURN NEW;
END;
$$ language 'plpgsql';

-- === TABLES ===

CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "role" role,
  "firstname" varchar,
  "lastname" varchar,
  "password" varchar,
  "telephone" varchar UNIQUE,
  "email" varchar UNIQUE,
  "updated_at" timestamp,
  "created_at" timestamp,
  "salt" varchar,
  "secret_2fa" varchar
);

CREATE TABLE "building" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "updated_at" timestamp,
  "created_at" timestamp,
  "classroom_number" integer,
  "width" integer,
  "length" integer
);

CREATE TABLE "classroom" (
  "id" SERIAL PRIMARY KEY,
  "id_building" integer,
  "name" varchar,
  "floor" int,
  "capacity" int,
  "shape" JSONB DEFAULT NULL, 
  "area" float,
  "updated_at" timestamp,
  "created_at" timestamp,
  "start_at" timestamp,
  "end_at" timestamp,
  FOREIGN KEY ("id_building") REFERENCES "building" ("id")
);

CREATE TABLE "promotion" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "student_nb" int,
  "updated_at" timestamp,
  "created_at" timestamp,
  "start_at" timestamp,
  "end_at" timestamp
);

CREATE TABLE "course" (
  "id" SERIAL PRIMARY KEY,
  "id_promotion" integer,
  "id_classroom" integer,
  "name" varchar,
  "teacher" varchar,
  "start_at" timestamp,
  "end_at" timestamp,
  "updated_at" timestamp,
  "created_at" timestamp,
  FOREIGN KEY ("id_promotion") REFERENCES "promotion" ("id"),
  FOREIGN KEY ("id_classroom") REFERENCES "classroom" ("id")
);

CREATE TABLE "sensor" (
  "id" SERIAL PRIMARY KEY,
  "serial_number" varchar UNIQUE,
  "id_classroom" integer,
  "updated_at" timestamp,
  "created_at" timestamp,
  FOREIGN KEY ("id_classroom") REFERENCES "classroom" ("id")
);

CREATE TABLE "classroom_sensor" (
  "id" SERIAL PRIMARY KEY,
  "id_sensor" integer,
  "id_classroom" integer,
  "start_at" timestamp,
  "end_at" timestamp,
  "updated_at" timestamp,
  "created_at" timestamp,
  FOREIGN KEY ("id_sensor") REFERENCES "sensor" ("id"),
  FOREIGN KEY ("id_classroom") REFERENCES "classroom" ("id")
);

CREATE TABLE "user_promotion" (
  "id_user" integer,
  "id_promotion" integer,
  "updated_at" timestamp,
  "created_at" timestamp,
  PRIMARY KEY ("id_user", "id_promotion"),
  FOREIGN KEY ("id_user") REFERENCES "user" ("id"),
  FOREIGN KEY ("id_promotion") REFERENCES "promotion" ("id")
);

CREATE TABLE "classroom_sensor_sensor" (
  "classroom_sensor_id" integer,
  "sensor_id" integer,
  PRIMARY KEY ("classroom_sensor_id", "sensor_id"),
  FOREIGN KEY ("classroom_sensor_id") REFERENCES "classroom_sensor" ("id"),
  FOREIGN KEY ("sensor_id") REFERENCES "sensor" ("id")
);

CREATE TABLE "classroom_sensor_classroom" (
  "classroom_sensor_id" integer,
  "classroom_id" integer,
  PRIMARY KEY ("classroom_sensor_id", "classroom_id"),
  FOREIGN KEY ("classroom_sensor_id") REFERENCES "classroom_sensor" ("id"),
  FOREIGN KEY ("classroom_id") REFERENCES "classroom" ("id")
);

CREATE TABLE "course_classroom" (
  "course_id_classroom" integer,
  "classroom_id" integer,
  PRIMARY KEY ("course_id_classroom", "classroom_id"),
  FOREIGN KEY ("course_id_classroom") REFERENCES "course" ("id"),
  FOREIGN KEY ("classroom_id") REFERENCES "classroom" ("id")
);

-- === TRIGGERS ===
CREATE TRIGGER trg_user_updated BEFORE UPDATE ON "user" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_building_updated BEFORE UPDATE ON "building" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_classroom_updated BEFORE UPDATE ON "classroom" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_promotion_updated BEFORE UPDATE ON "promotion" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_course_updated BEFORE UPDATE ON "course" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_sensor_updated BEFORE UPDATE ON "sensor" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_classroom_sensor_updated BEFORE UPDATE ON "classroom_sensor" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER trg_user_promotion_updated BEFORE UPDATE ON "user_promotion" FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- === DONNÉES D'EXEMPLE ===

-- Utilisateurs
INSERT INTO "user" (role, firstname, lastname, password, telephone, email, created_at, updated_at, salt, secret_2fa)
VALUES 
('admin', 'Alice', 'Durand', 'pwd1', '0102030405', 'alice@ex.com', now(), now(), 'salt1', 'secret1'),
('staff', 'Bob', 'Martin', 'pwd2', '0607080910', 'bob@ex.com', now(), now(), 'salt2', 'secret2'),
('guest', 'Charlie', 'Petit', 'pwd3', '0611111111', 'charlie@ex.com', now(), now(), 'salt3', 'secret3'),
('technician', 'Diane', 'Lopez', 'pwd4', '0622222222', 'diane@ex.com', now(), now(), 'salt4', 'secret4');

-- Bâtiments
INSERT INTO "building" (name, created_at, updated_at, classroom_number, width, length)
VALUES ('Building A', now(), now(), 2, 512, 512);

-- Salles
INSERT INTO "classroom" (id_building, name, floor, capacity, area, shape, created_at, updated_at, start_at)
VALUES 
(1, 'Room 101', 1, 30, 40.0, '[[2385, 2124.9], [2430, 2522.83],[2174, 2522.83],[2141, 2147.9]]', now(), now(), now()),
(1, 'Room 102', 1, 25, 35.0, '[[50, 50], [50, 150], [150, 150],[150, 50]]', now(), now(), now());

-- Promotions
INSERT INTO "promotion" (name, student_nb, created_at, updated_at, start_at)
VALUES ('Promo 2025', 60, now(), now(), now());

-- Cours
INSERT INTO "course" (id_promotion, id_classroom, name, teacher, start_at, end_at, created_at, updated_at)
VALUES (1, 1, 'Maths', 'Mr. Jean', now(), now() + interval '1 hour', now(), now());

-- Capteurs
INSERT INTO "sensor" (serial_number, id_classroom, created_at, updated_at)
VALUES 
('SN001', 1, now(), now()),
('SN002', 2, now(), now());

-- Lien capteur/salle
INSERT INTO "classroom_sensor" (id_sensor, id_classroom, start_at, created_at, updated_at)
VALUES 
(1, 1, now(), now(), now()),
(2, 2, now(), now(), now());

-- Lien sensor <-> classroom_sensor
INSERT INTO "classroom_sensor_sensor" (classroom_sensor_id, sensor_id)
VALUES (1, 1), (2, 2);

-- Lien classroom <-> classroom_sensor
INSERT INTO "classroom_sensor_classroom" (classroom_sensor_id, classroom_id)
VALUES (1, 1), (2, 2);

-- Lien user <-> promotion
INSERT INTO "user_promotion" (id_user, id_promotion, created_at, updated_at)
VALUES (1, 1, now(), now()), (2, 1, now(), now());

-- Lien course <-> classroom
INSERT INTO "course_classroom" (course_id_classroom, classroom_id)
VALUES (1, 1);


