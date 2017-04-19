--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: yogi; Type: TABLE; Schema: public; Owner: masterly; Tablespace: 
--

CREATE TABLE yogi (
    number bigint NOT NULL,
    language character(2) NOT NULL,
    saying text NOT NULL,
    comment text,
    sotd boolean DEFAULT false NOT NULL
);


ALTER TABLE public.yogi OWNER TO masterly;

--
-- Name: COLUMN yogi.number; Type: COMMENT; Schema: public; Owner: masterly
--

COMMENT ON COLUMN yogi.number IS 'number';


--
-- Name: COLUMN yogi.language; Type: COMMENT; Schema: public; Owner: masterly
--

COMMENT ON COLUMN yogi.language IS 'language';


--
-- Name: COLUMN yogi.saying; Type: COMMENT; Schema: public; Owner: masterly
--

COMMENT ON COLUMN yogi.saying IS 'saying';


--
-- Name: COLUMN yogi.comment; Type: COMMENT; Schema: public; Owner: masterly
--

COMMENT ON COLUMN yogi.comment IS 'comment';


--
-- Name: COLUMN yogi.sotd; Type: COMMENT; Schema: public; Owner: masterly
--

COMMENT ON COLUMN yogi.sotd IS 'saying of the day';


--
-- Name: yogi_number_seq; Type: SEQUENCE; Schema: public; Owner: masterly
--

CREATE SEQUENCE yogi_number_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yogi_number_seq OWNER TO masterly;

--
-- Name: yogi_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: masterly
--

ALTER SEQUENCE yogi_number_seq OWNED BY yogi.number;


--
-- Name: number; Type: DEFAULT; Schema: public; Owner: masterly
--

ALTER TABLE ONLY yogi ALTER COLUMN number SET DEFAULT nextval('yogi_number_seq'::regclass);


--
-- Data for Name: yogi; Type: TABLE DATA; Schema: public; Owner: masterly
--

COPY yogi (number, language, saying, comment, sotd) FROM stdin;
1	de	Liebe kennt keine Furcht oder Vergeltung.		f
2	de	Die Kraft der Liebe endet nie.		f
3	de	Liebe deine Seele.		f
4	en	test saying	test comment	f
5	de	Im Herzen ist man immer sorglos und glücklich.		t
6	fr	test 1		t
7	fr	test 2		f
8	es	el test 1 audición 		f
9	es	el test 2		t
\.


--
-- Name: yogi_number_seq; Type: SEQUENCE SET; Schema: public; Owner: masterly
--

SELECT pg_catalog.setval('yogi_number_seq', 9, true);


--
-- Name: yogi_pkey; Type: CONSTRAINT; Schema: public; Owner: masterly; Tablespace: 
--

ALTER TABLE ONLY yogi
    ADD CONSTRAINT yogi_pkey PRIMARY KEY (number);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: yogi; Type: ACL; Schema: public; Owner: masterly
--

REVOKE ALL ON TABLE yogi FROM PUBLIC;
REVOKE ALL ON TABLE yogi FROM masterly;
GRANT ALL ON TABLE yogi TO masterly;
GRANT ALL ON TABLE yogi TO masterly_yogi;


--
-- PostgreSQL database dump complete
--

