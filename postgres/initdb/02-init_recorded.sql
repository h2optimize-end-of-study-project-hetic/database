CREATE DATABASE recorded;

\c recorded;

-- Activer l'extension TimescaleDB
CREATE EXTENSION IF NOT EXISTS timescaledb;

-- Température
CREATE TABLE sensor_temperature (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  temperature DOUBLE PRECISION,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_temperature', 'time');

-- Humidité
CREATE TABLE sensor_humidity (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  humidity DOUBLE PRECISION,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_humidity', 'time');

-- Mouvement
CREATE TABLE sensor_motion (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  state TEXT,
  move_duration INT,
  move_number INT,
  x_axis INT,
  y_axis INT,
  z_axis INT,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_motion', 'time');

-- Nombre de voisins
CREATE TABLE sensor_neighbors_count (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  neighbors INT,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_neighbors_count', 'time');

-- Détail des voisins (table JSON ou table normale en mode "array log")
CREATE TABLE sensor_neighbors_detail (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  neighbor_address TEXT,
  rssi INT,
  tx_power INT,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_neighbors_detail', 'time');

-- Pression atmosphérique
CREATE TABLE sensor_pressure (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  atmospheric_pressure INT,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_pressure', 'time');

-- Tension
CREATE TABLE sensor_voltage (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INT,
  sink_id TEXT,
  source_address TEXT,
  voltage DOUBLE PRECISION,
  event_id INT,
  relevance FLOAT DEFAULT 1.0
);
SELECT create_hypertable('sensor_voltage', 'time');

