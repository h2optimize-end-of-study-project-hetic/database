
\c app;

CREATE TABLE IF NOT EXISTS public.alembic_version (
    version_num VARCHAR(32) PRIMARY KEY
);

INSERT INTO public.alembic_version (version_num)
VALUES ('f743ab8a8305');

-- ENUM rôle utilisateur
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'role') THEN
    CREATE TYPE role AS ENUM ('admin', 'staff', 'technician', 'intern', 'guest');
  END IF;
END $$;

CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_room_count()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE building
  SET room_count = (
    SELECT COUNT(*) FROM room WHERE building_id = NEW.building_id
  )
  WHERE id = NEW.building_id;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION auto_finish_event_room()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.end_at < NOW() THEN
    NEW.is_finished := TRUE;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION set_deleted_at()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.is_delete = TRUE AND OLD.is_delete = FALSE THEN
    NEW.deleted_at := NOW();
  ELSIF NEW.is_delete = FALSE THEN
    NEW.deleted_at := NULL;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- === TABLES ===

CREATE TABLE "user" (
  "id"                  SERIAL PRIMARY KEY,
  "email"               TEXT UNIQUE NOT NULL,
  "salt"                TEXT NOT NULL,
  "password"            TEXT NOT NULL,
  "secret_2fa"          TEXT,
  "role"                role DEFAULT 'guest',
  "firstname"           TEXT NOT NULL,
  "lastname"            TEXT NOT NULL,
  "phone_number"        TEXT,
  "is_active"           BOOLEAN DEFAULT TRUE,
  "is_delete"           BOOLEAN DEFAULT FALSE,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  "deleted_at"          TIMESTAMPTZ
);

CREATE TABLE "building" (
  "id"                  SERIAL PRIMARY KEY,
  "name"                TEXT,
  "description"         TEXT,
  "room_count"          INTEGER,
  "street_number"       TEXT,
  "street_name"         TEXT,
  "postal_code"         TEXT,
  "city"                TEXT,
  "country"             TEXT,
  "latitude"            DECIMAL(9,6),
  "longitude"           DECIMAL(9,6),
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ
);


CREATE TABLE "map" (
  "id"                  SERIAL PRIMARY KEY,
  "building_id"         INTEGER,
  "file_name"           TEXT,
  "path"                TEXT,
  "width"               INTEGER,
  "length"              INTEGER,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  FOREIGN KEY ("building_id") REFERENCES "building" ("id")
);

CREATE TABLE "room" (
  "id"                  SERIAL PRIMARY KEY,
  "name"                TEXT,
  "description"         TEXT,
  "floor"               INTEGER,
  "building_id"         INTEGER,
  "area"                FLOAT,
  "shape"               JSONB, 
  "capacity"            INTEGER,
  "start_at"            TIMESTAMPTZ,
  "end_at"              TIMESTAMPTZ,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  CHECK (end_at IS NULL OR start_at IS NULL OR end_at > start_at),
  FOREIGN KEY ("building_id") REFERENCES "building" ("id")
);

CREATE TABLE "group" (
  "id"                  SERIAL PRIMARY KEY,
  "name"                TEXT,
  "description"         TEXT,
  "member_count"        INTEGER,
  "start_at"            TIMESTAMPTZ,
  "end_at"              TIMESTAMPTZ,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  CHECK (end_at IS NULL OR start_at IS NULL OR end_at > start_at)
);

CREATE TABLE "event" (
  "id"                  SERIAL PRIMARY KEY,
  "name"                TEXT,
  "description"         TEXT,
  "group_id"            INTEGER,
  "supervisor"          TEXT, -- anciennment teacher
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  FOREIGN KEY ("group_id") REFERENCES "group" ("id")
);

CREATE TABLE "tag" (
  "id"                  SERIAL PRIMARY KEY,
  "name"                TEXT,
  "description"         TEXT,
  "source_address"      TEXT UNIQUE NOT NULL,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ
);

CREATE TABLE "room_tag" (
  "id"                  SERIAL PRIMARY KEY,
  "tag_id"              INTEGER,
  "room_id"             INTEGER,
  "start_at"            TIMESTAMPTZ,
  "end_at"              TIMESTAMPTZ,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  CHECK (end_at IS NULL OR start_at IS NULL OR end_at > start_at),
  FOREIGN KEY ("tag_id") REFERENCES "tag" ("id"),
  FOREIGN KEY ("room_id") REFERENCES "room" ("id")
);

CREATE TABLE "event_room" (
  "id"                  SERIAL PRIMARY KEY,
  "room_id"             INTEGER,
  "event_id"            INTEGER,
  "is_finished"         BOOLEAN DEFAULT FALSE,
  "start_at"            TIMESTAMPTZ,
  "end_at"              TIMESTAMPTZ,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  UNIQUE (event_id, room_id, start_at, end_at),
  CHECK (end_at IS NULL OR start_at IS NULL OR end_at > start_at),
  FOREIGN KEY ("event_id") REFERENCES "event" ("id"),
  FOREIGN KEY ("room_id") REFERENCES "room" ("id")
);

CREATE TABLE "user_group" (
  "group_id"            INTEGER,
  "user_id"             INTEGER,
  "created_at"          TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  "updated_at"          TIMESTAMPTZ,
  PRIMARY KEY (group_id, user_id),
  FOREIGN KEY ("group_id") REFERENCES "group" ("id"),
  FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

-- === TRIGGERS ===
CREATE TRIGGER trg_user_updated_at
BEFORE UPDATE ON "user"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_building_updated_at
BEFORE UPDATE ON "building"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_map_updated_at
BEFORE UPDATE ON "map"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_room_updated_at
BEFORE UPDATE ON "room"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_group_updated_at
BEFORE UPDATE ON "group"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_user_group_updated_at
BEFORE UPDATE ON "user_group"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_event_updated_at
BEFORE UPDATE ON "event"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_tag_updated_at
BEFORE UPDATE ON "tag"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_room_tag_updated_at
BEFORE UPDATE ON "room_tag"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER trg_event_room_updated_at
BEFORE UPDATE ON "event_room"
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

-- Room count 
CREATE TRIGGER trg_room_after_insert
AFTER INSERT ON room
FOR EACH ROW
EXECUTE FUNCTION update_room_count();

CREATE TRIGGER trg_room_after_delete
AFTER DELETE ON room
FOR EACH ROW
EXECUTE FUNCTION update_room_count();

CREATE TRIGGER trg_room_after_update
AFTER UPDATE ON room
FOR EACH ROW
WHEN (OLD.building_id IS DISTINCT FROM NEW.building_id)
EXECUTE FUNCTION update_room_count();

-- is finished
CREATE TRIGGER trg_auto_finish_event_room
BEFORE INSERT OR UPDATE ON event_room
FOR EACH ROW
EXECUTE FUNCTION auto_finish_event_room();

-- deleted at 
CREATE TRIGGER trg_user_soft_delete
BEFORE UPDATE ON "user"
FOR EACH ROW
EXECUTE FUNCTION set_deleted_at();