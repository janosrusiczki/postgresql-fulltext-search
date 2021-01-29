--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg100+1)

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
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news (
    title text NOT NULL,
    body text NOT NULL,
    id bigint NOT NULL,
    category_id bigint
);


ALTER TABLE public.news OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO postgres;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
1	Politicieni
2	Polițiști
3	Medicale
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news (title, body, id, category_id) FROM stdin;
Copii, amendaţi după ce au făcut un om de zăpadă fără mască	Poliţia e mereu vigilentă! Vlăduţ, 8 ani, şi Marcela, 11 ani, amândoi din Sectorul 3 al Capitalei, au fost amendaţi cu 2000 de lei pentru zădărnicirea combaterii bolilor după ce, chiar în faţa blocului unde domiciliază, au ridicat un om de zăpadă cu morcovul neacoperit de o mască de protecţie, eşarfă sau alt accesoriu.\n\n„În urmă cu câteva ore am identificat şi legitimat două persoane de vârstă copilărească practicând activităţi de tip joacă în jurul unei persoane alcătuite din precipitaţie solidificată, mai exact o persoană de zăpadă”, a precizat agentul de poliţie Marcu Anton.\n\n„Persoana de zăpadă a fost amendată pentru nepurtarea măştii, iar persoanele umane pentru zbenguire în afara orelor de zbenguire, coroborată cu facilitarea nepurtării măştii de către persoane non-umane, mai exact persoane din categoria persoanelor de zăpadă”, adaugă omul legii în procesul verbal.\n\nMorcovul a fost confiscat pentru analize de laborator.	3	2
Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept	Cancelaria prezidențială a dat în sfârșit explicații pentru avalanșa de invitații tranmise de Iohannis membrilor Guvernului. Rând pe rând, aproape toți miniștrii s-au perindat pe la palatul Cotroceni, deși se știe că Iohannis nu prea are minte pentru politică, așa că era puțin dubios de ce îi cheamă. Iohannis a precizat că miniștrii îl ajută la sală, mai precis îi țin bara atunci când vrea să împingă la piept sau când exersează tricepșii cu gantere de 45 kg. ”După 140 de repetări cu bara la 320 kg, la ultima chiar ai nevoie de ajutor s-o pui pe stand”, explică modest șeful statului. Uneori Iohannis cheamă chiar și trei miniștri, să-l ajute să-și regleze greutatea la helcometru sau ca să stea pe aparat când face repetările pentru picioare, că n-are destulă greutate pentru mușchii lui hiper lucrați. La un moment dat soția președintelui chiar s-a enervat puțin, pentru că l-a prins pe Klaus făcând genuflexiuni cu Raluca Turcan în spate.	1	1
Fake news! Românii nu iau Ivermectină pentru Covid, ci ca să nu ia râie din spital!	Românii care se tratează cu Ivermectină spun că articolele despre ei sunt tendențioase și că n-au avut niciodată intenția să se trateze de Covid cu acest medicament de câini. Cei care au luat Ivermectina spun că au luat-o preventiv, ca să nu ia râie sau alți paraziți din spitalele românești, în caz că se îmbolnăvesc de ceva și chiar trebuie să se interneze.\n\n”Ultima oară s-au schimbat cearceafurile din Spitalul Județean în 1985. Un prieten s-a dus la spital ca să-i ia tensiunea, dar a luat râie și era să-i amputeze un picior, dar din fericire chirurgul a murit înainte de operație pentru că luase și el febră galbenă din spital”, spune Marian, care ia și pastile de Ivermectină, dar se dă și cu unguentul.\n\n”Nu doar spitalul e spaima românilor care nu vor să ia râie, ci și birourile de taxe, impozite, precum și toate instituțiile unde se lucrează cu publicul, unde colcăie tot felul de paraziți, și nu ne referim aici doar la paraziții cu diplome de Spiru și sporuri de ministru”, spune Decebal Popescu, parazitolog.	2	3
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 3, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

