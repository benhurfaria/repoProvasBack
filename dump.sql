--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- Name: disciplina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplina (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.disciplina OWNER TO postgres;

--
-- Name: disciplina_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disciplina_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disciplina_id_seq OWNER TO postgres;

--
-- Name: disciplina_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disciplina_id_seq OWNED BY public.disciplina.id;


--
-- Name: discprof; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discprof (
    id integer NOT NULL,
    "idDisciplina" integer NOT NULL,
    "idProfessor" integer NOT NULL
);


ALTER TABLE public.discprof OWNER TO postgres;

--
-- Name: discprof_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discprof_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discprof_id_seq OWNER TO postgres;

--
-- Name: discprof_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discprof_id_seq OWNED BY public.discprof.id;


--
-- Name: professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professor (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.professor OWNER TO postgres;

--
-- Name: professor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_id_seq OWNER TO postgres;

--
-- Name: professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professor_id_seq OWNED BY public.professor.id;


--
-- Name: prova; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prova (
    id integer NOT NULL,
    name text NOT NULL,
    "idCategoria" integer NOT NULL,
    "idDisciplina" integer NOT NULL,
    "idProfessor" integer NOT NULL,
    url text NOT NULL
);


ALTER TABLE public.prova OWNER TO postgres;

--
-- Name: prova_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prova_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prova_id_seq OWNER TO postgres;

--
-- Name: prova_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prova_id_seq OWNED BY public.prova.id;


--
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- Name: disciplina id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplina ALTER COLUMN id SET DEFAULT nextval('public.disciplina_id_seq'::regclass);


--
-- Name: discprof id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discprof ALTER COLUMN id SET DEFAULT nextval('public.discprof_id_seq'::regclass);


--
-- Name: professor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor ALTER COLUMN id SET DEFAULT nextval('public.professor_id_seq'::regclass);


--
-- Name: prova id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prova ALTER COLUMN id SET DEFAULT nextval('public.prova_id_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, name) FROM stdin;
1	2020.1
\.


--
-- Data for Name: disciplina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplina (id, nome) FROM stdin;
1	fisica
2	matematica
3	programacao
4	historia
\.


--
-- Data for Name: discprof; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discprof (id, "idDisciplina", "idProfessor") FROM stdin;
1	1	1
2	2	1
3	3	2
4	1	5
5	4	3
6	4	4
7	4	6
8	2	7
9	1	7
\.


--
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professor (id, nome) FROM stdin;
1	serverino
2	leandro
3	neymar
4	ronaldinho
5	greg
6	caue moura
7	onofre
\.


--
-- Data for Name: prova; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prova (id, name, "idCategoria", "idDisciplina", "idProfessor", url) FROM stdin;
1	sei nao	1	1	1	https://edisciplinas.usp.br/pluginfile.php/119074/mod_resource/content/1/calculo%20vol%201%20guidorizzi.pdf
2	novas 	1	1	1	https://edisciplinas.usp.br/pluginfile.php/119074/mod_resource/content/1/calculo%20vol%201%20guidorizzi.pdf
3	sei nao	1	1	1	https://edisciplinas.usp.br/pluginfile.php/119074/mod_resource/content/1/calculo%20vol%201%20guidorizzi.pdf
\.


--
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 1, true);


--
-- Name: disciplina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disciplina_id_seq', 4, true);


--
-- Name: discprof_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discprof_id_seq', 9, true);


--
-- Name: professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professor_id_seq', 7, true);


--
-- Name: prova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prova_id_seq', 3, true);


--
-- Name: categoria categoria_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pk PRIMARY KEY (id);


--
-- Name: disciplina disciplina_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT disciplina_pk PRIMARY KEY (id);


--
-- Name: discprof discprof_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discprof
    ADD CONSTRAINT discprof_pk PRIMARY KEY (id);


--
-- Name: professor professor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pk PRIMARY KEY (id);


--
-- Name: prova prova_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prova
    ADD CONSTRAINT prova_pk PRIMARY KEY (id);


--
-- Name: discprof discprof_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discprof
    ADD CONSTRAINT discprof_fk0 FOREIGN KEY ("idDisciplina") REFERENCES public.disciplina(id);


--
-- Name: discprof discprof_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discprof
    ADD CONSTRAINT discprof_fk1 FOREIGN KEY ("idProfessor") REFERENCES public.professor(id);


--
-- Name: prova prova_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prova
    ADD CONSTRAINT prova_fk0 FOREIGN KEY ("idCategoria") REFERENCES public.categoria(id);


--
-- Name: prova prova_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prova
    ADD CONSTRAINT prova_fk1 FOREIGN KEY ("idDisciplina") REFERENCES public.disciplina(id);


--
-- Name: prova prova_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prova
    ADD CONSTRAINT prova_fk2 FOREIGN KEY ("idProfessor") REFERENCES public.professor(id);


--
-- PostgreSQL database dump complete
--

