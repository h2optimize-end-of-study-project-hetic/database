--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: timescaledb; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS timescaledb WITH SCHEMA public;


--
-- Name: EXTENSION timescaledb; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION timescaledb IS 'Enables scalable inserts and complex queries for time-series data (Community Edition)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sensor_temperature; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_temperature (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    temperature double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_temperature OWNER TO admin;

--
-- Name: _hyper_1_16_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_16_chunk (
    CONSTRAINT constraint_16 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_16_chunk OWNER TO admin;

--
-- Name: _hyper_1_5_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_5_chunk (
    CONSTRAINT constraint_5 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_5_chunk OWNER TO admin;

--
-- Name: _hyper_1_9_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_9_chunk (
    CONSTRAINT constraint_9 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_9_chunk OWNER TO admin;

--
-- Name: sensor_humidity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_humidity (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    humidity double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_humidity OWNER TO admin;

--
-- Name: _hyper_2_17_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_17_chunk (
    CONSTRAINT constraint_17 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_17_chunk OWNER TO admin;

--
-- Name: _hyper_2_2_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_2_chunk (
    CONSTRAINT constraint_2 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_2_chunk OWNER TO admin;

--
-- Name: _hyper_2_8_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_8_chunk (
    CONSTRAINT constraint_8 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_8_chunk OWNER TO admin;

--
-- Name: sensor_motion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_motion (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    state text,
    move_duration integer,
    move_number integer,
    x_axis integer,
    y_axis integer,
    z_axis integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_motion OWNER TO admin;

--
-- Name: _hyper_3_10_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_10_chunk (
    CONSTRAINT constraint_10 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_10_chunk OWNER TO admin;

--
-- Name: _hyper_3_15_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_15_chunk (
    CONSTRAINT constraint_15 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_15_chunk OWNER TO admin;

--
-- Name: _hyper_3_1_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_3_1_chunk (
    CONSTRAINT constraint_1 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_motion);


ALTER TABLE _timescaledb_internal._hyper_3_1_chunk OWNER TO admin;

--
-- Name: sensor_neighbors_count; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_neighbors_count (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    neighbors integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_neighbors_count OWNER TO admin;

--
-- Name: _hyper_4_13_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_13_chunk (
    CONSTRAINT constraint_13 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_13_chunk OWNER TO admin;

--
-- Name: _hyper_4_18_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_18_chunk (
    CONSTRAINT constraint_18 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_18_chunk OWNER TO admin;

--
-- Name: _hyper_4_3_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_4_3_chunk (
    CONSTRAINT constraint_3 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_count);


ALTER TABLE _timescaledb_internal._hyper_4_3_chunk OWNER TO admin;

--
-- Name: sensor_neighbors_detail; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_neighbors_detail (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    neighbor_address text,
    rssi integer,
    tx_power integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_neighbors_detail OWNER TO admin;

--
-- Name: _hyper_5_14_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_14_chunk (
    CONSTRAINT constraint_14 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_14_chunk OWNER TO admin;

--
-- Name: _hyper_5_19_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_19_chunk (
    CONSTRAINT constraint_19 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_19_chunk OWNER TO admin;

--
-- Name: _hyper_5_4_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_5_4_chunk (
    CONSTRAINT constraint_4 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_neighbors_detail);


ALTER TABLE _timescaledb_internal._hyper_5_4_chunk OWNER TO admin;

--
-- Name: sensor_pressure; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_pressure (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    atmospheric_pressure integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_pressure OWNER TO admin;

--
-- Name: _hyper_6_12_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_12_chunk (
    CONSTRAINT constraint_12 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_12_chunk OWNER TO admin;

--
-- Name: _hyper_6_20_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_20_chunk (
    CONSTRAINT constraint_20 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_20_chunk OWNER TO admin;

--
-- Name: _hyper_6_6_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_6_6_chunk (
    CONSTRAINT constraint_6 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_pressure);


ALTER TABLE _timescaledb_internal._hyper_6_6_chunk OWNER TO admin;

--
-- Name: sensor_voltage; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_voltage (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    host text,
    source_address text,
    voltage double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_voltage OWNER TO admin;

--
-- Name: _hyper_7_11_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_11_chunk (
    CONSTRAINT constraint_11 CHECK ((("time" >= '2025-07-03 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_11_chunk OWNER TO admin;

--
-- Name: _hyper_7_21_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_21_chunk (
    CONSTRAINT constraint_21 CHECK ((("time" >= '2025-07-10 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_21_chunk OWNER TO admin;

--
-- Name: _hyper_7_7_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_7_chunk (
    CONSTRAINT constraint_7 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_7_chunk OWNER TO admin;

--
-- Name: all_source_addresses; Type: VIEW; Schema: public; Owner: admin
--

CREATE VIEW public.all_source_addresses AS
 SELECT DISTINCT sensor_humidity.source_address
   FROM public.sensor_humidity
UNION
 SELECT DISTINCT sensor_motion.source_address
   FROM public.sensor_motion
UNION
 SELECT DISTINCT sensor_neighbors_count.source_address
   FROM public.sensor_neighbors_count
UNION
 SELECT DISTINCT sensor_neighbors_detail.source_address
   FROM public.sensor_neighbors_detail
UNION
 SELECT DISTINCT sensor_pressure.source_address
   FROM public.sensor_pressure
UNION
 SELECT DISTINCT sensor_temperature.source_address
   FROM public.sensor_temperature
UNION
 SELECT DISTINCT sensor_voltage.source_address
   FROM public.sensor_voltage;


ALTER VIEW public.all_source_addresses OWNER TO admin;

--
-- Name: mqtt_consumer; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.mqtt_consumer (
    "time" timestamp without time zone,
    host text,
    event_id double precision,
    optional_periods_0 double precision,
    optional_periods_1 double precision,
    optional_periods_2 double precision,
    sensor_id double precision,
    sensor_period double precision,
    source_address text
);


ALTER TABLE public.mqtt_consumer OWNER TO admin;

--
-- Name: COLUMN mqtt_consumer.host; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.mqtt_consumer.host IS 'tag';


--
-- Name: sensor_button; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_button (
    "time" timestamp without time zone,
    host text,
    button bigint,
    event_id double precision,
    sensor_id double precision,
    source_address text
);


ALTER TABLE public.sensor_button OWNER TO admin;

--
-- Name: COLUMN sensor_button.host; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON COLUMN public.sensor_button.host IS 'tag';


--
-- Name: _hyper_1_16_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_16_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_1_5_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_1_9_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_17_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_17_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_2_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_2_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_8_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_8_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_10_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_10_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_15_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_15_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_1_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_1_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_13_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_13_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_18_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_18_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_3_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_3_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_14_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_14_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_19_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_19_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_4_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_4_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_12_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_12_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_20_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_20_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_6_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_6_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_11_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_11_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_21_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_21_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_7_7_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_7_7_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Data for Name: hypertable; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.hypertable (id, schema_name, table_name, associated_schema_name, associated_table_prefix, num_dimensions, chunk_sizing_func_schema, chunk_sizing_func_name, chunk_target_size, compression_state, compressed_hypertable_id, status) FROM stdin;
1	public	sensor_temperature	_timescaledb_internal	_hyper_1	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
2	public	sensor_humidity	_timescaledb_internal	_hyper_2	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
3	public	sensor_motion	_timescaledb_internal	_hyper_3	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
4	public	sensor_neighbors_count	_timescaledb_internal	_hyper_4	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
5	public	sensor_neighbors_detail	_timescaledb_internal	_hyper_5	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
6	public	sensor_pressure	_timescaledb_internal	_hyper_6	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
7	public	sensor_voltage	_timescaledb_internal	_hyper_7	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
\.


--
-- Data for Name: chunk; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk (id, hypertable_id, schema_name, table_name, compressed_chunk_id, dropped, status, osm_chunk, creation_time) FROM stdin;
1	3	_timescaledb_internal	_hyper_3_1_chunk	\N	f	0	f	2025-06-28 12:23:15.839661+00
2	2	_timescaledb_internal	_hyper_2_2_chunk	\N	f	0	f	2025-06-28 12:24:03.589717+00
3	4	_timescaledb_internal	_hyper_4_3_chunk	\N	f	0	f	2025-06-28 12:28:27.107703+00
4	5	_timescaledb_internal	_hyper_5_4_chunk	\N	f	0	f	2025-06-28 12:28:27.125133+00
5	1	_timescaledb_internal	_hyper_1_5_chunk	\N	f	0	f	2025-06-28 12:37:02.591792+00
6	6	_timescaledb_internal	_hyper_6_6_chunk	\N	f	0	f	2025-06-28 12:39:30.493631+00
7	7	_timescaledb_internal	_hyper_7_7_chunk	\N	f	0	f	2025-06-28 13:09:20.450376+00
8	2	_timescaledb_internal	_hyper_2_8_chunk	\N	f	0	f	2025-07-03 00:01:09.826729+00
9	1	_timescaledb_internal	_hyper_1_9_chunk	\N	f	0	f	2025-07-03 00:01:30.72782+00
10	3	_timescaledb_internal	_hyper_3_10_chunk	\N	f	0	f	2025-07-03 00:05:09.152302+00
11	7	_timescaledb_internal	_hyper_7_11_chunk	\N	f	0	f	2025-07-03 07:39:41.930067+00
12	6	_timescaledb_internal	_hyper_6_12_chunk	\N	f	0	f	2025-07-03 07:56:06.863664+00
13	4	_timescaledb_internal	_hyper_4_13_chunk	\N	f	0	f	2025-07-03 15:53:04.506924+00
14	5	_timescaledb_internal	_hyper_5_14_chunk	\N	f	0	f	2025-07-03 15:53:04.541284+00
15	3	_timescaledb_internal	_hyper_3_15_chunk	\N	f	0	f	2025-07-10 07:25:12.718486+00
16	1	_timescaledb_internal	_hyper_1_16_chunk	\N	f	0	f	2025-07-10 07:25:44.722977+00
17	2	_timescaledb_internal	_hyper_2_17_chunk	\N	f	0	f	2025-07-10 07:25:44.744325+00
18	4	_timescaledb_internal	_hyper_4_18_chunk	\N	f	0	f	2025-07-10 07:26:11.760203+00
19	5	_timescaledb_internal	_hyper_5_19_chunk	\N	f	0	f	2025-07-10 07:26:11.766388+00
20	6	_timescaledb_internal	_hyper_6_20_chunk	\N	f	0	f	2025-07-10 07:29:05.815754+00
21	7	_timescaledb_internal	_hyper_7_21_chunk	\N	f	0	f	2025-07-10 08:39:04.678758+00
\.


--
-- Data for Name: chunk_column_stats; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk_column_stats (id, hypertable_id, chunk_id, column_name, range_start, range_end, valid) FROM stdin;
\.


--
-- Data for Name: dimension; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.dimension (id, hypertable_id, column_name, column_type, aligned, num_slices, partitioning_func_schema, partitioning_func, interval_length, compress_interval_length, integer_now_func_schema, integer_now_func) FROM stdin;
1	1	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
2	2	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
3	3	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
4	4	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
5	5	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
6	6	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
7	7	time	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
\.


--
-- Data for Name: dimension_slice; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.dimension_slice (id, dimension_id, range_start, range_end) FROM stdin;
1	3	1750896000000000	1751500800000000
2	2	1750896000000000	1751500800000000
3	4	1750896000000000	1751500800000000
4	5	1750896000000000	1751500800000000
5	1	1750896000000000	1751500800000000
6	6	1750896000000000	1751500800000000
7	7	1750896000000000	1751500800000000
8	2	1751500800000000	1752105600000000
9	1	1751500800000000	1752105600000000
10	3	1751500800000000	1752105600000000
11	7	1751500800000000	1752105600000000
12	6	1751500800000000	1752105600000000
13	4	1751500800000000	1752105600000000
14	5	1751500800000000	1752105600000000
15	3	1752105600000000	1752710400000000
16	1	1752105600000000	1752710400000000
17	2	1752105600000000	1752710400000000
18	4	1752105600000000	1752710400000000
19	5	1752105600000000	1752710400000000
20	6	1752105600000000	1752710400000000
21	7	1752105600000000	1752710400000000
\.


--
-- Data for Name: chunk_constraint; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk_constraint (chunk_id, dimension_slice_id, constraint_name, hypertable_constraint_name) FROM stdin;
1	1	constraint_1	\N
2	2	constraint_2	\N
3	3	constraint_3	\N
4	4	constraint_4	\N
5	5	constraint_5	\N
6	6	constraint_6	\N
7	7	constraint_7	\N
8	8	constraint_8	\N
9	9	constraint_9	\N
10	10	constraint_10	\N
11	11	constraint_11	\N
12	12	constraint_12	\N
13	13	constraint_13	\N
14	14	constraint_14	\N
15	15	constraint_15	\N
16	16	constraint_16	\N
17	17	constraint_17	\N
18	18	constraint_18	\N
19	19	constraint_19	\N
20	20	constraint_20	\N
21	21	constraint_21	\N
\.


--
-- Data for Name: chunk_index; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.chunk_index (chunk_id, index_name, hypertable_id, hypertable_index_name) FROM stdin;
1	_hyper_3_1_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
2	_hyper_2_2_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
3	_hyper_4_3_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
4	_hyper_5_4_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
5	_hyper_1_5_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
6	_hyper_6_6_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
7	_hyper_7_7_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
8	_hyper_2_8_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
9	_hyper_1_9_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
10	_hyper_3_10_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
11	_hyper_7_11_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
12	_hyper_6_12_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
13	_hyper_4_13_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
14	_hyper_5_14_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
15	_hyper_3_15_chunk_sensor_motion_time_idx	3	sensor_motion_time_idx
16	_hyper_1_16_chunk_sensor_temperature_time_idx	1	sensor_temperature_time_idx
17	_hyper_2_17_chunk_sensor_humidity_time_idx	2	sensor_humidity_time_idx
18	_hyper_4_18_chunk_sensor_neighbors_count_time_idx	4	sensor_neighbors_count_time_idx
19	_hyper_5_19_chunk_sensor_neighbors_detail_time_idx	5	sensor_neighbors_detail_time_idx
20	_hyper_6_20_chunk_sensor_pressure_time_idx	6	sensor_pressure_time_idx
21	_hyper_7_21_chunk_sensor_voltage_time_idx	7	sensor_voltage_time_idx
\.


--
-- Data for Name: compression_chunk_size; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.compression_chunk_size (chunk_id, compressed_chunk_id, uncompressed_heap_size, uncompressed_toast_size, uncompressed_index_size, compressed_heap_size, compressed_toast_size, compressed_index_size, numrows_pre_compression, numrows_post_compression, numrows_frozen_immediately) FROM stdin;
\.


--
-- Data for Name: compression_settings; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.compression_settings (relid, compress_relid, segmentby, orderby, orderby_desc, orderby_nullsfirst) FROM stdin;
\.


--
-- Data for Name: continuous_agg; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_agg (mat_hypertable_id, raw_hypertable_id, parent_mat_hypertable_id, user_view_schema, user_view_name, partial_view_schema, partial_view_name, direct_view_schema, direct_view_name, materialized_only, finalized) FROM stdin;
\.


--
-- Data for Name: continuous_agg_migrate_plan; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_agg_migrate_plan (mat_hypertable_id, start_ts, end_ts, user_view_definition) FROM stdin;
\.


--
-- Data for Name: continuous_agg_migrate_plan_step; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_agg_migrate_plan_step (mat_hypertable_id, step_id, status, start_ts, end_ts, type, config) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_bucket_function; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_bucket_function (mat_hypertable_id, bucket_func, bucket_width, bucket_origin, bucket_offset, bucket_timezone, bucket_fixed_width) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_hypertable_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_hypertable_invalidation_log (hypertable_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_invalidation_threshold; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_invalidation_threshold (hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_materialization_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_materialization_invalidation_log (materialization_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_watermark; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.continuous_aggs_watermark (mat_hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: metadata; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.metadata (key, value, include_in_telemetry) FROM stdin;
install_timestamp	2025-06-28 12:21:43.64726+00	t
timescaledb_version	2.19.3	f
exported_uuid	dd0b99b0-23a3-4415-91a2-6bbe8eadb1f6	t
\.


--
-- Data for Name: tablespace; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: admin
--

COPY _timescaledb_catalog.tablespace (id, hypertable_id, tablespace_name) FROM stdin;
\.


--
-- Data for Name: bgw_job; Type: TABLE DATA; Schema: _timescaledb_config; Owner: admin
--

COPY _timescaledb_config.bgw_job (id, application_name, schedule_interval, max_runtime, max_retries, retry_period, proc_schema, proc_name, owner, scheduled, fixed_schedule, initial_start, hypertable_id, config, check_schema, check_name, timezone) FROM stdin;
\.


--
-- Data for Name: _hyper_1_16_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_16_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-07-10 07:25:35.285+00	112	telegraf	978202981	23.71	17	1
2025-07-10 07:26:05.55+00	112	telegraf	978202981	23.96	19	1
2025-07-10 07:26:35.812+00	112	telegraf	978202981	24.85	31	1
2025-07-10 07:27:06.08+00	112	telegraf	978202981	25.13	35	1
2025-07-10 07:28:57.083+00	112	telegraf	1041420528	23.73	50	1
2025-07-10 07:33:09.235+00	112	telegraf	978202981	24.61	64	1
2025-07-10 07:39:04.842+00	112	telegraf	1126982881	23.75	69	1
2025-07-10 07:41:13.431+00	112	telegraf	978202981	24.36	72	1
2025-07-10 08:09:50.93+00	112	telegraf	1126982881	23.92	106	1
2025-07-10 08:11:59.491+00	112	telegraf	978202981	24.29	107	1
2025-07-10 08:30:59.449+00	112	telegraf	1041420528	24.17	119	1
2025-07-10 08:40:36.961+00	112	telegraf	1126982881	23.93	147	1
2025-07-10 08:42:45.594+00	112	telegraf	978202981	24.13	148	1
2025-07-10 08:57:15.628+00	112	telegraf	1126982881	24.18	158	1
2025-07-10 09:01:45.467+00	112	telegraf	1041420528	24.36	164	1
2025-07-10 09:13:31.67+00	112	telegraf	978202981	24.36	173	1
2025-07-10 09:22:28.75+00	112	telegraf	1126982881	24.45	179	1
2025-07-10 09:26:28.322+00	112	telegraf	1041420528	24.62	180	1
2025-07-10 09:41:16.14+00	112	telegraf	978202981	24.61	189	1
2025-07-10 09:44:10.058+00	112	telegraf	1126982881	24.7	192	1
2025-07-10 09:57:14.371+00	112	telegraf	1041420528	24.85	204	1
2025-07-10 10:12:02.238+00	112	telegraf	978202981	24.83	213	1
2025-07-10 10:14:56.1+00	112	telegraf	1126982881	24.85	215	1
2025-07-10 11:44:20.415+00	112	telegraf	978202981	24.91	271	1
2025-07-10 11:47:14.2+00	112	telegraf	1126982881	25	273	1
2025-07-10 11:55:15.872+00	112	telegraf	1041420528	25.11	276	1
2025-07-10 12:01:59.65+00	112	telegraf	978202981	25.16	281	1
2025-07-10 12:07:55.004+00	112	telegraf	1126982881	25.25	291	1
2025-07-10 12:30:14.426+00	112	telegraf	978202981	25.43	300	1
2025-07-10 12:33:05.619+00	112	telegraf	1041420528	25.61	303	1
2025-07-10 12:35:09.213+00	112	telegraf	1126982881	25.51	304	1
2025-07-10 13:01:00.452+00	112	telegraf	978202981	25.61	320	1
2025-07-10 13:03:51.669+00	112	telegraf	1041420528	25.76	323	1
2025-07-10 13:05:55.237+00	112	telegraf	1126982881	25.63	324	1
2025-07-10 14:05:23.739+00	112	telegraf	1041420528	25.63	360	1
2025-07-10 14:07:27.341+00	112	telegraf	1126982881	25.52	362	1
2025-07-10 14:33:18.642+00	112	telegraf	978202981	25.48	377	1
2025-07-10 14:36:09.774+00	112	telegraf	1041420528	25.53	378	1
2025-07-10 14:38:13.374+00	112	telegraf	1126982881	25.48	380	1
2025-07-10 15:04:04.713+00	112	telegraf	978202981	25.57	405	1
2025-07-10 15:06:55.8+00	112	telegraf	1041420528	25.72	406	1
2025-07-10 15:08:59.442+00	112	telegraf	1126982881	25.56	408	1
2025-07-10 15:37:41.886+00	112	telegraf	1041420528	25.9	426	1
2025-07-10 16:08:27.941+00	112	telegraf	1041420528	26	448	1
2025-07-10 16:39:14.004+00	112	telegraf	1041420528	26.01	474	1
2025-07-10 16:41:17.552+00	112	telegraf	1126982881	25.85	477	1
2025-07-10 17:07:09.018+00	112	telegraf	978202981	25.86	490	1
2025-07-10 17:12:03.561+00	112	telegraf	1126982881	25.84	497	1
2025-07-10 17:37:55.071+00	112	telegraf	978202981	25.83	508	1
2025-07-10 17:40:46.066+00	112	telegraf	1041420528	25.87	513	1
2025-07-10 17:42:49.605+00	112	telegraf	1126982881	25.81	515	1
2025-07-11 06:55:40.554+00	112	telegraf	1041420528	23.91	6	1
2025-07-11 06:57:52.353+00	112	telegraf	978202981	23.98	7	1
2025-07-11 07:02:46.693+00	112	telegraf	1126982881	24.16	12	1
2025-07-11 07:07:16.639+00	112	telegraf	1041420528	24.16	16	1
2025-07-11 07:13:00.305+00	112	telegraf	978202981	24.23	20	1
2025-07-11 07:22:54.747+00	112	telegraf	1041420528	24.41	25	1
2025-07-11 07:24:28+00	112	telegraf	1126982881	24.41	27	1
2025-07-11 07:37:43.12+00	112	telegraf	978202981	24.49	35	1
2025-07-11 07:40:33.938+00	112	telegraf	1041420528	24.68	38	1
2025-07-11 07:48:10.357+00	112	telegraf	1126982881	24.67	42	1
2025-07-11 09:02:57.57+00	112	telegraf	978202981	25.13	102	1
2025-07-11 09:08:22.165+00	112	telegraf	1126982881	25.24	109	1
2025-07-11 09:22:37.869+00	112	telegraf	978202981	25.38	117	1
2025-07-11 09:29:02.954+00	112	telegraf	1126982881	25.5	123	1
2025-07-12 06:12:18.806+00	112	telegraf	1041420528	23.07	24	1
2025-07-12 06:20:25.326+00	112	telegraf	1126982881	23.23	31	1
2025-07-12 06:28:27.226+00	112	telegraf	1041420528	23.32	36	1
2025-07-12 06:30:39.168+00	112	telegraf	978202981	23.35	39	1
2025-07-12 06:32:01.373+00	112	telegraf	1126982881	23.48	41	1
2025-07-12 06:42:34.583+00	112	telegraf	1041420528	23.58	46	1
2025-07-12 06:49:49.175+00	112	telegraf	978202981	23.6	51	1
2025-07-12 06:57:12.23+00	112	telegraf	1041420528	23.83	57	1
2025-07-12 07:06:19.253+00	112	telegraf	1126982881	24	62	1
2025-07-12 07:20:35.188+00	112	telegraf	978202981	23.8	69	1
2025-07-12 07:27:58.248+00	112	telegraf	1041420528	23.86	75	1
2025-07-12 07:51:21.224+00	112	telegraf	978202981	23.87	88	1
2025-07-12 08:18:35.429+00	112	telegraf	978202981	24.13	102	1
2025-07-12 08:28:01.879+00	112	telegraf	1126982881	24.44	108	1
2025-07-12 08:49:21.492+00	112	telegraf	978202981	24.33	120	1
2025-07-12 08:58:47.954+00	112	telegraf	1126982881	24.62	126	1
2025-07-12 09:00:16.382+00	112	telegraf	1041420528	24.51	132	1
2025-07-12 10:21:39.657+00	112	telegraf	978202981	24.47	182	1
2025-07-12 14:06:28.44+00	112	telegraf	1126982881	24.36	320	1
2025-07-12 14:06:56.289+00	112	telegraf	1041420528	24.44	321	1
2025-07-12 14:17:12.504+00	112	telegraf	978202981	24.59	331	1
2025-07-12 14:18:04.533+00	112	telegraf	1126982881	24.61	332	1
2025-07-12 14:23:34.954+00	112	telegraf	1041420528	24.71	336	1
2025-07-12 14:31:11.372+00	112	telegraf	1126982881	24.88	340	1
2025-07-12 14:33:20.916+00	112	telegraf	978202981	24.85	342	1
2025-07-12 14:39:13.1+00	112	telegraf	1041420528	24.98	347	1
2025-07-12 14:43:17.676+00	112	telegraf	1126982881	25.13	352	1
2025-07-12 14:48:59.066+00	112	telegraf	978202981	25.1	354	1
2025-07-12 14:52:19.931+00	112	telegraf	1041420528	25.25	358	1
2025-07-12 14:57:55.3+00	112	telegraf	1126982881	25.38	359	1
2025-07-12 15:06:08.011+00	112	telegraf	978202981	25.37	363	1
2025-07-12 15:11:32.394+00	112	telegraf	1126982881	25.63	372	1
2025-07-12 15:13:30.98+00	112	telegraf	1041420528	25.51	374	1
2025-07-12 16:40:18.758+00	112	telegraf	1126982881	25.3	422	1
2025-07-12 16:45:49.091+00	112	telegraf	1041420528	25.33	428	1
2025-07-12 17:09:12.163+00	112	telegraf	978202981	25.49	439	1
2025-07-12 17:33:55.077+00	112	telegraf	978202981	25.75	456	1
2025-07-12 17:39:47.211+00	112	telegraf	1041420528	25.8	461	1
2025-07-12 17:50:25.321+00	112	telegraf	1126982881	26.02	469	1
2025-07-12 18:03:29.599+00	112	telegraf	1041420528	26.05	475	1
2025-07-12 18:04:41.122+00	112	telegraf	978202981	25.94	476	1
2025-07-12 18:14:07.658+00	112	telegraf	1126982881	26.27	485	1
2025-07-12 18:34:15.635+00	112	telegraf	1041420528	26.28	495	1
2025-07-12 18:39:51.09+00	112	telegraf	1126982881	26.54	501	1
2025-07-12 19:06:13.218+00	112	telegraf	978202981	26.33	515	1
2025-07-12 20:07:45.284+00	112	telegraf	978202981	25.87	554	1
2025-07-12 20:23:14.966+00	112	telegraf	1126982881	26.1	564	1
2025-07-12 20:29:15.586+00	112	telegraf	1041420528	26.03	565	1
2025-07-12 20:38:31.354+00	112	telegraf	978202981	26	572	1
2025-07-12 20:54:01.05+00	112	telegraf	1126982881	26.35	582	1
2025-07-12 21:00:01.626+00	112	telegraf	1041420528	26.28	585	1
2025-07-12 21:09:17.386+00	112	telegraf	978202981	26.17	590	1
2025-07-12 21:30:47.67+00	112	telegraf	1041420528	26.44	605	1
2025-07-12 21:40:03.415+00	112	telegraf	978202981	26.32	612	1
2025-07-12 22:01:33.698+00	112	telegraf	1041420528	26.41	624	1
2025-07-12 22:10:49.462+00	112	telegraf	978202981	26.2	631	1
2025-07-12 22:18:14.972+00	112	telegraf	1126982881	26.41	633	1
2025-07-13 06:23:55.598+00	112	telegraf	1041420528	24.76	933	1
2025-07-13 06:33:33.359+00	112	telegraf	1126982881	24.95	940	1
2025-07-13 06:34:42.236+00	112	telegraf	978202981	24.92	941	1
2025-07-13 06:43:38.615+00	112	telegraf	1126982881	25.21	947	1
2025-07-13 06:51:51.202+00	112	telegraf	978202981	25.17	954	1
2025-07-13 07:16:22.948+00	112	telegraf	1041420528	25.52	966	1
2025-07-13 07:17:04.337+00	112	telegraf	978202981	25.42	969	1
2025-07-13 09:50:54.622+00	112	telegraf	978202981	25.35	1063	1
2025-07-13 10:06:21.59+00	112	telegraf	1041420528	25.58	1071	1
2025-07-13 10:08:25.49+00	112	telegraf	1126982881	25.66	1076	1
2025-07-13 10:11:35.387+00	112	telegraf	978202981	25.6	1080	1
2025-07-13 10:24:33.893+00	112	telegraf	1126982881	25.93	1086	1
2025-07-13 10:24:31.048+00	112	telegraf	1041420528	25.85	1087	1
2025-07-13 10:42:13.112+00	112	telegraf	1126982881	26.18	1102	1
2025-07-13 10:44:11.303+00	112	telegraf	1041420528	26.11	1103	1
2025-07-13 10:53:27.22+00	112	telegraf	978202981	26.11	1107	1
2025-07-13 11:04:24.697+00	112	telegraf	1126982881	26.43	1111	1
2025-07-13 11:09:24.461+00	112	telegraf	1041420528	26.36	1117	1
2025-07-13 11:18:40.369+00	112	telegraf	978202981	26.36	1122	1
2025-07-13 11:28:37.319+00	112	telegraf	1126982881	26.68	1126	1
2025-07-13 11:34:07.342+00	112	telegraf	1041420528	26.63	1130	1
2025-07-13 12:20:12.478+00	112	telegraf	978202981	26.39	1160	1
2025-07-13 13:00:55.444+00	112	telegraf	1126982881	26.58	1187	1
2025-07-13 13:06:25.574+00	112	telegraf	1041420528	26.4	1189	1
2025-07-13 13:21:44.581+00	112	telegraf	978202981	26.35	1203	1
2025-07-13 13:31:41.483+00	112	telegraf	1126982881	26.71	1210	1
2025-07-13 13:37:11.622+00	112	telegraf	1041420528	26.6	1214	1
2025-07-13 14:23:16.66+00	112	telegraf	978202981	26.44	1242	1
2025-07-13 14:33:13.568+00	112	telegraf	1126982881	26.71	1249	1
2025-07-13 14:38:43.728+00	112	telegraf	1041420528	26.63	1251	1
2025-07-13 14:54:02.701+00	112	telegraf	978202981	26.64	1261	1
2025-07-14 08:04:49.285+00	112	telegraf	1041420528	25.93	1907	1
2025-07-14 08:05:22.488+00	112	telegraf	1126982881	26.02	1908	1
2025-07-14 08:06:31.391+00	112	telegraf	978202981	25.98	1909	1
2025-07-14 08:17:56.121+00	112	telegraf	1041420528	26.18	1918	1
2025-07-15 08:54:46.29+00	112	telegraf	1041420528	26.04	2820	1
2025-07-15 08:56:59.103+00	112	telegraf	978202981	26.07	2823	1
2025-07-15 09:25:32.323+00	112	telegraf	1041420528	26.13	2841	1
2025-07-15 09:27:45.15+00	112	telegraf	978202981	26.11	2844	1
2025-07-16 07:14:58.412+00	112	telegraf	1126982881	24.66	3746	1
\.


--
-- Data for Name: _hyper_1_5_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_5_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-06-28 12:36:56.568+00	112	\N	1041420528	28.04	82	0.9
2025-06-28 12:38:01.295+00	112	\N	1126982881	28.28	85	0.9
2025-06-28 12:48:06.566+00	112	\N	1126982881	28.53	96	0.9
2025-06-28 12:49:02.884+00	112	\N	1041420528	28.29	99	0.9
2025-06-28 12:55:12.176+00	112	\N	978202981	28.45	103	0.9
2025-06-28 13:18:52.568+00	112	\N	1126982881	28.61	119	0.9
2025-06-28 13:19:48.916+00	112	\N	1041420528	28.32	120	0.9
2025-06-28 13:25:58.147+00	112	\N	978202981	28.55	123	0.9
2025-06-28 13:49:38.652+00	112	\N	1126982881	28.47	143	0.9
2025-06-28 13:50:35.004+00	112	\N	1041420528	28.28	144	0.9
2025-06-28 13:56:44.275+00	112	\N	978202981	28.53	147	0.9
2025-06-28 14:17:23.11+00	112	\N	1126982881	28.78	164	0.9
2025-06-28 14:17:49.181+00	112	\N	1041420528	28.56	174	0.9
2025-06-28 14:17:55.321+00	112	\N	978202981	28.79	177	0.9
2025-06-28 14:48:09.143+00	112	\N	1126982881	28.82	191	0.9
2025-06-28 14:48:35.204+00	112	\N	1041420528	28.81	192	0.9
2025-06-28 14:48:41.382+00	112	\N	978202981	28.88	195	0.9
2025-06-28 15:18:55.178+00	112	\N	1126982881	29.01	210	0.9
2025-06-28 15:19:21.258+00	112	\N	1041420528	29.02	212	0.9
2025-06-28 15:19:27.415+00	112	\N	978202981	29.11	214	0.9
2025-06-28 15:49:41.175+00	112	\N	1126982881	29.16	228	0.9
2025-06-28 15:49:36.985+00	112	\N	1041420528	29.27	229	0.9
2025-06-28 15:50:13.467+00	112	\N	978202981	29.31	231	0.9
2025-06-28 16:20:27.25+00	112	\N	1126982881	29.3	249	0.9
2025-06-28 16:20:23.046+00	112	\N	1041420528	29.41	250	0.9
2025-06-28 16:20:59.555+00	112	\N	978202981	29.42	254	0.9
2025-06-28 16:51:09.086+00	112	\N	1041420528	29.49	268	0.9
2025-06-28 16:51:13.262+00	112	\N	1126982881	29.34	269	0.9
2025-06-28 16:51:45.582+00	112	\N	978202981	29.52	272	0.9
2025-06-28 17:21:59.316+00	112	\N	1126982881	29.46	296	0.9
2025-06-28 17:21:55.122+00	112	\N	1041420528	29.49	297	0.9
2025-06-28 17:22:31.687+00	112	\N	978202981	29.53	302	0.9
2025-06-28 17:35:36.421+00	112	\N	1126982881	29.21	311	0.9
2025-06-28 17:36:08.785+00	112	\N	978202981	29.25	312	0.9
2025-06-28 17:46:07.765+00	112	\N	1041420528	29.23	320	0.9
2025-06-28 18:06:22.492+00	112	\N	1126982881	29	337	0.9
2025-06-28 18:06:54.901+00	112	\N	978202981	29.08	338	0.9
2025-06-28 18:16:53.812+00	112	\N	1041420528	29.04	342	0.9
2025-06-28 18:37:08.568+00	112	\N	1126982881	28.94	359	0.9
2025-06-28 18:37:40.954+00	112	\N	978202981	29.08	360	0.9
2025-06-28 18:47:39.872+00	112	\N	1041420528	29.05	364	0.9
2025-06-28 19:07:54.569+00	112	\N	1126982881	28.81	377	0.9
2025-06-28 19:08:26.958+00	112	\N	978202981	28.85	378	0.9
2025-06-28 19:18:25.865+00	112	\N	1041420528	28.84	382	0.9
2025-06-28 19:38:40.588+00	112	\N	1126982881	28.75	397	0.9
2025-06-28 19:39:13.014+00	112	\N	978202981	28.81	398	0.9
2025-06-28 19:49:11.968+00	112	\N	1041420528	28.77	402	0.9
2025-06-30 14:54:40.114+00	112	\N	1041420528	28.82	766	0.9
2025-06-30 15:02:21.836+00	112	\N	978202981	29.35	772	0.9
2025-06-30 15:03:18.603+00	112	\N	1126982881	34.13	773	0.9
2025-06-30 15:19:27.025+00	112	\N	1126982881	34.38	780	0.9
2025-06-30 15:25:03.677+00	112	\N	978202981	29.6	786	0.9
2025-06-30 15:25:26.156+00	112	\N	1041420528	28.83	788	0.9
2025-06-30 15:32:03.587+00	112	\N	1126982881	34.64	793	0.9
2025-06-30 15:52:17.905+00	112	\N	978202981	29.86	805	0.9
2025-06-30 15:56:12.191+00	112	\N	1041420528	28.88	809	0.9
2025-06-30 16:00:18.303+00	112	\N	1126982881	34.89	812	0.9
2025-06-30 16:02:53.42+00	112	\N	978202981	30.12	815	0.9
2025-06-30 16:23:30.406+00	112	\N	1126982881	35.14	833	0.9
2025-06-30 16:26:58.257+00	112	\N	1041420528	28.94	840	0.9
2025-06-30 16:33:39.48+00	112	\N	978202981	30.11	844	0.9
2025-06-30 16:54:16.464+00	112	\N	1126982881	35.23	854	0.9
2025-06-30 16:57:44.286+00	112	\N	1041420528	28.97	860	0.9
2025-06-30 17:04:25.546+00	112	\N	978202981	30.31	864	0.9
2025-06-30 17:23:31.716+00	112	\N	1126982881	34.96	871	0.9
2025-06-30 17:28:30.362+00	112	\N	1041420528	29.03	877	0.9
2025-06-30 17:35:11.581+00	112	\N	978202981	30.46	883	0.9
2025-06-30 17:36:38.545+00	112	\N	1126982881	34.67	884	0.9
2025-06-30 17:43:11.96+00	112	\N	1126982881	34.4	886	0.9
2025-06-30 17:56:18.814+00	112	\N	1126982881	34.14	898	0.9
2025-06-30 17:59:16.372+00	112	\N	1041420528	29.05	901	0.9
2025-06-30 18:02:52.232+00	112	\N	1126982881	33.87	905	0.9
2025-06-30 18:05:57.624+00	112	\N	978202981	30.58	908	0.9
2025-06-30 18:16:29.319+00	112	\N	1126982881	33.6	913	0.9
2025-06-30 18:19:30.891+00	112	\N	1126982881	33.34	915	0.9
2025-06-30 18:28:35.628+00	112	\N	1126982881	33.08	921	0.9
2025-06-30 18:30:02.427+00	112	\N	1041420528	29.13	923	0.9
2025-06-30 18:36:43.698+00	112	\N	978202981	30.67	930	0.9
2025-06-30 18:39:41.411+00	112	\N	1126982881	32.8	932	0.9
2025-06-30 19:00:48.465+00	112	\N	1041420528	29.14	948	0.9
2025-06-30 19:02:23.274+00	112	\N	1126982881	32.25	952	0.9
2025-06-30 19:06:25.379+00	112	\N	1126982881	31.97	956	0.9
2025-06-30 19:07:29.767+00	112	\N	978202981	30.53	957	0.9
2025-06-30 19:12:58.788+00	112	\N	1126982881	31.71	960	0.9
2025-06-30 19:19:01.94+00	112	\N	1126982881	31.45	964	0.9
2025-06-30 19:28:06.674+00	112	\N	1126982881	31.2	973	0.9
2025-06-30 19:30:07.733+00	112	\N	1126982881	30.94	975	0.9
2025-06-30 19:31:34.498+00	112	\N	1041420528	29.17	979	0.9
2025-06-30 19:32:08.782+00	112	\N	1126982881	30.68	981	0.9
2025-06-30 19:33:39.56+00	112	\N	1126982881	30.41	984	0.9
2025-06-30 19:38:15.859+00	112	\N	978202981	30.54	1000	0.9
2025-06-30 19:44:49.308+00	112	\N	978202981	30.26	1008	0.9
2025-06-30 19:45:45.876+00	112	\N	1126982881	30.13	1009	0.9
2025-06-30 19:46:42.405+00	112	\N	1041420528	28.87	1015	0.9
2025-06-30 19:48:21.151+00	112	\N	978202981	29.96	1016	0.9
2025-06-30 19:49:17.725+00	112	\N	1126982881	29.87	1017	0.9
2025-06-30 19:50:44.501+00	112	\N	1041420528	28.59	1021	0.9
2025-06-30 19:53:23.77+00	112	\N	978202981	29.69	1031	0.9
2025-06-30 19:54:20.357+00	112	\N	1126982881	29.57	1032	0.9
2025-06-30 19:55:24.826+00	112	\N	978202981	29.44	1035	0.9
2025-06-30 19:56:21.397+00	112	\N	1126982881	29.31	1036	0.9
2025-06-30 19:54:46.597+00	112	\N	1041420528	28.32	1037	0.9
2025-06-30 19:59:18.97+00	112	\N	1041420528	28.05	1038	0.9
2025-06-30 19:59:26.943+00	112	\N	978202981	29.18	1039	0.9
2025-06-30 20:00:23.501+00	112	\N	1126982881	29.03	1042	0.9
2025-06-30 20:02:28.531+00	112	\N	978202981	28.93	1049	0.9
2025-06-30 20:23:09.314+00	112	\N	978202981	27.85	1067	0.9
2025-06-30 20:24:32.106+00	112	\N	1041420528	27.02	1068	0.9
2025-06-30 20:26:37.188+00	112	\N	1126982881	27.72	1070	0.9
2025-06-30 20:29:42.72+00	112	\N	978202981	27.59	1072	0.9
2025-06-30 20:30:04.992+00	112	\N	1041420528	26.74	1073	0.9
2025-06-30 20:33:10.614+00	112	\N	1126982881	27.47	1080	0.9
2025-06-30 20:35:37.894+00	112	\N	1041420528	26.47	1082	0.9
2025-06-30 20:37:16.685+00	112	\N	978202981	27.33	1083	0.9
2025-06-30 20:40:10.274+00	112	\N	1041420528	26.18	1084	0.9
2025-06-30 20:45:12.897+00	112	\N	1041420528	25.92	1088	0.9
2025-06-30 20:51:20.057+00	112	\N	1126982881	27.19	1096	0.9
2025-06-30 20:53:25.095+00	112	\N	978202981	27.08	1099	0.9
2025-06-30 20:56:48.952+00	112	\N	1041420528	25.64	1104	0.9
2025-06-30 21:05:57.684+00	112	\N	1126982881	26.94	1114	0.9
2025-06-30 21:06:31.976+00	112	\N	978202981	26.82	1117	0.9
2025-06-30 21:27:34.984+00	112	\N	1041420528	25.84	1129	0.9
2025-06-30 21:36:43.742+00	112	\N	1126982881	26.94	1136	0.9
2025-06-30 21:37:18.03+00	112	\N	978202981	26.83	1138	0.9
2025-06-30 21:46:44.98+00	112	\N	1041420528	26.1	1142	0.9
2025-06-30 22:02:27.141+00	112	\N	1126982881	27.2	1152	0.9
2025-06-30 22:08:04.106+00	112	\N	978202981	27.07	1158	0.9
2025-06-30 22:17:31.035+00	112	\N	1041420528	26.18	1163	0.9
2025-07-01 05:38:51.192+00	112	\N	1041420528	25.11	1472	0.9
2025-07-01 05:38:59.349+00	112	\N	978202981	23.55	1473	0.9
2025-07-01 05:39:55.605+00	112	\N	1126982881	23.69	1474	0.9
2025-07-01 05:46:03.041+00	112	\N	978202981	24.53	1494	0.9
2025-07-01 05:47:33.834+00	112	\N	978202981	24.78	1498	0.9
2025-07-01 05:48:30.072+00	112	\N	1126982881	23.44	1500	0.9
2025-07-01 05:50:35.411+00	112	\N	978202981	25.06	1501	0.9
2025-07-01 05:51:31.654+00	112	\N	1126982881	23.14	1503	0.9
2025-07-01 05:54:59.613+00	112	\N	1041420528	25.37	1506	0.9
2025-07-01 05:55:07.768+00	112	\N	978202981	25.32	1508	0.9
2025-07-01 05:57:04.542+00	112	\N	1126982881	22.89	1510	0.9
2025-07-01 06:06:43.814+00	112	\N	978202981	25.59	1518	0.9
2025-07-01 06:13:09.062+00	112	\N	1041420528	25.62	1522	0.9
2025-07-01 06:18:15.579+00	112	\N	1126982881	23.14	1528	0.9
2025-07-01 06:29:55.912+00	112	\N	978202981	25.84	1534	0.9
2025-07-01 06:36:25.048+00	112	\N	1126982881	23.44	1538	0.9
2025-07-01 06:43:55.136+00	112	\N	1041420528	25.84	1541	0.9
2025-07-01 06:53:03.729+00	112	\N	1126982881	23.71	1549	0.9
2025-07-01 07:00:41.961+00	112	\N	978202981	25.91	1553	0.9
2025-07-01 07:05:10.071+00	112	\N	1126982881	23.96	1557	0.9
2025-07-01 07:13:14.264+00	112	\N	1126982881	24.21	1560	0.9
2025-07-01 07:14:41.203+00	112	\N	1041420528	25.95	1562	0.9
2025-07-01 07:28:22.158+00	112	\N	1126982881	24.47	1573	0.9
2025-07-01 07:31:28.031+00	112	\N	978202981	26.02	1575	0.9
2025-07-01 07:38:27.427+00	112	\N	1126982881	24.72	1578	0.9
2025-07-01 07:45:27.247+00	112	\N	1041420528	26.07	1582	0.9
2025-07-01 07:52:04.538+00	112	\N	1126982881	24.97	1589	0.9
2025-07-01 08:16:13.303+00	112	\N	1041420528	26.14	1602	0.9
2025-07-01 08:17:17.672+00	112	\N	1126982881	25.48	1604	0.9
2025-07-01 08:24:21.351+00	112	\N	1126982881	25.74	1609	0.9
2025-07-01 08:33:00.133+00	112	\N	978202981	26.21	1614	0.9
2025-07-01 08:37:28.203+00	112	\N	1126982881	25.99	1617	0.9
2025-07-01 08:46:59.384+00	112	\N	1041420528	26.19	1624	0.9
2025-07-01 08:49:04.249+00	112	\N	1126982881	26.25	1625	0.9
2025-07-01 09:03:11.639+00	112	\N	1126982881	26.5	1636	0.9
2025-07-01 09:03:46.166+00	112	\N	978202981	26.3	1637	0.9
2025-07-01 09:14:47.68+00	112	\N	1126982881	26.76	1642	0.9
2025-07-01 09:17:45.415+00	112	\N	1041420528	26.26	1646	0.9
2025-07-01 09:26:23.709+00	112	\N	1126982881	27.03	1653	0.9
2025-07-01 09:34:32.222+00	112	\N	978202981	26.35	1657	0.9
2025-07-01 09:35:58.707+00	112	\N	1126982881	27.28	1660	0.9
2025-07-01 09:46:34.22+00	112	\N	1126982881	27.53	1664	0.9
2025-07-01 09:48:31.457+00	112	\N	1041420528	26.32	1666	0.9
2025-07-01 09:55:08.687+00	112	\N	1126982881	27.79	1672	0.9
2025-07-01 10:04:13.429+00	112	\N	1126982881	28.05	1679	0.9
2025-07-01 10:05:18.285+00	112	\N	978202981	26.42	1681	0.9
2025-07-01 10:12:17.642+00	112	\N	1126982881	28.3	1685	0.9
2025-07-01 10:19:17.513+00	112	\N	1041420528	26.38	1690	0.9
2025-07-01 10:20:52.11+00	112	\N	1126982881	28.55	1691	0.9
2025-07-01 10:29:26.576+00	112	\N	1126982881	28.81	1698	0.9
2025-07-01 10:36:04.344+00	112	\N	978202981	26.56	1703	0.9
2025-07-01 10:39:01.57+00	112	\N	1126982881	29.06	1705	0.9
2025-07-01 11:16:51.305+00	112	\N	1126982881	30.12	1734	0.9
2025-07-01 11:20:49.608+00	112	\N	1041420528	26.56	1736	0.9
2025-07-01 11:25:25.772+00	112	\N	1126982881	30.37	1744	0.9
2025-07-01 11:31:59.186+00	112	\N	1126982881	30.66	1748	0.9
2025-07-01 11:37:36.438+00	112	\N	978202981	26.81	1755	0.9
2025-07-01 11:42:34.701+00	112	\N	1126982881	30.92	1759	0.9
2025-07-01 11:51:35.641+00	112	\N	1041420528	26.69	1766	0.9
2025-07-01 11:52:39.966+00	112	\N	1126982881	31.17	1767	0.9
2025-07-01 12:00:13.916+00	112	\N	1126982881	31.46	1773	0.9
2025-07-01 12:08:22.461+00	112	\N	978202981	26.87	1783	0.9
2025-07-01 12:10:49.449+00	112	\N	1126982881	31.72	1784	0.9
2025-07-01 12:20:54.7+00	112	\N	1126982881	31.98	1789	0.9
2025-07-01 12:22:21.689+00	112	\N	1041420528	26.76	1792	0.9
2025-07-01 12:26:57.861+00	112	\N	1126982881	32.24	1798	0.9
2025-07-01 12:39:08.518+00	112	\N	978202981	26.94	1805	0.9
2025-07-01 12:41:05.211+00	112	\N	1126982881	32.5	1806	0.9
2025-07-01 12:50:09.936+00	112	\N	1126982881	32.77	1810	0.9
2025-07-01 12:53:07.745+00	112	\N	1041420528	26.83	1813	0.9
2025-07-01 13:04:17.313+00	112	\N	1126982881	33.02	1821	0.9
2025-07-01 13:09:54.586+00	112	\N	978202981	27.11	1827	0.9
2025-07-01 13:21:26.256+00	112	\N	1126982881	33.27	1832	0.9
2025-07-01 13:23:53.802+00	112	\N	1041420528	26.93	1834	0.9
2025-07-01 13:31:31.524+00	112	\N	1126982881	33.53	1842	0.9
2025-07-01 13:40:40.656+00	112	\N	978202981	27.24	1846	0.9
2025-07-01 13:45:38.876+00	112	\N	1126982881	33.78	1850	0.9
2025-07-01 13:54:39.826+00	112	\N	1041420528	27.05	1855	0.9
2025-07-01 14:11:26.691+00	112	\N	978202981	27.31	1868	0.9
2025-07-01 15:26:57.988+00	112	\N	1041420528	27.3	1920	0.9
2025-07-01 15:38:37.802+00	112	\N	1126982881	34.77	1928	0.9
2025-07-01 15:43:44.882+00	112	\N	978202981	27.62	1931	0.9
2025-07-01 16:08:23.313+00	112	\N	1126982881	35.02	1947	0.9
2025-07-01 16:14:30.909+00	112	\N	978202981	27.77	1952	0.9
2025-07-01 16:28:30.062+00	112	\N	1041420528	27.51	1959	0.9
2025-07-01 16:39:09.36+00	112	\N	1126982881	34.84	1966	0.9
2025-07-01 16:45:16.964+00	112	\N	978202981	27.87	1971	0.9
2025-07-01 16:55:17.776+00	112	\N	1126982881	34.58	1975	0.9
2025-07-01 16:59:16.102+00	112	\N	1041420528	27.6	1978	0.9
2025-07-01 17:30:02.144+00	112	\N	1041420528	27.72	1998	0.9
2025-07-01 17:38:10.136+00	112	\N	1126982881	34.96	2005	0.9
2025-07-01 17:46:49.051+00	112	\N	978202981	28.11	2011	0.9
2025-07-01 18:00:48.174+00	112	\N	1041420528	27.79	2018	0.9
2025-07-01 18:08:56.177+00	112	\N	1126982881	34.79	2029	0.9
2025-07-01 18:28:36.452+00	112	\N	1126982881	34.54	2040	0.9
2025-07-01 18:31:34.22+00	112	\N	1041420528	27.87	2043	0.9
2025-07-01 18:38:41.707+00	112	\N	1126982881	34.27	2049	0.9
2025-07-01 18:42:43.807+00	112	\N	1126982881	34.02	2051	0.9
2025-07-01 18:48:16.697+00	112	\N	1126982881	33.76	2055	0.9
2025-07-01 18:48:21.163+00	112	\N	978202981	28.34	2056	0.9
2025-07-01 18:51:48.544+00	112	\N	1126982881	33.42	2059	0.9
2025-07-01 18:56:51.164+00	112	\N	1126982881	33.13	2062	0.9
2025-07-01 19:02:20.286+00	112	\N	1041420528	27.99	2066	0.9
2025-07-01 19:02:54.312+00	112	\N	1126982881	32.85	2067	0.9
2025-07-01 19:05:25.663+00	112	\N	1126982881	32.56	2071	0.9
2025-07-01 19:10:58.536+00	112	\N	1126982881	32.3	2075	0.9
2025-07-01 19:13:29.851+00	112	\N	1126982881	32.02	2078	0.9
2025-07-01 19:17:01.689+00	112	\N	1126982881	31.77	2083	0.9
2025-07-01 19:19:07.205+00	112	\N	978202981	28.39	2084	0.9
2025-07-01 19:24:35.641+00	112	\N	1126982881	31.5	2087	0.9
2025-07-01 19:19:07.205+00	112	\N	978202981	28.39	2084	0.9
2025-07-01 19:19:07.205+00	112	\N	978202981	28.39	2084	0.9
2025-07-01 19:19:07.205+00	112	\N	la croisière s'amuse	28.39	2084	0.9
2025-07-01 19:19:07.205+00	112	\N	la croisière s'amuse	1000	2084	0.9
2025-07-01 19:30:08.538+00	112	\N	1126982881	31.24	2090	0.9
2025-07-01 19:33:06.364+00	112	\N	1041420528	28.04	2093	0.9
2025-07-01 19:38:43.004+00	112	\N	1126982881	30.97	2099	0.9
2025-07-01 19:45:46.676+00	112	\N	1126982881	30.7	2103	0.9
2025-07-01 19:49:18.521+00	112	\N	1126982881	30.45	2107	0.9
2025-07-01 19:49:53.268+00	112	\N	978202981	28.42	2108	0.9
2025-07-01 19:52:50.361+00	112	\N	1126982881	30.14	2110	0.9
2025-07-01 19:58:23.245+00	112	\N	1126982881	29.89	2114	0.9
2025-07-01 20:03:52.398+00	112	\N	1041420528	28.08	2119	0.9
2025-07-01 20:05:57.194+00	112	\N	1126982881	29.57	2126	0.9
2025-07-01 20:07:27.985+00	112	\N	1126982881	29.3	2130	0.9
2025-07-01 20:09:29.041+00	112	\N	1126982881	29.03	2135	0.9
2025-07-01 20:12:30.628+00	112	\N	1126982881	28.78	2139	0.9
2025-07-01 20:14:27.924+00	112	\N	1041420528	27.82	2141	0.9
2025-07-01 20:15:32.205+00	112	\N	1126982881	28.51	2144	0.9
2025-07-01 20:15:36.665+00	112	\N	978202981	28.17	2145	0.9
2025-07-01 20:19:34.297+00	112	\N	1126982881	28.24	2148	0.9
2025-07-01 20:24:06.662+00	112	\N	1126982881	27.98	2156	0.9
2025-07-01 20:25:03.455+00	112	\N	1041420528	27.57	2158	0.9
2025-07-01 20:27:42.978+00	112	\N	978202981	27.9	2160	0.9
2025-07-01 20:31:40.617+00	112	\N	1126982881	27.72	2166	0.9
2025-07-01 20:39:44.84+00	112	\N	1126982881	27.44	2172	0.9
2025-07-01 20:40:41.61+00	112	\N	1041420528	27.31	2174	0.9
2025-07-01 20:54:57.199+00	112	\N	978202981	27.65	2182	0.9
2025-07-01 20:56:53.791+00	112	\N	1126982881	27.13	2184	0.9
2025-07-01 21:10:00.628+00	112	\N	1126982881	26.85	2191	0.9
2025-07-01 21:11:27.644+00	112	\N	1041420528	27.13	2195	0.9
2025-07-01 21:16:08.261+00	112	\N	978202981	27.4	2199	0.9
2025-07-01 21:21:06.426+00	112	\N	1126982881	26.54	2202	0.9
2025-07-01 21:24:38.265+00	112	\N	1126982881	26.8	2206	0.9
2025-07-01 21:25:08.522+00	112	\N	1126982881	27.1	2208	0.9
2025-07-01 21:27:09.576+00	112	\N	1126982881	26.85	2215	0.9
2025-07-01 21:32:42.488+00	112	\N	1126982881	26.6	2217	0.9
2025-07-01 21:37:14.866+00	112	\N	1126982881	27.36	2222	0.9
2025-07-01 21:37:45.13+00	112	\N	1126982881	27.71	2224	0.9
2025-07-01 21:39:15.92+00	112	\N	1126982881	27.32	2231	0.9
2025-07-01 21:40:46.709+00	112	\N	1126982881	27.04	2232	0.9
2025-07-01 21:42:13.686+00	112	\N	1041420528	26.91	2236	0.9
2025-07-01 21:43:22.498+00	112	\N	978202981	27.15	2237	0.9
2025-07-01 21:43:48.277+00	112	\N	1126982881	26.78	2238	0.9
2025-07-01 22:01:27.471+00	112	\N	1126982881	26.51	2247	0.9
2025-07-01 22:01:31.955+00	112	\N	978202981	26.9	2248	0.9
2025-07-01 22:11:32.727+00	112	\N	1126982881	26.26	2256	0.9
2025-07-02 07:04:10.403+00	112	\N	1126982881	25.55	2649	0.9
2025-07-02 07:04:06.627+00	112	\N	1041420528	26.12	2650	0.9
2025-07-02 07:04:15.241+00	112	\N	978202981	26.08	2652	0.9
2025-07-02 07:04:40.666+00	112	\N	1126982881	25.81	2654	0.9
2025-07-02 07:05:07.15+00	112	\N	1041420528	26.42	2664	0.9
2025-07-02 07:09:39.514+00	112	\N	1041420528	26.13	2668	0.9
2025-07-02 07:10:48.657+00	112	\N	978202981	25.83	2669	0.9
2025-07-02 07:35:26.718+00	112	\N	1126982881	25.71	2686	0.9
2025-07-02 07:40:25.599+00	112	\N	1041420528	26.01	2688	0.9
2025-07-02 07:41:34.743+00	112	\N	978202981	25.64	2689	0.9
2025-07-02 08:06:12.757+00	112	\N	1126982881	25.81	2704	0.9
2025-07-02 08:11:11.626+00	112	\N	1041420528	26.15	2706	0.9
2025-07-02 08:12:20.838+00	112	\N	978202981	25.75	2707	0.9
2025-07-02 08:36:58.797+00	112	\N	1126982881	25.87	2722	0.9
2025-07-02 08:41:57.674+00	112	\N	1041420528	26.3	2724	0.9
2025-07-02 08:43:06.905+00	112	\N	978202981	25.84	2725	0.9
2025-07-02 09:07:44.868+00	112	\N	1126982881	26.04	2740	0.9
2025-07-02 09:12:43.706+00	112	\N	1041420528	26.48	2742	0.9
2025-07-02 09:13:52.97+00	112	\N	978202981	25.94	2743	0.9
2025-07-02 09:17:19.871+00	112	\N	1126982881	26.31	2749	0.9
2025-07-02 09:17:50.135+00	112	\N	1126982881	26.77	2751	0.9
2025-07-02 09:18:20.393+00	112	\N	1126982881	27.05	2753	0.9
2025-07-02 09:19:20.916+00	112	\N	1126982881	27.36	2759	0.9
2025-07-02 09:20:21.446+00	112	\N	1126982881	27.66	2761	0.9
2025-07-02 09:22:22.49+00	112	\N	1126982881	27.91	2764	0.9
2025-07-02 09:27:25.122+00	112	\N	1126982881	28.16	2776	0.9
2025-07-02 09:28:55.914+00	112	\N	1126982881	28.49	2784	0.9
2025-07-02 09:30:26.697+00	112	\N	1126982881	28.82	2791	0.9
2025-07-02 09:36:29.867+00	112	\N	1126982881	29.12	2795	0.9
2025-07-02 09:42:33.027+00	112	\N	1126982881	28.52	2814	0.9
2025-07-02 09:43:03.288+00	112	\N	1126982881	28.16	2816	0.9
2025-07-02 09:43:29.723+00	112	\N	1041420528	26.66	2821	0.9
2025-07-02 09:43:33.551+00	112	\N	1126982881	27.78	2822	0.9
2025-07-02 09:44:34.077+00	112	\N	1126982881	27.36	2823	0.9
2025-07-02 09:44:39.035+00	112	\N	978202981	26.04	2824	0.9
2025-07-02 09:45:34.591+00	112	\N	1126982881	27.09	2828	0.9
2025-07-02 09:46:35.129+00	112	\N	1126982881	26.83	2830	0.9
2025-07-02 09:49:06.445+00	112	\N	1126982881	26.57	2839	0.9
2025-07-02 09:55:39.852+00	112	\N	1126982881	27.21	2857	0.9
2025-07-02 10:01:12.753+00	112	\N	1126982881	28.82	2868	0.9
2025-07-02 10:05:14.861+00	112	\N	1126982881	28.56	2879	0.9
2025-07-02 10:11:18.012+00	112	\N	1126982881	28.98	2885	0.9
2025-07-02 10:11:48.281+00	112	\N	1126982881	29.45	2887	0.9
2025-07-02 10:12:18.54+00	112	\N	1126982881	29.73	2889	0.9
2025-07-02 10:12:48.8+00	112	\N	1126982881	29.48	2891	0.9
2025-07-02 10:13:49.325+00	112	\N	1126982881	29.08	2894	0.9
2025-07-02 10:14:15.766+00	112	\N	1041420528	26.82	2898	0.9
2025-07-02 10:14:49.853+00	112	\N	1126982881	28.83	2899	0.9
2025-07-02 10:15:25.091+00	112	\N	978202981	26.15	2903	0.9
2025-07-02 10:16:50.911+00	112	\N	1126982881	28.53	2905	0.9
2025-07-02 10:19:52.498+00	112	\N	1126982881	28.28	2909	0.9
2025-07-02 10:24:55.121+00	112	\N	1126982881	28	2911	0.9
2025-07-02 10:36:00.9+00	112	\N	1126982881	27.68	2925	0.9
2025-07-02 10:38:01.952+00	112	\N	1126982881	27.43	2926	0.9
2025-07-02 10:45:01.794+00	112	\N	1041420528	27.03	2934	0.9
2025-07-02 10:45:05.632+00	112	\N	1126982881	27.12	2935	0.9
2025-07-02 10:46:11.139+00	112	\N	978202981	26.3	2937	0.9
2025-07-02 10:51:08.788+00	112	\N	1126982881	26.86	2939	0.9
2025-07-02 11:40:34.568+00	112	\N	1126982881	27.09	2970	0.9
2025-07-02 11:41:04.826+00	112	\N	1126982881	27.57	2971	0.9
2025-07-02 11:43:05.88+00	112	\N	1126982881	27.87	2979	0.9
2025-07-02 11:45:06.922+00	112	\N	1126982881	28.24	2985	0.9
2025-07-02 11:46:33.878+00	112	\N	1041420528	27.4	2993	0.9
2025-07-02 11:47:43.255+00	112	\N	978202981	26.5	2998	0.9
2025-07-02 11:54:11.653+00	112	\N	1126982881	27.98	3002	0.9
2025-07-02 12:16:23.247+00	112	\N	1126982881	28.54	3020	0.9
2025-07-02 12:16:53.51+00	112	\N	1126982881	29.11	3022	0.9
2025-07-02 12:17:23.772+00	112	\N	1126982881	29.59	3023	0.9
2025-07-02 12:17:19.946+00	112	\N	1041420528	27.52	3024	0.9
2025-07-02 12:17:54.033+00	112	\N	1126982881	29.93	3025	0.9
2025-07-02 12:18:24.297+00	112	\N	1126982881	30.3	3026	0.9
2025-07-02 12:18:29.283+00	112	\N	978202981	26.65	3027	0.9
2025-07-02 12:19:55.088+00	112	\N	1126982881	29.85	3033	0.9
2025-07-02 12:21:25.872+00	112	\N	1126982881	29.52	3034	0.9
2025-07-02 12:22:56.658+00	112	\N	1126982881	29.26	3036	0.9
2025-07-02 12:24:57.719+00	112	\N	1126982881	29	3037	0.9
2025-07-02 12:28:29.549+00	112	\N	1126982881	28.74	3040	0.9
2025-07-02 12:32:31.658+00	112	\N	1126982881	28.49	3043	0.9
2025-07-02 12:42:36.938+00	112	\N	1126982881	28.24	3049	0.9
2025-07-02 12:43:03.361+00	112	\N	1041420528	27.77	3050	0.9
2025-07-02 12:49:15.354+00	112	\N	978202981	26.79	3055	0.9
2025-07-02 13:13:22.965+00	112	\N	1126982881	28.21	3067	0.9
2025-07-02 13:13:49.408+00	112	\N	1041420528	27.85	3068	0.9
2025-07-02 13:20:01.399+00	112	\N	978202981	26.87	3073	0.9
2025-07-02 13:22:57.968+00	112	\N	1126982881	28.56	3076	0.9
2025-07-02 13:23:58.524+00	112	\N	1126982881	28.84	3078	0.9
2025-07-02 13:41:07.457+00	112	\N	1126982881	28.59	3093	0.9
2025-07-02 13:44:35.481+00	112	\N	1041420528	28.04	3094	0.9
2025-07-02 13:50:47.447+00	112	\N	978202981	27.01	3099	0.9
2025-07-02 13:53:13.778+00	112	\N	1126982881	29.06	3103	0.9
2025-07-02 13:53:44.043+00	112	\N	1126982881	29.34	3105	0.9
2025-07-02 13:54:44.566+00	112	\N	1126982881	29.76	3110	0.9
2025-07-02 13:55:45.09+00	112	\N	1126982881	30.2	3115	0.9
2025-07-02 13:58:16.421+00	112	\N	1126982881	29.8	3117	0.9
2025-07-02 13:58:46.689+00	112	\N	1126982881	29.47	3118	0.9
2025-07-02 13:59:47.212+00	112	\N	1126982881	29.22	3120	0.9
2025-07-02 14:03:19.049+00	112	\N	1126982881	28.96	3130	0.9
2025-07-02 14:10:22.731+00	112	\N	1126982881	28.68	3138	0.9
2025-07-02 14:15:21.506+00	112	\N	1041420528	28.18	3142	0.9
2025-07-02 14:21:33.483+00	112	\N	978202981	27.18	3147	0.9
2025-07-02 14:41:08.788+00	112	\N	1126982881	28.61	3158	0.9
2025-07-02 14:46:07.558+00	112	\N	1041420528	28.27	3162	0.9
2025-07-02 14:52:19.548+00	112	\N	978202981	27.29	3165	0.9
2025-07-02 15:11:54.842+00	112	\N	1126982881	28.77	3176	0.9
2025-07-02 15:16:53.576+00	112	\N	1041420528	28.36	3180	0.9
2025-07-02 15:23:05.631+00	112	\N	978202981	27.39	3184	0.9
2025-07-02 15:35:06.927+00	112	\N	1126982881	29.1	3192	0.9
2025-07-02 15:36:07.456+00	112	\N	1126982881	29.62	3197	0.9
2025-07-02 15:37:07.989+00	112	\N	1126982881	29.98	3200	0.9
2025-07-02 15:40:09.581+00	112	\N	1126982881	30.45	3210	0.9
2025-07-02 15:45:42.476+00	112	\N	1126982881	30.15	3221	0.9
2025-07-02 15:47:39.653+00	112	\N	1041420528	28.49	3227	0.9
2025-07-02 15:48:44.052+00	112	\N	1126982881	29.85	3232	0.9
2025-07-02 15:53:46.682+00	112	\N	1126982881	29.59	3239	0.9
2025-07-02 15:53:51.664+00	112	\N	978202981	27.52	3240	0.9
2025-07-02 15:58:49.31+00	112	\N	1126982881	29.34	3248	0.9
2025-07-02 16:18:25.708+00	112	\N	1041420528	28.62	3273	0.9
2025-07-02 16:24:37.713+00	112	\N	978202981	27.61	3279	0.9
2025-07-02 16:29:35.342+00	112	\N	1126982881	29.49	3283	0.9
2025-07-02 16:49:11.745+00	112	\N	1041420528	28.73	3298	0.9
2025-07-02 16:55:23.769+00	112	\N	978202981	27.8	3302	0.9
2025-07-02 17:00:21.381+00	112	\N	1126982881	29.51	3310	0.9
2025-07-02 17:26:09.864+00	112	\N	978202981	27.87	3336	0.9
2025-07-02 17:31:07.419+00	112	\N	1126982881	29.47	3339	0.9
2025-07-02 17:50:43.811+00	112	\N	1041420528	28.84	3350	0.9
2025-07-02 17:56:55.93+00	112	\N	978202981	27.96	3355	0.9
2025-07-02 18:01:53.463+00	112	\N	1126982881	29.57	3357	0.9
2025-07-02 18:21:29.862+00	112	\N	1041420528	28.96	3368	0.9
2025-07-02 18:27:41.989+00	112	\N	978202981	28.08	3375	0.9
2025-07-02 18:32:39.509+00	112	\N	1126982881	29.76	3377	0.9
2025-07-02 18:52:15.904+00	112	\N	1041420528	29.02	3388	0.9
2025-07-02 18:58:28.023+00	112	\N	978202981	28.18	3393	0.9
2025-07-02 19:03:25.545+00	112	\N	1126982881	29.8	3395	0.9
2025-07-02 19:23:01.947+00	112	\N	1041420528	29.13	3406	0.9
2025-07-02 19:29:14.09+00	112	\N	978202981	28.3	3414	0.9
2025-07-02 19:34:11.593+00	112	\N	1126982881	29.82	3417	0.9
2025-07-02 19:53:47.976+00	112	\N	1041420528	29.1	3432	0.9
2025-07-02 20:00:00.171+00	112	\N	978202981	28.33	3438	0.9
2025-07-02 20:03:57.096+00	112	\N	1126982881	29.57	3440	0.9
2025-07-02 20:24:07.623+00	112	\N	1126982881	29.32	3453	0.9
2025-07-02 20:24:34.028+00	112	\N	1041420528	29.12	3454	0.9
2025-07-02 20:30:46.238+00	112	\N	978202981	28.33	3459	0.9
2025-07-02 21:24:08.91+00	112	\N	1126982881	28.36	3492	0.9
2025-07-02 21:26:06.112+00	112	\N	1041420528	29	3495	0.9
2025-07-02 21:29:41.821+00	112	\N	1126982881	28.11	3498	0.9
2025-07-02 21:32:18.335+00	112	\N	978202981	28.22	3500	0.9
2025-07-02 21:33:43.917+00	112	\N	1126982881	27.81	3501	0.9
2025-07-02 21:39:47.079+00	112	\N	1126982881	27.55	3506	0.9
2025-07-02 21:56:52.191+00	112	\N	1041420528	28.87	3518	0.9
2025-07-02 22:03:04.393+00	112	\N	978202981	28.16	3521	0.9
2025-07-02 22:10:02.842+00	112	\N	1126982881	27.3	3525	0.9
2025-07-02 22:15:05.461+00	112	\N	1126982881	27.04	3530	0.9
2025-07-02 22:27:38.227+00	112	\N	1041420528	28.86	3539	0.9
2025-07-02 22:29:12.823+00	112	\N	1126982881	27.29	3541	0.9
2025-07-02 22:33:50.458+00	112	\N	978202981	28.06	3544	0.9
2025-07-02 22:58:24.28+00	112	\N	1041420528	28.78	3563	0.9
2025-07-02 22:59:58.893+00	112	\N	1126982881	27.29	3565	0.9
2025-07-02 23:04:36.51+00	112	\N	978202981	27.94	3567	0.9
2025-07-02 23:29:10.297+00	112	\N	1041420528	28.69	3585	0.9
2025-07-02 23:30:44.929+00	112	\N	1126982881	27.28	3587	0.9
2025-07-02 23:35:22.546+00	112	\N	978202981	27.89	3592	0.9
2025-07-02 23:59:56.359+00	112	\N	1041420528	28.54	3604	0.9
\.


--
-- Data for Name: _hyper_1_9_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_9_chunk ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
2025-07-03 00:01:31.017+00	112	\N	1126982881	27.35	3606	0.9
2025-07-03 00:06:08.613+00	112	\N	978202981	27.88	3610	0.9
2025-07-03 07:01:40.085+00	112	\N	1126982881	25.87	3912	0.9
2025-07-03 07:06:38.978+00	112	\N	1041420528	26.08	3915	0.9
2025-07-03 07:30:55.353+00	112	\N	1126982881	25.53	3935	0.9
2025-07-03 07:31:55.884+00	112	\N	1126982881	25.28	3936	0.9
2025-07-03 07:33:26.671+00	112	\N	1126982881	24.95	3937	0.9
2025-07-03 07:35:57.988+00	112	\N	1126982881	24.63	3941	0.9
2025-07-03 07:37:25.009+00	112	\N	1041420528	26.28	3943	0.9
2025-07-03 07:39:29.828+00	112	\N	1126982881	24.36	3944	0.9
2025-07-03 07:49:35.075+00	112	\N	1126982881	24.11	3952	0.9
2025-07-03 07:51:41.477+00	112	\N	978202981	26.17	3955	0.9
2025-07-03 08:08:11.11+00	112	\N	1041420528	26.47	3967	0.9
2025-07-03 08:20:21.131+00	112	\N	1126982881	24.02	3974	0.9
2025-07-03 08:22:27.537+00	112	\N	978202981	26.32	3975	0.9
2025-07-03 08:38:57.156+00	112	\N	1041420528	26.67	3986	0.9
2025-07-03 08:51:07.155+00	112	\N	1126982881	24.13	3993	0.9
2025-07-03 08:53:13.59+00	112	\N	978202981	26.47	3994	0.9
2025-07-03 09:03:13.463+00	112	\N	1126982881	24.42	4003	0.9
2025-07-03 09:09:43.196+00	112	\N	1041420528	26.81	4007	0.9
2025-07-03 09:13:18.72+00	112	\N	1126982881	24.67	4008	0.9
2025-07-03 09:23:59.623+00	112	\N	978202981	26.61	4013	0.9
2025-07-03 09:25:25.04+00	112	\N	1126982881	24.92	4016	0.9
2025-07-03 09:33:29.239+00	112	\N	1126982881	25.17	4022	0.9
2025-07-03 09:40:29.263+00	112	\N	1041420528	27	4028	0.9
2025-07-03 09:41:33.441+00	112	\N	1126982881	25.44	4029	0.9
2025-07-03 09:51:08.432+00	112	\N	1126982881	25.69	4034	0.9
2025-07-03 09:54:45.689+00	112	\N	978202981	26.75	4035	0.9
2025-07-03 10:11:15.289+00	112	\N	1041420528	27.18	4048	0.9
2025-07-03 10:21:54.471+00	112	\N	1126982881	25.84	4053	0.9
2025-07-03 10:25:31.739+00	112	\N	978202981	26.82	4056	0.9
2025-07-03 10:42:01.318+00	112	\N	1041420528	27.3	4068	0.9
2025-07-03 10:44:36.312+00	112	\N	1126982881	26.11	4069	0.9
2025-07-03 10:56:17.79+00	112	\N	978202981	26.93	4076	0.9
2025-07-03 11:01:14.987+00	112	\N	1126982881	26.37	4082	0.9
2025-07-03 11:12:47.367+00	112	\N	1041420528	27.45	4088	0.9
2025-07-03 11:18:54.185+00	112	\N	1126982881	26.62	4091	0.9
2025-07-03 11:27:03.839+00	112	\N	978202981	27.08	4096	0.9
2025-07-03 11:34:32.323+00	112	\N	1126982881	26.89	4102	0.9
2025-07-03 11:43:33.4+00	112	\N	1041420528	27.61	4108	0.9
2025-07-03 11:44:37.586+00	112	\N	1126982881	27.22	4109	0.9
2025-07-03 11:57:49.891+00	112	\N	978202981	27.19	4117	0.9
2025-07-03 11:57:49.885+00	112	\N	978202981	27.19	4118	0.9
2025-07-03 12:09:50.735+00	112	\N	1126982881	27.48	4127	0.9
2025-07-03 12:14:19.453+00	112	\N	1041420528	27.76	4128	0.9
2025-07-03 12:16:24.146+00	112	\N	1126982881	27.73	4131	0.9
2025-07-03 12:28:35.95+00	112	\N	978202981	27.32	4137	0.9
2025-07-03 12:42:07.57+00	112	\N	1126982881	27.98	4147	0.9
2025-07-03 12:45:05.482+00	112	\N	1041420528	27.89	4148	0.9
2025-07-03 14:48:09.651+00	112	\N	1041420528	28.31	4226	0.9
2025-07-03 15:02:26.17+00	112	\N	978202981	27.72	4233	0.9
2025-07-03 15:07:23.286+00	112	\N	1126982881	28.87	4239	0.9
2025-07-03 15:18:55.693+00	112	\N	1041420528	28.39	4244	0.9
2025-07-03 15:33:12.222+00	112	\N	978202981	27.83	4251	0.9
2025-07-03 15:38:09.323+00	112	\N	1126982881	28.77	4257	0.9
2025-07-03 15:49:41.741+00	112	\N	1041420528	28.49	4264	0.9
2025-07-03 15:55:18.272+00	112	\N	1126982881	28.51	4279	0.9
2025-07-03 15:56:15.163+00	112	\N	1041420528	28.23	4281	0.9
2025-07-03 15:59:47.008+00	112	\N	1041420528	27.98	4282	0.9
2025-07-03 16:03:22.478+00	112	\N	1126982881	28.22	4284	0.9
2025-07-03 16:03:58.281+00	112	\N	978202981	27.88	4287	0.9
2025-07-03 16:08:21.484+00	112	\N	1041420528	27.73	4290	0.9
2025-07-03 16:18:00.097+00	112	\N	1126982881	27.96	4298	0.9
2025-07-03 16:29:02.26+00	112	\N	1041420528	27.48	4303	0.9
2025-07-03 16:34:38.808+00	112	\N	1126982881	27.71	4307	0.9
2025-07-03 16:34:44.327+00	112	\N	978202981	27.83	4308	0.9
2025-07-03 16:57:20.64+00	112	\N	1126982881	27.43	4321	0.9
2025-07-03 16:59:48.303+00	112	\N	1041420528	27.46	4322	0.9
2025-07-03 17:05:30.364+00	112	\N	978202981	27.85	4326	0.9
2025-07-03 17:28:06.673+00	112	\N	1126982881	27.52	4339	0.9
2025-07-03 17:30:34.378+00	112	\N	1041420528	27.54	4340	0.9
2025-07-03 17:36:16.404+00	112	\N	978202981	27.84	4344	0.9
2025-07-03 17:58:52.717+00	112	\N	1126982881	27.3	4358	0.9
2025-07-03 18:01:20.428+00	112	\N	1041420528	27.54	4359	0.9
2025-07-03 18:07:02.446+00	112	\N	978202981	27.85	4363	0.9
2025-07-03 18:11:59.554+00	112	\N	1126982881	27.04	4368	0.9
2025-07-03 18:26:37.183+00	112	\N	1126982881	27.34	4378	0.9
2025-07-03 18:27:07.451+00	112	\N	1126982881	27.84	4380	0.9
2025-07-03 18:27:37.71+00	112	\N	1126982881	28.23	4382	0.9
2025-07-03 18:29:08.499+00	112	\N	1126982881	28.48	4388	0.9
2025-07-03 18:32:06.47+00	112	\N	1041420528	27.33	4394	0.9
2025-07-03 18:35:11.647+00	112	\N	1126982881	28.79	4403	0.9
2025-07-03 18:37:48.493+00	112	\N	978202981	27.75	4405	0.9
2025-07-03 18:42:45.593+00	112	\N	1126982881	28.53	4412	0.9
2025-07-03 19:02:25.861+00	112	\N	1126982881	28.28	4425	0.9
2025-07-03 19:02:52.518+00	112	\N	1041420528	27.15	4427	0.9
2025-07-03 19:08:34.535+00	112	\N	978202981	27.51	4434	0.9
2025-07-03 19:33:11.902+00	112	\N	1126982881	28.19	4454	0.9
2025-07-03 19:33:38.556+00	112	\N	1041420528	27.07	4455	0.9
2025-07-03 19:38:44.795+00	112	\N	1126982881	27.94	4462	0.9
2025-07-03 19:39:20.561+00	112	\N	978202981	27.34	4463	0.9
2025-07-03 19:49:50.568+00	112	\N	1126982881	27.66	4473	0.9
2025-07-03 20:03:54.325+00	112	\N	1041420528	26.81	4480	0.9
2025-07-03 20:04:28.186+00	112	\N	1126982881	27.41	4481	0.9
2025-07-03 20:10:06.599+00	112	\N	978202981	27.22	4483	0.9
2025-07-03 20:11:58.544+00	112	\N	1041420528	26.55	4484	0.9
2025-07-03 20:24:38.698+00	112	\N	1126982881	27.14	4495	0.9
2025-07-03 20:32:09.05+00	112	\N	1041420528	26.29	4498	0.9
2025-07-03 20:35:50.002+00	112	\N	978202981	26.96	4507	0.9
2025-07-03 20:38:15.786+00	112	\N	1126982881	27.7	4509	0.9
2025-07-03 20:46:20.003+00	112	\N	1126982881	27.45	4525	0.9
2025-07-03 20:53:23.676+00	112	\N	1126982881	27.2	4529	0.9
2025-07-03 21:02:55.093+00	112	\N	1041420528	26.49	4534	0.9
2025-07-03 21:06:36.043+00	112	\N	978202981	26.87	4540	0.9
2025-07-03 21:11:02.875+00	112	\N	1126982881	27.5	4550	0.9
2025-07-03 21:29:12.354+00	112	\N	1126982881	27.25	4574	0.9
2025-07-03 21:33:41.141+00	112	\N	1041420528	26.47	4580	0.9
2025-07-03 21:37:22.103+00	112	\N	978202981	26.76	4587	0.9
2025-07-03 21:59:58.393+00	112	\N	1126982881	27.02	4611	0.9
2025-07-03 22:04:27.176+00	112	\N	1041420528	26.37	4615	0.9
2025-07-03 22:05:01.028+00	112	\N	1126982881	26.76	4616	0.9
2025-07-03 22:08:08.151+00	112	\N	978202981	26.6	4618	0.9
2025-07-03 22:18:07.855+00	112	\N	1126982881	27.03	4630	0.9
2025-07-03 22:21:09.432+00	112	\N	1126982881	27.56	4632	0.9
2025-07-03 22:22:09.961+00	112	\N	1126982881	27.84	4637	0.9
2025-07-03 22:24:11.006+00	112	\N	1126982881	27.59	4647	0.9
2025-07-03 22:25:41.796+00	112	\N	1126982881	27.31	4648	0.9
2025-07-03 22:33:15.737+00	112	\N	1126982881	27.63	4659	0.9
2025-07-03 22:35:13.236+00	112	\N	1041420528	26.3	4669	0.9
2025-07-03 22:38:48.626+00	112	\N	1126982881	27.38	4674	0.9
2025-07-03 22:38:54.185+00	112	\N	978202981	26.46	4675	0.9
2025-07-03 22:42:20.471+00	112	\N	1126982881	27.11	4678	0.9
2025-07-03 23:05:59.261+00	112	\N	1041420528	26.49	4705	0.9
2025-07-03 23:09:40.213+00	112	\N	978202981	26.57	4707	0.9
2025-07-03 23:13:06.519+00	112	\N	1126982881	27.31	4713	0.9
2025-07-03 23:18:09.15+00	112	\N	1126982881	27.66	4722	0.9
2025-07-03 23:20:40.462+00	112	\N	1126982881	28.36	4730	0.9
2025-07-03 23:21:10.724+00	112	\N	1126982881	28.77	4732	0.9
2025-07-03 23:24:12.299+00	112	\N	1126982881	29.03	4744	0.9
2025-07-03 23:26:13.35+00	112	\N	1126982881	28.78	4752	0.9
2025-07-03 23:28:14.405+00	112	\N	1126982881	28.5	4754	0.9
2025-07-03 23:31:46.241+00	112	\N	1126982881	28.79	4758	0.9
2025-07-03 23:32:46.764+00	112	\N	1126982881	29.28	4760	0.9
2025-07-03 23:34:17.555+00	112	\N	1126982881	29.56	4763	0.9
2025-07-03 23:36:18.607+00	112	\N	1126982881	29.22	4769	0.9
2025-07-03 23:36:45.317+00	112	\N	1041420528	26.49	4770	0.9
2025-07-03 23:37:49.391+00	112	\N	1126982881	28.92	4771	0.9
2025-07-03 23:40:26.259+00	112	\N	978202981	26.61	4779	0.9
2025-07-03 23:44:22.805+00	112	\N	1126982881	28.63	4788	0.9
2025-07-03 23:47:24.384+00	112	\N	1126982881	28.91	4792	0.9
2025-07-03 23:48:55.179+00	112	\N	1126982881	29.25	4793	0.9
2025-07-03 23:51:56.752+00	112	\N	1126982881	29	4804	0.9
2025-07-03 23:54:58.327+00	112	\N	1126982881	28.73	4812	0.9
2025-07-03 23:56:29.123+00	112	\N	1126982881	28.48	4815	0.9
2025-07-03 23:59:30.706+00	112	\N	1126982881	28.22	4816	0.9
2025-07-04 00:03:02.55+00	112	\N	1126982881	27.97	4817	0.9
2025-07-04 00:07:31.366+00	112	\N	1041420528	26.5	4821	0.9
2025-07-04 00:09:05.7+00	112	\N	1126982881	27.69	4822	0.9
2025-07-04 00:11:12.288+00	112	\N	978202981	26.64	4823	0.9
2025-07-04 00:19:10.971+00	112	\N	1126982881	27.43	4828	0.9
2025-07-04 05:27:57.521+00	112	\N	978202981	24.59	5040	0.9
2025-07-04 05:28:27.786+00	112	\N	978202981	24.34	5044	0.9
2025-07-04 05:29:22.668+00	112	\N	1126982881	23.86	5045	0.9
2025-07-04 05:29:28.317+00	112	\N	978202981	23.88	5046	0.9
2025-07-04 05:30:28.831+00	112	\N	978202981	23.51	5047	0.9
2025-07-04 05:31:29.361+00	112	\N	978202981	23.22	5048	0.9
2025-07-04 05:32:29.889+00	112	\N	978202981	22.91	5049	0.9
2025-07-04 05:34:00.682+00	112	\N	978202981	22.62	5053	0.9
2025-07-04 09:52:09.632+00	112	\N	1126982881	23.56	5230	0.9
2025-07-04 09:52:15.352+00	112	\N	978202981	23.15	5231	0.9
2025-07-04 09:55:38.035+00	112	\N	1041420528	24.59	5241	0.9
2025-07-04 09:58:12.792+00	112	\N	1126982881	23.91	5244	0.9
2025-07-04 10:00:49.81+00	112	\N	978202981	23.4	5253	0.9
2025-07-04 10:01:44.616+00	112	\N	1126982881	24.2	5255	0.9
2025-07-04 10:07:17.512+00	112	\N	1126982881	24.48	5265	0.9
2025-07-04 10:08:48.306+00	112	\N	1126982881	24.76	5268	0.9
2025-07-04 10:09:18.565+00	112	\N	1126982881	25.1	5269	0.9
2025-07-04 10:09:48.833+00	112	\N	1126982881	25.5	5271	0.9
2025-07-04 10:10:19.087+00	112	\N	1126982881	25.75	5272	0.9
2025-07-04 10:10:49.349+00	112	\N	1126982881	26.07	5273	0.9
2025-07-04 10:11:19.615+00	112	\N	1126982881	26.33	5274	0.9
2025-07-04 10:14:57.174+00	112	\N	978202981	23.65	5285	0.9
2025-07-04 10:15:51.978+00	112	\N	1126982881	26.03	5286	0.9
2025-07-04 10:17:53.028+00	112	\N	1126982881	25.75	5288	0.9
2025-07-04 10:20:24.337+00	112	\N	1126982881	25.48	5289	0.9
2025-07-04 10:24:26.453+00	112	\N	1126982881	25.21	5295	0.9
2025-07-04 10:26:24.057+00	112	\N	1041420528	24.55	5297	0.9
2025-07-04 11:01:45.934+00	112	\N	1126982881	25.12	5328	0.9
2025-07-04 11:07:54.819+00	112	\N	978202981	24.74	5339	0.9
2025-07-04 11:07:49.081+00	112	\N	1126982881	26.29	5340	0.9
2025-07-04 11:08:19.346+00	112	\N	1126982881	26.69	5342	0.9
2025-07-04 11:10:20.406+00	112	\N	1126982881	26.44	5349	0.9
2025-07-04 11:11:51.184+00	112	\N	1126982881	26.71	5354	0.9
2025-07-04 11:12:21.447+00	112	\N	1126982881	27.26	5357	0.9
2025-07-04 11:14:22.515+00	112	\N	1126982881	26.99	5369	0.9
2025-07-04 11:15:23.038+00	112	\N	1126982881	26.71	5371	0.9
2025-07-04 11:16:53.829+00	112	\N	1126982881	26.36	5375	0.9
2025-07-04 11:19:55.408+00	112	\N	1126982881	26.08	5381	0.9
2025-07-04 11:21:31.908+00	112	\N	978202981	24.99	5383	0.9
2025-07-04 11:23:57.511+00	112	\N	1126982881	25.8	5389	0.9
2025-07-04 11:27:56.14+00	112	\N	1041420528	24.74	5391	0.9
2025-07-04 11:30:00.658+00	112	\N	1126982881	25.55	5392	0.9
2025-07-04 11:30:06.376+00	112	\N	978202981	25.24	5393	0.9
2025-07-04 11:40:41.902+00	112	\N	978202981	25.52	5401	0.9
2025-07-04 11:55:49.791+00	112	\N	978202981	25.77	5411	0.9
2025-07-04 11:58:42.181+00	112	\N	1041420528	24.85	5412	0.9
2025-07-04 12:00:46.711+00	112	\N	1126982881	25.54	5414	0.9
2025-07-04 12:07:25.837+00	112	\N	978202981	26.02	5419	0.9
2025-07-04 13:25:00.628+00	112	\N	1126982881	26.29	5481	0.9
2025-07-04 13:25:57.67+00	112	\N	1041420528	25.53	5483	0.9
2025-07-04 13:28:38.21+00	112	\N	978202981	27.81	5492	0.9
2025-07-04 13:43:46.113+00	112	\N	978202981	28.06	5520	0.9
2025-07-04 13:48:48.735+00	112	\N	978202981	28.34	5523	0.9
2025-07-04 13:51:14.291+00	112	\N	1126982881	27.8	5526	0.9
2025-07-04 13:52:14.814+00	112	\N	1126982881	28.15	5529	0.9
2025-07-04 13:53:15.343+00	112	\N	1126982881	28.44	5532	0.9
2025-07-04 13:58:17.974+00	112	\N	1126982881	29.04	5543	0.9
2025-07-04 14:00:19.028+00	112	\N	1126982881	28.76	5550	0.9
2025-07-04 14:01:49.807+00	112	\N	1126982881	28.49	5556	0.9
2025-07-04 14:03:56.625+00	112	\N	978202981	28.59	5562	0.9
2025-07-04 14:04:51.382+00	112	\N	1126982881	28.24	5563	0.9
2025-07-04 14:09:23.753+00	112	\N	1126982881	27.97	5574	0.9
2025-07-04 14:09:50.572+00	112	\N	1041420528	25.9	5576	0.9
2025-07-04 14:19:29.006+00	112	\N	1126982881	27.71	5584	0.9
2025-07-04 14:22:06.103+00	112	\N	978202981	28.85	5585	0.9
2025-07-04 14:40:36.632+00	112	\N	1041420528	26.07	5600	0.9
2025-07-04 14:42:46.889+00	112	\N	978202981	29.1	5606	0.9
2025-07-04 14:49:44.768+00	112	\N	1126982881	28.02	5614	0.9
2025-07-04 14:51:15.55+00	112	\N	1126982881	28.34	5622	0.9
2025-07-04 14:52:16.08+00	112	\N	1126982881	28.67	5625	0.9
2025-07-04 15:19:30.292+00	112	\N	1126982881	28.6	5663	0.9
2025-07-04 15:26:00.31+00	112	\N	1041420528	26.51	5694	0.9
2025-07-04 15:27:00.826+00	112	\N	1041420528	26.81	5699	0.9
2025-07-04 15:28:01.351+00	112	\N	1041420528	27.06	5701	0.9
2025-07-04 15:28:04.762+00	112	\N	1126982881	28.34	5702	0.9
2025-07-04 15:30:02.422+00	112	\N	1041420528	27.34	5705	0.9
2025-07-04 15:33:03.992+00	112	\N	1041420528	27.59	5711	0.9
2025-07-04 15:38:36.885+00	112	\N	1041420528	27.85	5717	0.9
2025-07-04 18:24:42.602+00	112	telegraf	978202981	27.24	6110	1
2025-07-04 19:39:46.023+00	112	telegraf	1126982881	28.71	6205	1
2025-07-04 19:44:14.992+00	112	telegraf	1041420528	28.46	6218	1
2025-07-04 19:44:24.191+00	112	telegraf	978202981	26.02	6219	1
2025-07-04 19:48:50.746+00	112	telegraf	1126982881	28.46	6222	1
2025-07-04 20:09:37.35+00	112	telegraf	978202981	25.51	6247	1
2025-07-04 20:15:01.04+00	112	telegraf	1041420528	28.52	6256	1
2025-07-04 20:19:36.824+00	112	telegraf	1126982881	28.33	6264	1
2025-07-04 20:20:43.131+00	112	telegraf	978202981	25.85	6275	1
2025-07-04 20:21:43.657+00	112	telegraf	978202981	26.11	6279	1
2025-07-04 20:22:38.397+00	112	telegraf	1126982881	28.06	6282	1
2025-07-04 20:23:44.705+00	112	telegraf	978202981	26.46	6287	1
2025-07-04 20:26:46.299+00	112	telegraf	978202981	26.77	6304	1
2025-07-04 20:32:40.235+00	112	telegraf	1041420528	28.02	6311	1
2025-07-04 20:40:47.856+00	112	telegraf	1126982881	27.56	6331	1
2025-07-04 20:44:46.553+00	112	telegraf	1041420528	27.77	6344	1
2025-07-04 20:49:58.386+00	112	telegraf	978202981	26.51	6352	1
2025-07-04 20:50:49.697+00	112	telegraf	1041420528	27.47	6354	1
2025-07-04 20:51:29.184+00	112	telegraf	978202981	26.12	6357	1
2025-07-04 20:52:23.901+00	112	telegraf	1126982881	26.96	6358	1
2025-07-04 20:52:59.975+00	112	telegraf	978202981	25.83	6359	1
2025-07-04 21:00:24.696+00	112	telegraf	1041420528	27.2	6371	1
2025-07-04 21:05:36.541+00	112	telegraf	978202981	26.08	6376	1
2025-07-04 21:12:00.744+00	112	telegraf	1041420528	26.92	6384	1
2025-07-04 21:14:05.206+00	112	telegraf	1126982881	26.7	6388	1
2025-07-04 21:26:41.77+00	112	telegraf	1126982881	26.44	6405	1
2025-07-04 21:27:08.655+00	112	telegraf	1041420528	26.66	6406	1
2025-07-04 21:28:48.633+00	112	telegraf	978202981	25.82	6407	1
2025-07-04 21:37:53.373+00	112	telegraf	978202981	25.55	6414	1
2025-07-04 21:38:17.821+00	112	telegraf	1126982881	26.18	6415	1
2025-07-04 21:38:44.721+00	112	telegraf	1041420528	26.4	6416	1
2025-07-04 21:41:25.231+00	112	telegraf	978202981	25.3	6423	1
2025-07-04 21:45:51.776+00	112	telegraf	1126982881	25.93	6429	1
2025-07-04 21:46:27.852+00	112	telegraf	978202981	25.04	6430	1
2025-07-04 21:54:22.866+00	112	telegraf	1041420528	25.9	6440	1
2025-07-04 22:09:34.138+00	112	telegraf	1126982881	25.66	6459	1
2025-07-04 22:17:13.91+00	112	telegraf	978202981	24.97	6467	1
2025-07-04 22:24:17.587+00	112	telegraf	978202981	24.71	6474	1
2025-07-04 22:30:41.783+00	112	telegraf	1041420528	25.37	6477	1
2025-07-04 22:33:52.586+00	112	telegraf	978202981	24.46	6481	1
2025-07-04 22:36:18.094+00	112	telegraf	1126982881	25.12	6487	1
2025-07-04 22:36:54.161+00	112	telegraf	978202981	24.21	6489	1
2025-07-04 22:38:24.942+00	112	telegraf	978202981	23.96	6491	1
2025-07-04 22:42:48.087+00	112	telegraf	1041420528	25.08	6493	1
2025-07-04 22:51:31.79+00	112	telegraf	978202981	24.24	6503	1
2025-07-04 23:01:00.961+00	112	telegraf	1126982881	24.82	6517	1
2025-07-04 23:04:38.632+00	112	telegraf	978202981	23.91	6526	1
2025-07-04 23:05:03.075+00	112	telegraf	1126982881	24.57	6527	1
2025-07-04 23:07:09.953+00	112	telegraf	978202981	23.66	6531	1
2025-07-04 23:09:11.004+00	112	telegraf	978202981	23.38	6543	1
2025-07-04 23:11:02.825+00	112	telegraf	1041420528	24.56	6545	1
2025-07-04 23:14:38.066+00	112	telegraf	1126982881	24.31	6547	1
2025-07-05 07:34:04.413+00	112	telegraf	978202981	23.83	6913	1
2025-07-05 07:37:26.828+00	112	telegraf	1041420528	24.11	6918	1
2025-07-05 07:42:02.614+00	112	telegraf	1126982881	24.06	6921	1
2025-07-05 07:45:40.466+00	112	telegraf	978202981	24.09	6923	1
2025-07-05 07:54:35.784+00	112	telegraf	1041420528	24.36	6929	1
2025-07-05 08:56:07.852+00	112	telegraf	1041420528	24.69	6969	1
2025-07-05 09:13:47.072+00	112	telegraf	1041420528	24.94	6980	1
2025-07-05 09:25:23.109+00	112	telegraf	1041420528	25.2	6989	1
2025-07-05 09:29:04.409+00	112	telegraf	978202981	25.21	6993	1
2025-07-05 09:35:01.509+00	112	telegraf	1126982881	25.36	6995	1
2025-07-05 09:49:14.947+00	112	telegraf	978202981	25.46	7007	1
2025-07-05 09:54:11.503+00	112	telegraf	1126982881	25.64	7009	1
2025-07-05 10:17:20.185+00	112	telegraf	1041420528	25.61	7026	1
2025-07-05 10:20:01.006+00	112	telegraf	978202981	25.68	7029	1
2025-07-05 10:41:32.799+00	112	telegraf	1041420528	25.87	7038	1
2025-07-05 12:29:32.512+00	112	telegraf	1126982881	25.46	7111	1
2025-07-05 12:31:39.67+00	112	telegraf	978202981	25.45	7112	1
2025-07-05 12:40:08.022+00	112	telegraf	1126982881	25.72	7117	1
2025-07-05 12:46:17.296+00	112	telegraf	978202981	25.71	7124	1
2025-07-05 12:47:08.276+00	112	telegraf	1041420528	25.78	7125	1
2025-07-05 13:00:18.55+00	112	telegraf	1126982881	25.97	7132	1
2025-07-05 13:06:58.073+00	112	telegraf	978202981	25.98	7136	1
2025-07-05 13:18:58.27+00	112	telegraf	1126982881	26.22	7145	1
2025-07-05 13:29:09.653+00	112	telegraf	978202981	26.26	7151	1
2025-07-05 13:34:02.748+00	112	telegraf	1041420528	26.28	7152	1
2025-07-05 13:46:12.475+00	112	telegraf	1126982881	26.48	7162	1
2025-07-05 13:59:55.7+00	112	telegraf	978202981	26.44	7170	1
2025-07-05 14:16:58.516+00	112	telegraf	1126982881	26.62	7180	1
2025-07-05 14:30:41.74+00	112	telegraf	978202981	26.66	7189	1
2025-07-05 14:35:34.819+00	112	telegraf	1041420528	26.7	7190	1
2025-07-05 14:47:44.548+00	112	telegraf	1126982881	26.81	7199	1
2025-07-05 15:01:27.799+00	112	telegraf	978202981	26.83	7208	1
2025-07-05 15:18:30.598+00	112	telegraf	1126982881	26.9	7219	1
2025-07-05 15:32:13.878+00	112	telegraf	978202981	26.94	7228	1
2025-07-05 15:37:06.924+00	112	telegraf	1041420528	27.01	7232	1
2025-07-05 16:02:59.943+00	112	telegraf	978202981	26.93	7246	1
2025-07-05 16:07:52.974+00	112	telegraf	1041420528	26.97	7250	1
2025-07-05 16:50:48.699+00	112	telegraf	1126982881	26.72	7275	1
2025-07-05 17:03:31.517+00	112	telegraf	978202981	26.76	7285	1
2025-07-05 18:03:23.216+00	112	telegraf	1041420528	26.93	7324	1
2025-07-05 18:05:03.594+00	112	telegraf	978202981	26.9	7325	1
2025-07-05 19:23:38.368+00	112	telegraf	1126982881	25.76	7401	1
2025-07-05 19:25:45.679+00	112	telegraf	978202981	25.6	7405	1
2025-07-05 19:26:39.94+00	112	telegraf	1126982881	25.46	7408	1
2025-07-05 19:27:37.12+00	112	telegraf	1041420528	25.37	7409	1
2025-07-05 19:29:41.527+00	112	telegraf	1126982881	25.2	7412	1
2025-07-05 19:30:18.045+00	112	telegraf	978202981	25.07	7413	1
2025-07-05 19:30:38.696+00	112	telegraf	1041420528	25.11	7414	1
2025-07-05 19:32:43.101+00	112	telegraf	1126982881	24.93	7415	1
2025-07-05 19:33:10.014+00	112	telegraf	1041420528	24.84	7416	1
2025-07-05 19:42:45.006+00	112	telegraf	1041420528	24.59	7425	1
2025-07-05 19:42:48.369+00	112	telegraf	1126982881	24.67	7426	1
2025-07-05 19:43:24.882+00	112	telegraf	978202981	24.48	7427	1
2025-07-05 19:44:49.419+00	112	telegraf	1126982881	24.41	7428	1
2025-07-05 19:45:16.321+00	112	telegraf	1041420528	24.3	7429	1
2025-07-05 19:47:26.991+00	112	telegraf	978202981	24.22	7434	1
2025-07-05 19:59:53.935+00	112	telegraf	1041420528	24.03	7443	1
2025-07-05 20:00:27.573+00	112	telegraf	1126982881	24.08	7444	1
2025-07-05 20:02:04.615+00	112	telegraf	978202981	23.87	7445	1
2025-07-05 20:02:55.527+00	112	telegraf	1041420528	23.74	7446	1
2025-07-05 20:02:58.89+00	112	telegraf	1126982881	23.79	7447	1
2025-07-05 20:04:05.664+00	112	telegraf	978202981	23.6	7449	1
2025-07-05 20:04:26.318+00	112	telegraf	1041420528	23.49	7450	1
2025-07-05 20:06:06.719+00	112	telegraf	978202981	23.29	7455	1
2025-07-05 20:06:57.632+00	112	telegraf	1041420528	23.24	7458	1
2025-07-05 20:09:02.053+00	112	telegraf	1126982881	23.26	7460	1
2025-07-05 20:22:45.386+00	112	telegraf	978202981	23.03	7465	1
2025-07-05 20:23:06.041+00	112	telegraf	1041420528	22.97	7466	1
2025-07-05 20:24:40.183+00	112	telegraf	1126982881	22.98	7468	1
2025-07-05 20:47:58.534+00	112	telegraf	978202981	22.78	7483	1
2025-07-05 20:49:19.719+00	112	telegraf	1041420528	22.68	7485	1
2025-07-05 20:49:53.332+00	112	telegraf	1126982881	22.73	7486	1
2025-07-05 20:55:22.875+00	112	telegraf	1041420528	22.43	7490	1
2025-07-05 20:58:27.797+00	112	telegraf	1126982881	22.48	7495	1
2025-07-05 21:10:00.518+00	112	telegraf	1041420528	22.69	7502	1
2025-07-05 21:10:34.117+00	112	telegraf	1126982881	22.77	7503	1
2025-07-05 21:16:33.93+00	112	telegraf	1041420528	22.43	7506	1
2025-07-05 21:16:37.277+00	112	telegraf	1126982881	22.48	7507	1
2025-07-05 21:21:15.887+00	112	telegraf	978202981	22.27	7509	1
2025-07-05 21:22:06.812+00	112	telegraf	1041420528	22.16	7510	1
2025-07-05 21:23:10.698+00	112	telegraf	1126982881	22.17	7511	1
2025-07-05 21:24:17.474+00	112	telegraf	978202981	22.02	7513	1
2025-07-05 21:25:08.397+00	112	telegraf	1041420528	21.91	7514	1
2025-07-05 21:28:13.316+00	112	telegraf	1126982881	21.92	7519	1
2025-07-05 21:34:16.465+00	112	telegraf	1126982881	22.18	7527	1
2025-07-05 21:35:13.651+00	112	telegraf	1041420528	22.2	7528	1
2025-07-05 21:36:23.786+00	112	telegraf	978202981	22.29	7532	1
2025-07-05 21:39:49.372+00	112	telegraf	1126982881	22.44	7535	1
2025-07-05 21:40:46.544+00	112	telegraf	1041420528	22.46	7536	1
2025-07-05 21:42:57.204+00	112	telegraf	978202981	22.54	7538	1
2025-07-05 21:45:22.255+00	112	telegraf	1126982881	22.7	7539	1
2025-07-05 21:49:00.362+00	112	telegraf	978202981	22.81	7544	1
2025-07-05 21:53:56.73+00	112	telegraf	1126982881	22.95	7545	1
2025-07-05 21:54:23.639+00	112	telegraf	1041420528	22.97	7546	1
2025-07-05 21:57:34.829+00	112	telegraf	978202981	23.09	7549	1
2025-07-05 21:59:59.881+00	112	telegraf	1126982881	23.2	7553	1
2025-07-05 22:01:27.323+00	112	telegraf	1041420528	23.23	7554	1
2025-07-05 22:07:40.089+00	112	telegraf	978202981	23.35	7560	1
2025-07-05 22:10:05.15+00	112	telegraf	1126982881	23.5	7562	1
2025-07-05 22:11:02.31+00	112	telegraf	1041420528	23.5	7563	1
2025-07-05 22:16:44.825+00	112	telegraf	978202981	23.6	7567	1
2025-07-05 22:22:11.454+00	112	telegraf	1126982881	23.77	7569	1
2025-07-05 22:23:08.64+00	112	telegraf	1041420528	23.75	7570	1
2025-07-05 22:27:50.605+00	112	telegraf	978202981	23.85	7575	1
2025-07-05 22:36:18.797+00	112	telegraf	1126982881	24.03	7582	1
2025-07-05 22:37:16.021+00	112	telegraf	1041420528	24.02	7583	1
2025-07-05 22:40:57.443+00	112	telegraf	978202981	24.11	7586	1
2025-07-05 22:45:23.543+00	112	telegraf	1126982881	24.28	7588	1
2025-07-05 22:50:53.131+00	112	telegraf	1041420528	24.27	7593	1
2025-07-05 22:52:33.488+00	112	telegraf	978202981	24.36	7594	1
2025-07-05 23:10:03.116+00	112	telegraf	1041420528	24.53	7607	1
2025-07-05 23:13:14.263+00	112	telegraf	978202981	24.61	7608	1
2025-07-05 23:27:12.048+00	112	telegraf	1041420528	24.78	7618	1
2025-07-05 23:27:15.372+00	112	telegraf	1126982881	24.8	7619	1
2025-07-07 09:05:25.088+00	112	telegraf	527134251	25.87	112	1
2025-07-07 09:06:14.837+00	112	telegraf	1041420528	24.56	10	1
2025-07-07 09:07:25.215+00	112	telegraf	978202981	24.61	13	1
2025-07-07 09:19:05.166+00	112	telegraf	1523842139	26.03	181	1
2025-07-07 09:19:02.174+00	112	telegraf	527134251	26.22	182	1
2025-07-07 09:22:03.643+00	112	telegraf	527134251	25.95	187	1
2025-07-07 09:24:34.949+00	112	telegraf	527134251	26.58	191	1
2025-07-07 09:25:09.148+00	112	telegraf	840973111	25.91	193	1
2025-07-07 09:26:09.673+00	112	telegraf	840973111	26.21	199	1
2025-07-07 09:26:39.925+00	112	telegraf	840973111	27.05	202	1
2025-07-07 09:27:10.193+00	112	telegraf	840973111	27.85	206	1
2025-07-07 09:27:36.5+00	112	telegraf	527134251	26.3	208	1
2025-07-07 09:28:40.964+00	112	telegraf	840973111	27.51	214	1
2025-07-07 09:28:37.009+00	112	telegraf	527134251	25.99	216	1
2025-07-07 09:29:41.488+00	112	telegraf	840973111	27.15	222	1
2025-07-07 09:30:11.746+00	112	telegraf	840973111	26.88	223	1
2025-07-07 09:31:12.367+00	112	telegraf	840973111	26.61	233	1
2025-07-07 09:32:12.922+00	112	telegraf	840973111	26.35	235	1
2025-07-07 09:33:42.726+00	112	telegraf	1523842139	25.78	237	1
2025-07-07 09:33:32.31+00	112	telegraf	1126982881	24.79	54	1
2025-07-07 09:34:13.895+00	112	telegraf	840973111	26.09	238	1
2025-07-07 09:35:44.68+00	112	telegraf	840973111	25.76	246	1
2025-07-07 09:37:15.505+00	112	telegraf	840973111	25.48	250	1
2025-07-07 09:38:45.365+00	112	telegraf	1523842139	25.48	263	1
2025-07-07 09:47:16.778+00	112	telegraf	527134251	26.73	1	1
2025-07-07 09:48:47.57+00	112	telegraf	527134251	26.31	5	1
2025-07-07 09:49:48.098+00	112	telegraf	527134251	25.81	10	1
2025-07-07 09:50:48.63+00	112	telegraf	527134251	25.37	11	1
2025-07-07 09:51:49.159+00	112	telegraf	527134251	25.03	13	1
2025-07-07 09:51:53.112+00	112	telegraf	840973111	29.22	14	1
2025-07-07 09:52:49.68+00	112	telegraf	527134251	24.76	17	1
2025-07-07 09:52:53.634+00	112	telegraf	840973111	29.55	18	1
2025-07-07 09:54:20.464+00	112	telegraf	527134251	24.49	20	1
2025-07-07 09:56:21.526+00	112	telegraf	527134251	24.22	25	1
2025-07-07 09:56:25.478+00	112	telegraf	840973111	29.82	27	1
2025-07-07 09:57:25.151+00	112	telegraf	1523842139	29.3	31	1
2025-07-07 09:58:52.849+00	112	telegraf	527134251	23.9	36	1
2025-07-07 09:58:55.937+00	112	telegraf	1523842139	29.65	37	1
2025-07-07 09:59:27.069+00	112	telegraf	840973111	29.44	38	1
2025-07-07 09:59:49.074+00	112	telegraf	840973111	28.09	42	1
2025-07-07 10:03:14.509+00	112	telegraf	1041420528	24.8	91	1
2025-07-07 10:08:57.18+00	112	telegraf	978202981	24.91	108	1
2025-07-07 11:08:18.505+00	112	telegraf	1041420528	25.19	43	1
2025-07-07 11:10:29.372+00	112	telegraf	978202981	25.16	49	1
2025-07-07 11:32:34.276+00	112	telegraf	1126982881	25.39	72	1
2025-07-07 11:39:04.56+00	112	telegraf	1041420528	25.19	80	1
2025-07-07 11:54:00.812+00	112	telegraf	632461688	23.49	119	1
2025-07-07 12:09:50.585+00	112	telegraf	1041420528	25.18	138	1
2025-07-07 12:12:01.499+00	112	telegraf	978202981	25.25	144	1
2025-07-07 12:24:46.889+00	112	telegraf	632461688	23.67	174	1
2025-07-07 12:30:34.529+00	112	telegraf	1126982881	25.52	196	1
2025-07-07 12:30:31.416+00	112	telegraf	1041420528	25.44	198	1
2025-07-07 12:43:23.976+00	112	telegraf	3839865	23.81	223	1
2025-07-07 12:54:02.189+00	112	telegraf	632461688	23.92	239	1
2025-07-07 12:55:20.583+00	112	telegraf	840973111	28.66	264	1
2025-07-07 12:58:22.169+00	112	telegraf	840973111	28.38	270	1
2025-07-07 13:00:23.225+00	112	telegraf	840973111	28.12	272	1
2025-07-07 12:56:58.801+00	112	telegraf	1523842139	28.35	277	1
2025-07-07 12:59:30.13+00	112	telegraf	1523842139	28.05	279	1
2025-07-07 13:01:17.435+00	112	telegraf	1041420528	25.6	285	1
2025-07-07 13:03:59.336+00	112	telegraf	527134251	27.13	349	1
2025-07-07 13:04:25.344+00	112	telegraf	840973111	27.61	354	1
2025-07-07 13:06:00.377+00	112	telegraf	527134251	26.81	366	1
2025-07-07 13:06:26.393+00	112	telegraf	840973111	27.36	367	1
2025-07-07 13:06:33.795+00	112	telegraf	1523842139	27.24	369	1
2025-07-07 13:09:01.952+00	112	telegraf	527134251	26.55	386	1
2025-07-07 13:10:07.872+00	112	telegraf	3839865	24.06	389	1
2025-07-07 13:11:29.006+00	112	telegraf	840973111	26.82	393	1
2025-07-07 13:11:33.26+00	112	telegraf	527134251	26.3	394	1
2025-07-07 13:12:53.674+00	112	telegraf	333419537	25.14	395	1
2025-07-07 13:13:33.627+00	112	telegraf	978202981	25.55	398	1
2025-07-07 13:14:30.58+00	112	telegraf	840973111	26.57	410	1
2025-07-07 13:15:35.36+00	112	telegraf	527134251	26.05	412	1
2025-07-07 13:17:09.31+00	112	telegraf	1523842139	26.35	425	1
2025-07-07 13:20:37.972+00	112	telegraf	527134251	25.79	454	1
2025-07-07 13:23:12.457+00	112	telegraf	1523842139	26.09	494	1
2025-07-07 13:31:18.895+00	112	telegraf	3839865	24.33	510	1
2025-07-07 13:32:06.566+00	112	telegraf	1126982881	25.5	514	1
2025-07-07 13:36:21.526+00	112	telegraf	3839865	24.58	531	1
2025-07-07 13:38:08.003+00	112	telegraf	305822513	24.55	536	1
2025-07-07 13:34:41.187+00	112	telegraf	840973111	25.54	537	1
2025-07-07 13:28:45.363+00	112	telegraf	1523842139	25.84	550	1
2025-07-07 13:27:11.437+00	112	telegraf	527134251	25.53	551	1
2025-07-07 13:40:23.62+00	112	telegraf	3839865	24.84	572	1
2025-07-07 13:37:50.124+00	112	telegraf	1523842139	25.57	603	1
2025-07-07 13:41:18.906+00	112	telegraf	527134251	26.09	631	1
2025-07-07 13:42:15.13+00	112	telegraf	840973111	26.2	637	1
2025-07-07 13:44:19.679+00	112	telegraf	978202981	25.59	653	1
2025-07-07 13:43:09.452+00	112	telegraf	333419537	24.87	664	1
2025-07-07 13:48:30.605+00	112	telegraf	632461688	24.73	676	1
2025-07-07 13:48:31.189+00	112	telegraf	677224097	24.78	690	1
2025-07-07 13:50:14.303+00	112	telegraf	305822513	24.8	696	1
2025-07-07 13:49:26.175+00	112	telegraf	1523842139	26.07	705	1
2025-07-07 13:56:04.593+00	112	telegraf	632461688	24.98	742	1
2025-07-07 13:58:41.294+00	112	telegraf	791308911	24.74	773	1
2025-07-07 13:59:01.16+00	112	telegraf	1523842139	25.79	785	1
2025-07-07 14:02:49.494+00	112	telegraf	1041420528	25.68	804	1
2025-07-07 14:02:52.619+00	112	telegraf	1126982881	25.61	805	1
2025-07-07 14:11:04.459+00	112	telegraf	527134251	26.54	853	1
2025-07-07 14:11:07.502+00	112	telegraf	1523842139	26.48	854	1
2025-07-07 14:12:25.909+00	112	telegraf	305822513	25.08	863	1
2025-07-07 14:11:34.719+00	112	telegraf	527134251	26.79	866	1
2025-07-07 14:12:00.7+00	112	telegraf	840973111	26.63	869	1
2025-07-07 14:12:08.021+00	112	telegraf	1523842139	26.78	871	1
2025-07-07 14:08:25.778+00	112	telegraf	517905260	23.55	891	1
2025-07-07 14:05:51.189+00	112	telegraf	2045592530	24	896	1
2025-07-07 14:13:55.473+00	112	telegraf	333419537	24.8	924	1
2025-07-07 14:15:05.774+00	112	telegraf	978202981	25.78	936	1
2025-07-07 14:19:04.383+00	112	telegraf	840973111	26.38	976	1
2025-07-07 14:19:17.272+00	112	telegraf	677224097	24.7	984	1
2025-07-07 14:28:18.621+00	112	telegraf	3839865	25.32	1034	1
2025-07-07 14:29:27.37+00	112	telegraf	791308911	24.65	1039	1
2025-07-07 14:33:35.585+00	112	telegraf	1041420528	25.77	1055	1
2025-07-07 14:33:38.679+00	112	telegraf	1126982881	25.72	1058	1
2025-07-07 14:43:12.037+00	112	telegraf	305822513	25.15	1124	1
2025-07-07 14:45:51.846+00	112	telegraf	978202981	25.85	1142	1
2025-07-07 14:51:33.554+00	112	telegraf	632461688	25.08	1192	1
2025-07-07 14:52:00.977+00	112	telegraf	3839865	25.07	1194	1
2025-07-07 14:53:34.606+00	112	telegraf	632461688	24.75	1197	1
2025-07-08 08:01:52.116+00	112	telegraf	978202981	23.64	43	1
2025-07-08 08:01:52.282+00	112	telegraf	527134251	23.3	44	1
2025-07-08 08:02:45.696+00	112	telegraf	1126982881	23.61	48	1
2025-07-08 08:04:43.56+00	112	telegraf	1041420528	23.91	58	1
2025-07-08 08:04:32.622+00	112	telegraf	677224097	24.15	59	1
2025-07-08 08:05:27.412+00	112	telegraf	1523842139	23.51	60	1
2025-07-08 08:05:43.293+00	112	telegraf	333419537	24.14	61	1
2025-07-08 08:05:38.04+00	112	telegraf	791308911	23.85	62	1
2025-07-08 08:09:56.319+00	112	telegraf	978202981	23.89	76	1
2025-07-08 08:09:52.288+00	112	telegraf	840973111	23.46	77	1
2025-07-08 08:27:55.632+00	112	telegraf	1041420528	24.66	134	1
2025-07-08 08:28:25.893+00	112	telegraf	1041420528	25.22	137	1
2025-07-08 08:29:26.451+00	112	telegraf	1041420528	25.48	148	1
2025-07-08 08:29:25.557+00	112	telegraf	333419537	24.91	150	1
2025-07-08 08:30:15.989+00	112	telegraf	677224097	24.93	152	1
2025-07-08 08:30:37.053+00	112	telegraf	978202981	24.39	153	1
2025-07-08 08:30:57.244+00	112	telegraf	1041420528	25.18	157	1
2025-07-08 08:32:28.028+00	112	telegraf	1041420528	24.84	163	1
2025-07-08 08:32:52.237+00	112	telegraf	791308911	24.6	166	1
2025-07-08 08:33:42.121+00	112	telegraf	1523842139	23.76	169	1
2025-07-08 08:38:00.902+00	112	telegraf	1041420528	24.3	171	1
2025-07-08 08:40:51.488+00	112	telegraf	677224097	25.19	185	1
2025-07-08 08:41:31.829+00	112	telegraf	333419537	25.19	191	1
2025-07-08 08:42:13.077+00	112	telegraf	978202981	24.13	192	1
2025-07-08 08:42:33.259+00	112	telegraf	1041420528	24.02	195	1
2025-07-08 08:42:36.448+00	112	telegraf	1126982881	23.77	196	1
2025-07-08 08:44:44.571+00	112	telegraf	527134251	23.81	202	1
2025-07-08 08:44:58.517+00	112	telegraf	791308911	24.85	203	1
2025-07-08 08:48:42.622+00	112	telegraf	840973111	23.96	208	1
2025-07-08 08:50:37.704+00	112	telegraf	1041420528	23.74	222	1
2025-07-08 08:50:56.865+00	112	telegraf	677224097	25.45	224	1
2025-07-08 08:48:21.941+00	112	telegraf	3839865	22.28	227	1
2025-07-08 08:52:37.703+00	112	telegraf	333419537	25.44	230	1
2025-07-08 08:57:04.951+00	112	telegraf	791308911	25.1	237	1
2025-07-08 08:57:54.885+00	112	telegraf	1523842139	24.01	238	1
2025-07-08 09:00:46.046+00	112	telegraf	1126982881	23.52	245	1
2025-07-08 09:03:14.157+00	112	telegraf	1041420528	23.49	259	1
2025-07-08 09:04:24.767+00	112	telegraf	978202981	23.63	262	1
2025-07-08 09:04:24.99+00	112	telegraf	527134251	24.06	263	1
2025-07-08 09:05:04.238+00	112	telegraf	677224097	25.71	264	1
2025-07-08 09:05:14.323+00	112	telegraf	333419537	25.72	265	1
2025-07-08 09:07:52.586+00	112	telegraf	840973111	24.21	268	1
2025-07-08 09:12:38.184+00	112	telegraf	677224097	25.96	282	1
2025-07-08 09:13:18.537+00	112	telegraf	333419537	25.98	285	1
2025-07-08 09:13:43.632+00	112	telegraf	791308911	25.6	286	1
2025-07-08 09:18:41.335+00	112	telegraf	677224097	26.22	300	1
2025-07-08 09:19:05.926+00	112	telegraf	1523842139	24.26	302	1
2025-07-09 09:28:28.604+00	112	telegraf	1041420528	24.46	13	1
2025-07-09 09:34:34.383+00	112	telegraf	1126982881	24.43	18	1
2025-07-09 09:35:18.685+00	112	telegraf	207892874	28.96	27	1
2025-07-09 09:36:19.215+00	112	telegraf	207892874	29.3	29	1
2025-07-09 09:37:12.91+00	112	telegraf	978202981	24.52	30	1
2025-07-09 09:43:36.353+00	112	telegraf	1041420528	24.71	34	1
2025-07-09 09:48:41.733+00	112	telegraf	1126982881	24.69	42	1
2025-07-09 09:50:50.009+00	112	telegraf	978202981	24.77	50	1
2025-07-09 10:06:48.474+00	112	telegraf	1041420528	24.98	63	1
2025-07-09 10:08:52.284+00	112	telegraf	1126982881	24.94	66	1
2025-07-09 10:27:32.016+00	112	telegraf	1126982881	25.21	120	1
\.


--
-- Data for Name: _hyper_2_17_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_17_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-07-10 07:25:35.289+00	114	telegraf	978202981	60.23	18	1
2025-07-10 07:26:35.816+00	114	telegraf	978202981	68.48	32	1
2025-07-10 07:27:06.076+00	114	telegraf	978202981	56.92	36	1
2025-07-10 07:27:36.342+00	114	telegraf	978202981	54.86	37	1
2025-07-10 07:28:06.606+00	114	telegraf	978202981	54.04	47	1
2025-07-10 07:28:29.332+00	114	telegraf	1126982881	52.88	48	1
2025-07-10 07:29:07.137+00	114	telegraf	978202981	53.36	52	1
2025-07-10 07:32:28.912+00	114	telegraf	1041420528	50.47	63	1
2025-07-10 07:34:02.218+00	114	telegraf	1126982881	53.38	65	1
2025-07-10 07:38:01.792+00	114	telegraf	1041420528	49.97	68	1
2025-07-10 07:45:07.99+00	114	telegraf	1126982881	53.88	73	1
2025-07-10 07:50:08.094+00	114	telegraf	1041420528	49.44	83	1
2025-07-10 07:59:53.166+00	114	telegraf	978202981	53.15	87	1
2025-07-10 08:08:27.649+00	114	telegraf	978202981	52.65	105	1
2025-07-10 08:15:54.094+00	114	telegraf	1126982881	54.13	111	1
2025-07-10 08:20:23.925+00	114	telegraf	1041420528	48.92	112	1
2025-07-10 08:37:02.589+00	114	telegraf	1041420528	49.66	129	1
2025-07-10 08:39:13.762+00	114	telegraf	978202981	52.89	142	1
2025-07-10 08:39:33.909+00	114	telegraf	1041420528	50.17	143	1
2025-07-10 08:43:36.001+00	114	telegraf	1041420528	50.71	149	1
2025-07-10 08:46:40.126+00	114	telegraf	1126982881	54.59	150	1
2025-07-10 08:48:38.641+00	114	telegraf	1041420528	51.22	153	1
2025-07-10 08:49:19.006+00	114	telegraf	978202981	53.4	154	1
2025-07-10 09:00:14.672+00	114	telegraf	1041420528	51.75	160	1
2025-07-10 09:12:23.497+00	114	telegraf	1126982881	55.1	172	1
2025-07-10 09:17:03.504+00	114	telegraf	978202981	53.92	174	1
2025-07-10 09:17:53.862+00	114	telegraf	1041420528	52.27	177	1
2025-07-10 09:43:09.525+00	114	telegraf	1126982881	55.48	191	1
2025-07-10 09:47:49.564+00	114	telegraf	978202981	54.24	196	1
2025-07-10 09:48:39.901+00	114	telegraf	1041420528	52.72	198	1
2025-07-10 10:13:55.589+00	114	telegraf	1126982881	55.69	214	1
2025-07-10 10:18:35.633+00	114	telegraf	978202981	54.42	217	1
2025-07-10 10:19:25.931+00	114	telegraf	1041420528	53	218	1
2025-07-10 11:39:40.267+00	114	telegraf	1126982881	55.01	269	1
2025-07-10 12:04:50.899+00	114	telegraf	1041420528	52.14	285	1
2025-07-10 12:05:01.233+00	114	telegraf	978202981	53.49	286	1
2025-07-10 12:10:26.327+00	114	telegraf	1126982881	55.19	292	1
2025-07-10 12:35:36.931+00	114	telegraf	1041420528	52.14	305	1
2025-07-10 12:35:47.309+00	114	telegraf	978202981	53.51	306	1
2025-07-10 12:41:12.364+00	114	telegraf	1126982881	55.23	311	1
2025-07-10 13:06:22.986+00	114	telegraf	1041420528	51.95	325	1
2025-07-10 13:06:33.372+00	114	telegraf	978202981	53.37	326	1
2025-07-10 13:11:58.392+00	114	telegraf	1126982881	55.12	331	1
2025-07-10 13:37:09.025+00	114	telegraf	1041420528	51.98	343	1
2025-07-10 13:37:19.411+00	114	telegraf	978202981	53.33	345	1
2025-07-10 13:42:44.457+00	114	telegraf	1126982881	55.09	351	1
2025-07-10 14:07:55.061+00	114	telegraf	1041420528	51.95	363	1
2025-07-10 14:08:05.495+00	114	telegraf	978202981	53.31	364	1
2025-07-10 14:13:30.494+00	114	telegraf	1126982881	55.07	370	1
2025-07-10 14:38:41.081+00	114	telegraf	1041420528	52.12	381	1
2025-07-10 14:44:16.518+00	114	telegraf	1126982881	55.23	388	1
2025-07-10 15:09:27.134+00	114	telegraf	1041420528	52.44	411	1
2025-07-10 15:09:37.61+00	114	telegraf	978202981	53.79	412	1
2025-07-10 15:15:02.597+00	114	telegraf	1126982881	55.51	417	1
2025-07-10 15:40:13.2+00	114	telegraf	1041420528	52.55	430	1
2025-07-10 15:40:23.684+00	114	telegraf	978202981	53.92	431	1
2025-07-10 15:45:48.626+00	114	telegraf	1126982881	55.61	435	1
2025-07-10 16:05:06.622+00	114	telegraf	978202981	53.38	442	1
2025-07-10 16:05:56.631+00	114	telegraf	1041420528	51.98	444	1
2025-07-10 16:07:37.927+00	114	telegraf	978202981	52.79	446	1
2025-07-10 16:08:00.201+00	114	telegraf	1126982881	55.1	447	1
2025-07-10 16:36:42.682+00	114	telegraf	1041420528	52.12	471	1
2025-07-10 16:38:46.232+00	114	telegraf	1126982881	55.23	472	1
2025-07-10 16:40:55.322+00	114	telegraf	978202981	53.53	476	1
2025-07-10 17:07:28.713+00	114	telegraf	1041420528	52.24	491	1
2025-07-10 17:09:32.257+00	114	telegraf	1126982881	55.33	494	1
2025-07-10 17:11:41.388+00	114	telegraf	978202981	53.66	496	1
2025-07-10 17:38:14.745+00	114	telegraf	1041420528	52.48	509	1
2025-07-10 17:40:18.296+00	114	telegraf	1126982881	55.56	512	1
2025-07-10 17:42:27.463+00	114	telegraf	978202981	53.9	514	1
2025-07-11 06:52:19.336+00	114	telegraf	978202981	58.29	4	1
2025-07-11 07:18:22.385+00	114	telegraf	1041420528	57.4	21	1
2025-07-11 07:23:05.482+00	114	telegraf	978202981	58.5	26	1
2025-07-11 07:29:00.366+00	114	telegraf	1126982881	59.99	30	1
2025-07-11 07:49:08.398+00	114	telegraf	1041420528	56.94	50	1
2025-07-11 08:58:55.464+00	114	telegraf	978202981	57.8	99	1
2025-07-11 09:01:18.5+00	114	telegraf	1126982881	59.48	100	1
2025-07-11 09:20:06.555+00	114	telegraf	978202981	58.32	115	1
2025-07-12 06:03:24.96+00	114	telegraf	978202981	55.31	20	1
2025-07-12 06:16:23.213+00	114	telegraf	1126982881	57.32	26	1
2025-07-12 06:19:52.747+00	114	telegraf	1041420528	55.09	30	1
2025-07-12 06:34:11.014+00	114	telegraf	978202981	55.81	42	1
2025-07-12 06:50:38.808+00	114	telegraf	1041420528	54.99	52	1
2025-07-12 07:04:57.053+00	114	telegraf	978202981	56.05	61	1
2025-07-12 07:17:55.29+00	114	telegraf	1126982881	57.59	66	1
2025-07-12 07:35:43.081+00	114	telegraf	978202981	56.03	79	1
2025-07-12 08:06:29.126+00	114	telegraf	978202981	55.87	98	1
2025-07-12 08:19:27.424+00	114	telegraf	1126982881	57.35	103	1
2025-07-12 08:37:15.144+00	114	telegraf	978202981	55.55	116	1
2025-07-12 08:50:13.481+00	114	telegraf	1126982881	57.06	123	1
2025-07-12 08:53:42.969+00	114	telegraf	1041420528	54.37	125	1
2025-07-12 09:08:01.231+00	114	telegraf	978202981	55.56	134	1
2025-07-12 09:20:59.532+00	114	telegraf	1126982881	57.29	143	1
2025-07-12 09:24:29.033+00	114	telegraf	1041420528	54.73	145	1
2025-07-12 10:09:33.345+00	114	telegraf	978202981	56.56	176	1
2025-07-12 10:22:31.627+00	114	telegraf	1126982881	57.86	183	1
2025-07-12 14:08:59.77+00	114	telegraf	1126982881	59.01	325	1
2025-07-12 14:10:58.382+00	114	telegraf	1041420528	56.05	328	1
2025-07-12 14:13:40.666+00	114	telegraf	978202981	56.88	330	1
2025-07-12 14:35:41.26+00	114	telegraf	1041420528	55.55	343	1
2025-07-12 14:39:45.837+00	114	telegraf	1126982881	58.54	350	1
2025-07-12 14:44:26.693+00	114	telegraf	978202981	56.56	353	1
2025-07-12 15:06:27.308+00	114	telegraf	1041420528	55.15	364	1
2025-07-12 15:07:30.283+00	114	telegraf	1126982881	58.02	365	1
2025-07-12 15:13:11.676+00	114	telegraf	978202981	56.05	373	1
2025-07-12 16:45:29.819+00	114	telegraf	978202981	56.15	427	1
2025-07-12 17:05:31.88+00	114	telegraf	1126982881	57.86	437	1
2025-07-12 17:16:15.881+00	114	telegraf	978202981	55.93	446	1
2025-07-12 17:34:44.582+00	114	telegraf	1041420528	54.54	457	1
2025-07-12 17:47:01.912+00	114	telegraf	978202981	55.57	466	1
2025-07-12 18:05:30.648+00	114	telegraf	1041420528	54.4	477	1
2025-07-12 18:17:47.96+00	114	telegraf	978202981	55.47	486	1
2025-07-12 18:34:15.644+00	114	telegraf	1041420528	54.92	496	1
2025-07-12 18:37:50.045+00	114	telegraf	1126982881	57.7	498	1
2025-07-12 18:54:06.903+00	114	telegraf	978202981	56.49	509	1
2025-07-12 19:10:15.313+00	114	telegraf	978202981	55.99	519	1
2025-07-12 20:02:31.649+00	114	telegraf	1041420528	55.21	551	1
2025-07-12 20:04:13.444+00	114	telegraf	978202981	56.53	552	1
2025-07-12 20:05:35.774+00	114	telegraf	1126982881	58.06	553	1
2025-07-12 20:33:17.684+00	114	telegraf	1041420528	55.44	569	1
2025-07-12 20:34:59.514+00	114	telegraf	978202981	56.7	570	1
2025-07-12 20:36:21.799+00	114	telegraf	1126982881	58.27	571	1
2025-07-12 21:04:03.721+00	114	telegraf	1041420528	55.27	587	1
2025-07-12 21:05:45.539+00	114	telegraf	978202981	56.49	588	1
2025-07-12 21:34:49.767+00	114	telegraf	1041420528	54.95	607	1
2025-07-12 21:36:31.583+00	114	telegraf	978202981	56.17	608	1
2025-07-12 22:05:35.805+00	114	telegraf	1041420528	54.76	626	1
2025-07-12 22:08:39.982+00	114	telegraf	1126982881	57.51	628	1
2025-07-13 06:15:01.965+00	114	telegraf	978202981	59.75	927	1
2025-07-13 06:15:21.131+00	114	telegraf	1041420528	58.76	928	1
2025-07-13 06:45:48.044+00	114	telegraf	978202981	59.65	948	1
2025-07-13 06:46:07.16+00	114	telegraf	1041420528	58.67	949	1
2025-07-13 06:50:42.302+00	114	telegraf	1126982881	61.17	952	1
2025-07-13 07:16:34.08+00	114	telegraf	978202981	59.4	967	1
2025-07-13 07:30:11.179+00	114	telegraf	978202981	58.9	977	1
2025-07-13 10:04:01.45+00	114	telegraf	978202981	59.46	1070	1
2025-07-13 10:06:51.853+00	114	telegraf	1041420528	58.41	1072	1
2025-07-13 10:22:32.839+00	114	telegraf	1126982881	61.22	1085	1
2025-07-13 10:34:47.48+00	114	telegraf	978202981	59.05	1092	1
2025-07-13 10:37:37.882+00	114	telegraf	1041420528	57.89	1093	1
2025-07-13 10:39:41.798+00	114	telegraf	1126982881	60.72	1098	1
2025-07-13 11:05:33.53+00	114	telegraf	978202981	58.69	1112	1
2025-07-13 11:08:23.931+00	114	telegraf	1041420528	57.44	1113	1
2025-07-13 11:10:27.855+00	114	telegraf	1126982881	60.32	1120	1
2025-07-13 11:39:09.992+00	114	telegraf	1041420528	56.95	1132	1
2025-07-13 11:40:43.643+00	114	telegraf	1126982881	59.82	1138	1
2025-07-13 12:11:29.679+00	114	telegraf	1126982881	59.54	1157	1
2025-07-13 13:09:27.15+00	114	telegraf	1041420528	55.83	1193	1
2025-07-13 13:12:01.239+00	114	telegraf	1126982881	58.75	1197	1
2025-07-13 13:22:14.839+00	114	telegraf	978202981	56.45	1204	1
2025-07-13 13:30:40.95+00	114	telegraf	1126982881	58.24	1209	1
2025-07-13 14:23:46.932+00	114	telegraf	978202981	56.74	1243	1
2025-07-13 14:32:13.048+00	114	telegraf	1126982881	58.65	1248	1
2025-07-13 14:54:32.975+00	114	telegraf	978202981	56.4	1262	1
2025-07-13 14:55:22.404+00	114	telegraf	1041420528	55.29	1263	1
2025-07-14 07:53:24.547+00	114	telegraf	978202981	60.64	1902	1
2025-07-14 07:54:13.771+00	114	telegraf	1041420528	59.67	1903	1
2025-07-14 08:14:27.226+00	114	telegraf	1126982881	62.13	1916	1
2025-07-15 08:40:11.605+00	114	telegraf	1126982881	61.78	2809	1
2025-07-15 08:41:20.964+00	114	telegraf	978202981	59.93	2811	1
2025-07-15 08:42:09.706+00	114	telegraf	1041420528	58.96	2812	1
2025-07-15 09:41:43.693+00	114	telegraf	1126982881	61.67	2849	1
2025-07-15 09:42:53.039+00	114	telegraf	978202981	59.91	2850	1
\.


--
-- Data for Name: _hyper_2_2_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_2_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-06-28 12:23:55.83+00	114	\N	978202981	57.58	56	0.9
2025-06-28 12:27:57.952+00	114	\N	978202981	58.33	62	0.9
2025-06-28 12:28:58.472+00	114	\N	978202981	57.7	74	0.9
2025-06-28 12:29:52.861+00	114	\N	1041420528	56.1	76	0.9
2025-06-28 12:31:58.131+00	114	\N	1126982881	58.31	77	0.9
2025-06-28 12:32:00.062+00	114	\N	978202981	57.18	78	0.9
2025-06-28 12:37:26.838+00	114	\N	1041420528	55.54	83	0.9
2025-06-28 12:39:34.007+00	114	\N	978202981	56.66	92	0.9
2025-06-28 12:40:02.353+00	114	\N	1126982881	57.81	94	0.9
2025-06-28 12:50:07.615+00	114	\N	1126982881	57.29	100	0.9
2025-06-28 12:51:10.069+00	114	\N	978202981	56.16	101	0.9
2025-06-28 12:52:04.467+00	114	\N	1041420528	55.04	102	0.9
2025-06-28 13:13:51.853+00	114	\N	978202981	55.64	115	0.9
2025-06-28 13:20:53.608+00	114	\N	1126982881	56.84	121	0.9
2025-06-28 13:22:50.488+00	114	\N	1041420528	54.64	122	0.9
2025-06-28 13:44:37.927+00	114	\N	978202981	55.66	139	0.9
2025-06-28 13:51:39.718+00	114	\N	1126982881	57.05	145	0.9
2025-06-28 13:53:36.584+00	114	\N	1041420528	54.89	146	0.9
2025-06-28 14:15:24.012+00	114	\N	978202981	55.53	157	0.9
2025-06-28 14:16:52.845+00	114	\N	1126982881	57.65	162	0.9
2025-06-28 14:16:48.653+00	114	\N	1041420528	55.53	163	0.9
2025-06-28 14:17:49.17+00	114	\N	1041420528	54.88	175	0.9
2025-06-28 14:17:53.375+00	114	\N	1126982881	57.15	176	0.9
2025-06-28 14:46:10.07+00	114	\N	978202981	55.36	187	0.9
2025-06-28 14:48:35.2+00	114	\N	1041420528	54.42	193	0.9
2025-06-28 14:48:39.408+00	114	\N	1126982881	56.82	194	0.9
2025-06-28 15:16:56.102+00	114	\N	978202981	55.25	205	0.9
2025-06-28 15:19:25.435+00	114	\N	1126982881	56.71	211	0.9
2025-06-28 15:19:21.262+00	114	\N	1041420528	54.33	213	0.9
2025-06-28 15:47:42.151+00	114	\N	978202981	55.12	225	0.9
2025-06-28 15:50:11.442+00	114	\N	1126982881	56.61	230	0.9
2025-06-28 15:50:07.242+00	114	\N	1041420528	54.17	232	0.9
2025-06-28 16:18:28.243+00	114	\N	978202981	55.08	248	0.9
2025-06-28 16:20:53.309+00	114	\N	1041420528	54.11	252	0.9
2025-06-28 16:20:57.517+00	114	\N	1126982881	56.63	253	0.9
2025-06-28 16:49:14.259+00	114	\N	978202981	55.09	266	0.9
2025-06-28 16:51:43.522+00	114	\N	1126982881	56.71	270	0.9
2025-06-28 16:51:39.348+00	114	\N	1041420528	54.17	271	0.9
2025-06-28 17:20:00.376+00	114	\N	978202981	55.13	286	0.9
2025-06-28 17:22:29.579+00	114	\N	1126982881	56.84	301	0.9
2025-06-28 17:22:25.387+00	114	\N	1041420528	54.36	303	0.9
2025-06-28 17:50:46.456+00	114	\N	978202981	55.52	324	0.9
2025-06-28 17:53:11.451+00	114	\N	1041420528	54.39	326	0.9
2025-06-28 17:53:15.657+00	114	\N	1126982881	56.9	327	0.9
2025-06-28 18:21:32.532+00	114	\N	978202981	55.74	347	0.9
2025-06-28 18:23:57.508+00	114	\N	1041420528	54.53	349	0.9
2025-06-28 18:24:01.734+00	114	\N	1126982881	57.02	350	0.9
2025-06-28 18:52:18.556+00	114	\N	978202981	55.81	368	0.9
2025-06-28 18:54:47.746+00	114	\N	1126982881	57.1	370	0.9
2025-06-28 18:54:43.531+00	114	\N	1041420528	54.55	371	0.9
2025-06-28 19:23:04.598+00	114	\N	978202981	56.19	387	0.9
2025-06-28 19:25:33.769+00	114	\N	1126982881	57.2	391	0.9
2025-06-28 19:25:29.553+00	114	\N	1041420528	54.79	392	0.9
2025-06-28 19:33:40.119+00	114	\N	978202981	56.7	393	0.9
2025-06-28 19:56:19.851+00	114	\N	1126982881	57.31	409	0.9
2025-06-28 19:56:15.651+00	114	\N	1041420528	54.95	410	0.9
2025-06-28 20:04:26.247+00	114	\N	978202981	56.59	412	0.9
2025-06-30 14:47:13.926+00	114	\N	978202981	60.09	758	0.9
2025-06-30 14:49:11.226+00	114	\N	1126982881	51.39	759	0.9
2025-06-30 14:50:07.749+00	114	\N	1041420528	59.87	761	0.9
2025-06-30 14:58:15.983+00	114	\N	1126982881	50.87	769	0.9
2025-06-30 15:04:53.153+00	114	\N	978202981	60.61	775	0.9
2025-06-30 15:07:50.967+00	114	\N	1126982881	50.29	776	0.9
2025-06-30 15:20:31.302+00	114	\N	978202981	61.15	782	0.9
2025-06-30 15:20:53.787+00	114	\N	1041420528	59.83	784	0.9
2025-06-30 15:38:37.013+00	114	\N	1126982881	50.21	795	0.9
2025-06-30 15:49:12.529+00	114	\N	1126982881	49.68	799	0.9
2025-06-30 15:51:17.376+00	114	\N	978202981	60.87	802	0.9
2025-06-30 15:51:39.83+00	114	\N	1041420528	59.84	803	0.9
2025-06-30 15:52:14.097+00	114	\N	1126982881	49.16	804	0.9
2025-06-30 16:02:53.432+00	114	\N	978202981	61.48	816	0.9
2025-06-30 16:03:53.95+00	114	\N	978202981	60.94	817	0.9
2025-06-30 16:07:52.267+00	114	\N	1126982881	48.65	825	0.9
2025-06-30 16:10:23.577+00	114	\N	1126982881	48.14	826	0.9
2025-06-30 16:14:55.935+00	114	\N	1126982881	47.57	829	0.9
2025-06-30 16:22:25.892+00	114	\N	1041420528	59.82	832	0.9
2025-06-30 16:23:34.2+00	114	\N	978202981	60.43	834	0.9
2025-06-30 16:24:00.67+00	114	\N	1126982881	46.97	835	0.9
2025-06-30 16:33:05.408+00	114	\N	1126982881	46.45	843	0.9
2025-06-30 16:53:11.912+00	114	\N	1041420528	59.76	852	0.9
2025-06-30 16:54:20.278+00	114	\N	978202981	60.5	855	0.9
2025-06-30 17:03:51.458+00	114	\N	1126982881	46.68	862	0.9
2025-06-30 17:21:00.398+00	114	\N	1126982881	47.24	870	0.9
2025-06-30 17:23:57.979+00	114	\N	1041420528	59.75	872	0.9
2025-06-30 17:25:06.318+00	114	\N	978202981	60.48	875	0.9
2025-06-30 17:49:15.118+00	114	\N	1126982881	47.74	891	0.9
2025-06-30 17:52:46.961+00	114	\N	1126982881	48.28	893	0.9
2025-06-30 17:54:44.014+00	114	\N	1041420528	59.77	895	0.9
2025-06-30 17:55:52.362+00	114	\N	978202981	60.24	897	0.9
2025-06-30 18:02:21.969+00	114	\N	1126982881	48.8	904	0.9
2025-06-30 18:09:55.911+00	114	\N	1126982881	49.31	909	0.9
2025-06-30 18:16:59.579+00	114	\N	1126982881	49.83	914	0.9
2025-06-30 18:25:30.056+00	114	\N	1041420528	59.74	919	0.9
2025-06-30 18:26:38.406+00	114	\N	978202981	60.14	920	0.9
2025-06-30 18:35:43.165+00	114	\N	978202981	59.57	929	0.9
2025-06-30 18:39:11.146+00	114	\N	1126982881	49.31	931	0.9
2025-06-30 18:40:15.54+00	114	\N	978202981	59.07	933	0.9
2025-06-30 18:58:21.147+00	114	\N	1126982881	49.82	946	0.9
2025-06-30 19:02:27.137+00	114	\N	978202981	57.01	953	0.9
2025-06-30 19:07:56.164+00	114	\N	1126982881	50.33	958	0.9
2025-06-30 19:15:30.104+00	114	\N	1126982881	50.83	963	0.9
2025-06-30 19:22:33.778+00	114	\N	1126982881	51.37	966	0.9
2025-06-30 19:27:02.133+00	114	\N	1041420528	59.45	972	0.9
2025-06-30 19:30:41.919+00	114	\N	978202981	57.53	976	0.9
2025-06-30 19:33:09.308+00	114	\N	1126982881	52.36	983	0.9
2025-06-30 19:34:13.755+00	114	\N	978202981	56.94	989	0.9
2025-06-30 19:35:40.617+00	114	\N	1126982881	52.88	992	0.9
2025-06-30 19:36:06.871+00	114	\N	1041420528	58.85	996	0.9
2025-06-30 19:38:42.202+00	114	\N	1126982881	53.4	1001	0.9
2025-06-30 19:38:46.12+00	114	\N	978202981	56.41	1002	0.9
2025-06-30 19:38:38.193+00	114	\N	1041420528	58.32	1003	0.9
2025-06-30 19:43:14.559+00	114	\N	1126982881	53.91	1005	0.9
2025-06-30 19:43:40.827+00	114	\N	1041420528	57.8	1006	0.9
2025-06-30 19:44:41.343+00	114	\N	1041420528	57.24	1007	0.9
2025-06-30 19:46:12.137+00	114	\N	1041420528	56.72	1012	0.9
2025-06-30 19:46:20.087+00	114	\N	978202981	55.87	1013	0.9
2025-06-30 19:46:46.404+00	114	\N	1126982881	53.35	1014	0.9
2025-06-30 19:49:13.706+00	114	\N	1041420528	56.15	1018	0.9
2025-06-30 19:49:51.932+00	114	\N	978202981	55.37	1019	0.9
2025-06-30 19:52:15.281+00	114	\N	1041420528	55.59	1030	0.9
2025-06-30 19:54:20.353+00	114	\N	1126982881	52.75	1033	0.9
2025-06-30 19:54:54.563+00	114	\N	978202981	54.76	1034	0.9
2025-06-30 19:59:57.212+00	114	\N	978202981	54.24	1040	0.9
2025-06-30 20:00:19.49+00	114	\N	1041420528	55.08	1041	0.9
2025-06-30 20:25:06.4+00	114	\N	1126982881	53.1	1069	0.9
2025-06-30 20:28:34.205+00	114	\N	1041420528	53.98	1071	0.9
2025-06-30 20:30:43.261+00	114	\N	978202981	53.85	1074	0.9
2025-06-30 20:46:43.686+00	114	\N	1041420528	54.56	1090	0.9
2025-06-30 20:47:48.223+00	114	\N	1126982881	53.64	1094	0.9
2025-06-30 20:52:46.85+00	114	\N	1041420528	55.12	1098	0.9
2025-06-30 20:53:25.088+00	114	\N	978202981	54.37	1100	0.9
2025-06-30 20:54:21.636+00	114	\N	1126982881	54.16	1101	0.9
2025-06-30 20:56:18.702+00	114	\N	1041420528	55.66	1103	0.9
2025-06-30 20:59:24.267+00	114	\N	1126982881	54.73	1106	0.9
2025-06-30 20:59:58.504+00	114	\N	978202981	54.9	1107	0.9
2025-06-30 21:00:20.794+00	114	\N	1041420528	56.17	1108	0.9
2025-06-30 21:05:57.688+00	114	\N	1126982881	55.24	1115	0.9
2025-06-30 21:06:23.948+00	114	\N	1041420528	56.7	1116	0.9
2025-06-30 21:08:02.759+00	114	\N	978202981	55.43	1119	0.9
2025-06-30 21:15:02.411+00	114	\N	1126982881	55.77	1122	0.9
2025-06-30 21:18:38.283+00	114	\N	978202981	55.93	1124	0.9
2025-06-30 21:26:34.462+00	114	\N	1041420528	57.21	1127	0.9
2025-06-30 21:34:42.684+00	114	\N	1126982881	56.29	1133	0.9
2025-06-30 21:43:21.201+00	114	\N	978202981	56.44	1141	0.9
2025-06-30 21:57:20.522+00	114	\N	1041420528	57.3	1149	0.9
2025-06-30 22:05:28.73+00	114	\N	1126982881	56.69	1154	0.9
2025-06-30 22:14:07.26+00	114	\N	978202981	56.65	1161	0.9
2025-07-01 05:35:27.512+00	114	\N	978202981	61.37	1470	0.9
2025-07-01 05:40:25.866+00	114	\N	1126982881	62.7	1475	0.9
2025-07-01 05:45:32.778+00	114	\N	978202981	62.14	1490	0.9
2025-07-01 05:46:59.282+00	114	\N	1126982881	62.49	1495	0.9
2025-07-01 05:47:33.831+00	114	\N	978202981	61.62	1499	0.9
2025-07-01 05:53:06.721+00	114	\N	978202981	61.11	1504	0.9
2025-07-01 05:54:33.226+00	114	\N	1126982881	63.05	1505	0.9
2025-07-01 06:00:10.4+00	114	\N	978202981	60.58	1513	0.9
2025-07-01 06:01:06.646+00	114	\N	1126982881	63.59	1514	0.9
2025-07-01 06:10:45.919+00	114	\N	978202981	60.08	1519	0.9
2025-07-01 06:12:08.546+00	114	\N	1041420528	58.37	1521	0.9
2025-07-01 06:18:45.839+00	114	\N	1126982881	64.1	1529	0.9
2025-07-01 06:25:53.807+00	114	\N	978202981	59.58	1533	0.9
2025-07-01 06:42:54.607+00	114	\N	1041420528	58.09	1540	0.9
2025-07-01 06:49:31.884+00	114	\N	1126982881	63.92	1547	0.9
2025-07-01 06:56:39.859+00	114	\N	978202981	59.1	1552	0.9
2025-07-01 07:13:40.678+00	114	\N	1041420528	58.03	1561	0.9
2025-07-01 07:18:47.161+00	114	\N	1126982881	63.37	1566	0.9
2025-07-01 07:27:25.936+00	114	\N	978202981	58.93	1572	0.9
2025-07-01 07:44:26.71+00	114	\N	1041420528	57.97	1580	0.9
2025-07-01 07:47:01.894+00	114	\N	1126982881	62.84	1584	0.9
2025-07-01 08:15:12.788+00	114	\N	1041420528	57.94	1600	0.9
2025-07-01 08:16:47.403+00	114	\N	1126982881	63.34	1603	0.9
2025-07-01 08:28:58.032+00	114	\N	978202981	58.77	1612	0.9
2025-07-01 08:41:00.043+00	114	\N	1126982881	62.8	1618	0.9
2025-07-01 08:42:30.832+00	114	\N	1126982881	62.26	1620	0.9
2025-07-01 08:45:58.829+00	114	\N	1041420528	57.96	1623	0.9
2025-07-01 08:52:05.834+00	114	\N	1126982881	61.68	1630	0.9
2025-07-01 08:57:08.476+00	114	\N	1126982881	61.18	1633	0.9
2025-07-01 08:59:44.063+00	114	\N	978202981	58.76	1634	0.9
2025-07-01 09:16:44.9+00	114	\N	1041420528	57.97	1645	0.9
2025-07-01 09:27:54.503+00	114	\N	1126982881	60.72	1654	0.9
2025-07-01 09:30:30.114+00	114	\N	978202981	58.76	1655	0.9
2025-07-01 09:47:30.927+00	114	\N	1041420528	57.95	1665	0.9
2025-07-01 09:58:40.545+00	114	\N	1126982881	60.53	1674	0.9
2025-07-01 10:01:16.16+00	114	\N	978202981	58.79	1677	0.9
2025-07-01 10:10:46.857+00	114	\N	1126982881	60	1683	0.9
2025-07-01 10:14:48.957+00	114	\N	1126982881	59.42	1686	0.9
2025-07-01 10:18:16.988+00	114	\N	1041420528	58.01	1689	0.9
2025-07-01 10:32:02.247+00	114	\N	978202981	58.83	1700	0.9
2025-07-01 10:36:30.256+00	114	\N	1126982881	58.85	1704	0.9
2025-07-01 11:12:49.206+00	114	\N	1126982881	55.81	1731	0.9
2025-07-01 11:19:49.085+00	114	\N	1041420528	58.12	1735	0.9
2025-07-01 11:21:53.934+00	114	\N	1126982881	55.21	1738	0.9
2025-07-01 11:23:54.979+00	114	\N	1126982881	54.64	1740	0.9
2025-07-01 11:25:56.029+00	114	\N	1126982881	54.14	1746	0.9
2025-07-01 11:33:34.331+00	114	\N	978202981	58.9	1749	0.9
2025-07-01 11:35:00.758+00	114	\N	1126982881	53.54	1750	0.9
2025-07-01 11:36:01.292+00	114	\N	1126982881	53.04	1753	0.9
2025-07-01 11:36:31.544+00	114	\N	1126982881	53.8	1754	0.9
2025-07-01 11:38:02.34+00	114	\N	1126982881	54.36	1756	0.9
2025-07-01 11:41:34.173+00	114	\N	1126982881	54.86	1758	0.9
2025-07-01 11:44:05.487+00	114	\N	1126982881	54.3	1760	0.9
2025-07-01 11:49:38.39+00	114	\N	1126982881	53.79	1763	0.9
2025-07-01 11:50:35.111+00	114	\N	1041420528	58.22	1764	0.9
2025-07-01 12:01:14.431+00	114	\N	1126982881	52.92	1774	0.9
2025-07-01 12:03:15.492+00	114	\N	1126982881	52.29	1776	0.9
2025-07-01 12:04:20.364+00	114	\N	978202981	58.87	1777	0.9
2025-07-01 12:05:16.537+00	114	\N	1126982881	51.38	1779	0.9
2025-07-01 12:06:47.332+00	114	\N	1126982881	50.82	1781	0.9
2025-07-01 12:07:47.857+00	114	\N	1126982881	51.43	1782	0.9
2025-07-01 12:14:51.557+00	114	\N	1126982881	50.72	1786	0.9
2025-07-01 12:21:21.174+00	114	\N	1041420528	58.27	1791	0.9
2025-07-01 12:23:26.017+00	114	\N	1126982881	50.18	1793	0.9
2025-07-01 12:28:58.903+00	114	\N	1126982881	49.65	1800	0.9
2025-07-01 12:35:06.409+00	114	\N	978202981	58.86	1802	0.9
2025-07-01 12:52:07.216+00	114	\N	1041420528	58.28	1812	0.9
2025-07-01 12:59:44.949+00	114	\N	1126982881	49.52	1819	0.9
2025-07-01 13:05:52.457+00	114	\N	978202981	58.85	1824	0.9
2025-07-01 13:08:49.676+00	114	\N	1126982881	49.02	1826	0.9
2025-07-01 13:22:53.271+00	114	\N	1041420528	58.27	1833	0.9
2025-07-01 13:27:59.685+00	114	\N	1126982881	49.52	1838	0.9
2025-07-01 13:36:38.549+00	114	\N	978202981	58.82	1845	0.9
2025-07-01 13:44:38.354+00	114	\N	1126982881	49.01	1848	0.9
2025-07-01 13:47:09.663+00	114	\N	1126982881	48.49	1852	0.9
2025-07-01 13:53:39.305+00	114	\N	1041420528	58.29	1854	0.9
2025-07-01 13:57:45.18+00	114	\N	1126982881	48.99	1859	0.9
2025-07-01 14:07:24.585+00	114	\N	978202981	58.8	1867	0.9
2025-07-01 15:25:57.456+00	114	\N	1041420528	58.34	1919	0.9
2025-07-01 15:31:03.865+00	114	\N	1126982881	46.74	1922	0.9
2025-07-01 15:39:42.789+00	114	\N	978202981	58.76	1929	0.9
2025-07-01 15:50:13.848+00	114	\N	1126982881	46.06	1934	0.9
2025-07-01 16:09:23.84+00	114	\N	1126982881	46.05	1948	0.9
2025-07-01 16:10:28.814+00	114	\N	978202981	58.76	1949	0.9
2025-07-01 16:11:55.158+00	114	\N	1126982881	45.43	1951	0.9
2025-07-01 16:27:29.541+00	114	\N	1041420528	58.54	1958	0.9
2025-07-01 16:41:14.864+00	114	\N	978202981	58.79	1967	0.9
2025-07-01 16:42:41.199+00	114	\N	1126982881	45.1	1969	0.9
2025-07-01 16:58:15.577+00	114	\N	1041420528	58.56	1977	0.9
2025-07-01 17:42:46.947+00	114	\N	978202981	58.76	2007	0.9
2025-07-01 17:46:44.602+00	114	\N	1126982881	46.55	2010	0.9
2025-07-01 17:50:16.445+00	114	\N	1126982881	47.05	2012	0.9
2025-07-01 17:59:47.649+00	114	\N	1041420528	58.62	2016	0.9
2025-07-01 18:00:51.974+00	114	\N	1126982881	47.55	2017	0.9
2025-07-01 18:03:53.545+00	114	\N	1126982881	46.98	2021	0.9
2025-07-01 18:05:54.595+00	114	\N	1126982881	46.44	2026	0.9
2025-07-01 18:28:06.187+00	114	\N	1126982881	47.59	2039	0.9
2025-07-01 18:30:33.695+00	114	\N	1041420528	58.71	2041	0.9
2025-07-01 18:44:19.056+00	114	\N	978202981	58.92	2052	0.9
2025-07-01 18:51:18.277+00	114	\N	1126982881	48.09	2057	0.9
2025-07-01 18:59:52.743+00	114	\N	1126982881	48.63	2063	0.9
2025-07-01 19:01:19.765+00	114	\N	1041420528	58.73	2064	0.9
2025-07-01 19:04:55.378+00	114	\N	1126982881	49.2	2068	0.9
2025-07-01 19:13:29.847+00	114	\N	1126982881	49.74	2079	0.9
2025-07-01 19:15:05.085+00	114	\N	978202981	58.89	2080	0.9
2025-07-01 19:24:05.37+00	114	\N	1126982881	50.24	2086	0.9
2025-07-01 19:32:05.819+00	114	\N	1041420528	58.71	2092	0.9
2025-07-01 19:44:15.898+00	114	\N	1126982881	50.78	2101	0.9
2025-07-01 19:45:51.166+00	114	\N	978202981	58.91	2104	0.9
2025-07-01 19:48:48.259+00	114	\N	1126982881	51.3	2106	0.9
2025-07-01 19:53:20.623+00	114	\N	1126982881	51.87	2111	0.9
2025-07-01 20:02:51.875+00	114	\N	1041420528	58.71	2117	0.9
2025-07-01 20:03:25.872+00	114	\N	1126982881	52.88	2118	0.9
2025-07-01 20:04:26.408+00	114	\N	1126982881	52.28	2123	0.9
2025-07-01 20:04:52.92+00	114	\N	1041420528	58.16	2124	0.9
2025-07-01 20:05:53.443+00	114	\N	1041420528	57.53	2127	0.9
2025-07-01 20:06:31.935+00	114	\N	978202981	58.36	2128	0.9
2025-07-01 20:08:24.758+00	114	\N	1041420528	56.93	2132	0.9
2025-07-01 20:09:03.251+00	114	\N	978202981	57.85	2134	0.9
2025-07-01 20:10:56.074+00	114	\N	1041420528	56.41	2136	0.9
2025-07-01 20:12:04.832+00	114	\N	978202981	57.34	2138	0.9
2025-07-01 20:14:58.181+00	114	\N	1041420528	55.91	2142	0.9
2025-07-01 20:16:02.462+00	114	\N	1126982881	52.78	2146	0.9
2025-07-01 20:16:06.931+00	114	\N	978202981	56.81	2147	0.9
2025-07-01 20:21:35.355+00	114	\N	1126982881	53.59	2151	0.9
2025-07-01 20:23:40.876+00	114	\N	978202981	56.31	2155	0.9
2025-07-01 20:25:03.451+00	114	\N	1041420528	55.39	2159	0.9
2025-07-01 20:34:16.391+00	114	\N	978202981	55.8	2167	0.9
2025-07-01 20:41:42.133+00	114	\N	1041420528	54.86	2176	0.9
2025-07-01 20:49:24.303+00	114	\N	978202981	55.29	2178	0.9
2025-07-01 20:52:21.434+00	114	\N	1126982881	53.95	2181	0.9
2025-07-01 21:07:25.539+00	114	\N	1041420528	54.36	2188	0.9
2025-07-01 21:16:03.787+00	114	\N	1126982881	54.46	2198	0.9
2025-07-01 21:20:10.36+00	114	\N	978202981	54.93	2200	0.9
2025-07-01 21:24:07.998+00	114	\N	1126982881	56.84	2205	0.9
2025-07-01 21:24:38.261+00	114	\N	1126982881	54.73	2207	0.9
2025-07-01 21:25:08.526+00	114	\N	1126982881	56.08	2209	0.9
2025-07-01 21:25:38.789+00	114	\N	1126982881	54.77	2211	0.9
2025-07-01 21:36:44.6+00	114	\N	1126982881	57.47	2221	0.9
2025-07-01 21:37:14.863+00	114	\N	1126982881	60.11	2223	0.9
2025-07-01 21:37:45.128+00	114	\N	1126982881	54.92	2225	0.9
2025-07-01 21:38:11.588+00	114	\N	1041420528	54.16	2226	0.9
2025-07-01 21:44:48.81+00	114	\N	1126982881	54.4	2239	0.9
2025-07-01 21:50:56.436+00	114	\N	978202981	54.6	2242	0.9
2025-07-01 22:08:57.611+00	114	\N	1041420528	53.96	2251	0.9
2025-07-02 07:04:06.62+00	114	\N	1041420528	57.92	2651	0.9
2025-07-02 07:04:36.886+00	114	\N	1041420528	56.97	2653	0.9
2025-07-02 07:05:10.941+00	114	\N	1126982881	60.88	2665	0.9
2025-07-02 07:05:37.41+00	114	\N	1041420528	56.37	2666	0.9
2025-07-02 07:06:41.728+00	114	\N	1126982881	60.34	2667	0.9
2025-07-02 07:11:49.187+00	114	\N	978202981	57.43	2670	0.9
2025-07-02 07:13:45.408+00	114	\N	1126982881	59.84	2671	0.9
2025-07-02 07:24:51.203+00	114	\N	1126982881	59.34	2678	0.9
2025-07-02 07:36:23.498+00	114	\N	1041420528	56.3	2687	0.9
2025-07-02 07:42:35.272+00	114	\N	978202981	57.43	2690	0.9
2025-07-02 07:55:06.969+00	114	\N	1126982881	58.84	2698	0.9
2025-07-02 08:07:09.529+00	114	\N	1041420528	56.16	2705	0.9
2025-07-02 08:13:21.367+00	114	\N	978202981	57.55	2708	0.9
2025-07-02 08:25:53.013+00	114	\N	1126982881	58.74	2716	0.9
2025-07-02 08:37:55.546+00	114	\N	1041420528	56.02	2723	0.9
2025-07-02 08:44:07.431+00	114	\N	978202981	57.68	2726	0.9
2025-07-02 08:56:39.079+00	114	\N	1126982881	58.67	2734	0.9
2025-07-02 09:08:41.596+00	114	\N	1041420528	55.89	2741	0.9
2025-07-02 09:14:53.5+00	114	\N	978202981	57.77	2744	0.9
2025-07-02 09:17:19.861+00	114	\N	1126982881	59.28	2750	0.9
2025-07-02 09:17:50.123+00	114	\N	1126982881	60.66	2752	0.9
2025-07-02 09:18:20.394+00	114	\N	1126982881	59.64	2754	0.9
2025-07-02 09:18:50.651+00	114	\N	1126982881	59.12	2758	0.9
2025-07-02 09:19:51.172+00	114	\N	1126982881	58.32	2760	0.9
2025-07-02 09:21:21.962+00	114	\N	1126982881	57.45	2762	0.9
2025-07-02 09:23:53.278+00	114	\N	1126982881	56.91	2769	0.9
2025-07-02 09:25:24.068+00	114	\N	1126982881	57.54	2772	0.9
2025-07-02 09:26:54.854+00	114	\N	1126982881	58.13	2775	0.9
2025-07-02 09:27:25.127+00	114	\N	1126982881	57.3	2777	0.9
2025-07-02 09:28:25.647+00	114	\N	1126982881	56.6	2778	0.9
2025-07-02 09:29:26.166+00	114	\N	1126982881	58.35	2786	0.9
2025-07-02 09:29:56.428+00	114	\N	1126982881	55.97	2787	0.9
2025-07-02 09:32:27.746+00	114	\N	1126982881	55.43	2792	0.9
2025-07-02 09:38:00.653+00	114	\N	1126982881	57.82	2797	0.9
2025-07-02 09:41:02.234+00	114	\N	1126982881	57.72	2810	0.9
2025-07-02 09:41:32.497+00	114	\N	1126982881	56.86	2812	0.9
2025-07-02 09:42:02.763+00	114	\N	1126982881	60.41	2813	0.9
2025-07-02 09:42:33.025+00	114	\N	1126982881	58.69	2815	0.9
2025-07-02 09:43:03.289+00	114	\N	1126982881	59.2	2817	0.9
2025-07-02 09:45:39.553+00	114	\N	978202981	57.84	2827	0.9
2025-07-02 09:45:34.603+00	114	\N	1126982881	60.16	2829	0.9
2025-07-02 09:46:35.125+00	114	\N	1126982881	61.01	2831	0.9
2025-07-02 09:47:05.384+00	114	\N	1126982881	61.55	2833	0.9
2025-07-02 09:47:35.651+00	114	\N	1126982881	62.76	2834	0.9
2025-07-02 09:48:05.913+00	114	\N	1126982881	61.59	2835	0.9
2025-07-02 09:49:36.707+00	114	\N	1126982881	62.12	2841	0.9
2025-07-02 09:55:39.856+00	114	\N	1126982881	60.05	2858	0.9
2025-07-02 09:56:40.381+00	114	\N	1126982881	59.52	2862	0.9
2025-07-02 10:00:42.485+00	114	\N	1126982881	63.06	2867	0.9
2025-07-02 10:01:12.749+00	114	\N	1126982881	68.46	2869	0.9
2025-07-02 10:02:13.273+00	114	\N	1126982881	58.67	2870	0.9
2025-07-02 10:02:43.551+00	114	\N	1126982881	58.14	2874	0.9
2025-07-02 10:04:14.337+00	114	\N	1126982881	57.46	2875	0.9
2025-07-02 10:04:44.598+00	114	\N	1126982881	58.03	2876	0.9
2025-07-02 10:06:45.653+00	114	\N	1126982881	57	2880	0.9
2025-07-02 10:07:15.921+00	114	\N	1126982881	58.26	2881	0.9
2025-07-02 10:08:16.435+00	114	\N	1126982881	57.62	2882	0.9
2025-07-02 10:10:13.665+00	114	\N	1041420528	55.65	2883	0.9
2025-07-02 10:11:18.017+00	114	\N	1126982881	56.55	2886	0.9
2025-07-02 10:11:48.279+00	114	\N	1126982881	55.46	2888	0.9
2025-07-02 10:12:18.545+00	114	\N	1126982881	57.06	2890	0.9
2025-07-02 10:12:48.804+00	114	\N	1126982881	60.69	2892	0.9
2025-07-02 10:13:19.067+00	114	\N	1126982881	59.54	2893	0.9
2025-07-02 10:15:20.109+00	114	\N	1126982881	58.97	2902	0.9
2025-07-02 10:16:25.621+00	114	\N	978202981	57.91	2904	0.9
2025-07-02 10:17:51.427+00	114	\N	1126982881	58.42	2906	0.9
2025-07-02 10:25:55.639+00	114	\N	1126982881	57.92	2914	0.9
2025-07-02 10:40:59.697+00	114	\N	1041420528	55.52	2927	0.9
2025-07-02 10:41:33.79+00	114	\N	1126982881	58.49	2929	0.9
2025-07-02 10:47:11.674+00	114	\N	978202981	57.96	2938	0.9
2025-07-02 11:40:04.303+00	114	\N	1126982881	59.53	2969	0.9
2025-07-02 11:41:04.823+00	114	\N	1126982881	60.04	2972	0.9
2025-07-02 11:42:05.356+00	114	\N	1126982881	59.35	2973	0.9
2025-07-02 11:42:31.786+00	114	\N	1041420528	55.42	2978	0.9
2025-07-02 11:46:07.461+00	114	\N	1126982881	59.86	2991	0.9
2025-07-02 11:46:37.711+00	114	\N	1126982881	60.51	2992	0.9
2025-07-02 11:47:38.235+00	114	\N	1126982881	59.91	2997	0.9
2025-07-02 11:48:43.78+00	114	\N	978202981	57.96	2999	0.9
2025-07-02 11:49:39.285+00	114	\N	1126982881	59.35	3000	0.9
2025-07-02 11:53:41.392+00	114	\N	1126982881	58.85	3001	0.9
2025-07-02 12:08:49.297+00	114	\N	1126982881	58.35	3015	0.9
2025-07-02 12:13:17.844+00	114	\N	1041420528	55.4	3016	0.9
2025-07-02 12:16:23.244+00	114	\N	1126982881	59.3	3021	0.9
2025-07-02 12:18:54.558+00	114	\N	1126982881	58.67	3028	0.9
2025-07-02 12:19:29.814+00	114	\N	978202981	58.04	3032	0.9
2025-07-02 12:21:56.135+00	114	\N	1126982881	58.16	3035	0.9
2025-07-02 12:44:03.891+00	114	\N	1041420528	55.42	3051	0.9
2025-07-02 12:50:15.884+00	114	\N	978202981	58.09	3056	0.9
2025-07-02 12:52:42.194+00	114	\N	1126982881	57.99	3057	0.9
2025-07-02 13:14:49.931+00	114	\N	1041420528	55.42	3069	0.9
2025-07-02 13:21:01.93+00	114	\N	978202981	58.18	3074	0.9
2025-07-02 13:22:57.972+00	114	\N	1126982881	59.04	3077	0.9
2025-07-02 13:25:29.302+00	114	\N	1126982881	58.4	3084	0.9
2025-07-02 13:37:35.611+00	114	\N	1126982881	57.9	3092	0.9
2025-07-02 13:45:36.015+00	114	\N	1041420528	55.5	3098	0.9
2025-07-02 13:51:47.981+00	114	\N	978202981	58.28	3100	0.9
2025-07-02 13:52:43.522+00	114	\N	1126982881	60.3	3102	0.9
2025-07-02 13:53:13.782+00	114	\N	1126982881	61.05	3104	0.9
2025-07-02 13:54:44.57+00	114	\N	1126982881	60.36	3111	0.9
2025-07-02 13:55:14.828+00	114	\N	1126982881	61.02	3114	0.9
2025-07-02 13:56:45.634+00	114	\N	1126982881	60	3116	0.9
2025-07-02 13:58:46.683+00	114	\N	1126982881	61.36	3119	0.9
2025-07-02 14:00:17.48+00	114	\N	1126982881	60.84	3121	0.9
2025-07-02 14:01:48.26+00	114	\N	1126982881	60.23	3126	0.9
2025-07-02 14:04:19.575+00	114	\N	1126982881	59.67	3132	0.9
2025-07-02 14:08:51.938+00	114	\N	1126982881	59.15	3137	0.9
2025-07-02 14:16:22.021+00	114	\N	1041420528	55.57	3143	0.9
2025-07-02 14:17:56.669+00	114	\N	1126982881	58.65	3144	0.9
2025-07-02 14:22:34.002+00	114	\N	978202981	58.33	3148	0.9
2025-07-02 14:47:08.073+00	114	\N	1041420528	55.6	3163	0.9
2025-07-02 14:48:42.737+00	114	\N	1126982881	58.27	3164	0.9
2025-07-02 14:53:20.074+00	114	\N	978202981	58.37	3167	0.9
2025-07-02 15:17:54.106+00	114	\N	1041420528	55.67	3181	0.9
2025-07-02 15:19:28.779+00	114	\N	1126982881	58.12	3182	0.9
2025-07-02 15:24:06.159+00	114	\N	978202981	58.42	3185	0.9
2025-07-02 15:35:06.931+00	114	\N	1126982881	59.98	3193	0.9
2025-07-02 15:36:07.46+00	114	\N	1126982881	66.87	3198	0.9
2025-07-02 15:36:37.725+00	114	\N	1126982881	64.77	3199	0.9
2025-07-02 15:37:07.985+00	114	\N	1126982881	63.66	3201	0.9
2025-07-02 15:37:38.252+00	114	\N	1126982881	62.65	3203	0.9
2025-07-02 15:38:08.518+00	114	\N	1126982881	61.99	3208	0.9
2025-07-02 15:40:09.586+00	114	\N	1126982881	62.74	3211	0.9
2025-07-02 15:41:10.108+00	114	\N	1126982881	61.95	3212	0.9
2025-07-02 15:42:10.633+00	114	\N	1126982881	61.15	3216	0.9
2025-07-02 15:43:41.424+00	114	\N	1126982881	60.5	3217	0.9
2025-07-02 15:45:42.481+00	114	\N	1126982881	60	3222	0.9
2025-07-02 15:48:40.18+00	114	\N	1041420528	55.74	3231	0.9
2025-07-02 15:50:14.843+00	114	\N	1126982881	59.5	3233	0.9
2025-07-02 15:54:52.191+00	114	\N	978202981	58.44	3244	0.9
2025-07-02 15:57:48.777+00	114	\N	1126982881	58.99	3247	0.9
2025-07-02 16:06:53.519+00	114	\N	1126982881	58.48	3256	0.9
2025-07-02 16:19:26.241+00	114	\N	1041420528	55.79	3274	0.9
2025-07-02 16:25:38.242+00	114	\N	978202981	58.49	3282	0.9
2025-07-02 16:35:38.498+00	114	\N	1126982881	57.97	3287	0.9
2025-07-02 16:50:12.264+00	114	\N	1041420528	55.91	3299	0.9
2025-07-02 16:56:24.292+00	114	\N	978202981	58.58	3304	0.9
2025-07-02 17:06:24.535+00	114	\N	1126982881	57.81	3316	0.9
2025-07-02 17:27:10.396+00	114	\N	978202981	58.62	3337	0.9
2025-07-02 17:37:10.572+00	114	\N	1126982881	57.95	3343	0.9
2025-07-02 17:51:44.343+00	114	\N	1041420528	56.03	3351	0.9
2025-07-02 17:57:56.455+00	114	\N	978202981	58.65	3356	0.9
2025-07-02 18:07:56.607+00	114	\N	1126982881	57.96	3361	0.9
2025-07-02 18:22:30.38+00	114	\N	1041420528	56.13	3369	0.9
2025-07-02 18:28:42.515+00	114	\N	978202981	58.71	3376	0.9
2025-07-02 18:38:42.671+00	114	\N	1126982881	57.88	3381	0.9
2025-07-02 18:53:16.432+00	114	\N	1041420528	56.23	3389	0.9
2025-07-02 18:59:28.552+00	114	\N	978202981	58.73	3394	0.9
2025-07-02 19:09:28.689+00	114	\N	1126982881	57.92	3399	0.9
2025-07-02 19:24:02.472+00	114	\N	1041420528	56.3	3407	0.9
2025-07-02 19:30:14.614+00	114	\N	978202981	58.75	3415	0.9
2025-07-02 19:40:14.736+00	114	\N	1126982881	57.96	3421	0.9
2025-07-02 19:45:17.364+00	114	\N	1126982881	57.41	3427	0.9
2025-07-02 19:47:18.416+00	114	\N	1126982881	56.86	3429	0.9
2025-07-02 19:49:49.724+00	114	\N	1126982881	56.35	3430	0.9
2025-07-02 19:52:51.305+00	114	\N	1126982881	55.84	3431	0.9
2025-07-02 19:54:48.503+00	114	\N	1041420528	56.32	3433	0.9
2025-07-02 19:57:23.666+00	114	\N	1126982881	55.28	3437	0.9
2025-07-02 20:01:00.693+00	114	\N	978202981	58.67	3439	0.9
2025-07-02 20:08:29.459+00	114	\N	1126982881	54.76	3444	0.9
2025-07-02 20:14:32.62+00	114	\N	1126982881	54.23	3446	0.9
2025-07-02 20:22:06.572+00	114	\N	1126982881	53.69	3452	0.9
2025-07-02 20:25:34.558+00	114	\N	1041420528	55.97	3457	0.9
2025-07-02 20:31:46.756+00	114	\N	978202981	58.35	3460	0.9
2025-07-02 21:06:59.968+00	114	\N	1126982881	54.41	3484	0.9
2025-07-02 21:16:31.124+00	114	\N	1041420528	55.13	3491	0.9
2025-07-02 21:27:15.708+00	114	\N	978202981	57.54	3497	0.9
2025-07-02 21:37:46.024+00	114	\N	1126982881	54.5	3505	0.9
2025-07-02 21:46:50.761+00	114	\N	1126982881	55.01	3513	0.9
2025-07-02 21:47:17.157+00	114	\N	1041420528	54.88	3514	0.9
2025-07-02 21:58:01.761+00	114	\N	978202981	57.32	3519	0.9
2025-07-02 22:01:54.816+00	114	\N	1041420528	54.38	3520	0.9
2025-07-02 22:17:36.775+00	114	\N	1126982881	55.36	3533	0.9
2025-07-02 22:28:47.828+00	114	\N	978202981	56.87	3540	0.9
2025-07-02 22:29:43.095+00	114	\N	1126982881	55.86	3542	0.9
2025-07-02 22:32:40.862+00	114	\N	1041420528	54.58	3543	0.9
2025-07-02 22:44:50.993+00	114	\N	1126982881	56.36	3555	0.9
2025-07-02 22:51:24.405+00	114	\N	1126982881	56.86	3559	0.9
2025-07-02 22:59:33.883+00	114	\N	978202981	56.93	3564	0.9
2025-07-02 23:03:26.899+00	114	\N	1041420528	54.62	3566	0.9
2025-07-02 23:08:33.353+00	114	\N	1126982881	57.38	3571	0.9
2025-07-02 23:19:39.14+00	114	\N	1126982881	57.88	3581	0.9
2025-07-02 23:30:19.919+00	114	\N	978202981	57.12	3586	0.9
2025-07-02 23:34:12.931+00	114	\N	1041420528	55.07	3589	0.9
2025-07-02 23:43:21.486+00	114	\N	1126982881	58.4	3594	0.9
\.


--
-- Data for Name: _hyper_2_8_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_8_chunk ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
2025-07-03 00:01:05.988+00	114	\N	978202981	57.31	3605	0.9
2025-07-03 00:04:58.984+00	114	\N	1041420528	55.17	3607	0.9
2025-07-03 07:30:30.421+00	114	\N	978202981	60.43	3934	0.9
2025-07-03 07:33:26.676+00	114	\N	1126982881	62.71	3938	0.9
2025-07-03 07:35:57.991+00	114	\N	1126982881	63.25	3942	0.9
2025-07-03 07:40:30.349+00	114	\N	1126982881	63.78	3947	0.9
2025-07-03 07:43:58.453+00	114	\N	1041420528	59.2	3948	0.9
2025-07-03 07:44:32.453+00	114	\N	1126982881	64.38	3949	0.9
2025-07-03 07:50:05.332+00	114	\N	1126982881	64.93	3954	0.9
2025-07-03 07:55:38.234+00	114	\N	1126982881	65.45	3958	0.9
2025-07-03 08:01:16.484+00	114	\N	978202981	60.62	3963	0.9
2025-07-03 08:01:41.382+00	114	\N	1126982881	65.95	3964	0.9
2025-07-03 08:14:44.54+00	114	\N	1041420528	59.2	3969	0.9
2025-07-03 08:15:18.482+00	114	\N	1126982881	66.48	3971	0.9
2025-07-03 08:28:55.593+00	114	\N	1126982881	67	3981	0.9
2025-07-03 08:32:02.549+00	114	\N	978202981	60.67	3983	0.9
2025-07-03 08:45:30.569+00	114	\N	1041420528	59.22	3990	0.9
2025-07-03 08:46:04.519+00	114	\N	1126982881	67.54	3991	0.9
2025-07-03 09:01:12.416+00	114	\N	1126982881	68.04	4001	0.9
2025-07-03 09:02:48.57+00	114	\N	978202981	60.67	4002	0.9
2025-07-03 09:16:16.607+00	114	\N	1041420528	59.18	4011	0.9
2025-07-03 09:31:58.454+00	114	\N	1126982881	67.86	4021	0.9
2025-07-03 09:33:34.634+00	114	\N	978202981	60.64	4023	0.9
2025-07-03 09:47:02.674+00	114	\N	1041420528	59.15	4032	0.9
2025-07-03 09:55:10.528+00	114	\N	1126982881	67.36	4037	0.9
2025-07-03 10:03:14.743+00	114	\N	1126982881	66.84	4043	0.9
2025-07-03 10:04:20.673+00	114	\N	978202981	60.69	4044	0.9
2025-07-03 10:17:48.705+00	114	\N	1041420528	59.08	4051	0.9
2025-07-03 10:32:29.996+00	114	\N	1126982881	66.32	4061	0.9
2025-07-03 10:35:06.73+00	114	\N	978202981	60.71	4062	0.9
2025-07-03 10:48:34.741+00	114	\N	1041420528	59.02	4072	0.9
2025-07-03 10:58:43.674+00	114	\N	1126982881	65.79	4077	0.9
2025-07-03 11:05:52.795+00	114	\N	978202981	60.72	4085	0.9
2025-07-03 11:12:20.764+00	114	\N	1126982881	65.29	4087	0.9
2025-07-03 11:19:20.788+00	114	\N	1041420528	59	4092	0.9
2025-07-03 11:28:29.172+00	114	\N	1126982881	64.79	4097	0.9
2025-07-03 11:36:38.849+00	114	\N	978202981	60.82	4105	0.9
2025-07-03 11:47:08.9+00	114	\N	1126982881	64.21	4112	0.9
2025-07-03 11:50:06.82+00	114	\N	1041420528	58.97	4114	0.9
2025-07-03 12:07:24.885+00	114	\N	978202981	60.79	4125	0.9
2025-07-03 12:17:54.94+00	114	\N	1126982881	63.88	4132	0.9
2025-07-03 12:20:52.865+00	114	\N	1041420528	58.82	4134	0.9
2025-07-03 12:34:33.622+00	114	\N	1126982881	63.37	4142	0.9
2025-07-03 12:38:10.93+00	114	\N	978202981	60.8	4145	0.9
2025-07-03 12:50:11.773+00	114	\N	1126982881	62.87	4152	0.9
2025-07-03 12:51:38.9+00	114	\N	1041420528	58.75	4153	0.9
2025-07-03 14:42:40.404+00	114	\N	1126982881	61.72	4223	0.9
2025-07-03 14:53:46.193+00	114	\N	1126982881	61.21	4228	0.9
2025-07-03 14:54:43.074+00	114	\N	1041420528	58.24	4229	0.9
2025-07-03 15:12:01.166+00	114	\N	978202981	60.68	4241	0.9
2025-07-03 15:24:32.212+00	114	\N	1126982881	60.9	4246	0.9
2025-07-03 15:25:29.108+00	114	\N	1041420528	58.31	4249	0.9
2025-07-03 15:42:47.223+00	114	\N	978202981	60.75	4259	0.9
2025-07-03 15:52:43.327+00	114	\N	1041420528	59.33	4268	0.9
2025-07-03 15:53:43.858+00	114	\N	1041420528	58.63	4276	0.9
2025-07-03 15:55:18.269+00	114	\N	1126982881	60.73	4280	0.9
2025-07-03 16:06:50.689+00	114	\N	1041420528	59.34	4288	0.9
2025-07-03 16:13:33.276+00	114	\N	978202981	60.49	4294	0.9
2025-07-03 16:13:58+00	114	\N	1126982881	61.25	4297	0.9
2025-07-03 16:25:00.163+00	114	\N	1041420528	59.86	4302	0.9
2025-07-03 16:37:40.384+00	114	\N	1126982881	61.76	4309	0.9
2025-07-03 16:44:19.315+00	114	\N	978202981	60.42	4316	0.9
2025-07-03 16:55:46.196+00	114	\N	1041420528	59.92	4320	0.9
2025-07-03 17:08:26.411+00	114	\N	1126982881	62.25	4327	0.9
2025-07-03 17:15:05.372+00	114	\N	978202981	60.43	4334	0.9
2025-07-03 17:26:32.276+00	114	\N	1041420528	60.11	4338	0.9
2025-07-03 17:39:12.455+00	114	\N	1126982881	62.27	4345	0.9
2025-07-03 17:45:51.398+00	114	\N	978202981	60.48	4352	0.9
2025-07-03 17:57:18.321+00	114	\N	1041420528	60	4357	0.9
2025-07-03 18:09:58.497+00	114	\N	1126982881	62.29	4364	0.9
2025-07-03 18:16:37.453+00	114	\N	978202981	60.36	4372	0.9
2025-07-03 18:25:36.662+00	114	\N	1126982881	62.89	4377	0.9
2025-07-03 18:26:37.187+00	114	\N	1126982881	63.6	4379	0.9
2025-07-03 18:27:07.449+00	114	\N	1126982881	64.64	4381	0.9
2025-07-03 18:28:04.372+00	114	\N	1041420528	60.01	4383	0.9
2025-07-03 18:28:07.967+00	114	\N	1126982881	63.71	4384	0.9
2025-07-03 18:29:08.494+00	114	\N	1126982881	63.04	4389	0.9
2025-07-03 18:33:10.603+00	114	\N	1126982881	62.46	4395	0.9
2025-07-03 18:34:41.388+00	114	\N	1126982881	63.29	4399	0.9
2025-07-03 18:35:41.913+00	114	\N	1126982881	62.63	4404	0.9
2025-07-03 18:38:43.489+00	114	\N	1126982881	62.12	4406	0.9
2025-07-03 18:44:46.653+00	114	\N	1126982881	61.59	4415	0.9
2025-07-03 18:47:23.485+00	114	\N	978202981	60.36	4417	0.9
2025-07-03 18:58:50.402+00	114	\N	1041420528	60.2	4424	0.9
2025-07-03 19:15:32.69+00	114	\N	1126982881	61.38	4440	0.9
2025-07-03 19:18:09.523+00	114	\N	978202981	60.45	4441	0.9
2025-07-03 19:29:36.448+00	114	\N	1041420528	60.37	4449	0.9
2025-07-03 19:46:18.73+00	114	\N	1126982881	61.61	4470	0.9
2025-07-03 19:48:55.56+00	114	\N	978202981	60.69	4472	0.9
2025-07-03 20:00:22.479+00	114	\N	1041420528	60.58	4477	0.9
2025-07-03 20:17:04.751+00	114	\N	1126982881	61.95	4491	0.9
2025-07-03 20:19:41.595+00	114	\N	978202981	60.7	4492	0.9
2025-07-03 20:31:08.524+00	114	\N	1041420528	60.62	4497	0.9
2025-07-03 20:34:13.683+00	114	\N	1126982881	62.78	4502	0.9
2025-07-03 20:35:44.476+00	114	\N	1126982881	62.15	4506	0.9
2025-07-03 20:38:15.79+00	114	\N	1126982881	63.25	4510	0.9
2025-07-03 20:38:46.05+00	114	\N	1126982881	62.75	4514	0.9
2025-07-03 20:39:46.581+00	114	\N	1126982881	62.21	4515	0.9
2025-07-03 20:50:27.626+00	114	\N	978202981	60.68	4526	0.9
2025-07-03 20:50:52.365+00	114	\N	1126982881	61.71	4527	0.9
2025-07-03 21:01:54.568+00	114	\N	1041420528	60.87	4532	0.9
2025-07-03 21:09:01.823+00	114	\N	1126982881	62.21	4542	0.9
2025-07-03 21:16:05.494+00	114	\N	1126982881	61.7	4555	0.9
2025-07-03 21:18:36.811+00	114	\N	1126982881	62.52	4558	0.9
2025-07-03 21:21:08.145+00	114	\N	1126982881	61.96	4566	0.9
2025-07-03 21:21:13.694+00	114	\N	978202981	60.84	4568	0.9
2025-07-03 21:32:40.615+00	114	\N	1041420528	61.05	4579	0.9
2025-07-03 21:51:54.191+00	114	\N	1126982881	61.82	4595	0.9
2025-07-03 21:51:59.734+00	114	\N	978202981	61.09	4596	0.9
2025-07-03 22:03:26.649+00	114	\N	1041420528	60.97	4612	0.9
2025-07-03 22:16:06.806+00	114	\N	1126982881	63.27	4622	0.9
2025-07-03 22:17:37.603+00	114	\N	1126982881	62.62	4628	0.9
2025-07-03 22:21:09.444+00	114	\N	1126982881	63.98	4633	0.9
2025-07-03 22:22:09.97+00	114	\N	1126982881	63.16	4638	0.9
2025-07-03 22:22:45.776+00	114	\N	978202981	61.22	4639	0.9
2025-07-03 22:23:40.744+00	114	\N	1126982881	62.66	4641	0.9
2025-07-03 22:27:42.848+00	114	\N	1126982881	62.14	4649	0.9
2025-07-03 22:28:43.377+00	114	\N	1126982881	63.35	4651	0.9
2025-07-03 22:29:43.902+00	114	\N	1126982881	62.6	4655	0.9
2025-07-03 22:31:44.952+00	114	\N	1126982881	62.09	4656	0.9
2025-07-03 22:32:45.474+00	114	\N	1126982881	63	4658	0.9
2025-07-03 22:33:15.738+00	114	\N	1126982881	64.19	4660	0.9
2025-07-03 22:34:12.708+00	114	\N	1041420528	60.88	4666	0.9
2025-07-03 22:34:16.264+00	114	\N	1126982881	63.52	4667	0.9
2025-07-03 22:36:47.573+00	114	\N	1126982881	62.75	4673	0.9
2025-07-03 22:40:19.417+00	114	\N	1126982881	62.25	4676	0.9
2025-07-03 22:41:46.654+00	114	\N	1041420528	61.39	4677	0.9
2025-07-03 22:53:31.814+00	114	\N	978202981	61.6	4687	0.9
2025-07-03 23:04:01.762+00	114	\N	1126982881	63.05	4701	0.9
2025-07-03 23:08:03.875+00	114	\N	1126982881	62.55	4706	0.9
2025-07-03 23:12:32.684+00	114	\N	1041420528	61.13	4712	0.9
2025-07-03 23:16:38.354+00	114	\N	1126982881	63.06	4717	0.9
2025-07-03 23:20:40.458+00	114	\N	1126982881	65.1	4731	0.9
2025-07-03 23:21:40.987+00	114	\N	1126982881	64.21	4733	0.9
2025-07-03 23:22:11.25+00	114	\N	1126982881	64.71	4734	0.9
2025-07-03 23:24:12.301+00	114	\N	1126982881	64.16	4745	0.9
2025-07-03 23:24:17.859+00	114	\N	978202981	61.47	4746	0.9
2025-07-03 23:25:12.832+00	114	\N	1126982881	63.5	4748	0.9
2025-07-03 23:26:43.614+00	114	\N	1126982881	62.86	4753	0.9
2025-07-03 23:28:44.671+00	114	\N	1126982881	62.3	4755	0.9
2025-07-03 23:31:15.977+00	114	\N	1126982881	63.28	4757	0.9
2025-07-03 23:31:46.239+00	114	\N	1126982881	63.8	4759	0.9
2025-07-03 23:34:47.814+00	114	\N	1126982881	63.13	4764	0.9
2025-07-03 23:35:48.347+00	114	\N	1126982881	62.62	4768	0.9
2025-07-03 23:37:49.396+00	114	\N	1126982881	62.08	4772	0.9
2025-07-03 23:38:19.656+00	114	\N	1126982881	62.88	4774	0.9
2025-07-03 23:39:50.438+00	114	\N	1126982881	62.24	4778	0.9
2025-07-03 23:42:21.756+00	114	\N	1126982881	61.69	4781	0.9
2025-07-03 23:43:18.73+00	114	\N	1041420528	61.03	4782	0.9
2025-07-03 23:46:23.859+00	114	\N	1126982881	62.42	4790	0.9
2025-07-03 23:46:54.119+00	114	\N	1126982881	63.7	4791	0.9
2025-07-03 23:48:55.175+00	114	\N	1126982881	64.36	4794	0.9
2025-07-03 23:49:55.702+00	114	\N	1126982881	63.36	4800	0.9
2025-07-03 23:50:56.225+00	114	\N	1126982881	62.49	4802	0.9
2025-07-03 23:52:57.281+00	114	\N	1126982881	61.92	4806	0.9
2025-07-03 23:55:03.879+00	114	\N	978202981	61.27	4813	0.9
2025-07-03 23:55:28.591+00	114	\N	1126982881	61.38	4814	0.9
2025-07-04 00:14:04.783+00	114	\N	1041420528	60.89	4827	0.9
2025-07-04 00:25:49.929+00	114	\N	978202981	61.2	4835	0.9
2025-07-04 05:25:50.823+00	114	\N	1126982881	63.72	5033	0.9
2025-07-04 05:26:26.732+00	114	\N	978202981	62.45	5035	0.9
2025-07-04 05:27:27.256+00	114	\N	978202981	61.68	5039	0.9
2025-07-04 05:33:00.154+00	114	\N	978202981	62.18	5050	0.9
2025-07-04 09:22:29.838+00	114	\N	978202981	69.19	5207	0.9
2025-07-04 09:51:35.934+00	114	\N	1041420528	63.79	5229	0.9
2025-07-04 09:53:10.162+00	114	\N	1126982881	67.96	5238	0.9
2025-07-04 09:53:15.867+00	114	\N	978202981	69.19	5240	0.9
2025-07-04 09:58:48.762+00	114	\N	978202981	68.65	5249	0.9
2025-07-04 10:07:23.229+00	114	\N	978202981	68.13	5266	0.9
2025-07-04 10:08:18.043+00	114	\N	1126982881	68.51	5267	0.9
2025-07-04 10:09:18.57+00	114	\N	1126982881	69.48	5270	0.9
2025-07-04 10:11:46.45+00	114	\N	1041420528	63.24	5275	0.9
2025-07-04 10:11:49.882+00	114	\N	1126982881	68.71	5276	0.9
2025-07-04 10:12:56.127+00	114	\N	978202981	67.6	5279	0.9
2025-07-04 10:13:50.936+00	114	\N	1126982881	68	5283	0.9
2025-07-04 10:14:51.452+00	114	\N	1126982881	67.42	5284	0.9
2025-07-04 10:16:52.508+00	114	\N	1126982881	66.88	5287	0.9
2025-07-04 10:20:54.606+00	114	\N	1126982881	66.33	5290	0.9
2025-07-04 10:22:31.117+00	114	\N	978202981	67.06	5292	0.9
2025-07-04 10:25:57.234+00	114	\N	1126982881	65.81	5296	0.9
2025-07-04 11:01:12.208+00	114	\N	1041420528	62.1	5326	0.9
2025-07-04 11:01:21.394+00	114	\N	978202981	64.38	5327	0.9
2025-07-04 11:03:16.716+00	114	\N	1126982881	64.76	5334	0.9
2025-07-04 11:07:49.093+00	114	\N	1126982881	66.58	5341	0.9
2025-07-04 11:08:19.343+00	114	\N	1126982881	65.81	5343	0.9
2025-07-04 11:09:19.877+00	114	\N	1126982881	65.01	5347	0.9
2025-07-04 11:11:51.188+00	114	\N	1126982881	65.66	5355	0.9
2025-07-04 11:12:51.713+00	114	\N	1126982881	65.02	5359	0.9
2025-07-04 11:13:27.703+00	114	\N	978202981	63.87	5364	0.9
2025-07-04 11:13:52.246+00	114	\N	1126982881	64.52	5365	0.9
2025-07-04 11:18:54.887+00	114	\N	1126982881	63.96	5380	0.9
2025-07-04 11:25:34.008+00	114	\N	978202981	63.36	5390	0.9
2025-07-04 11:31:58.251+00	114	\N	1041420528	61.84	5394	0.9
2025-07-04 11:42:12.685+00	114	\N	978202981	62.83	5403	0.9
2025-07-04 11:45:08.56+00	114	\N	1126982881	63.42	5406	0.9
2025-07-04 11:49:46.632+00	114	\N	978202981	62.33	5407	0.9
2025-07-04 12:02:44.287+00	114	\N	1041420528	61.48	5418	0.9
2025-07-04 12:12:58.733+00	114	\N	978202981	61.78	5426	0.9
2025-07-04 13:23:05.319+00	114	\N	978202981	57.95	5478	0.9
2025-07-04 13:25:27.412+00	114	\N	1041420528	61.82	5482	0.9
2025-07-04 13:25:57.675+00	114	\N	1041420528	61.22	5484	0.9
2025-07-04 13:27:28.463+00	114	\N	1041420528	60.6	5491	0.9
2025-07-04 13:29:08.47+00	114	\N	978202981	57.45	5493	0.9
2025-07-04 13:41:39.291+00	114	\N	1126982881	62.82	5513	0.9
2025-07-04 13:43:10.086+00	114	\N	1126982881	62.32	5519	0.9
2025-07-04 13:48:12.713+00	114	\N	1126982881	61.81	5522	0.9
2025-07-04 13:50:13.759+00	114	\N	1126982881	63.26	5524	0.9
2025-07-04 13:50:44.025+00	114	\N	1126982881	64.04	5525	0.9
2025-07-04 13:51:20.061+00	114	\N	978202981	56.45	5527	0.9
2025-07-04 13:51:44.55+00	114	\N	1126982881	64.57	5528	0.9
2025-07-04 13:57:23.211+00	114	\N	978202981	55.9	5540	0.9
2025-07-04 13:58:14.515+00	114	\N	1041420528	60.62	5542	0.9
2025-07-04 13:58:48.234+00	114	\N	1126982881	63.03	5547	0.9
2025-07-04 13:59:48.764+00	114	\N	1126982881	62.19	5548	0.9
2025-07-04 14:02:50.334+00	114	\N	1126982881	61.66	5561	0.9
2025-07-04 14:05:57.679+00	114	\N	978202981	55.38	5565	0.9
2025-07-04 14:09:23.753+00	114	\N	1126982881	61.16	5575	0.9
2025-07-04 14:11:30.559+00	114	\N	978202981	54.88	5580	0.9
2025-07-04 14:27:08.738+00	114	\N	978202981	54.37	5588	0.9
2025-07-04 14:29:00.583+00	114	\N	1041420528	60.6	5590	0.9
2025-07-04 14:31:10.835+00	114	\N	978202981	53.84	5591	0.9
2025-07-04 14:39:39.509+00	114	\N	1126982881	62.1	5596	0.9
2025-07-04 14:45:18.202+00	114	\N	978202981	53.31	5611	0.9
2025-07-04 14:41:40.559+00	114	\N	1126982881	61.58	5601	0.9
2025-07-04 14:51:15.563+00	114	\N	1126982881	62.94	5623	0.9
2025-07-04 14:51:45.821+00	114	\N	1126982881	63.49	5624	0.9
2025-07-04 14:53:16.609+00	114	\N	1126982881	64.04	5627	0.9
2025-07-04 15:19:00.02+00	114	\N	1126982881	61.25	5662	0.9
2025-07-04 15:20:30.814+00	114	\N	1126982881	60.73	5669	0.9
2025-07-04 15:21:01.077+00	114	\N	1126982881	60.14	5672	0.9
2025-07-04 15:21:06.864+00	114	\N	978202981	51.75	5673	0.9
2025-07-04 15:22:01.605+00	114	\N	1126982881	59.4	5677	0.9
2025-07-04 15:23:32.392+00	114	\N	1126982881	61.21	5681	0.9
2025-07-04 15:24:02.653+00	114	\N	1126982881	72.45	5687	0.9
2025-07-04 15:24:32.924+00	114	\N	1126982881	58.99	5689	0.9
2025-07-04 15:26:33.973+00	114	\N	1126982881	59.87	5698	0.9
2025-07-04 15:27:34.494+00	114	\N	1126982881	61.08	5700	0.9
2025-07-04 15:28:04.757+00	114	\N	1126982881	59.05	5703	0.9
2025-07-04 15:28:31.617+00	114	\N	1041420528	60.15	5704	0.9
2025-07-04 15:30:36.073+00	114	\N	1126982881	59.9	5706	0.9
2025-07-04 15:30:41.881+00	114	\N	978202981	51.24	5707	0.9
2025-07-04 15:32:06.86+00	114	\N	1126982881	59.22	5708	0.9
2025-07-04 15:32:33.732+00	114	\N	1041420528	59.63	5709	0.9
2025-07-04 15:36:08.959+00	114	\N	1126982881	59.77	5713	0.9
2025-07-04 15:37:09.487+00	114	\N	1126982881	59.17	5715	0.9
2025-07-04 15:37:36.357+00	114	\N	1041420528	59.06	5716	0.9
2025-07-04 18:14:31.56+00	114	telegraf	1126982881	59.71	6080	1
2025-07-04 18:14:58.456+00	114	telegraf	1041420528	59.26	6084	1
2025-07-04 18:15:01.82+00	114	telegraf	1126982881	60.79	6085	1
2025-07-04 18:15:32.086+00	114	telegraf	1126982881	59.28	6086	1
2025-07-04 18:16:02.354+00	114	telegraf	1126982881	60.1	6093	1
2025-07-04 18:21:31.877+00	114	telegraf	1041420528	58.07	6108	1
2025-07-04 18:32:41.069+00	114	telegraf	1126982881	61.34	6116	1
2025-07-04 18:33:07.912+00	114	telegraf	1041420528	58.81	6117	1
2025-07-04 18:33:41.598+00	114	telegraf	1126982881	60.5	6121	1
2025-07-04 19:38:45.49+00	114	telegraf	1126982881	62.01	6199	1
2025-07-04 19:39:46.019+00	114	telegraf	1126982881	69.29	6206	1
2025-07-04 19:41:47.069+00	114	telegraf	1126982881	59.81	6211	1
2025-07-04 19:42:47.599+00	114	telegraf	1126982881	61.9	6214	1
2025-07-04 19:43:14.474+00	114	telegraf	1041420528	58.64	6215	1
2025-07-04 19:43:48.119+00	114	telegraf	1126982881	60.51	6216	1
2025-07-04 19:43:53.929+00	114	telegraf	978202981	51.43	6217	1
2025-07-04 19:47:19.958+00	114	telegraf	1126982881	60.62	6221	1
2025-07-04 19:49:51.27+00	114	telegraf	1126982881	60.05	6224	1
2025-07-04 19:50:18.153+00	114	telegraf	1041420528	58.1	6226	1
2025-07-04 19:50:21.538+00	114	telegraf	1126982881	60.79	6227	1
2025-07-04 19:54:23.65+00	114	telegraf	1126982881	60.59	6232	1
2025-07-04 19:57:25.227+00	114	telegraf	1126982881	60.02	6233	1
2025-07-04 20:00:26.802+00	114	telegraf	1126982881	60.78	6236	1
2025-07-04 20:03:58.64+00	114	telegraf	1126982881	60.89	6241	1
2025-07-04 20:04:28.91+00	114	telegraf	1126982881	60.28	6242	1
2025-07-04 20:04:59.172+00	114	telegraf	1126982881	61.46	6243	1
2025-07-04 20:05:59.688+00	114	telegraf	1126982881	60.19	6244	1
2025-07-04 20:09:31.555+00	114	telegraf	1126982881	60.8	6246	1
2025-07-04 20:10:01.822+00	114	telegraf	1126982881	59.89	6248	1
2025-07-04 20:10:32.086+00	114	telegraf	1126982881	60.39	6249	1
2025-07-04 20:13:03.398+00	114	telegraf	1126982881	59.85	6253	1
2025-07-04 20:14:34.186+00	114	telegraf	1126982881	60.64	6254	1
2025-07-04 20:16:04.971+00	114	telegraf	1126982881	59.92	6257	1
2025-07-04 20:16:35.234+00	114	telegraf	1126982881	60.88	6258	1
2025-07-04 20:17:35.766+00	114	telegraf	1126982881	60.16	6259	1
2025-07-04 20:19:06.56+00	114	telegraf	1126982881	59.98	6261	1
2025-07-04 20:19:33.399+00	114	telegraf	1041420528	57.17	6263	1
2025-07-04 20:19:36.82+00	114	telegraf	1126982881	57.3	6265	1
2025-07-04 20:20:07.084+00	114	telegraf	1126982881	56.35	6267	1
2025-07-04 20:20:33.925+00	114	telegraf	1041420528	56.19	6272	1
2025-07-04 20:20:37.351+00	114	telegraf	1126982881	54.59	6273	1
2025-07-04 20:21:04.189+00	114	telegraf	1041420528	55.66	6277	1
2025-07-04 20:21:07.614+00	114	telegraf	1126982881	53.49	6278	1
2025-07-04 20:22:04.715+00	114	telegraf	1041420528	55.03	6280	1
2025-07-04 20:23:08.662+00	114	telegraf	1126982881	52.97	6283	1
2025-07-04 20:24:39.45+00	114	telegraf	1126982881	54.78	6291	1
2025-07-04 20:25:39.984+00	114	telegraf	1126982881	53.24	6301	1
2025-07-04 20:26:37.077+00	114	telegraf	1041420528	53.78	6302	1
2025-07-04 20:26:40.498+00	114	telegraf	1126982881	51.64	6303	1
2025-07-04 20:27:10.758+00	114	telegraf	1126982881	53.64	6305	1
2025-07-04 20:27:41.022+00	114	telegraf	1126982881	52.07	6306	1
2025-07-04 20:32:09.966+00	114	telegraf	1041420528	52.66	6310	1
2025-07-04 20:32:43.655+00	114	telegraf	1126982881	53.05	6312	1
2025-07-04 20:33:44.173+00	114	telegraf	1126982881	51.79	6314	1
2025-07-04 20:34:44.707+00	114	telegraf	1126982881	52.89	6315	1
2025-07-04 20:35:45.228+00	114	telegraf	1126982881	54.13	6319	1
2025-07-04 20:36:45.758+00	114	telegraf	1126982881	52.07	6321	1
2025-07-04 20:37:16.025+00	114	telegraf	1126982881	52.95	6325	1
2025-07-04 20:37:46.278+00	114	telegraf	1126982881	51.94	6326	1
2025-07-04 20:38:16.544+00	114	telegraf	1126982881	53.26	6327	1
2025-07-04 20:38:46.805+00	114	telegraf	1126982881	53.81	6328	1
2025-07-04 20:40:17.595+00	114	telegraf	1126982881	53.13	6330	1
2025-07-04 20:40:47.852+00	114	telegraf	1126982881	51.95	6332	1
2025-07-04 20:42:15.236+00	114	telegraf	1041420528	52.08	6333	1
2025-07-04 20:42:48.912+00	114	telegraf	1126982881	53.76	6335	1
2025-07-04 20:43:19.17+00	114	telegraf	1126982881	52.28	6337	1
2025-07-04 20:45:20.226+00	114	telegraf	1126982881	52.88	6347	1
2025-07-04 20:46:51.008+00	114	telegraf	1126982881	53.8	6348	1
2025-07-04 20:47:21.274+00	114	telegraf	1126982881	52.91	6349	1
2025-07-04 20:48:21.798+00	114	telegraf	1126982881	53.48	6350	1
2025-07-04 20:50:28.653+00	114	telegraf	978202981	52.19	6353	1
2025-07-04 20:54:24.952+00	114	telegraf	1126982881	54.38	6362	1
2025-07-04 20:54:30.768+00	114	telegraf	978202981	52.76	6363	1
2025-07-04 20:54:55.219+00	114	telegraf	1126982881	53.68	6364	1
2025-07-04 20:57:26.53+00	114	telegraf	1126982881	54.27	6366	1
2025-07-04 20:58:27.053+00	114	telegraf	1126982881	53.51	6367	1
2025-07-04 20:59:27.593+00	114	telegraf	1126982881	54.69	6369	1
2025-07-04 20:59:57.85+00	114	telegraf	1126982881	53.21	6370	1
2025-07-04 21:06:01.001+00	114	telegraf	1126982881	53.4	6377	1
2025-07-04 21:06:31.265+00	114	telegraf	1126982881	54.38	6378	1
2025-07-04 21:07:01.525+00	114	telegraf	1126982881	53.86	6379	1
2025-07-04 21:08:07.852+00	114	telegraf	978202981	53.26	6380	1
2025-07-04 21:09:02.572+00	114	telegraf	1126982881	53.19	6381	1
2025-07-04 21:11:33.895+00	114	telegraf	1126982881	53.21	6383	1
2025-07-04 21:12:34.416+00	114	telegraf	1126982881	54	6385	1
2025-07-04 21:13:01.271+00	114	telegraf	1041420528	52.03	6386	1
2025-07-04 21:13:04.674+00	114	telegraf	1126982881	53.15	6387	1
2025-07-04 21:18:07.312+00	114	telegraf	1126982881	53.82	6392	1
2025-07-04 21:20:08.365+00	114	telegraf	1126982881	54.76	6393	1
2025-07-04 21:21:39.149+00	114	telegraf	1126982881	53.61	6397	1
2025-07-04 21:23:40.198+00	114	telegraf	1126982881	55.06	6400	1
2025-07-04 21:24:10.457+00	114	telegraf	1126982881	54.04	6403	1
2025-07-04 21:33:15.187+00	114	telegraf	1126982881	53.54	6409	1
2025-07-04 21:35:12.859+00	114	telegraf	1041420528	52.14	6413	1
2025-07-04 21:38:48.085+00	114	telegraf	1126982881	54.13	6417	1
2025-07-04 21:38:53.891+00	114	telegraf	978202981	53.18	6418	1
2025-07-04 21:43:20.465+00	114	telegraf	1126982881	53.93	6426	1
2025-07-04 21:47:22.561+00	114	telegraf	1126982881	54.43	6432	1
2025-07-04 21:47:52.821+00	114	telegraf	1126982881	55	6433	1
2025-07-04 21:49:23.611+00	114	telegraf	1126982881	54.42	6434	1
2025-07-04 21:52:00.747+00	114	telegraf	978202981	53.68	6436	1
2025-07-04 21:56:57.559+00	114	telegraf	1126982881	53.83	6442	1
2025-07-04 21:58:58.606+00	114	telegraf	1126982881	55.2	6443	1
2025-07-04 21:59:28.871+00	114	telegraf	1126982881	53.85	6444	1
2025-07-04 22:04:31.519+00	114	telegraf	1126982881	54.67	6452	1
2025-07-04 22:05:32.045+00	114	telegraf	1126982881	53.39	6454	1
2025-07-04 22:05:58.906+00	114	telegraf	1041420528	52.21	6455	1
2025-07-04 22:06:02.299+00	114	telegraf	1126982881	54.05	6456	1
2025-07-04 22:09:34.143+00	114	telegraf	1126982881	54.37	6460	1
2025-07-04 22:10:04.404+00	114	telegraf	1126982881	53.74	6461	1
2025-07-04 22:14:36.77+00	114	telegraf	1126982881	54.83	6464	1
2025-07-04 22:15:07.032+00	114	telegraf	1126982881	54.16	6465	1
2025-07-04 22:22:46.795+00	114	telegraf	978202981	53.6	6470	1
2025-07-04 22:32:15.989+00	114	telegraf	1126982881	54.85	6479	1
2025-07-04 22:32:46.252+00	114	telegraf	1126982881	54.05	6480	1
2025-07-04 22:34:47.297+00	114	telegraf	1126982881	55.05	6484	1
2025-07-04 22:35:17.563+00	114	telegraf	1126982881	54.43	6486	1
2025-07-04 22:36:44.933+00	114	telegraf	1041420528	52.18	6488	1
2025-07-04 22:38:19.141+00	114	telegraf	1126982881	55.08	6490	1
2025-07-04 22:44:52.555+00	114	telegraf	1126982881	53.85	6496	1
2025-07-04 22:46:23.351+00	114	telegraf	1126982881	54.42	6498	1
2025-07-04 22:46:53.616+00	114	telegraf	1126982881	53.67	6499	1
2025-07-04 22:47:23.884+00	114	telegraf	1126982881	54.39	6500	1
2025-07-04 22:47:54.146+00	114	telegraf	1126982881	55.68	6501	1
2025-07-04 22:48:24.406+00	114	telegraf	1126982881	53.64	6502	1
2025-07-04 22:51:56.24+00	114	telegraf	1126982881	54.44	6504	1
2025-07-04 22:52:26.506+00	114	telegraf	1126982881	53.59	6505	1
2025-07-04 22:53:32.839+00	114	telegraf	978202981	53.96	6506	1
2025-07-04 22:53:57.291+00	114	telegraf	1126982881	54.26	6507	1
2025-07-04 22:54:27.559+00	114	telegraf	1126982881	53.74	6510	1
2025-07-04 22:56:28.601+00	114	telegraf	1126982881	54.33	6514	1
2025-07-04 22:58:29.651+00	114	telegraf	1126982881	53.44	6515	1
2025-07-04 23:01:31.227+00	114	telegraf	1126982881	54.03	6518	1
2025-07-04 23:04:02.545+00	114	telegraf	1126982881	54.71	6523	1
2025-07-04 23:06:03.598+00	114	telegraf	1126982881	55.3	6529	1
2025-07-04 23:07:04.122+00	114	telegraf	1126982881	54.79	6530	1
2025-07-04 23:07:30.976+00	114	telegraf	1041420528	52.41	6532	1
2025-07-04 23:08:04.647+00	114	telegraf	1126982881	56.37	6535	1
2025-07-04 23:08:34.909+00	114	telegraf	1126982881	55.85	6536	1
2025-07-04 23:09:35.435+00	114	telegraf	1126982881	55.32	6544	1
2025-07-05 07:28:22.105+00	114	telegraf	1041420528	56.5	6911	1
2025-07-05 07:39:31.299+00	114	telegraf	1126982881	59.68	6920	1
2025-07-05 07:45:40.471+00	114	telegraf	978202981	58.03	6924	1
2025-07-05 07:59:08.152+00	114	telegraf	1041420528	56.45	6934	1
2025-07-05 07:59:41.8+00	114	telegraf	1126982881	59.18	6935	1
2025-07-05 08:56:11.263+00	114	telegraf	1126982881	58.77	6970	1
2025-07-05 09:00:40.22+00	114	telegraf	1041420528	56.12	6972	1
2025-07-05 09:08:23.605+00	114	telegraf	978202981	57.11	6976	1
2025-07-05 09:23:52.317+00	114	telegraf	1041420528	55.59	6988	1
2025-07-05 09:34:37.304+00	114	telegraf	978202981	56.6	6994	1
2025-07-05 09:58:49.939+00	114	telegraf	978202981	56.09	7013	1
2025-07-05 10:13:27.56+00	114	telegraf	978202981	55.58	7021	1
2025-07-05 10:18:24.118+00	114	telegraf	1126982881	56.74	7027	1
2025-07-05 10:21:52.555+00	114	telegraf	1041420528	54.05	7030	1
2025-07-05 10:43:13.092+00	114	telegraf	978202981	55.08	7041	1
2025-07-05 12:19:54.083+00	114	telegraf	1041420528	54.99	7105	1
2025-07-05 12:29:02.246+00	114	telegraf	1126982881	57.7	7110	1
2025-07-05 12:42:45.451+00	114	telegraf	978202981	55.89	7118	1
2025-07-05 12:48:42.504+00	114	telegraf	1126982881	57.18	7126	1
2025-07-05 12:49:09.335+00	114	telegraf	1041420528	54.44	7127	1
2025-07-05 13:13:31.486+00	114	telegraf	978202981	55.51	7138	1
2025-07-05 13:18:28.02+00	114	telegraf	1126982881	56.67	7144	1
2025-07-05 13:19:55.389+00	114	telegraf	1041420528	53.98	7146	1
2025-07-05 13:35:12.807+00	114	telegraf	978202981	55.01	7153	1
2025-07-05 13:43:10.895+00	114	telegraf	1126982881	56.17	7157	1
2025-07-05 13:44:07.991+00	114	telegraf	1041420528	53.47	7158	1
2025-07-05 13:54:22.798+00	114	telegraf	978202981	54.47	7165	1
2025-07-05 14:07:53.794+00	114	telegraf	1126982881	55.65	7175	1
2025-07-05 14:08:50.876+00	114	telegraf	1041420528	52.94	7176	1
2025-07-05 14:39:36.924+00	114	telegraf	1041420528	52.64	7195	1
2025-07-05 14:50:15.858+00	114	telegraf	1126982881	54.86	7202	1
2025-07-05 14:50:22.006+00	114	telegraf	978202981	53.65	7203	1
2025-07-05 15:10:22.964+00	114	telegraf	1041420528	52.28	7213	1
2025-07-05 15:21:01.908+00	114	telegraf	1126982881	54.91	7222	1
2025-07-05 15:21:08.067+00	114	telegraf	978202981	53.52	7223	1
2025-07-05 15:41:09.029+00	114	telegraf	1041420528	52.14	7233	1
2025-07-05 15:51:47.932+00	114	telegraf	1126982881	54.66	7240	1
2025-07-05 15:51:54.142+00	114	telegraf	978202981	53.28	7241	1
2025-07-05 16:42:41.11+00	114	telegraf	1041420528	52.35	7270	1
2025-07-05 16:48:47.655+00	114	telegraf	1126982881	55.29	7274	1
2025-07-05 16:53:26.24+00	114	telegraf	978202981	53.56	7278	1
2025-07-05 16:58:22.638+00	114	telegraf	1126982881	54.78	7282	1
2025-07-05 17:13:27.184+00	114	telegraf	1041420528	52.03	7289	1
2025-07-05 17:29:08.691+00	114	telegraf	1126982881	54.97	7304	1
2025-07-05 17:35:08.481+00	114	telegraf	1041420528	52.54	7308	1
2025-07-05 17:54:58.341+00	114	telegraf	978202981	53.54	7318	1
2025-07-05 17:59:54.717+00	114	telegraf	1126982881	54.97	7322	1
2025-07-05 18:05:24.275+00	114	telegraf	1041420528	52.03	7326	1
2025-07-05 19:35:41.318+00	114	telegraf	1041420528	46.46	7419	1
2025-07-05 19:35:44.681+00	114	telegraf	1126982881	49.26	7420	1
2025-07-05 19:39:22.781+00	114	telegraf	978202981	48.45	7424	1
2025-07-05 19:45:19.686+00	114	telegraf	1126982881	49.77	7430	1
2025-07-05 19:56:52.366+00	114	telegraf	1041420528	47.61	7440	1
2025-07-05 19:56:55.739+00	114	telegraf	1126982881	50.37	7441	1
2025-07-05 20:05:06.193+00	114	telegraf	978202981	48.96	7451	1
2025-07-05 20:06:27.365+00	114	telegraf	1041420528	48.17	7456	1
2025-07-05 20:06:30.732+00	114	telegraf	1126982881	50.94	7457	1
2025-07-05 20:09:38.554+00	114	telegraf	978202981	49.52	7461	1
2025-07-05 20:26:07.63+00	114	telegraf	1041420528	48.79	7471	1
2025-07-05 20:26:41.242+00	114	telegraf	1126982881	51.51	7473	1
2025-07-05 20:27:48.019+00	114	telegraf	978202981	50.02	7475	1
2025-07-05 20:54:22.347+00	114	telegraf	1041420528	49.33	7488	1
2025-07-05 20:54:55.963+00	114	telegraf	1126982881	52.02	7489	1
2025-07-05 20:58:34.05+00	114	telegraf	978202981	50.49	7496	1
2025-07-05 21:25:42.009+00	114	telegraf	1126982881	52.52	7515	1
2025-07-05 21:28:49.85+00	114	telegraf	978202981	51	7522	1
2025-07-05 21:30:11.026+00	114	telegraf	1041420528	50.48	7523	1
2025-07-05 21:30:44.63+00	114	telegraf	1126982881	53.07	7524	1
2025-07-05 21:32:51.952+00	114	telegraf	978202981	51.5	7525	1
2025-07-05 21:36:47.795+00	114	telegraf	1126982881	53.57	7533	1
2025-07-05 21:41:26.417+00	114	telegraf	978202981	52	7537	1
2025-07-05 22:04:28.905+00	114	telegraf	1041420528	51.12	7555	1
2025-07-05 22:07:33.83+00	114	telegraf	1126982881	53.67	7559	1
2025-07-05 22:12:12.452+00	114	telegraf	978202981	52.13	7564	1
2025-07-05 22:26:10.223+00	114	telegraf	1041420528	50.62	7574	1
2025-07-05 22:32:46.958+00	114	telegraf	1126982881	53.17	7579	1
2025-07-05 22:42:58.497+00	114	telegraf	978202981	51.7	7587	1
2025-07-05 22:49:22.348+00	114	telegraf	1041420528	50.11	7592	1
2025-07-05 22:55:59.067+00	114	telegraf	1126982881	52.66	7597	1
2025-07-05 23:13:34.955+00	114	telegraf	1041420528	49.61	7609	1
2025-07-05 23:17:10.113+00	114	telegraf	1126982881	52.16	7612	1
2025-07-05 23:28:52.411+00	114	telegraf	978202981	50.69	7621	1
2025-07-07 09:06:14.842+00	114	telegraf	1041420528	55.34	11	1
2025-07-07 09:18:01.643+00	114	telegraf	527134251	59.58	174	1
2025-07-07 09:18:31.033+00	114	telegraf	978202981	56.12	29	1
2025-07-07 09:19:02.178+00	114	telegraf	527134251	58.78	183	1
2025-07-07 09:24:04.687+00	114	telegraf	527134251	60.28	190	1
2025-07-07 09:25:05.218+00	114	telegraf	527134251	58.87	192	1
2025-07-07 09:25:38.492+00	114	telegraf	1523842139	60.8	194	1
2025-07-07 09:26:05.726+00	114	telegraf	527134251	58.22	200	1
2025-07-07 09:26:39.924+00	114	telegraf	840973111	64.9	203	1
2025-07-07 09:27:10.189+00	114	telegraf	840973111	63.08	207	1
2025-07-07 09:27:40.447+00	114	telegraf	840973111	62.01	209	1
2025-07-07 09:28:06.756+00	114	telegraf	527134251	59.05	213	1
2025-07-07 09:28:40.976+00	114	telegraf	840973111	61.48	215	1
2025-07-07 09:28:37.011+00	114	telegraf	527134251	58.37	217	1
2025-07-07 09:29:07.268+00	114	telegraf	527134251	58.91	219	1
2025-07-07 09:31:08.42+00	114	telegraf	527134251	58.33	234	1
2025-07-07 09:39:12.582+00	114	telegraf	527134251	59.26	264	1
2025-07-07 09:48:17.299+00	114	telegraf	527134251	59.14	4	1
2025-07-07 09:48:47.572+00	114	telegraf	527134251	58.46	6	1
2025-07-07 09:49:17.17+00	114	telegraf	978202981	56.49	68	1
2025-07-07 09:51:22.847+00	114	telegraf	840973111	61.15	12	1
2025-07-07 09:51:53.11+00	114	telegraf	840973111	60.28	15	1
2025-07-07 09:52:53.638+00	114	telegraf	840973111	59.06	19	1
2025-07-07 09:54:24.429+00	114	telegraf	840973111	59.97	21	1
2025-07-07 09:55:24.954+00	114	telegraf	840973111	59.27	22	1
2025-07-07 09:55:24.087+00	114	telegraf	1523842139	58.07	23	1
2025-07-07 09:58:26.536+00	114	telegraf	840973111	59.89	34	1
2025-07-07 09:58:25.671+00	114	telegraf	1523842139	57.56	35	1
2025-07-07 09:59:27.065+00	114	telegraf	840973111	55.49	39	1
2025-07-07 09:59:49.063+00	114	telegraf	840973111	59.03	43	1
2025-07-07 10:07:46.837+00	114	telegraf	1041420528	56.05	100	1
2025-07-07 10:52:43.511+00	114	telegraf	1126982881	58.42	1	1
2025-07-07 10:53:44.078+00	114	telegraf	1126982881	57.8	3	1
2025-07-07 11:01:14.816+00	114	telegraf	1041420528	56.06	27	1
2025-07-07 11:21:35.18+00	114	telegraf	978202981	56.77	62	1
2025-07-07 11:30:33.228+00	114	telegraf	1126982881	58.81	67	1
2025-07-07 11:32:00.855+00	114	telegraf	1041420528	56.06	71	1
2025-07-07 11:40:08.227+00	114	telegraf	1126982881	59.38	84	1
2025-07-07 11:47:11.909+00	114	telegraf	1126982881	59.92	93	1
2025-07-07 11:47:42.174+00	114	telegraf	1126982881	59.39	94	1
2025-07-07 11:52:21.264+00	114	telegraf	978202981	56.85	115	1
2025-07-07 11:53:45.327+00	114	telegraf	1126982881	58.84	116	1
2025-07-07 11:53:27.909+00	114	telegraf	3839865	62.73	118	1
2025-07-07 12:02:46.91+00	114	telegraf	1041420528	56.02	127	1
2025-07-07 12:14:24.222+00	114	telegraf	305822513	61.76	153	1
2025-07-07 12:14:26.083+00	114	telegraf	1126982881	59.81	154	1
2025-07-07 12:14:56.343+00	114	telegraf	1126982881	59.09	155	1
2025-07-07 12:24:13.956+00	114	telegraf	3839865	62.73	172	1
2025-07-07 12:28:49.008+00	114	telegraf	632461688	61.25	192	1
2025-07-07 12:30:04.264+00	114	telegraf	1126982881	60.98	195	1
2025-07-07 12:30:34.526+00	114	telegraf	1126982881	60.39	197	1
2025-07-07 12:30:31.405+00	114	telegraf	1041420528	57.5	199	1
2025-07-07 12:31:35.058+00	114	telegraf	1126982881	59.8	205	1
2025-07-07 12:34:36.64+00	114	telegraf	1126982881	59.28	209	1
2025-07-07 12:53:53.383+00	114	telegraf	978202981	57.14	238	1
2025-07-07 12:55:00.023+00	114	telegraf	3839865	62.7	243	1
2025-07-07 12:59:35.053+00	114	telegraf	632461688	61.38	260	1
2025-07-07 12:55:50.836+00	114	telegraf	840973111	58.94	266	1
2025-07-07 12:56:28.531+00	114	telegraf	1523842139	55.61	276	1
2025-07-07 13:01:47.699+00	114	telegraf	1041420528	56.42	301	1
2025-07-07 13:05:22.654+00	114	telegraf	1126982881	59.37	357	1
2025-07-07 13:09:52.105+00	114	telegraf	333419537	66.6	388	1
2025-07-07 13:16:44.608+00	114	telegraf	677224097	57.11	418	1
2025-07-07 13:24:39.403+00	114	telegraf	978202981	57.25	484	1
2025-07-07 13:25:45.996+00	114	telegraf	3839865	62.73	489	1
2025-07-07 13:30:21.09+00	114	telegraf	632461688	61.52	509	1
2025-07-07 13:32:33.707+00	114	telegraf	1041420528	56.52	517	1
2025-07-07 13:36:08.66+00	114	telegraf	1126982881	59.54	530	1
2025-07-07 13:26:14.065+00	114	telegraf	1523842139	56.62	546	1
2025-07-07 13:26:36.898+00	114	telegraf	840973111	58.97	547	1
2025-07-07 13:40:38.144+00	114	telegraf	333419537	66.48	587	1
2025-07-07 13:42:45.405+00	114	telegraf	840973111	59.18	642	1
2025-07-07 13:43:33.245+00	114	telegraf	791308911	56.76	654	1
2025-07-07 13:43:23.025+00	114	telegraf	1523842139	57.05	661	1
2025-07-07 13:46:42.466+00	114	telegraf	305822513	62.02	665	1
2025-07-07 13:55:25.458+00	114	telegraf	978202981	57.35	737	1
2025-07-07 13:59:28.408+00	114	telegraf	527134251	56.04	795	1
2025-07-07 14:03:19.761+00	114	telegraf	1041420528	56.6	809	1
2025-07-07 14:03:30.513+00	114	telegraf	527134251	57.65	813	1
2025-07-07 14:03:30.511+00	114	telegraf	527134251	57.65	814	1
2025-07-07 14:03:26.21+00	114	telegraf	840973111	59.96	815	1
2025-07-07 14:06:54.732+00	114	telegraf	1126982881	59.48	820	1
2025-07-07 14:06:01.824+00	114	telegraf	527134251	56.38	833	1
2025-07-07 14:07:58.586+00	114	telegraf	840973111	59.44	836	1
2025-07-07 14:10:34.197+00	114	telegraf	527134251	57.36	850	1
2025-07-07 14:11:07.499+00	114	telegraf	1523842139	58.23	855	1
2025-07-07 14:11:24.165+00	114	telegraf	333419537	66.36	860	1
2025-07-07 14:11:34.719+00	114	telegraf	527134251	56.86	868	1
2025-07-07 14:12:00.688+00	114	telegraf	840973111	59.49	870	1
2025-07-07 14:12:08.023+00	114	telegraf	1523842139	57.67	872	1
2025-07-07 14:10:25.203+00	114	telegraf	974018563	63.67	890	1
2025-07-07 14:05:52.729+00	114	telegraf	974018563	63.12	898	1
2025-07-07 14:12:24.685+00	114	telegraf	2045592530	60.7	901	1
2025-07-07 14:10:55.461+00	114	telegraf	974018563	64.62	903	1
2025-07-07 14:10:53.913+00	114	telegraf	2045592530	60.11	906	1
2025-07-07 14:14:19.463+00	114	telegraf	791308911	56.61	930	1
2025-07-07 14:22:40.498+00	114	telegraf	527134251	57.37	1008	1
2025-07-07 14:26:11.607+00	114	telegraf	978202981	57.13	1016	1
2025-07-07 14:27:02.137+00	114	telegraf	1041420528	56.07	1022	1
2025-07-07 14:36:06.889+00	114	telegraf	1041420528	55.56	1066	1
2025-07-07 14:39:18.423+00	114	telegraf	978202981	56.59	1087	1
2025-07-07 14:39:27.25+00	114	telegraf	632461688	60.32	1089	1
2025-07-07 14:42:10.18+00	114	telegraf	333419537	66.34	1121	1
2025-07-07 14:45:05.539+00	114	telegraf	791308911	56.55	1138	1
2025-07-07 14:48:14.654+00	114	telegraf	305822513	61.79	1165	1
2025-07-07 14:48:16.295+00	114	telegraf	1126982881	57.89	1166	1
2025-07-07 14:48:13.208+00	114	telegraf	1041420528	55.06	1167	1
2025-07-07 14:50:02.764+00	114	telegraf	632461688	59.71	1176	1
2025-07-07 14:49:21.111+00	114	telegraf	23439212	63.39	1181	1
2025-07-07 14:49:41.733+00	114	telegraf	720958279	58.52	1182	1
2025-07-07 14:53:04.348+00	114	telegraf	632461688	59.06	1195	1
2025-07-07 14:53:31.766+00	114	telegraf	3839865	62.03	1196	1
2025-07-07 14:53:56.048+00	114	telegraf	978202981	56.07	1198	1
2025-07-08 07:57:55.673+00	114	telegraf	3839865	60.19	57	1
2025-07-08 08:07:55.409+00	114	telegraf	527134251	61.06	72	1
2025-07-08 08:08:09.346+00	114	telegraf	791308911	55.79	73	1
2025-07-08 08:09:26.053+00	114	telegraf	978202981	54.12	75	1
2025-07-08 08:27:55.644+00	114	telegraf	1041420528	55.57	135	1
2025-07-08 08:28:56.164+00	114	telegraf	1041420528	53.69	138	1
2025-07-08 08:29:26.455+00	114	telegraf	1041420528	53.03	149	1
2025-07-08 08:30:57.24+00	114	telegraf	1041420528	52.47	158	1
2025-07-08 08:32:41.587+00	114	telegraf	1523842139	65.63	164	1
2025-07-08 08:38:00.906+00	114	telegraf	1041420528	51.94	172	1
2025-07-08 08:38:41.412+00	114	telegraf	527134251	61.48	173	1
2025-07-08 08:39:30.778+00	114	telegraf	333419537	64.91	179	1
2025-07-08 08:40:12.025+00	114	telegraf	978202981	54.37	180	1
2025-07-08 08:41:21.754+00	114	telegraf	677224097	55.66	190	1
2025-07-08 08:42:16.566+00	114	telegraf	1523842139	66.14	194	1
2025-07-08 08:47:11.666+00	114	telegraf	840973111	64.73	205	1
2025-07-08 08:48:06.277+00	114	telegraf	1041420528	51.43	207	1
2025-07-08 08:51:41.276+00	114	telegraf	1126982881	55.84	228	1
2025-07-08 08:56:40.691+00	114	telegraf	1041420528	50.89	236	1
2025-07-08 09:04:13.797+00	114	telegraf	333419537	64.39	261	1
2025-07-08 09:06:56.316+00	114	telegraf	527134251	61.98	266	1
2025-07-08 09:09:41.529+00	114	telegraf	791308911	55.23	271	1
2025-07-08 09:10:58.203+00	114	telegraf	978202981	54.36	276	1
2025-07-08 09:12:07.924+00	114	telegraf	677224097	55.38	279	1
2025-07-08 09:17:21.523+00	114	telegraf	1041420528	50.36	295	1
2025-07-09 09:23:25.911+00	114	telegraf	1041420528	49.56	4	1
2025-07-09 09:24:29.205+00	114	telegraf	1126982881	51.13	10	1
2025-07-09 09:35:18.681+00	114	telegraf	207892874	50.58	28	1
2025-07-09 09:37:43.17+00	114	telegraf	978202981	48.63	31	1
2025-07-09 09:55:15.192+00	114	telegraf	1126982881	51.5	54	1
2025-07-09 10:08:29.206+00	114	telegraf	978202981	48.9	64	1
2025-07-09 10:22:56.875+00	114	telegraf	1041420528	50.41	102	1
2025-07-09 10:26:01.226+00	114	telegraf	1126982881	51.89	111	1
2025-07-09 10:28:39.727+00	114	telegraf	978202981	49.45	124	1
2025-07-09 13:40:09.755+00	114	telegraf	1041420528	47.97	571	1
2025-07-09 13:44:11.857+00	114	telegraf	1041420528	47.46	575	1
2025-07-09 13:46:45.844+00	114	telegraf	1126982881	52.58	585	1
2025-07-09 13:51:45.79+00	114	telegraf	1041420528	46.39	591	1
\.


--
-- Data for Name: _hyper_3_10_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_10_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-07-03 00:05:03.313+00	127	\N	978202981	stationary	0	0	6	-1	65	3608	0.9
2025-07-03 00:05:10.785+00	127	\N	1041420528	stationary	0	0	5	0	65	3609	0.9
2025-07-03 00:08:34.726+00	127	\N	1126982881	stationary	0	0	3	-1	65	3611	0.9
2025-07-03 07:05:05.722+00	127	\N	978202981	stationary	0	0	6	-1	65	3913	0.9
2025-07-03 07:05:12.818+00	127	\N	1041420528	stationary	0	0	4	1	64	3914	0.9
2025-07-03 07:08:36.984+00	127	\N	1126982881	stationary	0	0	3	-1	66	3916	0.9
2025-07-03 07:35:05.913+00	127	\N	978202981	stationary	0	0	7	-1	64	3939	0.9
2025-07-03 07:35:13.021+00	127	\N	1041420528	stationary	0	0	3	0	63	3940	0.9
2025-07-03 07:39:36.121+00	127	\N	1126982881	stationary	0	0	4	-2	65	3945	0.9
2025-07-03 07:45:05.99+00	127	\N	978202981	stationary	0	0	6	-1	65	3950	0.9
2025-07-03 07:45:13.112+00	127	\N	1041420528	stationary	0	0	3	1	64	3951	0.9
2025-07-03 07:49:36.161+00	127	\N	1126982881	stationary	0	0	4	-2	66	3953	0.9
2025-07-03 07:55:06.033+00	127	\N	978202981	stationary	0	0	6	-2	65	3956	0.9
2025-07-03 07:55:13.19+00	127	\N	1041420528	stationary	0	0	3	1	63	3957	0.9
2025-07-03 07:59:36.201+00	127	\N	1126982881	stationary	0	0	4	-2	66	3962	0.9
2025-07-03 08:05:06.07+00	127	\N	978202981	stationary	0	0	7	0	66	3965	0.9
2025-07-03 08:05:13.248+00	127	\N	1041420528	stationary	0	0	3	1	64	3966	0.9
2025-07-03 08:09:36.244+00	127	\N	1126982881	stationary	0	0	3	-2	65	3968	0.9
2025-07-03 08:15:06.1+00	127	\N	978202981	stationary	0	0	7	-1	65	3970	0.9
2025-07-03 08:15:13.289+00	127	\N	1041420528	stationary	0	0	4	0	64	3972	0.9
2025-07-03 08:19:36.278+00	127	\N	1126982881	stationary	0	0	4	-2	66	3973	0.9
2025-07-03 08:25:06.137+00	127	\N	978202981	stationary	0	0	6	-1	65	3976	0.9
2025-07-03 08:25:13.333+00	127	\N	1041420528	stationary	0	0	3	1	64	3977	0.9
2025-07-03 08:29:36.343+00	127	\N	1126982881	stationary	0	0	4	-1	65	3982	0.9
2025-07-03 08:35:06.175+00	127	\N	978202981	stationary	0	0	5	-2	65	3984	0.9
2025-07-03 08:35:13.388+00	127	\N	1041420528	stationary	0	0	4	1	64	3985	0.9
2025-07-03 08:39:36.405+00	127	\N	1126982881	stationary	0	0	3	-2	64	3987	0.9
2025-07-03 08:45:06.205+00	127	\N	978202981	stationary	0	0	7	-1	66	3988	0.9
2025-07-03 08:45:13.427+00	127	\N	1041420528	stationary	0	0	4	1	64	3989	0.9
2025-07-03 08:49:36.455+00	127	\N	1126982881	stationary	0	0	4	-2	67	3992	0.9
2025-07-03 08:55:06.248+00	127	\N	978202981	stationary	0	0	6	-1	65	3995	0.9
2025-07-03 08:55:13.47+00	127	\N	1041420528	stationary	0	0	5	0	65	3996	0.9
2025-07-03 08:59:36.5+00	127	\N	1126982881	stationary	0	0	4	-1	65	4000	0.9
2025-07-03 09:05:06.313+00	127	\N	978202981	stationary	0	0	7	-2	65	4004	0.9
2025-07-03 09:05:13.521+00	127	\N	1041420528	stationary	0	0	4	1	64	4005	0.9
2025-07-03 09:09:36.562+00	127	\N	1126982881	stationary	0	0	4	-1	66	4006	0.9
2025-07-03 09:15:06.338+00	127	\N	978202981	stationary	0	0	6	0	64	4009	0.9
2025-07-03 09:15:13.563+00	127	\N	1041420528	stationary	0	0	4	1	63	4010	0.9
2025-07-03 09:19:36.648+00	127	\N	1126982881	stationary	0	0	3	-1	65	4012	0.9
2025-07-03 09:25:06.371+00	127	\N	978202981	stationary	0	0	7	-1	64	4014	0.9
2025-07-03 09:25:13.599+00	127	\N	1041420528	stationary	0	0	4	0	64	4015	0.9
2025-07-03 09:29:36.799+00	127	\N	1126982881	stationary	0	0	4	-2	66	4020	0.9
2025-07-03 09:35:06.417+00	127	\N	978202981	stationary	0	0	6	-1	64	4024	0.9
2025-07-03 09:35:13.637+00	127	\N	1041420528	stationary	0	0	3	1	64	4025	0.9
2025-07-03 09:39:36.847+00	127	\N	1126982881	stationary	0	0	4	-2	65	4026	0.9
2025-07-03 09:45:06.45+00	127	\N	978202981	stationary	0	0	7	-1	64	4030	0.9
2025-07-03 09:45:13.689+00	127	\N	1041420528	stationary	0	0	3	1	63	4031	0.9
2025-07-03 09:49:36.884+00	127	\N	1126982881	stationary	0	0	3	-2	66	4033	0.9
2025-07-03 09:55:06.505+00	127	\N	978202981	stationary	0	0	6	-2	65	4036	0.9
2025-07-03 09:55:13.785+00	127	\N	1041420528	stationary	0	0	4	0	63	4038	0.9
2025-07-03 09:59:36.952+00	127	\N	1126982881	stationary	0	0	3	-2	64	4042	0.9
2025-07-03 10:05:06.573+00	127	\N	978202981	stationary	0	0	6	-2	65	4045	0.9
2025-07-03 10:05:13.85+00	127	\N	1041420528	stationary	0	0	4	1	64	4046	0.9
2025-07-03 10:09:36.989+00	127	\N	1126982881	stationary	0	0	3	-2	66	4047	0.9
2025-07-03 10:15:06.657+00	127	\N	978202981	stationary	0	0	7	-2	64	4049	0.9
2025-07-03 10:15:13.897+00	127	\N	1041420528	stationary	0	0	4	1	63	4050	0.9
2025-07-03 10:19:37.024+00	127	\N	1126982881	stationary	0	0	4	-2	65	4052	0.9
2025-07-03 10:25:06.748+00	127	\N	978202981	stationary	0	0	7	-1	64	4054	0.9
2025-07-03 10:25:13.987+00	127	\N	1041420528	stationary	0	0	4	0	65	4055	0.9
2025-07-03 10:29:37.078+00	127	\N	1126982881	stationary	0	0	4	-1	65	4057	0.9
2025-07-03 10:35:06.875+00	127	\N	978202981	stationary	0	0	6	-1	65	4063	0.9
2025-07-03 10:35:14.08+00	127	\N	1041420528	stationary	0	0	4	1	63	4064	0.9
2025-07-03 10:39:37.122+00	127	\N	1126982881	stationary	0	0	4	-1	64	4067	0.9
2025-07-03 10:45:06.923+00	127	\N	978202981	stationary	0	0	7	-1	65	4070	0.9
2025-07-03 10:45:14.154+00	127	\N	1041420528	stationary	0	0	4	1	63	4071	0.9
2025-07-03 10:49:37.187+00	127	\N	1126982881	stationary	0	0	3	-1	65	4073	0.9
2025-07-03 10:55:06.955+00	127	\N	978202981	stationary	0	0	6	-2	64	4074	0.9
2025-07-03 10:55:14.198+00	127	\N	1041420528	stationary	0	0	5	2	64	4075	0.9
2025-07-03 10:59:37.226+00	127	\N	1126982881	stationary	0	0	4	-2	64	4078	0.9
2025-07-03 11:05:06.993+00	127	\N	978202981	stationary	0	0	7	-1	65	4083	0.9
2025-07-03 11:05:14.237+00	127	\N	1041420528	stationary	0	0	4	0	64	4084	0.9
2025-07-03 11:09:37.28+00	127	\N	1126982881	stationary	0	0	4	-2	65	4086	0.9
2025-07-03 11:15:07.032+00	127	\N	978202981	stationary	0	0	6	-1	65	4089	0.9
2025-07-03 11:15:14.274+00	127	\N	1041420528	stationary	0	0	4	1	63	4090	0.9
2025-07-03 11:19:37.332+00	127	\N	1126982881	stationary	0	0	4	-1	65	4093	0.9
2025-07-03 11:25:07.069+00	127	\N	978202981	stationary	0	0	6	-2	65	4094	0.9
2025-07-03 11:25:14.314+00	127	\N	1041420528	stationary	0	0	5	2	63	4095	0.9
2025-07-03 11:29:37.396+00	127	\N	1126982881	stationary	0	0	4	-2	66	4098	0.9
2025-07-03 11:35:07.131+00	127	\N	978202981	stationary	0	0	7	-1	66	4103	0.9
2025-07-03 11:35:14.354+00	127	\N	1041420528	stationary	0	0	2	0	64	4104	0.9
2025-07-03 11:39:37.478+00	127	\N	1126982881	stationary	0	0	4	-2	65	4106	0.9
2025-07-03 11:45:07.185+00	127	\N	978202981	stationary	0	0	6	-1	66	4110	0.9
2025-07-03 11:45:14.399+00	127	\N	1041420528	stationary	0	0	4	1	63	4111	0.9
2025-07-03 11:49:37.553+00	127	\N	1126982881	stationary	0	0	4	-2	66	4113	0.9
2025-07-03 11:55:07.226+00	127	\N	978202981	stationary	0	0	6	-1	65	4115	0.9
2025-07-03 11:55:14.433+00	127	\N	1041420528	stationary	0	0	4	1	64	4116	0.9
2025-07-03 11:59:37.62+00	127	\N	1126982881	stationary	0	0	4	-2	65	4119	0.9
2025-07-03 12:05:07.271+00	127	\N	978202981	stationary	0	0	6	-2	65	4123	0.9
2025-07-03 12:05:14.478+00	127	\N	1041420528	stationary	0	0	4	1	64	4124	0.9
2025-07-03 12:09:37.668+00	127	\N	1126982881	stationary	0	0	3	-2	65	4126	0.9
2025-07-03 12:15:07.327+00	127	\N	978202981	stationary	0	0	7	-2	65	4129	0.9
2025-07-03 12:15:14.54+00	127	\N	1041420528	stationary	0	0	4	1	64	4130	0.9
2025-07-03 12:19:37.771+00	127	\N	1126982881	stationary	0	0	5	-1	66	4133	0.9
2025-07-03 12:25:07.407+00	127	\N	978202981	stationary	0	0	7	-2	64	4135	0.9
2025-07-03 12:25:14.588+00	127	\N	1041420528	stationary	0	0	5	1	63	4136	0.9
2025-07-03 12:29:37.811+00	127	\N	1126982881	stationary	0	0	4	-2	65	4138	0.9
2025-07-03 12:35:07.473+00	127	\N	978202981	stationary	0	0	6	-1	66	4143	0.9
2025-07-03 12:35:14.643+00	127	\N	1041420528	stationary	0	0	3	1	63	4144	0.9
2025-07-03 12:39:37.854+00	127	\N	1126982881	stationary	0	0	4	-2	66	4146	0.9
2025-07-03 12:45:07.57+00	127	\N	978202981	stationary	0	0	6	-1	65	4149	0.9
2025-07-03 12:45:14.736+00	127	\N	1041420528	stationary	0	0	4	1	64	4150	0.9
2025-07-03 12:49:37.893+00	127	\N	1126982881	stationary	0	0	3	-1	65	4151	0.9
2025-07-03 12:55:07.707+00	127	\N	978202981	stationary	0	0	7	-2	65	4154	0.9
2025-07-03 12:55:14.805+00	127	\N	1041420528	stationary	0	0	4	1	64	4155	0.9
2025-07-03 14:45:08.113+00	127	\N	978202981	stationary	0	0	6	-1	65	4224	0.9
2025-07-03 14:45:15.284+00	127	\N	1041420528	stationary	0	0	4	1	65	4225	0.9
2025-07-03 14:49:38.589+00	127	\N	1126982881	stationary	0	0	4	-1	65	4227	0.9
2025-07-03 14:55:08.172+00	127	\N	978202981	stationary	0	0	7	-1	65	4230	0.9
2025-07-03 14:55:15.365+00	127	\N	1041420528	stationary	0	0	4	1	64	4231	0.9
2025-07-03 14:59:38.632+00	127	\N	1126982881	stationary	0	0	4	-1	66	4232	0.9
2025-07-03 15:05:08.238+00	127	\N	978202981	stationary	0	0	6	-1	66	4234	0.9
2025-07-03 15:05:15.423+00	127	\N	1041420528	stationary	0	0	4	1	64	4235	0.9
2025-07-03 15:09:38.665+00	127	\N	1126982881	stationary	0	0	4	-2	66	4240	0.9
2025-07-03 15:15:08.337+00	127	\N	978202981	stationary	0	0	5	-2	66	4242	0.9
2025-07-03 15:15:15.487+00	127	\N	1041420528	stationary	0	0	4	0	64	4243	0.9
2025-07-03 15:19:38.713+00	127	\N	1126982881	stationary	0	0	4	-1	65	4245	0.9
2025-07-03 15:25:08.437+00	127	\N	978202981	stationary	0	0	7	-1	64	4247	0.9
2025-07-03 15:25:15.564+00	127	\N	1041420528	stationary	0	0	4	2	64	4248	0.9
2025-07-03 15:29:38.75+00	127	\N	1126982881	stationary	0	0	4	-2	66	4250	0.9
2025-07-03 15:35:08.473+00	127	\N	978202981	stationary	0	0	6	-1	65	4252	0.9
2025-07-03 15:35:15.622+00	127	\N	1041420528	stationary	0	0	4	0	64	4253	0.9
2025-07-03 15:39:38.828+00	127	\N	1126982881	stationary	0	0	3	-1	65	4258	0.9
2025-07-03 15:45:08.553+00	127	\N	978202981	stationary	0	0	7	-1	66	4260	0.9
2025-07-03 15:45:15.674+00	127	\N	1041420528	stationary	0	0	4	0	64	4261	0.9
2025-07-03 15:49:38.883+00	127	\N	1126982881	stationary	0	0	4	-2	66	4263	0.9
2025-07-03 15:52:01.891+00	127	\N	1126982881	start-moving	0	1	42	0	31	4265	0.9
2025-07-03 15:52:36.702+00	127	\N	1041420528	start-moving	0	1	-70	28	-12	4266	0.9
2025-07-03 15:52:40.579+00	127	\N	978202981	start-moving	0	1	47	-4	83	4267	0.9
2025-07-03 15:53:03.894+00	127	\N	1126982881	stop-moving	4	5	4	-2	66	4269	0.9
2025-07-03 15:53:40.578+00	127	\N	978202981	stop-moving	1	1	6	-1	65	4272	0.9
2025-07-03 15:53:43.713+00	127	\N	1041420528	stop-moving	9	10	3	-2	64	4275	0.9
2025-07-03 16:03:03.945+00	127	\N	1126982881	stationary	0	0	5	-1	66	4283	0.9
2025-07-03 16:03:40.612+00	127	\N	978202981	stationary	0	0	8	-1	65	4285	0.9
2025-07-03 16:03:43.784+00	127	\N	1041420528	stationary	0	0	3	-2	64	4286	0.9
2025-07-03 16:13:04.036+00	127	\N	1126982881	stationary	0	0	3	-1	65	4293	0.9
2025-07-03 16:13:43.824+00	127	\N	1041420528	stationary	0	0	3	-1	63	4295	0.9
2025-07-03 16:13:40.661+00	127	\N	978202981	stationary	0	0	6	-1	66	4296	0.9
2025-07-03 16:23:04.111+00	127	\N	1126982881	stationary	0	0	4	-2	64	4299	0.9
2025-07-03 16:23:40.719+00	127	\N	978202981	stationary	0	0	6	-2	65	4300	0.9
2025-07-03 16:23:43.861+00	127	\N	1041420528	stationary	0	0	3	-1	65	4301	0.9
2025-07-03 16:33:04.214+00	127	\N	1126982881	stationary	0	0	4	-2	65	4304	0.9
2025-07-03 16:33:40.837+00	127	\N	978202981	stationary	0	0	7	-1	64	4305	0.9
2025-07-03 16:33:43.893+00	127	\N	1041420528	stationary	0	0	3	-1	65	4306	0.9
2025-07-03 16:43:04.308+00	127	\N	1126982881	stationary	0	0	4	-2	65	4313	0.9
2025-07-03 16:43:40.87+00	127	\N	978202981	stationary	0	0	7	-1	65	4314	0.9
2025-07-03 16:43:43.933+00	127	\N	1041420528	stationary	0	0	3	-2	64	4315	0.9
2025-07-03 16:53:04.39+00	127	\N	1126982881	stationary	0	0	5	-1	66	4317	0.9
2025-07-03 16:53:40.909+00	127	\N	978202981	stationary	0	0	7	-1	66	4318	0.9
2025-07-03 16:53:43.971+00	127	\N	1041420528	stationary	0	0	4	-1	65	4319	0.9
2025-07-03 17:03:04.432+00	127	\N	1126982881	stationary	0	0	4	-2	65	4323	0.9
2025-07-03 17:03:40.95+00	127	\N	978202981	stationary	0	0	7	-2	64	4324	0.9
2025-07-03 17:03:44.011+00	127	\N	1041420528	stationary	0	0	3	-2	64	4325	0.9
2025-07-03 17:13:04.479+00	127	\N	1126982881	stationary	0	0	3	-1	66	4331	0.9
2025-07-03 17:13:41.025+00	127	\N	978202981	stationary	0	0	6	-1	65	4332	0.9
2025-07-03 17:13:44.048+00	127	\N	1041420528	stationary	0	0	2	-1	63	4333	0.9
2025-07-03 17:23:04.527+00	127	\N	1126982881	stationary	0	0	4	-2	65	4335	0.9
2025-07-03 17:23:41.133+00	127	\N	978202981	stationary	0	0	6	-1	64	4336	0.9
2025-07-03 17:23:44.086+00	127	\N	1041420528	stationary	0	0	3	-2	64	4337	0.9
2025-07-03 17:33:04.571+00	127	\N	1126982881	stationary	0	0	4	-2	65	4341	0.9
2025-07-03 17:33:41.272+00	127	\N	978202981	stationary	0	0	8	-1	66	4342	0.9
2025-07-03 17:33:44.131+00	127	\N	1041420528	stationary	0	0	2	-2	64	4343	0.9
2025-07-03 17:43:04.645+00	127	\N	1126982881	stationary	0	0	3	-2	66	4349	0.9
2025-07-03 17:43:41.381+00	127	\N	978202981	stationary	0	0	7	-1	64	4350	0.9
2025-07-03 17:43:44.174+00	127	\N	1041420528	stationary	0	0	3	-1	64	4351	0.9
2025-07-03 17:53:04.689+00	127	\N	1126982881	stationary	0	0	4	-3	65	4354	0.9
2025-07-03 17:53:41.413+00	127	\N	978202981	stationary	0	0	7	-2	65	4355	0.9
2025-07-03 17:53:44.226+00	127	\N	1041420528	stationary	0	0	4	-1	64	4356	0.9
2025-07-03 18:03:04.735+00	127	\N	1126982881	stationary	0	0	4	-2	66	4360	0.9
2025-07-03 18:03:41.454+00	127	\N	978202981	stationary	0	0	7	-2	65	4361	0.9
2025-07-03 18:03:44.3+00	127	\N	1041420528	stationary	0	0	4	-2	64	4362	0.9
2025-07-03 18:13:04.786+00	127	\N	1126982881	stationary	0	0	4	-1	66	4369	0.9
2025-07-03 18:13:41.496+00	127	\N	978202981	stationary	0	0	6	-1	65	4370	0.9
2025-07-03 18:13:44.352+00	127	\N	1041420528	stationary	0	0	3	-2	64	4371	0.9
2025-07-03 18:23:04.865+00	127	\N	1126982881	stationary	0	0	3	-2	65	4373	0.9
2025-07-03 18:23:41.53+00	127	\N	978202981	stationary	0	0	7	-1	65	4374	0.9
2025-07-03 18:23:44.451+00	127	\N	1041420528	stationary	0	0	3	-2	65	4375	0.9
2025-07-03 18:25:04.865+00	127	\N	1126982881	start-moving	0	1	-105	-2	-3	4376	0.9
2025-07-03 18:28:10.907+00	127	\N	1126982881	stop-moving	69	21	3	-2	66	4385	0.9
2025-07-03 18:29:40.922+00	127	\N	1126982881	start-moving	0	1	-34	37	-9	4390	0.9
2025-07-03 18:30:45.925+00	127	\N	1126982881	stop-moving	7	5	3	-3	66	4391	0.9
2025-07-03 18:33:41.592+00	127	\N	978202981	stationary	0	0	7	-1	64	4396	0.9
2025-07-03 18:33:44.499+00	127	\N	1041420528	stationary	0	0	4	-1	65	4397	0.9
2025-07-03 18:34:05.942+00	127	\N	1126982881	start-moving	0	1	7	10	65	4398	0.9
2025-07-03 18:35:05.948+00	127	\N	1126982881	stop-moving	15	2	3	-4	65	4400	0.9
2025-07-03 18:43:41.633+00	127	\N	978202981	stationary	0	0	7	-1	66	4413	0.9
2025-07-03 18:43:44.567+00	127	\N	1041420528	stationary	0	0	3	-2	63	4414	0.9
2025-07-03 18:45:06.078+00	127	\N	1126982881	stationary	0	0	3	-4	64	4416	0.9
2025-07-03 18:51:35.142+00	127	\N	1126982881	start-moving	0	1	2	-2	70	4418	0.9
2025-07-03 18:52:38.145+00	127	\N	1126982881	stop-moving	4	2	3	-2	65	4419	0.9
2025-07-03 18:53:41.67+00	127	\N	978202981	stationary	0	0	7	-1	65	4422	0.9
2025-07-03 18:53:44.606+00	127	\N	1041420528	stationary	0	0	3	-1	64	4423	0.9
2025-07-03 19:02:38.185+00	127	\N	1126982881	stationary	0	0	3	-1	65	4426	0.9
2025-07-03 19:03:41.702+00	127	\N	978202981	stationary	0	0	7	-1	65	4428	0.9
2025-07-03 19:03:44.642+00	127	\N	1041420528	stationary	0	0	4	-2	64	4429	0.9
2025-07-03 19:07:14.203+00	127	\N	1126982881	start-moving	0	1	127	95	127	4430	0.9
2025-07-03 19:08:14.203+00	127	\N	1126982881	stop-moving	3	1	4	1	65	4431	0.9
2025-07-03 19:13:41.742+00	127	\N	978202981	stationary	0	0	7	-1	65	4438	0.9
2025-07-03 19:13:44.682+00	127	\N	1041420528	stationary	0	0	2	-1	64	4439	0.9
2025-07-03 19:18:14.245+00	127	\N	1126982881	stationary	0	0	4	1	65	4442	0.9
2025-07-03 19:23:41.786+00	127	\N	978202981	stationary	0	0	6	-1	67	4443	0.9
2025-07-03 19:23:44.715+00	127	\N	1041420528	stationary	0	0	3	-1	64	4444	0.9
2025-07-03 19:26:36.272+00	127	\N	1126982881	start-moving	0	1	24	-6	92	4445	0.9
2025-07-03 19:27:36.274+00	127	\N	1126982881	stop-moving	5	1	4	-2	65	4446	0.9
2025-07-03 19:32:03.293+00	127	\N	1126982881	start-moving	0	1	33	-58	56	4450	0.9
2025-07-03 19:33:03.295+00	127	\N	1126982881	stop-moving	3	1	20	-1	64	4451	0.9
2025-07-03 19:33:41.865+00	127	\N	978202981	stationary	0	0	7	-2	64	4456	0.9
2025-07-03 19:33:44.756+00	127	\N	1041420528	stationary	0	0	3	-1	64	4457	0.9
2025-07-03 19:34:49.307+00	127	\N	1126982881	start-moving	0	1	-17	-27	8	4458	0.9
2025-07-03 19:35:53.313+00	127	\N	1126982881	stop-moving	5	3	7	12	63	4459	0.9
2025-07-03 19:43:41.925+00	127	\N	978202981	stationary	0	0	7	-1	65	4464	0.9
2025-07-03 19:43:44.797+00	127	\N	1041420528	stationary	0	0	2	-1	64	4466	0.9
2025-07-03 19:45:53.346+00	127	\N	1126982881	stationary	0	0	6	13	64	4469	0.9
2025-07-03 19:53:42.047+00	127	\N	978202981	stationary	0	0	7	-1	65	4474	0.9
2025-07-03 19:53:44.829+00	127	\N	1041420528	stationary	0	0	4	-1	65	4475	0.9
2025-07-03 19:55:53.393+00	127	\N	1126982881	stationary	0	0	7	12	64	4476	0.9
2025-07-03 20:03:42.172+00	127	\N	978202981	stationary	0	0	6	-1	65	4478	0.9
2025-07-03 20:03:44.874+00	127	\N	1041420528	stationary	0	0	3	-2	64	4479	0.9
2025-07-03 20:05:53.457+00	127	\N	1126982881	stationary	0	0	4	6	65	4482	0.9
2025-07-03 20:13:42.236+00	127	\N	978202981	stationary	0	0	6	-1	65	4485	0.9
2025-07-03 20:13:44.929+00	127	\N	1041420528	stationary	0	0	3	-2	64	4486	0.9
2025-07-03 20:15:53.492+00	127	\N	1126982881	stationary	0	0	3	4	64	4490	0.9
2025-07-03 20:23:42.273+00	127	\N	978202981	stationary	0	0	7	-2	65	4493	0.9
2025-07-03 20:23:44.964+00	127	\N	1041420528	stationary	0	0	3	-1	65	4494	0.9
2025-07-03 20:25:53.54+00	127	\N	1126982881	stationary	0	0	4	5	65	4496	0.9
2025-07-03 20:33:39.573+00	127	\N	1126982881	start-moving	0	1	-30	-29	-18	4499	0.9
2025-07-03 20:33:42.308+00	127	\N	978202981	stationary	0	0	7	-1	65	4500	0.9
2025-07-03 20:33:45.026+00	127	\N	1041420528	stationary	0	0	3	-1	65	4501	0.9
2025-07-03 20:34:38.575+00	127	\N	1126982881	stop-moving	9	1	4	-3	66	4503	0.9
2025-07-03 20:37:36.586+00	127	\N	1126982881	start-moving	0	1	2	-10	-61	4508	0.9
2025-07-03 20:38:37.601+00	127	\N	1126982881	stop-moving	13	2	3	0	65	4511	0.9
2025-07-03 20:42:19.634+00	127	\N	1126982881	start-moving	0	1	20	-10	40	4516	0.9
2025-07-03 20:43:19.645+00	127	\N	1126982881	stop-moving	3	1	3	8	64	4517	0.9
2025-07-03 20:43:42.35+00	127	\N	978202981	stationary	0	0	6	-2	65	4520	0.9
2025-07-03 20:43:45.091+00	127	\N	1041420528	stationary	0	0	3	-2	65	4521	0.9
2025-07-03 20:53:19.708+00	127	\N	1126982881	stationary	0	0	3	5	65	4528	0.9
2025-07-03 20:53:42.407+00	127	\N	978202981	stationary	0	0	7	-1	65	4530	0.9
2025-07-03 20:53:45.133+00	127	\N	1041420528	stationary	0	0	3	-2	64	4531	0.9
2025-07-03 21:01:56.774+00	127	\N	1126982881	start-moving	0	1	14	-9	127	4533	0.9
2025-07-03 21:02:56.772+00	127	\N	1126982881	stop-moving	4	1	5	-1	65	4535	0.9
2025-07-03 21:03:42.441+00	127	\N	978202981	stationary	0	0	7	-1	65	4538	0.9
2025-07-03 21:03:45.19+00	127	\N	1041420528	stationary	0	0	4	-1	64	4539	0.9
2025-07-03 21:08:38.819+00	127	\N	1126982881	start-moving	0	1	-57	22	-23	4541	0.9
2025-07-03 21:09:43.83+00	127	\N	1126982881	stop-moving	6	2	3	-2	66	4543	0.9
2025-07-03 21:09:56.821+00	127	\N	1126982881	start-moving	0	1	-12	-35	59	4546	0.9
2025-07-03 21:10:56.849+00	127	\N	1126982881	stop-moving	6	1	3	-3	65	4547	0.9
2025-07-03 21:13:42.483+00	127	\N	978202981	stationary	0	0	7	-1	66	4551	0.9
2025-07-03 21:13:45.259+00	127	\N	1041420528	stationary	0	0	4	-1	64	4552	0.9
2025-07-03 21:18:02.965+00	127	\N	1126982881	start-moving	0	1	56	-32	37	4557	0.9
2025-07-03 21:19:15.986+00	127	\N	1126982881	stop-moving	8	3	4	3	65	4559	0.9
2025-07-03 21:19:16.976+00	127	\N	1126982881	start-moving	0	1	-42	14	69	4560	0.9
2025-07-03 21:20:17.991+00	127	\N	1126982881	stop-moving	4	2	3	-3	64	4563	0.9
2025-07-03 21:21:10.993+00	127	\N	1126982881	start-moving	0	1	116	92	-72	4567	0.9
2025-07-03 21:22:11.001+00	127	\N	1126982881	stop-moving	2	1	3	-1	66	4569	0.9
2025-07-03 21:23:42.529+00	127	\N	978202981	stationary	0	0	7	-1	66	4572	0.9
2025-07-03 21:23:45.348+00	127	\N	1041420528	stationary	0	0	2	-2	64	4573	0.9
2025-07-03 21:29:16.025+00	127	\N	1126982881	start-moving	0	1	-7	21	-47	4575	0.9
2025-07-03 21:30:15.027+00	127	\N	1126982881	stop-moving	7	1	2	-1	65	4576	0.9
2025-07-03 21:33:42.571+00	127	\N	978202981	stationary	0	0	7	-1	65	4581	0.9
2025-07-03 21:33:45.384+00	127	\N	1041420528	stationary	0	0	3	-1	63	4582	0.9
2025-07-03 21:35:38.046+00	127	\N	1126982881	start-moving	0	1	-5	-95	119	4583	0.9
2025-07-03 21:36:37.046+00	127	\N	1126982881	stop-moving	4	1	4	-1	66	4584	0.9
2025-07-03 21:43:42.629+00	127	\N	978202981	stationary	0	0	7	-1	65	4588	0.9
2025-07-03 21:43:45.422+00	127	\N	1041420528	stationary	0	0	3	-2	64	4589	0.9
2025-07-03 21:46:37.082+00	127	\N	1126982881	stationary	0	0	3	-1	65	4590	0.9
2025-07-03 21:53:29.117+00	127	\N	1126982881	start-moving	0	1	31	-95	-83	4597	0.9
2025-07-03 21:53:42.722+00	127	\N	978202981	stationary	0	0	7	-1	66	4598	0.9
2025-07-03 21:53:45.458+00	127	\N	1041420528	stationary	0	0	3	-1	64	4599	0.9
2025-07-03 21:54:29.119+00	127	\N	1126982881	stop-moving	5	1	3	-1	65	4600	0.9
2025-07-03 21:54:30.116+00	127	\N	1126982881	start-moving	0	1	-21	42	-46	4601	0.9
2025-07-03 21:55:30.123+00	127	\N	1126982881	stop-moving	5	1	3	-1	65	4604	0.9
2025-07-03 21:55:32.124+00	127	\N	1126982881	start-moving	0	1	-14	-41	-58	4607	0.9
2025-07-03 21:56:36.127+00	127	\N	1126982881	stop-moving	5	2	3	-2	66	4608	0.9
2025-07-03 22:03:42.803+00	127	\N	978202981	stationary	0	0	7	-2	65	4613	0.9
2025-07-03 22:03:45.503+00	127	\N	1041420528	stationary	0	0	3	-2	65	4614	0.9
2025-07-03 22:06:36.171+00	127	\N	1126982881	stationary	0	0	2	-1	66	4617	0.9
2025-07-03 22:13:42.937+00	127	\N	978202981	stationary	0	0	7	-1	64	4619	0.9
2025-07-03 22:13:45.537+00	127	\N	1041420528	stationary	0	0	3	-1	64	4620	0.9
2025-07-03 22:15:42.205+00	127	\N	1126982881	start-moving	0	1	-2	7	83	4621	0.9
2025-07-03 22:16:42.204+00	127	\N	1126982881	stop-moving	8	1	2	-1	64	4623	0.9
2025-07-03 22:20:23.222+00	127	\N	1126982881	start-moving	0	1	35	26	89	4631	0.9
2025-07-03 22:21:57.245+00	127	\N	1126982881	stop-moving	28	13	3	-1	65	4634	0.9
2025-07-03 22:22:52.267+00	127	\N	1126982881	start-moving	0	1	74	-56	23	4640	0.9
2025-07-03 22:23:42.981+00	127	\N	978202981	stationary	0	0	6	-2	65	4642	0.9
2025-07-03 22:23:45.571+00	127	\N	1041420528	stationary	0	0	3	-2	64	4643	0.9
2025-07-03 22:23:52.268+00	127	\N	1126982881	stop-moving	4	1	3	-1	65	4644	0.9
2025-07-03 22:28:12.3+00	127	\N	1126982881	start-moving	0	1	-49	45	40	4650	0.9
2025-07-03 22:29:20.315+00	127	\N	1126982881	stop-moving	11	4	2	-1	66	4652	0.9
2025-07-03 22:32:06.326+00	127	\N	1126982881	start-moving	0	1	20	-1	86	4657	0.9
2025-07-03 22:33:43.014+00	127	\N	978202981	stationary	0	0	7	-2	64	4661	0.9
2025-07-03 22:33:45.608+00	127	\N	1041420528	stationary	0	0	3	-2	63	4662	0.9
2025-07-03 22:33:50.333+00	127	\N	1126982881	stop-moving	23	6	3	-1	65	4663	0.9
2025-07-03 22:34:56.348+00	127	\N	1126982881	start-moving	0	1	3	0	65	4668	0.9
2025-07-03 22:36:31.352+00	127	\N	1126982881	stop-moving	7	4	3	-2	67	4670	0.9
2025-07-03 22:43:43.062+00	127	\N	978202981	stationary	0	0	7	-1	65	4679	0.9
2025-07-03 22:43:45.652+00	127	\N	1041420528	stationary	0	0	3	-1	65	4680	0.9
2025-07-03 22:46:31.395+00	127	\N	1126982881	stationary	0	0	2	-1	65	4683	0.9
2025-07-03 22:53:43.114+00	127	\N	978202981	stationary	0	0	6	-1	65	4688	0.9
2025-07-03 22:53:45.698+00	127	\N	1041420528	stationary	0	0	4	-1	64	4689	0.9
2025-07-03 22:53:58.431+00	127	\N	1126982881	start-moving	0	1	-18	-12	73	4690	0.9
2025-07-03 22:54:58.434+00	127	\N	1126982881	stop-moving	4	1	3	-1	66	4691	0.9
2025-07-03 22:56:44.436+00	127	\N	1126982881	start-moving	0	1	2	-1	68	4694	0.9
2025-07-03 22:57:43.446+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	4695	0.9
2025-07-03 23:03:31.476+00	127	\N	1126982881	start-moving	0	1	-31	7	67	4698	0.9
2025-07-03 23:03:43.16+00	127	\N	978202981	stationary	0	0	7	-2	65	4699	0.9
2025-07-03 23:03:45.738+00	127	\N	1041420528	stationary	0	0	4	-2	64	4700	0.9
2025-07-03 23:04:31.498+00	127	\N	1126982881	stop-moving	6	2	2	-1	65	4702	0.9
2025-07-03 23:10:41.552+00	127	\N	1126982881	start-moving	0	1	119	127	-128	4708	0.9
2025-07-03 23:11:43.552+00	127	\N	1126982881	stop-moving	3	2	3	-2	65	4709	0.9
2025-07-03 23:13:43.236+00	127	\N	978202981	stationary	0	0	7	-1	66	4714	0.9
2025-07-03 23:13:45.781+00	127	\N	1041420528	stationary	0	0	3	-1	64	4715	0.9
2025-07-03 23:16:07.578+00	127	\N	1126982881	start-moving	0	1	-35	83	-94	4716	0.9
2025-07-03 23:17:10.588+00	127	\N	1126982881	stop-moving	4	2	3	-1	65	4718	0.9
2025-07-03 23:17:38.587+00	127	\N	1126982881	start-moving	0	1	14	12	72	4721	0.9
2025-07-03 23:18:49.603+00	127	\N	1126982881	stop-moving	10	5	2	-2	66	4723	0.9
2025-07-03 23:19:54.602+00	127	\N	1126982881	start-moving	0	1	-8	-16	74	4729	0.9
2025-07-03 23:22:52.638+00	127	\N	1126982881	stop-moving	46	21	5	-1	65	4735	0.9
2025-07-03 23:22:56.64+00	127	\N	1126982881	start-moving	0	1	8	-65	-28	4738	0.9
2025-07-03 23:23:43.272+00	127	\N	978202981	stationary	0	0	6	-1	65	4739	0.9
2025-07-03 23:23:45.85+00	127	\N	1041420528	stationary	0	0	3	-1	63	4740	0.9
2025-07-03 23:24:09.656+00	127	\N	1126982881	stop-moving	14	7	4	0	65	4741	0.9
2025-07-03 23:24:53.677+00	127	\N	1126982881	start-moving	0	1	3	-1	65	4747	0.9
2025-07-03 23:26:05.695+00	127	\N	1126982881	stop-moving	3	3	4	-1	66	4749	0.9
2025-07-03 23:30:48.729+00	127	\N	1126982881	start-moving	0	1	-6	-57	-30	4756	0.9
2025-07-03 23:33:43.323+00	127	\N	978202981	stationary	0	0	7	-1	65	4761	0.9
2025-07-03 23:33:45.903+00	127	\N	1041420528	stationary	0	0	4	-1	64	4762	0.9
2025-07-03 23:34:52.762+00	127	\N	1126982881	stop-moving	54	18	2	-2	65	4765	0.9
2025-07-03 23:37:57.782+00	127	\N	1126982881	start-moving	0	1	4	-13	66	4773	0.9
2025-07-03 23:39:05.79+00	127	\N	1126982881	stop-moving	9	2	1	-1	66	4775	0.9
2025-07-03 23:42:18.801+00	127	\N	1126982881	start-moving	0	1	2	-1	89	4780	0.9
2025-07-03 23:43:18.814+00	127	\N	1126982881	stop-moving	4	1	2	-2	65	4783	0.9
2025-07-03 23:43:43.364+00	127	\N	978202981	stationary	0	0	6	-1	65	4786	0.9
2025-07-03 23:43:45.964+00	127	\N	1041420528	stationary	0	0	4	-2	64	4787	0.9
2025-07-03 23:45:31.821+00	127	\N	1126982881	start-moving	0	1	59	37	66	4789	0.9
2025-07-03 23:49:53.843+00	127	\N	1126982881	stop-moving	52	31	0	-1	67	4796	0.9
2025-07-03 23:52:07.875+00	127	\N	1126982881	start-moving	0	1	127	-69	127	4805	0.9
2025-07-03 23:53:06.871+00	127	\N	1126982881	stop-moving	3	1	3	0	65	4807	0.9
2025-07-03 23:53:43.408+00	127	\N	978202981	stationary	0	0	7	-2	66	4810	0.9
2025-07-03 23:53:46.039+00	127	\N	1041420528	stationary	0	0	3	-1	63	4811	0.9
2025-07-04 00:03:06.921+00	127	\N	1126982881	stationary	0	0	2	-1	66	4818	0.9
2025-07-04 00:03:43.475+00	127	\N	978202981	stationary	0	0	7	-2	64	4819	0.9
2025-07-04 00:03:46.102+00	127	\N	1041420528	stationary	0	0	3	-1	64	4820	0.9
2025-07-04 00:13:06.963+00	127	\N	1126982881	stationary	0	0	2	0	65	4824	0.9
2025-07-04 00:13:43.527+00	127	\N	978202981	stationary	0	0	8	-1	65	4825	0.9
2025-07-04 00:13:46.166+00	127	\N	1041420528	stationary	0	0	3	-2	63	4826	0.9
2025-07-04 00:23:06.991+00	127	\N	1126982881	stationary	0	0	4	0	66	4832	0.9
2025-07-04 00:23:43.698+00	127	\N	978202981	stationary	0	0	7	-1	66	4833	0.9
2025-07-04 00:23:46.201+00	127	\N	1041420528	stationary	0	0	3	-2	65	4834	0.9
2025-07-04 05:26:00.76+00	127	\N	978202981	start-moving	0	1	1	-37	68	5034	0.9
2025-07-04 05:27:20.777+00	127	\N	978202981	stop-moving	21	20	4	-2	65	5036	0.9
2025-07-04 05:33:08.742+00	127	\N	1126982881	stationary	0	0	2	-1	66	5051	0.9
2025-07-04 05:33:47.767+00	127	\N	1041420528	stationary	0	0	3	-2	64	5052	0.9
2025-07-04 09:13:48.776+00	127	\N	1041420528	stationary	0	0	3	-2	64	5205	0.9
2025-07-04 09:17:22.433+00	127	\N	978202981	stationary	0	0	5	-1	64	5206	0.9
2025-07-04 09:23:10.06+00	127	\N	1126982881	stationary	0	0	2	-1	65	5208	0.9
2025-07-04 09:51:14.94+00	127	\N	1041420528	start-moving	0	1	29	-16	52	5227	0.9
2025-07-04 09:51:32.593+00	127	\N	978202981	start-moving	0	1	20	-32	38	5228	0.9
2025-07-04 09:52:17.951+00	127	\N	1041420528	stop-moving	3	3	4	-2	65	5232	0.9
2025-07-04 09:52:34.6+00	127	\N	978202981	stop-moving	4	4	5	0	64	5235	0.9
2025-07-04 09:53:10.182+00	127	\N	1126982881	stationary	0	0	3	-1	65	5239	0.9
2025-07-04 09:57:17.2+00	127	\N	1126982881	start-moving	0	1	-39	-128	55	5242	0.9
2025-07-04 09:58:19.204+00	127	\N	1126982881	stop-moving	3	3	51	40	1	5245	0.9
2025-07-04 09:58:27.203+00	127	\N	1126982881	start-moving	0	1	-39	13	-93	5248	0.9
2025-07-04 09:59:26.21+00	127	\N	1126982881	stop-moving	2	1	5	0	-65	5250	0.9
2025-07-04 10:01:32.211+00	127	\N	1126982881	start-moving	0	1	2	7	-64	5254	0.9
2025-07-04 10:02:17.989+00	127	\N	1041420528	stationary	0	0	3	-2	65	5256	0.9
2025-07-04 10:02:34.632+00	127	\N	978202981	stationary	0	0	4	0	65	5257	0.9
2025-07-04 10:03:25.233+00	127	\N	1126982881	stop-moving	7	7	6	-1	65	5258	0.9
2025-07-04 10:06:09.24+00	127	\N	1126982881	start-moving	0	1	4	4	89	5264	0.9
2025-07-04 10:12:18.042+00	127	\N	1041420528	stationary	0	0	4	-1	65	5277	0.9
2025-07-04 10:12:34.671+00	127	\N	978202981	stationary	0	0	5	0	65	5278	0.9
2025-07-04 10:13:02.296+00	127	\N	1126982881	stop-moving	83	26	4	-1	65	5280	0.9
2025-07-04 10:22:18.096+00	127	\N	1041420528	stationary	0	0	2	-1	65	5291	0.9
2025-07-04 10:22:34.761+00	127	\N	978202981	stationary	0	0	5	0	64	5293	0.9
2025-07-04 10:23:02.381+00	127	\N	1126982881	stationary	0	0	3	-1	64	5294	0.9
2025-07-04 11:00:11.569+00	127	\N	1126982881	start-moving	0	1	20	-117	36	5325	0.9
2025-07-04 11:02:18.344+00	127	\N	1041420528	stationary	0	0	3	-2	65	5329	0.9
2025-07-04 11:02:35.176+00	127	\N	978202981	stationary	0	0	4	0	65	5330	0.9
2025-07-04 11:02:44.583+00	127	\N	1126982881	stop-moving	18	6	60	15	17	5331	0.9
2025-07-04 11:07:04.616+00	127	\N	1126982881	start-moving	0	1	-22	-79	-31	5338	0.9
2025-07-04 11:09:04.645+00	127	\N	1126982881	stop-moving	34	29	3	-2	65	5344	0.9
2025-07-04 11:10:05.648+00	127	\N	1126982881	start-moving	0	1	5	2	48	5348	0.9
2025-07-04 11:11:09.655+00	127	\N	1126982881	stop-moving	2	2	3	-2	66	5350	0.9
2025-07-04 11:11:24.648+00	127	\N	1126982881	start-moving	0	1	-11	2	74	5353	0.9
2025-07-04 11:12:18.377+00	127	\N	1041420528	stationary	0	0	3	-2	64	5356	0.9
2025-07-04 11:12:35.216+00	127	\N	978202981	stationary	0	0	4	0	66	5358	0.9
2025-07-04 11:12:55.662+00	127	\N	1126982881	stop-moving	31	40	3	-2	65	5360	0.9
2025-07-04 11:13:05.668+00	127	\N	1126982881	start-moving	0	1	4	-3	67	5363	0.9
2025-07-04 11:14:04.681+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	5366	0.9
2025-07-04 11:14:45.681+00	127	\N	1126982881	start-moving	0	1	-23	-13	71	5370	0.9
2025-07-04 11:15:45.692+00	127	\N	1126982881	stop-moving	2	1	4	-1	65	5372	0.9
2025-07-04 11:17:19.704+00	127	\N	1126982881	start-moving	0	1	3	-1	-60	5376	0.9
2025-07-04 11:18:18.732+00	127	\N	1126982881	stop-moving	4	1	1	0	-65	5377	0.9
2025-07-04 11:21:04.753+00	127	\N	1126982881	start-moving	0	1	-41	9	52	5382	0.9
2025-07-04 11:22:03.764+00	127	\N	1126982881	stop-moving	3	1	6	1	67	5384	0.9
2025-07-04 11:22:18.412+00	127	\N	1041420528	stationary	0	0	4	-2	64	5387	0.9
2025-07-04 11:22:35.267+00	127	\N	978202981	stationary	0	0	4	0	64	5388	0.9
2025-07-04 11:32:03.827+00	127	\N	1126982881	stationary	0	0	6	0	64	5395	0.9
2025-07-04 11:32:18.454+00	127	\N	1041420528	stationary	0	0	3	-2	63	5396	0.9
2025-07-04 11:32:35.296+00	127	\N	978202981	stationary	0	0	4	-1	65	5397	0.9
2025-07-04 11:42:03.857+00	127	\N	1126982881	stationary	0	0	5	1	64	5402	0.9
2025-07-04 11:42:18.498+00	127	\N	1041420528	stationary	0	0	3	-1	64	5404	0.9
2025-07-04 11:42:35.344+00	127	\N	978202981	stationary	0	0	5	0	65	5405	0.9
2025-07-04 11:52:03.905+00	127	\N	1126982881	stationary	0	0	6	1	65	5408	0.9
2025-07-04 11:52:18.533+00	127	\N	1041420528	stationary	0	0	3	-2	64	5409	0.9
2025-07-04 11:52:35.377+00	127	\N	978202981	stationary	0	0	5	-1	64	5410	0.9
2025-07-04 12:02:03.95+00	127	\N	1126982881	stationary	0	0	6	0	65	5415	0.9
2025-07-04 12:02:18.569+00	127	\N	1041420528	stationary	0	0	3	-2	64	5416	0.9
2025-07-04 12:02:35.411+00	127	\N	978202981	stationary	0	0	5	0	65	5417	0.9
2025-07-04 12:12:03.986+00	127	\N	1126982881	stationary	0	0	6	0	65	5423	0.9
2025-07-04 12:12:18.615+00	127	\N	1041420528	stationary	0	0	3	-2	64	5424	0.9
2025-07-04 12:12:35.458+00	127	\N	978202981	stationary	0	0	5	-1	65	5425	0.9
2025-07-04 13:21:08.298+00	127	\N	1126982881	start-moving	0	1	8	-1	56	5472	0.9
2025-07-04 13:22:08.297+00	127	\N	1126982881	stop-moving	3	2	3	0	65	5473	0.9
2025-07-04 13:22:19.191+00	127	\N	1041420528	stationary	0	0	2	-2	64	5476	0.9
2025-07-04 13:22:35.852+00	127	\N	978202981	stationary	0	0	5	-1	66	5477	0.9
2025-07-04 13:24:28.31+00	127	\N	1126982881	start-moving	0	1	0	-2	-63	5479	0.9
2025-07-04 13:24:59.203+00	127	\N	1041420528	start-moving	0	1	1	24	68	5480	0.9
2025-07-04 13:26:21.335+00	127	\N	1126982881	stop-moving	6	5	0	-1	65	5485	0.9
2025-07-04 13:26:25.217+00	127	\N	1041420528	stop-moving	15	14	5	-4	64	5488	0.9
2025-07-04 13:42:04.439+00	127	\N	1126982881	start-moving	0	1	43	65	-36	5514	0.9
2025-07-04 13:42:35.935+00	127	\N	978202981	stationary	0	0	5	0	64	5515	0.9
2025-07-04 13:43:03.448+00	127	\N	1126982881	stop-moving	2	1	3	-2	66	5516	0.9
2025-07-04 13:46:25.296+00	127	\N	1041420528	stationary	0	0	6	-5	64	5521	0.9
2025-07-04 13:52:35.977+00	127	\N	978202981	stationary	0	0	4	-1	65	5530	0.9
2025-07-04 13:53:03.549+00	127	\N	1126982881	stationary	0	0	3	-1	65	5531	0.9
2025-07-04 13:56:25.324+00	127	\N	1041420528	stationary	0	0	5	-5	65	5536	0.9
2025-07-04 13:57:12.596+00	127	\N	1126982881	stop-moving	3	4	3	-1	66	5537	0.9
2025-07-04 13:57:43.602+00	127	\N	1126982881	start-moving	0	1	-4	-12	66	5541	0.9
2025-07-04 13:58:43.616+00	127	\N	1126982881	stop-moving	1	1	2	-2	65	5544	0.9
2025-07-04 13:59:50.626+00	127	\N	1126982881	start-moving	0	1	2	-2	65	5549	0.9
2025-07-04 14:00:49.635+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	5551	0.9
2025-07-04 14:01:33.629+00	127	\N	1126982881	start-moving	0	1	3	-1	65	5555	0.9
2025-07-04 14:02:34.641+00	127	\N	1126982881	stop-moving	2	4	3	-1	66	5557	0.9
2025-07-04 14:02:36.045+00	127	\N	978202981	stationary	0	0	4	-1	65	5560	0.9
2025-07-04 14:05:40.652+00	127	\N	1126982881	start-moving	0	1	3	-2	66	5564	0.9
2025-07-04 14:06:25.364+00	127	\N	1041420528	stationary	0	0	5	-5	64	5566	0.9
2025-07-04 14:06:44.665+00	127	\N	1126982881	stop-moving	2	4	3	0	66	5567	0.9
2025-07-04 14:07:11.665+00	127	\N	1126982881	start-moving	0	1	3	-1	66	5570	0.9
2025-07-04 14:08:10.671+00	127	\N	1126982881	stop-moving	1	1	4	0	65	5571	0.9
2025-07-04 14:12:36.102+00	127	\N	978202981	stationary	0	0	4	0	65	5581	0.9
2025-07-04 14:16:25.406+00	127	\N	1041420528	stationary	0	0	5	-4	63	5582	0.9
2025-07-04 14:18:10.708+00	127	\N	1126982881	stationary	0	0	3	-2	65	5583	0.9
2025-07-04 14:22:36.145+00	127	\N	978202981	stationary	0	0	5	1	64	5586	0.9
2025-07-04 14:26:25.44+00	127	\N	1041420528	stationary	0	0	5	-5	64	5587	0.9
2025-07-04 14:28:10.746+00	127	\N	1126982881	stationary	0	0	3	-1	65	5589	0.9
2025-07-04 14:32:36.193+00	127	\N	978202981	stationary	0	0	4	-1	67	5592	0.9
2025-07-04 14:36:25.499+00	127	\N	1041420528	stationary	0	0	5	-5	64	5593	0.9
2025-07-04 14:38:10.779+00	127	\N	1126982881	stationary	0	0	4	-1	66	5594	0.9
2025-07-04 14:38:57.789+00	127	\N	1126982881	start-moving	0	1	4	-1	66	5595	0.9
2025-07-04 14:39:58.791+00	127	\N	1126982881	stop-moving	2	3	3	-1	64	5597	0.9
2025-07-04 14:42:36.243+00	127	\N	978202981	stationary	0	0	5	0	66	5605	0.9
2025-07-04 14:42:53.805+00	127	\N	1126982881	start-moving	0	1	4	-6	22	5607	0.9
2025-07-04 14:43:55.815+00	127	\N	1126982881	stop-moving	5	2	-4	1	-65	5608	0.9
2025-07-04 14:46:25.541+00	127	\N	1041420528	stationary	0	0	5	-5	63	5612	0.9
2025-07-04 14:48:06.823+00	127	\N	1126982881	start-moving	0	1	-1	48	43	5613	0.9
2025-07-04 14:49:44.83+00	127	\N	1126982881	stop-moving	3	2	3	-1	65	5615	0.9
2025-07-04 14:49:55.835+00	127	\N	1126982881	start-moving	0	1	16	-20	62	5618	0.9
2025-07-04 14:50:55.833+00	127	\N	1126982881	stop-moving	1	1	4	0	65	5619	0.9
2025-07-04 14:52:36.291+00	127	\N	978202981	stationary	0	0	5	-1	66	5626	0.9
2025-07-04 15:16:25.685+00	127	\N	1041420528	stationary	0	0	4	-5	63	5660	0.9
2025-07-04 15:18:40.013+00	127	\N	1126982881	start-moving	0	1	25	40	-5	5661	0.9
2025-07-04 15:19:52.02+00	127	\N	1126982881	stop-moving	13	8	3	-1	64	5664	0.9
2025-07-04 15:20:21.022+00	127	\N	1126982881	start-moving	0	1	-83	-128	64	5667	0.9
2025-07-04 15:21:40.042+00	127	\N	1126982881	stop-moving	16	16	3	0	64	5674	0.9
2025-07-04 15:22:34.049+00	127	\N	1126982881	start-moving	0	1	-7	17	71	5678	0.9
2025-07-04 15:22:36.522+00	127	\N	978202981	stationary	0	0	5	0	65	5679	0.9
2025-07-04 15:23:40.049+00	127	\N	1126982881	stop-moving	4	5	4	0	65	5682	0.9
2025-07-04 15:23:54.048+00	127	\N	1126982881	start-moving	0	1	3	0	65	5685	0.9
2025-07-04 15:25:06.052+00	127	\N	1126982881	stop-moving	6	10	3	-1	66	5690	0.9
2025-07-04 15:25:13.737+00	127	\N	1041420528	start-moving	0	1	14	44	84	5693	0.9
2025-07-04 15:26:15.748+00	127	\N	1041420528	stop-moving	3	4	2	-2	64	5695	0.9
2025-07-04 15:32:36.602+00	127	\N	978202981	stationary	0	0	5	-1	66	5710	0.9
2025-07-04 15:35:06.108+00	127	\N	1126982881	stationary	0	0	3	-1	66	5712	0.9
2025-07-04 15:36:15.836+00	127	\N	1041420528	stationary	0	0	3	-1	64	5714	0.9
2025-07-04 18:14:40.714+00	127	telegraf	1041420528	start-moving	0	1	12	21	39	6081	1
2025-07-04 18:14:43.275+00	127	telegraf	1126982881	start-moving	0	1	0	-3	65	6082	1
2025-07-04 18:15:39.729+00	127	telegraf	1041420528	stop-moving	3	1	4	-2	65	6087	1
2025-07-04 18:15:45.29+00	127	telegraf	1126982881	stop-moving	2	2	3	-2	64	6090	1
2025-07-04 18:17:12.304+00	127	telegraf	1126982881	start-moving	0	1	-12	-10	60	6095	1
2025-07-04 18:17:18.749+00	127	telegraf	1041420528	start-moving	0	1	4	-1	64	6097	1
2025-07-04 18:18:17.305+00	127	telegraf	1126982881	stop-moving	4	6	4	-2	65	6101	1
2025-07-04 18:18:17.762+00	127	telegraf	1041420528	stop-moving	1	1	4	-1	65	6104	1
2025-07-04 18:22:37.439+00	127	telegraf	978202981	stationary	0	0	4	-1	66	6109	1
2025-07-04 18:32:37.476+00	127	telegraf	978202981	stationary	0	0	5	0	64	6115	1
2025-07-04 18:33:16.362+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	6118	1
2025-07-04 19:39:20.721+00	127	telegraf	1126982881	stop-moving	2	3	4	-2	66	6200	1
2025-07-04 19:42:11.152+00	127	telegraf	1041420528	stationary	0	0	4	-1	63	6212	1
2025-07-04 19:42:37.772+00	127	telegraf	978202981	stationary	0	0	4	0	64	6213	1
2025-07-04 19:52:11.199+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6230	1
2025-07-04 19:52:37.806+00	127	telegraf	978202981	stationary	0	0	5	0	63	6231	1
2025-07-04 20:02:11.243+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	6238	1
2025-07-04 20:02:37.853+00	127	telegraf	978202981	stationary	0	0	5	0	65	6239	1
2025-07-04 20:12:11.288+00	127	telegraf	1041420528	stationary	0	0	3	0	62	6251	1
2025-07-04 20:12:37.885+00	127	telegraf	978202981	stationary	0	0	4	-1	64	6252	1
2025-07-04 20:20:46.103+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	6276	1
2025-07-04 20:22:11.38+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	6281	1
2025-07-04 20:24:00.148+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	6288	1
2025-07-04 20:24:07.942+00	127	telegraf	978202981	start-moving	0	1	8	3	53	6289	1
2025-07-04 20:24:59.147+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	6292	1
2025-07-04 20:25:07.936+00	127	telegraf	978202981	stop-moving	1	2	5	2	65	6295	1
2025-07-04 20:25:08.39+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	6298	1
2025-07-04 20:34:59.207+00	127	telegraf	1126982881	stationary	0	0	4	0	66	6316	1
2025-07-04 20:35:08.043+00	127	telegraf	978202981	stationary	0	0	5	2	64	6317	1
2025-07-04 20:35:08.46+00	127	telegraf	1041420528	stationary	0	0	3	0	63	6318	1
2025-07-04 20:36:09.213+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	6320	1
2025-07-04 20:37:09.226+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	65	6322	1
2025-07-04 20:42:20.272+00	127	telegraf	1126982881	start-moving	0	1	3	-1	65	6334	1
2025-07-04 20:43:05.556+00	127	telegraf	1041420528	start-moving	0	1	4	-1	65	6336	1
2025-07-04 20:44:05.292+00	127	telegraf	1126982881	stop-moving	2	2	3	-1	65	6338	1
2025-07-04 20:44:05.568+00	127	telegraf	1041420528	stop-moving	1	1	3	-2	64	6341	1
2025-07-04 20:45:08.104+00	127	telegraf	978202981	stationary	0	0	5	2	65	6346	1
2025-07-04 20:54:05.334+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	6360	1
2025-07-04 20:54:05.61+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6361	1
2025-07-04 20:55:08.196+00	127	telegraf	978202981	stationary	0	0	6	2	65	6365	1
2025-07-04 21:04:05.377+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	6372	1
2025-07-04 21:04:05.656+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6373	1
2025-07-04 21:05:08.238+00	127	telegraf	978202981	stationary	0	0	5	2	64	6375	1
2025-07-04 21:14:05.471+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6389	1
2025-07-04 21:14:05.693+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6390	1
2025-07-04 21:15:08.28+00	127	telegraf	978202981	stationary	0	0	6	1	64	6391	1
2025-07-04 21:24:05.518+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6401	1
2025-07-04 21:24:05.732+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6402	1
2025-07-04 21:25:08.315+00	127	telegraf	978202981	stationary	0	0	4	2	64	6404	1
2025-07-04 21:34:05.56+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	6410	1
2025-07-04 21:34:05.768+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6411	1
2025-07-04 21:39:04.593+00	127	telegraf	1126982881	start-moving	0	1	2	-1	65	6419	1
2025-07-04 21:44:05.823+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6427	1
2025-07-04 21:50:03.656+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	6435	1
2025-07-04 21:55:08.475+00	127	telegraf	978202981	stationary	0	0	6	3	64	6441	1
2025-07-04 22:00:03.711+00	127	telegraf	1126982881	stationary	0	0	3	0	66	6445	1
2025-07-04 22:03:30.726+00	127	telegraf	1126982881	start-moving	0	1	2	0	67	6447	1
2025-07-04 22:04:29.744+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	6449	1
2025-07-04 22:05:08.508+00	127	telegraf	978202981	stationary	0	0	5	1	65	6453	1
2025-07-04 22:14:05.968+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6462	1
2025-07-04 22:14:29.815+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	6463	1
2025-07-04 22:15:08.545+00	127	telegraf	978202981	stationary	0	0	5	1	65	6466	1
2025-07-04 22:24:06.013+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6473	1
2025-07-04 22:24:29.902+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6475	1
2025-07-04 22:25:08.582+00	127	telegraf	978202981	stationary	0	0	6	1	64	6476	1
2025-07-04 22:34:06.043+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	6482	1
2025-07-04 22:34:29.982+00	127	telegraf	1126982881	stationary	0	0	2	0	65	6483	1
2025-07-04 22:35:08.621+00	127	telegraf	978202981	stationary	0	0	6	3	65	6485	1
2025-07-04 22:44:06.096+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6494	1
2025-07-04 22:44:30.03+00	127	telegraf	1126982881	stationary	0	0	2	0	65	6495	1
2025-07-04 22:45:08.664+00	127	telegraf	978202981	stationary	0	0	4	2	64	6497	1
2025-07-04 22:54:06.159+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6508	1
2025-07-04 22:54:30.093+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	6511	1
2025-07-04 22:55:08.699+00	127	telegraf	978202981	stationary	0	0	4	2	64	6513	1
2025-07-04 23:04:06.237+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	6524	1
2025-07-04 23:05:08.736+00	127	telegraf	978202981	stationary	0	0	5	3	64	6528	1
2025-07-04 23:07:52.169+00	127	telegraf	1126982881	start-moving	0	1	1	-1	66	6533	1
2025-07-04 23:07:56.256+00	127	telegraf	1041420528	start-moving	0	1	7	-10	68	6534	1
2025-07-05 07:25:48.27+00	127	telegraf	978202981	stop-moving	1	1	6	-1	65	6902	1
2025-07-05 07:25:48.68+00	127	telegraf	1126982881	stop-moving	2	2	3	-2	66	6905	1
2025-07-05 07:25:50.625+00	127	telegraf	1041420528	stop-moving	3	4	3	-2	64	6908	1
2025-07-05 07:35:48.317+00	127	telegraf	978202981	stationary	0	0	6	-1	66	6914	1
2025-07-05 07:35:48.715+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	6915	1
2025-07-05 07:35:50.719+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	6916	1
2025-07-05 07:45:48.397+00	127	telegraf	978202981	stationary	0	0	6	-1	64	6925	1
2025-07-05 07:45:48.76+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	6926	1
2025-07-05 07:45:50.781+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	6927	1
2025-07-05 07:55:48.448+00	127	telegraf	978202981	stationary	0	0	6	-1	65	6930	1
2025-07-05 07:55:48.805+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	6931	1
2025-07-05 07:55:50.821+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	6932	1
2025-07-05 08:45:48.655+00	127	telegraf	978202981	stationary	0	0	5	-1	65	6961	1
2025-07-05 08:45:49.138+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	6962	1
2025-07-05 08:55:51.072+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	6968	1
2025-07-05 09:05:48.721+00	127	telegraf	978202981	stationary	0	0	5	-1	65	6973	1
2025-07-05 09:05:49.221+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	6974	1
2025-07-05 09:05:51.11+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	6975	1
2025-07-05 09:15:48.763+00	127	telegraf	978202981	stationary	0	0	5	0	65	6981	1
2025-07-05 09:15:49.269+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	6982	1
2025-07-05 09:15:51.151+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	6983	1
2025-07-05 09:25:48.8+00	127	telegraf	978202981	stationary	0	0	5	-1	64	6990	1
2025-07-05 09:25:49.3+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	6991	1
2025-07-05 09:25:51.189+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	6992	1
2025-07-05 09:35:48.841+00	127	telegraf	978202981	stationary	0	0	5	-1	65	6996	1
2025-07-05 09:35:49.335+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	6997	1
2025-07-05 09:35:51.228+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	6998	1
2025-07-05 09:45:48.88+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7002	1
2025-07-05 09:45:49.383+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7003	1
2025-07-05 09:45:51.269+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7004	1
2025-07-05 09:55:48.918+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7010	1
2025-07-05 09:55:49.418+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7011	1
2025-07-05 09:55:51.338+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7012	1
2025-07-05 10:05:51.404+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7018	1
2025-07-05 10:15:51.511+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7024	1
2025-07-05 10:25:49.168+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7032	1
2025-07-05 10:25:49.554+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7033	1
2025-07-05 10:35:49.236+00	127	telegraf	978202981	stationary	0	0	6	-1	64	7035	1
2025-07-05 10:35:49.59+00	127	telegraf	1126982881	stationary	0	0	3	-1	67	7036	1
2025-07-05 10:35:51.6+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7037	1
2025-07-05 10:45:49.271+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7042	1
2025-07-05 10:45:49.628+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7043	1
2025-07-05 10:45:51.642+00	127	telegraf	1041420528	stationary	0	0	3	0	63	7044	1
2025-07-05 12:15:49.622+00	127	telegraf	978202981	stationary	0	0	5	-1	64	7101	1
2025-07-05 12:15:50.121+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7102	1
2025-07-05 12:15:52.026+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7103	1
2025-07-05 12:25:52.054+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7109	1
2025-07-05 12:35:49.692+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7114	1
2025-07-05 12:35:50.202+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7115	1
2025-07-05 12:35:52.125+00	127	telegraf	1041420528	stationary	0	0	2	0	64	7116	1
2025-07-05 12:45:49.746+00	127	telegraf	978202981	stationary	0	0	6	0	65	7121	1
2025-07-05 12:45:50.238+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7122	1
2025-07-05 12:45:52.196+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7123	1
2025-07-05 12:55:52.287+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7131	1
2025-07-05 13:05:49.907+00	127	telegraf	978202981	stationary	0	0	7	0	66	7133	1
2025-07-05 13:05:50.341+00	127	telegraf	1126982881	stationary	0	0	2	-3	64	7134	1
2025-07-05 13:05:52.338+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7135	1
2025-07-05 13:15:49.977+00	127	telegraf	978202981	stationary	0	0	6	1	65	7139	1
2025-07-05 13:15:50.371+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7140	1
2025-07-05 13:15:52.391+00	127	telegraf	1041420528	stationary	0	0	3	0	63	7141	1
2025-07-05 13:25:52.431+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7150	1
2025-07-05 13:35:50.069+00	127	telegraf	978202981	stationary	0	0	6	0	65	7154	1
2025-07-05 13:35:50.466+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7155	1
2025-07-05 13:35:52.477+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7156	1
2025-07-05 13:45:50.103+00	127	telegraf	978202981	stationary	0	0	7	-1	66	7159	1
2025-07-05 13:45:50.523+00	127	telegraf	1126982881	stationary	0	0	2	-1	66	7160	1
2025-07-05 13:45:52.524+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	7161	1
2025-07-05 13:55:50.149+00	127	telegraf	978202981	stationary	0	0	5	-2	65	7167	1
2025-07-05 13:55:50.585+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7168	1
2025-07-05 14:05:52.597+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7174	1
2025-07-05 14:15:50.235+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7177	1
2025-07-05 14:15:50.735+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7178	1
2025-07-05 14:15:52.643+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7179	1
2025-07-05 14:25:50.282+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7186	1
2025-07-05 14:25:50.775+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	7187	1
2025-07-05 14:25:52.696+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7188	1
2025-07-05 14:35:50.315+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7191	1
2025-07-05 14:35:50.81+00	127	telegraf	1126982881	stationary	0	0	3	-2	67	7192	1
2025-07-05 14:35:52.731+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	7193	1
2025-07-05 14:45:50.348+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7196	1
2025-07-05 14:45:50.846+00	127	telegraf	1126982881	stationary	0	0	3	-2	67	7197	1
2025-07-05 14:45:52.766+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7198	1
2025-07-05 14:55:52.807+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	7206	1
2025-07-05 15:05:52.845+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7211	1
2025-07-05 15:15:52.905+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7218	1
2025-07-05 15:25:50.506+00	127	telegraf	978202981	stationary	0	0	5	-1	64	7224	1
2025-07-05 15:25:51.001+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7225	1
2025-07-05 15:25:52.976+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	7226	1
2025-07-05 15:35:50.64+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7229	1
2025-07-05 15:35:51.04+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7230	1
2025-07-05 15:35:53.066+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7231	1
2025-07-05 15:45:50.782+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7234	1
2025-07-05 15:45:51.08+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	7235	1
2025-07-05 15:45:53.137+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7236	1
2025-07-05 15:55:50.904+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7242	1
2025-07-05 15:55:51.126+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7243	1
2025-07-05 15:55:53.186+00	127	telegraf	1041420528	stationary	0	0	4	-1	64	7244	1
2025-07-05 16:05:50.981+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7247	1
2025-07-05 16:05:51.17+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7248	1
2025-07-05 16:05:53.23+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	7249	1
2025-07-05 16:35:51.095+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7267	1
2025-07-05 16:35:51.325+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7268	1
2025-07-05 16:35:53.335+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7269	1
2025-07-05 16:45:51.136+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7271	1
2025-07-05 16:45:51.396+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7272	1
2025-07-05 16:45:53.381+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7273	1
2025-07-05 16:55:53.415+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7281	1
2025-07-05 17:05:51.211+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7286	1
2025-07-05 17:05:51.543+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7287	1
2025-07-05 17:05:53.472+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7288	1
2025-07-05 17:15:51.247+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7290	1
2025-07-05 17:15:51.641+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7291	1
2025-07-05 17:15:53.514+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7292	1
2025-07-05 17:35:51.322+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7309	1
2025-07-05 17:38:44.602+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7311	1
2025-07-05 17:48:44.643+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7314	1
2025-07-05 17:55:51.554+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7319	1
2025-07-05 17:55:51.796+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7320	1
2025-07-05 17:58:44.681+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7321	1
2025-07-05 18:05:51.702+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7327	1
2025-07-05 18:05:51.823+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	7328	1
2025-07-05 19:25:52.078+00	127	telegraf	978202981	stationary	0	0	6	0	65	7406	1
2025-07-05 19:25:52.35+00	127	telegraf	1126982881	stationary	0	0	3	-3	66	7407	1
2025-07-05 19:28:45.201+00	127	telegraf	1041420528	stationary	0	0	2	0	64	7411	1
2025-07-05 19:35:52.122+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7421	1
2025-07-05 19:35:52.445+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7422	1
2025-07-05 19:38:45.277+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7423	1
2025-07-05 19:45:52.169+00	127	telegraf	978202981	stationary	0	0	6	-1	63	7431	1
2025-07-05 19:45:52.495+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7432	1
2025-07-05 19:48:45.328+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7435	1
2025-07-05 19:55:52.249+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7437	1
2025-07-05 19:55:52.523+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	7438	1
2025-07-05 19:58:45.364+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	7442	1
2025-07-05 20:05:52.413+00	127	telegraf	978202981	stationary	0	0	5	0	64	7453	1
2025-07-05 20:05:52.573+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7454	1
2025-07-05 20:08:45.42+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	7459	1
2025-07-05 20:15:52.565+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7462	1
2025-07-05 20:15:52.613+00	127	telegraf	1126982881	stationary	0	0	1	-2	66	7463	1
2025-07-05 20:18:45.457+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7464	1
2025-07-05 20:25:52.599+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7469	1
2025-07-05 20:25:52.653+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7470	1
2025-07-05 20:28:45.513+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	7476	1
2025-07-05 20:38:45.559+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	7480	1
2025-07-05 20:45:52.678+00	127	telegraf	978202981	stationary	0	0	5	-2	66	7481	1
2025-07-05 20:45:52.733+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7482	1
2025-07-05 20:48:45.621+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	7484	1
2025-07-05 20:55:52.717+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7491	1
2025-07-05 20:55:52.78+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	7492	1
2025-07-05 20:58:45.701+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	7497	1
2025-07-05 21:05:52.759+00	127	telegraf	978202981	stationary	0	0	6	-1	65	7499	1
2025-07-05 21:05:52.815+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7500	1
2025-07-05 21:08:45.764+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7501	1
2025-07-05 21:18:45.805+00	127	telegraf	1041420528	stationary	0	0	1	-1	66	7508	1
2025-07-05 21:28:45.853+00	127	telegraf	1041420528	stationary	0	0	3	0	64	7521	1
2025-07-05 21:38:45.895+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7534	1
2025-07-05 21:48:45.941+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7543	1
2025-07-05 21:55:52.968+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7547	1
2025-07-05 21:55:53.251+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7548	1
2025-07-05 21:58:45.978+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	7550	1
2025-07-05 22:05:53.012+00	127	telegraf	978202981	stationary	0	0	4	-2	65	7556	1
2025-07-05 22:05:53.289+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	7557	1
2025-07-05 22:08:46.028+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7561	1
2025-07-05 22:15:53.143+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7565	1
2025-07-05 22:15:53.332+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7566	1
2025-07-05 22:18:46.078+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	7568	1
2025-07-05 22:25:53.326+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7572	1
2025-07-05 22:25:53.371+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	7573	1
2025-07-05 22:28:46.127+00	127	telegraf	1041420528	stationary	0	0	1	-2	62	7576	1
2025-07-05 22:35:53.411+00	127	telegraf	1126982881	stationary	0	0	2	-3	65	7580	1
2025-07-05 22:35:53.424+00	127	telegraf	978202981	stationary	0	0	5	-1	66	7581	1
2025-07-05 22:38:46.158+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	7585	1
2025-07-05 22:45:53.456+00	127	telegraf	1126982881	stationary	0	0	3	-3	65	7589	1
2025-07-05 22:45:53.467+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7590	1
2025-07-05 22:48:46.19+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7591	1
2025-07-05 22:55:53.482+00	127	telegraf	1126982881	stationary	0	0	2	-2	65	7595	1
2025-07-05 22:55:53.503+00	127	telegraf	978202981	stationary	0	0	6	-1	66	7596	1
2025-07-05 22:58:46.231+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	7598	1
2025-07-05 23:05:53.573+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	7603	1
2025-07-05 23:05:53.586+00	127	telegraf	978202981	stationary	0	0	5	0	65	7604	1
2025-07-05 23:08:46.268+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	7606	1
2025-07-05 23:15:53.614+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	7610	1
2025-07-05 23:15:53.627+00	127	telegraf	978202981	stationary	0	0	6	-2	65	7611	1
2025-07-05 23:18:46.323+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	7613	1
2025-07-05 23:25:53.659+00	127	telegraf	1126982881	stationary	0	0	2	-2	66	7616	1
2025-07-05 23:25:53.664+00	127	telegraf	978202981	stationary	0	0	5	-2	67	7617	1
2025-07-05 23:28:46.372+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	7620	1
2025-07-05 23:35:53.701+00	127	telegraf	978202981	stationary	0	0	5	-1	65	7624	1
2025-07-05 23:35:53.727+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	7625	1
2025-07-07 09:05:38.442+00	127	telegraf	1523842139	start-moving	0	1	-1	0	-67	113	1
2025-07-07 09:05:40.475+00	127	telegraf	840973111	start-moving	0	1	1	-3	-61	114	1
2025-07-07 09:05:40.651+00	127	telegraf	527134251	start-moving	0	1	-2	-3	-65	115	1
2025-07-07 09:06:39.414+00	127	telegraf	840973111	stop-moving	1	1	1	-1	-61	116	1
2025-07-07 09:06:40.381+00	127	telegraf	1523842139	stop-moving	2	2	0	-1	-65	119	1
2025-07-07 09:07:02.93+00	127	telegraf	1041420528	start-moving	0	1	3	-2	64	1	1
2025-07-07 09:07:28.57+00	127	telegraf	527134251	stop-moving	3	3	-2	-3	-64	124	1
2025-07-07 09:08:01.946+00	127	telegraf	1041420528	stop-moving	1	1	2	0	64	3	1
2025-07-07 09:06:03.926+00	127	telegraf	1041420528	stop-moving	11	24	2	-1	64	7	1
2025-07-07 09:07:02.526+00	127	telegraf	1126982881	start-moving	0	1	3	-1	65	12	1
2025-07-07 09:08:02.07+00	127	telegraf	978202981	stop-moving	3	3	4	-2	65	16	1
2025-07-07 09:08:04.535+00	127	telegraf	1126982881	stop-moving	2	2	2	-3	65	19	1
2025-07-07 09:09:36.359+00	127	telegraf	840973111	start-moving	0	1	62	54	0	127	1
2025-07-07 09:09:36.355+00	127	telegraf	1523842139	start-moving	0	1	-1	-31	-85	128	1
2025-07-07 09:09:46.538+00	127	telegraf	527134251	start-moving	0	1	-32	-1	-27	129	1
2025-07-07 09:10:46.532+00	127	telegraf	527134251	stop-moving	3	1	0	-1	64	131	1
2025-07-07 09:10:47.361+00	127	telegraf	840973111	stop-moving	4	3	1	-2	-62	134	1
2025-07-07 09:10:47.343+00	127	telegraf	1523842139	stop-moving	4	4	-1	0	-66	135	1
2025-07-07 09:11:08.534+00	127	telegraf	527134251	start-moving	0	1	-6	40	51	143	1
2025-07-07 09:17:02.555+00	127	telegraf	1523842139	stop-moving	10	10	-1	0	-65	162	1
2025-07-07 09:17:04.532+00	127	telegraf	840973111	stop-moving	9	10	-1	-1	-60	165	1
2025-07-07 09:17:02.705+00	127	telegraf	527134251	stop-moving	9	8	2	-1	64	168	1
2025-07-07 09:17:04.612+00	127	telegraf	1126982881	start-moving	0	1	2	-2	65	22	1
2025-07-07 09:17:47.545+00	127	telegraf	840973111	start-moving	0	1	-41	-25	-42	171	1
2025-07-07 09:17:51.563+00	127	telegraf	1523842139	start-moving	0	1	-46	-13	41	172	1
2025-07-07 09:17:52.721+00	127	telegraf	527134251	start-moving	0	1	-11	5	42	173	1
2025-07-07 09:18:02.132+00	127	telegraf	978202981	stationary	0	0	5	-2	65	23	1
2025-07-07 09:18:04.618+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	24	1
2025-07-07 09:18:02.024+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	27	1
2025-07-07 09:18:11.622+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	28	1
2025-07-07 09:18:50.589+00	127	telegraf	1523842139	stop-moving	3	1	-1	-1	-65	175	1
2025-07-07 09:19:11.624+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	30	1
2025-07-07 09:19:06.746+00	127	telegraf	527134251	stop-moving	14	8	-2	-1	-66	184	1
2025-07-07 09:22:08.47+00	127	telegraf	840973111	start-moving	0	1	28	43	-102	188	1
2025-07-07 09:23:30.648+00	127	telegraf	527134251	start-moving	0	1	11	-103	-85	189	1
2025-07-07 09:25:41.631+00	127	telegraf	527134251	stop-moving	42	27	-1	-2	-64	196	1
2025-07-07 09:26:25.643+00	127	telegraf	527134251	start-moving	0	1	-33	34	-79	201	1
2025-07-07 09:27:53.48+00	127	telegraf	840973111	stop-moving	148	104	4	-1	62	210	1
2025-07-07 09:28:02.214+00	127	telegraf	978202981	stationary	0	0	4	-2	64	34	1
2025-07-07 09:28:02.183+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	35	1
2025-07-07 09:28:50.472+00	127	telegraf	1523842139	stationary	0	0	-1	-1	-65	218	1
2025-07-07 09:29:11.684+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	36	1
2025-07-07 09:29:25.481+00	127	telegraf	840973111	start-moving	0	1	3	-2	62	220	1
2025-07-07 09:29:31.477+00	127	telegraf	1523842139	start-moving	0	1	-2	-1	-66	221	1
2025-07-07 09:30:30.548+00	127	telegraf	1523842139	stop-moving	1	1	-2	0	-65	224	1
2025-07-07 09:30:38.233+00	127	telegraf	978202981	start-moving	0	1	4	-1	65	37	1
2025-07-07 09:30:55.696+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	38	1
2025-07-07 09:30:55.236+00	127	telegraf	1041420528	start-moving	0	1	2	-1	63	39	1
2025-07-07 09:31:05.58+00	127	telegraf	840973111	stop-moving	6	8	3	-1	62	227	1
2025-07-07 09:31:05.703+00	127	telegraf	527134251	stop-moving	65	59	2	-2	63	230	1
2025-07-07 09:31:55.713+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	40	1
2025-07-07 09:31:55.242+00	127	telegraf	1041420528	stop-moving	1	1	2	-2	65	43	1
2025-07-07 09:32:20.716+00	127	telegraf	1126982881	start-moving	0	1	2	-2	65	46	1
2025-07-07 09:32:26.244+00	127	telegraf	978202981	stop-moving	3	3	4	-1	65	47	1
2025-07-07 09:33:20.724+00	127	telegraf	1126982881	stop-moving	1	1	3	-3	66	51	1
2025-07-07 09:33:42.567+00	127	telegraf	840973111	start-moving	0	1	-4	4	71	236	1
2025-07-07 09:33:40.673+00	127	telegraf	527134251	start-moving	0	1	2	-1	65	239	1
2025-07-07 09:34:41.671+00	127	telegraf	527134251	stop-moving	2	2	2	-1	65	240	1
2025-07-07 09:34:53.541+00	127	telegraf	840973111	stop-moving	11	12	22	-64	0	243	1
2025-07-07 09:36:15.571+00	127	telegraf	1523842139	start-moving	0	1	-1	0	-66	247	1
2025-07-07 09:36:17.283+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	56	1
2025-07-07 09:37:43.72+00	127	telegraf	527134251	stop-moving	19	21	57	28	-2	254	1
2025-07-07 09:38:26.601+00	127	telegraf	1523842139	start-moving	0	1	-60	-23	6	260	1
2025-07-07 09:38:26.615+00	127	telegraf	840973111	start-moving	0	1	-6	-84	-1	261	1
2025-07-07 09:42:26.314+00	127	telegraf	978202981	stationary	0	0	4	-1	65	64	1
2025-07-07 09:43:20.787+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	65	1
2025-07-07 09:46:17.358+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	66	1
2025-07-07 09:47:18.764+00	127	telegraf	527134251	start-moving	0	1	-3	-48	-59	2	1
2025-07-07 09:49:24.78+00	127	telegraf	527134251	stop-moving	43	44	-61	-21	2	7	1
2025-07-07 09:52:26.373+00	127	telegraf	978202981	stationary	0	0	5	-1	66	69	1
2025-07-07 09:52:43.685+00	127	telegraf	840973111	moving	452	255	-4	49	-38	16	1
2025-07-07 09:53:16.35+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	70	1
2025-07-07 09:53:20.79+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	71	1
2025-07-07 09:54:16.316+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	65	72	1
2025-07-07 09:54:34.285+00	127	telegraf	978202981	start-moving	0	1	4	-2	64	75	1
2025-07-07 09:54:34.759+00	127	telegraf	1126982881	start-moving	0	1	2	-1	66	76	1
2025-07-07 09:55:50.266+00	127	telegraf	978202981	stop-moving	2	2	4	-1	65	80	1
2025-07-07 09:56:24.876+00	127	telegraf	527134251	start-moving	0	1	-60	-22	-9	26	1
2025-07-07 09:57:24.89+00	127	telegraf	527134251	stop-moving	1	1	-61	-22	2	28	1
2025-07-07 09:58:33.239+00	127	telegraf	978202981	stop-moving	1	1	4	-1	65	85	1
2025-07-07 09:59:06.266+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	88	1
2025-07-07 09:59:49.809+00	127	telegraf	840973111	start-moving	0	1	27	21	69	44	1
2025-07-07 10:05:34.684+00	127	telegraf	1126982881	stationary	0	0	2	-3	66	93	1
2025-07-07 10:06:56.692+00	127	telegraf	1126982881	start-moving	0	1	3	-2	65	95	1
2025-07-07 10:06:57.294+00	127	telegraf	1041420528	start-moving	0	1	3	-1	62	96	1
2025-07-07 10:07:42.265+00	127	telegraf	978202981	stop-moving	1	1	5	-1	65	97	1
2025-07-07 10:07:56.69+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	101	1
2025-07-07 10:07:56.3+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	63	104	1
2025-07-07 10:17:42.527+00	127	telegraf	978202981	stationary	0	0	4	-1	65	111	1
2025-07-07 10:17:56.932+00	127	telegraf	1126982881	stationary	0	0	1	-2	65	112	1
2025-07-07 10:17:56.451+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	113	1
2025-07-07 10:17:59.533+00	127	telegraf	978202981	start-moving	0	1	5	-2	66	114	1
2025-07-07 10:18:01.941+00	127	telegraf	1126982881	start-moving	0	1	2	-2	64	115	1
2025-07-07 10:18:20.45+00	127	telegraf	1041420528	start-moving	0	1	2	-2	65	116	1
2025-07-07 10:18:59.537+00	127	telegraf	978202981	stop-moving	2	2	4	-2	66	117	1
2025-07-07 10:19:00.945+00	127	telegraf	1126982881	stop-moving	1	1	2	-2	66	120	1
2025-07-07 10:53:10.606+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	2	1
2025-07-07 10:54:10.281+00	127	telegraf	1126982881	stop-moving	6	8	2	-3	66	4	1
2025-07-07 10:54:09.609+00	127	telegraf	1041420528	stop-moving	1	1	2	-2	64	7	1
2025-07-07 10:56:27.72+00	127	telegraf	978202981	start-moving	0	1	5	-1	65	11	1
2025-07-07 10:56:40.606+00	127	telegraf	1041420528	start-moving	0	1	13	-5	27	12	1
2025-07-07 10:56:49.268+00	127	telegraf	1126982881	stop-moving	1	1	4	-2	65	13	1
2025-07-07 10:57:02.265+00	127	telegraf	1126982881	start-moving	0	1	2	-2	66	16	1
2025-07-07 10:57:27.706+00	127	telegraf	978202981	stop-moving	1	1	5	-1	66	17	1
2025-07-07 10:57:58.604+00	127	telegraf	1041420528	stop-moving	2	2	2	-2	64	20	1
2025-07-07 11:04:45.814+00	127	telegraf	978202981	start-moving	0	1	5	0	65	29	1
2025-07-07 11:04:57.633+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	30	1
2025-07-07 11:05:45.826+00	127	telegraf	978202981	stop-moving	1	1	4	-2	64	31	1
2025-07-07 11:07:52.821+00	127	telegraf	978202981	start-moving	0	1	5	-1	65	41	1
2025-07-07 11:08:12.314+00	127	telegraf	1126982881	start-moving	0	1	4	-3	65	42	1
2025-07-07 11:09:11.834+00	127	telegraf	978202981	stop-moving	2	2	4	-1	65	44	1
2025-07-07 11:09:49.667+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	47	1
2025-07-07 11:10:46.32+00	127	telegraf	1126982881	stop-moving	4	4	4	-2	67	50	1
2025-07-07 11:10:48.67+00	127	telegraf	1041420528	stop-moving	1	1	2	-2	65	53	1
2025-07-07 11:29:11.903+00	127	telegraf	978202981	stationary	0	0	4	-1	66	66	1
2025-07-07 11:30:48.847+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	68	1
2025-07-07 11:31:42.415+00	127	telegraf	1126982881	start-moving	0	1	2	-2	65	69	1
2025-07-07 11:33:08.868+00	127	telegraf	1041420528	stop-moving	2	2	3	-2	64	76	1
2025-07-07 11:38:30.951+00	127	telegraf	978202981	start-moving	0	1	5	-2	65	79	1
2025-07-07 11:39:30.959+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	81	1
2025-07-07 11:43:09.482+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	89	1
2025-07-07 11:43:08.944+00	127	telegraf	1041420528	stationary	0	0	1	-3	65	90	1
2025-07-07 11:46:32.981+00	127	telegraf	978202981	start-moving	0	1	4	-2	64	91	1
2025-07-07 11:48:09.988+00	127	telegraf	978202981	stop-moving	2	2	4	-2	64	100	1
2025-07-07 11:50:40.992+00	127	telegraf	978202981	start-moving	0	1	5	-1	67	103	1
2025-07-07 11:50:41.509+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	104	1
2025-07-07 11:50:46.962+00	127	telegraf	1041420528	start-moving	0	1	3	-3	64	105	1
2025-07-07 11:51:40.513+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	65	106	1
2025-07-07 11:55:15.772+00	127	telegraf	3839865	stationary	0	0	1	31	56	117	1
2025-07-07 12:00:22.345+00	127	telegraf	632461688	stationary	0	0	-27	11	56	122	1
2025-07-07 12:01:23.77+00	127	telegraf	305822513	stationary	0	0	-34	-10	52	123	1
2025-07-07 12:01:40.549+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	124	1
2025-07-07 12:01:47.04+00	127	telegraf	978202981	stationary	0	0	4	-2	64	125	1
2025-07-07 12:01:46.99+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	126	1
2025-07-07 12:05:15.812+00	127	telegraf	3839865	stationary	0	0	2	31	56	129	1
2025-07-07 12:07:10.566+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	65	131	1
2025-07-07 12:07:21.57+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	134	1
2025-07-07 12:08:21.571+00	127	telegraf	1126982881	stop-moving	1	1	3	-1	66	135	1
2025-07-07 12:10:22.393+00	127	telegraf	632461688	stationary	0	0	-27	10	55	139	1
2025-07-07 12:11:23.804+00	127	telegraf	305822513	stationary	0	0	-33	-10	53	140	1
2025-07-07 12:11:47.068+00	127	telegraf	978202981	stationary	0	0	4	-1	65	141	1
2025-07-07 12:11:47.021+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	142	1
2025-07-07 12:12:45.586+00	127	telegraf	1126982881	start-moving	0	1	4	-1	64	148	1
2025-07-07 12:13:45.59+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	65	149	1
2025-07-07 12:13:56.585+00	127	telegraf	1126982881	start-moving	0	1	3	-3	73	152	1
2025-07-07 12:14:56.604+00	127	telegraf	1126982881	stop-moving	1	1	4	-2	65	156	1
2025-07-07 12:15:48.605+00	127	telegraf	1126982881	start-moving	0	1	3	-2	66	160	1
2025-07-07 12:21:47.143+00	127	telegraf	978202981	stationary	0	0	5	-1	66	167	1
2025-07-07 12:25:31.712+00	127	telegraf	1126982881	start-moving	0	1	3	-2	65	179	1
2025-07-07 12:26:19.487+00	127	telegraf	632461688	stop-moving	2	2	-25	9	57	183	1
2025-07-07 12:26:20.93+00	127	telegraf	3839865	stop-moving	2	2	1	30	58	184	1
2025-07-07 12:26:30.719+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	66	189	1
2025-07-07 12:29:50.153+00	127	telegraf	1041420528	start-moving	0	1	24	20	63	194	1
2025-07-07 12:36:18.951+00	127	telegraf	305822513	stationary	0	0	-34	-10	52	210	1
2025-07-07 12:36:20.982+00	127	telegraf	3839865	stationary	0	0	2	30	56	211	1
2025-07-07 12:36:19.557+00	127	telegraf	632461688	stationary	0	0	-26	9	56	212	1
2025-07-07 12:39:17.205+00	127	telegraf	1041420528	start-moving	0	1	3	-1	63	213	1
2025-07-07 12:40:17.218+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	214	1
2025-07-07 12:40:47.81+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	217	1
2025-07-07 12:41:47.336+00	127	telegraf	978202981	stationary	0	0	4	-1	65	218	1
2025-07-07 12:45:25.002+00	127	telegraf	305822513	start-moving	0	1	-35	-11	53	225	1
2025-07-07 12:45:25.025+00	127	telegraf	3839865	start-moving	0	1	-1	30	57	226	1
2025-07-07 12:46:19.607+00	127	telegraf	632461688	stationary	0	0	-25	9	56	227	1
2025-07-07 12:46:25.009+00	127	telegraf	305822513	stop-moving	1	1	-35	-10	51	228	1
2025-07-07 12:46:25.02+00	127	telegraf	3839865	stop-moving	1	1	1	29	55	231	1
2025-07-07 12:56:08.421+00	127	telegraf	978202981	start-moving	0	1	3	-3	65	245	1
2025-07-07 12:56:19.681+00	127	telegraf	632461688	stationary	0	0	-26	10	57	247	1
2025-07-07 12:56:25.039+00	127	telegraf	305822513	stationary	0	0	-35	-9	52	248	1
2025-07-07 12:56:25.037+00	127	telegraf	3839865	stationary	0	0	2	30	57	249	1
2025-07-07 12:57:08.425+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	250	1
2025-07-07 12:57:08.273+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	253	1
2025-07-07 12:58:17.692+00	127	telegraf	632461688	start-moving	0	1	-27	11	57	256	1
2025-07-07 12:56:07.77+00	127	telegraf	840973111	stop-moving	28	36	0	-1	-60	267	1
2025-07-07 12:56:22.774+00	127	telegraf	840973111	start-moving	0	1	-2	-1	-61	268	1
2025-07-07 12:57:37.789+00	127	telegraf	840973111	stop-moving	9	10	-2	-1	-61	269	1
2025-07-07 12:59:37.799+00	127	telegraf	840973111	start-moving	0	1	-1	-2	-61	271	1
2025-07-07 12:56:07.753+00	127	telegraf	1523842139	stop-moving	27	39	0	0	-66	273	1
2025-07-07 12:56:22.751+00	127	telegraf	1523842139	start-moving	0	1	-1	-2	-65	274	1
2025-07-07 12:58:11.759+00	127	telegraf	1523842139	stop-moving	10	13	0	-1	-65	278	1
2025-07-07 12:56:15.034+00	127	telegraf	791308911	stationary	0	0	0	24	-58	280	1
2025-07-07 12:57:49.043+00	127	telegraf	791308911	start-moving	0	1	-28	6	-61	282	1
2025-07-07 12:59:45.054+00	127	telegraf	791308911	stop-moving	30	54	-11	11	-61	283	1
2025-07-07 12:56:06.88+00	127	telegraf	527134251	stop-moving	24	35	0	-2	-65	284	1
2025-07-07 13:00:51.161+00	127	telegraf	791308911	start-moving	0	1	-11	19	-48	295	1
2025-07-07 13:01:04.806+00	127	telegraf	840973111	stop-moving	2	2	-1	-2	-61	296	1
2025-07-07 13:01:19.81+00	127	telegraf	840973111	start-moving	0	1	-2	-2	-60	300	1
2025-07-07 13:01:51.166+00	127	telegraf	791308911	stop-moving	1	1	-11	11	-61	307	1
2025-07-07 13:01:47.913+00	127	telegraf	527134251	stop-moving	1	1	-1	-3	-66	308	1
2025-07-07 13:02:05.5+00	127	telegraf	333419537	start-moving	0	1	2	13	-64	312	1
2025-07-07 13:02:28.941+00	127	telegraf	1126982881	start-moving	0	1	8	0	79	314	1
2025-07-07 13:02:30.273+00	127	telegraf	1041420528	start-moving	0	1	3	-1	64	315	1
2025-07-07 13:02:06.165+00	127	telegraf	791308911	start-moving	0	1	-10	12	-62	316	1
2025-07-07 13:02:19.815+00	127	telegraf	840973111	stop-moving	1	1	-2	-2	-62	317	1
2025-07-07 13:02:46.781+00	127	telegraf	1523842139	start-moving	0	1	-1	-3	-52	323	1
2025-07-07 13:02:50.923+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-67	324	1
2025-07-07 13:03:05.171+00	127	telegraf	791308911	stop-moving	1	1	-10	11	-61	325	1
2025-07-07 13:02:41.635+00	127	telegraf	677224097	start-moving	0	1	-8	-29	-58	334	1
2025-07-07 13:03:41.494+00	127	telegraf	333419537	stop-moving	2	2	-1	11	-63	335	1
2025-07-07 13:03:51.815+00	127	telegraf	840973111	stop-moving	2	2	-2	-2	-61	343	1
2025-07-07 13:03:51.917+00	127	telegraf	527134251	stop-moving	2	5	0	-3	-65	346	1
2025-07-07 13:04:04.777+00	127	telegraf	1523842139	stop-moving	2	2	0	-2	-65	350	1
2025-07-07 13:04:51.276+00	127	telegraf	1041420528	start-moving	0	1	2	-1	65	356	1
2025-07-07 13:05:28.93+00	127	telegraf	527134251	stop-moving	1	1	0	-3	-65	358	1
2025-07-07 13:05:51.293+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	63	361	1
2025-07-07 13:06:25.043+00	127	telegraf	305822513	stationary	0	0	-35	-9	51	364	1
2025-07-07 13:06:01.192+00	127	telegraf	791308911	start-moving	0	1	-11	11	-60	365	1
2025-07-07 13:06:25.093+00	127	telegraf	3839865	stationary	0	0	1	29	56	368	1
2025-07-07 13:07:08.459+00	127	telegraf	978202981	stationary	0	0	5	-1	65	370	1
2025-07-07 13:08:20.296+00	127	telegraf	1041420528	start-moving	0	1	2	-2	64	374	1
2025-07-07 13:08:02.838+00	127	telegraf	840973111	start-moving	0	1	4	1	-82	375	1
2025-07-07 13:08:41.947+00	127	telegraf	527134251	start-moving	0	1	-1	-3	-42	376	1
2025-07-07 13:09:20.297+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	383	1
2025-07-07 13:09:16.723+00	127	telegraf	632461688	stationary	0	0	-25	9	56	387	1
2025-07-07 13:09:52.954+00	127	telegraf	527134251	stop-moving	2	2	0	-3	-65	390	1
2025-07-07 13:14:08.957+00	127	telegraf	527134251	start-moving	0	1	-2	-4	-65	407	1
2025-07-07 13:14:04.81+00	127	telegraf	1523842139	stationary	0	0	0	-2	-66	409	1
2025-07-07 13:15:37.819+00	127	telegraf	1523842139	start-moving	0	1	0	-1	-66	413	1
2025-07-07 13:17:00.231+00	127	telegraf	791308911	stationary	0	0	-10	11	-61	419	1
2025-07-07 13:17:10.873+00	127	telegraf	840973111	stop-moving	1	1	-1	0	-60	422	1
2025-07-07 13:17:10.821+00	127	telegraf	1523842139	stop-moving	2	2	0	0	-70	426	1
2025-07-07 13:17:32.871+00	127	telegraf	840973111	start-moving	0	1	-1	-1	-61	429	1
2025-07-07 13:17:10.969+00	127	telegraf	527134251	stop-moving	4	4	-1	-2	-69	430	1
2025-07-07 13:18:39.494+00	127	telegraf	978202981	start-moving	0	1	5	-2	66	434	1
2025-07-07 13:19:20.334+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	437	1
2025-07-07 13:19:16.768+00	127	telegraf	632461688	stationary	0	0	-25	9	57	438	1
2025-07-07 13:19:14.881+00	127	telegraf	840973111	stop-moving	2	2	-2	-2	-61	439	1
2025-07-07 13:19:55.969+00	127	telegraf	527134251	stop-moving	3	3	-1	-3	-66	450	1
2025-07-07 13:20:04.976+00	127	telegraf	527134251	start-moving	0	1	-1	-4	-65	453	1
2025-07-07 13:21:37.132+00	127	telegraf	305822513	start-moving	0	1	-36	-10	53	455	1
2025-07-07 13:21:37.152+00	127	telegraf	3839865	start-moving	0	1	-2	25	58	456	1
2025-07-07 13:21:40.504+00	127	telegraf	978202981	stop-moving	3	3	4	-2	65	457	1
2025-07-07 13:21:37.794+00	127	telegraf	632461688	start-moving	0	1	-25	9	58	460	1
2025-07-07 13:21:40.979+00	127	telegraf	527134251	stop-moving	3	3	-1	-3	-65	461	1
2025-07-07 13:21:50.977+00	127	telegraf	527134251	start-moving	0	1	-1	-2	-65	464	1
2025-07-07 13:22:37.135+00	127	telegraf	305822513	stop-moving	1	1	-35	-10	53	465	1
2025-07-07 13:22:36.801+00	127	telegraf	632461688	stop-moving	1	1	-25	10	56	468	1
2025-07-07 13:22:36.158+00	127	telegraf	3839865	stop-moving	1	1	2	29	57	469	1
2025-07-07 13:22:49.983+00	127	telegraf	527134251	stop-moving	1	1	-2	-3	-64	477	1
2025-07-07 13:23:41.682+00	127	telegraf	333419537	stationary	0	0	-1	10	-62	480	1
2025-07-07 13:23:41.73+00	127	telegraf	677224097	stationary	0	0	-6	-28	-57	481	1
2025-07-07 13:24:07.137+00	127	telegraf	305822513	start-moving	0	1	-35	-9	54	483	1
2025-07-07 13:27:29.825+00	127	telegraf	632461688	start-moving	0	1	-23	-43	33	496	1
2025-07-07 13:27:30.193+00	127	telegraf	3839865	start-moving	0	1	-46	8	40	497	1
2025-07-07 13:28:32.162+00	127	telegraf	305822513	stop-moving	4	7	-4	-14	62	499	1
2025-07-07 13:29:20.382+00	127	telegraf	1041420528	stationary	0	0	4	-2	63	508	1
2025-07-07 13:31:40.588+00	127	telegraf	978202981	stationary	0	0	5	-2	66	511	1
2025-07-07 13:31:29.216+00	127	telegraf	3839865	start-moving	0	1	-12	17	61	512	1
2025-07-07 13:31:30.838+00	127	telegraf	632461688	start-moving	0	1	-9	-23	60	513	1
2025-07-07 13:32:30.846+00	127	telegraf	632461688	stop-moving	1	1	-9	-21	59	518	1
2025-07-07 13:33:13.181+00	127	telegraf	305822513	stop-moving	1	1	-2	-14	62	521	1
2025-07-07 13:33:29.111+00	127	telegraf	1126982881	stationary	0	0	3	-2	64	524	1
2025-07-07 13:33:13.231+00	127	telegraf	3839865	stop-moving	3	3	-11	20	60	525	1
2025-07-07 13:33:40.115+00	127	telegraf	527134251	stop-moving	12	14	-1	-3	-66	529	1
2025-07-07 13:36:30.331+00	127	telegraf	791308911	start-moving	0	1	-11	12	-61	548	1
2025-07-07 13:39:20.416+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	549	1
2025-07-07 13:27:26.114+00	127	telegraf	527134251	start-moving	0	1	-1	-4	-64	552	1
2025-07-07 13:28:25.111+00	127	telegraf	527134251	stop-moving	1	1	-1	-3	-66	553	1
2025-07-07 13:31:30.69+00	127	telegraf	333419537	start-moving	0	1	-1	9	-62	555	1
2025-07-07 13:33:11.699+00	127	telegraf	333419537	stop-moving	2	2	-1	10	-63	557	1
2025-07-07 13:35:45.882+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-64	558	1
2025-07-07 13:39:45.286+00	127	telegraf	3839865	stop-moving	1	1	-11	19	60	561	1
2025-07-07 13:28:31.876+00	127	telegraf	1523842139	start-moving	0	1	1	-1	-66	564	1
2025-07-07 13:33:41.764+00	127	telegraf	677224097	stationary	0	0	-7	-28	-56	565	1
2025-07-07 13:31:46.926+00	127	telegraf	840973111	stop-moving	6	6	-1	-1	-61	567	1
2025-07-07 13:28:25.965+00	127	telegraf	840973111	stop-moving	1	1	-1	-2	-62	571	1
2025-07-07 13:28:32.112+00	127	telegraf	527134251	start-moving	0	1	0	-3	-65	575	1
2025-07-07 13:28:25.914+00	127	telegraf	1523842139	stop-moving	1	1	0	-1	-66	576	1
2025-07-07 13:36:29.711+00	127	telegraf	333419537	start-moving	0	1	-1	7	-68	579	1
2025-07-07 13:28:31.88+00	127	telegraf	1523842139	start-moving	0	1	1	-1	-66	580	1
2025-07-07 13:36:45.885+00	127	telegraf	1523842139	stop-moving	1	1	-1	-1	-64	581	1
2025-07-07 13:36:58.13+00	127	telegraf	527134251	start-moving	0	1	-4	-2	-68	584	1
2025-07-07 13:36:57.932+00	127	telegraf	840973111	start-moving	0	1	0	-2	-62	585	1
2025-07-07 13:37:38.78+00	127	telegraf	677224097	start-moving	0	1	-5	-28	-57	586	1
2025-07-07 13:36:58.883+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-64	588	1
2025-07-07 13:38:08.341+00	127	telegraf	791308911	stop-moving	2	3	-11	11	-61	589	1
2025-07-07 13:37:58.136+00	127	telegraf	527134251	stop-moving	1	1	-1	-3	-65	593	1
2025-07-07 13:38:07.719+00	127	telegraf	333419537	stop-moving	2	2	-2	11	-61	594	1
2025-07-07 13:38:18.121+00	127	telegraf	527134251	start-moving	0	1	-2	-5	-69	604	1
2025-07-07 13:37:57.891+00	127	telegraf	1523842139	stop-moving	1	1	0	-1	-64	605	1
2025-07-07 13:38:18.894+00	127	telegraf	1523842139	start-moving	0	1	-1	-1	-65	608	1
2025-07-07 13:38:17.946+00	127	telegraf	840973111	start-moving	0	1	-2	-1	-62	609	1
2025-07-07 13:38:38.779+00	127	telegraf	677224097	stop-moving	1	1	-5	-29	-56	610	1
2025-07-07 13:39:52.342+00	127	telegraf	791308911	start-moving	0	1	-11	11	-60	613	1
2025-07-07 13:42:30.886+00	127	telegraf	632461688	stationary	0	0	-8	-21	60	614	1
2025-07-07 13:41:08.144+00	127	telegraf	527134251	start-moving	0	1	2	-5	95	630	1
2025-07-07 13:42:12.153+00	127	telegraf	527134251	stop-moving	8	4	1	0	64	632	1
2025-07-07 13:42:14.144+00	127	telegraf	527134251	start-moving	0	1	0	-1	71	635	1
2025-07-07 13:42:16.955+00	127	telegraf	840973111	stop-moving	48	43	5	-2	60	638	1
2025-07-07 13:42:19.956+00	127	telegraf	840973111	start-moving	0	1	5	-2	61	641	1
2025-07-07 13:42:43.918+00	127	telegraf	1523842139	stop-moving	45	35	2	-1	66	643	1
2025-07-07 13:43:14.154+00	127	telegraf	527134251	stop-moving	1	1	1	-1	65	655	1
2025-07-07 13:43:18.968+00	127	telegraf	840973111	stop-moving	1	1	5	-2	61	658	1
2025-07-07 13:46:07.163+00	127	telegraf	527134251	start-moving	0	1	1	0	64	666	1
2025-07-07 13:46:06.966+00	127	telegraf	840973111	start-moving	0	1	5	-1	62	667	1
2025-07-07 13:46:08.937+00	127	telegraf	1523842139	start-moving	0	1	3	-1	65	668	1
2025-07-07 13:47:22.163+00	127	telegraf	527134251	start-moving	0	1	0	-1	65	678	1
2025-07-07 13:47:21.938+00	127	telegraf	1523842139	start-moving	0	1	2	0	65	679	1
2025-07-07 13:47:57.37+00	127	telegraf	791308911	start-moving	0	1	-11	13	-60	680	1
2025-07-07 13:47:08.935+00	127	telegraf	1523842139	stop-moving	1	1	3	-1	66	681	1
2025-07-07 13:48:07.752+00	127	telegraf	333419537	stationary	0	0	-3	11	-62	682	1
2025-07-07 13:48:12.755+00	127	telegraf	333419537	start-moving	0	1	-2	11	-61	683	1
2025-07-07 13:48:20.985+00	127	telegraf	840973111	stop-moving	4	4	4	-1	61	684	1
2025-07-07 13:48:21.936+00	127	telegraf	1523842139	stop-moving	1	1	3	-1	65	685	1
2025-07-07 13:48:35.171+00	127	telegraf	527134251	stop-moving	2	2	1	-1	64	691	1
2025-07-07 13:48:56.374+00	127	telegraf	791308911	stop-moving	1	1	-10	12	-60	694	1
2025-07-07 13:49:45.353+00	127	telegraf	3839865	stationary	0	0	-12	20	60	695	1
2025-07-07 13:48:38.813+00	127	telegraf	677224097	stationary	0	0	-6	-26	-57	699	1
2025-07-07 13:48:58.175+00	127	telegraf	527134251	start-moving	0	1	0	-1	64	700	1
2025-07-07 13:48:57.991+00	127	telegraf	840973111	start-moving	0	1	4	-2	61	701	1
2025-07-07 13:49:12.762+00	127	telegraf	333419537	stop-moving	1	1	-2	11	-62	702	1
2025-07-07 13:50:57.006+00	127	telegraf	840973111	stop-moving	2	2	6	-2	62	708	1
2025-07-07 13:50:57.953+00	127	telegraf	1523842139	stop-moving	2	2	2	-1	66	712	1
2025-07-07 13:51:10.953+00	127	telegraf	1523842139	start-moving	0	1	3	-1	64	715	1
2025-07-07 13:51:28.185+00	127	telegraf	527134251	stop-moving	4	4	1	0	64	716	1
2025-07-07 13:51:48.188+00	127	telegraf	527134251	start-moving	0	1	1	-1	64	719	1
2025-07-07 13:51:48.006+00	127	telegraf	840973111	start-moving	0	1	5	-3	61	720	1
2025-07-07 13:52:57.272+00	127	telegraf	305822513	stationary	0	0	0	-15	63	723	1
2025-07-07 13:52:56.964+00	127	telegraf	1523842139	stop-moving	2	2	3	-1	66	724	1
2025-07-07 13:53:29.206+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	728	1
2025-07-07 13:53:26.542+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	729	1
2025-07-07 13:53:10.963+00	127	telegraf	1523842139	start-moving	0	1	3	0	65	731	1
2025-07-07 13:54:30.017+00	127	telegraf	840973111	start-moving	0	1	5	-1	61	747	1
2025-07-07 13:55:29.194+00	127	telegraf	527134251	stop-moving	1	1	1	0	65	748	1
2025-07-07 13:55:29.023+00	127	telegraf	840973111	stop-moving	1	1	4	-1	62	753	1
2025-07-07 13:57:14.021+00	127	telegraf	840973111	stop-moving	5	5	5	-2	61	763	1
2025-07-07 13:57:12.998+00	127	telegraf	1523842139	stop-moving	2	2	2	-1	64	764	1
2025-07-07 13:58:26.68+00	127	telegraf	978202981	start-moving	0	1	4	-1	65	770	1
2025-07-07 13:58:04.004+00	127	telegraf	1523842139	start-moving	0	1	2	-1	66	771	1
2025-07-07 13:58:04.024+00	127	telegraf	840973111	start-moving	0	1	5	-2	62	772	1
2025-07-07 13:58:38.854+00	127	telegraf	677224097	stationary	0	0	-6	-28	-57	774	1
2025-07-07 13:58:56.411+00	127	telegraf	791308911	stationary	0	0	-10	11	-61	775	1
2025-07-07 13:59:04.21+00	127	telegraf	527134251	stop-moving	2	2	2	-1	65	777	1
2025-07-07 13:59:25.677+00	127	telegraf	978202981	stop-moving	1	1	4	-1	64	780	1
2025-07-07 13:59:12.781+00	127	telegraf	333419537	stationary	0	0	-2	11	-61	786	1
2025-07-07 13:59:04.029+00	127	telegraf	840973111	stop-moving	1	1	4	-1	61	787	1
2025-07-07 13:59:03.01+00	127	telegraf	1523842139	stop-moving	1	1	3	-1	65	788	1
2025-07-07 13:59:45.412+00	127	telegraf	3839865	stationary	0	0	-12	18	60	794	1
2025-07-07 13:59:59.866+00	127	telegraf	677224097	start-moving	0	1	-5	-29	-58	796	1
2025-07-07 14:01:21.054+00	127	telegraf	840973111	start-moving	0	1	5	-2	62	798	1
2025-07-07 14:01:23.028+00	127	telegraf	1523842139	start-moving	0	1	2	1	62	799	1
2025-07-07 14:01:50.237+00	127	telegraf	527134251	start-moving	0	1	1	-1	65	800	1
2025-07-07 14:02:30.981+00	127	telegraf	632461688	stationary	0	0	-8	-22	59	803	1
2025-07-07 14:02:57.333+00	127	telegraf	305822513	stationary	0	0	0	-15	62	806	1
2025-07-07 14:03:29.259+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	810	1
2025-07-07 14:09:25.746+00	127	telegraf	978202981	stationary	0	0	5	-2	65	831	1
2025-07-07 14:08:34.076+00	127	telegraf	1523842139	stop-moving	12	13	2	-1	64	837	1
2025-07-07 14:11:19.832+00	127	telegraf	333419537	stop-moving	1	1	-4	14	-62	856	1
2025-07-07 14:11:21.109+00	127	telegraf	840973111	moving	90	93	-2	-2	-62	859	1
2025-07-07 14:12:25.761+00	127	telegraf	978202981	start-moving	0	1	6	-1	64	862	1
2025-07-07 14:12:25.71+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	864	1
2025-07-07 14:12:31.051+00	127	telegraf	632461688	stationary	0	0	-9	-22	59	865	1
2025-07-07 14:12:57.454+00	127	telegraf	305822513	stationary	0	0	0	-15	62	867	1
2025-07-07 14:13:25.777+00	127	telegraf	978202981	stop-moving	1	1	5	-1	65	875	1
2025-07-07 14:13:29.306+00	127	telegraf	1126982881	stationary	0	0	3	-2	65	878	1
2025-07-07 14:13:28.457+00	127	telegraf	305822513	start-moving	0	1	3	-10	60	879	1
2025-07-07 14:13:28.561+00	127	telegraf	3839865	start-moving	0	1	9	22	63	883	1
2025-07-07 14:13:28.058+00	127	telegraf	632461688	start-moving	0	1	-6	-15	60	884	1
2025-07-07 14:12:24.285+00	127	telegraf	527134251	stop-moving	68	81	-1	-3	-64	887	1
2025-07-07 14:08:16.64+00	127	telegraf	2045592530	start-moving	0	1	4	-5	62	892	1
2025-07-07 14:11:54.573+00	127	telegraf	23439212	stationary	0	0	-34	15	49	893	1
2025-07-07 14:05:18.836+00	127	telegraf	1575827679	start-moving	0	1	3	-4	66	894	1
2025-07-07 14:05:39.583+00	127	telegraf	2045592530	start-moving	0	1	4	-5	63	895	1
2025-07-07 14:05:39.311+00	127	telegraf	974018563	start-moving	0	1	2	-5	67	897	1
2025-07-07 14:06:39.598+00	127	telegraf	2045592530	stop-moving	1	1	4	-6	64	899	1
2025-07-07 14:11:54.396+00	127	telegraf	517905260	stationary	0	0	-20	-35	50	904	1
2025-07-07 14:06:18.839+00	127	telegraf	1575827679	stop-moving	1	1	2	-2	65	905	1
2025-07-07 14:11:57.457+00	127	telegraf	720958279	stationary	0	0	-25	-25	51	907	1
2025-07-07 14:10:16.646+00	127	telegraf	2045592530	start-moving	0	1	12	-33	75	909	1
2025-07-07 14:09:15.651+00	127	telegraf	2045592530	stop-moving	1	1	4	-5	65	910	1
2025-07-07 14:14:43.321+00	127	telegraf	1126982881	start-moving	0	1	7	-2	53	913	1
2025-07-07 14:14:43.775+00	127	telegraf	978202981	start-moving	0	1	5	-1	66	914	1
2025-07-07 14:12:31.096+00	127	telegraf	1523842139	start-moving	0	1	-12	63	29	922	1
2025-07-07 14:12:31.117+00	127	telegraf	840973111	start-moving	0	1	-54	1	-1	923	1
2025-07-07 14:14:56.068+00	127	telegraf	632461688	stop-moving	19	35	0	-31	55	929	1
2025-07-07 14:14:55.562+00	127	telegraf	3839865	stop-moving	18	34	-28	8	57	931	1
2025-07-07 14:15:13.126+00	127	telegraf	840973111	stop-moving	47	64	46	40	-20	945	1
2025-07-07 14:15:43.327+00	127	telegraf	1126982881	stop-moving	1	1	3	-2	66	949	1
2025-07-07 14:16:33.315+00	127	telegraf	527134251	start-moving	0	1	29	32	37	955	1
2025-07-07 14:16:27.131+00	127	telegraf	840973111	start-moving	0	1	46	38	-21	956	1
2025-07-07 14:18:56.611+00	127	telegraf	791308911	stationary	0	0	-10	10	-61	971	1
2025-07-07 14:19:01.144+00	127	telegraf	840973111	stop-moving	4	4	8	9	61	973	1
2025-07-07 14:19:14.138+00	127	telegraf	840973111	start-moving	0	1	17	19	57	977	1
2025-07-07 14:19:00.123+00	127	telegraf	1523842139	stop-moving	6	7	-47	-12	41	980	1
2025-07-07 14:19:15.322+00	127	telegraf	527134251	start-moving	0	1	7	-6	39	983	1
2025-07-07 14:19:13.134+00	127	telegraf	1523842139	start-moving	0	1	-53	6	36	985	1
2025-07-07 14:20:10.016+00	127	telegraf	677224097	stationary	0	0	-8	-28	-57	986	1
2025-07-07 14:20:32.8+00	127	telegraf	978202981	stop-moving	1	1	5	-2	64	987	1
2025-07-07 14:20:20.325+00	127	telegraf	527134251	stop-moving	4	4	-15	-16	60	990	1
2025-07-07 14:20:19.151+00	127	telegraf	840973111	stop-moving	5	8	11	13	59	991	1
2025-07-07 14:20:19.129+00	127	telegraf	1523842139	stop-moving	7	14	-54	-5	32	996	1
2025-07-07 14:21:09.33+00	127	telegraf	527134251	start-moving	0	1	-5	-22	50	1001	1
2025-07-07 14:21:09.148+00	127	telegraf	1523842139	start-moving	0	1	-74	0	41	1002	1
2025-07-07 14:21:09.152+00	127	telegraf	840973111	start-moving	0	1	25	4	49	1003	1
2025-07-07 14:21:19.876+00	127	telegraf	333419537	stationary	0	0	-4	13	-62	1004	1
2025-07-07 14:22:02.018+00	127	telegraf	677224097	stop-moving	1	1	-7	-28	-57	1005	1
2025-07-07 14:24:58.643+00	127	telegraf	305822513	stationary	0	0	-9	-30	56	1011	1
2025-07-07 14:24:55.628+00	127	telegraf	3839865	stationary	0	0	-28	7	56	1012	1
2025-07-07 14:24:56.118+00	127	telegraf	632461688	stationary	0	0	0	-32	56	1013	1
2025-07-07 14:25:43.357+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	1014	1
2025-07-07 14:26:38.893+00	127	telegraf	333419537	stop-moving	1	1	-5	13	-61	1017	1
2025-07-07 14:27:03.652+00	127	telegraf	305822513	start-moving	0	1	-10	-28	56	1021	1
2025-07-07 14:28:03.655+00	127	telegraf	305822513	stop-moving	1	1	-10	-29	55	1028	1
2025-07-07 14:28:03.134+00	127	telegraf	632461688	stop-moving	1	1	-1	-32	55	1031	1
2025-07-07 14:28:56.654+00	127	telegraf	791308911	stationary	0	0	-9	10	-61	1038	1
2025-07-07 14:32:02.067+00	127	telegraf	677224097	stationary	0	0	-7	-27	-57	1051	1
2025-07-07 14:32:34.799+00	127	telegraf	1041420528	start-moving	0	1	2	-1	65	1052	1
2025-07-07 14:33:34.799+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	1054	1
2025-07-07 14:34:55.673+00	127	telegraf	3839865	stationary	0	0	-28	7	57	1062	1
2025-07-07 14:37:29.818+00	127	telegraf	1041420528	start-moving	0	1	3	-1	63	1074	1
2025-07-07 14:36:11.076+00	127	telegraf	677224097	stop-moving	1	1	-6	-27	-57	1075	1
2025-07-07 14:36:38.904+00	127	telegraf	333419537	stationary	0	0	-3	12	-61	1078	1
2025-07-07 14:38:03.713+00	127	telegraf	305822513	stationary	0	0	-9	-29	56	1079	1
2025-07-07 14:38:03.182+00	127	telegraf	632461688	stationary	0	0	-1	-32	54	1080	1
2025-07-07 14:38:29.814+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	63	1081	1
2025-07-07 14:38:32.689+00	127	telegraf	791308911	start-moving	0	1	-9	11	-61	1084	1
2025-07-07 14:38:33.084+00	127	telegraf	677224097	start-moving	0	1	-6	-27	-56	1085	1
2025-07-07 14:38:32.917+00	127	telegraf	333419537	start-moving	0	1	-4	12	-62	1086	1
2025-07-07 14:39:32.684+00	127	telegraf	791308911	stop-moving	1	1	-10	10	-60	1088	1
2025-07-07 14:39:33.097+00	127	telegraf	677224097	stop-moving	1	1	-7	-27	-57	1092	1
2025-07-07 14:39:32.922+00	127	telegraf	333419537	stop-moving	1	1	-3	13	-62	1093	1
2025-07-07 14:39:50.715+00	127	telegraf	305822513	start-moving	0	1	2	-27	52	1098	1
2025-07-07 14:40:50.716+00	127	telegraf	305822513	stop-moving	1	2	1	-25	57	1101	1
2025-07-07 14:40:50.685+00	127	telegraf	3839865	stop-moving	1	2	-30	14	54	1104	1
2025-07-07 14:40:51.195+00	127	telegraf	632461688	stop-moving	1	1	-8	-33	54	1107	1
2025-07-07 14:40:48.1+00	127	telegraf	677224097	start-moving	0	1	-7	-27	-57	1109	1
2025-07-07 14:40:47.934+00	127	telegraf	333419537	start-moving	0	1	-3	13	-62	1112	1
2025-07-07 14:42:58.696+00	127	telegraf	791308911	start-moving	0	1	-9	10	-62	1122	1
2025-07-07 14:40:16.461+00	127	telegraf	1947698524	stationary	0	0	-13	10	-61	1127	1
2025-07-07 14:43:05.474+00	127	telegraf	1947698524	start-moving	0	1	-11	53	-30	1128	1
2025-07-07 14:43:58.707+00	127	telegraf	791308911	stop-moving	1	1	-9	10	-61	1129	1
2025-07-07 14:43:57.099+00	127	telegraf	677224097	stop-moving	1	1	-7	-27	-57	1132	1
2025-07-07 14:44:59.703+00	127	telegraf	791308911	start-moving	0	1	-10	10	-62	1136	1
2025-07-07 14:45:27.893+00	127	telegraf	978202981	start-moving	0	1	5	-2	65	1137	1
2025-07-07 14:45:00.011+00	127	telegraf	333419537	start-moving	0	1	-3	13	-63	1139	1
2025-07-07 14:44:59.11+00	127	telegraf	677224097	start-moving	0	1	4	-21	-62	1140	1
2025-07-07 14:46:26.741+00	127	telegraf	305822513	start-moving	0	1	4	-33	63	1144	1
2025-07-07 14:47:29.227+00	127	telegraf	632461688	stop-moving	4	2	-5	3	63	1154	1
2025-07-07 14:47:49.75+00	127	telegraf	305822513	start-moving	0	1	3	-23	62	1157	1
2025-07-07 14:48:29.852+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	1171	1
2025-07-07 14:46:41.013+00	127	telegraf	333419537	stop-moving	6	9	-4	14	-61	1173	1
2025-07-07 14:49:18.688+00	127	telegraf	720958279	start-moving	0	1	-33	-31	40	1179	1
2025-07-07 14:49:19.709+00	127	telegraf	23439212	start-moving	0	1	-39	20	43	1180	1
2025-07-07 14:50:19.683+00	127	telegraf	720958279	stop-moving	2	2	-32	-30	45	1183	1
2025-07-07 14:50:18.72+00	127	telegraf	23439212	stop-moving	1	1	-40	20	42	1186	1
2025-07-07 14:50:36.724+00	127	telegraf	23439212	start-moving	0	1	-44	13	19	1190	1
2025-07-07 14:56:27.027+00	127	telegraf	978202981	stationary	0	0	5	-1	66	1199	1
2025-07-07 14:56:39.025+00	127	telegraf	978202981	start-moving	0	1	5	-2	65	1200	1
2025-07-07 14:59:18.055+00	127	telegraf	978202981	start-moving	0	1	5	-1	66	1205	1
2025-07-08 08:00:18.247+00	127	telegraf	1523842139	stationary	0	0	-12	-18	61	42	1
2025-07-08 08:01:49.013+00	127	telegraf	632461688	stationary	0	0	22	17	55	46	1
2025-07-08 08:03:00.399+00	127	telegraf	333419537	stationary	0	0	-3	-8	-63	50	1
2025-07-08 08:03:00.155+00	127	telegraf	677224097	stationary	0	0	-4	-2	-63	51	1
2025-07-08 08:02:59.519+00	127	telegraf	791308911	stationary	0	0	-26	5	-59	52	1
2025-07-08 08:04:28.566+00	127	telegraf	978202981	start-moving	0	1	0	-2	-64	53	1
2025-07-08 08:04:28.768+00	127	telegraf	1041420528	start-moving	0	1	-10	17	-70	54	1
2025-07-08 08:04:31.091+00	127	telegraf	1126982881	start-moving	0	1	0	0	-65	55	1
2025-07-08 08:01:48.924+00	127	telegraf	305822513	stationary	0	0	-10	-2	63	56	1
2025-07-08 08:06:00.772+00	127	telegraf	1041420528	stop-moving	4	2	0	-2	-65	63	1
2025-07-08 08:06:16.082+00	127	telegraf	1126982881	stop-moving	4	4	0	0	-64	69	1
2025-07-08 08:10:17.795+00	127	telegraf	840973111	stationary	0	0	6	21	56	80	1
2025-07-08 08:11:40.585+00	127	telegraf	978202981	start-moving	0	1	-2	-1	-83	82	1
2025-07-08 08:11:40.784+00	127	telegraf	1041420528	start-moving	0	1	-1	-1	-67	83	1
2025-07-08 08:11:41.098+00	127	telegraf	1126982881	start-moving	0	1	0	-1	-65	84	1
2025-07-08 08:29:10.677+00	127	telegraf	978202981	stop-moving	4	4	-2	-3	-65	139	1
2025-07-08 08:29:11.847+00	127	telegraf	1041420528	stop-moving	48	45	2	-2	65	142	1
2025-07-08 08:29:12.138+00	127	telegraf	1126982881	stop-moving	7	7	0	0	-66	145	1
2025-07-08 08:29:53.2+00	127	telegraf	677224097	start-moving	0	1	-5	-4	-62	151	1
2025-07-08 08:30:18.005+00	127	telegraf	527134251	stationary	0	0	-12	23	-59	154	1
2025-07-08 08:30:18.307+00	127	telegraf	1523842139	stationary	0	0	-13	-17	61	155	1
2025-07-08 08:30:17.851+00	127	telegraf	840973111	stationary	0	0	5	22	57	156	1
2025-07-08 08:30:53.198+00	127	telegraf	677224097	stop-moving	1	1	-4	-3	-63	159	1
2025-07-08 08:33:00.467+00	127	telegraf	333419537	stationary	0	0	-3	-9	-62	167	1
2025-07-08 08:32:59.663+00	127	telegraf	791308911	stationary	0	0	-25	5	-59	168	1
2025-07-08 08:32:59.663+00	127	telegraf	791308911	stationary	0	0	-25	5	-59	168	1
2025-07-08 08:39:11.914+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	176	1
2025-07-08 08:39:12.157+00	127	telegraf	1126982881	stationary	0	0	0	0	-64	177	1
2025-07-08 08:39:59.214+00	127	telegraf	677224097	start-moving	0	1	-6	-2	-63	181	1
2025-07-08 08:40:18.342+00	127	telegraf	1523842139	stationary	0	0	-12	-17	61	182	1
2025-07-08 08:40:17.91+00	127	telegraf	840973111	stationary	0	0	6	21	56	183	1
2025-07-08 08:40:18.043+00	127	telegraf	527134251	stationary	0	0	-12	22	-59	184	1
2025-07-08 08:42:59.673+00	127	telegraf	791308911	stationary	0	0	-25	5	-58	197	1
2025-07-08 08:43:00.465+00	127	telegraf	333419537	stationary	0	0	-4	-10	-63	198	1
2025-07-08 08:48:50.958+00	127	telegraf	978202981	start-moving	0	1	-1	-3	-65	210	1
2025-07-08 08:48:51.37+00	127	telegraf	1126982881	start-moving	0	1	1	0	-65	211	1
2025-07-08 08:49:12.155+00	127	telegraf	1041420528	stationary	0	0	3	-3	64	212	1
2025-07-08 08:49:51.015+00	127	telegraf	978202981	stop-moving	1	1	-2	-3	-65	213	1
2025-07-08 08:49:50.407+00	127	telegraf	1126982881	stop-moving	1	1	0	0	-65	216	1
2025-07-08 08:50:18.339+00	127	telegraf	527134251	stationary	0	0	-12	22	-59	220	1
2025-07-08 08:50:18.164+00	127	telegraf	840973111	stationary	0	0	6	20	57	221	1
2025-07-08 08:50:59.369+00	127	telegraf	677224097	stationary	0	0	-5	-2	-63	225	1
2025-07-08 08:53:00.574+00	127	telegraf	333419537	stationary	0	0	-3	-9	-63	231	1
2025-07-08 08:52:59.792+00	127	telegraf	791308911	stationary	0	0	-25	5	-57	232	1
2025-07-08 08:55:46.19+00	127	telegraf	632461688	stationary	0	0	1	18	60	233	1
2025-07-08 08:55:46.627+00	127	telegraf	3839865	stationary	0	0	6	-2	65	234	1
2025-07-08 08:55:46.212+00	127	telegraf	305822513	stationary	0	0	10	-30	55	235	1
2025-07-08 08:59:12.151+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	239	1
2025-07-08 08:59:51.017+00	127	telegraf	978202981	stationary	0	0	-1	-3	-64	240	1
2025-07-08 09:00:18.557+00	127	telegraf	1523842139	stationary	0	0	-12	-17	62	241	1
2025-07-08 08:59:50.388+00	127	telegraf	1126982881	stationary	0	0	0	0	-64	244	1
2025-07-08 09:00:59.453+00	127	telegraf	677224097	stationary	0	0	-4	-2	-62	248	1
2025-07-08 09:01:30.394+00	127	telegraf	1126982881	start-moving	0	1	0	0	-65	249	1
2025-07-08 09:02:30.035+00	127	telegraf	978202981	stop-moving	1	1	-2	-3	-64	250	1
2025-07-08 09:02:29.415+00	127	telegraf	1126982881	stop-moving	1	1	0	-1	-65	253	1
2025-07-08 09:03:00.66+00	127	telegraf	333419537	stationary	0	0	-4	-10	-62	258	1
2025-07-08 09:09:12.231+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	269	1
2025-07-08 09:10:18.607+00	127	telegraf	1523842139	stationary	0	0	-12	-18	60	272	1
2025-07-08 09:10:18.347+00	127	telegraf	527134251	stationary	0	0	-12	23	-60	273	1
2025-07-08 09:10:18.13+00	127	telegraf	840973111	stationary	0	0	6	21	57	275	1
2025-07-08 09:10:59.511+00	127	telegraf	677224097	stationary	0	0	-5	-2	-63	277	1
2025-07-08 09:12:30.078+00	127	telegraf	978202981	stationary	0	0	-2	-3	-65	280	1
2025-07-08 09:12:29.506+00	127	telegraf	1126982881	stationary	0	0	-1	0	-66	281	1
2025-07-08 09:13:00.695+00	127	telegraf	333419537	stationary	0	0	-4	-9	-63	283	1
2025-07-08 09:15:46.79+00	127	telegraf	3839865	stationary	0	0	5	-2	65	292	1
2025-07-08 09:15:46.455+00	127	telegraf	632461688	stationary	0	0	1	17	59	294	1
2025-07-09 09:20:15.286+00	127	telegraf	978202981	stationary	0	0	-1	-3	-65	1	1
2025-07-09 09:24:11.384+00	127	telegraf	978202981	stop-moving	1	1	-1	-3	-63	7	1
2025-07-09 09:30:09.477+00	127	telegraf	1041420528	stationary	0	0	1	-3	64	14	1
2025-07-09 09:30:09.342+00	127	telegraf	1126982881	stationary	0	0	0	-1	-65	15	1
2025-07-09 09:34:11.321+00	127	telegraf	978202981	stationary	0	0	-1	-3	-64	16	1
2025-07-09 09:34:35.112+00	127	telegraf	46389462	stop-moving	13	11	-28	-55	-3	17	1
2025-07-09 09:40:09.487+00	127	telegraf	1041420528	stationary	0	0	0	-1	66	32	1
2025-07-09 09:40:09.419+00	127	telegraf	1126982881	stationary	0	0	0	-1	-65	33	1
2025-07-09 09:44:11.373+00	127	telegraf	978202981	stationary	0	0	-2	-2	-64	36	1
2025-07-09 09:44:51.423+00	127	telegraf	1126982881	stop-moving	1	1	0	-2	-64	37	1
2025-07-09 09:47:54.403+00	127	telegraf	978202981	start-moving	0	1	-1	-3	-64	40	1
2025-07-09 09:48:54.407+00	127	telegraf	978202981	stop-moving	1	1	-2	-3	-64	43	1
2025-07-09 09:58:54.445+00	127	telegraf	978202981	stationary	0	0	-1	-3	-64	56	1
2025-07-09 10:00:09.587+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	58	1
2025-07-09 10:02:48.601+00	127	telegraf	1041420528	start-moving	0	1	1	-1	65	59	1
2025-07-09 10:08:54.486+00	127	telegraf	978202981	stationary	0	0	-1	-2	-62	65	1
2025-07-09 10:08:54.57+00	127	telegraf	1126982881	stationary	0	0	0	-1	-66	67	1
2025-07-09 10:10:52.494+00	127	telegraf	978202981	start-moving	0	1	-1	-1	-66	68	1
2025-07-09 10:10:53.576+00	127	telegraf	1126982881	start-moving	0	1	0	-4	-78	69	1
2025-07-09 10:13:48.637+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	76	1
2025-07-09 10:14:18.507+00	127	telegraf	978202981	start-moving	0	1	1	-4	-66	77	1
2025-07-09 10:14:18.639+00	127	telegraf	1041420528	start-moving	0	1	0	1	58	78	1
2025-07-09 10:14:18.604+00	127	telegraf	1126982881	start-moving	0	1	-5	-2	-61	79	1
2025-07-09 10:15:26.645+00	127	telegraf	1041420528	stop-moving	2	2	0	-1	64	84	1
2025-07-09 10:15:27.594+00	127	telegraf	1126982881	stop-moving	3	3	0	-1	-65	87	1
2025-07-09 10:17:27.532+00	127	telegraf	978202981	start-moving	0	1	-2	-2	-65	90	1
2025-07-09 10:18:27.537+00	127	telegraf	978202981	stop-moving	1	1	-2	-4	-64	92	1
2025-07-09 10:18:45.662+00	127	telegraf	1041420528	start-moving	0	1	1	-1	63	98	1
2025-07-09 10:19:44.665+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	64	99	1
2025-07-09 10:24:09.551+00	127	telegraf	978202981	start-moving	0	1	-1	-3	-62	103	1
2025-07-09 10:24:09.681+00	127	telegraf	1041420528	start-moving	0	1	1	-2	64	104	1
2025-07-09 10:26:02.691+00	127	telegraf	1041420528	stop-moving	10	10	-16	-27	56	108	1
2025-07-09 10:26:08.562+00	127	telegraf	978202981	stop-moving	7	8	7	-33	-56	112	1
2025-07-09 10:26:41.643+00	127	telegraf	1126982881	stop-moving	9	8	0	-2	-65	115	1
2025-07-09 10:26:51.69+00	127	telegraf	1041420528	start-moving	0	1	-18	-28	56	118	1
2025-07-09 10:27:51.697+00	127	telegraf	1041420528	stop-moving	1	1	-16	-27	57	121	1
2025-07-09 10:47:32.75+00	127	telegraf	1126982881	start-moving	0	1	-1	-2	-65	193	1
2025-07-09 10:48:32.765+00	127	telegraf	1126982881	stop-moving	1	1	-1	-1	-65	194	1
2025-07-09 10:49:42.652+00	127	telegraf	978202981	stationary	0	0	-6	-27	-59	197	1
2025-07-09 10:49:46.778+00	127	telegraf	1126982881	start-moving	0	1	-5	-4	-59	198	1
2025-07-09 10:49:48.659+00	127	telegraf	978202981	start-moving	0	1	-6	-25	-60	199	1
2025-07-09 10:49:46.854+00	127	telegraf	1041420528	start-moving	0	1	-29	-4	65	200	1
2025-07-09 10:50:47.664+00	127	telegraf	978202981	stop-moving	1	1	-6	-26	-60	201	1
2025-07-09 10:50:48.791+00	127	telegraf	1126982881	stop-moving	2	2	0	-1	-65	204	1
2025-07-09 10:52:49.68+00	127	telegraf	978202981	start-moving	0	1	-7	-26	-60	210	1
2025-07-09 13:34:04.547+00	127	telegraf	978202981	start-moving	0	1	-2	-7	-63	558	1
2025-07-09 13:34:04.549+00	127	telegraf	1126982881	start-moving	0	1	0	-3	-66	559	1
2025-07-09 13:35:03.56+00	127	telegraf	978202981	stop-moving	1	1	-3	-7	-63	561	1
2025-07-09 13:35:04.563+00	127	telegraf	1126982881	stop-moving	1	1	-1	-4	-64	564	1
2025-07-09 13:43:26.593+00	127	telegraf	1126982881	start-moving	0	1	-1	-2	-64	572	1
2025-07-09 13:43:27.626+00	127	telegraf	978202981	start-moving	0	1	15	-16	-55	573	1
2025-07-09 13:43:27.983+00	127	telegraf	1041420528	start-moving	0	1	3	13	92	574	1
2025-07-09 13:44:29.989+00	127	telegraf	1041420528	stop-moving	2	3	0	-3	64	579	1
2025-07-09 13:44:30.599+00	127	telegraf	1126982881	stop-moving	4	5	-1	-3	-66	581	1
2025-07-09 13:50:02.623+00	127	telegraf	1126982881	start-moving	0	1	0	-4	-64	587	1
2025-07-09 13:51:01.615+00	127	telegraf	1126982881	stop-moving	1	1	-1	-5	-64	588	1
2025-07-09 13:56:16.888+00	127	telegraf	978202981	stop-moving	1	1	2	-1	66	2	1
\.


--
-- Data for Name: _hyper_3_15_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_15_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-07-10 07:25:05.308+00	127	telegraf	978202981	start-moving	0	1	32	-5	42	14	1
2025-07-10 07:25:04.771+00	127	telegraf	1041420528	start-moving	0	1	2	-4	60	15	1
2025-07-10 07:25:05.117+00	127	telegraf	1126982881	start-moving	0	1	4	0	64	16	1
2025-07-10 07:26:04.79+00	127	telegraf	1041420528	stop-moving	1	2	3	-1	63	20	1
2025-07-10 07:26:11.338+00	127	telegraf	978202981	stop-moving	8	9	10	-2	63	23	1
2025-07-10 07:26:12.343+00	127	telegraf	978202981	start-moving	0	1	6	-3	65	24	1
2025-07-10 07:26:05.126+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	27	1
2025-07-10 07:26:51.132+00	127	telegraf	1126982881	start-moving	0	1	4	0	65	33	1
2025-07-10 07:26:50.798+00	127	telegraf	1041420528	start-moving	0	1	2	0	64	34	1
2025-07-10 07:27:49.375+00	127	telegraf	978202981	stop-moving	14	20	3	-4	65	38	1
2025-07-10 07:29:08.383+00	127	telegraf	978202981	start-moving	0	1	4	-3	65	53	1
2025-07-10 07:29:07.143+00	127	telegraf	1126982881	start-moving	0	1	4	0	66	54	1
2025-07-10 07:30:07.158+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	60	1
2025-07-10 07:37:49.854+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	67	1
2025-07-10 07:40:07.459+00	127	telegraf	978202981	stationary	0	0	3	-3	65	70	1
2025-07-10 07:40:07.192+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	71	1
2025-07-10 07:47:26.914+00	127	telegraf	1041420528	start-moving	0	1	3	0	65	74	1
2025-07-10 07:48:25.919+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	75	1
2025-07-10 07:48:57.921+00	127	telegraf	1041420528	start-moving	0	1	3	-1	63	78	1
2025-07-10 07:49:57.928+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	65	79	1
2025-07-10 07:50:07.499+00	127	telegraf	978202981	stationary	0	0	4	-3	66	82	1
2025-07-10 07:50:07.24+00	127	telegraf	1126982881	stationary	0	0	4	0	64	84	1
2025-07-10 07:59:57.971+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	88	1
2025-07-10 08:00:07.542+00	127	telegraf	978202981	stationary	0	0	3	-3	66	89	1
2025-07-10 08:01:21.984+00	127	telegraf	1041420528	start-moving	0	1	2	-1	64	93	1
2025-07-10 08:02:20.98+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	64	94	1
2025-07-10 08:04:27.571+00	127	telegraf	978202981	start-moving	0	1	3	-3	66	97	1
2025-07-10 08:04:27.322+00	127	telegraf	1126982881	start-moving	0	1	4	-1	64	98	1
2025-07-10 08:05:27.574+00	127	telegraf	978202981	stop-moving	1	1	3	-3	65	99	1
2025-07-10 08:05:26.323+00	127	telegraf	1126982881	stop-moving	1	1	5	-1	64	102	1
2025-07-10 08:12:21.034+00	127	telegraf	1041420528	stationary	0	0	2	0	64	108	1
2025-07-10 08:15:26.376+00	127	telegraf	1126982881	stationary	0	0	4	0	65	109	1
2025-07-10 08:15:27.675+00	127	telegraf	978202981	stationary	0	0	4	-3	65	110	1
2025-07-10 08:22:21.074+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	113	1
2025-07-10 08:25:26.426+00	127	telegraf	1126982881	stationary	0	0	4	0	66	114	1
2025-07-10 08:25:27.783+00	127	telegraf	978202981	stationary	0	0	3	-3	65	115	1
2025-07-10 08:32:21.114+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	120	1
2025-07-10 08:35:07.477+00	127	telegraf	1126982881	start-moving	0	1	3	0	65	121	1
2025-07-10 08:35:27.813+00	127	telegraf	978202981	stationary	0	0	3	-4	64	122	1
2025-07-10 08:36:09.815+00	127	telegraf	978202981	start-moving	0	1	3	-2	67	123	1
2025-07-10 08:36:06.489+00	127	telegraf	1126982881	stop-moving	1	1	4	0	65	124	1
2025-07-10 08:36:10.488+00	127	telegraf	1126982881	start-moving	0	1	5	-2	79	127	1
2025-07-10 08:36:10.128+00	127	telegraf	1041420528	start-moving	0	1	4	-2	64	128	1
2025-07-10 08:37:10.814+00	127	telegraf	978202981	stop-moving	2	2	3	-3	66	130	1
2025-07-10 08:37:10.124+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	63	133	1
2025-07-10 08:37:10.489+00	127	telegraf	1126982881	stop-moving	1	1	4	0	66	134	1
2025-07-10 08:38:47.137+00	127	telegraf	1041420528	start-moving	0	1	2	-1	65	139	1
2025-07-10 08:39:47.138+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	144	1
2025-07-10 08:47:10.85+00	127	telegraf	978202981	stationary	0	0	2	-3	66	151	1
2025-07-10 08:47:10.527+00	127	telegraf	1126982881	stationary	0	0	4	1	65	152	1
2025-07-10 08:49:47.177+00	127	telegraf	1041420528	stationary	0	0	2	1	64	155	1
2025-07-10 08:57:10.892+00	127	telegraf	978202981	stationary	0	0	3	-5	65	156	1
2025-07-10 08:57:10.663+00	127	telegraf	1126982881	stationary	0	0	5	0	65	157	1
2025-07-10 08:59:47.219+00	127	telegraf	1041420528	stationary	0	0	2	-1	66	159	1
2025-07-10 09:00:53.22+00	127	telegraf	1041420528	start-moving	0	1	2	0	64	161	1
2025-07-10 09:01:52.232+00	127	telegraf	1041420528	stop-moving	1	1	3	-1	65	166	1
2025-07-10 09:07:10.921+00	127	telegraf	978202981	stationary	0	0	3	-4	65	169	1
2025-07-10 09:11:52.267+00	127	telegraf	1041420528	stationary	0	0	1	0	64	171	1
2025-07-10 09:21:52.308+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	178	1
2025-07-10 09:27:10.977+00	127	telegraf	978202981	stationary	0	0	4	-3	66	181	1
2025-07-10 09:27:10.802+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	182	1
2025-07-10 09:31:52.359+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	183	1
2025-07-10 09:37:11.046+00	127	telegraf	978202981	stationary	0	0	4	-4	65	187	1
2025-07-10 09:41:52.409+00	127	telegraf	1041420528	stationary	0	0	2	0	64	190	1
2025-07-10 09:47:11.135+00	127	telegraf	978202981	stationary	0	0	4	-3	66	194	1
2025-07-10 09:48:41.143+00	127	telegraf	978202981	start-moving	0	1	4	-4	64	197	1
2025-07-10 09:49:40.152+00	127	telegraf	978202981	stop-moving	1	1	3	-2	66	199	1
2025-07-10 09:51:52.602+00	127	telegraf	1041420528	stationary	0	0	2	0	65	202	1
2025-07-10 09:57:10.966+00	127	telegraf	1126982881	stationary	0	0	4	1	64	203	1
2025-07-10 10:01:52.783+00	127	telegraf	1041420528	stationary	0	0	2	0	64	206	1
2025-07-10 10:07:11.033+00	127	telegraf	1126982881	stationary	0	0	5	0	64	210	1
2025-07-10 10:11:52.921+00	127	telegraf	1041420528	stationary	0	0	3	0	64	212	1
2025-07-10 10:19:40.3+00	127	telegraf	978202981	stationary	0	0	4	-3	64	219	1
2025-07-10 11:41:53.947+00	127	telegraf	1041420528	stationary	0	0	3	0	64	270	1
2025-07-10 11:47:11.602+00	127	telegraf	1126982881	stationary	0	0	3	1	65	272	1
2025-07-10 11:51:54.079+00	127	telegraf	1041420528	stationary	0	0	2	0	64	275	1
2025-07-10 11:57:11.647+00	127	telegraf	1126982881	stationary	0	0	4	0	64	277	1
2025-07-10 12:01:54.238+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	280	1
2025-07-10 12:11:54.465+00	127	telegraf	1041420528	stationary	0	0	1	0	64	293	1
2025-07-10 12:21:54.646+00	127	telegraf	1041420528	stationary	0	0	2	0	64	297	1
2025-07-10 12:22:17.929+00	127	telegraf	978202981	stationary	0	0	4	-3	66	298	1
2025-07-10 12:27:11.852+00	127	telegraf	1126982881	stationary	0	0	4	1	65	299	1
2025-07-10 12:31:54.797+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	301	1
2025-07-10 12:32:18.001+00	127	telegraf	978202981	stationary	0	0	4	-4	66	302	1
2025-07-10 12:37:11.88+00	127	telegraf	1126982881	stationary	0	0	4	1	64	310	1
2025-07-10 12:41:54.92+00	127	telegraf	1041420528	stationary	0	0	2	1	64	314	1
2025-07-10 12:42:18.059+00	127	telegraf	978202981	stationary	0	0	5	-3	64	315	1
2025-07-10 12:47:11.916+00	127	telegraf	1126982881	stationary	0	0	5	1	66	316	1
2025-07-10 12:51:55.069+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	317	1
2025-07-10 12:52:18.099+00	127	telegraf	978202981	stationary	0	0	4	-3	65	318	1
2025-07-10 12:57:11.952+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	319	1
2025-07-10 13:01:55.203+00	127	telegraf	1041420528	stationary	0	0	1	0	63	321	1
2025-07-10 13:02:18.135+00	127	telegraf	978202981	stationary	0	0	4	-4	66	322	1
2025-07-10 13:11:55.417+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	332	1
2025-07-10 13:17:12.062+00	127	telegraf	1126982881	stationary	0	0	4	0	65	334	1
2025-07-10 13:21:55.598+00	127	telegraf	1041420528	stationary	0	0	2	0	65	335	1
2025-07-10 13:22:18.369+00	127	telegraf	978202981	stationary	0	0	4	-4	65	336	1
2025-07-10 13:27:12.153+00	127	telegraf	1126982881	stationary	0	0	4	0	64	337	1
2025-07-10 13:31:55.741+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	339	1
2025-07-10 13:37:12.29+00	127	telegraf	1126982881	stationary	0	0	4	0	65	344	1
2025-07-10 13:41:55.893+00	127	telegraf	1041420528	stationary	0	0	2	0	64	349	1
2025-07-10 13:51:56.046+00	127	telegraf	1041420528	stationary	0	0	1	1	63	354	1
2025-07-10 13:52:18.475+00	127	telegraf	978202981	stationary	0	0	4	-4	65	355	1
2025-07-10 13:57:12.4+00	127	telegraf	1126982881	stationary	0	0	4	1	65	356	1
2025-07-10 14:01:56.238+00	127	telegraf	1041420528	stationary	0	0	2	0	63	357	1
2025-07-10 14:02:18.514+00	127	telegraf	978202981	stationary	0	0	4	-4	66	358	1
2025-07-10 14:07:12.45+00	127	telegraf	1126982881	stationary	0	0	4	1	65	361	1
2025-07-10 14:11:56.402+00	127	telegraf	1041420528	stationary	0	0	1	0	64	368	1
2025-07-10 14:12:18.553+00	127	telegraf	978202981	stationary	0	0	4	-4	66	369	1
2025-07-10 14:17:12.497+00	127	telegraf	1126982881	stationary	0	0	5	0	65	371	1
2025-07-10 14:21:56.558+00	127	telegraf	1041420528	stationary	0	0	1	0	65	372	1
2025-07-10 14:27:12.544+00	127	telegraf	1126982881	stationary	0	0	4	1	65	374	1
2025-07-10 14:31:56.704+00	127	telegraf	1041420528	stationary	0	0	2	0	65	375	1
2025-07-10 14:41:56.85+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	386	1
2025-07-10 14:42:18.706+00	127	telegraf	978202981	stationary	0	0	5	-3	64	387	1
2025-07-10 14:46:53.917+00	127	telegraf	1041420528	start-moving	0	1	2	0	64	389	1
2025-07-10 14:47:52.935+00	127	telegraf	1041420528	stop-moving	1	1	2	0	64	391	1
2025-07-10 14:57:52.969+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	396	1
2025-07-10 14:58:05.827+00	127	telegraf	978202981	start-moving	0	1	4	-3	66	397	1
2025-07-10 14:58:05.977+00	127	telegraf	1041420528	start-moving	0	1	1	-1	65	398	1
2025-07-10 14:59:05.831+00	127	telegraf	978202981	stop-moving	1	1	4	-2	65	399	1
2025-07-10 14:59:04.984+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	65	402	1
2025-07-10 15:07:12.746+00	127	telegraf	1126982881	stationary	0	0	4	0	64	407	1
2025-07-10 15:09:05.911+00	127	telegraf	978202981	stationary	0	0	4	-3	65	409	1
2025-07-10 15:09:05.044+00	127	telegraf	1041420528	stationary	0	0	2	0	64	410	1
2025-07-10 15:17:12.794+00	127	telegraf	1126982881	stationary	0	0	4	0	65	418	1
2025-07-10 15:19:05.951+00	127	telegraf	978202981	stationary	0	0	4	-3	65	419	1
2025-07-10 15:19:05.156+00	127	telegraf	1041420528	stationary	0	0	2	-1	66	420	1
2025-07-10 15:27:12.843+00	127	telegraf	1126982881	stationary	0	0	4	1	65	421	1
2025-07-10 15:29:05.986+00	127	telegraf	978202981	stationary	0	0	5	-3	65	422	1
2025-07-10 15:29:05.23+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	423	1
2025-07-10 15:37:12.917+00	127	telegraf	1126982881	stationary	0	0	4	0	65	425	1
2025-07-10 15:39:06.082+00	127	telegraf	978202981	stationary	0	0	4	-3	64	427	1
2025-07-10 15:47:12.991+00	127	telegraf	1126982881	stationary	0	0	4	0	64	436	1
2025-07-10 15:49:06.189+00	127	telegraf	978202981	stationary	0	0	4	-3	66	437	1
2025-07-10 15:49:05.376+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	438	1
2025-07-10 15:57:13.082+00	127	telegraf	1126982881	stationary	0	0	4	0	65	439	1
2025-07-10 15:59:06.22+00	127	telegraf	978202981	stationary	0	0	4	-3	65	440	1
2025-07-10 15:59:05.52+00	127	telegraf	1041420528	stationary	0	0	2	0	64	441	1
2025-07-10 16:09:06.269+00	127	telegraf	978202981	stationary	0	0	4	-3	65	449	1
2025-07-10 16:09:05.608+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	450	1
2025-07-10 16:17:13.216+00	127	telegraf	1126982881	stationary	0	0	4	0	65	456	1
2025-07-10 16:18:15.225+00	127	telegraf	1126982881	start-moving	0	1	4	0	65	457	1
2025-07-10 16:19:06.314+00	127	telegraf	978202981	stationary	0	0	3	-3	66	458	1
2025-07-10 16:19:05.673+00	127	telegraf	1041420528	stationary	0	0	2	0	64	459	1
2025-07-10 16:19:15.225+00	127	telegraf	1126982881	stop-moving	1	1	3	1	65	460	1
2025-07-10 16:29:15.272+00	127	telegraf	1126982881	stationary	0	0	4	0	65	468	1
2025-07-10 16:35:01.739+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	469	1
2025-07-10 16:39:06.45+00	127	telegraf	978202981	stationary	0	0	4	-3	66	473	1
2025-07-10 16:39:15.325+00	127	telegraf	1126982881	stationary	0	0	4	0	65	475	1
2025-07-10 16:45:01.8+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	483	1
2025-07-10 16:49:06.515+00	127	telegraf	978202981	stationary	0	0	4	-3	65	484	1
2025-07-10 16:49:15.356+00	127	telegraf	1126982881	stationary	0	0	4	0	66	485	1
2025-07-10 16:55:01.844+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	486	1
2025-07-10 16:59:06.571+00	127	telegraf	978202981	stationary	0	0	5	-3	66	487	1
2025-07-10 16:59:15.403+00	127	telegraf	1126982881	stationary	0	0	4	0	64	488	1
2025-07-10 17:05:01.893+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	489	1
2025-07-10 17:09:06.641+00	127	telegraf	978202981	stationary	0	0	3	-3	65	492	1
2025-07-10 17:09:15.463+00	127	telegraf	1126982881	stationary	0	0	4	0	64	493	1
2025-07-10 17:19:06.694+00	127	telegraf	978202981	stationary	0	0	4	-3	63	502	1
2025-07-10 17:19:15.512+00	127	telegraf	1126982881	stationary	0	0	4	0	65	503	1
2025-07-10 17:25:02.229+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	504	1
2025-07-10 17:29:06.737+00	127	telegraf	978202981	stationary	0	0	4	-3	65	505	1
2025-07-10 17:35:02.372+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	507	1
2025-07-10 17:39:06.774+00	127	telegraf	978202981	stationary	0	0	4	-4	64	510	1
2025-07-10 17:45:02.51+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	519	1
2025-07-10 17:49:06.818+00	127	telegraf	978202981	stationary	0	0	4	-3	65	520	1
2025-07-10 17:55:02.638+00	127	telegraf	1041420528	stationary	0	0	2	0	64	523	1
2025-07-11 06:51:29.049+00	127	telegraf	1041420528	stop-moving	1	1	2	-1	64	1	1
2025-07-11 06:58:48.294+00	127	telegraf	978202981	stationary	0	0	3	-4	65	10	1
2025-07-11 07:01:29.207+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	11	1
2025-07-11 07:08:48.322+00	127	telegraf	978202981	stationary	0	0	5	-3	64	18	1
2025-07-11 07:18:48.309+00	127	telegraf	978202981	stationary	0	0	4	-2	66	22	1
2025-07-11 07:18:48.331+00	127	telegraf	1126982881	stationary	0	0	4	0	66	23	1
2025-07-11 07:21:29.241+00	127	telegraf	1041420528	stationary	0	0	2	0	64	24	1
2025-07-11 07:28:48.407+00	127	telegraf	1126982881	stationary	0	0	3	0	65	28	1
2025-07-11 07:28:48.346+00	127	telegraf	978202981	stationary	0	0	4	-3	65	29	1
2025-07-11 07:38:48.461+00	127	telegraf	1126982881	stationary	0	0	4	0	65	36	1
2025-07-11 07:38:48.473+00	127	telegraf	978202981	stationary	0	0	3	-3	66	37	1
2025-07-11 07:41:29.319+00	127	telegraf	1041420528	stationary	0	0	2	0	63	39	1
2025-07-11 07:47:42.359+00	127	telegraf	1041420528	start-moving	0	1	-5	1	46	40	1
2025-07-11 07:47:42.486+00	127	telegraf	1126982881	start-moving	0	1	4	1	62	41	1
2025-07-11 07:48:41.5+00	127	telegraf	1126982881	stop-moving	1	1	4	0	65	43	1
2025-07-11 07:48:42.367+00	127	telegraf	1041420528	stop-moving	1	1	2	0	63	46	1
2025-07-11 07:48:48.547+00	127	telegraf	978202981	stationary	0	0	5	-4	65	49	1
2025-07-11 07:51:59.376+00	127	telegraf	1041420528	start-moving	0	1	2	0	63	51	1
2025-07-11 07:52:58.383+00	127	telegraf	1041420528	stop-moving	1	1	1	-1	65	52	1
2025-07-11 08:58:08.881+00	127	telegraf	978202981	stationary	0	0	4	-3	65	97	1
2025-07-11 09:02:58.649+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	101	1
2025-07-11 09:08:08.928+00	127	telegraf	978202981	stationary	0	0	4	-3	65	107	1
2025-07-11 09:12:58.688+00	127	telegraf	1041420528	stationary	0	0	2	0	64	111	1
2025-07-11 09:18:08.965+00	127	telegraf	978202981	stationary	0	0	4	-3	65	112	1
2025-07-11 09:22:05.974+00	127	telegraf	978202981	start-moving	0	1	4	-3	65	116	1
2025-07-11 09:22:58.813+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	118	1
2025-07-11 09:23:05.981+00	127	telegraf	978202981	stop-moving	1	1	4	-3	65	119	1
2025-07-12 05:51:09.914+00	127	telegraf	1126982881	stop-moving	1	1	1	0	66	9	1
2025-07-12 05:59:28.529+00	127	telegraf	978202981	stationary	0	0	3	-7	63	17	1
2025-07-12 05:59:30.083+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	18	1
2025-07-12 06:01:09.982+00	127	telegraf	1126982881	stationary	0	0	2	0	65	19	1
2025-07-12 06:09:30.105+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	22	1
2025-07-12 06:11:10.08+00	127	telegraf	1126982881	stationary	0	0	2	0	65	23	1
2025-07-12 06:19:30.188+00	127	telegraf	1041420528	stationary	0	0	2	-1	62	28	1
2025-07-12 06:19:28.604+00	127	telegraf	978202981	stationary	0	0	3	-7	65	29	1
2025-07-12 06:21:10.184+00	127	telegraf	1126982881	stationary	0	0	2	1	65	32	1
2025-07-12 06:29:28.693+00	127	telegraf	978202981	stationary	0	0	4	-7	65	37	1
2025-07-12 06:29:30.292+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	38	1
2025-07-12 06:31:10.216+00	127	telegraf	1126982881	stationary	0	0	3	-1	64	40	1
2025-07-12 06:39:30.352+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	43	1
2025-07-12 06:39:28.796+00	127	telegraf	978202981	stationary	0	0	4	-7	64	44	1
2025-07-12 06:49:28.869+00	127	telegraf	978202981	stationary	0	0	3	-6	64	49	1
2025-07-12 06:49:30.437+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	50	1
2025-07-12 06:51:10.303+00	127	telegraf	1126982881	stationary	0	0	2	0	66	53	1
2025-07-12 06:59:28.92+00	127	telegraf	978202981	stationary	0	0	4	-7	65	58	1
2025-07-12 06:59:30.488+00	127	telegraf	1041420528	stationary	0	0	1	-1	65	59	1
2025-07-12 07:01:10.343+00	127	telegraf	1126982881	stationary	0	0	1	0	65	60	1
2025-07-12 07:19:29.004+00	127	telegraf	978202981	stationary	0	0	4	-7	65	67	1
2025-07-12 07:19:30.554+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	68	1
2025-07-12 07:21:10.419+00	127	telegraf	1126982881	stationary	0	0	2	1	64	70	1
2025-07-12 07:29:29.047+00	127	telegraf	978202981	stationary	0	0	4	-7	65	76	1
2025-07-12 07:29:30.65+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	77	1
2025-07-12 07:31:10.453+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	78	1
2025-07-12 07:41:10.495+00	127	telegraf	1126982881	stationary	0	0	2	1	64	83	1
2025-07-12 07:49:29.162+00	127	telegraf	978202981	stationary	0	0	3	-7	65	85	1
2025-07-12 07:49:30.713+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	86	1
2025-07-12 07:51:10.58+00	127	telegraf	1126982881	stationary	0	0	2	0	65	87	1
2025-07-12 07:59:29.197+00	127	telegraf	978202981	stationary	0	0	4	-7	65	95	1
2025-07-12 07:59:30.757+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	96	1
2025-07-12 08:01:10.619+00	127	telegraf	1126982881	stationary	0	0	3	0	64	97	1
2025-07-12 08:09:30.785+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	99	1
2025-07-12 08:09:29.244+00	127	telegraf	978202981	stationary	0	0	4	-6	65	100	1
2025-07-12 08:11:10.654+00	127	telegraf	1126982881	stationary	0	0	2	0	65	101	1
2025-07-12 08:19:30.818+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	104	1
2025-07-12 08:19:29.276+00	127	telegraf	978202981	stationary	0	0	4	-7	64	105	1
2025-07-12 08:21:10.709+00	127	telegraf	1126982881	stationary	0	0	2	0	65	106	1
2025-07-12 08:31:10.777+00	127	telegraf	1126982881	stationary	0	0	3	1	65	115	1
2025-07-12 08:39:29.364+00	127	telegraf	978202981	stationary	0	0	4	-7	66	117	1
2025-07-12 08:39:30.892+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	118	1
2025-07-12 08:41:10.838+00	127	telegraf	1126982881	stationary	0	0	2	0	65	119	1
2025-07-12 08:49:30.935+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	121	1
2025-07-12 08:49:29.4+00	127	telegraf	978202981	stationary	0	0	5	-7	65	122	1
2025-07-12 08:51:10.892+00	127	telegraf	1126982881	stationary	0	0	3	0	65	124	1
2025-07-12 09:01:11.002+00	127	telegraf	1126982881	stationary	0	0	2	1	65	133	1
2025-07-12 09:21:11.078+00	127	telegraf	1126982881	stationary	0	0	3	1	65	144	1
2025-07-12 09:41:11.153+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	157	1
2025-07-12 10:09:29.899+00	127	telegraf	978202981	stationary	0	0	4	-7	65	174	1
2025-07-12 10:09:31.443+00	127	telegraf	1041420528	stationary	0	0	2	-2	63	175	1
2025-07-12 10:11:11.275+00	127	telegraf	1126982881	stationary	0	0	2	0	65	177	1
2025-07-12 10:19:29.934+00	127	telegraf	978202981	stationary	0	0	4	-7	65	178	1
2025-07-12 10:21:11.304+00	127	telegraf	1126982881	stationary	0	0	2	0	65	180	1
2025-07-12 14:01:12.504+00	127	telegraf	1126982881	stationary	0	0	1	0	64	319	1
2025-07-12 14:09:32.625+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	326	1
2025-07-12 14:09:31.013+00	127	telegraf	978202981	stationary	0	0	5	-7	65	327	1
2025-07-12 14:11:12.575+00	127	telegraf	1126982881	stationary	0	0	3	1	65	329	1
2025-07-12 14:19:32.729+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	333	1
2025-07-12 14:19:31.102+00	127	telegraf	978202981	stationary	0	0	4	-7	65	334	1
2025-07-12 14:21:12.609+00	127	telegraf	1126982881	stationary	0	0	2	0	65	335	1
2025-07-12 14:29:31.184+00	127	telegraf	978202981	stationary	0	0	4	-6	66	338	1
2025-07-12 14:29:32.794+00	127	telegraf	1041420528	stationary	0	0	1	-1	63	339	1
2025-07-12 14:31:12.652+00	127	telegraf	1126982881	stationary	0	0	3	1	65	341	1
2025-07-12 14:39:32.858+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	348	1
2025-07-12 14:39:31.269+00	127	telegraf	978202981	stationary	0	0	4	-7	65	349	1
2025-07-12 14:41:12.689+00	127	telegraf	1126982881	stationary	0	0	2	1	65	351	1
2025-07-12 14:49:31.343+00	127	telegraf	978202981	stationary	0	0	5	-6	65	355	1
2025-07-12 14:49:32.911+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	356	1
2025-07-12 14:51:12.729+00	127	telegraf	1126982881	stationary	0	0	2	0	66	357	1
2025-07-12 14:59:31.371+00	127	telegraf	978202981	stationary	0	0	5	-7	64	360	1
2025-07-12 14:59:32.94+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	361	1
2025-07-12 15:01:12.766+00	127	telegraf	1126982881	stationary	0	0	2	1	66	362	1
2025-07-12 15:09:33.022+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	369	1
2025-07-12 15:09:31.41+00	127	telegraf	978202981	stationary	0	0	4	-6	65	370	1
2025-07-12 15:11:12.808+00	127	telegraf	1126982881	stationary	0	0	2	0	65	371	1
2025-07-12 15:19:31.462+00	127	telegraf	978202981	stationary	0	0	4	-7	65	375	1
2025-07-12 15:19:33.053+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	376	1
2025-07-12 15:21:12.845+00	127	telegraf	1126982881	stationary	0	0	2	1	64	377	1
2025-07-12 15:29:31.527+00	127	telegraf	978202981	stationary	0	0	4	-6	65	378	1
2025-07-12 15:29:33.086+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	379	1
2025-07-12 16:41:13.293+00	127	telegraf	1126982881	stationary	0	0	3	0	65	423	1
2025-07-12 16:49:31.837+00	127	telegraf	978202981	stationary	0	0	4	-6	65	429	1
2025-07-12 16:51:13.347+00	127	telegraf	1126982881	stationary	0	0	3	0	65	431	1
2025-07-12 16:59:31.974+00	127	telegraf	978202981	stationary	0	0	4	-6	64	432	1
2025-07-12 16:59:33.502+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	433	1
2025-07-12 17:01:13.397+00	127	telegraf	1126982881	stationary	0	0	2	0	64	435	1
2025-07-12 17:11:13.439+00	127	telegraf	1126982881	stationary	0	0	2	0	65	442	1
2025-07-12 17:21:13.482+00	127	telegraf	1126982881	stationary	0	0	2	1	64	452	1
2025-07-12 17:29:32.179+00	127	telegraf	978202981	stationary	0	0	3	-7	66	453	1
2025-07-12 17:29:33.692+00	127	telegraf	1041420528	stationary	0	0	3	-2	65	454	1
2025-07-12 17:31:13.519+00	127	telegraf	1126982881	stationary	0	0	2	0	65	455	1
2025-07-12 17:39:32.204+00	127	telegraf	978202981	stationary	0	0	4	-7	65	459	1
2025-07-12 17:39:33.732+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	460	1
2025-07-12 17:49:33.807+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	467	1
2025-07-12 17:49:32.243+00	127	telegraf	978202981	stationary	0	0	4	-7	64	468	1
2025-07-12 17:51:13.591+00	127	telegraf	1126982881	stationary	0	0	2	0	65	470	1
2025-07-12 17:59:33.846+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	471	1
2025-07-12 17:59:32.311+00	127	telegraf	978202981	stationary	0	0	4	-7	65	472	1
2025-07-12 18:01:13.626+00	127	telegraf	1126982881	stationary	0	0	3	1	66	474	1
2025-07-12 18:09:33.886+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	479	1
2025-07-12 18:09:32.35+00	127	telegraf	978202981	stationary	0	0	5	-7	66	480	1
2025-07-12 18:11:13.67+00	127	telegraf	1126982881	stationary	0	0	2	0	65	481	1
2025-07-12 18:19:32.383+00	127	telegraf	978202981	stationary	0	0	4	-7	65	487	1
2025-07-12 18:21:13.708+00	127	telegraf	1126982881	stationary	0	0	2	0	65	489	1
2025-07-12 18:29:33.955+00	127	telegraf	1041420528	stationary	0	0	1	-2	64	493	1
2025-07-12 18:31:13.784+00	127	telegraf	1126982881	stationary	0	0	2	0	66	494	1
2025-07-12 18:39:32.468+00	127	telegraf	978202981	stationary	0	0	4	-6	66	499	1
2025-07-12 18:39:34.004+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	500	1
2025-07-12 18:49:34.039+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	506	1
2025-07-12 18:49:32.504+00	127	telegraf	978202981	stationary	0	0	4	-6	63	507	1
2025-07-12 18:51:13.877+00	127	telegraf	1126982881	stationary	0	0	2	0	65	508	1
2025-07-12 18:59:32.546+00	127	telegraf	978202981	stationary	0	0	5	-6	65	510	1
2025-07-12 18:59:34.071+00	127	telegraf	1041420528	stationary	0	0	1	-2	65	511	1
2025-07-12 19:01:13.948+00	127	telegraf	1126982881	stationary	0	0	2	1	64	512	1
2025-07-12 19:11:14.034+00	127	telegraf	1126982881	stationary	0	0	2	0	65	521	1
2025-07-12 20:01:14.305+00	127	telegraf	1126982881	stationary	0	0	2	0	65	550	1
2025-07-12 20:09:32.992+00	127	telegraf	978202981	stationary	0	0	5	-7	65	555	1
2025-07-12 20:09:34.481+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	556	1
2025-07-12 20:11:14.349+00	127	telegraf	1126982881	stationary	0	0	3	0	65	557	1
2025-07-12 20:19:33.027+00	127	telegraf	978202981	stationary	0	0	4	-7	65	561	1
2025-07-12 20:21:14.378+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	563	1
2025-07-12 20:29:33.067+00	127	telegraf	978202981	stationary	0	0	4	-6	65	566	1
2025-07-12 20:29:34.557+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	567	1
2025-07-12 20:31:14.422+00	127	telegraf	1126982881	stationary	0	0	2	1	65	568	1
2025-07-12 20:39:33.126+00	127	telegraf	978202981	stationary	0	0	3	-7	65	573	1
2025-07-12 20:49:33.172+00	127	telegraf	978202981	stationary	0	0	4	-7	66	579	1
2025-07-12 20:49:34.669+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	580	1
2025-07-12 20:51:14.501+00	127	telegraf	1126982881	stationary	0	0	2	0	65	581	1
2025-07-12 20:59:33.213+00	127	telegraf	978202981	stationary	0	0	5	-7	65	583	1
2025-07-12 20:59:34.703+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	584	1
2025-07-12 21:01:14.593+00	127	telegraf	1126982881	stationary	0	0	2	-1	65	586	1
2025-07-12 21:09:34.745+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	592	1
2025-07-12 21:11:14.631+00	127	telegraf	1126982881	stationary	0	0	1	-1	66	593	1
2025-07-12 21:19:33.279+00	127	telegraf	978202981	stationary	0	0	5	-6	64	597	1
2025-07-12 21:19:34.779+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	598	1
2025-07-12 21:29:33.322+00	127	telegraf	978202981	stationary	0	0	4	-6	66	603	1
2025-07-12 21:29:34.818+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	604	1
2025-07-12 21:31:14.755+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	606	1
2025-07-12 21:39:33.356+00	127	telegraf	978202981	stationary	0	0	4	-7	65	610	1
2025-07-12 21:39:34.855+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	611	1
2025-07-12 21:41:14.825+00	127	telegraf	1126982881	stationary	0	0	2	0	65	613	1
2025-07-12 21:49:34.896+00	127	telegraf	1041420528	stationary	0	0	1	-1	64	617	1
2025-07-12 21:49:33.393+00	127	telegraf	978202981	stationary	0	0	4	-7	65	618	1
2025-07-12 21:51:14.872+00	127	telegraf	1126982881	stationary	0	0	1	1	65	619	1
2025-07-12 21:59:33.43+00	127	telegraf	978202981	stationary	0	0	5	-6	64	621	1
2025-07-12 21:59:34.93+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	622	1
2025-07-12 22:01:14.945+00	127	telegraf	1126982881	stationary	0	0	2	0	65	623	1
2025-07-12 22:09:33.526+00	127	telegraf	978202981	stationary	0	0	4	-6	65	629	1
2025-07-13 06:19:36.14+00	127	telegraf	978202981	stationary	0	0	4	-7	65	929	1
2025-07-13 06:19:37.481+00	127	telegraf	1041420528	stationary	0	0	3	-2	63	930	1
2025-07-13 06:21:17.569+00	127	telegraf	1126982881	stationary	0	0	2	0	66	932	1
2025-07-13 06:29:36.197+00	127	telegraf	978202981	stationary	0	0	4	-7	65	934	1
2025-07-13 06:29:37.545+00	127	telegraf	1041420528	stationary	0	0	3	-1	63	935	1
2025-07-13 06:31:17.602+00	127	telegraf	1126982881	stationary	0	0	3	0	65	936	1
2025-07-13 06:39:37.608+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	944	1
2025-07-13 06:39:36.245+00	127	telegraf	978202981	stationary	0	0	4	-6	65	945	1
2025-07-13 06:49:36.28+00	127	telegraf	978202981	stationary	0	0	4	-6	64	950	1
2025-07-13 06:49:37.675+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	951	1
2025-07-13 06:51:17.693+00	127	telegraf	1126982881	stationary	0	0	3	0	65	953	1
2025-07-13 06:59:37.709+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	956	1
2025-07-13 06:59:36.353+00	127	telegraf	978202981	stationary	0	0	5	-7	65	957	1
2025-07-13 07:01:17.731+00	127	telegraf	1126982881	stationary	0	0	3	0	65	958	1
2025-07-13 07:09:37.738+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	963	1
2025-07-13 07:09:36.391+00	127	telegraf	978202981	stationary	0	0	5	-7	65	964	1
2025-07-13 07:11:17.765+00	127	telegraf	1126982881	stationary	0	0	2	0	65	965	1
2025-07-13 07:19:36.427+00	127	telegraf	978202981	stationary	0	0	4	-7	63	970	1
2025-07-13 07:19:37.815+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	971	1
2025-07-13 07:21:17.842+00	127	telegraf	1126982881	stationary	0	0	2	0	63	972	1
2025-07-13 07:29:37.852+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	975	1
2025-07-13 07:29:36.474+00	127	telegraf	978202981	stationary	0	0	4	-7	64	976	1
2025-07-13 07:31:17.901+00	127	telegraf	1126982881	stationary	0	0	2	0	67	978	1
2025-07-13 09:49:37.242+00	127	telegraf	978202981	stationary	0	0	5	-7	64	1061	1
2025-07-13 09:49:38.544+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1062	1
2025-07-13 09:51:18.629+00	127	telegraf	1126982881	stationary	0	0	2	0	65	1064	1
2025-07-13 09:59:37.279+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1067	1
2025-07-13 09:59:38.62+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	1068	1
2025-07-13 10:01:18.669+00	127	telegraf	1126982881	stationary	0	0	2	1	65	1069	1
2025-07-13 10:09:37.325+00	127	telegraf	978202981	stationary	0	0	4	-7	64	1077	1
2025-07-13 10:09:38.658+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1078	1
2025-07-13 10:11:18.75+00	127	telegraf	1126982881	stationary	0	0	3	0	64	1079	1
2025-07-13 10:29:37.399+00	127	telegraf	978202981	stationary	0	0	4	-6	65	1089	1
2025-07-13 10:29:38.732+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1090	1
2025-07-13 10:39:37.432+00	127	telegraf	978202981	stationary	0	0	4	-6	66	1099	1
2025-07-13 10:39:38.765+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1100	1
2025-07-13 10:41:18.953+00	127	telegraf	1126982881	stationary	0	0	3	0	66	1101	1
2025-07-13 10:49:37.468+00	127	telegraf	978202981	stationary	0	0	5	-7	66	1104	1
2025-07-13 10:49:38.808+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	1105	1
2025-07-13 10:51:18.997+00	127	telegraf	1126982881	stationary	0	0	2	0	66	1106	1
2025-07-13 10:59:37.596+00	127	telegraf	978202981	stationary	0	0	4	-7	64	1108	1
2025-07-13 10:59:38.836+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	1109	1
2025-07-13 11:01:19.049+00	127	telegraf	1126982881	stationary	0	0	2	0	65	1110	1
2025-07-13 11:09:37.687+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1118	1
2025-07-13 11:09:38.871+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1119	1
2025-07-13 11:11:19.089+00	127	telegraf	1126982881	stationary	0	0	3	0	65	1121	1
2025-07-13 11:19:38.908+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	1123	1
2025-07-13 11:19:37.757+00	127	telegraf	978202981	stationary	0	0	4	-6	64	1124	1
2025-07-13 11:21:19.134+00	127	telegraf	1126982881	stationary	0	0	2	0	66	1125	1
2025-07-13 11:29:38.952+00	127	telegraf	1041420528	stationary	0	0	3	-1	64	1127	1
2025-07-13 11:29:37.809+00	127	telegraf	978202981	stationary	0	0	4	-7	65	1128	1
2025-07-13 11:39:37.841+00	127	telegraf	978202981	stationary	0	0	5	-7	65	1133	1
2025-07-13 11:39:39.025+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	1134	1
2025-07-13 11:41:19.211+00	127	telegraf	1126982881	stationary	0	0	3	0	66	1139	1
2025-07-13 12:19:39.304+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	1158	1
2025-07-13 12:19:38.02+00	127	telegraf	978202981	stationary	0	0	5	-6	64	1159	1
2025-07-13 12:29:39.331+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1162	1
2025-07-13 12:29:38.061+00	127	telegraf	978202981	stationary	0	0	5	-7	64	1163	1
2025-07-13 12:31:19.447+00	127	telegraf	1126982881	stationary	0	0	2	0	66	1165	1
2025-07-13 12:58:50.649+00	127	telegraf	1126982881	start-moving	0	1	-2	68	40	1181	1
2025-07-13 13:00:32.66+00	127	telegraf	1126982881	stop-moving	5	8	4	-1	65	1184	1
2025-07-13 13:05:35.21+00	127	telegraf	978202981	start-moving	0	1	5	-5	65	1188	1
2025-07-13 13:06:34.21+00	127	telegraf	978202981	stop-moving	1	1	5	-7	65	1190	1
2025-07-13 13:09:39.509+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1194	1
2025-07-13 13:10:32.716+00	127	telegraf	1126982881	stationary	0	0	4	0	65	1195	1
2025-07-13 13:16:34.258+00	127	telegraf	978202981	stationary	0	0	5	-7	65	1200	1
2025-07-13 13:19:39.544+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	1201	1
2025-07-13 13:20:32.772+00	127	telegraf	1126982881	stationary	0	0	5	-1	65	1202	1
2025-07-13 13:30:32.832+00	127	telegraf	1126982881	stationary	0	0	3	-2	66	1208	1
2025-07-13 13:36:34.396+00	127	telegraf	978202981	stationary	0	0	5	-7	65	1213	1
2025-07-13 13:39:39.604+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1215	1
2025-07-13 14:19:39.76+00	127	telegraf	1041420528	stationary	0	0	2	-2	64	1240	1
2025-07-13 14:20:33.027+00	127	telegraf	1126982881	stationary	0	0	3	-1	66	1241	1
2025-07-13 14:26:34.706+00	127	telegraf	978202981	stationary	0	0	5	-6	64	1245	1
2025-07-13 14:29:39.828+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	1246	1
2025-07-13 14:30:33.06+00	127	telegraf	1126982881	stationary	0	0	3	-1	65	1247	1
2025-07-13 14:36:34.775+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1250	1
2025-07-13 14:39:39.893+00	127	telegraf	1041420528	stationary	0	0	3	-3	65	1252	1
2025-07-13 14:40:33.108+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	1253	1
2025-07-13 14:46:34.823+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1258	1
2025-07-13 14:49:39.963+00	127	telegraf	1041420528	stationary	0	0	2	-1	64	1259	1
2025-07-13 14:56:34.867+00	127	telegraf	978202981	stationary	0	0	5	-6	63	1264	1
2025-07-14 07:56:39.842+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1904	1
2025-07-14 07:59:12.984+00	127	telegraf	1041420528	stationary	0	0	3	-2	64	1905	1
2025-07-14 08:06:39.936+00	127	telegraf	978202981	stationary	0	0	5	-6	65	1910	1
2025-07-14 08:10:38.522+00	127	telegraf	1126982881	stationary	0	0	4	0	65	1915	1
2025-07-14 08:16:40.018+00	127	telegraf	978202981	stationary	0	0	6	-6	65	1917	1
2025-07-14 08:19:13.05+00	127	telegraf	1041420528	stationary	0	0	1	-2	63	1920	1
2025-07-14 08:20:38.562+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	1921	1
2025-07-15 08:39:20.488+00	127	telegraf	1041420528	stationary	0	0	2	-2	65	2808	1
2025-07-15 08:40:46.071+00	127	telegraf	1126982881	stationary	0	0	4	-1	63	2810	1
2025-07-15 08:46:47.397+00	127	telegraf	978202981	stationary	0	0	4	-7	66	2813	1
2025-07-15 08:49:20.551+00	127	telegraf	1041420528	stationary	0	0	3	-1	65	2817	1
2025-07-15 08:50:46.144+00	127	telegraf	1126982881	stationary	0	0	4	-1	67	2818	1
2025-07-15 08:56:41.179+00	127	telegraf	1126982881	start-moving	0	1	4	-2	64	2821	1
2025-07-15 08:56:47.485+00	127	telegraf	978202981	stationary	0	0	5	-6	65	2822	1
2025-07-15 08:57:41.184+00	127	telegraf	1126982881	stop-moving	1	1	4	-1	65	2824	1
2025-07-15 08:59:20.6+00	127	telegraf	1041420528	stationary	0	0	2	-1	63	2827	1
2025-07-15 09:06:47.52+00	127	telegraf	978202981	stationary	0	0	5	-6	66	2828	1
2025-07-15 09:26:47.59+00	127	telegraf	978202981	stationary	0	0	5	-5	64	2842	1
2025-07-15 09:27:41.36+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	2843	1
2025-07-15 09:29:20.791+00	127	telegraf	1041420528	stationary	0	0	2	-1	65	2845	1
2025-07-15 09:37:41.42+00	127	telegraf	1126982881	stationary	0	0	4	-1	65	2847	1
2025-07-16 07:15:48.965+00	127	telegraf	1126982881	stationary	0	0	4	-1	66	3747	1
\.


--
-- Data for Name: _hyper_3_1_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_1_chunk ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-06-28 12:22:56.484+00	127	\N	978202981	stationary	0	0	5	-1	65	53	0.9
2025-06-28 12:22:57.635+00	127	\N	1126982881	stationary	0	0	3	-1	66	54	0.9
2025-06-28 12:22:56.653+00	127	\N	1041420528	stationary	0	0	3	-2	64	55	0.9
2025-06-28 12:26:18.511+00	127	\N	978202981	start-moving	0	1	1	20	67	57	0.9
2025-06-28 12:26:18.66+00	127	\N	1126982881	start-moving	0	1	1	-2	68	58	0.9
2025-06-28 12:26:18.696+00	127	\N	1041420528	start-moving	0	1	3	-1	65	59	0.9
2025-06-28 12:28:10.728+00	127	\N	1041420528	stop-moving	11	15	3	-1	64	63	0.9
2025-06-28 12:28:23.666+00	127	\N	1126982881	stop-moving	15	20	5	-1	65	66	0.9
2025-06-28 12:28:25.53+00	127	\N	978202981	stop-moving	17	20	5	0	65	69	0.9
2025-06-28 12:36:54.724+00	127	\N	1126982881	start-moving	0	1	6	-51	82	81	0.9
2025-06-28 12:38:00.728+00	127	\N	1126982881	stop-moving	6	3	2	0	66	84	0.9
2025-06-28 12:38:10.788+00	127	\N	1041420528	stationary	0	0	3	-1	64	88	0.9
2025-06-28 12:38:25.588+00	127	\N	978202981	stationary	0	0	5	0	66	89	0.9
2025-06-28 12:48:00.769+00	127	\N	1126982881	stationary	0	0	2	-1	65	95	0.9
2025-06-28 12:48:10.839+00	127	\N	1041420528	stationary	0	0	4	0	63	97	0.9
2025-06-28 12:48:25.623+00	127	\N	978202981	stationary	0	0	5	-1	67	98	0.9
2025-06-28 12:58:00.801+00	127	\N	1126982881	stationary	0	0	3	-1	65	104	0.9
2025-06-28 12:58:10.888+00	127	\N	1041420528	stationary	0	0	5	-1	64	105	0.9
2025-06-28 12:58:25.665+00	127	\N	978202981	stationary	0	0	6	0	65	106	0.9
2025-06-28 13:08:00.809+00	127	\N	1126982881	stationary	0	0	2	0	65	107	0.9
2025-06-28 13:08:11.012+00	127	\N	1041420528	stationary	0	0	3	-1	65	108	0.9
2025-06-28 13:08:25.676+00	127	\N	978202981	stationary	0	0	5	-1	66	109	0.9
2025-06-28 13:08:25.676+00	127	\N	978202981	stationary	0	0	5	-1	66	109	0.9
2025-06-28 13:18:00.833+00	127	\N	1126982881	stationary	0	0	3	0	64	116	0.9
2025-06-28 13:18:11.108+00	127	\N	1041420528	stationary	0	0	3	-1	64	117	0.9
2025-06-28 13:18:25.71+00	127	\N	978202981	stationary	0	0	5	-1	66	118	0.9
2025-06-28 13:28:00.877+00	127	\N	1126982881	stationary	0	0	3	0	66	124	0.9
2025-06-28 13:28:11.213+00	127	\N	1041420528	stationary	0	0	4	0	64	125	0.9
2025-06-28 13:28:25.737+00	127	\N	978202981	stationary	0	0	4	0	64	126	0.9
2025-06-28 13:35:53.001+00	127	\N	1126982881	start-moving	0	1	26	12	54	127	0.9
2025-06-28 13:35:53.79+00	127	\N	978202981	start-moving	0	1	4	-1	65	128	0.9
2025-06-28 13:36:52.805+00	127	\N	978202981	stop-moving	1	1	5	-1	65	129	0.9
2025-06-28 13:36:53.007+00	127	\N	1126982881	stop-moving	1	1	2	0	65	132	0.9
2025-06-28 13:38:11.356+00	127	\N	1041420528	stationary	0	0	2	-1	64	135	0.9
2025-06-28 13:46:52.868+00	127	\N	978202981	stationary	0	0	5	0	65	140	0.9
2025-06-28 13:46:53.087+00	127	\N	1126982881	stationary	0	0	3	-1	64	141	0.9
2025-06-28 13:48:11.456+00	127	\N	1041420528	stationary	0	0	4	0	64	142	0.9
2025-06-28 13:56:52.931+00	127	\N	978202981	stationary	0	0	5	-1	64	148	0.9
2025-06-28 13:56:53.161+00	127	\N	1126982881	stationary	0	0	4	0	65	149	0.9
2025-06-28 13:58:11.561+00	127	\N	1041420528	stationary	0	0	4	0	64	150	0.9
2025-06-28 14:06:53.047+00	127	\N	978202981	stationary	0	0	4	-2	66	151	0.9
2025-06-28 14:06:53.217+00	127	\N	1126982881	stationary	0	0	3	-1	65	152	0.9
2025-06-28 14:08:11.662+00	127	\N	1041420528	stationary	0	0	4	-2	64	153	0.9
2025-06-28 14:16:05.234+00	127	\N	1126982881	start-moving	0	1	-55	22	-24	159	0.9
2025-06-28 14:16:13.174+00	127	\N	978202981	start-moving	0	1	11	16	85	160	0.9
2025-06-28 14:16:15.72+00	127	\N	1041420528	start-moving	0	1	-10	-6	76	161	0.9
2025-06-28 14:17:30.186+00	127	\N	978202981	stop-moving	6	4	5	0	66	165	0.9
2025-06-28 14:17:37.737+00	127	\N	1041420528	stop-moving	5	3	3	0	64	168	0.9
2025-06-28 14:17:48.246+00	127	\N	1126982881	stop-moving	17	10	3	-2	64	171	0.9
2025-06-28 14:27:30.304+00	127	\N	978202981	stationary	0	0	6	0	65	178	0.9
2025-06-28 14:27:37.781+00	127	\N	1041420528	stationary	0	0	3	1	62	179	0.9
2025-06-28 14:27:48.32+00	127	\N	1126982881	stationary	0	0	3	-1	65	180	0.9
2025-06-28 14:37:30.333+00	127	\N	978202981	stationary	0	0	6	0	65	181	0.9
2025-06-28 14:37:37.815+00	127	\N	1041420528	stationary	0	0	4	1	64	182	0.9
2025-06-28 14:37:48.395+00	127	\N	1126982881	stationary	0	0	3	-2	65	183	0.9
2025-06-28 14:47:30.373+00	127	\N	978202981	stationary	0	0	5	0	65	188	0.9
2025-06-28 14:47:37.909+00	127	\N	1041420528	stationary	0	0	3	0	63	189	0.9
2025-06-28 14:47:48.463+00	127	\N	1126982881	stationary	0	0	3	-1	65	190	0.9
2025-06-28 14:57:30.419+00	127	\N	978202981	stationary	0	0	5	0	66	196	0.9
2025-06-28 14:57:37.957+00	127	\N	1041420528	stationary	0	0	4	0	64	197	0.9
2025-06-28 14:57:48.511+00	127	\N	1126982881	stationary	0	0	2	-1	65	198	0.9
2025-06-28 15:07:30.452+00	127	\N	978202981	stationary	0	0	5	0	64	199	0.9
2025-06-28 15:07:38.053+00	127	\N	1041420528	stationary	0	0	3	0	64	200	0.9
2025-06-28 15:07:48.537+00	127	\N	1126982881	stationary	0	0	3	-1	65	201	0.9
2025-06-28 15:17:30.487+00	127	\N	978202981	stationary	0	0	5	0	65	207	0.9
2025-06-28 15:17:38.17+00	127	\N	1041420528	stationary	0	0	3	0	64	208	0.9
2025-06-28 15:17:48.57+00	127	\N	1126982881	stationary	0	0	3	-2	65	209	0.9
2025-06-28 15:27:30.497+00	127	\N	978202981	stationary	0	0	5	1	64	215	0.9
2025-06-28 15:27:38.249+00	127	\N	1041420528	stationary	0	0	4	0	64	216	0.9
2025-06-28 15:27:48.584+00	127	\N	1126982881	stationary	0	0	3	-2	66	217	0.9
2025-06-28 15:37:30.52+00	127	\N	978202981	stationary	0	0	6	0	66	218	0.9
2025-06-28 15:37:38.373+00	127	\N	1041420528	stationary	0	0	4	0	64	219	0.9
2025-06-28 15:37:48.61+00	127	\N	1126982881	stationary	0	0	4	-2	66	220	0.9
2025-06-28 15:47:30.548+00	127	\N	978202981	stationary	0	0	5	0	65	224	0.9
2025-06-28 15:47:38.42+00	127	\N	1041420528	stationary	0	0	3	-1	65	226	0.9
2025-06-28 15:47:48.632+00	127	\N	1126982881	stationary	0	0	3	-1	66	227	0.9
2025-06-28 15:57:30.604+00	127	\N	978202981	stationary	0	0	5	0	66	233	0.9
2025-06-28 15:57:38.527+00	127	\N	1041420528	stationary	0	0	4	1	64	234	0.9
2025-06-28 15:57:48.691+00	127	\N	1126982881	stationary	0	0	3	-2	66	235	0.9
2025-06-28 16:07:30.65+00	127	\N	978202981	stationary	0	0	5	1	66	236	0.9
2025-06-28 16:07:38.65+00	127	\N	1041420528	stationary	0	0	4	0	65	237	0.9
2025-06-28 16:07:48.763+00	127	\N	1126982881	stationary	0	0	3	-2	66	238	0.9
2025-06-28 16:09:44.781+00	127	\N	1126982881	start-moving	0	1	4	-2	66	239	0.9
2025-06-28 16:10:44.791+00	127	\N	1126982881	stop-moving	1	1	3	-2	67	240	0.9
2025-06-28 16:17:30.706+00	127	\N	978202981	stationary	0	0	5	0	65	246	0.9
2025-06-28 16:17:38.8+00	127	\N	1041420528	stationary	0	0	4	0	63	247	0.9
2025-06-28 16:20:44.839+00	127	\N	1126982881	stationary	0	0	4	-1	65	251	0.9
2025-06-28 16:27:30.886+00	127	\N	978202981	stationary	0	0	5	0	65	255	0.9
2025-06-28 16:27:38.901+00	127	\N	1041420528	stationary	0	0	3	0	63	256	0.9
2025-06-28 16:30:44.891+00	127	\N	1126982881	stationary	0	0	2	-2	66	257	0.9
2025-06-28 16:37:31.046+00	127	\N	978202981	stationary	0	0	5	0	66	258	0.9
2025-06-28 16:37:39.009+00	127	\N	1041420528	stationary	0	0	4	0	64	259	0.9
2025-06-28 16:40:44.921+00	127	\N	1126982881	stationary	0	0	3	-1	65	260	0.9
2025-06-28 16:47:31.178+00	127	\N	978202981	stationary	0	0	5	-1	65	264	0.9
2025-06-28 16:47:39.097+00	127	\N	1041420528	stationary	0	0	3	0	63	265	0.9
2025-06-28 16:50:44.987+00	127	\N	1126982881	stationary	0	0	4	-1	65	267	0.9
2025-06-28 16:57:31.221+00	127	\N	978202981	stationary	0	0	5	0	64	273	0.9
2025-06-28 16:57:39.152+00	127	\N	1041420528	stationary	0	0	3	1	66	274	0.9
2025-06-28 17:00:45.066+00	127	\N	1126982881	stationary	0	0	3	-1	66	275	0.9
2025-06-28 17:07:31.261+00	127	\N	978202981	stationary	0	0	6	0	66	276	0.9
2025-06-28 17:07:39.231+00	127	\N	1041420528	stationary	0	0	4	-1	64	277	0.9
2025-06-28 17:10:45.177+00	127	\N	1126982881	stationary	0	0	3	-2	64	278	0.9
2025-06-28 17:17:31.31+00	127	\N	978202981	stationary	0	0	6	0	64	284	0.9
2025-06-28 17:17:39.328+00	127	\N	1041420528	stationary	0	0	3	1	64	285	0.9
2025-06-28 17:20:13.32+00	127	\N	978202981	start-moving	0	1	19	11	56	287	0.9
2025-06-28 17:20:14.235+00	127	\N	1126982881	start-moving	0	1	3	14	56	288	0.9
2025-06-28 17:20:16.333+00	127	\N	1041420528	start-moving	0	1	14	7	66	289	0.9
2025-06-28 17:21:17.326+00	127	\N	978202981	stop-moving	5	8	3	-1	66	290	0.9
2025-06-28 17:21:17.35+00	127	\N	1041420528	stop-moving	2	2	3	-2	65	293	0.9
2025-06-28 17:22:06.248+00	127	\N	1126982881	stop-moving	3	5	4	-1	67	298	0.9
2025-06-28 17:24:03.365+00	127	\N	1041420528	start-moving	0	1	3	-2	63	304	0.9
2025-06-28 17:25:03.368+00	127	\N	1041420528	stop-moving	1	1	3	-2	64	305	0.9
2025-06-28 17:31:17.361+00	127	\N	978202981	stationary	0	0	5	0	65	308	0.9
2025-06-28 17:32:06.286+00	127	\N	1126982881	stationary	0	0	4	-2	66	309	0.9
2025-06-28 17:35:03.404+00	127	\N	1041420528	stationary	0	0	3	-2	65	310	0.9
2025-06-28 17:41:17.419+00	127	\N	978202981	stationary	0	0	4	-1	65	313	0.9
2025-06-28 17:42:06.348+00	127	\N	1126982881	stationary	0	0	3	-1	66	314	0.9
2025-06-28 17:44:45.441+00	127	\N	978202981	start-moving	0	1	4	-2	65	315	0.9
2025-06-28 17:45:03.477+00	127	\N	1041420528	stationary	0	0	4	-1	65	316	0.9
2025-06-28 17:45:58.447+00	127	\N	978202981	stop-moving	2	2	4	-1	66	317	0.9
2025-06-28 17:52:06.383+00	127	\N	1126982881	stationary	0	0	3	-1	65	325	0.9
2025-06-28 17:55:03.544+00	127	\N	1041420528	stationary	0	0	3	-1	64	328	0.9
2025-06-28 17:55:58.49+00	127	\N	978202981	stationary	0	0	4	0	65	329	0.9
2025-06-28 18:02:06.435+00	127	\N	1126982881	stationary	0	0	3	-1	65	330	0.9
2025-06-28 18:03:56.448+00	127	\N	1126982881	start-moving	0	1	5	-13	18	331	0.9
2025-06-28 18:04:56.454+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	332	0.9
2025-06-28 18:05:03.65+00	127	\N	1041420528	stationary	0	0	4	-2	65	335	0.9
2025-06-28 18:05:58.541+00	127	\N	978202981	stationary	0	0	4	-1	66	336	0.9
2025-06-28 18:14:56.493+00	127	\N	1126982881	stationary	0	0	3	-2	66	339	0.9
2025-06-28 18:15:03.705+00	127	\N	1041420528	stationary	0	0	3	-2	65	340	0.9
2025-06-28 18:15:58.591+00	127	\N	978202981	stationary	0	0	4	-1	65	341	0.9
2025-06-28 18:23:15.714+00	127	\N	978202981	start-moving	0	1	4	0	65	348	0.9
2025-06-28 18:24:14.736+00	127	\N	978202981	stop-moving	1	1	4	0	66	351	0.9
2025-06-28 18:24:56.543+00	127	\N	1126982881	stationary	0	0	3	-2	66	354	0.9
2025-06-28 18:25:03.762+00	127	\N	1041420528	stationary	0	0	4	-2	64	355	0.9
2025-06-28 18:34:14.871+00	127	\N	978202981	stationary	0	0	4	-1	65	356	0.9
2025-06-28 18:34:56.592+00	127	\N	1126982881	stationary	0	0	4	-2	66	357	0.9
2025-06-28 18:35:03.811+00	127	\N	1041420528	stationary	0	0	3	-1	64	358	0.9
2025-06-28 18:44:15+00	127	\N	978202981	stationary	0	0	4	-1	65	361	0.9
2025-06-28 18:44:56.728+00	127	\N	1126982881	stationary	0	0	4	-1	65	362	0.9
2025-06-28 18:45:03.868+00	127	\N	1041420528	stationary	0	0	2	-2	64	363	0.9
2025-06-28 18:54:15.037+00	127	\N	978202981	stationary	0	0	4	-1	66	369	0.9
2025-06-28 18:54:56.753+00	127	\N	1126982881	stationary	0	0	3	-1	65	372	0.9
2025-06-28 18:55:03.903+00	127	\N	1041420528	stationary	0	0	3	-2	64	373	0.9
2025-06-28 19:04:15.053+00	127	\N	978202981	stationary	0	0	4	-1	65	374	0.9
2025-06-28 19:04:56.788+00	127	\N	1126982881	stationary	0	0	3	-2	66	375	0.9
2025-06-28 19:05:04.045+00	127	\N	1041420528	stationary	0	0	3	-2	64	376	0.9
2025-06-28 19:14:15.085+00	127	\N	978202981	stationary	0	0	4	0	64	379	0.9
2025-06-28 19:14:56.862+00	127	\N	1126982881	stationary	0	0	4	-1	65	380	0.9
2025-06-28 19:15:04.16+00	127	\N	1041420528	stationary	0	0	4	-2	65	381	0.9
2025-06-28 19:24:15.115+00	127	\N	978202981	stationary	0	0	5	-1	66	388	0.9
2025-06-28 19:24:56.914+00	127	\N	1126982881	stationary	0	0	4	-1	66	389	0.9
2025-06-28 19:25:04.268+00	127	\N	1041420528	stationary	0	0	3	-3	65	390	0.9
2025-06-28 19:34:15.157+00	127	\N	978202981	stationary	0	0	4	-1	65	394	0.9
2025-06-28 19:34:57.001+00	127	\N	1126982881	stationary	0	0	3	-2	65	395	0.9
2025-06-28 19:35:04.363+00	127	\N	1041420528	stationary	0	0	3	-1	64	396	0.9
2025-06-28 19:44:15.214+00	127	\N	978202981	stationary	0	0	5	-1	66	399	0.9
2025-06-28 19:44:57.084+00	127	\N	1126982881	stationary	0	0	3	-1	65	400	0.9
2025-06-28 19:45:04.521+00	127	\N	1041420528	stationary	0	0	3	-1	64	401	0.9
2025-06-28 19:54:15.271+00	127	\N	978202981	stationary	0	0	4	0	66	406	0.9
2025-06-28 19:54:57.143+00	127	\N	1126982881	stationary	0	0	4	-2	65	407	0.9
2025-06-28 19:55:04.648+00	127	\N	1041420528	stationary	0	0	2	-2	63	408	0.9
2025-06-28 20:04:15.318+00	127	\N	978202981	stationary	0	0	4	-1	65	411	0.9
2025-06-28 20:04:57.193+00	127	\N	1126982881	stationary	0	0	3	-2	66	413	0.9
2025-06-28 20:05:04.749+00	127	\N	1041420528	stationary	0	0	4	-1	64	414	0.9
2025-06-30 14:49:37.071+00	127	\N	978202981	stationary	0	0	5	-1	65	760	0.9
2025-06-30 14:50:52.817+00	127	\N	1041420528	stationary	0	0	4	-3	64	762	0.9
2025-06-30 14:54:10.372+00	127	\N	1126982881	stationary	0	0	1	-1	66	764	0.9
2025-06-30 14:59:37.105+00	127	\N	978202981	stationary	0	0	5	-2	65	770	0.9
2025-06-30 15:00:52.955+00	127	\N	1041420528	stationary	0	0	3	-2	65	771	0.9
2025-06-30 15:04:10.429+00	127	\N	1126982881	stationary	0	0	3	0	66	774	0.9
2025-06-30 15:09:37.155+00	127	\N	978202981	stationary	0	0	5	-1	65	777	0.9
2025-06-30 15:10:53.008+00	127	\N	1041420528	stationary	0	0	4	-2	65	778	0.9
2025-06-30 15:14:10.505+00	127	\N	1126982881	stationary	0	0	2	-2	65	779	0.9
2025-06-30 15:19:37.227+00	127	\N	978202981	stationary	0	0	6	-2	65	781	0.9
2025-06-30 15:20:53.052+00	127	\N	1041420528	stationary	0	0	4	-2	64	783	0.9
2025-06-30 15:24:10.583+00	127	\N	1126982881	stationary	0	0	3	-1	66	785	0.9
2025-06-30 15:29:37.265+00	127	\N	978202981	stationary	0	0	6	-1	66	791	0.9
2025-06-30 15:30:53.096+00	127	\N	1041420528	stationary	0	0	3	-2	64	792	0.9
2025-06-30 15:34:10.684+00	127	\N	1126982881	stationary	0	0	2	-1	66	794	0.9
2025-06-30 15:39:37.297+00	127	\N	978202981	stationary	0	0	6	-1	66	796	0.9
2025-06-30 15:40:53.139+00	127	\N	1041420528	stationary	0	0	4	-3	64	797	0.9
2025-06-30 15:44:10.744+00	127	\N	1126982881	stationary	0	0	3	-1	66	798	0.9
2025-06-30 15:49:37.353+00	127	\N	978202981	stationary	0	0	6	-1	66	800	0.9
2025-06-30 15:50:53.246+00	127	\N	1041420528	stationary	0	0	4	-2	64	801	0.9
2025-06-30 15:54:10.779+00	127	\N	1126982881	stationary	0	0	2	-1	65	806	0.9
2025-06-30 15:59:37.406+00	127	\N	978202981	stationary	0	0	5	-1	65	811	0.9
2025-06-30 16:00:53.285+00	127	\N	1041420528	stationary	0	0	4	-2	64	813	0.9
2025-06-30 16:01:54.429+00	127	\N	978202981	start-moving	0	1	2	-24	8	814	0.9
2025-06-30 16:03:58.824+00	127	\N	1126982881	start-moving	0	1	2	-1	63	818	0.9
2025-06-30 16:04:04.456+00	127	\N	978202981	stop-moving	51	30	6	-1	65	819	0.9
2025-06-30 16:05:03.826+00	127	\N	1126982881	stop-moving	4	4	4	-1	66	822	0.9
2025-06-30 16:10:53.325+00	127	\N	1041420528	stationary	0	0	3	-2	64	827	0.9
2025-06-30 16:14:04.504+00	127	\N	978202981	stationary	0	0	6	0	65	828	0.9
2025-06-30 16:15:03.869+00	127	\N	1126982881	stationary	0	0	3	0	65	830	0.9
2025-06-30 16:20:53.373+00	127	\N	1041420528	stationary	0	0	4	-2	64	831	0.9
2025-06-30 16:24:04.58+00	127	\N	978202981	stationary	0	0	6	-1	65	836	0.9
2025-06-30 16:25:03.927+00	127	\N	1126982881	stationary	0	0	4	0	65	837	0.9
2025-06-30 16:30:53.419+00	127	\N	1041420528	stationary	0	0	3	-2	64	842	0.9
2025-06-30 16:34:04.634+00	127	\N	978202981	stationary	0	0	6	-2	66	845	0.9
2025-06-30 16:35:03.967+00	127	\N	1126982881	stationary	0	0	3	0	66	846	0.9
2025-06-30 16:40:53.472+00	127	\N	1041420528	stationary	0	0	4	-2	65	847	0.9
2025-06-30 16:44:04.671+00	127	\N	978202981	stationary	0	0	5	-1	64	848	0.9
2025-06-30 16:45:04.007+00	127	\N	1126982881	stationary	0	0	3	0	65	849	0.9
2025-06-30 16:50:53.558+00	127	\N	1041420528	stationary	0	0	3	-2	64	850	0.9
2025-06-30 16:54:04.707+00	127	\N	978202981	stationary	0	0	6	-1	66	853	0.9
2025-06-30 16:55:04.047+00	127	\N	1126982881	stationary	0	0	3	-1	65	856	0.9
2025-06-30 17:00:53.702+00	127	\N	1041420528	stationary	0	0	4	-4	66	861	0.9
2025-06-30 17:04:04.751+00	127	\N	978202981	stationary	0	0	6	-2	66	863	0.9
2025-06-30 17:05:04.105+00	127	\N	1126982881	stationary	0	0	4	0	65	865	0.9
2025-06-30 17:10:53.815+00	127	\N	1041420528	stationary	0	0	4	-3	64	866	0.9
2025-06-30 17:14:04.79+00	127	\N	978202981	stationary	0	0	6	-1	66	867	0.9
2025-06-30 17:15:04.145+00	127	\N	1126982881	stationary	0	0	4	0	65	868	0.9
2025-06-30 17:20:53.916+00	127	\N	1041420528	stationary	0	0	4	-2	64	869	0.9
2025-06-30 17:24:04.823+00	127	\N	978202981	stationary	0	0	5	-1	64	873	0.9
2025-06-30 17:25:04.19+00	127	\N	1126982881	stationary	0	0	2	-1	65	874	0.9
2025-06-30 17:30:53.954+00	127	\N	1041420528	stationary	0	0	4	-2	65	880	0.9
2025-06-30 17:34:04.859+00	127	\N	978202981	stationary	0	0	7	-2	65	881	0.9
2025-06-30 17:35:04.238+00	127	\N	1126982881	stationary	0	0	3	0	66	882	0.9
2025-06-30 17:40:53.998+00	127	\N	1041420528	stationary	0	0	3	-3	64	885	0.9
2025-06-30 17:44:04.893+00	127	\N	978202981	stationary	0	0	6	-1	65	887	0.9
2025-06-30 17:45:04.316+00	127	\N	1126982881	stationary	0	0	3	-1	66	888	0.9
2025-06-30 17:50:54.08+00	127	\N	1041420528	stationary	0	0	4	-2	64	892	0.9
2025-06-30 17:54:04.94+00	127	\N	978202981	stationary	0	0	5	-1	65	894	0.9
2025-06-30 17:55:04.396+00	127	\N	1126982881	stationary	0	0	3	0	64	896	0.9
2025-06-30 18:00:54.129+00	127	\N	1041420528	stationary	0	0	4	-3	65	903	0.9
2025-06-30 18:04:04.98+00	127	\N	978202981	stationary	0	0	6	-2	65	906	0.9
2025-06-30 18:05:04.464+00	127	\N	1126982881	stationary	0	0	3	-1	65	907	0.9
2025-06-30 18:10:54.177+00	127	\N	1041420528	stationary	0	0	4	-2	63	910	0.9
2025-06-30 18:14:05.029+00	127	\N	978202981	stationary	0	0	5	-1	65	911	0.9
2025-06-30 18:15:04.628+00	127	\N	1126982881	stationary	0	0	3	-1	65	912	0.9
2025-06-30 18:20:54.236+00	127	\N	1041420528	stationary	0	0	3	-3	65	916	0.9
2025-06-30 18:24:05.065+00	127	\N	978202981	stationary	0	0	5	0	64	917	0.9
2025-06-30 18:25:04.674+00	127	\N	1126982881	stationary	0	0	3	0	65	918	0.9
2025-06-30 18:30:54.291+00	127	\N	1041420528	stationary	0	0	3	-3	65	926	0.9
2025-06-30 18:34:05.125+00	127	\N	978202981	stationary	0	0	5	-1	64	927	0.9
2025-06-30 18:35:04.719+00	127	\N	1126982881	stationary	0	0	4	-1	65	928	0.9
2025-06-30 18:40:54.352+00	127	\N	1041420528	stationary	0	0	4	-2	65	934	0.9
2025-06-30 19:00:54.66+00	127	\N	1041420528	stationary	0	0	4	-2	64	950	0.9
2025-06-30 19:04:05.37+00	127	\N	978202981	stationary	0	0	6	-1	66	954	0.9
2025-06-30 19:05:04.843+00	127	\N	1126982881	stationary	0	0	3	-1	66	955	0.9
2025-06-30 19:10:54.744+00	127	\N	1041420528	stationary	0	0	4	-2	64	959	0.9
2025-06-30 19:14:05.426+00	127	\N	978202981	stationary	0	0	4	0	63	961	0.9
2025-06-30 19:15:04.898+00	127	\N	1126982881	stationary	0	0	3	-1	66	962	0.9
2025-06-30 19:20:54.803+00	127	\N	1041420528	stationary	0	0	4	-3	65	965	0.9
2025-06-30 19:24:05.474+00	127	\N	978202981	stationary	0	0	5	-1	65	967	0.9
2025-06-30 19:25:04.952+00	127	\N	1126982881	stationary	0	0	2	-1	66	968	0.9
2025-06-30 19:30:54.847+00	127	\N	1041420528	stationary	0	0	4	-2	63	977	0.9
2025-06-30 19:32:31.99+00	127	\N	1126982881	start-moving	0	1	43	-9	39	982	0.9
2025-06-30 19:33:55+00	127	\N	1126982881	stop-moving	20	23	3	-2	66	985	0.9
2025-06-30 19:34:05.51+00	127	\N	978202981	stationary	0	0	5	-2	66	988	0.9
2025-06-30 19:34:50.005+00	127	\N	1126982881	start-moving	0	1	5	-1	52	990	0.9
2025-06-30 19:35:02.518+00	127	\N	978202981	start-moving	0	1	6	-1	66	991	0.9
2025-06-30 19:36:01.526+00	127	\N	978202981	stop-moving	1	1	5	-1	65	993	0.9
2025-06-30 19:36:09.021+00	127	\N	1126982881	stop-moving	7	7	1	-2	66	997	0.9
2025-06-30 19:40:54.937+00	127	\N	1041420528	stationary	0	0	5	-2	65	1004	0.9
2025-06-30 19:46:01.569+00	127	\N	978202981	stationary	0	0	7	-1	64	1010	0.9
2025-06-30 19:46:09.062+00	127	\N	1126982881	stationary	0	0	1	-2	66	1011	0.9
2025-06-30 19:50:41.091+00	127	\N	1126982881	start-moving	0	1	-23	-22	117	1020	0.9
2025-06-30 19:50:53.604+00	127	\N	978202981	start-moving	0	1	-1	3	80	1022	0.9
2025-06-30 19:50:54.979+00	127	\N	1041420528	stationary	0	0	5	-2	64	1023	0.9
2025-06-30 19:51:46.098+00	127	\N	1126982881	stop-moving	5	9	4	-1	66	1024	0.9
2025-06-30 19:52:05.611+00	127	\N	978202981	stop-moving	11	17	5	-1	66	1027	0.9
2025-06-30 20:00:55.025+00	127	\N	1041420528	stationary	0	0	3	-2	65	1044	0.9
2025-06-30 20:01:46.158+00	127	\N	1126982881	stationary	0	0	4	0	65	1045	0.9
2025-06-30 20:02:05.662+00	127	\N	978202981	stationary	0	0	4	-1	65	1046	0.9
2025-06-30 20:21:46.339+00	127	\N	1126982881	stationary	0	0	3	-1	66	1065	0.9
2025-06-30 20:22:05.757+00	127	\N	978202981	stationary	0	0	6	-1	65	1066	0.9
2025-06-30 20:30:55.158+00	127	\N	1041420528	stationary	0	0	2	-2	65	1075	0.9
2025-06-30 20:31:46.414+00	127	\N	1126982881	stationary	0	0	4	0	65	1077	0.9
2025-06-30 20:32:05.823+00	127	\N	978202981	stationary	0	0	4	-1	65	1078	0.9
2025-06-30 20:40:55.244+00	127	\N	1041420528	stationary	0	0	4	-2	65	1085	0.9
2025-06-30 20:41:46.443+00	127	\N	1126982881	stationary	0	0	4	0	66	1086	0.9
2025-06-30 20:42:05.863+00	127	\N	978202981	stationary	0	0	5	-2	66	1087	0.9
2025-06-30 20:45:59.881+00	127	\N	978202981	start-moving	0	1	5	0	66	1089	0.9
2025-06-30 20:46:58.888+00	127	\N	978202981	stop-moving	1	1	5	-2	66	1091	0.9
2025-06-30 20:50:55.357+00	127	\N	1041420528	stationary	0	0	3	-3	64	1095	0.9
2025-06-30 20:51:46.486+00	127	\N	1126982881	stationary	0	0	4	0	65	1097	0.9
2025-06-30 20:56:58.925+00	127	\N	978202981	stationary	0	0	5	-1	66	1105	0.9
2025-06-30 21:00:55.435+00	127	\N	1041420528	stationary	0	0	3	-2	64	1109	0.9
2025-06-30 21:01:46.529+00	127	\N	1126982881	stationary	0	0	3	0	66	1110	0.9
2025-06-30 21:06:59.001+00	127	\N	978202981	stationary	0	0	5	-1	66	1118	0.9
2025-06-30 21:10:55.492+00	127	\N	1041420528	stationary	0	0	4	-2	64	1120	0.9
2025-06-30 21:11:46.574+00	127	\N	1126982881	stationary	0	0	3	0	65	1121	0.9
2025-06-30 21:16:59.074+00	127	\N	978202981	stationary	0	0	5	-2	65	1123	0.9
2025-06-30 21:20:55.534+00	127	\N	1041420528	stationary	0	0	3	-2	64	1125	0.9
2025-06-30 21:21:46.61+00	127	\N	1126982881	stationary	0	0	5	-1	65	1126	0.9
2025-06-30 21:26:59.129+00	127	\N	978202981	stationary	0	0	5	-1	65	1128	0.9
2025-06-30 21:30:55.57+00	127	\N	1041420528	stationary	0	0	4	-2	64	1130	0.9
2025-06-30 21:31:46.643+00	127	\N	1126982881	stationary	0	0	4	0	65	1131	0.9
2025-06-30 21:36:59.21+00	127	\N	978202981	stationary	0	0	5	-2	65	1137	0.9
2025-06-30 21:40:55.604+00	127	\N	1041420528	stationary	0	0	3	-3	64	1139	0.9
2025-06-30 21:41:46.681+00	127	\N	1126982881	stationary	0	0	4	0	65	1140	0.9
2025-06-30 21:46:59.259+00	127	\N	978202981	stationary	0	0	5	-1	66	1143	0.9
2025-06-30 21:50:55.654+00	127	\N	1041420528	stationary	0	0	4	-2	64	1144	0.9
2025-06-30 21:51:46.744+00	127	\N	1126982881	stationary	0	0	4	-1	66	1147	0.9
2025-06-30 21:56:59.297+00	127	\N	978202981	stationary	0	0	4	-1	65	1148	0.9
2025-06-30 22:00:55.727+00	127	\N	1041420528	stationary	0	0	2	-2	65	1150	0.9
2025-06-30 22:01:46.785+00	127	\N	1126982881	stationary	0	0	4	0	66	1151	0.9
2025-06-30 22:06:59.332+00	127	\N	978202981	stationary	0	0	5	-2	65	1157	0.9
2025-06-30 22:10:55.769+00	127	\N	1041420528	stationary	0	0	4	-3	63	1159	0.9
2025-06-30 22:11:46.824+00	127	\N	1126982881	stationary	0	0	4	-1	65	1160	0.9
2025-06-30 22:16:59.38+00	127	\N	978202981	stationary	0	0	4	-1	65	1162	0.9
2025-07-01 05:31:16.099+00	127	\N	1041420528	stationary	0	0	3	-2	64	1468	0.9
2025-07-01 05:31:48.988+00	127	\N	1126982881	stationary	0	0	3	-1	65	1469	0.9
2025-07-01 05:37:01.812+00	127	\N	978202981	stationary	0	0	6	-1	65	1471	0.9
2025-07-01 05:45:47.05+00	127	\N	1126982881	stop-moving	16	24	3	-1	65	1491	0.9
2025-07-01 05:51:16.218+00	127	\N	1041420528	stationary	0	0	3	-2	65	1502	0.9
2025-07-01 05:55:05.897+00	127	\N	978202981	stationary	0	0	6	0	66	1507	0.9
2025-07-01 05:55:47.101+00	127	\N	1126982881	stationary	0	0	3	-1	65	1509	0.9
2025-07-01 06:01:16.249+00	127	\N	1041420528	stationary	0	0	3	-3	65	1515	0.9
2025-07-01 06:05:05.949+00	127	\N	978202981	stationary	0	0	6	-2	65	1516	0.9
2025-07-01 06:05:47.171+00	127	\N	1126982881	stationary	0	0	4	-1	65	1517	0.9
2025-07-01 06:11:16.287+00	127	\N	1041420528	stationary	0	0	3	-3	65	1520	0.9
2025-07-01 06:15:05.997+00	127	\N	978202981	stationary	0	0	6	-1	65	1523	0.9
2025-07-01 06:15:47.202+00	127	\N	1126982881	stationary	0	0	3	-1	66	1524	0.9
2025-07-01 06:21:16.322+00	127	\N	1041420528	stationary	0	0	3	-3	63	1530	0.9
2025-07-01 06:25:06.063+00	127	\N	978202981	stationary	0	0	6	-2	65	1531	0.9
2025-07-01 06:25:47.248+00	127	\N	1126982881	stationary	0	0	3	-1	67	1532	0.9
2025-07-01 06:31:16.372+00	127	\N	1041420528	stationary	0	0	3	-2	63	1535	0.9
2025-07-01 06:35:06.117+00	127	\N	978202981	stationary	0	0	5	-2	66	1536	0.9
2025-07-01 06:35:47.3+00	127	\N	1126982881	stationary	0	0	4	-1	65	1537	0.9
2025-07-01 06:41:16.401+00	127	\N	1041420528	stationary	0	0	3	-2	63	1539	0.9
2025-07-01 06:45:06.156+00	127	\N	978202981	stationary	0	0	7	-1	66	1542	0.9
2025-07-01 06:45:47.359+00	127	\N	1126982881	stationary	0	0	4	-2	65	1543	0.9
2025-07-01 06:51:16.449+00	127	\N	1041420528	stationary	0	0	4	-3	64	1548	0.9
2025-07-01 06:55:06.199+00	127	\N	978202981	stationary	0	0	5	-1	66	1550	0.9
2025-07-01 06:55:47.447+00	127	\N	1126982881	stationary	0	0	3	-1	65	1551	0.9
2025-07-01 07:01:16.546+00	127	\N	1041420528	stationary	0	0	3	-1	64	1554	0.9
2025-07-01 07:05:06.259+00	127	\N	978202981	stationary	0	0	6	-2	65	1556	0.9
2025-07-01 07:05:47.576+00	127	\N	1126982881	stationary	0	0	4	-1	65	1558	0.9
2025-07-01 07:11:16.636+00	127	\N	1041420528	stationary	0	0	4	-2	64	1559	0.9
2025-07-01 07:15:06.328+00	127	\N	978202981	stationary	0	0	6	-1	65	1563	0.9
2025-07-01 07:15:47.681+00	127	\N	1126982881	stationary	0	0	4	-2	66	1564	0.9
2025-07-01 07:21:16.716+00	127	\N	1041420528	stationary	0	0	4	-2	64	1569	0.9
2025-07-01 07:25:06.402+00	127	\N	978202981	stationary	0	0	6	-1	66	1570	0.9
2025-07-01 07:25:47.717+00	127	\N	1126982881	stationary	0	0	4	-1	65	1571	0.9
2025-07-01 07:31:16.75+00	127	\N	1041420528	stationary	0	0	3	-3	64	1574	0.9
2025-07-01 07:35:06.505+00	127	\N	978202981	stationary	0	0	6	0	65	1576	0.9
2025-07-01 07:35:47.757+00	127	\N	1126982881	stationary	0	0	4	-1	65	1577	0.9
2025-07-01 07:41:16.803+00	127	\N	1041420528	stationary	0	0	3	-3	63	1579	0.9
2025-07-01 07:45:06.562+00	127	\N	978202981	stationary	0	0	6	-2	66	1581	0.9
2025-07-01 07:45:47.791+00	127	\N	1126982881	stationary	0	0	3	-1	67	1583	0.9
2025-07-01 07:51:16.832+00	127	\N	1041420528	stationary	0	0	3	-3	64	1588	0.9
2025-07-01 08:15:06.679+00	127	\N	978202981	stationary	0	0	6	-2	65	1599	0.9
2025-07-01 08:15:47.932+00	127	\N	1126982881	stationary	0	0	3	-1	66	1601	0.9
2025-07-01 08:21:16.977+00	127	\N	1041420528	stationary	0	0	4	-2	63	1608	0.9
2025-07-01 08:25:06.716+00	127	\N	978202981	stationary	0	0	5	-2	66	1610	0.9
2025-07-01 08:25:48.008+00	127	\N	1126982881	stationary	0	0	4	-2	65	1611	0.9
2025-07-01 08:31:17.015+00	127	\N	1041420528	stationary	0	0	3	-2	65	1613	0.9
2025-07-01 08:35:06.765+00	127	\N	978202981	stationary	0	0	6	-1	65	1615	0.9
2025-07-01 08:35:48.047+00	127	\N	1126982881	stationary	0	0	4	-1	66	1616	0.9
2025-07-01 08:41:17.059+00	127	\N	1041420528	stationary	0	0	3	-1	65	1619	0.9
2025-07-01 08:45:06.802+00	127	\N	978202981	stationary	0	0	6	-2	66	1621	0.9
2025-07-01 08:45:48.098+00	127	\N	1126982881	stationary	0	0	3	-1	65	1622	0.9
2025-07-01 08:51:17.097+00	127	\N	1041420528	stationary	0	0	3	-2	64	1627	0.9
2025-07-01 08:55:06.879+00	127	\N	978202981	stationary	0	0	5	-1	65	1631	0.9
2025-07-01 08:55:48.155+00	127	\N	1126982881	stationary	0	0	4	-2	65	1632	0.9
2025-07-01 09:01:17.134+00	127	\N	1041420528	stationary	0	0	3	-2	65	1635	0.9
2025-07-01 09:05:06.927+00	127	\N	978202981	stationary	0	0	5	-1	66	1639	0.9
2025-07-01 09:05:48.226+00	127	\N	1126982881	stationary	0	0	3	-1	64	1640	0.9
2025-07-01 09:11:17.174+00	127	\N	1041420528	stationary	0	0	3	-2	64	1641	0.9
2025-07-01 09:15:06.956+00	127	\N	978202981	stationary	0	0	5	-2	65	1643	0.9
2025-07-01 09:15:48.286+00	127	\N	1126982881	stationary	0	0	4	-1	65	1644	0.9
2025-07-01 09:21:17.209+00	127	\N	1041420528	stationary	0	0	4	-3	64	1648	0.9
2025-07-01 09:25:06.997+00	127	\N	978202981	stationary	0	0	5	-1	64	1651	0.9
2025-07-01 09:25:48.389+00	127	\N	1126982881	stationary	0	0	4	-1	65	1652	0.9
2025-07-01 09:31:17.29+00	127	\N	1041420528	stationary	0	0	4	-3	64	1656	0.9
2025-07-01 09:35:07.075+00	127	\N	978202981	stationary	0	0	6	-1	66	1658	0.9
2025-07-01 09:35:48.434+00	127	\N	1126982881	stationary	0	0	4	-1	66	1659	0.9
2025-07-01 09:41:17.42+00	127	\N	1041420528	stationary	0	0	4	-3	64	1661	0.9
2025-07-01 09:45:07.14+00	127	\N	978202981	stationary	0	0	7	-1	66	1662	0.9
2025-07-01 09:45:48.481+00	127	\N	1126982881	stationary	0	0	3	-1	66	1663	0.9
2025-07-01 09:51:17.474+00	127	\N	1041420528	stationary	0	0	4	-3	63	1667	0.9
2025-07-01 09:55:07.211+00	127	\N	978202981	stationary	0	0	6	-2	65	1671	0.9
2025-07-01 09:55:48.534+00	127	\N	1126982881	stationary	0	0	4	-1	65	1673	0.9
2025-07-01 10:01:17.534+00	127	\N	1041420528	stationary	0	0	3	-3	64	1678	0.9
2025-07-01 10:05:07.321+00	127	\N	978202981	stationary	0	0	5	-1	66	1680	0.9
2025-07-01 10:05:48.581+00	127	\N	1126982881	stationary	0	0	4	-1	66	1682	0.9
2025-07-01 10:11:17.577+00	127	\N	1041420528	stationary	0	0	2	-3	64	1684	0.9
2025-07-01 10:15:07.42+00	127	\N	978202981	stationary	0	0	6	-1	65	1687	0.9
2025-07-01 10:15:48.64+00	127	\N	1126982881	stationary	0	0	4	-2	65	1688	0.9
2025-07-01 10:21:17.615+00	127	\N	1041420528	stationary	0	0	3	-3	64	1692	0.9
2025-07-01 10:25:07.461+00	127	\N	978202981	stationary	0	0	5	-1	65	1696	0.9
2025-07-01 10:25:48.673+00	127	\N	1126982881	stationary	0	0	4	-1	65	1697	0.9
2025-07-01 10:31:17.646+00	127	\N	1041420528	stationary	0	0	4	-3	63	1699	0.9
2025-07-01 10:35:07.494+00	127	\N	978202981	stationary	0	0	5	-2	66	1701	0.9
2025-07-01 10:35:48.729+00	127	\N	1126982881	stationary	0	0	3	-1	65	1702	0.9
2025-07-01 10:41:17.693+00	127	\N	1041420528	stationary	0	0	3	-3	64	1706	0.9
2025-07-01 10:45:07.541+00	127	\N	978202981	stationary	0	0	6	-2	64	1707	0.9
2025-07-01 10:45:48.809+00	127	\N	1126982881	stationary	0	0	4	-1	66	1708	0.9
2025-07-01 11:15:07.656+00	127	\N	978202981	stationary	0	0	5	-1	66	1732	0.9
2025-07-01 11:15:48.99+00	127	\N	1126982881	stationary	0	0	4	-1	67	1733	0.9
2025-07-01 11:21:17.872+00	127	\N	1041420528	stationary	0	0	4	-2	64	1737	0.9
2025-07-01 11:25:07.724+00	127	\N	978202981	stationary	0	0	5	-1	66	1741	0.9
2025-07-01 11:25:49.073+00	127	\N	1126982881	stationary	0	0	4	-1	66	1745	0.9
2025-07-01 11:31:17.912+00	127	\N	1041420528	stationary	0	0	3	-2	64	1747	0.9
2025-07-01 11:35:07.761+00	127	\N	978202981	stationary	0	0	5	-2	65	1751	0.9
2025-07-01 11:35:49.162+00	127	\N	1126982881	stationary	0	0	4	-1	65	1752	0.9
2025-07-01 11:41:17.943+00	127	\N	1041420528	stationary	0	0	3	-3	66	1757	0.9
2025-07-01 11:45:07.801+00	127	\N	978202981	stationary	0	0	6	-1	65	1761	0.9
2025-07-01 11:45:49.245+00	127	\N	1126982881	stationary	0	0	5	0	65	1762	0.9
2025-07-01 11:51:17.986+00	127	\N	1041420528	stationary	0	0	4	-2	64	1765	0.9
2025-07-01 11:55:07.852+00	127	\N	978202981	stationary	0	0	6	-1	65	1769	0.9
2025-07-01 11:55:49.305+00	127	\N	1126982881	stationary	0	0	5	-1	65	1770	0.9
2025-07-01 12:01:18.027+00	127	\N	1041420528	stationary	0	0	4	-2	63	1775	0.9
2025-07-01 12:05:07.943+00	127	\N	978202981	stationary	0	0	6	0	66	1778	0.9
2025-07-01 12:05:49.353+00	127	\N	1126982881	stationary	0	0	3	-2	65	1780	0.9
2025-07-01 12:11:18.086+00	127	\N	1041420528	stationary	0	0	3	-3	63	1785	0.9
2025-07-01 12:15:08.004+00	127	\N	978202981	stationary	0	0	5	-1	66	1787	0.9
2025-07-01 12:15:49.408+00	127	\N	1126982881	stationary	0	0	3	-2	65	1788	0.9
2025-07-01 12:21:18.191+00	127	\N	1041420528	stationary	0	0	4	-3	64	1790	0.9
2025-07-01 12:25:08.079+00	127	\N	978202981	stationary	0	0	6	-1	66	1794	0.9
2025-07-01 12:25:49.454+00	127	\N	1126982881	stationary	0	0	4	-1	66	1796	0.9
2025-07-01 12:31:18.282+00	127	\N	1041420528	stationary	0	0	4	-2	64	1801	0.9
2025-07-01 12:35:08.152+00	127	\N	978202981	stationary	0	0	6	0	65	1803	0.9
2025-07-01 12:35:49.507+00	127	\N	1126982881	stationary	0	0	4	-1	66	1804	0.9
2025-07-01 12:41:18.347+00	127	\N	1041420528	stationary	0	0	4	-2	64	1807	0.9
2025-07-01 12:45:08.194+00	127	\N	978202981	stationary	0	0	5	-2	64	1808	0.9
2025-07-01 12:45:49.545+00	127	\N	1126982881	stationary	0	0	5	-1	66	1809	0.9
2025-07-01 12:51:18.388+00	127	\N	1041420528	stationary	0	0	4	-2	64	1811	0.9
2025-07-01 12:55:08.235+00	127	\N	978202981	stationary	0	0	6	-1	66	1814	0.9
2025-07-01 12:55:49.6+00	127	\N	1126982881	stationary	0	0	4	-1	66	1815	0.9
2025-07-01 13:01:18.431+00	127	\N	1041420528	stationary	0	0	3	-2	64	1820	0.9
2025-07-01 13:05:08.283+00	127	\N	978202981	stationary	0	0	6	-2	65	1822	0.9
2025-07-01 13:05:49.651+00	127	\N	1126982881	stationary	0	0	4	-3	65	1823	0.9
2025-07-01 13:11:18.466+00	127	\N	1041420528	stationary	0	0	4	-2	64	1828	0.9
2025-07-01 13:15:08.325+00	127	\N	978202981	stationary	0	0	6	-1	66	1829	0.9
2025-07-01 13:15:49.702+00	127	\N	1126982881	stationary	0	0	5	-1	65	1830	0.9
2025-07-01 13:21:18.503+00	127	\N	1041420528	stationary	0	0	3	-3	64	1831	0.9
2025-07-01 13:25:08.36+00	127	\N	978202981	stationary	0	0	5	-2	66	1835	0.9
2025-07-01 13:25:49.74+00	127	\N	1126982881	stationary	0	0	4	-2	66	1836	0.9
2025-07-01 13:31:18.575+00	127	\N	1041420528	stationary	0	0	3	-3	64	1841	0.9
2025-07-01 13:35:08.402+00	127	\N	978202981	stationary	0	0	6	-1	65	1843	0.9
2025-07-01 13:35:49.8+00	127	\N	1126982881	stationary	0	0	4	-1	65	1844	0.9
2025-07-01 13:41:18.62+00	127	\N	1041420528	stationary	0	0	4	-3	64	1847	0.9
2025-07-01 13:45:08.444+00	127	\N	978202981	stationary	0	0	5	-2	65	1849	0.9
2025-07-01 13:45:49.878+00	127	\N	1126982881	stationary	0	0	4	-1	66	1851	0.9
2025-07-01 13:51:18.662+00	127	\N	1041420528	stationary	0	0	4	-3	64	1853	0.9
2025-07-01 13:55:08.515+00	127	\N	978202981	stationary	0	0	6	-1	65	1856	0.9
2025-07-01 13:55:49.937+00	127	\N	1126982881	stationary	0	0	3	-1	65	1857	0.9
2025-07-01 14:01:18.692+00	127	\N	1041420528	stationary	0	0	4	-2	65	1862	0.9
2025-07-01 14:05:08.588+00	127	\N	978202981	stationary	0	0	6	-1	65	1865	0.9
2025-07-01 14:05:50.067+00	127	\N	1126982881	stationary	0	0	4	-2	65	1866	0.9
2025-07-01 14:11:18.733+00	127	\N	1041420528	stationary	0	0	3	-2	64	1869	0.9
2025-07-01 15:25:09.048+00	127	\N	978202981	stationary	0	0	6	-1	64	1917	0.9
2025-07-01 15:25:50.477+00	127	\N	1126982881	stationary	0	0	3	-1	65	1918	0.9
2025-07-01 15:31:19.211+00	127	\N	1041420528	stationary	0	0	3	-2	65	1923	0.9
2025-07-01 15:35:09.086+00	127	\N	978202981	stationary	0	0	6	-2	65	1926	0.9
2025-07-01 15:35:50.515+00	127	\N	1126982881	stationary	0	0	4	-2	66	1927	0.9
2025-07-01 15:41:19.245+00	127	\N	1041420528	stationary	0	0	3	-2	65	1930	0.9
2025-07-01 15:45:09.132+00	127	\N	978202981	stationary	0	0	6	-1	65	1932	0.9
2025-07-01 15:45:50.563+00	127	\N	1126982881	stationary	0	0	4	-1	66	1933	0.9
2025-07-01 16:11:19.399+00	127	\N	1041420528	stationary	0	0	4	-3	64	1950	0.9
2025-07-01 16:15:09.252+00	127	\N	978202981	stationary	0	0	6	-2	65	1953	0.9
2025-07-01 16:15:50.749+00	127	\N	1126982881	stationary	0	0	4	-1	65	1954	0.9
2025-07-01 16:21:19.438+00	127	\N	1041420528	stationary	0	0	4	-3	63	1955	0.9
2025-07-01 16:25:09.328+00	127	\N	978202981	stationary	0	0	6	-1	65	1956	0.9
2025-07-01 16:25:50.852+00	127	\N	1126982881	stationary	0	0	3	-3	65	1957	0.9
2025-07-01 16:31:19.473+00	127	\N	1041420528	stationary	0	0	4	-2	64	1960	0.9
2025-07-01 16:35:09.358+00	127	\N	978202981	stationary	0	0	6	-1	66	1964	0.9
2025-07-01 16:35:50.915+00	127	\N	1126982881	stationary	0	0	4	-1	66	1965	0.9
2025-07-01 16:41:19.524+00	127	\N	1041420528	stationary	0	0	4	-3	64	1968	0.9
2025-07-01 16:45:09.395+00	127	\N	978202981	stationary	0	0	5	-1	64	1970	0.9
2025-07-01 16:45:50.963+00	127	\N	1126982881	stationary	0	0	4	-1	66	1972	0.9
2025-07-01 16:51:19.558+00	127	\N	1041420528	stationary	0	0	3	-2	63	1973	0.9
2025-07-01 16:55:09.435+00	127	\N	978202981	stationary	0	0	5	-1	65	1974	0.9
2025-07-01 16:55:51.002+00	127	\N	1126982881	stationary	0	0	4	-1	66	1976	0.9
2025-07-01 17:01:19.603+00	127	\N	1041420528	stationary	0	0	4	-3	64	1979	0.9
2025-07-01 17:31:19.773+00	127	\N	1041420528	stationary	0	0	3	-2	64	1999	0.9
2025-07-01 17:35:09.723+00	127	\N	978202981	stationary	0	0	6	-1	65	2003	0.9
2025-07-01 17:35:51.207+00	127	\N	1126982881	stationary	0	0	4	-1	66	2004	0.9
2025-07-01 17:41:19.865+00	127	\N	1041420528	stationary	0	0	4	-2	63	2006	0.9
2025-07-01 17:45:09.779+00	127	\N	978202981	stationary	0	0	6	-1	65	2008	0.9
2025-07-01 17:45:51.275+00	127	\N	1126982881	stationary	0	0	4	-2	66	2009	0.9
2025-07-01 17:51:19.931+00	127	\N	1041420528	stationary	0	0	2	-2	64	2013	0.9
2025-07-01 17:55:09.83+00	127	\N	978202981	stationary	0	0	6	-1	66	2014	0.9
2025-07-01 17:55:51.31+00	127	\N	1126982881	stationary	0	0	4	-1	65	2015	0.9
2025-07-01 18:01:19.975+00	127	\N	1041420528	stationary	0	0	4	-2	65	2019	0.9
2025-07-01 18:05:09.874+00	127	\N	978202981	stationary	0	0	6	-1	65	2022	0.9
2025-07-01 18:05:51.363+00	127	\N	1126982881	stationary	0	0	3	-1	65	2025	0.9
2025-07-01 18:11:20.018+00	127	\N	1041420528	stationary	0	0	4	-3	64	2030	0.9
2025-07-01 18:31:20.096+00	127	\N	1041420528	stationary	0	0	4	-1	64	2042	0.9
2025-07-01 18:35:09.993+00	127	\N	978202981	stationary	0	0	6	-1	66	2045	0.9
2025-07-01 18:35:51.574+00	127	\N	1126982881	stationary	0	0	3	-1	65	2046	0.9
2025-07-01 18:41:20.169+00	127	\N	1041420528	stationary	0	0	3	-3	64	2050	0.9
2025-07-01 18:45:10.04+00	127	\N	978202981	stationary	0	0	6	-2	65	2053	0.9
2025-07-01 18:45:51.703+00	127	\N	1126982881	stationary	0	0	3	-1	65	2054	0.9
2025-07-01 18:51:20.21+00	127	\N	1041420528	stationary	0	0	4	-3	63	2058	0.9
2025-07-01 18:55:10.078+00	127	\N	978202981	stationary	0	0	5	-2	66	2060	0.9
2025-07-01 18:55:51.812+00	127	\N	1126982881	stationary	0	0	4	-1	64	2061	0.9
2025-07-01 19:01:20.246+00	127	\N	1041420528	stationary	0	0	5	-2	65	2065	0.9
2025-07-01 19:05:10.165+00	127	\N	978202981	stationary	0	0	6	-1	65	2069	0.9
2025-07-01 19:05:51.899+00	127	\N	1126982881	stationary	0	0	3	-2	65	2072	0.9
2025-07-01 19:11:20.29+00	127	\N	1041420528	stationary	0	0	3	-2	65	2076	0.9
2025-07-01 19:15:10.204+00	127	\N	978202981	stationary	0	0	6	-1	66	2081	0.9
2025-07-01 19:15:51.96+00	127	\N	1126982881	stationary	0	0	4	-2	64	2082	0.9
2025-07-01 19:21:20.326+00	127	\N	1041420528	stationary	0	0	5	-3	65	2085	0.9
2025-07-01 19:25:10.243+00	127	\N	978202981	stationary	0	0	5	-1	65	2088	0.9
2025-07-01 19:25:52.001+00	127	\N	1126982881	stationary	0	0	3	-1	65	2089	0.9
2025-07-01 19:31:20.359+00	127	\N	1041420528	stationary	0	0	3	-2	64	2091	0.9
2025-07-01 19:35:10.275+00	127	\N	978202981	stationary	0	0	6	0	64	2094	0.9
2025-07-01 19:35:52.046+00	127	\N	1126982881	stationary	0	0	3	-1	65	2095	0.9
2025-07-01 19:41:20.395+00	127	\N	1041420528	stationary	0	0	4	-3	64	2100	0.9
2025-07-01 19:45:10.343+00	127	\N	978202981	stationary	0	0	5	-1	64	2102	0.9
2025-07-01 19:45:52.127+00	127	\N	1126982881	stationary	0	0	3	-1	64	2105	0.9
2025-07-01 19:51:20.436+00	127	\N	1041420528	stationary	0	0	3	-2	63	2109	0.9
2025-07-01 19:55:10.414+00	127	\N	978202981	stationary	0	0	6	-2	65	2112	0.9
2025-07-01 19:55:52.183+00	127	\N	1126982881	stationary	0	0	4	-1	65	2113	0.9
2025-07-01 20:01:20.478+00	127	\N	1041420528	stationary	0	0	4	-3	64	2115	0.9
2025-07-01 20:02:54.228+00	127	\N	1126982881	start-moving	0	1	23	-35	65	2116	0.9
2025-07-01 20:04:13.228+00	127	\N	1126982881	stop-moving	16	17	3	-1	65	2120	0.9
2025-07-01 20:05:10.478+00	127	\N	978202981	stationary	0	0	6	-2	65	2125	0.9
2025-07-01 20:11:20.574+00	127	\N	1041420528	stationary	0	0	4	-2	65	2137	0.9
2025-07-01 20:14:13.286+00	127	\N	1126982881	stationary	0	0	2	-2	64	2140	0.9
2025-07-01 20:15:10.561+00	127	\N	978202981	stationary	0	0	6	-1	65	2143	0.9
2025-07-01 20:21:20.65+00	127	\N	1041420528	stationary	0	0	4	-3	64	2149	0.9
2025-07-01 20:21:27.323+00	127	\N	1126982881	start-moving	0	1	-10	8	64	2150	0.9
2025-07-01 20:22:45.324+00	127	\N	1126982881	stop-moving	9	12	2	-1	65	2152	0.9
2025-07-01 20:25:10.608+00	127	\N	978202981	stationary	0	0	5	-2	65	2157	0.9
2025-07-01 20:29:15.375+00	127	\N	1126982881	start-moving	0	1	-8	7	49	2161	0.9
2025-07-01 20:30:17.373+00	127	\N	1126982881	stop-moving	4	3	2	-1	65	2162	0.9
2025-07-01 20:31:20.731+00	127	\N	1041420528	stationary	0	0	3	-2	65	2165	0.9
2025-07-01 20:35:10.646+00	127	\N	978202981	stationary	0	0	6	-1	66	2168	0.9
2025-07-01 20:40:17.47+00	127	\N	1126982881	stationary	0	0	3	-2	65	2173	0.9
2025-07-01 20:41:20.782+00	127	\N	1041420528	stationary	0	0	4	-2	64	2175	0.9
2025-07-01 20:45:10.681+00	127	\N	978202981	stationary	0	0	5	-1	64	2177	0.9
2025-07-01 20:50:17.55+00	127	\N	1126982881	stationary	0	0	3	-1	65	2179	0.9
2025-07-01 20:51:20.825+00	127	\N	1041420528	stationary	0	0	3	-2	64	2180	0.9
2025-07-01 20:55:10.723+00	127	\N	978202981	stationary	0	0	6	-1	65	2183	0.9
2025-07-01 21:00:17.611+00	127	\N	1126982881	stationary	0	0	3	-1	65	2185	0.9
2025-07-01 21:01:20.868+00	127	\N	1041420528	stationary	0	0	4	-3	64	2186	0.9
2025-07-01 21:05:10.754+00	127	\N	978202981	stationary	0	0	5	-1	66	2187	0.9
2025-07-01 21:10:17.654+00	127	\N	1126982881	stationary	0	0	3	-2	65	2193	0.9
2025-07-01 21:11:20.892+00	127	\N	1041420528	stationary	0	0	3	-2	64	2194	0.9
2025-07-01 21:15:10.797+00	127	\N	978202981	stationary	0	0	5	-1	65	2197	0.9
2025-07-01 21:20:17.689+00	127	\N	1126982881	stationary	0	0	3	-2	65	2201	0.9
2025-07-01 21:21:20.972+00	127	\N	1041420528	stationary	0	0	2	-2	64	2203	0.9
2025-07-01 21:23:50.706+00	127	\N	1126982881	start-moving	0	1	3	-6	71	2204	0.9
2025-07-01 21:25:10.838+00	127	\N	978202981	stationary	0	0	6	0	64	2210	0.9
2025-07-01 21:26:02.723+00	127	\N	1126982881	stop-moving	37	42	4	-3	66	2212	0.9
2025-07-01 21:31:21.004+00	127	\N	1041420528	stationary	0	0	3	-3	64	2216	0.9
2025-07-01 21:35:10.875+00	127	\N	978202981	stationary	0	0	6	-1	66	2218	0.9
2025-07-01 21:36:02.771+00	127	\N	1126982881	stationary	0	0	4	-2	66	2219	0.9
2025-07-01 21:36:22.773+00	127	\N	1126982881	start-moving	0	1	0	10	67	2220	0.9
2025-07-01 21:38:33.791+00	127	\N	1126982881	stop-moving	53	52	2	-2	66	2227	0.9
2025-07-01 21:41:21.044+00	127	\N	1041420528	stationary	0	0	4	-2	65	2235	0.9
2025-07-01 21:45:10.948+00	127	\N	978202981	stationary	0	0	6	-2	64	2240	0.9
2025-07-01 21:48:33.842+00	127	\N	1126982881	stationary	0	0	2	-2	66	2241	0.9
2025-07-01 21:51:21.096+00	127	\N	1041420528	stationary	0	0	4	-2	64	2243	0.9
2025-07-01 21:55:10.988+00	127	\N	978202981	stationary	0	0	5	-1	65	2244	0.9
2025-07-01 21:58:33.886+00	127	\N	1126982881	stationary	0	0	2	-1	65	2245	0.9
2025-07-01 22:01:21.139+00	127	\N	1041420528	stationary	0	0	3	-3	64	2246	0.9
2025-07-01 22:05:11.013+00	127	\N	978202981	stationary	0	0	6	-2	64	2249	0.9
2025-07-01 22:08:33.941+00	127	\N	1126982881	stationary	0	0	2	-2	66	2250	0.9
2025-07-01 22:11:21.166+00	127	\N	1041420528	stationary	0	0	4	-3	63	2255	0.9
2025-07-02 07:04:57.868+00	127	\N	978202981	stop-moving	32	57	6	-1	65	2655	0.9
2025-07-02 07:05:04.576+00	127	\N	1126982881	stop-moving	61	91	0	1	65	2658	0.9
2025-07-02 07:05:04.964+00	127	\N	1041420528	stop-moving	46	102	4	1	64	2661	0.9
2025-07-02 07:14:57.902+00	127	\N	978202981	stationary	0	0	7	-1	65	2672	0.9
2025-07-02 07:15:05.018+00	127	\N	1041420528	stationary	0	0	4	1	63	2673	0.9
2025-07-02 07:15:04.656+00	127	\N	1126982881	stationary	0	0	0	1	65	2674	0.9
2025-07-02 07:24:57.939+00	127	\N	978202981	stationary	0	0	6	-1	64	2677	0.9
2025-07-02 07:25:05.067+00	127	\N	1041420528	stationary	0	0	5	1	64	2679	0.9
2025-07-02 07:25:04.778+00	127	\N	1126982881	stationary	0	0	0	1	66	2680	0.9
2025-07-02 07:34:57.975+00	127	\N	978202981	stationary	0	0	6	-1	64	2683	0.9
2025-07-02 07:35:05.094+00	127	\N	1041420528	stationary	0	0	3	1	64	2684	0.9
2025-07-02 07:35:04.849+00	127	\N	1126982881	stationary	0	0	1	1	65	2685	0.9
2025-07-02 07:44:58.025+00	127	\N	978202981	stationary	0	0	7	-1	66	2691	0.9
2025-07-02 07:45:05.12+00	127	\N	1041420528	stationary	0	0	4	1	62	2692	0.9
2025-07-02 07:45:04.885+00	127	\N	1126982881	stationary	0	0	1	1	65	2693	0.9
2025-07-02 07:54:58.059+00	127	\N	978202981	stationary	0	0	7	-1	65	2695	0.9
2025-07-02 07:55:05.209+00	127	\N	1041420528	stationary	0	0	4	1	62	2696	0.9
2025-07-02 07:55:04.942+00	127	\N	1126982881	stationary	0	0	0	1	64	2697	0.9
2025-07-02 08:04:58.097+00	127	\N	978202981	stationary	0	0	7	-2	65	2701	0.9
2025-07-02 08:05:04.978+00	127	\N	1126982881	stationary	0	0	0	1	65	2702	0.9
2025-07-02 08:05:05.248+00	127	\N	1041420528	stationary	0	0	3	1	63	2703	0.9
2025-07-02 08:14:58.192+00	127	\N	978202981	stationary	0	0	6	-1	65	2709	0.9
2025-07-02 08:15:05.02+00	127	\N	1126982881	stationary	0	0	1	2	65	2710	0.9
2025-07-02 08:15:05.275+00	127	\N	1041420528	stationary	0	0	3	1	64	2711	0.9
2025-07-02 08:24:58.218+00	127	\N	978202981	stationary	0	0	7	-1	65	2712	0.9
2025-07-02 08:25:05.316+00	127	\N	1041420528	stationary	0	0	3	0	64	2713	0.9
2025-07-02 08:25:05.067+00	127	\N	1126982881	stationary	0	0	1	1	65	2714	0.9
2025-07-02 08:34:58.261+00	127	\N	978202981	stationary	0	0	6	-1	65	2719	0.9
2025-07-02 08:35:05.347+00	127	\N	1041420528	stationary	0	0	5	1	63	2720	0.9
2025-07-02 08:35:05.158+00	127	\N	1126982881	stationary	0	0	1	1	64	2721	0.9
2025-07-02 08:44:58.297+00	127	\N	978202981	stationary	0	0	6	-2	64	2727	0.9
2025-07-02 08:45:05.385+00	127	\N	1041420528	stationary	0	0	4	0	64	2728	0.9
2025-07-02 08:45:05.186+00	127	\N	1126982881	stationary	0	0	0	0	65	2729	0.9
2025-07-02 08:54:58.358+00	127	\N	978202981	stationary	0	0	6	-2	65	2730	0.9
2025-07-02 08:55:05.417+00	127	\N	1041420528	stationary	0	0	3	1	63	2731	0.9
2025-07-02 08:55:05.228+00	127	\N	1126982881	stationary	0	0	0	1	65	2732	0.9
2025-07-02 09:04:58.414+00	127	\N	978202981	stationary	0	0	6	-2	65	2737	0.9
2025-07-02 09:05:05.45+00	127	\N	1041420528	stationary	0	0	4	1	64	2738	0.9
2025-07-02 09:05:05.271+00	127	\N	1126982881	stationary	0	0	1	1	65	2739	0.9
2025-07-02 09:14:58.483+00	127	\N	978202981	stationary	0	0	6	-2	65	2745	0.9
2025-07-02 09:15:05.477+00	127	\N	1041420528	stationary	0	0	4	1	64	2746	0.9
2025-07-02 09:15:05.317+00	127	\N	1126982881	stationary	0	0	0	1	65	2747	0.9
2025-07-02 09:16:45.335+00	127	\N	1126982881	start-moving	0	1	16	-55	45	2748	0.9
2025-07-02 09:18:35.345+00	127	\N	1126982881	stop-moving	39	33	1	-1	65	2755	0.9
2025-07-02 09:22:28.39+00	127	\N	1126982881	start-moving	0	1	0	-4	70	2765	0.9
2025-07-02 09:23:27.4+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	2766	0.9
2025-07-02 09:24:58.576+00	127	\N	978202981	stationary	0	0	6	-1	65	2770	0.9
2025-07-02 09:25:05.55+00	127	\N	1041420528	stationary	0	0	4	0	64	2771	0.9
2025-07-02 09:25:34.419+00	127	\N	1126982881	start-moving	0	1	3	-2	66	2773	0.9
2025-07-02 09:28:28.457+00	127	\N	1126982881	stop-moving	19	29	4	0	65	2779	0.9
2025-07-02 09:29:20.466+00	127	\N	1126982881	start-moving	0	1	-13	39	64	2785	0.9
2025-07-02 09:30:21.483+00	127	\N	1126982881	stop-moving	2	5	2	-2	66	2788	0.9
2025-07-02 09:34:58.636+00	127	\N	978202981	stationary	0	0	6	-1	65	2793	0.9
2025-07-02 09:35:05.642+00	127	\N	1041420528	stationary	0	0	4	0	63	2794	0.9
2025-07-02 09:37:53.586+00	127	\N	1126982881	start-moving	0	1	8	2	53	2796	0.9
2025-07-02 09:40:56.615+00	127	\N	1126982881	stop-moving	2	3	3	0	65	2807	0.9
2025-07-02 09:41:18.624+00	127	\N	1126982881	start-moving	0	1	-17	-1	81	2811	0.9
2025-07-02 09:43:10.63+00	127	\N	1126982881	stop-moving	28	46	2	-1	65	2818	0.9
2025-07-02 09:44:58.657+00	127	\N	978202981	stationary	0	0	6	-1	65	2825	0.9
2025-07-02 09:45:05.732+00	127	\N	1041420528	stationary	0	0	3	0	63	2826	0.9
2025-07-02 09:47:03.659+00	127	\N	1126982881	start-moving	0	1	2	-1	65	2832	0.9
2025-07-02 09:48:23.679+00	127	\N	1126982881	stop-moving	6	9	2	-1	64	2836	0.9
2025-07-02 09:49:06.689+00	127	\N	1126982881	start-moving	0	1	3	-1	66	2840	0.9
2025-07-02 09:50:06.695+00	127	\N	1126982881	stop-moving	1	2	2	0	66	2842	0.9
2025-07-02 09:51:48.702+00	127	\N	1126982881	start-moving	0	1	-9	-7	72	2845	0.9
2025-07-02 09:54:58.709+00	127	\N	978202981	stationary	0	0	6	-1	65	2855	0.9
2025-07-02 09:55:05.849+00	127	\N	1041420528	stationary	0	0	4	1	64	2856	0.9
2025-07-02 09:55:44.729+00	127	\N	1126982881	stop-moving	28	56	3	-1	66	2859	0.9
2025-07-02 10:00:32.748+00	127	\N	1126982881	start-moving	0	1	15	14	55	2866	0.9
2025-07-02 10:02:41.767+00	127	\N	1126982881	stop-moving	27	34	3	-2	66	2871	0.9
2025-07-02 10:04:58.739+00	127	\N	978202981	stationary	0	0	6	-1	65	2877	0.9
2025-07-02 10:05:05.885+00	127	\N	1041420528	stationary	0	0	5	1	64	2878	0.9
2025-07-02 10:11:01.82+00	127	\N	1126982881	start-moving	0	1	10	5	60	2884	0.9
2025-07-02 10:14:08.859+00	127	\N	1126982881	stop-moving	24	30	3	-1	66	2895	0.9
2025-07-02 10:14:58.781+00	127	\N	978202981	stationary	0	0	5	-1	65	2900	0.9
2025-07-02 10:15:05.919+00	127	\N	1041420528	stationary	0	0	4	1	64	2901	0.9
2025-07-02 10:24:08.913+00	127	\N	1126982881	stationary	0	0	2	-1	65	2910	0.9
2025-07-02 10:24:58.831+00	127	\N	978202981	stationary	0	0	6	-2	65	2912	0.9
2025-07-02 10:25:05.998+00	127	\N	1041420528	stationary	0	0	4	1	64	2913	0.9
2025-07-02 10:34:08.96+00	127	\N	1126982881	stationary	0	0	2	-1	65	2918	0.9
2025-07-02 10:34:19.972+00	127	\N	1126982881	start-moving	0	1	-6	-6	55	2919	0.9
2025-07-02 10:34:58.867+00	127	\N	978202981	stationary	0	0	6	-2	64	2920	0.9
2025-07-02 10:35:06.039+00	127	\N	1041420528	stationary	0	0	4	0	63	2921	0.9
2025-07-02 10:35:24.967+00	127	\N	1126982881	stop-moving	6	9	3	-2	65	2922	0.9
2025-07-02 10:41:04.004+00	127	\N	1126982881	start-moving	0	1	6	-4	64	2928	0.9
2025-07-02 10:42:33.016+00	127	\N	1126982881	stop-moving	24	44	3	-2	64	2930	0.9
2025-07-02 10:44:58.904+00	127	\N	978202981	stationary	0	0	6	-1	65	2933	0.9
2025-07-02 10:45:06.067+00	127	\N	1041420528	stationary	0	0	3	1	64	2936	0.9
2025-07-02 10:52:33.07+00	127	\N	1126982881	stationary	0	0	2	-2	65	2940	0.9
2025-07-02 10:54:59.011+00	127	\N	978202981	stationary	0	0	7	-2	65	2941	0.9
2025-07-02 10:55:06.11+00	127	\N	1041420528	stationary	0	0	3	0	63	2942	0.9
2025-07-02 11:02:33.11+00	127	\N	1126982881	stationary	0	0	3	-1	66	2946	0.9
2025-07-02 11:39:35.397+00	127	\N	1126982881	start-moving	0	1	28	-8	67	2968	0.9
2025-07-02 11:42:10.416+00	127	\N	1126982881	stop-moving	48	81	2	-2	65	2974	0.9
2025-07-02 11:42:26.416+00	127	\N	1126982881	start-moving	0	1	-32	-38	44	2977	0.9
2025-07-02 11:43:38.431+00	127	\N	1126982881	stop-moving	10	12	3	-3	66	2980	0.9
2025-07-02 11:43:41.432+00	127	\N	1126982881	start-moving	0	1	-10	6	65	2983	0.9
2025-07-02 11:44:59.259+00	127	\N	978202981	stationary	0	0	7	-1	66	2984	0.9
2025-07-02 11:45:06.307+00	127	\N	1041420528	stationary	0	0	4	2	63	2986	0.9
2025-07-02 11:45:39.44+00	127	\N	1126982881	stop-moving	33	52	4	-1	66	2987	0.9
2025-07-02 11:45:49.441+00	127	\N	1126982881	start-moving	0	1	-27	-41	58	2990	0.9
2025-07-02 11:47:03.463+00	127	\N	1126982881	stop-moving	24	4	2	-1	65	2994	0.9
2025-07-02 11:54:59.32+00	127	\N	978202981	stationary	0	0	7	-1	65	3003	0.9
2025-07-02 11:55:06.428+00	127	\N	1041420528	stationary	0	0	4	0	64	3004	0.9
2025-07-02 11:56:21.491+00	127	\N	1126982881	start-moving	0	1	7	-2	58	3005	0.9
2025-07-02 11:57:21.503+00	127	\N	1126982881	stop-moving	1	1	3	-2	65	3006	0.9
2025-07-02 12:04:59.403+00	127	\N	978202981	stationary	0	0	7	-2	65	3012	0.9
2025-07-02 12:05:06.506+00	127	\N	1041420528	stationary	0	0	4	1	64	3013	0.9
2025-07-02 12:07:21.538+00	127	\N	1126982881	stationary	0	0	3	-1	65	3014	0.9
2025-07-02 12:14:59.446+00	127	\N	978202981	stationary	0	0	6	-1	65	3017	0.9
2025-07-02 12:15:06.565+00	127	\N	1041420528	stationary	0	0	5	1	63	3018	0.9
2025-07-02 12:15:16.572+00	127	\N	1126982881	start-moving	0	1	-10	-64	36	3019	0.9
2025-07-02 12:19:14.591+00	127	\N	1126982881	stop-moving	140	255	3	-1	65	3029	0.9
2025-07-02 12:24:59.488+00	127	\N	978202981	stationary	0	0	7	-1	66	3038	0.9
2025-07-02 12:25:06.643+00	127	\N	1041420528	stationary	0	0	4	1	63	3039	0.9
2025-07-02 12:29:14.636+00	127	\N	1126982881	stationary	0	0	2	-1	66	3041	0.9
2025-07-02 12:34:59.543+00	127	\N	978202981	stationary	0	0	6	-1	65	3046	0.9
2025-07-02 12:35:06.68+00	127	\N	1041420528	stationary	0	0	3	0	64	3047	0.9
2025-07-02 12:39:14.683+00	127	\N	1126982881	stationary	0	0	2	0	65	3048	0.9
2025-07-02 12:44:59.587+00	127	\N	978202981	stationary	0	0	6	-2	64	3052	0.9
2025-07-02 12:45:06.71+00	127	\N	1041420528	stationary	0	0	4	1	63	3053	0.9
2025-07-02 12:49:14.718+00	127	\N	1126982881	stationary	0	0	2	-2	65	3054	0.9
2025-07-02 12:54:59.637+00	127	\N	978202981	stationary	0	0	6	-2	66	3058	0.9
2025-07-02 12:55:06.746+00	127	\N	1041420528	stationary	0	0	5	1	64	3059	0.9
2025-07-02 12:59:14.773+00	127	\N	1126982881	stationary	0	0	2	-1	65	3060	0.9
2025-07-02 13:04:59.678+00	127	\N	978202981	stationary	0	0	7	-2	65	3064	0.9
2025-07-02 13:05:06.803+00	127	\N	1041420528	stationary	0	0	4	1	64	3065	0.9
2025-07-02 13:09:14.826+00	127	\N	1126982881	stationary	0	0	3	-1	65	3066	0.9
2025-07-02 13:14:59.736+00	127	\N	978202981	stationary	0	0	6	-2	65	3070	0.9
2025-07-02 13:15:06.845+00	127	\N	1041420528	stationary	0	0	5	1	63	3071	0.9
2025-07-02 13:19:14.862+00	127	\N	1126982881	stationary	0	0	2	-1	66	3072	0.9
2025-07-02 13:22:13.876+00	127	\N	1126982881	start-moving	0	1	-27	20	73	3075	0.9
2025-07-02 13:24:54.895+00	127	\N	1126982881	stop-moving	54	55	2	-1	66	3079	0.9
2025-07-02 13:25:06.888+00	127	\N	1041420528	stationary	0	0	4	1	64	3082	0.9
2025-07-02 13:24:59.807+00	127	\N	978202981	stationary	0	0	8	-1	64	3085	0.9
2025-07-02 13:34:54.943+00	127	\N	1126982881	stationary	0	0	3	-1	65	3089	0.9
2025-07-02 13:34:59.846+00	127	\N	978202981	stationary	0	0	6	-2	64	3090	0.9
2025-07-02 13:35:06.919+00	127	\N	1041420528	stationary	0	0	3	1	63	3091	0.9
2025-07-02 13:44:55.01+00	127	\N	1126982881	stationary	0	0	3	-1	66	3095	0.9
2025-07-02 13:44:59.871+00	127	\N	978202981	stationary	0	0	6	-1	65	3096	0.9
2025-07-02 13:45:06.962+00	127	\N	1041420528	stationary	0	0	4	1	64	3097	0.9
2025-07-02 13:52:22.042+00	127	\N	1126982881	start-moving	0	1	14	20	83	3101	0.9
2025-07-02 13:54:24.069+00	127	\N	1126982881	stop-moving	76	16	4	-1	66	3106	0.9
2025-07-02 13:54:25.065+00	127	\N	1126982881	start-moving	0	1	71	-19	96	3107	0.9
2025-07-02 13:54:59.927+00	127	\N	978202981	stationary	0	0	5	-1	65	3112	0.9
2025-07-02 13:55:06.997+00	127	\N	1041420528	stationary	0	0	4	1	64	3113	0.9
2025-07-02 14:00:25.113+00	127	\N	1126982881	stop-moving	223	196	4	0	65	3122	0.9
2025-07-02 14:01:41.111+00	127	\N	1126982881	start-moving	0	1	3	-1	65	3125	0.9
2025-07-02 14:02:40.127+00	127	\N	1126982881	stop-moving	1	1	3	-1	66	3127	0.9
2025-07-02 14:04:59.987+00	127	\N	978202981	stationary	0	0	6	-2	66	3133	0.9
2025-07-02 14:05:07.04+00	127	\N	1041420528	stationary	0	0	4	1	63	3134	0.9
2025-07-02 14:12:40.251+00	127	\N	1126982881	stationary	0	0	3	-1	65	3139	0.9
2025-07-02 14:15:00.055+00	127	\N	978202981	stationary	0	0	6	-2	64	3140	0.9
2025-07-02 14:15:07.074+00	127	\N	1041420528	stationary	0	0	3	1	64	3141	0.9
2025-07-02 14:22:40.342+00	127	\N	1126982881	stationary	0	0	3	-1	65	3149	0.9
2025-07-02 14:25:00.131+00	127	\N	978202981	stationary	0	0	6	-1	65	3150	0.9
2025-07-02 14:25:07.124+00	127	\N	1041420528	stationary	0	0	4	1	64	3151	0.9
2025-07-02 14:32:40.44+00	127	\N	1126982881	stationary	0	0	2	-1	65	3152	0.9
2025-07-02 14:35:00.228+00	127	\N	978202981	stationary	0	0	7	-2	65	3154	0.9
2025-07-02 14:35:07.191+00	127	\N	1041420528	stationary	0	0	4	2	64	3155	0.9
2025-07-02 14:42:40.482+00	127	\N	1126982881	stationary	0	0	3	-1	66	3159	0.9
2025-07-02 14:45:00.264+00	127	\N	978202981	stationary	0	0	6	-1	65	3160	0.9
2025-07-02 14:45:07.295+00	127	\N	1041420528	stationary	0	0	4	1	64	3161	0.9
2025-07-02 14:52:40.514+00	127	\N	1126982881	stationary	0	0	3	-2	65	3166	0.9
2025-07-02 14:55:00.312+00	127	\N	978202981	stationary	0	0	7	-1	64	3168	0.9
2025-07-02 14:55:07.352+00	127	\N	1041420528	stationary	0	0	4	1	64	3169	0.9
2025-07-02 15:02:40.555+00	127	\N	1126982881	stationary	0	0	3	-2	66	3170	0.9
2025-07-02 15:05:00.351+00	127	\N	978202981	stationary	0	0	7	-2	66	3171	0.9
2025-07-02 15:05:07.411+00	127	\N	1041420528	stationary	0	0	3	0	64	3172	0.9
2025-07-02 15:12:40.591+00	127	\N	1126982881	stationary	0	0	3	-2	66	3177	0.9
2025-07-02 15:15:00.384+00	127	\N	978202981	stationary	0	0	6	-1	64	3178	0.9
2025-07-02 15:15:07.445+00	127	\N	1041420528	stationary	0	0	4	1	65	3179	0.9
2025-07-02 15:22:40.637+00	127	\N	1126982881	stationary	0	0	3	-1	65	3183	0.9
2025-07-02 15:25:00.431+00	127	\N	978202981	stationary	0	0	6	-2	65	3186	0.9
2025-07-02 15:25:07.492+00	127	\N	1041420528	stationary	0	0	4	1	63	3187	0.9
2025-07-02 15:34:16.774+00	127	\N	1126982881	start-moving	0	1	-16	18	55	3190	0.9
2025-07-02 15:35:00.461+00	127	\N	978202981	stationary	0	0	7	-1	65	3191	0.9
2025-07-02 15:35:07.527+00	127	\N	1041420528	stationary	0	0	4	1	63	3194	0.9
2025-07-02 15:37:42.809+00	127	\N	1126982881	stop-moving	43	33	4	-1	66	3205	0.9
2025-07-02 15:38:55.831+00	127	\N	1126982881	start-moving	0	1	11	0	67	3209	0.9
2025-07-02 15:41:23.86+00	127	\N	1126982881	stop-moving	14	19	3	-1	65	3213	0.9
2025-07-02 15:44:49.887+00	127	\N	1126982881	start-moving	0	1	12	-31	64	3218	0.9
2025-07-02 15:45:00.5+00	127	\N	978202981	stationary	0	0	6	-1	66	3219	0.9
2025-07-02 15:45:07.604+00	127	\N	1041420528	stationary	0	0	4	1	65	3220	0.9
2025-07-02 15:45:49.902+00	127	\N	1126982881	stop-moving	2	2	3	-1	64	3223	0.9
2025-07-02 15:47:04.915+00	127	\N	1126982881	start-moving	0	1	7	-25	-38	3226	0.9
2025-07-02 15:48:07.919+00	127	\N	1126982881	stop-moving	4	2	0	0	-65	3228	0.9
2025-07-02 15:51:25.946+00	127	\N	1126982881	start-moving	0	1	25	64	-8	3234	0.9
2025-07-02 15:52:33.962+00	127	\N	1126982881	stop-moving	8	6	-40	47	2	3235	0.9
2025-07-02 15:53:40.969+00	127	\N	1126982881	start-moving	0	1	-12	62	-32	3238	0.9
2025-07-02 15:54:39.976+00	127	\N	1126982881	stop-moving	1	1	14	63	-1	3241	0.9
2025-07-02 15:55:00.546+00	127	\N	978202981	stationary	0	0	7	-2	65	3245	0.9
2025-07-02 15:55:07.694+00	127	\N	1041420528	stationary	0	0	3	1	63	3246	0.9
2025-07-02 15:58:55.004+00	127	\N	1126982881	start-moving	0	1	-1	68	1	3249	0.9
2025-07-02 16:00:01.014+00	127	\N	1126982881	stop-moving	6	5	-6	-66	1	3250	0.9
2025-07-02 16:05:00.615+00	127	\N	978202981	stationary	0	0	6	-2	64	3253	0.9
2025-07-02 16:05:07.734+00	127	\N	1041420528	stationary	0	0	6	1	65	3254	0.9
2025-07-02 16:07:21.101+00	127	\N	1126982881	start-moving	0	1	17	-65	1	3257	0.9
2025-07-02 16:08:41.119+00	127	\N	1126982881	stop-moving	10	6	14	-66	-1	3260	0.9
2025-07-02 16:08:45.118+00	127	\N	1126982881	start-moving	0	1	-19	-58	0	3263	0.9
2025-07-02 16:09:50.139+00	127	\N	1126982881	stop-moving	6	3	21	-62	-2	3264	0.9
2025-07-02 16:11:56.137+00	127	\N	1126982881	start-moving	0	1	-32	-9	69	3267	0.9
2025-07-02 16:12:56.147+00	127	\N	1126982881	stop-moving	2	1	4	-1	66	3268	0.9
2025-07-02 16:15:00.67+00	127	\N	978202981	stationary	0	0	7	-1	65	3271	0.9
2025-07-02 16:15:07.783+00	127	\N	1041420528	stationary	0	0	4	1	64	3272	0.9
2025-07-02 16:22:30.175+00	127	\N	1126982881	start-moving	0	1	33	23	76	3275	0.9
2025-07-02 16:23:30.186+00	127	\N	1126982881	stop-moving	6	1	3	-2	65	3276	0.9
2025-07-02 16:25:00.701+00	127	\N	978202981	stationary	0	0	6	-2	64	3280	0.9
2025-07-02 16:25:07.83+00	127	\N	1041420528	stationary	0	0	3	1	62	3281	0.9
2025-07-02 16:33:30.244+00	127	\N	1126982881	stationary	0	0	3	-1	65	3284	0.9
2025-07-02 16:35:00.757+00	127	\N	978202981	stationary	0	0	7	-2	65	3285	0.9
2025-07-02 16:35:07.873+00	127	\N	1041420528	stationary	0	0	5	0	64	3286	0.9
2025-07-02 16:43:30.282+00	127	\N	1126982881	stationary	0	0	4	0	65	3291	0.9
2025-07-02 16:45:00.825+00	127	\N	978202981	stationary	0	0	7	-2	66	3292	0.9
2025-07-02 16:45:06.295+00	127	\N	1126982881	start-moving	0	1	3	1	50	3293	0.9
2025-07-02 16:45:07.914+00	127	\N	1041420528	stationary	0	0	4	1	64	3294	0.9
2025-07-02 16:46:06.3+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	3295	0.9
2025-07-02 16:55:00.885+00	127	\N	978202981	stationary	0	0	7	-1	65	3300	0.9
2025-07-02 16:55:07.973+00	127	\N	1041420528	stationary	0	0	4	1	64	3301	0.9
2025-07-02 16:56:06.331+00	127	\N	1126982881	stationary	0	0	3	-2	66	3303	0.9
2025-07-02 16:56:55.342+00	127	\N	1126982881	start-moving	0	1	3	-1	65	3305	0.9
2025-07-02 16:57:54.346+00	127	\N	1126982881	stop-moving	1	1	3	-1	65	3306	0.9
2025-07-02 16:59:17.347+00	127	\N	1126982881	start-moving	0	1	4	-1	65	3309	0.9
2025-07-02 17:00:44.353+00	127	\N	1126982881	stop-moving	2	2	3	-1	67	3311	0.9
2025-07-02 17:05:00.979+00	127	\N	978202981	stationary	0	0	6	-2	65	3314	0.9
2025-07-02 17:05:08.074+00	127	\N	1041420528	stationary	0	0	4	0	63	3315	0.9
2025-07-02 17:24:02.46+00	127	\N	1126982881	stop-moving	1	1	4	-1	65	3327	0.9
2025-07-02 17:24:28.466+00	127	\N	1126982881	start-moving	0	1	4	-2	65	3330	0.9
2025-07-02 17:25:01.169+00	127	\N	978202981	stationary	0	0	6	-2	65	3331	0.9
2025-07-02 17:25:08.343+00	127	\N	1041420528	stationary	0	0	5	1	64	3332	0.9
2025-07-02 17:25:28.464+00	127	\N	1126982881	stop-moving	1	1	3	-2	67	3333	0.9
2025-07-02 17:35:01.206+00	127	\N	978202981	stationary	0	0	6	-1	65	3340	0.9
2025-07-02 17:35:08.416+00	127	\N	1041420528	stationary	0	0	5	0	64	3341	0.9
2025-07-02 17:35:28.508+00	127	\N	1126982881	stationary	0	0	3	-2	66	3342	0.9
2025-07-02 17:45:01.242+00	127	\N	978202981	stationary	0	0	6	-2	65	3347	0.9
2025-07-02 17:45:08.484+00	127	\N	1041420528	stationary	0	0	4	1	64	3348	0.9
2025-07-02 17:45:28.547+00	127	\N	1126982881	stationary	0	0	2	-1	65	3349	0.9
2025-07-02 17:55:01.281+00	127	\N	978202981	stationary	0	0	6	-1	67	3352	0.9
2025-07-02 17:55:08.538+00	127	\N	1041420528	stationary	0	0	4	0	65	3353	0.9
2025-07-02 17:55:28.586+00	127	\N	1126982881	stationary	0	0	4	-1	65	3354	0.9
2025-07-02 18:05:01.323+00	127	\N	978202981	stationary	0	0	7	-1	65	3358	0.9
2025-07-02 18:05:08.577+00	127	\N	1041420528	stationary	0	0	5	1	63	3359	0.9
2025-07-02 18:05:28.631+00	127	\N	1126982881	stationary	0	0	4	-2	65	3360	0.9
2025-07-02 18:15:01.357+00	127	\N	978202981	stationary	0	0	7	-1	65	3365	0.9
2025-07-02 18:15:08.619+00	127	\N	1041420528	stationary	0	0	5	1	65	3366	0.9
2025-07-02 18:15:28.702+00	127	\N	1126982881	stationary	0	0	4	-1	66	3367	0.9
2025-07-02 18:25:01.437+00	127	\N	978202981	stationary	0	0	7	-2	65	3372	0.9
2025-07-02 18:25:08.669+00	127	\N	1041420528	stationary	0	0	4	1	64	3373	0.9
2025-07-02 18:25:28.771+00	127	\N	1126982881	stationary	0	0	3	-1	66	3374	0.9
2025-07-02 18:35:01.55+00	127	\N	978202981	stationary	0	0	6	-1	64	3378	0.9
2025-07-02 18:35:08.712+00	127	\N	1041420528	stationary	0	0	4	1	64	3379	0.9
2025-07-02 18:35:28.841+00	127	\N	1126982881	stationary	0	0	3	-1	66	3380	0.9
2025-07-02 18:45:01.626+00	127	\N	978202981	stationary	0	0	6	-1	65	3385	0.9
2025-07-02 18:45:08.759+00	127	\N	1041420528	stationary	0	0	5	2	64	3386	0.9
2025-07-02 18:45:28.91+00	127	\N	1126982881	stationary	0	0	3	-2	66	3387	0.9
2025-07-02 18:55:01.689+00	127	\N	978202981	stationary	0	0	5	-1	65	3390	0.9
2025-07-02 18:55:08.805+00	127	\N	1041420528	stationary	0	0	4	1	64	3391	0.9
2025-07-02 18:55:29.035+00	127	\N	1126982881	stationary	0	0	3	-1	65	3392	0.9
2025-07-02 19:05:01.776+00	127	\N	978202981	stationary	0	0	6	-2	66	3396	0.9
2025-07-02 19:05:08.872+00	127	\N	1041420528	stationary	0	0	5	1	63	3397	0.9
2025-07-02 19:05:29.068+00	127	\N	1126982881	stationary	0	0	2	-1	64	3398	0.9
2025-07-02 19:15:01.845+00	127	\N	978202981	stationary	0	0	7	-1	66	3403	0.9
2025-07-02 19:15:09.013+00	127	\N	1041420528	stationary	0	0	4	1	63	3404	0.9
2025-07-02 19:15:29.109+00	127	\N	1126982881	stationary	0	0	2	-2	65	3405	0.9
2025-07-02 19:25:01.904+00	127	\N	978202981	stationary	0	0	7	-2	65	3408	0.9
2025-07-02 19:25:09.077+00	127	\N	1041420528	stationary	0	0	4	1	63	3409	0.9
2025-07-02 19:25:18.147+00	127	\N	1126982881	start-moving	0	1	1	-7	70	3410	0.9
2025-07-02 19:26:18.149+00	127	\N	1126982881	stop-moving	1	1	3	-2	63	3411	0.9
2025-07-02 19:35:01.947+00	127	\N	978202981	stationary	0	0	6	-1	64	3418	0.9
2025-07-02 19:35:09.126+00	127	\N	1041420528	stationary	0	0	5	1	64	3419	0.9
2025-07-02 19:36:18.186+00	127	\N	1126982881	stationary	0	0	3	-2	65	3420	0.9
2025-07-02 19:45:01.988+00	127	\N	978202981	stationary	0	0	6	-2	65	3425	0.9
2025-07-02 19:45:09.17+00	127	\N	1041420528	stationary	0	0	4	1	64	3426	0.9
2025-07-02 19:46:18.236+00	127	\N	1126982881	stationary	0	0	3	-2	65	3428	0.9
2025-07-02 19:55:02.021+00	127	\N	978202981	stationary	0	0	6	-1	65	3434	0.9
2025-07-02 19:55:09.239+00	127	\N	1041420528	stationary	0	0	5	1	63	3435	0.9
2025-07-02 19:56:18.301+00	127	\N	1126982881	stationary	0	0	3	-2	65	3436	0.9
2025-07-02 20:05:02.062+00	127	\N	978202981	stationary	0	0	6	-1	66	3441	0.9
2025-07-02 20:05:09.313+00	127	\N	1041420528	stationary	0	0	3	0	64	3442	0.9
2025-07-02 20:06:18.349+00	127	\N	1126982881	stationary	0	0	2	-2	66	3443	0.9
2025-07-02 20:15:02.1+00	127	\N	978202981	stationary	0	0	6	-1	65	3449	0.9
2025-07-02 20:15:09.367+00	127	\N	1041420528	stationary	0	0	4	1	63	3450	0.9
2025-07-02 20:16:18.41+00	127	\N	1126982881	stationary	0	0	3	-2	67	3451	0.9
2025-07-02 20:25:02.14+00	127	\N	978202981	stationary	0	0	6	-1	66	3455	0.9
2025-07-02 20:25:09.41+00	127	\N	1041420528	stationary	0	0	4	1	62	3456	0.9
2025-07-02 20:26:18.454+00	127	\N	1126982881	stationary	0	0	3	-1	66	3458	0.9
2025-07-02 21:05:02.333+00	127	\N	978202981	stationary	0	0	6	-1	65	3481	0.9
2025-07-02 21:05:09.596+00	127	\N	1041420528	stationary	0	0	4	0	65	3482	0.9
2025-07-02 21:06:18.766+00	127	\N	1126982881	stationary	0	0	3	-1	65	3483	0.9
2025-07-02 21:15:02.37+00	127	\N	978202981	stationary	0	0	7	0	65	3488	0.9
2025-07-02 21:15:09.635+00	127	\N	1041420528	stationary	0	0	4	1	64	3489	0.9
2025-07-02 21:16:18.857+00	127	\N	1126982881	stationary	0	0	3	-2	65	3490	0.9
2025-07-02 21:25:02.441+00	127	\N	978202981	stationary	0	0	6	-1	65	3493	0.9
2025-07-02 21:25:09.689+00	127	\N	1041420528	stationary	0	0	4	0	64	3494	0.9
2025-07-02 21:26:18.898+00	127	\N	1126982881	stationary	0	0	3	-2	65	3496	0.9
2025-07-02 21:35:02.502+00	127	\N	978202981	stationary	0	0	6	-1	65	3502	0.9
2025-07-02 21:35:09.823+00	127	\N	1041420528	stationary	0	0	5	1	63	3503	0.9
2025-07-02 21:36:18.944+00	127	\N	1126982881	stationary	0	0	3	-2	65	3504	0.9
2025-07-02 21:45:02.577+00	127	\N	978202981	stationary	0	0	6	-2	65	3510	0.9
2025-07-02 21:45:09.918+00	127	\N	1041420528	stationary	0	0	3	1	63	3511	0.9
2025-07-02 21:46:18.986+00	127	\N	1126982881	stationary	0	0	3	-1	65	3512	0.9
2025-07-02 21:55:02.64+00	127	\N	978202981	stationary	0	0	7	-2	65	3515	0.9
2025-07-02 21:55:10.047+00	127	\N	1041420528	stationary	0	0	4	0	64	3516	0.9
2025-07-02 21:56:19.017+00	127	\N	1126982881	stationary	0	0	3	-2	64	3517	0.9
2025-07-02 22:05:02.748+00	127	\N	978202981	stationary	0	0	6	-1	64	3522	0.9
2025-07-02 22:05:10.084+00	127	\N	1041420528	stationary	0	0	3	1	63	3523	0.9
2025-07-02 22:06:19.06+00	127	\N	1126982881	stationary	0	0	3	-3	65	3524	0.9
2025-07-02 22:15:02.787+00	127	\N	978202981	stationary	0	0	7	-2	64	3529	0.9
2025-07-02 22:15:10.203+00	127	\N	1041420528	stationary	0	0	4	1	63	3531	0.9
2025-07-02 22:16:19.126+00	127	\N	1126982881	stationary	0	0	2	-2	65	3532	0.9
2025-07-02 22:25:02.824+00	127	\N	978202981	stationary	0	0	6	-2	65	3534	0.9
2025-07-02 22:25:10.24+00	127	\N	1041420528	stationary	0	0	4	0	64	3535	0.9
2025-07-02 22:26:19.16+00	127	\N	1126982881	stationary	0	0	3	-1	65	3536	0.9
2025-07-02 22:38:03.221+00	127	\N	1126982881	stop-moving	1	1	3	-2	65	3549	0.9
2025-07-02 22:45:02.903+00	127	\N	978202981	stationary	0	0	7	-1	65	3556	0.9
2025-07-02 22:45:10.337+00	127	\N	1041420528	stationary	0	0	3	0	64	3557	0.9
2025-07-02 22:48:03.254+00	127	\N	1126982881	stationary	0	0	3	-2	66	3558	0.9
2025-07-02 22:55:02.949+00	127	\N	978202981	stationary	0	0	6	-2	64	3560	0.9
2025-07-02 22:55:10.37+00	127	\N	1041420528	stationary	0	0	4	1	64	3561	0.9
2025-07-02 22:58:03.317+00	127	\N	1126982881	stationary	0	0	4	-1	65	3562	0.9
2025-07-02 23:05:02.983+00	127	\N	978202981	stationary	0	0	7	-2	65	3568	0.9
2025-07-02 23:05:10.406+00	127	\N	1041420528	stationary	0	0	5	1	63	3569	0.9
2025-07-02 23:08:03.392+00	127	\N	1126982881	stationary	0	0	3	-2	66	3570	0.9
2025-07-02 23:15:03.049+00	127	\N	978202981	stationary	0	0	5	-1	65	3575	0.9
2025-07-02 23:15:10.436+00	127	\N	1041420528	stationary	0	0	4	1	64	3576	0.9
2025-07-02 23:17:35.441+00	127	\N	1126982881	start-moving	0	1	3	-2	65	3577	0.9
2025-07-02 23:18:34.454+00	127	\N	1126982881	stop-moving	1	1	3	-1	64	3578	0.9
2025-07-02 23:25:03.096+00	127	\N	978202981	stationary	0	0	6	-1	65	3582	0.9
2025-07-02 23:25:10.476+00	127	\N	1041420528	stationary	0	0	4	1	63	3583	0.9
2025-07-02 23:28:34.565+00	127	\N	1126982881	stationary	0	0	2	-1	64	3584	0.9
2025-07-02 23:35:03.148+00	127	\N	978202981	stationary	0	0	7	-1	66	3590	0.9
2025-07-02 23:35:10.578+00	127	\N	1041420528	stationary	0	0	4	1	64	3591	0.9
2025-07-02 23:38:34.615+00	127	\N	1126982881	stationary	0	0	3	-2	65	3593	0.9
2025-07-02 23:45:10.643+00	127	\N	1041420528	stationary	0	0	4	0	65	3598	0.9
2025-07-02 23:45:03.189+00	127	\N	978202981	stationary	0	0	7	-1	65	3599	0.9
2025-07-02 23:48:34.644+00	127	\N	1126982881	stationary	0	0	4	-1	65	3600	0.9
2025-07-02 23:55:10.703+00	127	\N	1041420528	stationary	0	0	4	1	64	3601	0.9
2025-07-02 23:55:03.255+00	127	\N	978202981	stationary	0	0	8	-2	66	3602	0.9
2025-07-02 23:58:34.686+00	127	\N	1126982881	stationary	0	0	3	-1	66	3603	0.9
\.


--
-- Data for Name: _hyper_4_13_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_13_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-07-03 15:53:05.376+00	193	\N	1126982881	2	4270	0.9
2025-07-03 15:53:42.059+00	193	\N	978202981	2	4273	0.9
2025-07-03 15:53:45.186+00	193	\N	1041420528	2	4277	0.9
2025-07-03 18:28:12.38+00	193	\N	1126982881	2	4386	0.9
2025-07-03 18:30:47.406+00	193	\N	1126982881	3	4392	0.9
2025-07-03 18:35:07.43+00	193	\N	1126982881	2	4401	0.9
2025-07-03 18:52:39.626+00	193	\N	1126982881	2	4420	0.9
2025-07-03 19:08:15.684+00	193	\N	1126982881	2	4432	0.9
2025-07-03 19:27:37.761+00	193	\N	1126982881	2	4447	0.9
2025-07-03 19:33:04.777+00	193	\N	1126982881	2	4452	0.9
2025-07-03 19:35:54.787+00	193	\N	1126982881	2	4460	0.9
2025-07-03 20:34:40.056+00	193	\N	1126982881	3	4504	0.9
2025-07-03 20:38:39.074+00	193	\N	1126982881	2	4512	0.9
2025-07-03 20:43:21.119+00	193	\N	1126982881	2	4518	0.9
2025-07-03 21:02:58.262+00	193	\N	1126982881	2	4536	0.9
2025-07-03 21:09:45.304+00	193	\N	1126982881	3	4544	0.9
2025-07-03 21:10:58.322+00	193	\N	1126982881	2	4548	0.9
2025-07-03 21:19:17.461+00	193	\N	1126982881	3	4561	0.9
2025-07-03 21:20:19.469+00	193	\N	1126982881	3	4564	0.9
2025-07-03 21:22:12.479+00	193	\N	1126982881	2	4570	0.9
2025-07-03 21:30:16.508+00	193	\N	1126982881	3	4577	0.9
2025-07-03 21:36:38.523+00	193	\N	1126982881	3	4585	0.9
2025-07-03 21:54:30.598+00	193	\N	1126982881	3	4602	0.9
2025-07-03 21:55:31.595+00	193	\N	1126982881	3	4605	0.9
2025-07-03 21:56:37.608+00	193	\N	1126982881	1	4609	0.9
2025-07-03 22:16:43.685+00	193	\N	1126982881	2	4624	0.9
2025-07-03 22:21:58.733+00	193	\N	1126982881	3	4635	0.9
2025-07-03 22:23:53.744+00	193	\N	1126982881	2	4645	0.9
2025-07-03 22:29:21.788+00	193	\N	1126982881	3	4653	0.9
2025-07-03 22:33:51.822+00	193	\N	1126982881	3	4664	0.9
2025-07-03 22:36:32.833+00	193	\N	1126982881	2	4671	0.9
2025-07-03 22:54:59.914+00	193	\N	1126982881	3	4692	0.9
2025-07-03 22:57:44.929+00	193	\N	1126982881	2	4696	0.9
2025-07-03 23:04:32.979+00	193	\N	1126982881	2	4703	0.9
2025-07-03 23:11:45.026+00	193	\N	1126982881	2	4710	0.9
2025-07-03 23:17:12.077+00	193	\N	1126982881	2	4719	0.9
2025-07-03 23:18:51.084+00	193	\N	1126982881	1	4724	0.9
2025-07-03 23:22:54.116+00	193	\N	1126982881	3	4736	0.9
2025-07-03 23:24:11.134+00	193	\N	1126982881	3	4742	0.9
2025-07-03 23:26:07.174+00	193	\N	1126982881	3	4750	0.9
2025-07-03 23:34:54.24+00	193	\N	1126982881	2	4766	0.9
2025-07-03 23:39:07.268+00	193	\N	1126982881	2	4776	0.9
2025-07-03 23:43:20.292+00	193	\N	1126982881	2	4784	0.9
2025-07-03 23:49:55.329+00	193	\N	1126982881	2	4797	0.9
2025-07-03 23:53:08.358+00	193	\N	1126982881	2	4808	0.9
2025-07-04 05:27:22.25+00	193	\N	978202981	2	5037	0.9
2025-07-04 09:52:19.428+00	193	\N	1041420528	3	5233	0.9
2025-07-04 09:52:36.09+00	193	\N	978202981	3	5236	0.9
2025-07-04 09:58:20.689+00	193	\N	1126982881	3	5246	0.9
2025-07-04 09:59:27.682+00	193	\N	1126982881	3	5251	0.9
2025-07-04 10:03:26.706+00	193	\N	1126982881	3	5259	0.9
2025-07-04 10:13:03.773+00	193	\N	1126982881	2	5281	0.9
2025-07-04 11:02:46.071+00	193	\N	1126982881	2	5332	0.9
2025-07-04 11:09:06.119+00	193	\N	1126982881	2	5345	0.9
2025-07-04 11:11:11.133+00	193	\N	1126982881	2	5351	0.9
2025-07-04 11:12:57.152+00	193	\N	1126982881	3	5361	0.9
2025-07-04 11:14:06.151+00	193	\N	1126982881	3	5367	0.9
2025-07-04 11:15:47.172+00	193	\N	1126982881	3	5373	0.9
2025-07-04 11:18:20.206+00	193	\N	1126982881	3	5378	0.9
2025-07-04 11:22:05.245+00	193	\N	1126982881	3	5385	0.9
2025-07-04 13:22:09.783+00	193	\N	1126982881	3	5474	0.9
2025-07-04 13:26:22.813+00	193	\N	1126982881	2	5486	0.9
2025-07-04 13:26:26.698+00	193	\N	1041420528	3	5489	0.9
2025-07-04 13:43:04.925+00	193	\N	1126982881	3	5517	0.9
2025-07-04 13:57:14.077+00	193	\N	1126982881	3	5538	0.9
2025-07-04 13:58:45.097+00	193	\N	1126982881	3	5545	0.9
2025-07-04 14:00:51.109+00	193	\N	1126982881	3	5552	0.9
2025-07-04 14:02:36.115+00	193	\N	1126982881	3	5558	0.9
2025-07-04 14:06:46.147+00	193	\N	1126982881	3	5568	0.9
2025-07-04 14:08:12.144+00	193	\N	1126982881	2	5572	0.9
2025-07-04 14:40:00.272+00	193	\N	1126982881	3	5598	0.9
2025-07-04 14:43:57.287+00	193	\N	1126982881	3	5609	0.9
2025-07-04 14:49:46.319+00	193	\N	1126982881	3	5616	0.9
2025-07-04 14:50:57.322+00	193	\N	1126982881	2	5620	0.9
2025-07-04 15:19:53.501+00	193	\N	1126982881	3	5665	0.9
2025-07-04 15:21:41.512+00	193	\N	1126982881	3	5675	0.9
2025-07-04 15:23:41.523+00	193	\N	1126982881	2	5683	0.9
2025-07-04 15:25:07.533+00	193	\N	1126982881	3	5691	0.9
2025-07-04 15:26:17.237+00	193	\N	1041420528	3	5696	0.9
2025-07-04 18:15:41.207+00	193	telegraf	1041420528	3	6088	1
2025-07-04 18:15:46.763+00	193	telegraf	1126982881	3	6091	1
2025-07-04 18:18:18.778+00	193	telegraf	1126982881	3	6102	1
2025-07-04 18:18:19.233+00	193	telegraf	1041420528	3	6105	1
2025-07-04 18:33:17.835+00	193	telegraf	1126982881	3	6119	1
2025-07-04 19:39:22.207+00	193	telegraf	1126982881	3	6201	1
2025-07-04 20:25:00.632+00	193	telegraf	1126982881	3	6293	1
2025-07-04 20:25:09.422+00	193	telegraf	978202981	2	6296	1
2025-07-04 20:25:09.868+00	193	telegraf	1041420528	3	6299	1
2025-07-04 20:37:10.707+00	193	telegraf	1126982881	3	6323	1
2025-07-04 20:44:06.757+00	193	telegraf	1126982881	3	6339	1
2025-07-04 20:44:07.046+00	193	telegraf	1041420528	3	6342	1
2025-07-04 22:04:31.215+00	193	telegraf	1126982881	3	6450	1
2025-07-05 07:25:49.743+00	193	telegraf	978202981	2	6903	1
2025-07-05 07:25:50.161+00	193	telegraf	1126982881	3	6906	1
2025-07-05 07:25:52.116+00	193	telegraf	1041420528	3	6909	1
2025-07-07 09:06:40.896+00	193	telegraf	840973111	4	117	1
2025-07-07 09:06:41.854+00	193	telegraf	1523842139	6	120	1
2025-07-07 09:07:30.044+00	193	telegraf	527134251	6	125	1
2025-07-07 09:08:03.423+00	193	telegraf	1041420528	2	4	1
2025-07-07 09:06:05.404+00	193	telegraf	1041420528	4	8	1
2025-07-07 09:08:03.543+00	193	telegraf	978202981	3	17	1
2025-07-07 09:08:06.008+00	193	telegraf	1126982881	3	20	1
2025-07-07 09:10:48.012+00	193	telegraf	527134251	4	132	1
2025-07-07 09:10:48.831+00	193	telegraf	840973111	4	136	1
2025-07-07 09:10:48.828+00	193	telegraf	1523842139	4	138	1
2025-07-07 09:17:04.02+00	193	telegraf	1523842139	4	163	1
2025-07-07 09:17:06.013+00	193	telegraf	840973111	6	166	1
2025-07-07 09:17:04.186+00	193	telegraf	527134251	6	169	1
2025-07-07 09:18:06.096+00	193	telegraf	1126982881	3	25	1
2025-07-07 09:18:52.052+00	193	telegraf	1523842139	6	176	1
2025-07-07 09:19:13.105+00	193	telegraf	1126982881	4	31	1
2025-07-07 09:19:08.226+00	193	telegraf	527134251	6	185	1
2025-07-07 09:25:43.12+00	193	telegraf	527134251	7	197	1
2025-07-07 09:27:54.961+00	193	telegraf	840973111	5	211	1
2025-07-07 09:30:32.022+00	193	telegraf	1523842139	4	225	1
2025-07-07 09:31:07.057+00	193	telegraf	840973111	4	228	1
2025-07-07 09:31:07.183+00	193	telegraf	527134251	7	231	1
2025-07-07 09:31:57.191+00	193	telegraf	1126982881	3	41	1
2025-07-07 09:31:56.72+00	193	telegraf	1041420528	2	44	1
2025-07-07 09:32:27.731+00	193	telegraf	978202981	3	48	1
2025-07-07 09:33:22.207+00	193	telegraf	1126982881	3	52	1
2025-07-07 09:34:43.152+00	193	telegraf	527134251	6	241	1
2025-07-07 09:34:55.013+00	193	telegraf	840973111	7	244	1
2025-07-07 09:36:18.76+00	193	telegraf	1041420528	3	57	1
2025-07-07 09:37:45.206+00	193	telegraf	527134251	7	255	1
2025-07-07 09:49:26.266+00	193	telegraf	527134251	23	8	1
2025-07-07 09:54:17.789+00	193	telegraf	1041420528	4	73	1
2025-07-07 09:55:51.747+00	193	telegraf	978202981	4	81	1
2025-07-07 09:57:26.368+00	193	telegraf	527134251	21	29	1
2025-07-07 09:58:34.712+00	193	telegraf	978202981	3	86	1
2025-07-07 09:59:07.741+00	193	telegraf	1041420528	3	89	1
2025-07-07 10:07:43.743+00	193	telegraf	978202981	4	98	1
2025-07-07 10:07:58.174+00	193	telegraf	1126982881	3	102	1
2025-07-07 10:07:57.773+00	193	telegraf	1041420528	2	105	1
2025-07-07 10:19:01.017+00	193	telegraf	978202981	5	118	1
2025-07-07 10:19:02.423+00	193	telegraf	1126982881	4	121	1
2025-07-07 10:54:11.766+00	193	telegraf	1126982881	6	5	1
2025-07-07 10:54:11.09+00	193	telegraf	1041420528	6	8	1
2025-07-07 10:56:50.749+00	193	telegraf	1126982881	5	14	1
2025-07-07 10:57:29.202+00	193	telegraf	978202981	4	18	1
2025-07-07 10:58:00.077+00	193	telegraf	1041420528	5	21	1
2025-07-07 11:05:47.304+00	193	telegraf	978202981	3	32	1
2025-07-07 11:06:46.132+00	193	telegraf	1041420528	6	36	1
2025-07-07 11:09:13.311+00	193	telegraf	978202981	4	45	1
2025-07-07 11:10:47.79+00	193	telegraf	1126982881	4	51	1
2025-07-07 11:10:50.147+00	193	telegraf	1041420528	6	55	1
2025-07-07 11:33:10.349+00	193	telegraf	1041420528	4	77	1
2025-07-07 11:39:32.436+00	193	telegraf	978202981	3	82	1
2025-07-07 11:48:11.475+00	193	telegraf	978202981	3	101	1
2025-07-07 11:51:41.993+00	193	telegraf	1126982881	4	107	1
2025-07-07 12:07:12.047+00	193	telegraf	1126982881	5	132	1
2025-07-07 12:08:23.06+00	193	telegraf	1126982881	5	136	1
2025-07-07 12:13:47.076+00	193	telegraf	1126982881	4	150	1
2025-07-07 12:14:58.073+00	193	telegraf	1126982881	5	157	1
2025-07-07 12:26:20.973+00	193	telegraf	632461688	6	185	1
2025-07-07 12:26:22.391+00	193	telegraf	3839865	4	186	1
2025-07-07 12:26:32.201+00	193	telegraf	1126982881	4	190	1
2025-07-07 12:40:18.692+00	193	telegraf	1041420528	4	215	1
2025-07-07 12:46:26.484+00	193	telegraf	305822513	4	229	1
2025-07-07 12:46:26.501+00	193	telegraf	3839865	3	232	1
2025-07-07 12:57:09.747+00	193	telegraf	1041420528	3	254	1
2025-07-07 13:01:06.288+00	193	telegraf	840973111	3	297	1
2025-07-07 13:01:52.642+00	193	telegraf	791308911	6	309	1
2025-07-07 13:01:49.393+00	193	telegraf	527134251	4	310	1
2025-07-07 13:03:06.644+00	193	telegraf	791308911	7	326	1
2025-07-07 13:03:42.97+00	193	telegraf	333419537	6	336	1
2025-07-07 13:03:43.131+00	193	telegraf	677224097	5	341	1
2025-07-07 13:03:53.304+00	193	telegraf	840973111	3	344	1
2025-07-07 13:03:53.397+00	193	telegraf	527134251	5	347	1
2025-07-07 13:04:06.266+00	193	telegraf	1523842139	4	351	1
2025-07-07 13:05:30.404+00	193	telegraf	527134251	5	359	1
2025-07-07 13:05:52.766+00	193	telegraf	1041420528	3	362	1
2025-07-07 13:09:21.777+00	193	telegraf	1041420528	4	384	1
2025-07-07 13:09:54.431+00	193	telegraf	527134251	4	391	1
2025-07-07 13:17:12.354+00	193	telegraf	840973111	4	423	1
2025-07-07 13:17:12.293+00	193	telegraf	1523842139	3	427	1
2025-07-07 13:17:12.45+00	193	telegraf	527134251	5	431	1
2025-07-07 13:19:16.354+00	193	telegraf	840973111	5	440	1
2025-07-07 13:19:16.312+00	193	telegraf	1523842139	4	448	1
2025-07-07 13:19:57.449+00	193	telegraf	527134251	5	451	1
2025-07-07 13:21:41.986+00	193	telegraf	978202981	4	458	1
2025-07-07 13:21:42.465+00	193	telegraf	527134251	5	462	1
2025-07-07 13:22:38.607+00	193	telegraf	305822513	5	466	1
2025-07-07 13:22:38.272+00	193	telegraf	632461688	2	470	1
2025-07-07 13:22:37.643+00	193	telegraf	3839865	6	471	1
2025-07-07 13:22:51.465+00	193	telegraf	527134251	5	478	1
2025-07-07 13:28:33.635+00	193	telegraf	305822513	6	500	1
2025-07-07 13:33:14.662+00	193	telegraf	305822513	6	522	1
2025-07-07 13:33:14.712+00	193	telegraf	3839865	4	526	1
2025-07-07 13:28:26.568+00	193	telegraf	527134251	4	554	1
2025-07-07 13:33:13.184+00	193	telegraf	333419537	4	559	1
2025-07-07 13:39:46.767+00	193	telegraf	3839865	4	562	1
2025-07-07 13:31:48.399+00	193	telegraf	840973111	4	568	1
2025-07-07 13:28:27.382+00	193	telegraf	840973111	3	573	1
2025-07-07 13:28:27.371+00	193	telegraf	1523842139	4	577	1
2025-07-07 13:36:47.358+00	193	telegraf	1523842139	4	582	1
2025-07-07 13:38:09.816+00	193	telegraf	791308911	8	590	1
2025-07-07 13:37:59.376+00	193	telegraf	1523842139	3	606	1
2025-07-07 13:38:40.26+00	193	telegraf	677224097	4	611	1
2025-07-07 13:40:59.624+00	193	telegraf	527134251	5	628	1
2025-07-07 13:42:13.632+00	193	telegraf	527134251	4	633	1
2025-07-07 13:42:58.711+00	193	telegraf	305822513	6	636	1
2025-07-07 13:42:18.444+00	193	telegraf	840973111	3	639	1
2025-07-07 13:42:45.399+00	193	telegraf	1523842139	4	644	1
2025-07-07 13:43:15.634+00	193	telegraf	527134251	5	656	1
2025-07-07 13:43:20.443+00	193	telegraf	840973111	3	659	1
2025-07-07 13:47:08.652+00	193	telegraf	527134251	5	672	1
2025-07-07 13:47:10.416+00	193	telegraf	1523842139	4	675	1
2025-07-07 13:48:22.463+00	193	telegraf	840973111	4	686	1
2025-07-07 13:48:23.412+00	193	telegraf	1523842139	4	688	1
2025-07-07 13:48:36.651+00	193	telegraf	527134251	5	692	1
2025-07-07 13:48:57.854+00	193	telegraf	791308911	7	697	1
2025-07-07 13:49:14.227+00	193	telegraf	333419537	4	703	1
2025-07-07 13:50:58.484+00	193	telegraf	840973111	4	709	1
2025-07-07 13:50:59.426+00	193	telegraf	1523842139	4	713	1
2025-07-07 13:52:58.434+00	193	telegraf	1523842139	5	725	1
2025-07-07 13:54:26.487+00	193	telegraf	840973111	4	741	1
2025-07-07 13:55:30.681+00	193	telegraf	527134251	5	750	1
2025-07-07 13:57:11.687+00	193	telegraf	527134251	5	761	1
2025-07-07 13:59:05.698+00	193	telegraf	527134251	5	778	1
2025-07-07 13:59:27.17+00	193	telegraf	978202981	6	781	1
2025-07-07 13:59:05.514+00	193	telegraf	840973111	3	789	1
2025-07-07 13:59:04.479+00	193	telegraf	1523842139	2	790	1
2025-07-07 14:08:35.548+00	193	telegraf	1523842139	4	838	1
2025-07-07 14:11:21.32+00	193	telegraf	333419537	4	857	1
2025-07-07 14:13:27.25+00	193	telegraf	978202981	7	876	1
2025-07-07 14:12:25.766+00	193	telegraf	527134251	5	888	1
2025-07-07 14:06:41.064+00	193	telegraf	2045592530	7	900	1
2025-07-07 14:06:20.305+00	193	telegraf	1575827679	6	908	1
2025-07-07 14:09:17.116+00	193	telegraf	2045592530	7	911	1
2025-07-07 14:12:24.578+00	193	telegraf	1523842139	5	918	1
2025-07-07 14:12:25.591+00	193	telegraf	840973111	4	919	1
2025-07-07 14:14:57.542+00	193	telegraf	632461688	4	932	1
2025-07-07 14:14:57.038+00	193	telegraf	3839865	7	933	1
2025-07-07 14:15:14.606+00	193	telegraf	840973111	4	946	1
2025-07-07 14:15:44.8+00	193	telegraf	1126982881	2	950	1
2025-07-07 14:19:02.616+00	193	telegraf	840973111	5	974	1
2025-07-07 14:19:01.798+00	193	telegraf	527134251	5	978	1
2025-07-07 14:19:01.611+00	193	telegraf	1523842139	3	981	1
2025-07-07 14:20:34.286+00	193	telegraf	978202981	5	988	1
2025-07-07 14:20:21.812+00	193	telegraf	527134251	4	992	1
2025-07-07 14:20:20.628+00	193	telegraf	840973111	5	993	1
2025-07-07 14:20:20.61+00	193	telegraf	1523842139	3	997	1
2025-07-07 14:22:03.491+00	193	telegraf	677224097	6	1006	1
2025-07-07 14:28:05.135+00	193	telegraf	305822513	6	1029	1
2025-07-07 14:28:04.606+00	193	telegraf	632461688	4	1032	1
2025-07-07 14:33:36.277+00	193	telegraf	1041420528	3	1056	1
2025-07-07 14:36:12.549+00	193	telegraf	677224097	3	1076	1
2025-07-07 14:38:31.286+00	193	telegraf	1041420528	3	1082	1
2025-07-07 14:39:34.168+00	193	telegraf	791308911	2	1090	1
2025-07-07 14:39:34.566+00	193	telegraf	677224097	3	1094	1
2025-07-07 14:39:34.406+00	193	telegraf	333419537	2	1095	1
2025-07-07 14:40:52.189+00	193	telegraf	305822513	4	1102	1
2025-07-07 14:40:52.159+00	193	telegraf	3839865	1	1105	1
2025-07-07 14:40:52.665+00	193	telegraf	632461688	5	1108	1
2025-07-07 14:44:00.179+00	193	telegraf	791308911	5	1130	1
2025-07-07 14:43:58.579+00	193	telegraf	677224097	4	1133	1
2025-07-07 14:47:30.708+00	193	telegraf	632461688	4	1155	1
2025-07-07 14:46:42.493+00	193	telegraf	333419537	3	1174	1
2025-07-07 14:50:21.163+00	193	telegraf	720958279	4	1184	1
2025-07-07 14:50:20.192+00	193	telegraf	23439212	4	1187	1
2025-07-08 08:06:02.252+00	193	telegraf	1041420528	9	64	1
2025-07-08 08:06:17.571+00	193	telegraf	1126982881	9	70	1
2025-07-08 08:29:12.15+00	193	telegraf	978202981	9	140	1
2025-07-08 08:29:13.333+00	193	telegraf	1041420528	8	143	1
2025-07-08 08:29:13.612+00	193	telegraf	1126982881	7	146	1
2025-07-08 08:30:54.686+00	193	telegraf	677224097	9	160	1
2025-07-08 08:49:52.492+00	193	telegraf	978202981	8	214	1
2025-07-08 08:49:51.885+00	193	telegraf	1126982881	7	217	1
2025-07-08 09:02:31.516+00	193	telegraf	978202981	7	251	1
2025-07-08 09:02:30.888+00	193	telegraf	1126982881	9	254	1
2025-07-09 09:24:12.863+00	193	telegraf	978202981	4	8	1
2025-07-09 09:44:52.905+00	193	telegraf	1126982881	4	38	1
2025-07-09 09:48:55.886+00	193	telegraf	978202981	3	44	1
2025-07-09 10:11:53.979+00	193	telegraf	978202981	3	71	1
2025-07-09 10:15:28.127+00	193	telegraf	1041420528	4	85	1
2025-07-09 10:15:29.082+00	193	telegraf	1126982881	3	88	1
2025-07-09 10:18:29.007+00	193	telegraf	978202981	4	93	1
2025-07-09 10:19:46.135+00	193	telegraf	1041420528	4	100	1
2025-07-09 10:26:04.172+00	193	telegraf	1041420528	4	109	1
2025-07-09 10:26:10.04+00	193	telegraf	978202981	4	113	1
2025-07-09 10:26:43.125+00	193	telegraf	1126982881	4	116	1
2025-07-09 10:27:53.17+00	193	telegraf	1041420528	3	122	1
2025-07-09 10:48:34.246+00	193	telegraf	1126982881	6	195	1
2025-07-09 10:50:49.153+00	193	telegraf	978202981	5	202	1
2025-07-09 10:50:50.27+00	193	telegraf	1126982881	5	205	1
2025-07-09 13:35:05.04+00	193	telegraf	978202981	3	562	1
2025-07-09 13:35:06.041+00	193	telegraf	1126982881	3	565	1
2025-07-09 13:44:31.463+00	193	telegraf	1041420528	3	580	1
2025-07-09 13:44:32.072+00	193	telegraf	1126982881	3	582	1
2025-07-09 13:51:03.096+00	193	telegraf	1126982881	3	589	1
2025-07-09 13:56:18.361+00	193	telegraf	978202981	3	3	1
\.


--
-- Data for Name: _hyper_4_18_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_18_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-07-10 07:26:06.279+00	193	telegraf	1041420528	1	21	1
2025-07-10 07:26:12.821+00	193	telegraf	978202981	3	25	1
2025-07-10 07:26:06.604+00	193	telegraf	1126982881	3	28	1
2025-07-10 07:27:50.853+00	193	telegraf	978202981	3	39	1
2025-07-10 07:30:08.631+00	193	telegraf	1126982881	3	61	1
2025-07-10 07:48:27.399+00	193	telegraf	1041420528	3	76	1
2025-07-10 07:49:59.401+00	193	telegraf	1041420528	3	80	1
2025-07-10 08:02:22.46+00	193	telegraf	1041420528	3	95	1
2025-07-10 08:05:29.049+00	193	telegraf	978202981	3	100	1
2025-07-10 08:05:27.812+00	193	telegraf	1126982881	3	103	1
2025-07-10 08:36:07.954+00	193	telegraf	1126982881	3	125	1
2025-07-10 08:37:12.303+00	193	telegraf	978202981	3	131	1
2025-07-10 08:37:11.604+00	193	telegraf	1041420528	2	135	1
2025-07-10 08:37:11.961+00	193	telegraf	1126982881	2	136	1
2025-07-10 08:39:48.612+00	193	telegraf	1041420528	3	145	1
2025-07-10 09:01:53.705+00	193	telegraf	1041420528	3	167	1
2025-07-10 09:49:41.638+00	193	telegraf	978202981	3	200	1
2025-07-10 14:47:54.406+00	193	telegraf	1041420528	3	392	1
2025-07-10 14:59:07.312+00	193	telegraf	978202981	3	400	1
2025-07-10 14:59:06.457+00	193	telegraf	1041420528	2	403	1
2025-07-10 16:19:16.698+00	193	telegraf	1126982881	3	461	1
2025-07-11 06:51:30.53+00	193	telegraf	1041420528	3	2	1
2025-07-11 07:48:42.973+00	193	telegraf	1126982881	3	44	1
2025-07-11 07:48:43.845+00	193	telegraf	1041420528	3	47	1
2025-07-11 07:52:59.853+00	193	telegraf	1041420528	3	53	1
2025-07-11 09:23:07.454+00	193	telegraf	978202981	3	120	1
2025-07-12 05:51:11.396+00	193	telegraf	1126982881	3	10	1
2025-07-13 13:00:34.134+00	193	telegraf	1126982881	3	1185	1
2025-07-13 13:06:35.691+00	193	telegraf	978202981	3	1191	1
2025-07-15 08:57:42.662+00	193	telegraf	1126982881	3	2825	1
\.


--
-- Data for Name: _hyper_4_3_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_3_chunk ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
2025-06-28 12:28:12.201+00	193	\N	1041420528	3	64	0.9
2025-06-28 12:28:25.152+00	193	\N	1126982881	3	67	0.9
2025-06-28 12:28:27.003+00	193	\N	978202981	3	70	0.9
2025-06-28 12:38:02.198+00	193	\N	1126982881	3	86	0.9
2025-06-28 13:36:54.285+00	193	\N	978202981	2	130	0.9
2025-06-28 13:36:54.489+00	193	\N	1126982881	3	133	0.9
2025-06-28 14:17:31.667+00	193	\N	978202981	3	166	0.9
2025-06-28 14:17:39.22+00	193	\N	1041420528	3	169	0.9
2025-06-28 14:17:49.735+00	193	\N	1126982881	3	172	0.9
2025-06-28 16:10:46.277+00	193	\N	1126982881	3	241	0.9
2025-06-28 17:21:18.8+00	193	\N	978202981	2	291	0.9
2025-06-28 17:21:18.831+00	193	\N	1041420528	3	294	0.9
2025-06-28 17:22:07.726+00	193	\N	1126982881	3	299	0.9
2025-06-28 17:25:04.841+00	193	\N	1041420528	3	306	0.9
2025-06-28 17:45:59.925+00	193	\N	978202981	3	318	0.9
2025-06-28 18:04:57.928+00	193	\N	1126982881	3	333	0.9
2025-06-28 18:24:16.217+00	193	\N	978202981	3	352	0.9
2025-06-30 16:04:05.934+00	193	\N	978202981	3	820	0.9
2025-06-30 16:05:05.312+00	193	\N	1126982881	1	823	0.9
2025-06-30 19:33:56.482+00	193	\N	1126982881	3	986	0.9
2025-06-30 19:36:03+00	193	\N	978202981	3	994	0.9
2025-06-30 19:36:10.492+00	193	\N	1126982881	3	998	0.9
2025-06-30 19:51:47.575+00	193	\N	1126982881	3	1025	0.9
2025-06-30 19:52:07.092+00	193	\N	978202981	3	1028	0.9
2025-06-30 20:47:00.366+00	193	\N	978202981	3	1092	0.9
2025-07-01 05:45:48.536+00	193	\N	1126982881	3	1492	0.9
2025-07-01 20:04:14.717+00	193	\N	1126982881	1	2121	0.9
2025-07-01 20:22:46.803+00	193	\N	1126982881	3	2153	0.9
2025-07-01 20:30:18.863+00	193	\N	1126982881	3	2163	0.9
2025-07-01 21:26:04.212+00	193	\N	1126982881	2	2213	0.9
2025-07-01 21:38:35.269+00	193	\N	1126982881	2	2228	0.9
2025-07-02 07:04:59.34+00	193	\N	978202981	3	2656	0.9
2025-07-02 07:05:06.049+00	193	\N	1126982881	3	2659	0.9
2025-07-02 07:05:06.444+00	193	\N	1041420528	3	2662	0.9
2025-07-02 09:18:36.825+00	193	\N	1126982881	3	2756	0.9
2025-07-02 09:23:28.883+00	193	\N	1126982881	2	2767	0.9
2025-07-02 09:28:29.938+00	193	\N	1126982881	3	2780	0.9
2025-07-02 09:30:22.964+00	193	\N	1126982881	3	2789	0.9
2025-07-02 09:40:58.097+00	193	\N	1126982881	2	2808	0.9
2025-07-02 09:43:12.12+00	193	\N	1126982881	1	2819	0.9
2025-07-02 09:48:25.153+00	193	\N	1126982881	1	2837	0.9
2025-07-02 09:50:08.172+00	193	\N	1126982881	2	2843	0.9
2025-07-02 09:55:46.199+00	193	\N	1126982881	2	2860	0.9
2025-07-02 10:02:43.249+00	193	\N	1126982881	3	2872	0.9
2025-07-02 10:14:10.341+00	193	\N	1126982881	1	2896	0.9
2025-07-02 10:35:26.442+00	193	\N	1126982881	1	2923	0.9
2025-07-02 10:42:34.489+00	193	\N	1126982881	1	2931	0.9
2025-07-02 11:42:11.894+00	193	\N	1126982881	1	2975	0.9
2025-07-02 11:43:39.905+00	193	\N	1126982881	3	2981	0.9
2025-07-02 11:45:40.922+00	193	\N	1126982881	2	2988	0.9
2025-07-02 11:47:04.936+00	193	\N	1126982881	3	2995	0.9
2025-07-02 11:57:22.981+00	193	\N	1126982881	2	3007	0.9
2025-07-02 12:19:16.069+00	193	\N	1126982881	3	3030	0.9
2025-07-02 13:24:56.377+00	193	\N	1126982881	2	3080	0.9
2025-07-02 13:54:25.551+00	193	\N	1126982881	3	3108	0.9
2025-07-02 14:00:26.586+00	193	\N	1126982881	3	3123	0.9
2025-07-02 14:02:41.606+00	193	\N	1126982881	1	3128	0.9
2025-07-02 15:37:44.295+00	193	\N	1126982881	3	3206	0.9
2025-07-02 15:41:25.338+00	193	\N	1126982881	3	3214	0.9
2025-07-02 15:45:51.375+00	193	\N	1126982881	3	3224	0.9
2025-07-02 15:48:09.393+00	193	\N	1126982881	2	3229	0.9
2025-07-02 15:52:35.44+00	193	\N	1126982881	3	3236	0.9
2025-07-02 15:54:41.462+00	193	\N	1126982881	3	3242	0.9
2025-07-02 16:00:02.492+00	193	\N	1126982881	3	3251	0.9
2025-07-02 16:08:42.599+00	193	\N	1126982881	3	3261	0.9
2025-07-02 16:09:51.609+00	193	\N	1126982881	3	3265	0.9
2025-07-02 16:12:57.628+00	193	\N	1126982881	3	3269	0.9
2025-07-02 16:23:31.661+00	193	\N	1126982881	3	3277	0.9
2025-07-02 16:46:07.783+00	193	\N	1126982881	3	3296	0.9
2025-07-02 16:57:55.819+00	193	\N	1126982881	3	3307	0.9
2025-07-02 17:00:45.834+00	193	\N	1126982881	3	3312	0.9
2025-07-02 17:24:03.941+00	193	\N	1126982881	3	3328	0.9
2025-07-02 17:25:29.944+00	193	\N	1126982881	3	3334	0.9
2025-07-02 19:26:19.629+00	193	\N	1126982881	3	3412	0.9
2025-07-02 22:38:04.702+00	193	\N	1126982881	3	3550	0.9
2025-07-02 23:18:35.936+00	193	\N	1126982881	3	3579	0.9
\.


--
-- Data for Name: _hyper_5_14_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_14_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-07-03 15:53:05.373+00	192	\N	1126982881	1897240282	-56	8	4271	0.9
2025-07-03 15:53:05.373+00	192	\N	1126982881	1041420528	-86	4	4271	0.9
2025-07-03 15:53:42.057+00	192	\N	978202981	1897240282	-72	8	4274	0.9
2025-07-03 15:53:42.057+00	192	\N	978202981	1041420528	-76	4	4274	0.9
2025-07-03 15:53:45.191+00	192	\N	1041420528	978202981	-75	4	4278	0.9
2025-07-03 15:53:45.191+00	192	\N	1041420528	1126982881	-84	4	4278	0.9
2025-07-03 18:28:12.386+00	192	\N	1126982881	1897240282	-48	8	4387	0.9
2025-07-03 18:28:12.386+00	192	\N	1126982881	978202981	-81	4	4387	0.9
2025-07-03 18:30:47.397+00	192	\N	1126982881	1897240282	-55	8	4393	0.9
2025-07-03 18:30:47.397+00	192	\N	1126982881	1041420528	-78	4	4393	0.9
2025-07-03 18:30:47.397+00	192	\N	1126982881	978202981	-85	4	4393	0.9
2025-07-03 18:35:07.435+00	192	\N	1126982881	1897240282	-38	8	4402	0.9
2025-07-03 18:35:07.435+00	192	\N	1126982881	1041420528	-79	4	4402	0.9
2025-07-03 18:52:39.632+00	192	\N	1126982881	1897240282	-46	8	4421	0.9
2025-07-03 18:52:39.632+00	192	\N	1126982881	1041420528	-81	4	4421	0.9
2025-07-03 19:08:15.681+00	192	\N	1126982881	1897240282	-43	8	4433	0.9
2025-07-03 19:08:15.681+00	192	\N	1126982881	1041420528	-82	4	4433	0.9
2025-07-03 19:27:37.751+00	192	\N	1126982881	1897240282	-41	8	4448	0.9
2025-07-03 19:27:37.751+00	192	\N	1126982881	978202981	-90	4	4448	0.9
2025-07-03 19:33:04.774+00	192	\N	1126982881	1897240282	-45	8	4453	0.9
2025-07-03 19:33:04.774+00	192	\N	1126982881	1041420528	-76	4	4453	0.9
2025-07-03 19:35:54.792+00	192	\N	1126982881	1897240282	-46	8	4461	0.9
2025-07-03 19:35:54.792+00	192	\N	1126982881	1041420528	-75	4	4461	0.9
2025-07-03 20:34:40.063+00	192	\N	1126982881	1897240282	-46	8	4505	0.9
2025-07-03 20:34:40.063+00	192	\N	1126982881	1041420528	-83	4	4505	0.9
2025-07-03 20:34:40.063+00	192	\N	1126982881	978202981	-84	4	4505	0.9
2025-07-03 20:38:39.08+00	192	\N	1126982881	1897240282	-47	8	4513	0.9
2025-07-03 20:38:39.08+00	192	\N	1126982881	1041420528	-73	4	4513	0.9
2025-07-03 20:43:21.116+00	192	\N	1126982881	1897240282	-47	8	4519	0.9
2025-07-03 20:43:21.116+00	192	\N	1126982881	1041420528	-74	4	4519	0.9
2025-07-03 21:02:58.251+00	192	\N	1126982881	1897240282	-38	8	4537	0.9
2025-07-03 21:02:58.251+00	192	\N	1126982881	1041420528	-81	4	4537	0.9
2025-07-03 21:09:45.312+00	192	\N	1126982881	1897240282	-49	8	4545	0.9
2025-07-03 21:09:45.312+00	192	\N	1126982881	1041420528	-81	4	4545	0.9
2025-07-03 21:09:45.312+00	192	\N	1126982881	978202981	-88	4	4545	0.9
2025-07-03 21:10:58.328+00	192	\N	1126982881	1897240282	-35	8	4549	0.9
2025-07-03 21:10:58.328+00	192	\N	1126982881	978202981	-88	4	4549	0.9
2025-07-03 21:19:17.467+00	192	\N	1126982881	1897240282	-44	8	4562	0.9
2025-07-03 21:19:17.467+00	192	\N	1126982881	1041420528	-79	4	4562	0.9
2025-07-03 21:19:17.467+00	192	\N	1126982881	978202981	-89	4	4562	0.9
2025-07-03 21:20:19.468+00	192	\N	1126982881	1897240282	-39	8	4565	0.9
2025-07-03 21:20:19.468+00	192	\N	1126982881	1041420528	-86	4	4565	0.9
2025-07-03 21:20:19.468+00	192	\N	1126982881	978202981	-86	4	4565	0.9
2025-07-03 21:22:12.477+00	192	\N	1126982881	1897240282	-47	8	4571	0.9
2025-07-03 21:22:12.477+00	192	\N	1126982881	1041420528	-89	4	4571	0.9
2025-07-03 21:30:16.506+00	192	\N	1126982881	1897240282	-50	8	4578	0.9
2025-07-03 21:30:16.506+00	192	\N	1126982881	978202981	-86	4	4578	0.9
2025-07-03 21:30:16.506+00	192	\N	1126982881	1041420528	-90	4	4578	0.9
2025-07-03 21:36:38.529+00	192	\N	1126982881	1897240282	-47	8	4586	0.9
2025-07-03 21:36:38.529+00	192	\N	1126982881	978202981	-79	4	4586	0.9
2025-07-03 21:36:38.529+00	192	\N	1126982881	1041420528	-82	4	4586	0.9
2025-07-03 21:54:30.604+00	192	\N	1126982881	1897240282	-52	8	4603	0.9
2025-07-03 21:54:30.604+00	192	\N	1126982881	1041420528	-76	4	4603	0.9
2025-07-03 21:54:30.604+00	192	\N	1126982881	978202981	-80	4	4603	0.9
2025-07-03 21:55:31.602+00	192	\N	1126982881	1897240282	-49	8	4606	0.9
2025-07-03 21:55:31.602+00	192	\N	1126982881	1041420528	-74	4	4606	0.9
2025-07-03 21:55:31.602+00	192	\N	1126982881	978202981	-85	4	4606	0.9
2025-07-03 21:56:37.603+00	192	\N	1126982881	1897240282	-41	8	4610	0.9
2025-07-03 22:16:43.69+00	192	\N	1126982881	1897240282	-49	8	4625	0.9
2025-07-03 22:16:43.69+00	192	\N	1126982881	1041420528	-82	4	4625	0.9
2025-07-03 22:21:58.732+00	192	\N	1126982881	1897240282	-52	8	4636	0.9
2025-07-03 22:21:58.732+00	192	\N	1126982881	1041420528	-82	4	4636	0.9
2025-07-03 22:21:58.732+00	192	\N	1126982881	978202981	-86	4	4636	0.9
2025-07-03 22:23:53.741+00	192	\N	1126982881	1897240282	-52	8	4646	0.9
2025-07-03 22:23:53.741+00	192	\N	1126982881	1041420528	-84	4	4646	0.9
2025-07-03 22:29:21.779+00	192	\N	1126982881	1897240282	-64	8	4654	0.9
2025-07-03 22:29:21.779+00	192	\N	1126982881	1041420528	-86	4	4654	0.9
2025-07-03 22:29:21.779+00	192	\N	1126982881	978202981	-90	4	4654	0.9
2025-07-03 22:33:51.821+00	192	\N	1126982881	1897240282	-61	8	4665	0.9
2025-07-03 22:33:51.821+00	192	\N	1126982881	1041420528	-88	4	4665	0.9
2025-07-03 22:33:51.821+00	192	\N	1126982881	978202981	-90	4	4665	0.9
2025-07-03 22:36:32.823+00	192	\N	1126982881	1897240282	-44	8	4672	0.9
2025-07-03 22:36:32.823+00	192	\N	1126982881	1041420528	-80	4	4672	0.9
2025-07-03 22:54:59.904+00	192	\N	1126982881	1897240282	-52	8	4693	0.9
2025-07-03 22:54:59.904+00	192	\N	1126982881	978202981	-88	4	4693	0.9
2025-07-03 22:54:59.904+00	192	\N	1126982881	1041420528	-89	4	4693	0.9
2025-07-03 22:57:44.934+00	192	\N	1126982881	1897240282	-44	8	4697	0.9
2025-07-03 22:57:44.934+00	192	\N	1126982881	1041420528	-82	4	4697	0.9
2025-07-03 23:04:32.985+00	192	\N	1126982881	1897240282	-42	8	4704	0.9
2025-07-03 23:04:32.985+00	192	\N	1126982881	1041420528	-80	4	4704	0.9
2025-07-03 23:11:45.023+00	192	\N	1126982881	1897240282	-44	8	4711	0.9
2025-07-03 23:11:45.023+00	192	\N	1126982881	1041420528	-82	4	4711	0.9
2025-07-03 23:17:12.067+00	192	\N	1126982881	1897240282	-40	8	4720	0.9
2025-07-03 23:17:12.067+00	192	\N	1126982881	1041420528	-81	4	4720	0.9
2025-07-03 23:18:51.074+00	192	\N	1126982881	1897240282	-39	8	4725	0.9
2025-07-03 23:22:54.114+00	192	\N	1126982881	1897240282	-49	8	4737	0.9
2025-07-03 23:22:54.114+00	192	\N	1126982881	978202981	-85	4	4737	0.9
2025-07-03 23:22:54.114+00	192	\N	1126982881	1041420528	-92	4	4737	0.9
2025-07-03 23:24:11.142+00	192	\N	1126982881	1897240282	-57	8	4743	0.9
2025-07-03 23:24:11.142+00	192	\N	1126982881	1041420528	-79	4	4743	0.9
2025-07-03 23:24:11.142+00	192	\N	1126982881	978202981	-83	4	4743	0.9
2025-07-03 23:26:07.172+00	192	\N	1126982881	1897240282	-52	8	4751	0.9
2025-07-03 23:26:07.172+00	192	\N	1126982881	1041420528	-80	4	4751	0.9
2025-07-03 23:26:07.172+00	192	\N	1126982881	978202981	-84	4	4751	0.9
2025-07-03 23:34:54.237+00	192	\N	1126982881	1897240282	-41	8	4767	0.9
2025-07-03 23:34:54.237+00	192	\N	1126982881	1041420528	-83	4	4767	0.9
2025-07-03 23:39:07.265+00	192	\N	1126982881	1897240282	-56	8	4777	0.9
2025-07-03 23:39:07.265+00	192	\N	1126982881	1041420528	-82	4	4777	0.9
2025-07-03 23:43:20.29+00	192	\N	1126982881	1897240282	-56	8	4785	0.9
2025-07-03 23:43:20.29+00	192	\N	1126982881	1041420528	-83	4	4785	0.9
2025-07-03 23:49:55.328+00	192	\N	1126982881	1897240282	-38	8	4798	0.9
2025-07-03 23:49:55.328+00	192	\N	1126982881	1041420528	-84	4	4798	0.9
2025-07-03 23:53:08.347+00	192	\N	1126982881	1897240282	-38	8	4809	0.9
2025-07-03 23:53:08.347+00	192	\N	1126982881	1041420528	-78	4	4809	0.9
2025-07-04 05:27:22.249+00	192	\N	978202981	1897240282	-63	8	5038	0.9
2025-07-04 05:27:22.249+00	192	\N	978202981	1041420528	-89	4	5038	0.9
2025-07-04 09:52:19.43+00	192	\N	1041420528	1897240282	-69	8	5234	0.9
2025-07-04 09:52:19.43+00	192	\N	1041420528	1126982881	-79	4	5234	0.9
2025-07-04 09:52:19.43+00	192	\N	1041420528	978202981	-89	4	5234	0.9
2025-07-04 09:52:36.074+00	192	\N	978202981	1897240282	-62	8	5237	0.9
2025-07-04 09:52:36.074+00	192	\N	978202981	1126982881	-80	4	5237	0.9
2025-07-04 09:52:36.074+00	192	\N	978202981	1041420528	-90	4	5237	0.9
2025-07-04 09:58:20.687+00	192	\N	1126982881	1897240282	-52	8	5247	0.9
2025-07-04 09:58:20.687+00	192	\N	1126982881	1041420528	-68	4	5247	0.9
2025-07-04 09:58:20.687+00	192	\N	1126982881	978202981	-87	4	5247	0.9
2025-07-04 09:59:27.688+00	192	\N	1126982881	1897240282	-44	8	5252	0.9
2025-07-04 09:59:27.688+00	192	\N	1126982881	978202981	-73	4	5252	0.9
2025-07-04 09:59:27.688+00	192	\N	1126982881	1041420528	-86	4	5252	0.9
2025-07-04 10:03:26.704+00	192	\N	1126982881	1897240282	-41	8	5260	0.9
2025-07-04 10:03:26.704+00	192	\N	1126982881	978202981	-80	4	5260	0.9
2025-07-04 10:03:26.704+00	192	\N	1126982881	1041420528	-80	4	5260	0.9
2025-07-04 10:13:03.776+00	192	\N	1126982881	1897240282	-42	8	5282	0.9
2025-07-04 10:13:03.776+00	192	\N	1126982881	1041420528	-81	4	5282	0.9
2025-07-04 11:02:46.069+00	192	\N	1126982881	1897240282	-50	8	5333	0.9
2025-07-04 11:02:46.069+00	192	\N	1126982881	1041420528	-73	4	5333	0.9
2025-07-04 11:09:06.118+00	192	\N	1126982881	1897240282	-75	8	5346	0.9
2025-07-04 11:09:06.118+00	192	\N	1126982881	1041420528	-87	4	5346	0.9
2025-07-04 11:11:11.124+00	192	\N	1126982881	1897240282	-77	8	5352	0.9
2025-07-04 11:11:11.124+00	192	\N	1126982881	1041420528	-91	4	5352	0.9
2025-07-04 11:12:57.142+00	192	\N	1126982881	1897240282	-42	8	5362	0.9
2025-07-04 11:12:57.142+00	192	\N	1126982881	978202981	-77	4	5362	0.9
2025-07-04 11:12:57.142+00	192	\N	1126982881	1041420528	-91	4	5362	0.9
2025-07-04 11:14:06.158+00	192	\N	1126982881	1897240282	-41	8	5368	0.9
2025-07-04 11:14:06.158+00	192	\N	1126982881	978202981	-77	4	5368	0.9
2025-07-04 11:14:06.158+00	192	\N	1126982881	1041420528	-87	4	5368	0.9
2025-07-04 11:15:47.171+00	192	\N	1126982881	1897240282	-43	8	5374	0.9
2025-07-04 11:15:47.171+00	192	\N	1126982881	978202981	-76	4	5374	0.9
2025-07-04 11:15:47.171+00	192	\N	1126982881	1041420528	-82	4	5374	0.9
2025-07-04 11:18:20.212+00	192	\N	1126982881	1897240282	-36	8	5379	0.9
2025-07-04 11:18:20.212+00	192	\N	1126982881	978202981	-80	4	5379	0.9
2025-07-04 11:18:20.212+00	192	\N	1126982881	1041420528	-85	4	5379	0.9
2025-07-04 11:22:05.236+00	192	\N	1126982881	1897240282	-48	8	5386	0.9
2025-07-04 11:22:05.236+00	192	\N	1126982881	1041420528	-76	4	5386	0.9
2025-07-04 11:22:05.236+00	192	\N	1126982881	978202981	-88	4	5386	0.9
2025-07-04 13:22:09.774+00	192	\N	1126982881	1897240282	-42	8	5475	0.9
2025-07-04 13:22:09.774+00	192	\N	1126982881	978202981	-82	4	5475	0.9
2025-07-04 13:22:09.774+00	192	\N	1126982881	1041420528	-87	4	5475	0.9
2025-07-04 13:26:22.81+00	192	\N	1126982881	1897240282	-46	8	5487	0.9
2025-07-04 13:26:22.81+00	192	\N	1126982881	1041420528	-61	4	5487	0.9
2025-07-04 13:26:26.688+00	192	\N	1041420528	1897240282	-57	8	5490	0.9
2025-07-04 13:26:26.688+00	192	\N	1041420528	1126982881	-66	4	5490	0.9
2025-07-04 13:26:26.688+00	192	\N	1041420528	978202981	-82	4	5490	0.9
2025-07-04 13:43:04.925+00	192	\N	1126982881	1897240282	-36	8	5518	0.9
2025-07-04 13:43:04.925+00	192	\N	1126982881	1041420528	-54	4	5518	0.9
2025-07-04 13:43:04.925+00	192	\N	1126982881	978202981	-83	4	5518	0.9
2025-07-04 13:57:14.083+00	192	\N	1126982881	1897240282	-38	8	5539	0.9
2025-07-04 13:57:14.083+00	192	\N	1126982881	1041420528	-55	4	5539	0.9
2025-07-04 13:57:14.083+00	192	\N	1126982881	978202981	-79	4	5539	0.9
2025-07-04 13:58:45.095+00	192	\N	1126982881	1897240282	-36	8	5546	0.9
2025-07-04 13:58:45.095+00	192	\N	1126982881	1041420528	-55	4	5546	0.9
2025-07-04 13:58:45.095+00	192	\N	1126982881	978202981	-82	4	5546	0.9
2025-07-04 14:00:51.115+00	192	\N	1126982881	1897240282	-38	8	5553	0.9
2025-07-04 14:00:51.115+00	192	\N	1126982881	1041420528	-59	4	5553	0.9
2025-07-04 14:00:51.115+00	192	\N	1126982881	978202981	-81	4	5553	0.9
2025-07-04 14:02:36.121+00	192	\N	1126982881	1897240282	-27	8	5559	0.9
2025-07-04 14:02:36.121+00	192	\N	1126982881	1041420528	-58	4	5559	0.9
2025-07-04 14:02:36.121+00	192	\N	1126982881	978202981	-73	4	5559	0.9
2025-07-04 14:06:46.137+00	192	\N	1126982881	1897240282	-49	8	5569	0.9
2025-07-04 14:06:46.137+00	192	\N	1126982881	1041420528	-53	4	5569	0.9
2025-07-04 14:06:46.137+00	192	\N	1126982881	978202981	-82	4	5569	0.9
2025-07-04 14:08:12.15+00	192	\N	1126982881	1897240282	-44	8	5573	0.9
2025-07-04 14:08:12.15+00	192	\N	1126982881	1041420528	-58	4	5573	0.9
2025-07-04 14:40:00.264+00	192	\N	1126982881	1897240282	-40	8	5599	0.9
2025-07-04 14:40:00.264+00	192	\N	1126982881	1041420528	-57	4	5599	0.9
2025-07-04 14:40:00.264+00	192	\N	1126982881	978202981	-89	4	5599	0.9
2025-07-04 14:43:57.293+00	192	\N	1126982881	1897240282	-53	8	5610	0.9
2025-07-04 14:43:57.293+00	192	\N	1126982881	1041420528	-62	4	5610	0.9
2025-07-04 14:43:57.293+00	192	\N	1126982881	978202981	-87	4	5610	0.9
2025-07-04 14:49:46.322+00	192	\N	1126982881	1897240282	-34	8	5617	0.9
2025-07-04 14:49:46.322+00	192	\N	1126982881	1041420528	-50	4	5617	0.9
2025-07-04 14:49:46.322+00	192	\N	1126982881	978202981	-78	4	5617	0.9
2025-07-04 14:50:57.312+00	192	\N	1126982881	1897240282	-39	8	5621	0.9
2025-07-04 14:50:57.312+00	192	\N	1126982881	1041420528	-62	4	5621	0.9
2025-07-04 15:19:53.499+00	192	\N	1126982881	1897240282	-46	8	5666	0.9
2025-07-04 15:19:53.499+00	192	\N	1126982881	1041420528	-58	4	5666	0.9
2025-07-04 15:19:53.499+00	192	\N	1126982881	978202981	-87	4	5666	0.9
2025-07-04 15:21:41.519+00	192	\N	1126982881	1897240282	-41	8	5676	0.9
2025-07-04 15:21:41.519+00	192	\N	1126982881	1041420528	-54	4	5676	0.9
2025-07-04 15:21:41.519+00	192	\N	1126982881	978202981	-77	4	5676	0.9
2025-07-04 15:23:41.528+00	192	\N	1126982881	1897240282	-38	8	5684	0.9
2025-07-04 15:23:41.528+00	192	\N	1126982881	1041420528	-52	4	5684	0.9
2025-07-04 15:25:07.539+00	192	\N	1126982881	1897240282	-31	8	5692	0.9
2025-07-04 15:25:07.539+00	192	\N	1126982881	1041420528	-52	4	5692	0.9
2025-07-04 15:25:07.539+00	192	\N	1126982881	978202981	-81	4	5692	0.9
2025-07-04 15:26:17.227+00	192	\N	1041420528	1897240282	-26	8	5697	0.9
2025-07-04 15:26:17.227+00	192	\N	1041420528	1126982881	-29	4	5697	0.9
2025-07-04 15:26:17.227+00	192	\N	1041420528	978202981	-74	4	5697	0.9
2025-07-04 18:15:41.205+00	192	telegraf	1041420528	1126982881	-30	4	6089	1
2025-07-04 18:15:41.205+00	192	telegraf	1041420528	1897240282	-42	8	6089	1
2025-07-04 18:15:41.205+00	192	telegraf	1041420528	978202981	-81	4	6089	1
2025-07-04 18:15:46.77+00	192	telegraf	1126982881	1041420528	-30	4	6092	1
2025-07-04 18:15:46.77+00	192	telegraf	1126982881	1897240282	-50	8	6092	1
2025-07-04 18:15:46.77+00	192	telegraf	1126982881	978202981	-82	4	6092	1
2025-07-04 18:18:18.784+00	192	telegraf	1126982881	1041420528	-32	4	6103	1
2025-07-04 18:18:18.784+00	192	telegraf	1126982881	1897240282	-40	8	6103	1
2025-07-04 18:18:18.784+00	192	telegraf	1126982881	978202981	-78	4	6103	1
2025-07-04 18:18:19.231+00	192	telegraf	1041420528	1126982881	-29	4	6106	1
2025-07-04 18:18:19.231+00	192	telegraf	1041420528	1897240282	-38	8	6106	1
2025-07-04 18:18:19.231+00	192	telegraf	1041420528	978202981	-75	4	6106	1
2025-07-04 18:33:17.841+00	192	telegraf	1126982881	1041420528	-35	4	6120	1
2025-07-04 18:33:17.841+00	192	telegraf	1126982881	1897240282	-39	8	6120	1
2025-07-04 18:33:17.841+00	192	telegraf	1126982881	978202981	-79	4	6120	1
2025-07-04 19:39:22.215+00	192	telegraf	1126982881	1897240282	-47	8	6202	1
2025-07-04 19:39:22.215+00	192	telegraf	1126982881	1041420528	-49	4	6202	1
2025-07-04 19:39:22.215+00	192	telegraf	1126982881	978202981	-86	4	6202	1
2025-07-04 20:25:00.623+00	192	telegraf	1126982881	1041420528	-25	4	6294	1
2025-07-04 20:25:00.623+00	192	telegraf	1126982881	1897240282	-35	8	6294	1
2025-07-04 20:25:00.623+00	192	telegraf	1126982881	978202981	-55	4	6294	1
2025-07-04 20:25:09.42+00	192	telegraf	978202981	1897240282	-48	8	6297	1
2025-07-04 20:25:09.42+00	192	telegraf	978202981	1126982881	-56	4	6297	1
2025-07-04 20:25:09.867+00	192	telegraf	1041420528	1126982881	-24	4	6300	1
2025-07-04 20:25:09.867+00	192	telegraf	1041420528	1897240282	-34	8	6300	1
2025-07-04 20:25:09.867+00	192	telegraf	1041420528	978202981	-63	4	6300	1
2025-07-04 20:37:10.697+00	192	telegraf	1126982881	1041420528	-26	4	6324	1
2025-07-04 20:37:10.697+00	192	telegraf	1126982881	1897240282	-54	8	6324	1
2025-07-04 20:37:10.697+00	192	telegraf	1126982881	978202981	-59	4	6324	1
2025-07-04 20:44:06.763+00	192	telegraf	1126982881	1041420528	-23	4	6340	1
2025-07-04 20:44:06.763+00	192	telegraf	1126982881	1897240282	-40	8	6340	1
2025-07-04 20:44:06.763+00	192	telegraf	1126982881	978202981	-55	4	6340	1
2025-07-04 20:44:07.045+00	192	telegraf	1041420528	1126982881	-22	4	6343	1
2025-07-04 20:44:07.045+00	192	telegraf	1041420528	1897240282	-35	8	6343	1
2025-07-04 20:44:07.045+00	192	telegraf	1041420528	978202981	-58	4	6343	1
2025-07-04 22:04:31.213+00	192	telegraf	1126982881	1041420528	-23	4	6451	1
2025-07-04 22:04:31.213+00	192	telegraf	1126982881	1897240282	-38	8	6451	1
2025-07-04 22:04:31.213+00	192	telegraf	1126982881	978202981	-56	4	6451	1
2025-07-05 07:25:49.74+00	192	telegraf	978202981	1041420528	-19	4	6904	1
2025-07-05 07:25:49.74+00	192	telegraf	978202981	1897240282	-42	8	6904	1
2025-07-05 07:25:50.159+00	192	telegraf	1126982881	978202981	-25	4	6907	1
2025-07-05 07:25:50.159+00	192	telegraf	1126982881	1897240282	-36	8	6907	1
2025-07-05 07:25:50.159+00	192	telegraf	1126982881	1041420528	-39	4	6907	1
2025-07-05 07:25:52.106+00	192	telegraf	1041420528	978202981	-18	4	6910	1
2025-07-05 07:25:52.106+00	192	telegraf	1041420528	1126982881	-36	4	6910	1
2025-07-05 07:25:52.106+00	192	telegraf	1041420528	1897240282	-38	8	6910	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	1523842139	-16	4	118	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	1070166865	-33	8	118	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	527134251	-50	4	118	1
2025-07-07 09:06:40.893+00	192	telegraf	840973111	1222203606	-87	4	118	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	840973111	-15	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	1070166865	-41	8	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	527134251	-45	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	1222203606	-86	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	207892874	-89	4	121	1
2025-07-07 09:06:41.862+00	192	telegraf	1523842139	46389462	-90	4	121	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	1070166865	-26	8	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	1523842139	-45	4	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	840973111	-50	4	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	487229944	-83	8	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	207892874	-87	4	126	1
2025-07-07 09:07:30.052+00	192	telegraf	527134251	46389462	-88	4	126	1
2025-07-07 09:08:03.429+00	192	telegraf	1041420528	1126982881	-30	4	5	1
2025-07-07 09:08:03.429+00	192	telegraf	1041420528	1897240282	-43	8	5	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	978202981	-29	4	9	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	1126982881	-31	4	9	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	1897240282	-36	8	9	1
2025-07-07 09:06:05.403+00	192	telegraf	1041420528	1347381015	-87	8	9	1
2025-07-07 09:08:03.546+00	192	telegraf	978202981	1126982881	-19	4	18	1
2025-07-07 09:08:03.546+00	192	telegraf	978202981	1041420528	-30	4	18	1
2025-07-07 09:08:03.546+00	192	telegraf	978202981	1897240282	-43	8	18	1
2025-07-07 09:08:06.015+00	192	telegraf	1126982881	978202981	-18	4	21	1
2025-07-07 09:08:06.015+00	192	telegraf	1126982881	1041420528	-32	4	21	1
2025-07-07 09:08:06.015+00	192	telegraf	1126982881	1897240282	-56	8	21	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	1523842139	-23	4	133	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	1070166865	-39	8	133	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	487229944	-75	8	133	1
2025-07-07 09:10:48.012+00	192	telegraf	527134251	46389462	-85	4	133	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	527134251	-15	4	137	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	1070166865	-30	8	137	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	487229944	-83	8	137	1
2025-07-07 09:10:48.846+00	192	telegraf	840973111	207892874	-90	4	137	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	527134251	-23	4	139	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	1070166865	-34	8	139	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	487229944	-79	8	139	1
2025-07-07 09:10:48.827+00	192	telegraf	1523842139	46389462	-90	4	139	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	840973111	-15	4	164	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	1070166865	-41	8	164	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	487229944	-85	8	164	1
2025-07-07 09:17:04.035+00	192	telegraf	1523842139	207892874	-86	4	164	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	1523842139	-15	4	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	1070166865	-39	8	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	487229944	-78	8	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	207892874	-87	4	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	46389462	-88	4	167	1
2025-07-07 09:17:06.022+00	192	telegraf	840973111	1222203606	-90	4	167	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	1523842139	-18	4	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	840973111	-26	4	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	1070166865	-36	8	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	487229944	-80	8	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	1222203606	-85	4	170	1
2025-07-07 09:17:04.194+00	192	telegraf	527134251	46389462	-89	4	170	1
2025-07-07 09:18:06.087+00	192	telegraf	1126982881	978202981	-18	4	26	1
2025-07-07 09:18:06.087+00	192	telegraf	1126982881	1041420528	-32	4	26	1
2025-07-07 09:18:06.087+00	192	telegraf	1126982881	1897240282	-46	8	26	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	1070166865	-23	8	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	840973111	-23	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	527134251	-73	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	1222203606	-85	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	207892874	-86	4	177	1
2025-07-07 09:18:52.067+00	192	telegraf	1523842139	487229944	-88	8	177	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	978202981	-18	4	32	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	1041420528	-32	4	32	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	1897240282	-44	8	32	1
2025-07-07 09:19:13.104+00	192	telegraf	1126982881	305822513	-89	4	32	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	1070166865	-43	8	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	840973111	-56	4	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	487229944	-80	8	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	1222203606	-82	4	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	46389462	-83	4	186	1
2025-07-07 09:19:08.219+00	192	telegraf	527134251	207892874	-88	4	186	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	1070166865	-44	8	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	1523842139	-53	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	840973111	-75	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	487229944	-79	8	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	46389462	-84	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	207892874	-87	4	198	1
2025-07-07 09:25:43.121+00	192	telegraf	527134251	1222203606	-88	4	198	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	1070166865	-40	8	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	1523842139	-54	4	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	527134251	-76	4	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	207892874	-86	4	212	1
2025-07-07 09:27:54.953+00	192	telegraf	840973111	46389462	-91	4	212	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	1070166865	-24	8	226	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	527134251	-37	4	226	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	840973111	-42	4	226	1
2025-07-07 09:30:32.013+00	192	telegraf	1523842139	46389462	-88	4	226	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	1070166865	-32	8	229	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	1523842139	-42	4	229	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	487229944	-83	8	229	1
2025-07-07 09:31:07.056+00	192	telegraf	840973111	1222203606	-90	4	229	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	840973111	-19	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	1070166865	-24	8	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	1523842139	-37	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	487229944	-77	8	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	1222203606	-82	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	46389462	-82	4	232	1
2025-07-07 09:31:07.192+00	192	telegraf	527134251	207892874	-85	4	232	1
2025-07-07 09:31:57.189+00	192	telegraf	1126982881	978202981	-18	4	42	1
2025-07-07 09:31:57.189+00	192	telegraf	1126982881	1041420528	-33	4	42	1
2025-07-07 09:31:57.189+00	192	telegraf	1126982881	1897240282	-46	8	42	1
2025-07-07 09:31:56.726+00	192	telegraf	1041420528	978202981	-28	4	45	1
2025-07-07 09:31:56.726+00	192	telegraf	1041420528	1897240282	-34	8	45	1
2025-07-07 09:32:27.721+00	192	telegraf	978202981	1126982881	-18	4	49	1
2025-07-07 09:32:27.721+00	192	telegraf	978202981	1041420528	-29	4	49	1
2025-07-07 09:32:27.721+00	192	telegraf	978202981	1897240282	-44	8	49	1
2025-07-07 09:33:22.198+00	192	telegraf	1126982881	978202981	-18	4	53	1
2025-07-07 09:33:22.198+00	192	telegraf	1126982881	1041420528	-31	4	53	1
2025-07-07 09:33:22.198+00	192	telegraf	1126982881	1897240282	-48	8	53	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	1070166865	-27	8	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	1523842139	-39	4	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	840973111	-68	4	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	487229944	-77	8	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	1222203606	-89	4	242	1
2025-07-07 09:34:43.153+00	192	telegraf	527134251	207892874	-89	4	242	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	1070166865	-63	8	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	487229944	-70	8	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	1523842139	-70	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	527134251	-73	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	207892874	-84	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	1222203606	-84	4	245	1
2025-07-07 09:34:55.022+00	192	telegraf	840973111	46389462	-86	4	245	1
2025-07-07 09:36:18.759+00	192	telegraf	1041420528	978202981	-29	4	58	1
2025-07-07 09:36:18.759+00	192	telegraf	1041420528	1126982881	-31	4	58	1
2025-07-07 09:36:18.759+00	192	telegraf	1041420528	1897240282	-34	8	58	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	840973111	-21	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	1523842139	-26	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	1070166865	-56	8	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	487229944	-72	8	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	207892874	-73	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	1222203606	-79	4	256	1
2025-07-07 09:37:45.215+00	192	telegraf	527134251	46389462	-85	4	256	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1228548482	-63	8	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1523842139	-65	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	641896457	-69	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	840973111	-69	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	517905260	-70	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1746858542	-70	8	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1407940150	-72	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	1070166865	-73	8	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	23439212	-75	4	9	1
2025-07-07 09:49:26.27+00	192	telegraf	527134251	671686261	-76	4	9	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	978202981	-29	4	74	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	1126982881	-32	4	74	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	1897240282	-37	8	74	1
2025-07-07 09:54:17.796+00	192	telegraf	1041420528	3839865	-89	4	74	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	1126982881	-17	4	82	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	1041420528	-29	4	82	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	1897240282	-48	8	82	1
2025-07-07 09:55:51.746+00	192	telegraf	978202981	3839865	-86	4	82	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1070166865	-59	8	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1228548482	-63	8	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	641896457	-67	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1746858542	-68	8	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1407940150	-74	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	974018563	-75	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1575827679	-77	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	1225681541	-78	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	517905260	-78	4	30	1
2025-07-07 09:57:26.372+00	192	telegraf	527134251	2045592530	-78	4	30	1
2025-07-07 09:58:34.726+00	192	telegraf	978202981	1126982881	-17	4	87	1
2025-07-07 09:58:34.726+00	192	telegraf	978202981	1041420528	-30	4	87	1
2025-07-07 09:58:34.726+00	192	telegraf	978202981	1897240282	-48	8	87	1
2025-07-07 09:59:07.739+00	192	telegraf	1041420528	978202981	-29	4	90	1
2025-07-07 09:59:07.739+00	192	telegraf	1041420528	1126982881	-30	4	90	1
2025-07-07 09:59:07.739+00	192	telegraf	1041420528	1897240282	-35	8	90	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	1126982881	-18	4	99	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	1041420528	-29	4	99	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	1897240282	-46	8	99	1
2025-07-07 10:07:43.742+00	192	telegraf	978202981	305822513	-86	4	99	1
2025-07-07 10:07:58.172+00	192	telegraf	1126982881	978202981	-17	4	103	1
2025-07-07 10:07:58.172+00	192	telegraf	1126982881	1041420528	-32	4	103	1
2025-07-07 10:07:58.172+00	192	telegraf	1126982881	1897240282	-43	8	103	1
2025-07-07 10:07:57.771+00	192	telegraf	1041420528	978202981	-29	4	106	1
2025-07-07 10:07:57.771+00	192	telegraf	1041420528	1897240282	-33	8	106	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	1126982881	-17	4	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	1041420528	-28	4	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	1897240282	-45	8	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	3839865	-88	4	119	1
2025-07-07 10:19:01.018+00	192	telegraf	978202981	632461688	-89	4	119	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	978202981	-18	4	122	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	1041420528	-30	4	122	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	1897240282	-39	8	122	1
2025-07-07 10:19:02.423+00	192	telegraf	1126982881	3839865	-89	4	122	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	978202981	-20	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	1041420528	-27	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	1897240282	-35	8	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	3839865	-83	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	632461688	-88	4	6	1
2025-07-07 10:54:11.759+00	192	telegraf	1126982881	305822513	-91	4	6	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	978202981	-20	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	1126982881	-27	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	1897240282	-49	8	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	3839865	-85	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	632461688	-88	4	9	1
2025-07-07 10:54:11.09+00	192	telegraf	1041420528	305822513	-89	4	9	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	978202981	-19	4	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	1041420528	-27	4	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	1897240282	-35	8	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	3839865	-84	4	15	1
2025-07-07 10:56:50.749+00	192	telegraf	1126982881	305822513	-85	4	15	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	1126982881	-19	4	19	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	1041420528	-22	4	19	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	1897240282	-46	8	19	1
2025-07-07 10:57:29.193+00	192	telegraf	978202981	632461688	-84	4	19	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	978202981	-20	4	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	1126982881	-28	4	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	1897240282	-49	8	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	3839865	-79	4	22	1
2025-07-07 10:58:00.085+00	192	telegraf	1041420528	632461688	-85	4	22	1
2025-07-07 11:05:47.302+00	192	telegraf	978202981	1126982881	-18	4	33	1
2025-07-07 11:05:47.302+00	192	telegraf	978202981	1041420528	-21	4	33	1
2025-07-07 11:05:47.302+00	192	telegraf	978202981	1897240282	-45	8	33	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	978202981	-19	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	1126982881	-26	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	1897240282	-46	8	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	3839865	-78	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	632461688	-82	4	37	1
2025-07-07 11:06:46.133+00	192	telegraf	1041420528	305822513	-91	4	37	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	1126982881	-20	4	46	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	1041420528	-22	4	46	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	1897240282	-38	8	46	1
2025-07-07 11:09:13.31+00	192	telegraf	978202981	632461688	-82	4	46	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	978202981	-19	4	52	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	1897240282	-39	8	52	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	3839865	-81	4	52	1
2025-07-07 11:10:47.797+00	192	telegraf	1126982881	305822513	-85	4	52	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	978202981	-21	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	1126982881	-25	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	1897240282	-50	8	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	3839865	-80	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	632461688	-81	4	56	1
2025-07-07 11:10:50.156+00	192	telegraf	1041420528	305822513	-87	4	56	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	978202981	-21	4	78	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	1126982881	-25	4	78	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	1897240282	-55	8	78	1
2025-07-07 11:33:10.361+00	192	telegraf	1041420528	305822513	-82	4	78	1
2025-07-07 11:39:32.442+00	192	telegraf	978202981	1126982881	-19	4	83	1
2025-07-07 11:39:32.442+00	192	telegraf	978202981	1041420528	-20	4	83	1
2025-07-07 11:39:32.442+00	192	telegraf	978202981	1897240282	-46	8	83	1
2025-07-07 11:48:11.466+00	192	telegraf	978202981	1126982881	-19	4	102	1
2025-07-07 11:48:11.466+00	192	telegraf	978202981	1041420528	-23	4	102	1
2025-07-07 11:48:11.466+00	192	telegraf	978202981	1897240282	-58	8	102	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	978202981	-18	4	108	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	1041420528	-27	4	108	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	1897240282	-39	8	108	1
2025-07-07 11:51:41.993+00	192	telegraf	1126982881	3839865	-87	4	108	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	978202981	-21	4	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	1041420528	-25	4	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	1897240282	-38	8	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	305822513	-85	4	133	1
2025-07-07 12:07:12.047+00	192	telegraf	1126982881	3839865	-88	4	133	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	978202981	-21	4	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	1041420528	-26	4	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	1897240282	-39	8	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	3839865	-87	4	137	1
2025-07-07 12:08:23.051+00	192	telegraf	1126982881	305822513	-88	4	137	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	978202981	-20	4	151	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	1041420528	-25	4	151	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	1897240282	-39	8	151	1
2025-07-07 12:13:47.075+00	192	telegraf	1126982881	305822513	-87	4	151	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	978202981	-18	4	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	1041420528	-27	4	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	1897240282	-46	8	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	3839865	-83	4	158	1
2025-07-07 12:14:58.08+00	192	telegraf	1126982881	305822513	-85	4	158	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	3839865	-18	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	305822513	-24	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	1126982881	-84	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	1897240282	-84	8	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	1041420528	-85	4	187	1
2025-07-07 12:26:20.974+00	192	telegraf	632461688	978202981	-87	4	187	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	632461688	-18	4	188	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	305822513	-18	4	188	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	1126982881	-85	4	188	1
2025-07-07 12:26:22.395+00	192	telegraf	3839865	1897240282	-87	8	188	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	978202981	-18	4	191	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	1041420528	-27	4	191	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	1897240282	-40	8	191	1
2025-07-07 12:26:32.192+00	192	telegraf	1126982881	632461688	-89	4	191	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	978202981	-22	4	216	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	1126982881	-24	4	216	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	1897240282	-41	8	216	1
2025-07-07 12:40:18.699+00	192	telegraf	1041420528	305822513	-87	4	216	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	632461688	-25	4	230	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	1897240282	-85	8	230	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	978202981	-87	4	230	1
2025-07-07 12:46:26.483+00	192	telegraf	305822513	1126982881	-88	4	230	1
2025-07-07 12:46:26.507+00	192	telegraf	3839865	632461688	-18	4	233	1
2025-07-07 12:46:26.507+00	192	telegraf	3839865	305822513	-19	4	233	1
2025-07-07 12:46:26.507+00	192	telegraf	3839865	1897240282	-85	8	233	1
2025-07-07 12:57:09.754+00	192	telegraf	1041420528	978202981	-21	4	255	1
2025-07-07 12:57:09.754+00	192	telegraf	1041420528	1126982881	-22	4	255	1
2025-07-07 12:57:09.754+00	192	telegraf	1041420528	1897240282	-43	8	255	1
2025-07-07 13:01:06.294+00	192	telegraf	840973111	1523842139	-14	4	298	1
2025-07-07 13:01:06.294+00	192	telegraf	840973111	527134251	-15	4	298	1
2025-07-07 13:01:06.294+00	192	telegraf	840973111	791308911	-79	4	298	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	677224097	-25	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	333419537	-27	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	840973111	-76	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	1523842139	-81	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	3839865	-87	4	311	1
2025-07-07 13:01:52.644+00	192	telegraf	791308911	527134251	-87	4	311	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	840973111	-14	4	313	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	1523842139	-18	4	313	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	791308911	-82	4	313	1
2025-07-07 13:01:49.396+00	192	telegraf	527134251	333419537	-84	4	313	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	677224097	-25	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	333419537	-27	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	840973111	-78	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	3839865	-87	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	1523842139	-88	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	305822513	-90	4	327	1
2025-07-07 13:03:06.661+00	192	telegraf	791308911	632461688	-91	4	327	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	677224097	-21	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	791308911	-28	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	1523842139	-79	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	305822513	-83	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	840973111	-84	4	337	1
2025-07-07 13:03:42.986+00	192	telegraf	333419537	632461688	-84	4	337	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	333419537	-19	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	791308911	-25	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	527134251	-80	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	305822513	-85	4	342	1
2025-07-07 13:03:43.123+00	192	telegraf	677224097	632461688	-87	4	342	1
2025-07-07 13:03:53.294+00	192	telegraf	840973111	527134251	-15	4	345	1
2025-07-07 13:03:53.294+00	192	telegraf	840973111	1523842139	-15	4	345	1
2025-07-07 13:03:53.294+00	192	telegraf	840973111	791308911	-81	4	345	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	840973111	-15	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	1523842139	-18	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	677224097	-80	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	791308911	-83	4	348	1
2025-07-07 13:03:53.397+00	192	telegraf	527134251	333419537	-83	4	348	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	840973111	-14	4	352	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	527134251	-17	4	352	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	333419537	-82	4	352	1
2025-07-07 13:04:06.261+00	192	telegraf	1523842139	791308911	-86	4	352	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	840973111	-15	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	1523842139	-18	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	677224097	-80	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	333419537	-81	4	360	1
2025-07-07 13:05:30.409+00	192	telegraf	527134251	791308911	-84	4	360	1
2025-07-07 13:05:52.765+00	192	telegraf	1041420528	978202981	-21	4	363	1
2025-07-07 13:05:52.765+00	192	telegraf	1041420528	1126982881	-22	4	363	1
2025-07-07 13:05:52.765+00	192	telegraf	1041420528	1897240282	-38	8	363	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	677224097	-24	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	333419537	-27	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	840973111	-76	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	1523842139	-81	4	373	1
2025-07-07 13:07:01.676+00	192	telegraf	791308911	632461688	-89	4	373	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	978202981	-22	4	385	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	1126982881	-23	4	385	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	1897240282	-36	8	385	1
2025-07-07 13:09:21.784+00	192	telegraf	1041420528	305822513	-88	4	385	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	840973111	-15	4	392	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	1523842139	-17	4	392	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	677224097	-82	4	392	1
2025-07-07 13:09:54.433+00	192	telegraf	527134251	333419537	-84	4	392	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	1523842139	-15	4	424	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	791308911	-78	4	424	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	333419537	-81	4	424	1
2025-07-07 13:17:12.361+00	192	telegraf	840973111	677224097	-83	4	424	1
2025-07-07 13:17:12.292+00	192	telegraf	1523842139	333419537	-78	4	428	1
2025-07-07 13:17:12.292+00	192	telegraf	1523842139	791308911	-79	4	428	1
2025-07-07 13:17:12.292+00	192	telegraf	1523842139	677224097	-82	4	428	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	527134251	-15	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	1523842139	-15	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	791308911	-76	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	333419537	-87	4	441	1
2025-07-07 13:19:16.369+00	192	telegraf	840973111	677224097	-88	4	441	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	527134251	-19	4	449	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	791308911	-80	4	449	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	333419537	-82	4	449	1
2025-07-07 13:19:16.307+00	192	telegraf	1523842139	677224097	-86	4	449	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	840973111	-15	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	1523842139	-18	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	677224097	-81	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	333419537	-87	4	452	1
2025-07-07 13:19:57.456+00	192	telegraf	527134251	791308911	-90	4	452	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	1041420528	-23	4	459	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	1126982881	-25	4	459	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	1897240282	-60	8	459	1
2025-07-07 13:21:41.981+00	192	telegraf	978202981	3839865	-87	4	459	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	840973111	-15	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	1523842139	-18	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	791308911	-78	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	677224097	-78	4	463	1
2025-07-07 13:21:42.465+00	192	telegraf	527134251	333419537	-81	4	463	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	3839865	-18	4	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	632461688	-23	4	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	1126982881	-78	4	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	1897240282	-83	8	467	1
2025-07-07 13:22:38.615+00	192	telegraf	305822513	333419537	-85	4	467	1
2025-07-07 13:22:38.279+00	192	telegraf	632461688	3839865	-17	4	472	1
2025-07-07 13:22:38.279+00	192	telegraf	632461688	1897240282	-89	8	472	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	840973111	-14	4	493	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	527134251	-18	4	493	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	333419537	-80	4	493	1
2025-07-07 13:22:52.313+00	192	telegraf	1523842139	791308911	-84	4	493	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	632461688	-19	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	3839865	-24	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	1126982881	-77	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	1897240282	-78	8	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	1041420528	-87	4	501	1
2025-07-07 13:28:33.652+00	192	telegraf	305822513	791308911	-88	4	501	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	632461688	-20	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	3839865	-24	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	1126982881	-80	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	1897240282	-83	8	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	1041420528	-86	4	523	1
2025-07-07 13:33:14.67+00	192	telegraf	305822513	333419537	-90	4	523	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	632461688	-16	4	527	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	305822513	-24	4	527	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	791308911	-83	4	527	1
2025-07-07 13:33:14.711+00	192	telegraf	3839865	1897240282	-84	8	527	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	527134251	-19	4	528	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	791308911	-80	4	528	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	333419537	-83	4	528	1
2025-07-07 13:28:27.392+00	192	telegraf	1523842139	677224097	-88	4	528	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	632461688	-16	4	563	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	305822513	-24	4	563	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	1897240282	-87	8	563	1
2025-07-07 13:39:46.758+00	192	telegraf	3839865	978202981	-89	4	563	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	840973111	-15	4	566	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	1523842139	-18	4	566	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	677224097	-83	4	566	1
2025-07-07 13:28:26.666+00	192	telegraf	527134251	333419537	-87	4	566	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	527134251	-15	4	569	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	1523842139	-15	4	569	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	791308911	-78	4	569	1
2025-07-07 13:31:48.398+00	192	telegraf	840973111	333419537	-87	4	569	1
2025-07-07 13:28:27.42+00	192	telegraf	840973111	527134251	-15	4	574	1
2025-07-07 13:28:27.42+00	192	telegraf	840973111	1523842139	-15	4	574	1
2025-07-07 13:28:27.42+00	192	telegraf	840973111	791308911	-80	4	574	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	840973111	-14	4	583	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	527134251	-18	4	583	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	333419537	-86	4	583	1
2025-07-07 13:36:47.378+00	192	telegraf	1523842139	791308911	-87	4	583	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	677224097	-24	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	333419537	-27	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	840973111	-78	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	1523842139	-79	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	527134251	-79	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	632461688	-83	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	3839865	-85	4	592	1
2025-07-07 13:38:09.821+00	192	telegraf	791308911	305822513	-89	4	592	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	1523842139	-15	4	602	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	333419537	-77	4	602	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	791308911	-81	4	602	1
2025-07-07 13:37:59.417+00	192	telegraf	840973111	677224097	-84	4	602	1
2025-07-07 13:37:59.375+00	192	telegraf	1523842139	333419537	-80	4	607	1
2025-07-07 13:37:59.375+00	192	telegraf	1523842139	791308911	-81	4	607	1
2025-07-07 13:37:59.375+00	192	telegraf	1523842139	677224097	-83	4	607	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	333419537	-20	4	612	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	791308911	-25	4	612	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	527134251	-77	4	612	1
2025-07-07 13:38:40.267+00	192	telegraf	677224097	840973111	-79	4	612	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	632461688	-19	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	3839865	-24	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	1897240282	-77	8	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	1041420528	-83	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	978202981	-88	4	627	1
2025-07-07 13:42:58.712+00	192	telegraf	305822513	2048751136	-89	4	627	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	840973111	-21	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	1523842139	-33	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	677224097	-77	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	791308911	-78	4	629	1
2025-07-07 13:40:59.624+00	192	telegraf	527134251	333419537	-84	4	629	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	1523842139	-15	4	634	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	840973111	-19	4	634	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	677224097	-84	4	634	1
2025-07-07 13:42:13.631+00	192	telegraf	527134251	333419537	-85	4	634	1
2025-07-07 13:42:18.434+00	192	telegraf	840973111	1523842139	-16	4	640	1
2025-07-07 13:42:18.434+00	192	telegraf	840973111	791308911	-82	4	640	1
2025-07-07 13:42:18.434+00	192	telegraf	840973111	333419537	-84	4	640	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	527134251	-15	4	645	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	840973111	-15	4	645	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	791308911	-84	4	645	1
2025-07-07 13:42:45.406+00	192	telegraf	1523842139	677224097	-87	4	645	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	1523842139	-15	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	840973111	-19	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	677224097	-79	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	791308911	-87	4	657	1
2025-07-07 13:43:15.634+00	192	telegraf	527134251	333419537	-88	4	657	1
2025-07-07 13:43:20.441+00	192	telegraf	840973111	1523842139	-15	4	660	1
2025-07-07 13:43:20.441+00	192	telegraf	840973111	527134251	-20	4	660	1
2025-07-07 13:43:20.441+00	192	telegraf	840973111	791308911	-89	4	660	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	1523842139	-15	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	840973111	-19	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	677224097	-80	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	333419537	-84	4	673	1
2025-07-07 13:47:08.643+00	192	telegraf	527134251	791308911	-88	4	673	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	840973111	-15	4	677	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	527134251	-15	4	677	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	677224097	-84	4	677	1
2025-07-07 13:47:10.417+00	192	telegraf	1523842139	791308911	-89	4	677	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	1523842139	-15	4	687	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	527134251	-20	4	687	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	333419537	-82	4	687	1
2025-07-07 13:48:22.47+00	192	telegraf	840973111	791308911	-85	4	687	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	840973111	-15	4	689	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	527134251	-15	4	689	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	791308911	-84	4	689	1
2025-07-07 13:48:23.427+00	192	telegraf	1523842139	677224097	-87	4	689	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	1523842139	-15	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	840973111	-18	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	677224097	-80	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	333419537	-82	4	693	1
2025-07-07 13:48:36.652+00	192	telegraf	527134251	791308911	-83	4	693	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	677224097	-25	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	333419537	-27	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	840973111	-82	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	632461688	-85	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	1523842139	-85	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	527134251	-85	4	698	1
2025-07-07 13:48:57.855+00	192	telegraf	791308911	3839865	-86	4	698	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	677224097	-22	4	704	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	791308911	-27	4	704	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	840973111	-81	4	704	1
2025-07-07 13:49:14.234+00	192	telegraf	333419537	527134251	-83	4	704	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	1523842139	-16	4	711	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	527134251	-19	4	711	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	677224097	-83	4	711	1
2025-07-07 13:50:58.489+00	192	telegraf	840973111	791308911	-84	4	711	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	840973111	-15	4	714	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	527134251	-15	4	714	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	791308911	-84	4	714	1
2025-07-07 13:50:59.44+00	192	telegraf	1523842139	677224097	-86	4	714	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	1523842139	-15	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	840973111	-19	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	333419537	-80	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	791308911	-82	4	718	1
2025-07-07 13:51:29.66+00	192	telegraf	527134251	677224097	-82	4	718	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	840973111	-15	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	527134251	-15	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	791308911	-82	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	333419537	-87	4	726	1
2025-07-07 13:52:58.447+00	192	telegraf	1523842139	677224097	-89	4	726	1
2025-07-07 13:54:26.451+00	192	telegraf	1523842139	527134251	-15	4	743	1
2025-07-07 13:54:26.451+00	192	telegraf	1523842139	677224097	-81	4	743	1
2025-07-07 13:54:26.451+00	192	telegraf	1523842139	791308911	-84	4	743	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	1523842139	-16	4	744	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	527134251	-19	4	744	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	791308911	-85	4	744	1
2025-07-07 13:54:26.497+00	192	telegraf	840973111	677224097	-88	4	744	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	1523842139	-15	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	840973111	-19	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	791308911	-79	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	677224097	-80	4	751	1
2025-07-07 13:55:30.681+00	192	telegraf	527134251	333419537	-83	4	751	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	1523842139	-15	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	840973111	-19	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	677224097	-79	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	791308911	-80	4	762	1
2025-07-07 13:57:11.687+00	192	telegraf	527134251	333419537	-81	4	762	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	1523842139	-15	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	840973111	-19	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	677224097	-80	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	791308911	-82	4	779	1
2025-07-07 13:59:05.698+00	192	telegraf	527134251	333419537	-83	4	779	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	1041420528	-22	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	1126982881	-26	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	1897240282	-45	8	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	632461688	-84	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	3839865	-86	4	782	1
2025-07-07 13:59:27.171+00	192	telegraf	978202981	305822513	-87	4	782	1
2025-07-07 13:59:05.51+00	192	telegraf	840973111	1523842139	-15	4	791	1
2025-07-07 13:59:05.51+00	192	telegraf	840973111	333419537	-81	4	791	1
2025-07-07 13:59:05.51+00	192	telegraf	840973111	791308911	-81	4	791	1
2025-07-07 13:59:04.495+00	192	telegraf	1523842139	840973111	-15	4	792	1
2025-07-07 13:59:04.495+00	192	telegraf	1523842139	527134251	-15	4	792	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	1523842139	-20	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	840973111	-24	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	333419537	-76	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	791308911	-80	4	830	1
2025-07-07 14:05:39.741+00	192	telegraf	527134251	677224097	-86	4	830	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	840973111	-18	4	839	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	527134251	-19	4	839	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	333419537	-86	4	839	1
2025-07-07 14:08:35.554+00	192	telegraf	1523842139	677224097	-88	4	839	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	677224097	-20	4	858	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	791308911	-28	4	858	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	1523842139	-78	4	858	1
2025-07-07 14:11:21.319+00	192	telegraf	333419537	840973111	-80	4	858	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1041420528	-23	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1126982881	-26	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1897240282	-46	8	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	632461688	-84	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	305822513	-85	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	974018563	-88	4	877	1
2025-07-07 14:13:27.251+00	192	telegraf	978202981	1575827679	-91	4	877	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	1523842139	-15	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	840973111	-20	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	677224097	-81	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	333419537	-83	4	889	1
2025-07-07 14:12:25.766+00	192	telegraf	527134251	791308911	-89	4	889	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	1575827679	-19	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	974018563	-30	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	1746858542	-78	8	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	720958279	-81	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	23439212	-85	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	517905260	-88	4	902	1
2025-07-07 14:06:41.137+00	192	telegraf	2045592530	1072284024	-89	4	902	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	840973111	-15	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	527134251	-15	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	677224097	-78	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	791308911	-81	4	920	1
2025-07-07 14:12:24.569+00	192	telegraf	1523842139	333419537	-82	4	920	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	1523842139	-16	4	921	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	791308911	-83	4	921	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	677224097	-85	4	921	1
2025-07-07 14:12:25.591+00	192	telegraf	840973111	333419537	-87	4	921	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	3839865	-15	4	934	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	305822513	-20	4	934	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	1897240282	-78	8	934	1
2025-07-07 14:14:57.545+00	192	telegraf	632461688	978202981	-84	4	934	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	632461688	-17	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	305822513	-25	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	1897240282	-79	8	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	677224097	-85	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	978202981	-85	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	333419537	-87	4	935	1
2025-07-07 14:14:57.038+00	192	telegraf	3839865	791308911	-88	4	935	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	1523842139	-21	4	947	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	791308911	-72	4	947	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	333419537	-77	4	947	1
2025-07-07 14:15:14.611+00	192	telegraf	840973111	677224097	-78	4	947	1
2025-07-07 14:15:44.797+00	192	telegraf	1126982881	1041420528	-23	4	951	1
2025-07-07 14:15:44.797+00	192	telegraf	1126982881	1897240282	-37	8	951	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	1523842139	-22	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	527134251	-32	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	333419537	-75	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	791308911	-83	4	975	1
2025-07-07 14:19:02.629+00	192	telegraf	840973111	677224097	-83	4	975	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	1523842139	-31	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	840973111	-32	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	333419537	-75	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	791308911	-78	4	979	1
2025-07-07 14:19:01.798+00	192	telegraf	527134251	677224097	-87	4	979	1
2025-07-07 14:19:01.614+00	192	telegraf	1523842139	840973111	-22	4	982	1
2025-07-07 14:19:01.614+00	192	telegraf	1523842139	333419537	-79	4	982	1
2025-07-07 14:19:01.614+00	192	telegraf	1523842139	677224097	-87	4	982	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	1041420528	-22	4	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	1126982881	-26	4	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	1897240282	-50	8	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	3839865	-84	4	989	1
2025-07-07 14:20:34.293+00	192	telegraf	978202981	305822513	-85	4	989	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	1523842139	-31	4	994	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	840973111	-33	4	994	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	677224097	-88	4	994	1
2025-07-07 14:20:21.807+00	192	telegraf	527134251	333419537	-91	4	994	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	1523842139	-28	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	527134251	-34	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	333419537	-79	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	677224097	-79	4	995	1
2025-07-07 14:20:20.635+00	192	telegraf	840973111	791308911	-85	4	995	1
2025-07-07 14:20:20.615+00	192	telegraf	1523842139	527134251	-31	4	998	1
2025-07-07 14:20:20.615+00	192	telegraf	1523842139	677224097	-80	4	998	1
2025-07-07 14:20:20.615+00	192	telegraf	1523842139	333419537	-85	4	998	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	333419537	-18	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	791308911	-22	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	840973111	-81	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	3839865	-85	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	527134251	-87	4	1007	1
2025-07-07 14:22:03.507+00	192	telegraf	677224097	1523842139	-87	4	1007	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	632461688	-20	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	3839865	-27	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	1897240282	-77	8	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	978202981	-85	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	791308911	-86	4	1030	1
2025-07-07 14:28:05.143+00	192	telegraf	305822513	1126982881	-90	4	1030	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	3839865	-15	4	1033	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	305822513	-20	4	1033	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	1897240282	-80	8	1033	1
2025-07-07 14:28:04.621+00	192	telegraf	632461688	978202981	-82	4	1033	1
2025-07-07 14:33:36.283+00	192	telegraf	1041420528	978202981	-22	4	1057	1
2025-07-07 14:33:36.283+00	192	telegraf	1041420528	1126982881	-22	4	1057	1
2025-07-07 14:33:36.283+00	192	telegraf	1041420528	1897240282	-36	8	1057	1
2025-07-07 14:36:12.547+00	192	telegraf	677224097	333419537	-18	4	1077	1
2025-07-07 14:36:12.547+00	192	telegraf	677224097	791308911	-23	4	1077	1
2025-07-07 14:36:12.547+00	192	telegraf	677224097	3839865	-89	4	1077	1
2025-07-07 14:38:31.3+00	192	telegraf	1041420528	978202981	-22	4	1083	1
2025-07-07 14:38:31.3+00	192	telegraf	1041420528	1126982881	-23	4	1083	1
2025-07-07 14:38:31.3+00	192	telegraf	1041420528	1897240282	-42	8	1083	1
2025-07-07 14:39:34.167+00	192	telegraf	791308911	305822513	-85	4	1091	1
2025-07-07 14:39:34.167+00	192	telegraf	791308911	3839865	-86	4	1091	1
2025-07-07 14:39:34.57+00	192	telegraf	677224097	333419537	-18	4	1096	1
2025-07-07 14:39:34.57+00	192	telegraf	677224097	791308911	-21	4	1096	1
2025-07-07 14:39:34.57+00	192	telegraf	677224097	3839865	-87	4	1096	1
2025-07-07 14:39:34.403+00	192	telegraf	333419537	791308911	-27	4	1097	1
2025-07-07 14:39:34.403+00	192	telegraf	333419537	3839865	-84	4	1097	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	3839865	-30	4	1103	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	1897240282	-71	8	1103	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	1126982881	-86	4	1103	1
2025-07-07 14:40:52.204+00	192	telegraf	305822513	791308911	-87	4	1103	1
2025-07-07 14:40:52.163+00	192	telegraf	3839865	791308911	-84	4	1106	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	3839865	-15	4	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	305822513	-22	4	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	1897240282	-73	8	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	791308911	-82	4	1110	1
2025-07-07 14:40:52.67+00	192	telegraf	632461688	978202981	-85	4	1110	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	677224097	-21	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	333419537	-26	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	632461688	-84	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	305822513	-85	4	1131	1
2025-07-07 14:44:00.18+00	192	telegraf	791308911	3839865	-87	4	1131	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	333419537	-18	4	1134	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	791308911	-22	4	1134	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	3839865	-88	4	1134	1
2025-07-07 14:43:58.586+00	192	telegraf	677224097	305822513	-89	4	1134	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	305822513	-26	4	1156	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	1897240282	-73	8	1156	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	1126982881	-80	4	1156	1
2025-07-07 14:47:30.707+00	192	telegraf	632461688	978202981	-83	4	1156	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	791308911	-17	4	1172	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	333419537	-22	4	1172	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	305822513	-82	4	1172	1
2025-07-07 14:46:29.596+00	192	telegraf	677224097	3839865	-84	4	1172	1
2025-07-07 14:46:42.5+00	192	telegraf	333419537	677224097	-24	4	1175	1
2025-07-07 14:46:42.5+00	192	telegraf	333419537	791308911	-31	4	1175	1
2025-07-07 14:46:42.5+00	192	telegraf	333419537	3839865	-86	4	1175	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	23439212	-26	4	1185	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	517905260	-32	4	1185	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	1925402088	-85	8	1185	1
2025-07-07 14:50:21.168+00	192	telegraf	720958279	3839865	-86	4	1185	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	720958279	-24	4	1188	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	517905260	-36	4	1188	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	1746858542	-85	8	1188	1
2025-07-07 14:50:20.193+00	192	telegraf	23439212	3839865	-87	4	1188	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	978202981	-16	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	1126982881	-26	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	1897240282	-34	8	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	677224097	-68	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	527134251	-69	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	1523842139	-71	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	333419537	-73	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	791308911	-76	4	65	1
2025-07-08 08:06:02.255+00	192	telegraf	1041420528	840973111	-80	4	65	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	978202981	-24	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	1041420528	-26	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	1897240282	-36	8	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	1523842139	-68	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	840973111	-71	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	791308911	-77	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	527134251	-80	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	333419537	-86	4	71	1
2025-07-08 08:06:17.574+00	192	telegraf	1126982881	677224097	-91	4	71	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1041420528	-15	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1126982881	-29	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1897240282	-38	8	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	677224097	-70	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	840973111	-73	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	333419537	-74	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	791308911	-74	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	527134251	-76	4	141	1
2025-07-08 08:29:12.153+00	192	telegraf	978202981	1523842139	-83	4	141	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	978202981	-15	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	1897240282	-48	8	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	333419537	-74	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	527134251	-77	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	840973111	-78	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	791308911	-79	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	1523842139	-84	4	144	1
2025-07-08 08:29:13.327+00	192	telegraf	1041420528	677224097	-88	4	144	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	1041420528	-29	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	978202981	-30	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	1897240282	-52	8	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	333419537	-73	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	791308911	-77	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	1523842139	-77	4	147	1
2025-07-08 08:29:13.613+00	192	telegraf	1126982881	840973111	-83	4	147	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	791308911	-19	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	333419537	-23	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1523842139	-49	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	527134251	-54	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	840973111	-57	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1897240282	-67	8	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	978202981	-70	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1126982881	-80	4	161	1
2025-07-08 08:30:54.688+00	192	telegraf	677224097	1041420528	-83	4	161	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1041420528	-15	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1126982881	-29	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1897240282	-38	8	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	677224097	-69	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	333419537	-71	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	840973111	-71	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	527134251	-77	4	215	1
2025-07-08 08:49:52.499+00	192	telegraf	978202981	1523842139	-83	4	215	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	1041420528	-30	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	1897240282	-47	8	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	1523842139	-69	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	333419537	-74	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	527134251	-74	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	791308911	-80	4	218	1
2025-07-08 08:49:51.894+00	192	telegraf	1126982881	677224097	-82	4	218	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1041420528	-14	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1126982881	-28	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1897240282	-38	8	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	677224097	-70	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	791308911	-72	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	527134251	-74	4	252	1
2025-07-08 09:02:31.518+00	192	telegraf	978202981	1523842139	-78	4	252	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	978202981	-29	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	1041420528	-30	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	1897240282	-34	8	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	791308911	-72	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	333419537	-72	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	527134251	-72	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	1523842139	-74	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	840973111	-79	4	255	1
2025-07-08 09:02:30.89+00	192	telegraf	1126982881	677224097	-82	4	255	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1041420528	-15	4	9	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1126982881	-16	4	9	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1897240282	-42	8	9	1
2025-07-09 09:24:12.862+00	192	telegraf	978202981	1222203606	-88	4	9	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	978202981	-14	4	39	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	1897240282	-32	8	39	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	1041420528	-34	4	39	1
2025-07-09 09:44:52.912+00	192	telegraf	1126982881	1222203606	-89	4	39	1
2025-07-09 09:48:55.884+00	192	telegraf	978202981	1041420528	-16	4	45	1
2025-07-09 09:48:55.884+00	192	telegraf	978202981	1897240282	-45	8	45	1
2025-07-09 09:48:55.884+00	192	telegraf	978202981	1222203606	-88	4	45	1
2025-07-09 10:11:53.97+00	192	telegraf	978202981	1041420528	-15	4	72	1
2025-07-09 10:11:53.97+00	192	telegraf	978202981	1126982881	-15	4	72	1
2025-07-09 10:11:53.97+00	192	telegraf	978202981	1897240282	-45	8	72	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	978202981	-14	4	86	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	1126982881	-32	4	86	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	1897240282	-45	8	86	1
2025-07-09 10:15:28.126+00	192	telegraf	1041420528	1222203606	-85	4	86	1
2025-07-09 10:15:29.08+00	192	telegraf	1126982881	978202981	-15	4	89	1
2025-07-09 10:15:29.08+00	192	telegraf	1126982881	1897240282	-33	8	89	1
2025-07-09 10:15:29.08+00	192	telegraf	1126982881	1041420528	-34	4	89	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1126982881	-15	4	94	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1041420528	-15	4	94	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1897240282	-43	8	94	1
2025-07-09 10:18:29.014+00	192	telegraf	978202981	1222203606	-86	4	94	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	978202981	-15	4	101	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	1126982881	-33	4	101	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	1897240282	-45	8	101	1
2025-07-09 10:19:46.142+00	192	telegraf	1041420528	46389462	-89	4	101	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	978202981	-16	4	110	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	1126982881	-26	4	110	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	1897240282	-35	8	110	1
2025-07-09 10:26:04.163+00	192	telegraf	1041420528	46389462	-83	4	110	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	1041420528	-16	4	114	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	1126982881	-28	4	114	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	1897240282	-37	8	114	1
2025-07-09 10:26:10.039+00	192	telegraf	978202981	46389462	-87	4	114	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	1041420528	-27	4	117	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	978202981	-29	4	117	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	1897240282	-33	8	117	1
2025-07-09 10:26:43.124+00	192	telegraf	1126982881	207892874	-88	4	117	1
2025-07-09 10:27:53.177+00	192	telegraf	1041420528	978202981	-15	4	123	1
2025-07-09 10:27:53.177+00	192	telegraf	1041420528	1126982881	-26	4	123	1
2025-07-09 10:27:53.177+00	192	telegraf	1041420528	1897240282	-35	8	123	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	1041420528	-24	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	978202981	-25	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	1897240282	-44	8	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	46389462	-85	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	1222203606	-85	4	196	1
2025-07-09 10:48:34.254+00	192	telegraf	1126982881	207892874	-86	4	196	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1041420528	-21	4	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1126982881	-24	4	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1897240282	-68	8	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	207892874	-83	4	203	1
2025-07-09 10:50:49.145+00	192	telegraf	978202981	1222203606	-84	4	203	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	978202981	-25	4	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	1897240282	-46	8	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	46389462	-82	4	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	207892874	-88	4	206	1
2025-07-09 10:50:50.281+00	192	telegraf	1126982881	1222203606	-92	4	206	1
2025-07-09 13:35:05.038+00	192	telegraf	978202981	1041420528	-19	4	563	1
2025-07-09 13:35:05.038+00	192	telegraf	978202981	1126982881	-21	4	563	1
2025-07-09 13:35:05.038+00	192	telegraf	978202981	1897240282	-38	8	563	1
2025-07-09 13:35:06.04+00	192	telegraf	1126982881	978202981	-20	4	566	1
2025-07-09 13:35:06.04+00	192	telegraf	1126982881	1041420528	-28	4	566	1
2025-07-09 13:35:06.04+00	192	telegraf	1126982881	1897240282	-42	8	566	1
2025-07-09 13:44:32.071+00	192	telegraf	1126982881	978202981	-19	4	583	1
2025-07-09 13:44:32.071+00	192	telegraf	1126982881	1041420528	-31	4	583	1
2025-07-09 13:44:32.071+00	192	telegraf	1126982881	1897240282	-38	8	583	1
2025-07-09 13:44:31.464+00	192	telegraf	1041420528	978202981	-17	4	584	1
2025-07-09 13:44:31.464+00	192	telegraf	1041420528	1897240282	-47	8	584	1
2025-07-09 13:44:31.464+00	192	telegraf	1041420528	671686261	-87	4	584	1
2025-07-09 13:51:03.095+00	192	telegraf	1126982881	978202981	-19	4	590	1
2025-07-09 13:51:03.095+00	192	telegraf	1126982881	1041420528	-28	4	590	1
2025-07-09 13:51:03.095+00	192	telegraf	1126982881	1897240282	-37	8	590	1
2025-07-09 13:56:18.367+00	192	telegraf	978202981	1126982881	-15	4	4	1
2025-07-09 13:56:18.367+00	192	telegraf	978202981	1041420528	-27	4	4	1
2025-07-09 13:56:18.367+00	192	telegraf	978202981	1897240282	-71	8	4	1
\.


--
-- Data for Name: _hyper_5_19_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_19_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-07-10 07:26:06.267+00	192	telegraf	1041420528	1897240282	-61	8	22	1
2025-07-10 07:26:12.827+00	192	telegraf	978202981	1041420528	-50	4	26	1
2025-07-10 07:26:12.827+00	192	telegraf	978202981	1126982881	-51	4	26	1
2025-07-10 07:26:12.827+00	192	telegraf	978202981	1897240282	-59	8	26	1
2025-07-10 07:26:06.602+00	192	telegraf	1126982881	1041420528	-30	4	29	1
2025-07-10 07:26:06.602+00	192	telegraf	1126982881	978202981	-56	4	29	1
2025-07-10 07:26:06.602+00	192	telegraf	1126982881	1897240282	-65	8	29	1
2025-07-10 07:27:50.852+00	192	telegraf	978202981	1041420528	-14	4	40	1
2025-07-10 07:27:50.852+00	192	telegraf	978202981	1126982881	-27	4	40	1
2025-07-10 07:27:50.852+00	192	telegraf	978202981	1897240282	-55	8	40	1
2025-07-10 07:30:08.621+00	192	telegraf	1126982881	978202981	-28	4	62	1
2025-07-10 07:30:08.621+00	192	telegraf	1126982881	1041420528	-28	4	62	1
2025-07-10 07:30:08.621+00	192	telegraf	1126982881	1897240282	-68	8	62	1
2025-07-10 07:48:27.405+00	192	telegraf	1041420528	978202981	-14	4	77	1
2025-07-10 07:48:27.405+00	192	telegraf	1041420528	1126982881	-28	4	77	1
2025-07-10 07:48:27.405+00	192	telegraf	1041420528	1897240282	-69	8	77	1
2025-07-10 07:49:59.407+00	192	telegraf	1041420528	978202981	-14	4	81	1
2025-07-10 07:49:59.407+00	192	telegraf	1041420528	1126982881	-28	4	81	1
2025-07-10 07:49:59.407+00	192	telegraf	1041420528	1897240282	-69	8	81	1
2025-07-10 08:02:22.466+00	192	telegraf	1041420528	978202981	-15	4	96	1
2025-07-10 08:02:22.466+00	192	telegraf	1041420528	1126982881	-28	4	96	1
2025-07-10 08:02:22.466+00	192	telegraf	1041420528	1897240282	-72	8	96	1
2025-07-10 08:05:29.053+00	192	telegraf	978202981	1041420528	-16	4	101	1
2025-07-10 08:05:29.053+00	192	telegraf	978202981	1126982881	-27	4	101	1
2025-07-10 08:05:29.053+00	192	telegraf	978202981	1897240282	-53	8	101	1
2025-07-10 08:05:27.802+00	192	telegraf	1126982881	978202981	-26	4	104	1
2025-07-10 08:05:27.802+00	192	telegraf	1126982881	1041420528	-28	4	104	1
2025-07-10 08:05:27.802+00	192	telegraf	1126982881	1897240282	-65	8	104	1
2025-07-10 08:36:07.961+00	192	telegraf	1126982881	978202981	-27	4	126	1
2025-07-10 08:36:07.961+00	192	telegraf	1126982881	1041420528	-28	4	126	1
2025-07-10 08:36:07.961+00	192	telegraf	1126982881	1897240282	-62	8	126	1
2025-07-10 08:37:12.294+00	192	telegraf	978202981	1126982881	-15	4	132	1
2025-07-10 08:37:12.294+00	192	telegraf	978202981	1041420528	-33	4	132	1
2025-07-10 08:37:12.294+00	192	telegraf	978202981	1897240282	-55	8	132	1
2025-07-10 08:37:11.608+00	192	telegraf	1041420528	978202981	-31	4	137	1
2025-07-10 08:37:11.608+00	192	telegraf	1041420528	1897240282	-67	8	137	1
2025-07-10 08:37:11.972+00	192	telegraf	1126982881	1041420528	-30	4	138	1
2025-07-10 08:37:11.972+00	192	telegraf	1126982881	1897240282	-65	8	138	1
2025-07-10 08:39:48.618+00	192	telegraf	1041420528	1126982881	-29	4	146	1
2025-07-10 08:39:48.618+00	192	telegraf	1041420528	978202981	-33	4	146	1
2025-07-10 08:39:48.618+00	192	telegraf	1041420528	1897240282	-69	8	146	1
2025-07-10 09:01:53.704+00	192	telegraf	1041420528	1126982881	-29	4	168	1
2025-07-10 09:01:53.704+00	192	telegraf	1041420528	978202981	-32	4	168	1
2025-07-10 09:01:53.704+00	192	telegraf	1041420528	1897240282	-66	8	168	1
2025-07-10 09:49:41.636+00	192	telegraf	978202981	1126982881	-16	4	201	1
2025-07-10 09:49:41.636+00	192	telegraf	978202981	1041420528	-35	4	201	1
2025-07-10 09:49:41.636+00	192	telegraf	978202981	1897240282	-57	8	201	1
2025-07-10 14:47:54.404+00	192	telegraf	1041420528	1126982881	-29	4	393	1
2025-07-10 14:47:54.404+00	192	telegraf	1041420528	978202981	-33	4	393	1
2025-07-10 14:47:54.404+00	192	telegraf	1041420528	1897240282	-62	8	393	1
2025-07-10 14:59:07.302+00	192	telegraf	978202981	1126982881	-15	4	401	1
2025-07-10 14:59:07.302+00	192	telegraf	978202981	1041420528	-30	4	401	1
2025-07-10 14:59:07.302+00	192	telegraf	978202981	1897240282	-55	8	401	1
2025-07-10 14:59:06.47+00	192	telegraf	1041420528	1126982881	-31	4	404	1
2025-07-10 14:59:06.47+00	192	telegraf	1041420528	1897240282	-60	8	404	1
2025-07-10 16:19:16.709+00	192	telegraf	1126982881	978202981	-15	4	462	1
2025-07-10 16:19:16.709+00	192	telegraf	1126982881	1041420528	-30	4	462	1
2025-07-10 16:19:16.709+00	192	telegraf	1126982881	1897240282	-58	8	462	1
2025-07-11 06:51:30.529+00	192	telegraf	1041420528	978202981	-28	4	3	1
2025-07-11 06:51:30.529+00	192	telegraf	1041420528	1126982881	-28	4	3	1
2025-07-11 06:51:30.529+00	192	telegraf	1041420528	1897240282	-59	8	3	1
2025-07-11 07:48:42.971+00	192	telegraf	1126982881	978202981	-15	4	45	1
2025-07-11 07:48:42.971+00	192	telegraf	1126982881	1041420528	-30	4	45	1
2025-07-11 07:48:42.971+00	192	telegraf	1126982881	1897240282	-62	8	45	1
2025-07-11 07:48:43.851+00	192	telegraf	1041420528	978202981	-28	4	48	1
2025-07-11 07:48:43.851+00	192	telegraf	1041420528	1126982881	-30	4	48	1
2025-07-11 07:48:43.851+00	192	telegraf	1041420528	1897240282	-59	8	48	1
2025-07-11 07:52:59.867+00	192	telegraf	1041420528	978202981	-28	4	54	1
2025-07-11 07:52:59.867+00	192	telegraf	1041420528	1126982881	-29	4	54	1
2025-07-11 07:52:59.867+00	192	telegraf	1041420528	1897240282	-62	8	54	1
2025-07-11 09:23:07.461+00	192	telegraf	978202981	1126982881	-17	4	121	1
2025-07-11 09:23:07.461+00	192	telegraf	978202981	1041420528	-30	4	121	1
2025-07-11 09:23:07.461+00	192	telegraf	978202981	1897240282	-62	8	121	1
2025-07-12 05:51:11.402+00	192	telegraf	1126982881	1041420528	-26	4	11	1
2025-07-12 05:51:11.402+00	192	telegraf	1126982881	978202981	-30	4	11	1
2025-07-12 05:51:11.402+00	192	telegraf	1126982881	1897240282	-40	8	11	1
2025-07-13 13:00:34.133+00	192	telegraf	1126982881	978202981	-36	4	1186	1
2025-07-13 13:00:34.133+00	192	telegraf	1126982881	1041420528	-37	4	1186	1
2025-07-13 13:00:34.133+00	192	telegraf	1126982881	1897240282	-37	8	1186	1
2025-07-13 13:06:35.697+00	192	telegraf	978202981	1041420528	-23	4	1192	1
2025-07-13 13:06:35.697+00	192	telegraf	978202981	1126982881	-35	4	1192	1
2025-07-13 13:06:35.697+00	192	telegraf	978202981	1897240282	-43	8	1192	1
2025-07-15 08:57:42.66+00	192	telegraf	1126982881	978202981	-35	4	2826	1
2025-07-15 08:57:42.66+00	192	telegraf	1126982881	1897240282	-36	8	2826	1
2025-07-15 08:57:42.66+00	192	telegraf	1126982881	1041420528	-39	4	2826	1
\.


--
-- Data for Name: _hyper_5_4_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_4_chunk ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-06-28 12:28:12.207+00	192	\N	1041420528	978202981	-29	4	65	0.9
2025-06-28 12:28:12.207+00	192	\N	1041420528	1126982881	-46	4	65	0.9
2025-06-28 12:28:12.207+00	192	\N	1041420528	1897240282	-54	8	65	0.9
2025-06-28 12:28:25.15+00	192	\N	1126982881	1897240282	-33	8	68	0.9
2025-06-28 12:28:25.15+00	192	\N	1126982881	978202981	-40	4	68	0.9
2025-06-28 12:28:25.15+00	192	\N	1126982881	1041420528	-46	4	68	0.9
2025-06-28 12:28:27.001+00	192	\N	978202981	1041420528	-30	4	71	0.9
2025-06-28 12:28:27.001+00	192	\N	978202981	1897240282	-34	8	71	0.9
2025-06-28 12:28:27.001+00	192	\N	978202981	1126982881	-41	4	71	0.9
2025-06-28 12:38:02.212+00	192	\N	1126982881	1041420528	-45	4	87	0.9
2025-06-28 12:38:02.212+00	192	\N	1126982881	978202981	-49	4	87	0.9
2025-06-28 12:38:02.212+00	192	\N	1126982881	1897240282	-56	8	87	0.9
2025-06-28 13:36:54.276+00	192	\N	978202981	1041420528	-29	4	131	0.9
2025-06-28 13:36:54.276+00	192	\N	978202981	1897240282	-35	8	131	0.9
2025-06-28 13:36:54.487+00	192	\N	1126982881	1897240282	-34	8	134	0.9
2025-06-28 13:36:54.487+00	192	\N	1126982881	978202981	-35	4	134	0.9
2025-06-28 13:36:54.487+00	192	\N	1126982881	1041420528	-43	4	134	0.9
2025-06-28 14:17:31.666+00	192	\N	978202981	1126982881	-30	4	167	0.9
2025-06-28 14:17:31.666+00	192	\N	978202981	1897240282	-33	8	167	0.9
2025-06-28 14:17:31.666+00	192	\N	978202981	1041420528	-33	4	167	0.9
2025-06-28 14:17:39.219+00	192	\N	1041420528	978202981	-31	4	170	0.9
2025-06-28 14:17:39.219+00	192	\N	1041420528	1897240282	-44	8	170	0.9
2025-06-28 14:17:39.219+00	192	\N	1041420528	1126982881	-45	4	170	0.9
2025-06-28 14:17:49.725+00	192	\N	1126982881	1897240282	-34	8	173	0.9
2025-06-28 14:17:49.725+00	192	\N	1126982881	978202981	-38	4	173	0.9
2025-06-28 14:17:49.725+00	192	\N	1126982881	1041420528	-46	4	173	0.9
2025-06-28 16:10:46.267+00	192	\N	1126982881	978202981	-32	4	242	0.9
2025-06-28 16:10:46.267+00	192	\N	1126982881	1897240282	-33	8	242	0.9
2025-06-28 16:10:46.267+00	192	\N	1126982881	1041420528	-44	4	242	0.9
2025-06-28 17:21:18.806+00	192	\N	978202981	1126982881	-15	4	292	0.9
2025-06-28 17:21:18.806+00	192	\N	978202981	1897240282	-56	8	292	0.9
2025-06-28 17:21:18.829+00	192	\N	1041420528	1126982881	-16	4	295	0.9
2025-06-28 17:21:18.829+00	192	\N	1041420528	978202981	-18	4	295	0.9
2025-06-28 17:21:18.829+00	192	\N	1041420528	1897240282	-53	8	295	0.9
2025-06-28 17:22:07.733+00	192	\N	1126982881	978202981	-15	4	300	0.9
2025-06-28 17:22:07.733+00	192	\N	1126982881	1041420528	-16	4	300	0.9
2025-06-28 17:22:07.733+00	192	\N	1126982881	1897240282	-57	8	300	0.9
2025-06-28 17:25:04.855+00	192	\N	1041420528	1126982881	-16	4	307	0.9
2025-06-28 17:25:04.855+00	192	\N	1041420528	978202981	-18	4	307	0.9
2025-06-28 17:25:04.855+00	192	\N	1041420528	1897240282	-52	8	307	0.9
2025-06-28 17:45:59.923+00	192	\N	978202981	1126982881	-15	4	319	0.9
2025-06-28 17:45:59.923+00	192	\N	978202981	1041420528	-19	4	319	0.9
2025-06-28 17:45:59.923+00	192	\N	978202981	1897240282	-53	8	319	0.9
2025-06-28 18:04:57.934+00	192	\N	1126982881	978202981	-15	4	334	0.9
2025-06-28 18:04:57.934+00	192	\N	1126982881	1041420528	-18	4	334	0.9
2025-06-28 18:04:57.934+00	192	\N	1126982881	1897240282	-57	8	334	0.9
2025-06-28 18:24:16.207+00	192	\N	978202981	1126982881	-15	4	353	0.9
2025-06-28 18:24:16.207+00	192	\N	978202981	1041420528	-19	4	353	0.9
2025-06-28 18:24:16.207+00	192	\N	978202981	1897240282	-54	8	353	0.9
2025-06-30 16:04:05.933+00	192	\N	978202981	1897240282	-50	8	821	0.9
2025-06-30 16:04:05.933+00	192	\N	978202981	1041420528	-81	4	821	0.9
2025-06-30 16:04:05.933+00	192	\N	978202981	1126982881	-91	4	821	0.9
2025-06-30 16:05:05.301+00	192	\N	1126982881	1897240282	-67	8	824	0.9
2025-06-30 19:33:56.481+00	192	\N	1126982881	978202981	-36	4	987	0.9
2025-06-30 19:33:56.481+00	192	\N	1126982881	1897240282	-57	8	987	0.9
2025-06-30 19:33:56.481+00	192	\N	1126982881	1041420528	-74	4	987	0.9
2025-06-30 19:36:03.006+00	192	\N	978202981	1126982881	-48	4	995	0.9
2025-06-30 19:36:03.006+00	192	\N	978202981	1897240282	-56	8	995	0.9
2025-06-30 19:36:03.006+00	192	\N	978202981	1041420528	-79	4	995	0.9
2025-06-30 19:36:10.498+00	192	\N	1126982881	978202981	-44	4	999	0.9
2025-06-30 19:36:10.498+00	192	\N	1126982881	1897240282	-46	8	999	0.9
2025-06-30 19:36:10.498+00	192	\N	1126982881	1041420528	-84	4	999	0.9
2025-06-30 19:51:47.566+00	192	\N	1126982881	978202981	-25	4	1026	0.9
2025-06-30 19:51:47.566+00	192	\N	1126982881	1897240282	-50	8	1026	0.9
2025-06-30 19:51:47.566+00	192	\N	1126982881	1041420528	-77	4	1026	0.9
2025-06-30 19:52:07.09+00	192	\N	978202981	1126982881	-26	4	1029	0.9
2025-06-30 19:52:07.09+00	192	\N	978202981	1897240282	-41	8	1029	0.9
2025-06-30 19:52:07.09+00	192	\N	978202981	1041420528	-80	4	1029	0.9
2025-06-30 20:47:00.364+00	192	\N	978202981	1126982881	-26	4	1093	0.9
2025-06-30 20:47:00.364+00	192	\N	978202981	1897240282	-41	8	1093	0.9
2025-06-30 20:47:00.364+00	192	\N	978202981	1041420528	-81	4	1093	0.9
2025-07-01 05:45:48.526+00	192	\N	1126982881	1897240282	-63	8	1493	0.9
2025-07-01 05:45:48.526+00	192	\N	1126982881	1041420528	-86	4	1493	0.9
2025-07-01 05:45:48.526+00	192	\N	1126982881	978202981	-87	4	1493	0.9
2025-07-01 20:04:14.705+00	192	\N	1126982881	1897240282	-42	8	2122	0.9
2025-07-01 20:22:46.809+00	192	\N	1126982881	1897240282	-50	8	2154	0.9
2025-07-01 20:22:46.809+00	192	\N	1126982881	1041420528	-76	4	2154	0.9
2025-07-01 20:22:46.809+00	192	\N	1126982881	978202981	-85	4	2154	0.9
2025-07-01 20:30:18.853+00	192	\N	1126982881	1897240282	-47	8	2164	0.9
2025-07-01 20:30:18.853+00	192	\N	1126982881	978202981	-77	4	2164	0.9
2025-07-01 20:30:18.853+00	192	\N	1126982881	1041420528	-84	4	2164	0.9
2025-07-01 21:26:04.202+00	192	\N	1126982881	1897240282	-52	8	2214	0.9
2025-07-01 21:26:04.202+00	192	\N	1126982881	978202981	-81	4	2214	0.9
2025-07-01 21:38:35.266+00	192	\N	1126982881	1897240282	-63	8	2229	0.9
2025-07-01 21:38:35.266+00	192	\N	1126982881	978202981	-77	4	2229	0.9
2025-07-02 07:04:59.339+00	192	\N	978202981	1126982881	-63	4	2657	0.9
2025-07-02 07:04:59.339+00	192	\N	978202981	1897240282	-73	8	2657	0.9
2025-07-02 07:04:59.339+00	192	\N	978202981	1041420528	-75	4	2657	0.9
2025-07-02 07:05:06.047+00	192	\N	1126982881	1041420528	-59	4	2660	0.9
2025-07-02 07:05:06.047+00	192	\N	1126982881	978202981	-62	4	2660	0.9
2025-07-02 07:05:06.047+00	192	\N	1126982881	1897240282	-77	8	2660	0.9
2025-07-02 07:05:06.451+00	192	\N	1041420528	1126982881	-58	4	2663	0.9
2025-07-02 07:05:06.451+00	192	\N	1041420528	978202981	-75	4	2663	0.9
2025-07-02 07:05:06.451+00	192	\N	1041420528	1897240282	-85	8	2663	0.9
2025-07-02 09:18:36.831+00	192	\N	1126982881	1897240282	-48	8	2757	0.9
2025-07-02 09:18:36.831+00	192	\N	1126982881	978202981	-87	4	2757	0.9
2025-07-02 09:18:36.831+00	192	\N	1126982881	1041420528	-91	4	2757	0.9
2025-07-02 09:23:28.881+00	192	\N	1126982881	1897240282	-50	8	2768	0.9
2025-07-02 09:23:28.881+00	192	\N	1126982881	1041420528	-81	4	2768	0.9
2025-07-02 09:28:29.936+00	192	\N	1126982881	1897240282	-51	8	2781	0.9
2025-07-02 09:28:29.936+00	192	\N	1126982881	1041420528	-75	4	2781	0.9
2025-07-02 09:28:29.936+00	192	\N	1126982881	978202981	-80	4	2781	0.9
2025-07-02 09:30:22.954+00	192	\N	1126982881	1897240282	-53	8	2790	0.9
2025-07-02 09:30:22.954+00	192	\N	1126982881	1041420528	-90	4	2790	0.9
2025-07-02 09:30:22.954+00	192	\N	1126982881	978202981	-91	4	2790	0.9
2025-07-02 09:40:58.102+00	192	\N	1126982881	1897240282	-50	8	2809	0.9
2025-07-02 09:40:58.102+00	192	\N	1126982881	1041420528	-88	4	2809	0.9
2025-07-02 09:43:12.109+00	192	\N	1126982881	1897240282	-77	8	2820	0.9
2025-07-02 09:48:25.165+00	192	\N	1126982881	1897240282	-84	8	2838	0.9
2025-07-02 09:50:08.178+00	192	\N	1126982881	1897240282	-79	8	2844	0.9
2025-07-02 09:50:08.178+00	192	\N	1126982881	978202981	-88	4	2844	0.9
2025-07-02 09:55:46.213+00	192	\N	1126982881	1897240282	-64	8	2861	0.9
2025-07-02 09:55:46.213+00	192	\N	1126982881	978202981	-87	4	2861	0.9
2025-07-02 10:02:43.248+00	192	\N	1126982881	1897240282	-47	8	2873	0.9
2025-07-02 10:02:43.248+00	192	\N	1126982881	1041420528	-84	4	2873	0.9
2025-07-02 10:02:43.248+00	192	\N	1126982881	978202981	-91	4	2873	0.9
2025-07-02 10:14:10.337+00	192	\N	1126982881	1897240282	-48	8	2897	0.9
2025-07-02 10:35:26.447+00	192	\N	1126982881	1897240282	-61	8	2924	0.9
2025-07-02 10:42:34.486+00	192	\N	1126982881	1897240282	-60	8	2932	0.9
2025-07-02 11:42:11.899+00	192	\N	1126982881	1897240282	-64	8	2976	0.9
2025-07-02 11:43:39.911+00	192	\N	1126982881	1897240282	-55	8	2982	0.9
2025-07-02 11:43:39.911+00	192	\N	1126982881	1041420528	-77	4	2982	0.9
2025-07-02 11:43:39.911+00	192	\N	1126982881	978202981	-83	4	2982	0.9
2025-07-02 11:45:40.919+00	192	\N	1126982881	1897240282	-64	8	2989	0.9
2025-07-02 11:45:40.919+00	192	\N	1126982881	1041420528	-81	4	2989	0.9
2025-07-02 11:47:04.926+00	192	\N	1126982881	1897240282	-50	8	2996	0.9
2025-07-02 11:47:04.926+00	192	\N	1126982881	1041420528	-69	4	2996	0.9
2025-07-02 11:47:04.926+00	192	\N	1126982881	978202981	-82	4	2996	0.9
2025-07-02 11:57:22.979+00	192	\N	1126982881	1897240282	-48	8	3008	0.9
2025-07-02 11:57:22.979+00	192	\N	1126982881	1041420528	-84	4	3008	0.9
2025-07-02 12:19:16.065+00	192	\N	1126982881	1897240282	-61	8	3031	0.9
2025-07-02 12:19:16.065+00	192	\N	1126982881	1041420528	-74	4	3031	0.9
2025-07-02 12:19:16.065+00	192	\N	1126982881	978202981	-81	4	3031	0.9
2025-07-02 13:24:56.367+00	192	\N	1126982881	1897240282	-50	8	3081	0.9
2025-07-02 13:24:56.367+00	192	\N	1126982881	978202981	-87	4	3081	0.9
2025-07-02 13:54:25.551+00	192	\N	1126982881	1897240282	-63	8	3109	0.9
2025-07-02 13:54:25.551+00	192	\N	1126982881	978202981	-87	4	3109	0.9
2025-07-02 13:54:25.551+00	192	\N	1126982881	1041420528	-90	4	3109	0.9
2025-07-02 14:00:26.591+00	192	\N	1126982881	1897240282	-53	8	3124	0.9
2025-07-02 14:00:26.591+00	192	\N	1126982881	1041420528	-78	4	3124	0.9
2025-07-02 14:00:26.591+00	192	\N	1126982881	978202981	-87	4	3124	0.9
2025-07-02 14:02:41.611+00	192	\N	1126982881	1897240282	-53	8	3129	0.9
2025-07-02 15:37:44.295+00	192	\N	1126982881	1897240282	-51	8	3207	0.9
2025-07-02 15:37:44.295+00	192	\N	1126982881	1041420528	-84	4	3207	0.9
2025-07-02 15:37:44.295+00	192	\N	1126982881	978202981	-91	4	3207	0.9
2025-07-02 15:41:25.336+00	192	\N	1126982881	1897240282	-50	8	3215	0.9
2025-07-02 15:41:25.336+00	192	\N	1126982881	1041420528	-85	4	3215	0.9
2025-07-02 15:41:25.336+00	192	\N	1126982881	978202981	-88	4	3215	0.9
2025-07-02 15:45:51.388+00	192	\N	1126982881	1897240282	-50	8	3225	0.9
2025-07-02 15:45:51.388+00	192	\N	1126982881	1041420528	-80	4	3225	0.9
2025-07-02 15:45:51.388+00	192	\N	1126982881	978202981	-89	4	3225	0.9
2025-07-02 15:48:09.399+00	192	\N	1126982881	1897240282	-44	8	3230	0.9
2025-07-02 15:48:09.399+00	192	\N	1126982881	1041420528	-87	4	3230	0.9
2025-07-02 15:52:35.439+00	192	\N	1126982881	1897240282	-44	8	3237	0.9
2025-07-02 15:52:35.439+00	192	\N	1126982881	978202981	-87	4	3237	0.9
2025-07-02 15:52:35.439+00	192	\N	1126982881	1041420528	-87	4	3237	0.9
2025-07-02 15:54:41.453+00	192	\N	1126982881	1897240282	-54	8	3243	0.9
2025-07-02 15:54:41.453+00	192	\N	1126982881	1041420528	-84	4	3243	0.9
2025-07-02 15:54:41.453+00	192	\N	1126982881	978202981	-88	4	3243	0.9
2025-07-02 16:00:02.482+00	192	\N	1126982881	1897240282	-43	8	3252	0.9
2025-07-02 16:00:02.482+00	192	\N	1126982881	1041420528	-80	4	3252	0.9
2025-07-02 16:00:02.482+00	192	\N	1126982881	978202981	-82	4	3252	0.9
2025-07-02 16:08:42.59+00	192	\N	1126982881	1897240282	-44	8	3262	0.9
2025-07-02 16:08:42.59+00	192	\N	1126982881	1041420528	-79	4	3262	0.9
2025-07-02 16:08:42.59+00	192	\N	1126982881	978202981	-84	4	3262	0.9
2025-07-02 16:09:51.607+00	192	\N	1126982881	1897240282	-44	8	3266	0.9
2025-07-02 16:09:51.607+00	192	\N	1126982881	1041420528	-80	4	3266	0.9
2025-07-02 16:09:51.607+00	192	\N	1126982881	978202981	-85	4	3266	0.9
2025-07-02 16:12:57.619+00	192	\N	1126982881	1897240282	-52	8	3270	0.9
2025-07-02 16:12:57.619+00	192	\N	1126982881	1041420528	-78	4	3270	0.9
2025-07-02 16:12:57.619+00	192	\N	1126982881	978202981	-80	4	3270	0.9
2025-07-02 16:23:31.662+00	192	\N	1126982881	1897240282	-53	8	3278	0.9
2025-07-02 16:23:31.662+00	192	\N	1126982881	978202981	-79	4	3278	0.9
2025-07-02 16:23:31.662+00	192	\N	1126982881	1041420528	-80	4	3278	0.9
2025-07-02 16:46:07.775+00	192	\N	1126982881	1897240282	-52	8	3297	0.9
2025-07-02 16:46:07.775+00	192	\N	1126982881	978202981	-78	4	3297	0.9
2025-07-02 16:46:07.775+00	192	\N	1126982881	1041420528	-80	4	3297	0.9
2025-07-02 16:57:55.825+00	192	\N	1126982881	1897240282	-51	8	3308	0.9
2025-07-02 16:57:55.825+00	192	\N	1126982881	978202981	-78	4	3308	0.9
2025-07-02 16:57:55.825+00	192	\N	1126982881	1041420528	-80	4	3308	0.9
2025-07-02 17:00:45.837+00	192	\N	1126982881	1897240282	-51	8	3313	0.9
2025-07-02 17:00:45.837+00	192	\N	1126982881	978202981	-80	4	3313	0.9
2025-07-02 17:00:45.837+00	192	\N	1126982881	1041420528	-81	4	3313	0.9
2025-07-02 17:24:03.948+00	192	\N	1126982881	1897240282	-51	8	3329	0.9
2025-07-02 17:24:03.948+00	192	\N	1126982881	978202981	-79	4	3329	0.9
2025-07-02 17:24:03.948+00	192	\N	1126982881	1041420528	-83	4	3329	0.9
2025-07-02 17:25:29.951+00	192	\N	1126982881	1897240282	-50	8	3335	0.9
2025-07-02 17:25:29.951+00	192	\N	1126982881	978202981	-78	4	3335	0.9
2025-07-02 17:25:29.951+00	192	\N	1126982881	1041420528	-80	4	3335	0.9
2025-07-02 19:26:19.636+00	192	\N	1126982881	1897240282	-50	8	3413	0.9
2025-07-02 19:26:19.636+00	192	\N	1126982881	978202981	-79	4	3413	0.9
2025-07-02 19:26:19.636+00	192	\N	1126982881	1041420528	-84	4	3413	0.9
2025-07-02 22:38:04.693+00	192	\N	1126982881	1897240282	-47	8	3551	0.9
2025-07-02 22:38:04.693+00	192	\N	1126982881	978202981	-76	4	3551	0.9
2025-07-02 22:38:04.693+00	192	\N	1126982881	1041420528	-81	4	3551	0.9
2025-07-02 23:18:35.934+00	192	\N	1126982881	1897240282	-47	8	3580	0.9
2025-07-02 23:18:35.934+00	192	\N	1126982881	978202981	-77	4	3580	0.9
2025-07-02 23:18:35.934+00	192	\N	1126982881	1041420528	-81	4	3580	0.9
\.


--
-- Data for Name: _hyper_6_12_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_12_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-07-03 07:56:04.771+00	116	\N	1041420528	96682	3959	0.9
2025-07-03 07:56:08.473+00	116	\N	1126982881	96661	3960	0.9
2025-07-03 07:56:13.828+00	116	\N	978202981	96673	3961	0.9
2025-07-03 08:26:54.511+00	116	\N	1126982881	96679	3978	0.9
2025-07-03 08:26:50.829+00	116	\N	1041420528	96700	3979	0.9
2025-07-03 08:26:59.898+00	116	\N	978202981	96690	3980	0.9
2025-07-03 08:57:40.545+00	116	\N	1126982881	96680	3997	0.9
2025-07-03 08:57:36.866+00	116	\N	1041420528	96699	3998	0.9
2025-07-03 08:57:45.924+00	116	\N	978202981	96689	3999	0.9
2025-07-03 09:28:26.591+00	116	\N	1126982881	96672	4017	0.9
2025-07-03 09:28:22.895+00	116	\N	1041420528	96689	4018	0.9
2025-07-03 09:28:31.966+00	116	\N	978202981	96679	4019	0.9
2025-07-03 09:59:08.967+00	116	\N	1041420528	96686	4039	0.9
2025-07-03 09:59:12.614+00	116	\N	1126982881	96671	4040	0.9
2025-07-03 09:59:18.029+00	116	\N	978202981	96677	4041	0.9
2025-07-03 10:29:54.989+00	116	\N	1041420528	96697	4058	0.9
2025-07-03 10:29:58.67+00	116	\N	1126982881	96679	4059	0.9
2025-07-03 10:30:04.077+00	116	\N	978202981	96687	4060	0.9
2025-07-03 11:00:41.041+00	116	\N	1041420528	96692	4079	0.9
2025-07-03 11:00:44.701+00	116	\N	1126982881	96675	4080	0.9
2025-07-03 11:00:50.14+00	116	\N	978202981	96683	4081	0.9
2025-07-03 11:31:27.08+00	116	\N	1041420528	96679	4099	0.9
2025-07-03 11:31:30.724+00	116	\N	1126982881	96662	4100	0.9
2025-07-03 11:31:36.19+00	116	\N	978202981	96671	4101	0.9
2025-07-03 12:02:13.119+00	116	\N	1041420528	96651	4120	0.9
2025-07-03 12:02:16.76+00	116	\N	1126982881	96634	4121	0.9
2025-07-03 12:02:22.238+00	116	\N	978202981	96643	4122	0.9
2025-07-03 12:32:59.155+00	116	\N	1041420528	96621	4139	0.9
2025-07-03 12:33:02.806+00	116	\N	1126982881	96611	4140	0.9
2025-07-03 12:33:08.288+00	116	\N	978202981	96613	4141	0.9
2025-07-03 15:06:49.359+00	116	\N	1041420528	96553	4236	0.9
2025-07-03 15:06:52.995+00	116	\N	1126982881	96533	4237	0.9
2025-07-03 15:06:58.51+00	116	\N	978202981	96544	4238	0.9
2025-07-03 15:37:35.404+00	116	\N	1041420528	96563	4254	0.9
2025-07-03 15:37:39.03+00	116	\N	1126982881	96544	4255	0.9
2025-07-03 15:37:44.573+00	116	\N	978202981	96554	4256	0.9
2025-07-03 16:08:21.459+00	116	\N	1041420528	96565	4289	0.9
2025-07-03 16:08:30.629+00	116	\N	978202981	96558	4291	0.9
2025-07-03 16:08:25.088+00	116	\N	1126982881	96547	4292	0.9
2025-07-03 16:39:07.494+00	116	\N	1041420528	96567	4310	0.9
2025-07-03 16:39:11.145+00	116	\N	1126982881	96545	4311	0.9
2025-07-03 16:39:16.664+00	116	\N	978202981	96557	4312	0.9
2025-07-03 17:09:53.552+00	116	\N	1041420528	96561	4328	0.9
2025-07-03 17:09:57.181+00	116	\N	1126982881	96540	4329	0.9
2025-07-03 17:10:02.713+00	116	\N	978202981	96552	4330	0.9
2025-07-03 17:40:39.604+00	116	\N	1041420528	96568	4346	0.9
2025-07-03 17:40:43.223+00	116	\N	1126982881	96547	4347	0.9
2025-07-03 17:40:48.751+00	116	\N	978202981	96558	4348	0.9
2025-07-03 18:11:25.668+00	116	\N	1041420528	96578	4365	0.9
2025-07-03 18:11:29.257+00	116	\N	1126982881	96557	4366	0.9
2025-07-03 18:11:34.79+00	116	\N	978202981	96568	4367	0.9
2025-07-03 18:42:11.705+00	116	\N	1041420528	96608	4409	0.9
2025-07-03 18:42:15.307+00	116	\N	1126982881	96589	4410	0.9
2025-07-03 18:42:20.829+00	116	\N	978202981	96598	4411	0.9
2025-07-03 19:12:57.756+00	116	\N	1041420528	96635	4435	0.9
2025-07-03 19:13:01.35+00	116	\N	1126982881	96614	4436	0.9
2025-07-03 19:13:06.871+00	116	\N	978202981	96625	4437	0.9
2025-07-03 19:43:43.79+00	116	\N	1041420528	96679	4465	0.9
2025-07-03 19:43:47.387+00	116	\N	1126982881	96656	4467	0.9
2025-07-03 19:43:52.9+00	116	\N	978202981	96669	4468	0.9
2025-07-03 20:14:29.834+00	116	\N	1041420528	96711	4487	0.9
2025-07-03 20:14:33.419+00	116	\N	1126982881	96689	4488	0.9
2025-07-03 20:14:38.939+00	116	\N	978202981	96700	4489	0.9
2025-07-03 20:45:15.871+00	116	\N	1041420528	96732	4522	0.9
2025-07-03 20:45:19.452+00	116	\N	1126982881	96710	4523	0.9
2025-07-03 20:45:24.964+00	116	\N	978202981	96722	4524	0.9
2025-07-03 21:16:01.919+00	116	\N	1041420528	96749	4553	0.9
2025-07-03 21:16:05.477+00	116	\N	1126982881	96726	4554	0.9
2025-07-03 21:16:11.037+00	116	\N	978202981	96738	4556	0.9
2025-07-03 21:46:47.948+00	116	\N	1041420528	96747	4591	0.9
2025-07-03 21:46:51.537+00	116	\N	1126982881	96724	4592	0.9
2025-07-03 21:46:57.081+00	116	\N	978202981	96736	4593	0.9
2025-07-03 22:17:33.992+00	116	\N	1041420528	96759	4626	0.9
2025-07-03 22:17:37.571+00	116	\N	1126982881	96736	4627	0.9
2025-07-03 22:17:43.126+00	116	\N	978202981	96748	4629	0.9
2025-07-03 22:48:20.039+00	116	\N	1041420528	96752	4684	0.9
2025-07-03 22:48:23.598+00	116	\N	1126982881	96729	4685	0.9
2025-07-03 22:48:29.158+00	116	\N	978202981	96741	4686	0.9
2025-07-03 23:19:06.074+00	116	\N	1041420528	96783	4726	0.9
2025-07-03 23:19:09.644+00	116	\N	1126982881	96762	4727	0.9
2025-07-03 23:19:15.198+00	116	\N	978202981	96772	4728	0.9
2025-07-03 23:49:52.131+00	116	\N	1041420528	96768	4795	0.9
2025-07-03 23:49:55.677+00	116	\N	1126982881	96750	4799	0.9
2025-07-03 23:50:01.231+00	116	\N	978202981	96758	4801	0.9
2025-07-04 00:20:38.2+00	116	\N	1041420528	96785	4829	0.9
2025-07-04 00:20:41.735+00	116	\N	1126982881	96760	4830	0.9
2025-07-04 00:20:47.255+00	116	\N	978202981	96773	4831	0.9
2025-07-04 05:28:18.633+00	116	\N	1041420528	96844	5041	0.9
2025-07-04 05:28:22.114+00	116	\N	1126982881	96818	5042	0.9
2025-07-04 05:28:27.753+00	116	\N	978202981	96834	5043	0.9
2025-07-04 10:05:13+00	116	\N	1041420528	96815	5261	0.9
2025-07-04 10:05:16.439+00	116	\N	1126982881	96792	5262	0.9
2025-07-04 10:05:22.154+00	116	\N	978202981	96809	5263	0.9
2025-07-04 11:06:45.074+00	116	\N	1041420528	96782	5335	0.9
2025-07-04 11:06:48.533+00	116	\N	1126982881	96759	5336	0.9
2025-07-04 11:06:54.263+00	116	\N	978202981	96777	5337	0.9
2025-07-04 11:37:31.109+00	116	\N	1041420528	96767	5398	0.9
2025-07-04 11:37:34.594+00	116	\N	1126982881	96743	5399	0.9
2025-07-04 11:37:40.295+00	116	\N	978202981	96760	5400	0.9
2025-07-04 12:08:17.16+00	116	\N	1041420528	96728	5420	0.9
2025-07-04 12:08:20.628+00	116	\N	1126982881	96703	5421	0.9
2025-07-04 12:08:26.343+00	116	\N	978202981	96722	5422	0.9
2025-07-04 14:11:21.331+00	116	\N	1041420528	96583	5577	0.9
2025-07-04 14:11:24.776+00	116	\N	1126982881	96559	5578	0.9
2025-07-04 14:11:30.547+00	116	\N	978202981	96569	5579	0.9
2025-07-04 14:42:07.398+00	116	\N	1041420528	96562	5602	0.9
2025-07-04 14:42:10.796+00	116	\N	1126982881	96537	5603	0.9
2025-07-04 14:42:16.602+00	116	\N	978202981	96545	5604	0.9
2025-07-04 15:20:30.789+00	116	\N	1126982881	95522	5668	0.9
2025-07-04 15:21:01.058+00	116	\N	1126982881	96510	5671	0.9
2025-07-04 18:17:38.889+00	116	telegraf	978202981	96467	6099	1
2025-07-04 18:25:37.343+00	116	telegraf	1126982881	96474	6111	1
2025-07-04 19:49:47.856+00	116	telegraf	1041420528	96538	6223	1
2025-07-04 19:49:57.059+00	116	telegraf	978202981	96516	6225	1
2025-07-04 20:20:33.9+00	116	telegraf	1041420528	96560	6271	1
2025-07-04 20:20:43.106+00	116	telegraf	978202981	96540	6274	1
2025-07-04 20:51:19.949+00	116	telegraf	1041420528	96562	6355	1
2025-07-04 20:51:29.159+00	116	telegraf	978202981	96545	6356	1
2025-07-04 20:59:27.557+00	116	telegraf	1126982881	96532	6368	1
2025-07-04 21:22:05.99+00	116	telegraf	1041420528	96569	6398	1
2025-07-04 21:30:13.589+00	116	telegraf	1126982881	96552	6408	1
2025-07-04 21:52:52.047+00	116	telegraf	1041420528	96570	6437	1
2025-07-04 22:00:59.629+00	116	telegraf	1126982881	96536	6446	1
2025-07-04 22:23:38.076+00	116	telegraf	1041420528	96561	6471	1
2025-07-04 22:23:47.301+00	116	telegraf	978202981	96546	6472	1
2025-07-04 22:31:45.704+00	116	telegraf	1126982881	96525	6478	1
2025-07-04 22:54:33.346+00	116	telegraf	978202981	96519	6512	1
2025-07-04 23:02:31.736+00	116	telegraf	1126982881	96499	6519	1
2025-07-05 07:37:26.803+00	116	telegraf	1041420528	96387	6917	1
2025-07-05 07:37:36.235+00	116	telegraf	978202981	96374	6919	1
2025-07-05 07:45:34.424+00	116	telegraf	1126982881	96356	6922	1
2025-07-05 08:47:06.509+00	116	telegraf	1126982881	96365	6964	1
2025-07-05 09:09:54.365+00	116	telegraf	978202981	96375	6979	1
2025-07-05 09:40:40.431+00	116	telegraf	978202981	96354	7000	1
2025-07-05 10:11:26.477+00	116	telegraf	978202981	96347	7020	1
2025-07-05 10:19:24.616+00	116	telegraf	1126982881	96330	7028	1
2025-07-05 10:42:03.039+00	116	telegraf	1041420528	96356	7039	1
2025-07-05 10:42:12.542+00	116	telegraf	978202981	96343	7040	1
2025-07-05 12:14:21.163+00	116	telegraf	1041420528	96286	7099	1
2025-07-05 12:14:30.696+00	116	telegraf	978202981	96272	7100	1
2025-07-05 12:22:28.807+00	116	telegraf	1126982881	96266	7106	1
2025-07-05 12:45:07.204+00	116	telegraf	1041420528	96268	7119	1
2025-07-05 12:45:16.751+00	116	telegraf	978202981	96256	7120	1
2025-07-05 12:53:14.839+00	116	telegraf	1126982881	96233	7128	1
2025-07-05 13:15:53.259+00	116	telegraf	1041420528	96221	7142	1
2025-07-05 13:16:02.779+00	116	telegraf	978202981	96209	7143	1
2025-07-05 13:24:00.885+00	116	telegraf	1126982881	96188	7147	1
2025-07-05 13:46:48.83+00	116	telegraf	978202981	96182	7164	1
2025-07-05 13:54:46.913+00	116	telegraf	1126982881	96157	7166	1
2025-07-05 14:17:25.325+00	116	telegraf	1041420528	96158	7181	1
2025-07-05 14:17:34.865+00	116	telegraf	978202981	96145	7182	1
2025-07-05 14:25:32.959+00	116	telegraf	1126982881	96120	7185	1
2025-07-05 14:48:11.362+00	116	telegraf	1041420528	96123	7200	1
2025-07-05 14:48:20.918+00	116	telegraf	978202981	96112	7201	1
2025-07-05 14:56:18.982+00	116	telegraf	1126982881	96098	7207	1
2025-07-05 15:18:57.41+00	116	telegraf	1041420528	96114	7220	1
2025-07-05 15:19:06.99+00	116	telegraf	978202981	96101	7221	1
2025-07-05 15:27:05.036+00	116	telegraf	1126982881	96092	7227	1
2025-07-05 15:49:43.477+00	116	telegraf	1041420528	96103	7238	1
2025-07-05 15:49:53.063+00	116	telegraf	978202981	96091	7239	1
2025-07-05 15:57:51.067+00	116	telegraf	1126982881	96079	7245	1
2025-07-05 16:51:15.567+00	116	telegraf	1041420528	96096	7276	1
2025-07-05 16:51:25.169+00	116	telegraf	978202981	96086	7277	1
2025-07-05 16:59:23.142+00	116	telegraf	1126982881	96065	7283	1
2025-07-05 17:30:09.195+00	116	telegraf	1126982881	96074	7305	1
2025-07-05 17:52:47.682+00	116	telegraf	1041420528	96104	7316	1
2025-07-05 18:00:55.22+00	116	telegraf	1126982881	96082	7323	1
2025-07-05 19:25:15.385+00	116	telegraf	978202981	96057	7404	1
2025-07-05 19:33:13.34+00	116	telegraf	1126982881	96037	7417	1
2025-07-05 19:55:51.815+00	116	telegraf	1041420528	96085	7436	1
2025-07-05 19:56:01.44+00	116	telegraf	978202981	96071	7439	1
2025-07-05 20:03:59.393+00	116	telegraf	1126982881	96066	7448	1
2025-07-05 20:26:37.87+00	116	telegraf	1041420528	96115	7472	1
2025-07-05 20:26:47.465+00	116	telegraf	978202981	96101	7474	1
2025-07-05 20:57:23.907+00	116	telegraf	1041420528	96108	7493	1
2025-07-05 20:57:33.5+00	116	telegraf	978202981	96094	7494	1
2025-07-05 21:05:31.461+00	116	telegraf	1126982881	96084	7498	1
2025-07-05 21:28:09.947+00	116	telegraf	1041420528	96110	7518	1
2025-07-05 21:28:19.55+00	116	telegraf	978202981	96096	7520	1
2025-07-05 21:36:17.497+00	116	telegraf	1126982881	96080	7531	1
2025-07-05 21:58:55.981+00	116	telegraf	1041420528	96120	7551	1
2025-07-05 21:59:05.593+00	116	telegraf	978202981	96106	7552	1
2025-07-05 22:07:03.554+00	116	telegraf	1126982881	96098	7558	1
2025-07-05 22:29:42.051+00	116	telegraf	1041420528	96106	7577	1
2025-07-05 22:29:51.627+00	116	telegraf	978202981	96092	7578	1
2025-07-05 22:37:49.574+00	116	telegraf	1126982881	96072	7584	1
2025-07-05 23:00:28.102+00	116	telegraf	1041420528	96084	7599	1
2025-07-05 23:00:37.667+00	116	telegraf	978202981	96070	7600	1
2025-07-05 23:08:35.612+00	116	telegraf	1126982881	96049	7605	1
2025-07-05 23:31:14.128+00	116	telegraf	1041420528	96057	7622	1
2025-07-05 23:31:23.697+00	116	telegraf	978202981	96043	7623	1
2025-07-07 09:07:45.601+00	116	telegraf	1041420528	100312	2	1
2025-07-07 09:07:18.53+00	116	telegraf	1126982881	100284	14	1
2025-07-07 09:07:55.455+00	116	telegraf	978202981	100301	15	1
2025-07-07 09:25:35.432+00	116	telegraf	527134251	100317	195	1
2025-07-07 09:27:09.246+00	116	telegraf	1523842139	100315	204	1
2025-07-07 09:27:10.157+00	116	telegraf	840973111	100328	205	1
2025-07-07 09:38:41.589+00	116	telegraf	978202981	100318	63	1
2025-07-07 09:56:21.505+00	116	telegraf	527134251	100321	24	1
2025-07-07 09:57:56.247+00	116	telegraf	840973111	100337	32	1
2025-07-07 09:57:55.387+00	116	telegraf	1523842139	100325	33	1
2025-07-07 09:59:49.046+00	116	telegraf	840973111	100335	41	1
2025-07-07 10:08:50.512+00	116	telegraf	1126982881	100320	107	1
2025-07-07 10:09:27.413+00	116	telegraf	978202981	100338	110	1
2025-07-07 11:10:22.691+00	116	telegraf	1126982881	100357	48	1
2025-07-07 11:10:49.791+00	116	telegraf	1041420528	100383	54	1
2025-07-07 11:10:59.625+00	116	telegraf	978202981	100372	57	1
2025-07-07 11:41:08.723+00	116	telegraf	1126982881	100365	85	1
2025-07-07 11:41:35.849+00	116	telegraf	1041420528	100392	87	1
2025-07-07 11:53:58.145+00	116	telegraf	3839865	100344	120	1
2025-07-07 12:11:54.743+00	116	telegraf	1126982881	100403	143	1
2025-07-07 12:12:21.879+00	116	telegraf	1041420528	100427	145	1
2025-07-07 12:12:31.739+00	116	telegraf	978202981	100417	146	1
2025-07-07 12:24:44.198+00	116	telegraf	3839865	100379	173	1
2025-07-07 12:42:40.832+00	116	telegraf	1126982881	100423	219	1
2025-07-07 12:48:59.52+00	116	telegraf	632461688	100417	234	1
2025-07-07 12:55:30.263+00	116	telegraf	3839865	100396	244	1
2025-07-07 12:57:39.319+00	116	telegraf	791308911	100450	281	1
2025-07-07 13:00:57.735+00	116	telegraf	527134251	100428	299	1
2025-07-07 13:04:25.317+00	116	telegraf	840973111	100439	353	1
2025-07-07 13:04:32.724+00	116	telegraf	1523842139	100430	355	1
2025-07-07 13:13:26.814+00	116	telegraf	1126982881	100427	396	1
2025-07-07 13:13:53.945+00	116	telegraf	1041420528	100449	403	1
2025-07-07 13:14:03.869+00	116	telegraf	978202981	100440	404	1
2025-07-07 13:25:31.352+00	116	telegraf	305822513	100410	488	1
2025-07-07 13:35:18.78+00	116	telegraf	1523842139	100458	556	1
2025-07-07 13:31:43.899+00	116	telegraf	527134251	100457	570	1
2025-07-07 13:44:12.838+00	116	telegraf	1126982881	100476	652	1
2025-07-07 13:44:39.997+00	116	telegraf	1041420528	100500	662	1
2025-07-07 13:56:17.434+00	116	telegraf	305822513	100456	745	1
2025-07-07 13:56:16.245+00	116	telegraf	333419537	100483	749	1
2025-07-07 13:57:02.278+00	116	telegraf	3839865	100449	752	1
2025-07-07 13:59:11.52+00	116	telegraf	791308911	100505	783	1
2025-07-07 13:59:06.697+00	116	telegraf	677224097	100504	784	1
2025-07-07 14:02:29.954+00	116	telegraf	527134251	100503	812	1
2025-07-07 14:05:57.522+00	116	telegraf	840973111	100506	832	1
2025-07-07 14:06:04.836+00	116	telegraf	1523842139	100493	834	1
2025-07-07 14:14:58.933+00	116	telegraf	1126982881	100506	925	1
2025-07-07 14:15:36.003+00	116	telegraf	978202981	100518	948	1
2025-07-07 14:27:03.596+00	116	telegraf	305822513	100497	1020	1
2025-07-07 14:27:48.333+00	116	telegraf	3839865	100492	1026	1
2025-07-07 14:29:52.817+00	116	telegraf	677224097	100542	1040	1
2025-07-07 14:29:57.613+00	116	telegraf	791308911	100545	1041	1
2025-07-07 14:45:44.965+00	116	telegraf	1126982881	100531	1141	1
2025-07-07 14:46:12.136+00	116	telegraf	1041420528	100559	1143	1
2025-07-07 14:51:18.073+00	116	telegraf	517905260	100612	1191	1
2025-07-07 14:52:03.801+00	116	telegraf	632461688	100587	1193	1
2025-07-08 08:02:11.43+00	116	telegraf	333419537	101132	45	1
2025-07-08 08:08:39.584+00	116	telegraf	791308911	101154	74	1
2025-07-08 08:31:16.49+00	116	telegraf	677224097	101145	162	1
2025-07-08 08:32:57.365+00	116	telegraf	333419537	101129	165	1
2025-07-08 08:39:25.624+00	116	telegraf	791308911	101151	178	1
2025-07-08 08:40:20.736+00	116	telegraf	632461688	101123	189	1
2025-07-08 08:41:34.071+00	116	telegraf	305822513	101103	193	1
2025-07-08 08:43:47.325+00	116	telegraf	1523842139	101154	199	1
2025-07-08 08:44:40.324+00	116	telegraf	840973111	101164	201	1
2025-07-08 08:47:15.672+00	116	telegraf	978202981	101142	204	1
2025-07-08 08:48:06.252+00	116	telegraf	1041420528	101159	206	1
2025-07-08 08:48:39.765+00	116	telegraf	1126982881	101128	209	1
2025-07-08 08:48:21.912+00	116	telegraf	3839865	101102	226	1
2025-07-08 09:02:02.635+00	116	telegraf	677224097	101169	256	1
2025-07-08 09:03:43.512+00	116	telegraf	333419537	101160	260	1
2025-07-08 09:10:11.765+00	116	telegraf	791308911	101174	274	1
2025-07-08 09:14:33.538+00	116	telegraf	1523842139	101173	287	1
2025-07-08 09:14:30.223+00	116	telegraf	527134251	101173	288	1
2025-07-08 09:15:26.494+00	116	telegraf	840973111	101177	289	1
2025-07-08 09:11:06.892+00	116	telegraf	632461688	101146	290	1
2025-07-08 09:12:20.226+00	116	telegraf	305822513	101127	291	1
2025-07-08 09:18:01.852+00	116	telegraf	978202981	101163	299	1
2025-07-08 09:18:52.287+00	116	telegraf	1041420528	101173	301	1
2025-07-09 09:23:05.565+00	116	telegraf	978202981	101792	2	1
2025-07-09 09:23:28.636+00	116	telegraf	1126982881	101780	5	1
2025-07-09 09:54:14.63+00	116	telegraf	1126982881	101782	53	1
2025-07-09 10:24:37.596+00	116	telegraf	978202981	101808	106	1
2025-07-09 10:25:00.687+00	116	telegraf	1126982881	101789	107	1
2025-07-09 10:26:58.957+00	116	telegraf	1041420528	101813	119	1
\.


--
-- Data for Name: _hyper_6_20_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_20_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-07-10 07:28:57.056+00	116	telegraf	1041420528	101167	49	1
2025-07-10 07:29:07.106+00	116	telegraf	978202981	101159	51	1
2025-07-10 07:29:29.829+00	116	telegraf	1126982881	101139	55	1
2025-07-10 07:59:43.07+00	116	telegraf	1041420528	101177	85	1
2025-07-10 07:59:53.139+00	116	telegraf	978202981	101169	86	1
2025-07-10 08:00:15.915+00	116	telegraf	1126982881	101151	92	1
2025-07-10 08:30:39.249+00	116	telegraf	978202981	101173	117	1
2025-07-10 08:31:01.961+00	116	telegraf	1126982881	101158	118	1
2025-07-10 09:01:15.172+00	116	telegraf	1041420528	101171	162	1
2025-07-10 09:01:25.301+00	116	telegraf	978202981	101162	163	1
2025-07-10 09:01:47.971+00	116	telegraf	1126982881	101146	165	1
2025-07-10 09:32:01.183+00	116	telegraf	1041420528	101176	184	1
2025-07-10 09:32:11.373+00	116	telegraf	978202981	101166	185	1
2025-07-10 09:32:33.963+00	116	telegraf	1126982881	101151	186	1
2025-07-10 10:03:20.034+00	116	telegraf	1126982881	101142	209	1
2025-07-10 12:05:51.396+00	116	telegraf	1041420528	101102	287	1
2025-07-10 12:06:01.734+00	116	telegraf	978202981	101092	288	1
2025-07-10 12:06:24.2+00	116	telegraf	1126982881	101077	289	1
2025-07-10 12:36:37.43+00	116	telegraf	1041420528	101074	307	1
2025-07-10 12:36:47.804+00	116	telegraf	978202981	101062	308	1
2025-07-10 12:37:10.234+00	116	telegraf	1126982881	101047	309	1
2025-07-10 13:07:23.492+00	116	telegraf	1041420528	101072	328	1
2025-07-10 13:07:33.875+00	116	telegraf	978202981	101061	329	1
2025-07-10 13:07:56.27+00	116	telegraf	1126982881	101047	330	1
2025-07-10 13:38:09.525+00	116	telegraf	1041420528	101044	346	1
2025-07-10 13:38:19.916+00	116	telegraf	978202981	101033	347	1
2025-07-10 13:38:42.311+00	116	telegraf	1126982881	101017	348	1
2025-07-10 14:08:55.557+00	116	telegraf	1041420528	101030	365	1
2025-07-10 14:09:28.371+00	116	telegraf	1126982881	101006	367	1
2025-07-10 14:39:41.59+00	116	telegraf	1041420528	100995	383	1
2025-07-10 14:39:52.031+00	116	telegraf	978202981	100983	384	1
2025-07-10 14:40:14.392+00	116	telegraf	1126982881	100968	385	1
2025-07-10 15:10:38.114+00	116	telegraf	978202981	100943	414	1
2025-07-10 15:11:00.464+00	116	telegraf	1126982881	100928	415	1
2025-07-10 15:41:13.701+00	116	telegraf	1041420528	100936	432	1
2025-07-10 15:41:24.191+00	116	telegraf	978202981	100923	433	1
2025-07-10 15:41:46.495+00	116	telegraf	1126982881	100907	434	1
2025-07-10 16:11:59.764+00	116	telegraf	1041420528	100904	453	1
2025-07-10 16:12:10.265+00	116	telegraf	978202981	100894	454	1
2025-07-10 16:12:32.55+00	116	telegraf	1126982881	100880	455	1
2025-07-10 16:42:45.807+00	116	telegraf	1041420528	100883	478	1
2025-07-10 16:42:56.355+00	116	telegraf	978202981	100872	479	1
2025-07-10 16:43:18.584+00	116	telegraf	1126982881	100857	480	1
2025-07-10 17:13:31.843+00	116	telegraf	1041420528	100870	498	1
2025-07-10 17:13:42.424+00	116	telegraf	978202981	100860	499	1
2025-07-10 17:14:04.59+00	116	telegraf	1126982881	100843	500	1
2025-07-10 17:44:17.881+00	116	telegraf	1041420528	100871	516	1
2025-07-10 17:44:28.492+00	116	telegraf	978202981	100861	517	1
2025-07-10 17:44:50.626+00	116	telegraf	1126982881	100847	518	1
2025-07-11 07:04:15.024+00	116	telegraf	1041420528	100864	13	1
2025-07-11 07:04:25.769+00	116	telegraf	978202981	100855	14	1
2025-07-11 07:04:47.721+00	116	telegraf	1126982881	100839	15	1
2025-07-11 07:35:01.025+00	116	telegraf	1041420528	100863	32	1
2025-07-11 07:35:33.77+00	116	telegraf	1126982881	100839	34	1
2025-07-11 09:07:19.112+00	116	telegraf	1041420528	100848	104	1
2025-07-11 09:07:29.914+00	116	telegraf	978202981	100837	105	1
2025-07-11 09:07:51.89+00	116	telegraf	1126982881	100819	106	1
2025-07-12 05:55:20.74+00	116	telegraf	978202981	95791	15	1
2025-07-12 06:25:58.188+00	116	telegraf	1126982881	95799	33	1
2025-07-12 06:25:55.891+00	116	telegraf	1041420528	95827	34	1
2025-07-12 06:26:06.769+00	116	telegraf	978202981	95814	35	1
2025-07-12 06:56:52.824+00	116	telegraf	978202981	95818	56	1
2025-07-12 07:27:27.964+00	116	telegraf	1041420528	95831	72	1
2025-07-12 07:27:30.27+00	116	telegraf	1126982881	95805	73	1
2025-07-12 07:27:38.851+00	116	telegraf	978202981	95819	74	1
2025-07-12 07:58:24.895+00	116	telegraf	978202981	95810	93	1
2025-07-12 08:29:02.383+00	116	telegraf	1126982881	95776	109	1
2025-07-12 08:29:10.916+00	116	telegraf	978202981	95790	111	1
2025-07-12 08:59:48.452+00	116	telegraf	1126982881	95753	129	1
2025-07-12 08:59:46.087+00	116	telegraf	1041420528	95781	130	1
2025-07-12 08:59:56.999+00	116	telegraf	978202981	95768	131	1
2025-07-12 09:30:34.527+00	116	telegraf	1126982881	95762	150	1
2025-07-12 09:30:43.044+00	116	telegraf	978202981	95777	152	1
2025-07-12 14:07:26.519+00	116	telegraf	1041420528	95565	322	1
2025-07-12 14:07:28.946+00	116	telegraf	1126982881	95538	323	1
2025-07-12 14:07:37.482+00	116	telegraf	978202981	95553	324	1
2025-07-12 14:38:15.023+00	116	telegraf	1126982881	95547	344	1
2025-07-12 14:38:12.548+00	116	telegraf	1041420528	95572	345	1
2025-07-12 14:38:23.516+00	116	telegraf	978202981	95561	346	1
2025-07-12 15:09:01.052+00	116	telegraf	1126982881	95551	366	1
2025-07-12 15:08:58.598+00	116	telegraf	1041420528	95576	367	1
2025-07-12 15:09:09.553+00	116	telegraf	978202981	95565	368	1
2025-07-12 16:41:19.261+00	116	telegraf	1126982881	95490	424	1
2025-07-12 16:41:16.693+00	116	telegraf	1041420528	95515	425	1
2025-07-12 16:41:27.685+00	116	telegraf	978202981	95503	426	1
2025-07-12 17:12:13.712+00	116	telegraf	978202981	95498	445	1
2025-07-12 17:42:51.348+00	116	telegraf	1126982881	95485	463	1
2025-07-12 17:42:48.761+00	116	telegraf	1041420528	95509	464	1
2025-07-12 17:42:59.784+00	116	telegraf	978202981	95498	465	1
2025-07-12 18:13:37.374+00	116	telegraf	1126982881	95495	482	1
2025-07-12 18:13:45.83+00	116	telegraf	978202981	95508	484	1
2025-07-12 18:44:23.431+00	116	telegraf	1126982881	95521	503	1
2025-07-12 18:44:20.876+00	116	telegraf	1041420528	95546	504	1
2025-07-12 18:44:31.886+00	116	telegraf	978202981	95535	505	1
2025-07-12 19:15:06.909+00	116	telegraf	1041420528	95611	523	1
2025-07-12 19:15:17.93+00	116	telegraf	978202981	95601	524	1
2025-07-12 20:16:41.53+00	116	telegraf	1126982881	95683	558	1
2025-07-12 20:16:38.991+00	116	telegraf	1041420528	95708	559	1
2025-07-12 20:47:25.017+00	116	telegraf	1041420528	95737	576	1
2025-07-12 20:47:27.606+00	116	telegraf	1126982881	95712	577	1
2025-07-12 20:47:36.054+00	116	telegraf	978202981	95725	578	1
2025-07-12 21:18:13.629+00	116	telegraf	1126982881	95733	594	1
2025-07-12 21:18:22.1+00	116	telegraf	978202981	95747	595	1
2025-07-12 21:18:11.08+00	116	telegraf	1041420528	95757	596	1
2025-07-12 21:48:57.106+00	116	telegraf	1041420528	95746	615	1
2025-07-12 21:49:08.139+00	116	telegraf	978202981	95735	616	1
2025-07-13 06:32:02.517+00	116	telegraf	1126982881	95775	937	1
2025-07-13 06:31:59.781+00	116	telegraf	1041420528	95800	938	1
2025-07-13 06:32:10.912+00	116	telegraf	978202981	95789	939	1
2025-07-13 07:02:48.608+00	116	telegraf	1126982881	95771	959	1
2025-07-13 07:02:45.817+00	116	telegraf	1041420528	95796	960	1
2025-07-13 07:02:56.958+00	116	telegraf	978202981	95786	961	1
2025-07-13 07:33:42.995+00	116	telegraf	978202981	95785	982	1
2025-07-13 10:07:24.939+00	116	telegraf	1126982881	95762	1073	1
2025-07-13 10:07:22.088+00	116	telegraf	1041420528	95787	1074	1
2025-07-13 10:07:33.258+00	116	telegraf	978202981	95775	1075	1
2025-07-13 10:38:10.988+00	116	telegraf	1126982881	95757	1094	1
2025-07-13 10:38:08.123+00	116	telegraf	1041420528	95782	1095	1
2025-07-13 10:38:19.297+00	116	telegraf	978202981	95771	1096	1
2025-07-13 11:08:57.044+00	116	telegraf	1126982881	95751	1114	1
2025-07-13 11:08:54.171+00	116	telegraf	1041420528	95776	1115	1
2025-07-13 11:09:05.347+00	116	telegraf	978202981	95766	1116	1
2025-07-13 11:39:40.225+00	116	telegraf	1041420528	95764	1135	1
2025-07-13 11:39:43.09+00	116	telegraf	1126982881	95741	1136	1
2025-07-13 11:39:51.382+00	116	telegraf	978202981	95753	1137	1
2025-07-13 12:10:29.135+00	116	telegraf	1126982881	95735	1153	1
2025-07-13 12:10:26.288+00	116	telegraf	1041420528	95759	1154	1
2025-07-13 12:10:37.452+00	116	telegraf	978202981	95750	1155	1
2025-07-13 13:12:01.207+00	116	telegraf	1126982881	95739	1196	1
2025-07-13 13:11:58.448+00	116	telegraf	1041420528	95763	1198	1
2025-07-13 14:44:19.36+00	116	telegraf	1126982881	95731	1255	1
2025-07-13 14:44:16.597+00	116	telegraf	1041420528	95755	1256	1
2025-07-13 14:44:27.693+00	116	telegraf	978202981	95746	1257	1
2025-07-14 08:10:25.101+00	116	telegraf	1126982881	96504	1912	1
2025-07-14 08:10:22.149+00	116	telegraf	1041420528	96528	1913	1
2025-07-14 08:10:33.457+00	116	telegraf	978202981	96518	1914	1
2025-07-15 08:47:12.326+00	116	telegraf	1041420528	96603	2814	1
2025-07-15 08:47:15.257+00	116	telegraf	1126982881	96579	2815	1
2025-07-15 08:47:24.093+00	116	telegraf	978202981	96593	2816	1
\.


--
-- Data for Name: _hyper_6_6_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_6_chunk ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-06-28 12:39:32.065+00	116	\N	1126982881	96789	90	0.9
2025-06-28 12:39:33.987+00	116	\N	978202981	96804	91	0.9
2025-06-28 12:39:27.852+00	116	\N	1041420528	96813	93	0.9
2025-06-28 13:10:13.868+00	116	\N	1041420528	96781	112	0.9
2025-06-28 13:10:18.076+00	116	\N	1126982881	96756	113	0.9
2025-06-28 13:10:19.994+00	116	\N	978202981	96771	114	0.9
2025-06-28 13:40:59.962+00	116	\N	1041420528	96751	136	0.9
2025-06-28 13:41:04.136+00	116	\N	1126982881	96727	137	0.9
2025-06-28 13:41:06.053+00	116	\N	978202981	96743	138	0.9
2025-06-28 14:11:50.201+00	116	\N	1126982881	96702	154	0.9
2025-06-28 14:11:46.006+00	116	\N	1041420528	96727	155	0.9
2025-06-28 14:11:52.144+00	116	\N	978202981	96716	156	0.9
2025-06-28 14:42:36.236+00	116	\N	1126982881	96684	184	0.9
2025-06-28 14:42:38.202+00	116	\N	978202981	96698	185	0.9
2025-06-28 14:42:32.034+00	116	\N	1041420528	96710	186	0.9
2025-06-28 15:13:22.267+00	116	\N	1126982881	96668	202	0.9
2025-06-28 15:13:24.233+00	116	\N	978202981	96682	203	0.9
2025-06-28 15:13:18.097+00	116	\N	1041420528	96692	204	0.9
2025-06-28 15:44:04.081+00	116	\N	1041420528	96682	221	0.9
2025-06-28 15:44:08.265+00	116	\N	1126982881	96657	222	0.9
2025-06-28 15:44:10.288+00	116	\N	978202981	96671	223	0.9
2025-06-28 16:14:54.336+00	116	\N	1126982881	96644	243	0.9
2025-06-28 16:14:50.126+00	116	\N	1041420528	96669	244	0.9
2025-06-28 16:14:56.364+00	116	\N	978202981	96659	245	0.9
2025-06-28 16:45:36.173+00	116	\N	1041420528	96655	261	0.9
2025-06-28 16:45:40.339+00	116	\N	1126982881	96631	262	0.9
2025-06-28 16:45:42.392+00	116	\N	978202981	96645	263	0.9
2025-06-28 17:16:26.395+00	116	\N	1126982881	96624	281	0.9
2025-06-28 17:16:28.508+00	116	\N	978202981	96638	282	0.9
2025-06-28 17:16:22.214+00	116	\N	1041420528	96648	283	0.9
2025-06-28 17:47:12.452+00	116	\N	1126982881	96627	321	0.9
2025-06-28 17:47:08.272+00	116	\N	1041420528	96651	322	0.9
2025-06-28 17:47:14.562+00	116	\N	978202981	96640	323	0.9
2025-06-28 18:17:58.532+00	116	\N	1126982881	96633	343	0.9
2025-06-28 18:17:54.321+00	116	\N	1041420528	96658	344	0.9
2025-06-28 18:18:00.658+00	116	\N	978202981	96648	345	0.9
2025-06-28 18:48:44.591+00	116	\N	1126982881	96670	365	0.9
2025-06-28 18:48:46.709+00	116	\N	978202981	96685	366	0.9
2025-06-28 18:48:40.371+00	116	\N	1041420528	96695	367	0.9
2025-06-28 19:19:26.379+00	116	\N	1041420528	96708	383	0.9
2025-06-28 19:19:30.587+00	116	\N	1126982881	96684	384	0.9
2025-06-28 19:19:32.732+00	116	\N	978202981	96698	385	0.9
2025-06-28 19:50:12.469+00	116	\N	1041420528	96732	403	0.9
2025-06-28 19:50:16.663+00	116	\N	1126982881	96707	404	0.9
2025-06-28 19:50:18.821+00	116	\N	978202981	96723	405	0.9
2025-06-30 14:54:40.095+00	116	\N	1041420528	96058	765	0.9
2025-06-30 14:54:44.094+00	116	\N	1126982881	96029	767	0.9
2025-06-30 14:54:47.875+00	116	\N	978202981	96049	768	0.9
2025-06-30 15:25:26.124+00	116	\N	1041420528	96024	787	0.9
2025-06-30 15:25:30.149+00	116	\N	1126982881	95991	789	0.9
2025-06-30 15:25:33.909+00	116	\N	978202981	96015	790	0.9
2025-06-30 15:56:16.178+00	116	\N	1126982881	95970	807	0.9
2025-06-30 15:56:12.172+00	116	\N	1041420528	96003	808	0.9
2025-06-30 15:56:19.984+00	116	\N	978202981	95997	810	0.9
2025-06-30 16:27:02.22+00	116	\N	1126982881	95984	838	0.9
2025-06-30 16:26:58.24+00	116	\N	1041420528	96022	839	0.9
2025-06-30 16:27:06.03+00	116	\N	978202981	96014	841	0.9
2025-06-30 16:57:48.285+00	116	\N	1126982881	95958	857	0.9
2025-06-30 16:57:52.097+00	116	\N	978202981	95987	858	0.9
2025-06-30 16:57:44.257+00	116	\N	1041420528	95996	859	0.9
2025-06-30 17:28:30.334+00	116	\N	1041420528	95994	876	0.9
2025-06-30 17:28:34.323+00	116	\N	1126982881	95960	878	0.9
2025-06-30 17:28:38.137+00	116	\N	978202981	95988	879	0.9
2025-06-30 17:59:20.371+00	116	\N	1126982881	95996	899	0.9
2025-06-30 17:59:16.352+00	116	\N	1041420528	96031	900	0.9
2025-06-30 17:59:24.19+00	116	\N	978202981	96024	902	0.9
2025-06-30 18:30:02.4+00	116	\N	1041420528	96019	922	0.9
2025-06-30 18:30:06.387+00	116	\N	1126982881	95983	924	0.9
2025-06-30 18:30:10.246+00	116	\N	978202981	96010	925	0.9
2025-06-30 19:00:48.438+00	116	\N	1041420528	96019	947	0.9
2025-06-30 19:00:52.465+00	116	\N	1126982881	95982	949	0.9
2025-06-30 19:00:56.325+00	116	\N	978202981	96007	951	0.9
2025-06-30 19:25:35.335+00	116	\N	1126982881	96089	969	0.9
2025-06-30 19:25:31.317+00	116	\N	1041420528	96123	970	0.9
2025-06-30 19:25:39.257+00	116	\N	978202981	96114	971	0.9
2025-06-30 19:30:07.7+00	116	\N	1126982881	96200	974	0.9
2025-06-30 19:31:34.487+00	116	\N	1041420528	96227	978	0.9
2025-06-30 19:31:42.412+00	116	\N	978202981	96225	980	0.9
2025-06-30 20:00:53.742+00	116	\N	1126982881	96212	1043	0.9
2025-06-30 20:02:20.516+00	116	\N	1041420528	96250	1047	0.9
2025-06-30 20:02:28.501+00	116	\N	978202981	96238	1048	0.9
2025-06-30 20:31:39.791+00	116	\N	1126982881	96286	1076	0.9
2025-06-30 20:33:06.563+00	116	\N	1041420528	96321	1079	0.9
2025-06-30 20:33:14.557+00	116	\N	978202981	96308	1081	0.9
2025-06-30 21:02:25.816+00	116	\N	1126982881	96337	1111	0.9
2025-06-30 21:03:52.617+00	116	\N	1041420528	96364	1112	0.9
2025-06-30 21:04:00.623+00	116	\N	978202981	96351	1113	0.9
2025-06-30 21:33:11.866+00	116	\N	1126982881	96288	1132	0.9
2025-06-30 21:34:38.642+00	116	\N	1041420528	96312	1134	0.9
2025-06-30 21:34:46.659+00	116	\N	978202981	96299	1135	0.9
2025-06-30 22:03:57.922+00	116	\N	1126982881	96267	1153	0.9
2025-06-30 22:05:24.71+00	116	\N	1041420528	96297	1155	0.9
2025-06-30 22:05:32.773+00	116	\N	978202981	96285	1156	0.9
2025-07-01 05:46:55.38+00	116	\N	1041420528	96263	1496	0.9
2025-07-01 05:47:03.535+00	116	\N	978202981	96253	1497	0.9
2025-07-01 06:16:14.506+00	116	\N	1126982881	96231	1525	0.9
2025-07-01 06:17:49.58+00	116	\N	978202981	96248	1526	0.9
2025-07-01 06:17:41.413+00	116	\N	1041420528	96258	1527	0.9
2025-07-01 06:47:00.545+00	116	\N	1126982881	96240	1544	0.9
2025-07-01 06:48:27.468+00	116	\N	1041420528	96266	1545	0.9
2025-07-01 06:48:35.628+00	116	\N	978202981	96255	1546	0.9
2025-07-01 07:17:46.611+00	116	\N	1126982881	96234	1565	0.9
2025-07-01 07:19:13.542+00	116	\N	1041420528	96262	1567	0.9
2025-07-01 07:19:21.664+00	116	\N	978202981	96250	1568	0.9
2025-07-01 07:48:32.674+00	116	\N	1126982881	96224	1585	0.9
2025-07-01 07:50:07.744+00	116	\N	978202981	96239	1586	0.9
2025-07-01 07:49:59.593+00	116	\N	1041420528	96250	1587	0.9
2025-07-01 08:19:18.692+00	116	\N	1126982881	96210	1605	0.9
2025-07-01 08:20:45.642+00	116	\N	1041420528	96234	1606	0.9
2025-07-01 08:20:53.777+00	116	\N	978202981	96223	1607	0.9
2025-07-01 08:50:04.75+00	116	\N	1126982881	96212	1626	0.9
2025-07-01 08:51:31.721+00	116	\N	1041420528	96235	1628	0.9
2025-07-01 08:51:39.835+00	116	\N	978202981	96223	1629	0.9
2025-07-01 09:20:50.812+00	116	\N	1126982881	96207	1647	0.9
2025-07-01 09:22:17.768+00	116	\N	1041420528	96232	1649	0.9
2025-07-01 09:22:25.873+00	116	\N	978202981	96221	1650	0.9
2025-07-01 09:51:36.824+00	116	\N	1126982881	96183	1668	0.9
2025-07-01 09:53:03.818+00	116	\N	1041420528	96206	1669	0.9
2025-07-01 09:53:11.925+00	116	\N	978202981	96195	1670	0.9
2025-07-01 10:22:22.88+00	116	\N	1126982881	96175	1693	0.9
2025-07-01 10:23:49.851+00	116	\N	1041420528	96197	1694	0.9
2025-07-01 10:23:58.012+00	116	\N	978202981	96185	1695	0.9
2025-07-01 11:23:54.96+00	116	\N	1126982881	96137	1739	0.9
2025-07-01 11:25:21.952+00	116	\N	1041420528	96164	1742	0.9
2025-07-01 11:25:30.096+00	116	\N	978202981	96153	1743	0.9
2025-07-01 11:54:40.991+00	116	\N	1126982881	96109	1768	0.9
2025-07-01 11:56:07.995+00	116	\N	1041420528	96138	1771	0.9
2025-07-01 11:56:16.137+00	116	\N	978202981	96127	1772	0.9
2025-07-01 12:25:27.048+00	116	\N	1126982881	96091	1795	0.9
2025-07-01 12:26:54.028+00	116	\N	1041420528	96121	1797	0.9
2025-07-01 12:27:02.162+00	116	\N	978202981	96109	1799	0.9
2025-07-01 12:56:13.076+00	116	\N	1126982881	96075	1816	0.9
2025-07-01 12:57:40.107+00	116	\N	1041420528	96102	1817	0.9
2025-07-01 12:57:48.223+00	116	\N	978202981	96091	1818	0.9
2025-07-01 13:26:59.134+00	116	\N	1126982881	96048	1837	0.9
2025-07-01 13:28:26.148+00	116	\N	1041420528	96078	1839	0.9
2025-07-01 13:28:34.315+00	116	\N	978202981	96068	1840	0.9
2025-07-01 13:57:45.159+00	116	\N	1126982881	96015	1858	0.9
2025-07-01 13:59:12.173+00	116	\N	1041420528	96050	1860	0.9
2025-07-01 13:59:20.363+00	116	\N	978202981	96039	1861	0.9
2025-07-01 15:30:03.309+00	116	\N	1126982881	95944	1921	0.9
2025-07-01 15:31:30.321+00	116	\N	1041420528	95973	1924	0.9
2025-07-01 15:31:38.55+00	116	\N	978202981	95962	1925	0.9
2025-07-01 16:31:35.392+00	116	\N	1126982881	95914	1961	0.9
2025-07-01 16:33:10.623+00	116	\N	978202981	95940	1962	0.9
2025-07-01 16:33:02.416+00	116	\N	1041420528	95950	1963	0.9
2025-07-01 17:02:21.423+00	116	\N	1126982881	95908	1980	0.9
2025-07-01 17:03:48.457+00	116	\N	1041420528	95944	1981	0.9
2025-07-01 17:03:56.663+00	116	\N	978202981	95933	1982	0.9
2025-07-01 17:33:07.463+00	116	\N	1126982881	95913	2000	0.9
2025-07-01 17:34:34.498+00	116	\N	1041420528	95947	2001	0.9
2025-07-01 17:34:42.692+00	116	\N	978202981	95937	2002	0.9
2025-07-01 18:03:53.527+00	116	\N	1126982881	95917	2020	0.9
2025-07-01 18:05:20.523+00	116	\N	1041420528	95954	2023	0.9
2025-07-01 18:05:28.757+00	116	\N	978202981	95944	2024	0.9
2025-07-01 18:34:39.574+00	116	\N	1126982881	95945	2044	0.9
2025-07-01 18:36:14.824+00	116	\N	978202981	95972	2047	0.9
2025-07-01 18:36:06.558+00	116	\N	1041420528	95982	2048	0.9
2025-07-01 19:05:25.617+00	116	\N	1126982881	95966	2070	0.9
2025-07-01 19:06:52.641+00	116	\N	1041420528	96003	2073	0.9
2025-07-01 19:07:00.856+00	116	\N	978202981	95994	2074	0.9
2025-07-01 19:36:11.665+00	116	\N	1126982881	95988	2096	0.9
2025-07-01 19:37:38.702+00	116	\N	1041420528	96026	2097	0.9
2025-07-01 19:37:46.934+00	116	\N	978202981	96016	2098	0.9
2025-07-01 20:06:57.702+00	116	\N	1126982881	96018	2129	0.9
2025-07-01 20:08:24.738+00	116	\N	1041420528	96049	2131	0.9
2025-07-01 20:08:32.962+00	116	\N	978202981	96039	2133	0.9
2025-07-01 20:37:43.771+00	116	\N	1126982881	96033	2169	0.9
2025-07-01 20:39:10.808+00	116	\N	1041420528	96066	2170	0.9
2025-07-01 20:39:19.029+00	116	\N	978202981	96055	2171	0.9
2025-07-01 21:08:29.812+00	116	\N	1126982881	96051	2189	0.9
2025-07-01 21:09:56.833+00	116	\N	1041420528	96084	2190	0.9
2025-07-01 21:10:05.057+00	116	\N	978202981	96072	2192	0.9
2025-07-01 21:39:15.895+00	116	\N	1126982881	96048	2230	0.9
2025-07-01 21:40:42.874+00	116	\N	1041420528	96078	2233	0.9
2025-07-01 21:40:51.154+00	116	\N	978202981	96066	2234	0.9
2025-07-01 22:10:01.918+00	116	\N	1126982881	96056	2254	0.9
2025-07-01 22:11:28.917+00	116	\N	1041420528	96087	2257	0.9
2025-07-01 22:11:37.188+00	116	\N	978202981	96075	2258	0.9
2025-07-02 07:23:50.66+00	116	\N	1126982881	96123	2676	0.9
2025-07-02 07:25:17.673+00	116	\N	1041420528	96155	2681	0.9
2025-07-02 07:25:26.295+00	116	\N	978202981	96144	2682	0.9
2025-07-02 07:54:36.694+00	116	\N	1126982881	96133	2694	0.9
2025-07-02 07:56:03.723+00	116	\N	1041420528	96164	2699	0.9
2025-07-02 07:56:12.369+00	116	\N	978202981	96153	2700	0.9
2025-07-02 08:25:22.724+00	116	\N	1126982881	96133	2715	0.9
2025-07-02 08:26:49.747+00	116	\N	1041420528	96164	2717	0.9
2025-07-02 08:26:58.439+00	116	\N	978202981	96152	2718	0.9
2025-07-02 08:56:08.791+00	116	\N	1126982881	96130	2733	0.9
2025-07-02 08:57:35.788+00	116	\N	1041420528	96163	2735	0.9
2025-07-02 08:57:44.506+00	116	\N	978202981	96152	2736	0.9
2025-07-02 09:26:54.833+00	116	\N	1126982881	96137	2774	0.9
2025-07-02 09:28:21.83+00	116	\N	1041420528	96159	2782	0.9
2025-07-02 09:28:30.569+00	116	\N	978202981	96149	2783	0.9
2025-07-02 09:57:40.885+00	116	\N	1126982881	96133	2863	0.9
2025-07-02 09:59:07.859+00	116	\N	1041420528	96156	2864	0.9
2025-07-02 09:59:16.652+00	116	\N	978202981	96146	2865	0.9
2025-07-02 10:28:26.936+00	116	\N	1126982881	96119	2915	0.9
2025-07-02 10:29:53.891+00	116	\N	1041420528	96141	2916	0.9
2025-07-02 10:30:02.699+00	116	\N	978202981	96131	2917	0.9
2025-07-02 10:59:12.97+00	116	\N	1126982881	96117	2943	0.9
2025-07-02 11:00:39.942+00	116	\N	1041420528	96133	2944	0.9
2025-07-02 11:00:48.745+00	116	\N	978202981	96124	2945	0.9
2025-07-02 12:00:45.044+00	116	\N	1126982881	96078	3009	0.9
2025-07-02 12:02:12.029+00	116	\N	1041420528	96100	3010	0.9
2025-07-02 12:02:20.852+00	116	\N	978202981	96089	3011	0.9
2025-07-02 12:31:31.107+00	116	\N	1126982881	96048	3042	0.9
2025-07-02 12:32:58.061+00	116	\N	1041420528	96072	3044	0.9
2025-07-02 12:33:06.913+00	116	\N	978202981	96062	3045	0.9
2025-07-02 13:02:17.161+00	116	\N	1126982881	96021	3061	0.9
2025-07-02 13:03:44.125+00	116	\N	1041420528	96044	3062	0.9
2025-07-02 13:03:52.953+00	116	\N	978202981	96035	3063	0.9
2025-07-02 13:33:03.231+00	116	\N	1126982881	96016	3086	0.9
2025-07-02 13:34:30.188+00	116	\N	1041420528	96040	3087	0.9
2025-07-02 13:34:39.016+00	116	\N	978202981	96031	3088	0.9
2025-07-02 14:03:49.289+00	116	\N	1126982881	96008	3131	0.9
2025-07-02 14:05:16.225+00	116	\N	1041420528	96028	3135	0.9
2025-07-02 14:05:25.045+00	116	\N	978202981	96018	3136	0.9
2025-07-02 14:34:35.336+00	116	\N	1126982881	95980	3153	0.9
2025-07-02 14:36:02.262+00	116	\N	1041420528	96002	3156	0.9
2025-07-02 14:36:11.103+00	116	\N	978202981	95994	3157	0.9
2025-07-02 15:05:21.397+00	116	\N	1126982881	95965	3173	0.9
2025-07-02 15:06:48.299+00	116	\N	1041420528	95987	3174	0.9
2025-07-02 15:06:57.176+00	116	\N	978202981	95977	3175	0.9
2025-07-02 15:36:07.439+00	116	\N	1126982881	95961	3196	0.9
2025-07-02 15:37:34.363+00	116	\N	1041420528	95973	3202	0.9
2025-07-02 15:37:43.225+00	116	\N	978202981	95964	3204	0.9
2025-07-02 16:06:53.486+00	116	\N	1126982881	95937	3255	0.9
2025-07-02 16:08:20.423+00	116	\N	1041420528	95958	3258	0.9
2025-07-02 16:08:29.262+00	116	\N	978202981	95949	3259	0.9
2025-07-02 16:37:39.526+00	116	\N	1126982881	95924	3288	0.9
2025-07-02 16:39:06.468+00	116	\N	1041420528	95947	3289	0.9
2025-07-02 16:39:15.328+00	116	\N	978202981	95938	3290	0.9
2025-07-02 17:08:25.557+00	116	\N	1126982881	95922	3317	0.9
2025-07-02 17:09:52.509+00	116	\N	1041420528	95944	3318	0.9
2025-07-02 17:10:01.399+00	116	\N	978202981	95935	3319	0.9
2025-07-02 17:39:11.597+00	116	\N	1126982881	95923	3344	0.9
2025-07-02 17:40:38.539+00	116	\N	1041420528	95945	3345	0.9
2025-07-02 17:40:47.475+00	116	\N	978202981	95936	3346	0.9
2025-07-02 18:09:57.66+00	116	\N	1126982881	95939	3362	0.9
2025-07-02 18:11:24.574+00	116	\N	1041420528	95961	3363	0.9
2025-07-02 18:11:33.526+00	116	\N	978202981	95953	3364	0.9
2025-07-02 18:40:43.696+00	116	\N	1126982881	95998	3382	0.9
2025-07-02 18:42:10.617+00	116	\N	1041420528	96020	3383	0.9
2025-07-02 18:42:19.59+00	116	\N	978202981	96012	3384	0.9
2025-07-02 19:11:29.715+00	116	\N	1126982881	96061	3400	0.9
2025-07-02 19:12:56.66+00	116	\N	1041420528	96086	3401	0.9
2025-07-02 19:13:05.637+00	116	\N	978202981	96078	3402	0.9
2025-07-02 19:42:15.767+00	116	\N	1126982881	96132	3422	0.9
2025-07-02 19:43:42.694+00	116	\N	1041420528	96160	3423	0.9
2025-07-02 19:43:51.692+00	116	\N	978202981	96151	3424	0.9
2025-07-02 20:13:01.805+00	116	\N	1126982881	96199	3445	0.9
2025-07-02 20:14:28.75+00	116	\N	1041420528	96227	3447	0.9
2025-07-02 20:14:37.788+00	116	\N	978202981	96220	3448	0.9
2025-07-02 21:09:57.671+00	116	\N	1041420528	96382	3485	0.9
2025-07-02 21:10:01.529+00	116	\N	1126982881	96355	3486	0.9
2025-07-02 21:10:06.749+00	116	\N	978202981	96374	3487	0.9
2025-07-02 21:40:47.572+00	116	\N	1126982881	96431	3507	0.9
2025-07-02 21:40:43.72+00	116	\N	1041420528	96457	3508	0.9
2025-07-02 21:40:52.785+00	116	\N	978202981	96450	3509	0.9
2025-07-02 22:11:33.599+00	116	\N	1126982881	96402	3526	0.9
2025-07-02 22:11:29.8+00	116	\N	1041420528	96430	3527	0.9
2025-07-02 22:11:38.85+00	116	\N	978202981	96420	3528	0.9
2025-07-02 22:42:19.65+00	116	\N	1126982881	96364	3552	0.9
2025-07-02 22:42:15.825+00	116	\N	1041420528	96389	3553	0.9
2025-07-02 22:42:24.908+00	116	\N	978202981	96381	3554	0.9
2025-07-02 23:13:01.876+00	116	\N	1041420528	96374	3572	0.9
2025-07-02 23:13:05.699+00	116	\N	1126982881	96349	3573	0.9
2025-07-02 23:13:10.963+00	116	\N	978202981	96365	3574	0.9
2025-07-02 23:43:47.911+00	116	\N	1041420528	96344	3595	0.9
2025-07-02 23:43:51.756+00	116	\N	1126982881	96321	3596	0.9
2025-07-02 23:43:57.011+00	116	\N	978202981	96335	3597	0.9
\.


--
-- Data for Name: _hyper_7_11_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_11_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-07-03 07:39:41.931+00	142	\N	1126982881	3.123	3946	0.9
2025-07-03 09:40:17.242+00	142	\N	1897240282	3.297	4027	0.9
2025-07-03 10:36:02.999+00	142	\N	1041420528	3.123	4065	0.9
2025-07-03 10:36:08.824+00	142	\N	978202981	3.134	4066	0.9
2025-07-03 11:42:41.636+00	142	\N	1126982881	3.126	4107	0.9
2025-07-03 15:45:41.353+00	142	\N	1126982881	3.13	4262	0.9
2025-07-03 17:46:15.819+00	142	\N	1897240282	3.296	4353	0.9
2025-07-03 18:42:02.484+00	142	\N	1041420528	3.123	4407	0.9
2025-07-03 18:42:08.322+00	142	\N	978202981	3.133	4408	0.9
2025-07-03 19:48:41.07+00	142	\N	1126982881	3.124	4471	0.9
2025-07-03 21:49:14.17+00	142	\N	1897240282	3.297	4594	0.9
2025-07-03 22:45:02.21+00	142	\N	1041420528	3.121	4681	0.9
2025-07-03 22:45:08.045+00	142	\N	978202981	3.136	4682	0.9
2025-07-03 23:51:40.78+00	142	\N	1126982881	3.116	4803	0.9
2025-07-04 09:58:11.756+00	142	\N	1897240282	3.302	5243	0.9
2025-07-04 12:00:39.885+00	142	\N	1126982881	3.119	5413	0.9
2025-07-04 14:01:11.018+00	142	\N	1897240282	3.295	5554	0.9
2025-07-04 20:06:39.328+00	142	telegraf	1126982881	3.116	6245	1
2025-07-04 22:07:09.719+00	142	telegraf	1897240282	3.299	6458	1
2025-07-04 23:03:00.568+00	142	telegraf	1041420528	3.113	6520	1
2025-07-04 23:03:06.402+00	142	telegraf	978202981	3.13	6521	1
2025-07-05 10:16:07.178+00	142	telegraf	1897240282	3.299	7025	1
2025-07-05 14:19:06.385+00	142	telegraf	1897240282	3.296	7183	1
2025-07-05 15:14:59.506+00	142	telegraf	1041420528	3.109	7214	1
2025-07-05 15:15:05.254+00	142	telegraf	978202981	3.121	7215	1
2025-07-05 20:24:37.541+00	142	telegraf	1126982881	3.109	7467	1
2025-07-05 22:25:04.75+00	142	telegraf	1897240282	3.298	7571	1
2025-07-05 23:20:58.992+00	142	telegraf	1041420528	3.11	7614	1
2025-07-05 23:21:04.691+00	142	telegraf	978202981	3.119	7615	1
2025-07-07 09:08:05.421+00	142	telegraf	1897240282	3.316	6	1
2025-07-07 09:10:55.129+00	142	telegraf	840973111	3.079	140	1
2025-07-07 09:10:56.261+00	142	telegraf	1523842139	3.092	141	1
2025-07-07 09:48:04.589+00	142	telegraf	1070166865	3.281	3	1
2025-07-07 11:48:01.373+00	142	telegraf	978202981	3.102	95	1
2025-07-07 11:47:55.451+00	142	telegraf	1041420528	3.086	96	1
2025-07-07 12:54:34.549+00	142	telegraf	1126982881	3.087	241	1
2025-07-07 13:13:55.172+00	142	telegraf	1523842139	3.093	408	1
2025-07-07 13:52:53.404+00	142	telegraf	3839865	3.077	722	1
2025-07-07 13:53:23.388+00	142	telegraf	632461688	3.085	727	1
2025-07-07 14:06:06.41+00	142	telegraf	840973111	3.073	835	1
2025-07-07 14:12:21.667+00	142	telegraf	333419537	3.074	873	1
2025-07-07 14:23:23.136+00	142	telegraf	305822513	3.094	1009	1
2025-07-07 14:53:32.089+00	142	telegraf	1897240282	3.299	1189	1
2025-07-08 08:02:54.053+00	142	telegraf	1041420528	3.084	47	1
2025-07-08 08:02:59.549+00	142	telegraf	978202981	3.102	49	1
2025-07-08 09:09:32.049+00	142	telegraf	1126982881	3.091	270	1
2025-07-09 09:23:36.518+00	142	telegraf	1897240282	3.3	6	1
2025-07-09 09:27:30.343+00	142	telegraf	1126982881	3.082	12	1
\.


--
-- Data for Name: _hyper_7_21_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_21_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-07-10 08:38:50.907+00	142	telegraf	1041420528	3.078	140	1
2025-07-10 08:38:56.322+00	142	telegraf	978202981	3.088	141	1
2025-07-10 09:45:28.495+00	142	telegraf	1126982881	3.08	193	1
2025-07-10 12:41:56.024+00	142	telegraf	978202981	3.091	312	1
2025-07-10 12:41:50.837+00	142	telegraf	1041420528	3.074	313	1
2025-07-10 16:44:50.557+00	142	telegraf	1041420528	3.079	481	1
2025-07-10 16:44:55.747+00	142	telegraf	978202981	3.087	482	1
2025-07-10 17:51:27.898+00	142	telegraf	1126982881	3.077	522	1
2025-07-11 06:53:27.308+00	142	telegraf	1897240282	3.319	5	1
2025-07-11 08:56:49.44+00	142	telegraf	1041420528	3.077	95	1
2025-07-11 08:56:54.607+00	142	telegraf	978202981	3.086	96	1
2025-07-12 05:52:14.41+00	142	telegraf	1897240282	3.315	12	1
2025-07-12 06:18:24.722+00	142	telegraf	1126982881	3.077	27	1
2025-07-12 09:14:52.932+00	142	telegraf	978202981	3.09	138	1
2025-07-12 09:14:47.791+00	142	telegraf	1041420528	3.076	139	1
2025-07-12 10:21:24.422+00	142	telegraf	1126982881	3.078	181	1
2025-07-12 17:20:46.228+00	142	telegraf	1041420528	3.079	450	1
2025-07-12 17:20:52.365+00	142	telegraf	978202981	3.087	451	1
2025-07-12 18:01:12.257+00	142	telegraf	1897240282	3.299	473	1
2025-07-12 18:27:23.881+00	142	telegraf	1126982881	3.08	490	1
2025-07-12 21:23:45.945+00	142	telegraf	1041420528	3.077	600	1
2025-07-12 21:23:52.085+00	142	telegraf	978202981	3.09	601	1
2025-07-12 22:04:11.592+00	142	telegraf	1897240282	3.296	625	1
2025-07-13 06:36:23.037+00	142	telegraf	1126982881	3.085	942	1
2025-07-13 13:35:44.833+00	142	telegraf	1041420528	3.08	1211	1
2025-07-13 14:42:22.454+00	142	telegraf	1126982881	3.082	1254	1
\.


--
-- Data for Name: _hyper_7_7_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_7_chunk ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
2025-06-28 13:09:17.59+00	142	\N	978202981	3.161	110	0.9
2025-06-28 13:09:11.767+00	142	\N	1041420528	3.144	111	0.9
2025-06-28 14:15:50.845+00	142	\N	1126982881	3.151	158	0.9
2025-06-28 15:17:20.736+00	142	\N	1897240282	3.294	206	0.9
2025-06-28 17:12:11.505+00	142	\N	1041420528	3.148	279	0.9
2025-06-28 17:12:17.317+00	142	\N	978202981	3.164	280	0.9
2025-06-28 18:18:50.553+00	142	\N	1126982881	3.15	346	0.9
2025-06-28 19:20:19.938+00	142	\N	1897240282	3.298	386	0.9
2025-06-30 14:51:46.351+00	142	\N	1126982881	3.143	763	0.9
2025-06-30 16:52:28.878+00	142	\N	1897240282	3.298	851	0.9
2025-06-30 17:48:07.256+00	142	\N	1041420528	3.138	889	0.9
2025-06-30 17:48:13.073+00	142	\N	978202981	3.153	890	0.9
2025-06-30 20:55:28.143+00	142	\N	1897240282	3.298	1102	0.9
2025-06-30 21:51:06.989+00	142	\N	1041420528	3.141	1145	0.9
2025-06-30 21:51:12.797+00	142	\N	978202981	3.15	1146	0.9
2025-07-01 05:57:06.438+00	142	\N	1041420528	3.136	1511	0.9
2025-07-01 05:57:12.245+00	142	\N	978202981	3.149	1512	0.9
2025-07-01 07:03:45.228+00	142	\N	1126982881	3.141	1555	0.9
2025-07-01 09:04:25.937+00	142	\N	1897240282	3.295	1638	0.9
2025-07-01 10:00:06.16+00	142	\N	1041420528	3.135	1675	0.9
2025-07-01 10:00:11.979+00	142	\N	978202981	3.149	1676	0.9
2025-07-01 13:07:25.262+00	142	\N	1897240282	3.294	1825	0.9
2025-07-01 14:03:05.878+00	142	\N	1041420528	3.132	1863	0.9
2025-07-01 14:03:11.713+00	142	\N	978202981	3.149	1864	0.9
2025-07-01 18:06:05.619+00	142	\N	1041420528	3.131	2027	0.9
2025-07-01 18:06:11.438+00	142	\N	978202981	3.148	2028	0.9
2025-07-01 19:12:44.464+00	142	\N	1126982881	3.147	2077	0.9
2025-07-01 21:13:23.898+00	142	\N	1897240282	3.303	2196	0.9
2025-07-01 22:09:05.348+00	142	\N	1041420528	3.133	2252	0.9
2025-07-01 22:09:11.224+00	142	\N	978202981	3.147	2253	0.9
2025-07-02 09:22:21.562+00	142	\N	1897240282	3.297	2763	0.9
2025-07-02 10:18:04.591+00	142	\N	1041420528	3.124	2907	0.9
2025-07-02 10:18:10.423+00	142	\N	978202981	3.14	2908	0.9
2025-07-02 13:25:20.86+00	142	\N	1897240282	3.293	3083	0.9
2025-07-02 14:21:04.332+00	142	\N	1041420528	3.125	3145	0.9
2025-07-02 14:21:10.153+00	142	\N	978202981	3.137	3146	0.9
2025-07-02 15:27:43.044+00	142	\N	1126982881	3.131	3188	0.9
2025-07-02 17:28:20.193+00	142	\N	1897240282	3.294	3338	0.9
2025-07-02 18:24:04.054+00	142	\N	1041420528	3.127	3370	0.9
2025-07-02 18:24:09.886+00	142	\N	978202981	3.136	3371	0.9
2025-07-02 19:30:42.772+00	142	\N	1126982881	3.132	3416	0.9
2025-07-02 21:31:19.513+00	142	\N	1897240282	3.299	3499	0.9
2025-07-02 22:27:03.808+00	142	\N	1041420528	3.123	3537	0.9
2025-07-02 22:27:09.615+00	142	\N	978202981	3.139	3538	0.9
2025-07-02 23:33:42.505+00	142	\N	1126982881	3.133	3588	0.9
\.


--
-- Data for Name: mqtt_consumer; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.mqtt_consumer ("time", host, event_id, optional_periods_0, optional_periods_1, optional_periods_2, sensor_id, sensor_period, source_address) FROM stdin;
2025-07-07 09:59:47.737	telegraf	40	\N	\N	\N	1	\N	840973111
2025-07-07 10:00:06.742	telegraf	46	60	600	1800	0	30	840973111
\.


--
-- Data for Name: sensor_button; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_button ("time", host, button, event_id, sensor_id, source_address) FROM stdin;
2025-07-04 18:14:43.491	telegraf	13	6083	125	1126982881
2025-07-04 18:17:13.688	telegraf	13	6096	125	1126982881
2025-07-04 19:39:43.381	telegraf	13	6204	125	1126982881
2025-07-08 08:27:56.097	telegraf	13	136	125	1041420528
2025-07-10 07:26:29.041	telegraf	13	30	125	978202981
\.


--
-- Data for Name: sensor_humidity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_humidity ("time", sensor_id, host, source_address, humidity, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_motion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_motion ("time", sensor_id, host, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_neighbors_count; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_neighbors_count ("time", sensor_id, host, source_address, neighbors, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_neighbors_detail; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_neighbors_detail ("time", sensor_id, host, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_pressure; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_pressure ("time", sensor_id, host, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_temperature; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_temperature ("time", sensor_id, host, source_address, temperature, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_voltage; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_voltage ("time", sensor_id, host, source_address, voltage, event_id, relevance) FROM stdin;
\.


--
-- Name: chunk_column_stats_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_column_stats_id_seq', 1, false);


--
-- Name: chunk_constraint_name; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_constraint_name', 1, false);


--
-- Name: chunk_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_id_seq', 21, true);


--
-- Name: continuous_agg_migrate_plan_step_step_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.continuous_agg_migrate_plan_step_step_id_seq', 1, false);


--
-- Name: dimension_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_id_seq', 7, true);


--
-- Name: dimension_slice_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_slice_id_seq', 21, true);


--
-- Name: hypertable_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.hypertable_id_seq', 7, true);


--
-- Name: bgw_job_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_config; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_config.bgw_job_id_seq', 1000, false);


--
-- Name: _hyper_1_16_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_16_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_16_chunk USING btree ("time" DESC);


--
-- Name: _hyper_1_5_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_5_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_5_chunk USING btree ("time" DESC);


--
-- Name: _hyper_1_9_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_9_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_9_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_17_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_17_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_17_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_2_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_2_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_2_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_8_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_8_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_8_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_10_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_10_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_10_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_15_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_15_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_15_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_1_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_1_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_13_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_13_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_13_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_18_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_18_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_18_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_3_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_3_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_3_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_14_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_14_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_14_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_19_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_19_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_19_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_4_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_4_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_4_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_12_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_12_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_12_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_20_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_20_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_20_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_6_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_6_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_6_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_11_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_11_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_11_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_21_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_21_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_21_chunk USING btree ("time" DESC);


--
-- Name: _hyper_7_7_chunk_sensor_voltage_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_7_7_chunk_sensor_voltage_time_idx ON _timescaledb_internal._hyper_7_7_chunk USING btree ("time" DESC);


--
-- Name: sensor_humidity_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_humidity_time_idx ON public.sensor_humidity USING btree ("time" DESC);


--
-- Name: sensor_motion_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_motion_time_idx ON public.sensor_motion USING btree ("time" DESC);


--
-- Name: sensor_neighbors_count_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_neighbors_count_time_idx ON public.sensor_neighbors_count USING btree ("time" DESC);


--
-- Name: sensor_neighbors_detail_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_neighbors_detail_time_idx ON public.sensor_neighbors_detail USING btree ("time" DESC);


--
-- Name: sensor_pressure_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_pressure_time_idx ON public.sensor_pressure USING btree ("time" DESC);


--
-- Name: sensor_temperature_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_temperature_time_idx ON public.sensor_temperature USING btree ("time" DESC);


--
-- Name: sensor_voltage_time_idx; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX sensor_voltage_time_idx ON public.sensor_voltage USING btree ("time" DESC);


--
-- Name: sensor_humidity ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_humidity FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_motion ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_motion FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_neighbors_count ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_neighbors_count FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_neighbors_detail ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_neighbors_detail FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_pressure ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_pressure FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_temperature ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_temperature FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- Name: sensor_voltage ts_insert_blocker; Type: TRIGGER; Schema: public; Owner: admin
--

CREATE TRIGGER ts_insert_blocker BEFORE INSERT ON public.sensor_voltage FOR EACH ROW EXECUTE FUNCTION _timescaledb_functions.insert_blocker();


--
-- PostgreSQL database dump complete
--

