--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    type character varying(255),
    temporture integer,
    spectral_type character varying(255),
    distance numeric(10,2),
    nn integer NOT NULL,
    nh integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(255),
    temportur integer,
    spectral character varying(255),
    distanse numeric(10,2),
    nh integer NOT NULL,
    nn integer NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    planet_id integer,
    temportur integer,
    spectral character varying(255),
    distanse numeric(10,2),
    nh integer NOT NULL,
    nn integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    age_category integer,
    description text,
    is_spherical boolean,
    star_id integer,
    temporture integer,
    spectral_type character varying(255),
    distance numeric(10,2),
    temportur integer,
    spectral character varying(255),
    distanse numeric(10,2),
    nnn integer NOT NULL,
    nn integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    luminosity_category integer,
    mass numeric(10,2),
    has_life boolean,
    galaxy_id integer,
    temporture integer,
    spectral_type character varying(255),
    distance numeric(10,2),
    nn integer NOT NULL,
    nh integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (16, NULL, NULL, NULL, NULL, NULL, 7, 8);
INSERT INTO public.galaxy VALUES (18, NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (19, NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.galaxy VALUES (20, NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.galaxy VALUES (21, NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.galaxy VALUES (22, NULL, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.galaxy VALUES (23, NULL, NULL, NULL, NULL, NULL, 8, 7);
INSERT INTO public.galaxy VALUES (26, NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.galaxy VALUES (27, NULL, NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.galaxy VALUES (28, NULL, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.galaxy VALUES (29, NULL, NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.galaxy VALUES (30, NULL, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.galaxy VALUES (31, NULL, NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.galaxy VALUES (32, NULL, NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.galaxy VALUES (33, NULL, NULL, NULL, NULL, NULL, 15, 15);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (7, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy_type VALUES (9, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.galaxy_type VALUES (10, NULL, NULL, NULL, NULL, 5, 4);
INSERT INTO public.galaxy_type VALUES (11, NULL, NULL, NULL, NULL, 7, 6);
INSERT INTO public.galaxy_type VALUES (12, NULL, NULL, NULL, NULL, 8, 7);
INSERT INTO public.galaxy_type VALUES (13, NULL, NULL, NULL, NULL, 0, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (47, NULL, 23, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES (48, NULL, 23, NULL, NULL, NULL, 2, 2);
INSERT INTO public.moon VALUES (49, NULL, 23, NULL, NULL, NULL, 3, 3);
INSERT INTO public.moon VALUES (50, NULL, 23, NULL, NULL, NULL, 4, 4);
INSERT INTO public.moon VALUES (51, NULL, 23, NULL, NULL, NULL, 5, 5);
INSERT INTO public.moon VALUES (52, NULL, 23, NULL, NULL, NULL, 6, 6);
INSERT INTO public.moon VALUES (53, NULL, 23, NULL, NULL, NULL, 7, 7);
INSERT INTO public.moon VALUES (54, NULL, 23, NULL, NULL, NULL, 8, 8);
INSERT INTO public.moon VALUES (55, NULL, 23, NULL, NULL, NULL, 9, 9);
INSERT INTO public.moon VALUES (56, NULL, 23, NULL, NULL, NULL, 10, 10);
INSERT INTO public.moon VALUES (57, NULL, 23, NULL, NULL, NULL, 11, 11);
INSERT INTO public.moon VALUES (58, NULL, 23, NULL, NULL, NULL, 12, 12);
INSERT INTO public.moon VALUES (59, NULL, 23, NULL, NULL, NULL, 13, 13);
INSERT INTO public.moon VALUES (60, NULL, 23, NULL, NULL, NULL, 14, 14);
INSERT INTO public.moon VALUES (61, NULL, 23, NULL, NULL, NULL, 15, 15);
INSERT INTO public.moon VALUES (62, NULL, 23, NULL, NULL, NULL, 16, 16);
INSERT INTO public.moon VALUES (63, NULL, 23, NULL, NULL, NULL, 17, 17);
INSERT INTO public.moon VALUES (65, NULL, 23, NULL, NULL, NULL, 18, 18);
INSERT INTO public.moon VALUES (66, NULL, 23, NULL, NULL, NULL, 19, 19);
INSERT INTO public.moon VALUES (67, NULL, 23, NULL, NULL, NULL, 20, 20);
INSERT INTO public.moon VALUES (68, NULL, 23, NULL, NULL, NULL, 21, 21);
INSERT INTO public.moon VALUES (69, NULL, 23, NULL, NULL, NULL, 22, 22);
INSERT INTO public.moon VALUES (70, NULL, 23, NULL, NULL, NULL, 23, 23);
INSERT INTO public.moon VALUES (71, NULL, 23, NULL, NULL, NULL, 24, 24);
INSERT INTO public.moon VALUES (72, NULL, 23, NULL, NULL, NULL, 25, 25);
INSERT INTO public.moon VALUES (73, NULL, 23, NULL, NULL, NULL, 26, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (23, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO public.planet VALUES (24, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (25, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES (26, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES (27, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.planet VALUES (28, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES (29, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES (30, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.planet VALUES (31, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.planet VALUES (32, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.planet VALUES (33, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES (34, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.planet VALUES (35, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.planet VALUES (36, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.planet VALUES (37, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.planet VALUES (38, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.planet VALUES (39, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.planet VALUES (40, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.planet VALUES (41, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.planet VALUES (42, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.planet VALUES (43, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 20, 20);
INSERT INTO public.planet VALUES (44, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 21, 21);
INSERT INTO public.planet VALUES (45, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 22, 22);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (16, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, 13, 13);
INSERT INTO public.star VALUES (18, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, 12, 12);
INSERT INTO public.star VALUES (19, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 11, 11);
INSERT INTO public.star VALUES (20, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 10, 10);
INSERT INTO public.star VALUES (21, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 9, 9);
INSERT INTO public.star VALUES (22, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 8, 8);
INSERT INTO public.star VALUES (23, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 7, 7);
INSERT INTO public.star VALUES (24, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 6, 6);
INSERT INTO public.star VALUES (25, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES (26, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES (27, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES (28, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES (29, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (30, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, 0, 0);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 33, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 13, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 73, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 45, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 30, true);


--
-- Name: galaxy galaxy_nh_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nh_key UNIQUE (nh);


--
-- Name: galaxy galaxy_nn_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nn_key UNIQUE (nn);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_nh_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_nh_key UNIQUE (nh);


--
-- Name: galaxy_type galaxy_type_nn_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_nn_key UNIQUE (nn);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_nh_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nh_key UNIQUE (nh);


--
-- Name: moon moon_nn_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nn_key UNIQUE (nn);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nn_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nn_key UNIQUE (nn);


--
-- Name: planet planet_nnn_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nnn_key UNIQUE (nnn);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_nh_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nh_key UNIQUE (nh);


--
-- Name: star star_nn_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nn_key UNIQUE (nn);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

