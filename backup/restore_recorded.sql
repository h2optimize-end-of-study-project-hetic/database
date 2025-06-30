--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17
-- Dumped by pg_dump version 14.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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


--
-- Name: sensor_temperature; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_temperature (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    sink_id text,
    source_address bigint,
    temperature double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_temperature OWNER TO admin;

--
-- Name: _hyper_1_5_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_1_5_chunk (
    CONSTRAINT constraint_5 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_temperature);


ALTER TABLE _timescaledb_internal._hyper_1_5_chunk OWNER TO admin;

--
-- Name: sensor_humidity; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_humidity (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    sink_id text,
    source_address bigint,
    humidity double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_humidity OWNER TO admin;

--
-- Name: _hyper_2_2_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_2_2_chunk (
    CONSTRAINT constraint_2 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_humidity);


ALTER TABLE _timescaledb_internal._hyper_2_2_chunk OWNER TO admin;

--
-- Name: sensor_motion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.sensor_motion (
    "time" timestamp with time zone NOT NULL,
    sensor_id integer,
    sink_id text,
    source_address bigint,
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
    sink_id text,
    source_address bigint,
    neighbors integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_neighbors_count OWNER TO admin;

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
    sink_id text,
    source_address bigint,
    neighbor_address bigint,
    rssi integer,
    tx_power integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_neighbors_detail OWNER TO admin;

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
    sink_id text,
    source_address bigint,
    atmospheric_pressure integer,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_pressure OWNER TO admin;

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
    sink_id text,
    source_address bigint,
    voltage double precision,
    event_id integer,
    relevance double precision DEFAULT 1.0
);


ALTER TABLE public.sensor_voltage OWNER TO admin;

--
-- Name: _hyper_7_7_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: admin
--

CREATE TABLE _timescaledb_internal._hyper_7_7_chunk (
    CONSTRAINT constraint_7 CHECK ((("time" >= '2025-06-26 00:00:00+00'::timestamp with time zone) AND ("time" < '2025-07-03 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.sensor_voltage);


ALTER TABLE _timescaledb_internal._hyper_7_7_chunk OWNER TO admin;

--
-- Name: _hyper_1_5_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_2_2_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_2_2_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_3_1_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_3_1_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_4_3_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_4_3_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_5_4_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_5_4_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


--
-- Name: _hyper_6_6_chunk relevance; Type: DEFAULT; Schema: _timescaledb_internal; Owner: admin
--

ALTER TABLE ONLY _timescaledb_internal._hyper_6_6_chunk ALTER COLUMN relevance SET DEFAULT 1.0;


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
-- Data for Name: _hyper_1_5_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_1_5_chunk ("time", sensor_id, sink_id, source_address, temperature, event_id, relevance) FROM stdin;
2025-06-28 12:36:56.568+00	112	sink1	1041420528	28.04	82	0.9
2025-06-28 12:38:01.295+00	112	sink1	1126982881	28.28	85	0.9
2025-06-28 12:48:06.566+00	112	sink1	1126982881	28.53	96	0.9
2025-06-28 12:49:02.884+00	112	sink1	1041420528	28.29	99	0.9
2025-06-28 12:55:12.176+00	112	sink1	978202981	28.45	103	0.9
2025-06-28 13:18:52.568+00	112	sink1	1126982881	28.61	119	0.9
2025-06-28 13:19:48.916+00	112	sink1	1041420528	28.32	120	0.9
2025-06-28 13:25:58.147+00	112	sink1	978202981	28.55	123	0.9
2025-06-28 13:49:38.652+00	112	sink1	1126982881	28.47	143	0.9
2025-06-28 13:50:35.004+00	112	sink1	1041420528	28.28	144	0.9
2025-06-28 13:56:44.275+00	112	sink1	978202981	28.53	147	0.9
2025-06-28 14:17:23.11+00	112	sink1	1126982881	28.78	164	0.9
2025-06-28 14:17:49.181+00	112	sink1	1041420528	28.56	174	0.9
2025-06-28 14:17:55.321+00	112	sink1	978202981	28.79	177	0.9
2025-06-28 14:48:09.143+00	112	sink1	1126982881	28.82	191	0.9
2025-06-28 14:48:35.204+00	112	sink1	1041420528	28.81	192	0.9
2025-06-28 14:48:41.382+00	112	sink1	978202981	28.88	195	0.9
2025-06-28 15:18:55.178+00	112	sink1	1126982881	29.01	210	0.9
2025-06-28 15:19:21.258+00	112	sink1	1041420528	29.02	212	0.9
2025-06-28 15:19:27.415+00	112	sink1	978202981	29.11	214	0.9
2025-06-28 15:49:41.175+00	112	sink1	1126982881	29.16	228	0.9
2025-06-28 15:49:36.985+00	112	sink1	1041420528	29.27	229	0.9
2025-06-28 15:50:13.467+00	112	sink1	978202981	29.31	231	0.9
2025-06-28 16:20:27.25+00	112	sink1	1126982881	29.3	249	0.9
2025-06-28 16:20:23.046+00	112	sink1	1041420528	29.41	250	0.9
2025-06-28 16:20:59.555+00	112	sink1	978202981	29.42	254	0.9
2025-06-28 16:51:09.086+00	112	sink1	1041420528	29.49	268	0.9
2025-06-28 16:51:13.262+00	112	sink1	1126982881	29.34	269	0.9
2025-06-28 16:51:45.582+00	112	sink1	978202981	29.52	272	0.9
2025-06-28 17:21:59.316+00	112	sink1	1126982881	29.46	296	0.9
2025-06-28 17:21:55.122+00	112	sink1	1041420528	29.49	297	0.9
2025-06-28 17:22:31.687+00	112	sink1	978202981	29.53	302	0.9
2025-06-28 17:35:36.421+00	112	sink1	1126982881	29.21	311	0.9
2025-06-28 17:36:08.785+00	112	sink1	978202981	29.25	312	0.9
2025-06-28 17:46:07.765+00	112	sink1	1041420528	29.23	320	0.9
2025-06-28 18:06:22.492+00	112	sink1	1126982881	29	337	0.9
2025-06-28 18:06:54.901+00	112	sink1	978202981	29.08	338	0.9
2025-06-28 18:16:53.812+00	112	sink1	1041420528	29.04	342	0.9
2025-06-28 18:37:08.568+00	112	sink1	1126982881	28.94	359	0.9
2025-06-28 18:37:40.954+00	112	sink1	978202981	29.08	360	0.9
2025-06-28 18:47:39.872+00	112	sink1	1041420528	29.05	364	0.9
2025-06-28 19:07:54.569+00	112	sink1	1126982881	28.81	377	0.9
2025-06-28 19:08:26.958+00	112	sink1	978202981	28.85	378	0.9
2025-06-28 19:18:25.865+00	112	sink1	1041420528	28.84	382	0.9
2025-06-28 19:38:40.588+00	112	sink1	1126982881	28.75	397	0.9
2025-06-28 19:39:13.014+00	112	sink1	978202981	28.81	398	0.9
2025-06-28 19:49:11.968+00	112	sink1	1041420528	28.77	402	0.9
\.


--
-- Data for Name: _hyper_2_2_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_2_2_chunk ("time", sensor_id, sink_id, source_address, humidity, event_id, relevance) FROM stdin;
2025-06-28 12:23:55.83+00	114	sink1	978202981	57.58	56	0.9
2025-06-28 12:27:57.952+00	114	sink1	978202981	58.33	62	0.9
2025-06-28 12:28:58.472+00	114	sink1	978202981	57.7	74	0.9
2025-06-28 12:29:52.861+00	114	sink1	1041420528	56.1	76	0.9
2025-06-28 12:31:58.131+00	114	sink1	1126982881	58.31	77	0.9
2025-06-28 12:32:00.062+00	114	sink1	978202981	57.18	78	0.9
2025-06-28 12:37:26.838+00	114	sink1	1041420528	55.54	83	0.9
2025-06-28 12:39:34.007+00	114	sink1	978202981	56.66	92	0.9
2025-06-28 12:40:02.353+00	114	sink1	1126982881	57.81	94	0.9
2025-06-28 12:50:07.615+00	114	sink1	1126982881	57.29	100	0.9
2025-06-28 12:51:10.069+00	114	sink1	978202981	56.16	101	0.9
2025-06-28 12:52:04.467+00	114	sink1	1041420528	55.04	102	0.9
2025-06-28 13:13:51.853+00	114	sink1	978202981	55.64	115	0.9
2025-06-28 13:20:53.608+00	114	sink1	1126982881	56.84	121	0.9
2025-06-28 13:22:50.488+00	114	sink1	1041420528	54.64	122	0.9
2025-06-28 13:44:37.927+00	114	sink1	978202981	55.66	139	0.9
2025-06-28 13:51:39.718+00	114	sink1	1126982881	57.05	145	0.9
2025-06-28 13:53:36.584+00	114	sink1	1041420528	54.89	146	0.9
2025-06-28 14:15:24.012+00	114	sink1	978202981	55.53	157	0.9
2025-06-28 14:16:52.845+00	114	sink1	1126982881	57.65	162	0.9
2025-06-28 14:16:48.653+00	114	sink1	1041420528	55.53	163	0.9
2025-06-28 14:17:49.17+00	114	sink1	1041420528	54.88	175	0.9
2025-06-28 14:17:53.375+00	114	sink1	1126982881	57.15	176	0.9
2025-06-28 14:46:10.07+00	114	sink1	978202981	55.36	187	0.9
2025-06-28 14:48:35.2+00	114	sink1	1041420528	54.42	193	0.9
2025-06-28 14:48:39.408+00	114	sink1	1126982881	56.82	194	0.9
2025-06-28 15:16:56.102+00	114	sink1	978202981	55.25	205	0.9
2025-06-28 15:19:25.435+00	114	sink1	1126982881	56.71	211	0.9
2025-06-28 15:19:21.262+00	114	sink1	1041420528	54.33	213	0.9
2025-06-28 15:47:42.151+00	114	sink1	978202981	55.12	225	0.9
2025-06-28 15:50:11.442+00	114	sink1	1126982881	56.61	230	0.9
2025-06-28 15:50:07.242+00	114	sink1	1041420528	54.17	232	0.9
2025-06-28 16:18:28.243+00	114	sink1	978202981	55.08	248	0.9
2025-06-28 16:20:53.309+00	114	sink1	1041420528	54.11	252	0.9
2025-06-28 16:20:57.517+00	114	sink1	1126982881	56.63	253	0.9
2025-06-28 16:49:14.259+00	114	sink1	978202981	55.09	266	0.9
2025-06-28 16:51:43.522+00	114	sink1	1126982881	56.71	270	0.9
2025-06-28 16:51:39.348+00	114	sink1	1041420528	54.17	271	0.9
2025-06-28 17:20:00.376+00	114	sink1	978202981	55.13	286	0.9
2025-06-28 17:22:29.579+00	114	sink1	1126982881	56.84	301	0.9
2025-06-28 17:22:25.387+00	114	sink1	1041420528	54.36	303	0.9
2025-06-28 17:50:46.456+00	114	sink1	978202981	55.52	324	0.9
2025-06-28 17:53:11.451+00	114	sink1	1041420528	54.39	326	0.9
2025-06-28 17:53:15.657+00	114	sink1	1126982881	56.9	327	0.9
2025-06-28 18:21:32.532+00	114	sink1	978202981	55.74	347	0.9
2025-06-28 18:23:57.508+00	114	sink1	1041420528	54.53	349	0.9
2025-06-28 18:24:01.734+00	114	sink1	1126982881	57.02	350	0.9
2025-06-28 18:52:18.556+00	114	sink1	978202981	55.81	368	0.9
2025-06-28 18:54:47.746+00	114	sink1	1126982881	57.1	370	0.9
2025-06-28 18:54:43.531+00	114	sink1	1041420528	54.55	371	0.9
2025-06-28 19:23:04.598+00	114	sink1	978202981	56.19	387	0.9
2025-06-28 19:25:33.769+00	114	sink1	1126982881	57.2	391	0.9
2025-06-28 19:25:29.553+00	114	sink1	1041420528	54.79	392	0.9
2025-06-28 19:33:40.119+00	114	sink1	978202981	56.7	393	0.9
2025-06-28 19:56:19.851+00	114	sink1	1126982881	57.31	409	0.9
2025-06-28 19:56:15.651+00	114	sink1	1041420528	54.95	410	0.9
2025-06-28 20:04:26.247+00	114	sink1	978202981	56.59	412	0.9
\.


--
-- Data for Name: _hyper_3_1_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_3_1_chunk ("time", sensor_id, sink_id, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
2025-06-28 12:22:56.484+00	127	sink1	978202981	stationary	0	0	5	-1	65	53	0.9
2025-06-28 12:22:57.635+00	127	sink1	1126982881	stationary	0	0	3	-1	66	54	0.9
2025-06-28 12:22:56.653+00	127	sink1	1041420528	stationary	0	0	3	-2	64	55	0.9
2025-06-28 12:26:18.511+00	127	sink1	978202981	start-moving	0	1	1	20	67	57	0.9
2025-06-28 12:26:18.66+00	127	sink1	1126982881	start-moving	0	1	1	-2	68	58	0.9
2025-06-28 12:26:18.696+00	127	sink1	1041420528	start-moving	0	1	3	-1	65	59	0.9
2025-06-28 12:28:10.728+00	127	sink1	1041420528	stop-moving	11	15	3	-1	64	63	0.9
2025-06-28 12:28:23.666+00	127	sink1	1126982881	stop-moving	15	20	5	-1	65	66	0.9
2025-06-28 12:28:25.53+00	127	sink1	978202981	stop-moving	17	20	5	0	65	69	0.9
2025-06-28 12:36:54.724+00	127	sink1	1126982881	start-moving	0	1	6	-51	82	81	0.9
2025-06-28 12:38:00.728+00	127	sink1	1126982881	stop-moving	6	3	2	0	66	84	0.9
2025-06-28 12:38:10.788+00	127	sink1	1041420528	stationary	0	0	3	-1	64	88	0.9
2025-06-28 12:38:25.588+00	127	sink1	978202981	stationary	0	0	5	0	66	89	0.9
2025-06-28 12:48:00.769+00	127	sink1	1126982881	stationary	0	0	2	-1	65	95	0.9
2025-06-28 12:48:10.839+00	127	sink1	1041420528	stationary	0	0	4	0	63	97	0.9
2025-06-28 12:48:25.623+00	127	sink1	978202981	stationary	0	0	5	-1	67	98	0.9
2025-06-28 12:58:00.801+00	127	sink1	1126982881	stationary	0	0	3	-1	65	104	0.9
2025-06-28 12:58:10.888+00	127	sink1	1041420528	stationary	0	0	5	-1	64	105	0.9
2025-06-28 12:58:25.665+00	127	sink1	978202981	stationary	0	0	6	0	65	106	0.9
2025-06-28 13:08:00.809+00	127	sink1	1126982881	stationary	0	0	2	0	65	107	0.9
2025-06-28 13:08:11.012+00	127	sink1	1041420528	stationary	0	0	3	-1	65	108	0.9
2025-06-28 13:08:25.676+00	127	sink1	978202981	stationary	0	0	5	-1	66	109	0.9
2025-06-28 13:08:25.676+00	127	sink1	978202981	stationary	0	0	5	-1	66	109	0.9
2025-06-28 13:18:00.833+00	127	sink1	1126982881	stationary	0	0	3	0	64	116	0.9
2025-06-28 13:18:11.108+00	127	sink1	1041420528	stationary	0	0	3	-1	64	117	0.9
2025-06-28 13:18:25.71+00	127	sink1	978202981	stationary	0	0	5	-1	66	118	0.9
2025-06-28 13:28:00.877+00	127	sink1	1126982881	stationary	0	0	3	0	66	124	0.9
2025-06-28 13:28:11.213+00	127	sink1	1041420528	stationary	0	0	4	0	64	125	0.9
2025-06-28 13:28:25.737+00	127	sink1	978202981	stationary	0	0	4	0	64	126	0.9
2025-06-28 13:35:53.001+00	127	sink1	1126982881	start-moving	0	1	26	12	54	127	0.9
2025-06-28 13:35:53.79+00	127	sink1	978202981	start-moving	0	1	4	-1	65	128	0.9
2025-06-28 13:36:52.805+00	127	sink1	978202981	stop-moving	1	1	5	-1	65	129	0.9
2025-06-28 13:36:53.007+00	127	sink1	1126982881	stop-moving	1	1	2	0	65	132	0.9
2025-06-28 13:38:11.356+00	127	sink1	1041420528	stationary	0	0	2	-1	64	135	0.9
2025-06-28 13:46:52.868+00	127	sink1	978202981	stationary	0	0	5	0	65	140	0.9
2025-06-28 13:46:53.087+00	127	sink1	1126982881	stationary	0	0	3	-1	64	141	0.9
2025-06-28 13:48:11.456+00	127	sink1	1041420528	stationary	0	0	4	0	64	142	0.9
2025-06-28 13:56:52.931+00	127	sink1	978202981	stationary	0	0	5	-1	64	148	0.9
2025-06-28 13:56:53.161+00	127	sink1	1126982881	stationary	0	0	4	0	65	149	0.9
2025-06-28 13:58:11.561+00	127	sink1	1041420528	stationary	0	0	4	0	64	150	0.9
2025-06-28 14:06:53.047+00	127	sink1	978202981	stationary	0	0	4	-2	66	151	0.9
2025-06-28 14:06:53.217+00	127	sink1	1126982881	stationary	0	0	3	-1	65	152	0.9
2025-06-28 14:08:11.662+00	127	sink1	1041420528	stationary	0	0	4	-2	64	153	0.9
2025-06-28 14:16:05.234+00	127	sink1	1126982881	start-moving	0	1	-55	22	-24	159	0.9
2025-06-28 14:16:13.174+00	127	sink1	978202981	start-moving	0	1	11	16	85	160	0.9
2025-06-28 14:16:15.72+00	127	sink1	1041420528	start-moving	0	1	-10	-6	76	161	0.9
2025-06-28 14:17:30.186+00	127	sink1	978202981	stop-moving	6	4	5	0	66	165	0.9
2025-06-28 14:17:37.737+00	127	sink1	1041420528	stop-moving	5	3	3	0	64	168	0.9
2025-06-28 14:17:48.246+00	127	sink1	1126982881	stop-moving	17	10	3	-2	64	171	0.9
2025-06-28 14:27:30.304+00	127	sink1	978202981	stationary	0	0	6	0	65	178	0.9
2025-06-28 14:27:37.781+00	127	sink1	1041420528	stationary	0	0	3	1	62	179	0.9
2025-06-28 14:27:48.32+00	127	sink1	1126982881	stationary	0	0	3	-1	65	180	0.9
2025-06-28 14:37:30.333+00	127	sink1	978202981	stationary	0	0	6	0	65	181	0.9
2025-06-28 14:37:37.815+00	127	sink1	1041420528	stationary	0	0	4	1	64	182	0.9
2025-06-28 14:37:48.395+00	127	sink1	1126982881	stationary	0	0	3	-2	65	183	0.9
2025-06-28 14:47:30.373+00	127	sink1	978202981	stationary	0	0	5	0	65	188	0.9
2025-06-28 14:47:37.909+00	127	sink1	1041420528	stationary	0	0	3	0	63	189	0.9
2025-06-28 14:47:48.463+00	127	sink1	1126982881	stationary	0	0	3	-1	65	190	0.9
2025-06-28 14:57:30.419+00	127	sink1	978202981	stationary	0	0	5	0	66	196	0.9
2025-06-28 14:57:37.957+00	127	sink1	1041420528	stationary	0	0	4	0	64	197	0.9
2025-06-28 14:57:48.511+00	127	sink1	1126982881	stationary	0	0	2	-1	65	198	0.9
2025-06-28 15:07:30.452+00	127	sink1	978202981	stationary	0	0	5	0	64	199	0.9
2025-06-28 15:07:38.053+00	127	sink1	1041420528	stationary	0	0	3	0	64	200	0.9
2025-06-28 15:07:48.537+00	127	sink1	1126982881	stationary	0	0	3	-1	65	201	0.9
2025-06-28 15:17:30.487+00	127	sink1	978202981	stationary	0	0	5	0	65	207	0.9
2025-06-28 15:17:38.17+00	127	sink1	1041420528	stationary	0	0	3	0	64	208	0.9
2025-06-28 15:17:48.57+00	127	sink1	1126982881	stationary	0	0	3	-2	65	209	0.9
2025-06-28 15:27:30.497+00	127	sink1	978202981	stationary	0	0	5	1	64	215	0.9
2025-06-28 15:27:38.249+00	127	sink1	1041420528	stationary	0	0	4	0	64	216	0.9
2025-06-28 15:27:48.584+00	127	sink1	1126982881	stationary	0	0	3	-2	66	217	0.9
2025-06-28 15:37:30.52+00	127	sink1	978202981	stationary	0	0	6	0	66	218	0.9
2025-06-28 15:37:38.373+00	127	sink1	1041420528	stationary	0	0	4	0	64	219	0.9
2025-06-28 15:37:48.61+00	127	sink1	1126982881	stationary	0	0	4	-2	66	220	0.9
2025-06-28 15:47:30.548+00	127	sink1	978202981	stationary	0	0	5	0	65	224	0.9
2025-06-28 15:47:38.42+00	127	sink1	1041420528	stationary	0	0	3	-1	65	226	0.9
2025-06-28 15:47:48.632+00	127	sink1	1126982881	stationary	0	0	3	-1	66	227	0.9
2025-06-28 15:57:30.604+00	127	sink1	978202981	stationary	0	0	5	0	66	233	0.9
2025-06-28 15:57:38.527+00	127	sink1	1041420528	stationary	0	0	4	1	64	234	0.9
2025-06-28 15:57:48.691+00	127	sink1	1126982881	stationary	0	0	3	-2	66	235	0.9
2025-06-28 16:07:30.65+00	127	sink1	978202981	stationary	0	0	5	1	66	236	0.9
2025-06-28 16:07:38.65+00	127	sink1	1041420528	stationary	0	0	4	0	65	237	0.9
2025-06-28 16:07:48.763+00	127	sink1	1126982881	stationary	0	0	3	-2	66	238	0.9
2025-06-28 16:09:44.781+00	127	sink1	1126982881	start-moving	0	1	4	-2	66	239	0.9
2025-06-28 16:10:44.791+00	127	sink1	1126982881	stop-moving	1	1	3	-2	67	240	0.9
2025-06-28 16:17:30.706+00	127	sink1	978202981	stationary	0	0	5	0	65	246	0.9
2025-06-28 16:17:38.8+00	127	sink1	1041420528	stationary	0	0	4	0	63	247	0.9
2025-06-28 16:20:44.839+00	127	sink1	1126982881	stationary	0	0	4	-1	65	251	0.9
2025-06-28 16:27:30.886+00	127	sink1	978202981	stationary	0	0	5	0	65	255	0.9
2025-06-28 16:27:38.901+00	127	sink1	1041420528	stationary	0	0	3	0	63	256	0.9
2025-06-28 16:30:44.891+00	127	sink1	1126982881	stationary	0	0	2	-2	66	257	0.9
2025-06-28 16:37:31.046+00	127	sink1	978202981	stationary	0	0	5	0	66	258	0.9
2025-06-28 16:37:39.009+00	127	sink1	1041420528	stationary	0	0	4	0	64	259	0.9
2025-06-28 16:40:44.921+00	127	sink1	1126982881	stationary	0	0	3	-1	65	260	0.9
2025-06-28 16:47:31.178+00	127	sink1	978202981	stationary	0	0	5	-1	65	264	0.9
2025-06-28 16:47:39.097+00	127	sink1	1041420528	stationary	0	0	3	0	63	265	0.9
2025-06-28 16:50:44.987+00	127	sink1	1126982881	stationary	0	0	4	-1	65	267	0.9
2025-06-28 16:57:31.221+00	127	sink1	978202981	stationary	0	0	5	0	64	273	0.9
2025-06-28 16:57:39.152+00	127	sink1	1041420528	stationary	0	0	3	1	66	274	0.9
2025-06-28 17:00:45.066+00	127	sink1	1126982881	stationary	0	0	3	-1	66	275	0.9
2025-06-28 17:07:31.261+00	127	sink1	978202981	stationary	0	0	6	0	66	276	0.9
2025-06-28 17:07:39.231+00	127	sink1	1041420528	stationary	0	0	4	-1	64	277	0.9
2025-06-28 17:10:45.177+00	127	sink1	1126982881	stationary	0	0	3	-2	64	278	0.9
2025-06-28 17:17:31.31+00	127	sink1	978202981	stationary	0	0	6	0	64	284	0.9
2025-06-28 17:17:39.328+00	127	sink1	1041420528	stationary	0	0	3	1	64	285	0.9
2025-06-28 17:20:13.32+00	127	sink1	978202981	start-moving	0	1	19	11	56	287	0.9
2025-06-28 17:20:14.235+00	127	sink1	1126982881	start-moving	0	1	3	14	56	288	0.9
2025-06-28 17:20:16.333+00	127	sink1	1041420528	start-moving	0	1	14	7	66	289	0.9
2025-06-28 17:21:17.326+00	127	sink1	978202981	stop-moving	5	8	3	-1	66	290	0.9
2025-06-28 17:21:17.35+00	127	sink1	1041420528	stop-moving	2	2	3	-2	65	293	0.9
2025-06-28 17:22:06.248+00	127	sink1	1126982881	stop-moving	3	5	4	-1	67	298	0.9
2025-06-28 17:24:03.365+00	127	sink1	1041420528	start-moving	0	1	3	-2	63	304	0.9
2025-06-28 17:25:03.368+00	127	sink1	1041420528	stop-moving	1	1	3	-2	64	305	0.9
2025-06-28 17:31:17.361+00	127	sink1	978202981	stationary	0	0	5	0	65	308	0.9
2025-06-28 17:32:06.286+00	127	sink1	1126982881	stationary	0	0	4	-2	66	309	0.9
2025-06-28 17:35:03.404+00	127	sink1	1041420528	stationary	0	0	3	-2	65	310	0.9
2025-06-28 17:41:17.419+00	127	sink1	978202981	stationary	0	0	4	-1	65	313	0.9
2025-06-28 17:42:06.348+00	127	sink1	1126982881	stationary	0	0	3	-1	66	314	0.9
2025-06-28 17:44:45.441+00	127	sink1	978202981	start-moving	0	1	4	-2	65	315	0.9
2025-06-28 17:45:03.477+00	127	sink1	1041420528	stationary	0	0	4	-1	65	316	0.9
2025-06-28 17:45:58.447+00	127	sink1	978202981	stop-moving	2	2	4	-1	66	317	0.9
2025-06-28 17:52:06.383+00	127	sink1	1126982881	stationary	0	0	3	-1	65	325	0.9
2025-06-28 17:55:03.544+00	127	sink1	1041420528	stationary	0	0	3	-1	64	328	0.9
2025-06-28 17:55:58.49+00	127	sink1	978202981	stationary	0	0	4	0	65	329	0.9
2025-06-28 18:02:06.435+00	127	sink1	1126982881	stationary	0	0	3	-1	65	330	0.9
2025-06-28 18:03:56.448+00	127	sink1	1126982881	start-moving	0	1	5	-13	18	331	0.9
2025-06-28 18:04:56.454+00	127	sink1	1126982881	stop-moving	1	1	3	-1	66	332	0.9
2025-06-28 18:05:03.65+00	127	sink1	1041420528	stationary	0	0	4	-2	65	335	0.9
2025-06-28 18:05:58.541+00	127	sink1	978202981	stationary	0	0	4	-1	66	336	0.9
2025-06-28 18:14:56.493+00	127	sink1	1126982881	stationary	0	0	3	-2	66	339	0.9
2025-06-28 18:15:03.705+00	127	sink1	1041420528	stationary	0	0	3	-2	65	340	0.9
2025-06-28 18:15:58.591+00	127	sink1	978202981	stationary	0	0	4	-1	65	341	0.9
2025-06-28 18:23:15.714+00	127	sink1	978202981	start-moving	0	1	4	0	65	348	0.9
2025-06-28 18:24:14.736+00	127	sink1	978202981	stop-moving	1	1	4	0	66	351	0.9
2025-06-28 18:24:56.543+00	127	sink1	1126982881	stationary	0	0	3	-2	66	354	0.9
2025-06-28 18:25:03.762+00	127	sink1	1041420528	stationary	0	0	4	-2	64	355	0.9
2025-06-28 18:34:14.871+00	127	sink1	978202981	stationary	0	0	4	-1	65	356	0.9
2025-06-28 18:34:56.592+00	127	sink1	1126982881	stationary	0	0	4	-2	66	357	0.9
2025-06-28 18:35:03.811+00	127	sink1	1041420528	stationary	0	0	3	-1	64	358	0.9
2025-06-28 18:44:15+00	127	sink1	978202981	stationary	0	0	4	-1	65	361	0.9
2025-06-28 18:44:56.728+00	127	sink1	1126982881	stationary	0	0	4	-1	65	362	0.9
2025-06-28 18:45:03.868+00	127	sink1	1041420528	stationary	0	0	2	-2	64	363	0.9
2025-06-28 18:54:15.037+00	127	sink1	978202981	stationary	0	0	4	-1	66	369	0.9
2025-06-28 18:54:56.753+00	127	sink1	1126982881	stationary	0	0	3	-1	65	372	0.9
2025-06-28 18:55:03.903+00	127	sink1	1041420528	stationary	0	0	3	-2	64	373	0.9
2025-06-28 19:04:15.053+00	127	sink1	978202981	stationary	0	0	4	-1	65	374	0.9
2025-06-28 19:04:56.788+00	127	sink1	1126982881	stationary	0	0	3	-2	66	375	0.9
2025-06-28 19:05:04.045+00	127	sink1	1041420528	stationary	0	0	3	-2	64	376	0.9
2025-06-28 19:14:15.085+00	127	sink1	978202981	stationary	0	0	4	0	64	379	0.9
2025-06-28 19:14:56.862+00	127	sink1	1126982881	stationary	0	0	4	-1	65	380	0.9
2025-06-28 19:15:04.16+00	127	sink1	1041420528	stationary	0	0	4	-2	65	381	0.9
2025-06-28 19:24:15.115+00	127	sink1	978202981	stationary	0	0	5	-1	66	388	0.9
2025-06-28 19:24:56.914+00	127	sink1	1126982881	stationary	0	0	4	-1	66	389	0.9
2025-06-28 19:25:04.268+00	127	sink1	1041420528	stationary	0	0	3	-3	65	390	0.9
2025-06-28 19:34:15.157+00	127	sink1	978202981	stationary	0	0	4	-1	65	394	0.9
2025-06-28 19:34:57.001+00	127	sink1	1126982881	stationary	0	0	3	-2	65	395	0.9
2025-06-28 19:35:04.363+00	127	sink1	1041420528	stationary	0	0	3	-1	64	396	0.9
2025-06-28 19:44:15.214+00	127	sink1	978202981	stationary	0	0	5	-1	66	399	0.9
2025-06-28 19:44:57.084+00	127	sink1	1126982881	stationary	0	0	3	-1	65	400	0.9
2025-06-28 19:45:04.521+00	127	sink1	1041420528	stationary	0	0	3	-1	64	401	0.9
2025-06-28 19:54:15.271+00	127	sink1	978202981	stationary	0	0	4	0	66	406	0.9
2025-06-28 19:54:57.143+00	127	sink1	1126982881	stationary	0	0	4	-2	65	407	0.9
2025-06-28 19:55:04.648+00	127	sink1	1041420528	stationary	0	0	2	-2	63	408	0.9
2025-06-28 20:04:15.318+00	127	sink1	978202981	stationary	0	0	4	-1	65	411	0.9
2025-06-28 20:04:57.193+00	127	sink1	1126982881	stationary	0	0	3	-2	66	413	0.9
2025-06-28 20:05:04.749+00	127	sink1	1041420528	stationary	0	0	4	-1	64	414	0.9
\.


--
-- Data for Name: _hyper_4_3_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_4_3_chunk ("time", sensor_id, sink_id, source_address, neighbors, event_id, relevance) FROM stdin;
2025-06-28 12:28:12.201+00	193	sink1	1041420528	3	64	0.9
2025-06-28 12:28:25.152+00	193	sink1	1126982881	3	67	0.9
2025-06-28 12:28:27.003+00	193	sink1	978202981	3	70	0.9
2025-06-28 12:38:02.198+00	193	sink1	1126982881	3	86	0.9
2025-06-28 13:36:54.285+00	193	sink1	978202981	2	130	0.9
2025-06-28 13:36:54.489+00	193	sink1	1126982881	3	133	0.9
2025-06-28 14:17:31.667+00	193	sink1	978202981	3	166	0.9
2025-06-28 14:17:39.22+00	193	sink1	1041420528	3	169	0.9
2025-06-28 14:17:49.735+00	193	sink1	1126982881	3	172	0.9
2025-06-28 16:10:46.277+00	193	sink1	1126982881	3	241	0.9
2025-06-28 17:21:18.8+00	193	sink1	978202981	2	291	0.9
2025-06-28 17:21:18.831+00	193	sink1	1041420528	3	294	0.9
2025-06-28 17:22:07.726+00	193	sink1	1126982881	3	299	0.9
2025-06-28 17:25:04.841+00	193	sink1	1041420528	3	306	0.9
2025-06-28 17:45:59.925+00	193	sink1	978202981	3	318	0.9
2025-06-28 18:04:57.928+00	193	sink1	1126982881	3	333	0.9
2025-06-28 18:24:16.217+00	193	sink1	978202981	3	352	0.9
\.


--
-- Data for Name: _hyper_5_4_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_5_4_chunk ("time", sensor_id, sink_id, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
2025-06-28 12:28:12.207+00	192	sink1	1041420528	978202981	-29	4	65	0.9
2025-06-28 12:28:12.207+00	192	sink1	1041420528	1126982881	-46	4	65	0.9
2025-06-28 12:28:12.207+00	192	sink1	1041420528	1897240282	-54	8	65	0.9
2025-06-28 12:28:25.15+00	192	sink1	1126982881	1897240282	-33	8	68	0.9
2025-06-28 12:28:25.15+00	192	sink1	1126982881	978202981	-40	4	68	0.9
2025-06-28 12:28:25.15+00	192	sink1	1126982881	1041420528	-46	4	68	0.9
2025-06-28 12:28:27.001+00	192	sink1	978202981	1041420528	-30	4	71	0.9
2025-06-28 12:28:27.001+00	192	sink1	978202981	1897240282	-34	8	71	0.9
2025-06-28 12:28:27.001+00	192	sink1	978202981	1126982881	-41	4	71	0.9
2025-06-28 12:38:02.212+00	192	sink1	1126982881	1041420528	-45	4	87	0.9
2025-06-28 12:38:02.212+00	192	sink1	1126982881	978202981	-49	4	87	0.9
2025-06-28 12:38:02.212+00	192	sink1	1126982881	1897240282	-56	8	87	0.9
2025-06-28 13:36:54.276+00	192	sink1	978202981	1041420528	-29	4	131	0.9
2025-06-28 13:36:54.276+00	192	sink1	978202981	1897240282	-35	8	131	0.9
2025-06-28 13:36:54.487+00	192	sink1	1126982881	1897240282	-34	8	134	0.9
2025-06-28 13:36:54.487+00	192	sink1	1126982881	978202981	-35	4	134	0.9
2025-06-28 13:36:54.487+00	192	sink1	1126982881	1041420528	-43	4	134	0.9
2025-06-28 14:17:31.666+00	192	sink1	978202981	1126982881	-30	4	167	0.9
2025-06-28 14:17:31.666+00	192	sink1	978202981	1897240282	-33	8	167	0.9
2025-06-28 14:17:31.666+00	192	sink1	978202981	1041420528	-33	4	167	0.9
2025-06-28 14:17:39.219+00	192	sink1	1041420528	978202981	-31	4	170	0.9
2025-06-28 14:17:39.219+00	192	sink1	1041420528	1897240282	-44	8	170	0.9
2025-06-28 14:17:39.219+00	192	sink1	1041420528	1126982881	-45	4	170	0.9
2025-06-28 14:17:49.725+00	192	sink1	1126982881	1897240282	-34	8	173	0.9
2025-06-28 14:17:49.725+00	192	sink1	1126982881	978202981	-38	4	173	0.9
2025-06-28 14:17:49.725+00	192	sink1	1126982881	1041420528	-46	4	173	0.9
2025-06-28 16:10:46.267+00	192	sink1	1126982881	978202981	-32	4	242	0.9
2025-06-28 16:10:46.267+00	192	sink1	1126982881	1897240282	-33	8	242	0.9
2025-06-28 16:10:46.267+00	192	sink1	1126982881	1041420528	-44	4	242	0.9
2025-06-28 17:21:18.806+00	192	sink1	978202981	1126982881	-15	4	292	0.9
2025-06-28 17:21:18.806+00	192	sink1	978202981	1897240282	-56	8	292	0.9
2025-06-28 17:21:18.829+00	192	sink1	1041420528	1126982881	-16	4	295	0.9
2025-06-28 17:21:18.829+00	192	sink1	1041420528	978202981	-18	4	295	0.9
2025-06-28 17:21:18.829+00	192	sink1	1041420528	1897240282	-53	8	295	0.9
2025-06-28 17:22:07.733+00	192	sink1	1126982881	978202981	-15	4	300	0.9
2025-06-28 17:22:07.733+00	192	sink1	1126982881	1041420528	-16	4	300	0.9
2025-06-28 17:22:07.733+00	192	sink1	1126982881	1897240282	-57	8	300	0.9
2025-06-28 17:25:04.855+00	192	sink1	1041420528	1126982881	-16	4	307	0.9
2025-06-28 17:25:04.855+00	192	sink1	1041420528	978202981	-18	4	307	0.9
2025-06-28 17:25:04.855+00	192	sink1	1041420528	1897240282	-52	8	307	0.9
2025-06-28 17:45:59.923+00	192	sink1	978202981	1126982881	-15	4	319	0.9
2025-06-28 17:45:59.923+00	192	sink1	978202981	1041420528	-19	4	319	0.9
2025-06-28 17:45:59.923+00	192	sink1	978202981	1897240282	-53	8	319	0.9
2025-06-28 18:04:57.934+00	192	sink1	1126982881	978202981	-15	4	334	0.9
2025-06-28 18:04:57.934+00	192	sink1	1126982881	1041420528	-18	4	334	0.9
2025-06-28 18:04:57.934+00	192	sink1	1126982881	1897240282	-57	8	334	0.9
2025-06-28 18:24:16.207+00	192	sink1	978202981	1126982881	-15	4	353	0.9
2025-06-28 18:24:16.207+00	192	sink1	978202981	1041420528	-19	4	353	0.9
2025-06-28 18:24:16.207+00	192	sink1	978202981	1897240282	-54	8	353	0.9
\.


--
-- Data for Name: _hyper_6_6_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_6_6_chunk ("time", sensor_id, sink_id, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
2025-06-28 12:39:32.065+00	116	sink1	1126982881	96789	90	0.9
2025-06-28 12:39:33.987+00	116	sink1	978202981	96804	91	0.9
2025-06-28 12:39:27.852+00	116	sink1	1041420528	96813	93	0.9
2025-06-28 13:10:13.868+00	116	sink1	1041420528	96781	112	0.9
2025-06-28 13:10:18.076+00	116	sink1	1126982881	96756	113	0.9
2025-06-28 13:10:19.994+00	116	sink1	978202981	96771	114	0.9
2025-06-28 13:40:59.962+00	116	sink1	1041420528	96751	136	0.9
2025-06-28 13:41:04.136+00	116	sink1	1126982881	96727	137	0.9
2025-06-28 13:41:06.053+00	116	sink1	978202981	96743	138	0.9
2025-06-28 14:11:50.201+00	116	sink1	1126982881	96702	154	0.9
2025-06-28 14:11:46.006+00	116	sink1	1041420528	96727	155	0.9
2025-06-28 14:11:52.144+00	116	sink1	978202981	96716	156	0.9
2025-06-28 14:42:36.236+00	116	sink1	1126982881	96684	184	0.9
2025-06-28 14:42:38.202+00	116	sink1	978202981	96698	185	0.9
2025-06-28 14:42:32.034+00	116	sink1	1041420528	96710	186	0.9
2025-06-28 15:13:22.267+00	116	sink1	1126982881	96668	202	0.9
2025-06-28 15:13:24.233+00	116	sink1	978202981	96682	203	0.9
2025-06-28 15:13:18.097+00	116	sink1	1041420528	96692	204	0.9
2025-06-28 15:44:04.081+00	116	sink1	1041420528	96682	221	0.9
2025-06-28 15:44:08.265+00	116	sink1	1126982881	96657	222	0.9
2025-06-28 15:44:10.288+00	116	sink1	978202981	96671	223	0.9
2025-06-28 16:14:54.336+00	116	sink1	1126982881	96644	243	0.9
2025-06-28 16:14:50.126+00	116	sink1	1041420528	96669	244	0.9
2025-06-28 16:14:56.364+00	116	sink1	978202981	96659	245	0.9
2025-06-28 16:45:36.173+00	116	sink1	1041420528	96655	261	0.9
2025-06-28 16:45:40.339+00	116	sink1	1126982881	96631	262	0.9
2025-06-28 16:45:42.392+00	116	sink1	978202981	96645	263	0.9
2025-06-28 17:16:26.395+00	116	sink1	1126982881	96624	281	0.9
2025-06-28 17:16:28.508+00	116	sink1	978202981	96638	282	0.9
2025-06-28 17:16:22.214+00	116	sink1	1041420528	96648	283	0.9
2025-06-28 17:47:12.452+00	116	sink1	1126982881	96627	321	0.9
2025-06-28 17:47:08.272+00	116	sink1	1041420528	96651	322	0.9
2025-06-28 17:47:14.562+00	116	sink1	978202981	96640	323	0.9
2025-06-28 18:17:58.532+00	116	sink1	1126982881	96633	343	0.9
2025-06-28 18:17:54.321+00	116	sink1	1041420528	96658	344	0.9
2025-06-28 18:18:00.658+00	116	sink1	978202981	96648	345	0.9
2025-06-28 18:48:44.591+00	116	sink1	1126982881	96670	365	0.9
2025-06-28 18:48:46.709+00	116	sink1	978202981	96685	366	0.9
2025-06-28 18:48:40.371+00	116	sink1	1041420528	96695	367	0.9
2025-06-28 19:19:26.379+00	116	sink1	1041420528	96708	383	0.9
2025-06-28 19:19:30.587+00	116	sink1	1126982881	96684	384	0.9
2025-06-28 19:19:32.732+00	116	sink1	978202981	96698	385	0.9
2025-06-28 19:50:12.469+00	116	sink1	1041420528	96732	403	0.9
2025-06-28 19:50:16.663+00	116	sink1	1126982881	96707	404	0.9
2025-06-28 19:50:18.821+00	116	sink1	978202981	96723	405	0.9
\.


--
-- Data for Name: _hyper_7_7_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: admin
--

COPY _timescaledb_internal._hyper_7_7_chunk ("time", sensor_id, sink_id, source_address, voltage, event_id, relevance) FROM stdin;
2025-06-28 13:09:17.59+00	142	sink1	978202981	3.161	110	0.9
2025-06-28 13:09:11.767+00	142	sink1	1041420528	3.144	111	0.9
2025-06-28 14:15:50.845+00	142	sink1	1126982881	3.151	158	0.9
2025-06-28 15:17:20.736+00	142	sink1	1897240282	3.294	206	0.9
2025-06-28 17:12:11.505+00	142	sink1	1041420528	3.148	279	0.9
2025-06-28 17:12:17.317+00	142	sink1	978202981	3.164	280	0.9
2025-06-28 18:18:50.553+00	142	sink1	1126982881	3.15	346	0.9
2025-06-28 19:20:19.938+00	142	sink1	1897240282	3.298	386	0.9
\.


--
-- Data for Name: sensor_humidity; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_humidity ("time", sensor_id, sink_id, source_address, humidity, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_motion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_motion ("time", sensor_id, sink_id, source_address, state, move_duration, move_number, x_axis, y_axis, z_axis, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_neighbors_count; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_neighbors_count ("time", sensor_id, sink_id, source_address, neighbors, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_neighbors_detail; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_neighbors_detail ("time", sensor_id, sink_id, source_address, neighbor_address, rssi, tx_power, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_pressure; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_pressure ("time", sensor_id, sink_id, source_address, atmospheric_pressure, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_temperature; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_temperature ("time", sensor_id, sink_id, source_address, temperature, event_id, relevance) FROM stdin;
\.


--
-- Data for Name: sensor_voltage; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.sensor_voltage ("time", sensor_id, sink_id, source_address, voltage, event_id, relevance) FROM stdin;
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

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_id_seq', 7, true);


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

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_slice_id_seq', 7, true);


--
-- Name: hypertable_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_catalog.hypertable_id_seq', 7, true);


--
-- Name: bgw_job_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_config; Owner: admin
--

SELECT pg_catalog.setval('_timescaledb_config.bgw_job_id_seq', 1000, false);

--
-- Name: _hyper_1_5_chunk_sensor_temperature_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_1_5_chunk_sensor_temperature_time_idx ON _timescaledb_internal._hyper_1_5_chunk USING btree ("time" DESC);


--
-- Name: _hyper_2_2_chunk_sensor_humidity_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_2_2_chunk_sensor_humidity_time_idx ON _timescaledb_internal._hyper_2_2_chunk USING btree ("time" DESC);


--
-- Name: _hyper_3_1_chunk_sensor_motion_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_3_1_chunk_sensor_motion_time_idx ON _timescaledb_internal._hyper_3_1_chunk USING btree ("time" DESC);


--
-- Name: _hyper_4_3_chunk_sensor_neighbors_count_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_4_3_chunk_sensor_neighbors_count_time_idx ON _timescaledb_internal._hyper_4_3_chunk USING btree ("time" DESC);


--
-- Name: _hyper_5_4_chunk_sensor_neighbors_detail_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_5_4_chunk_sensor_neighbors_detail_time_idx ON _timescaledb_internal._hyper_5_4_chunk USING btree ("time" DESC);


--
-- Name: _hyper_6_6_chunk_sensor_pressure_time_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: admin
--

CREATE INDEX _hyper_6_6_chunk_sensor_pressure_time_idx ON _timescaledb_internal._hyper_6_6_chunk USING btree ("time" DESC);


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

