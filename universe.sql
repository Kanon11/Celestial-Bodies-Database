--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    name character varying(360) NOT NULL,
    description text,
    x_position integer,
    y_position integer,
    weight numeric(10,2) NOT NULL,
    is_alive boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(360) NOT NULL,
    description text,
    x_position integer,
    y_position integer,
    weight numeric(10,2) NOT NULL,
    is_alive boolean,
    planet_id integer
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
    name character varying(360) NOT NULL,
    description text,
    x_position integer,
    y_position integer,
    weight numeric(10,2) NOT NULL,
    is_alive boolean,
    star_id integer
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
    name character varying(360) NOT NULL,
    description text,
    x_position integer,
    y_position integer,
    weight numeric(10,2) NOT NULL,
    is_alive boolean,
    galaxy_id integer
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(370) NOT NULL,
    description text
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy', 100, 200, 500.25, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy', 150, 300, 600.50, true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Spiral galaxy', 80, 180, 450.75, true);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral galaxy', 120, 220, 520.30, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral galaxy', 90, 190, 490.80, true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Spiral galaxy', 110, 210, 510.40, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth moon', 10, 15, 0.01, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars moon', 25, 40, 0.00, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars moon', 20, 35, 0.00, true, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter moon', 70, 110, 0.02, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter moon', 80, 120, 0.01, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter moon', 90, 130, 0.03, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter moon', 100, 140, 0.02, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn moon', 150, 240, 0.14, true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn moon', 160, 250, 0.03, true, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Saturn moon', 170, 260, 0.02, true, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Uranus moon', 200, 320, 0.00, true, 7);
INSERT INTO public.moon VALUES (12, 'Titania', 'Uranus moon', 210, 330, 0.02, true, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 'Uranus moon', 220, 340, 0.02, true, 7);
INSERT INTO public.moon VALUES (14, 'Triton', 'Neptune moon', 250, 380, 0.02, true, 8);
INSERT INTO public.moon VALUES (15, 'Nereid', 'Neptune moon', 260, 390, 0.00, true, 8);
INSERT INTO public.moon VALUES (16, 'Charon', 'Pluto moon', 300, 430, 0.00, true, 9);
INSERT INTO public.moon VALUES (17, 'Moon 1', 'Newly discovered moon', 15, 25, 0.00, true, 1);
INSERT INTO public.moon VALUES (18, 'Moon 2', 'Newly discovered moon', 18, 28, 0.00, true, 1);
INSERT INTO public.moon VALUES (19, 'Moon 3', 'Newly discovered moon', 22, 32, 0.00, true, 1);
INSERT INTO public.moon VALUES (20, 'Moon 4', 'Newly discovered moon', 28, 38, 0.00, true, 1);
INSERT INTO public.moon VALUES (21, 'Moon 5', 'Newly discovered moon', 35, 45, 0.00, true, 1);
INSERT INTO public.moon VALUES (22, 'Moon 6', 'Newly discovered moon', 40, 50, 0.00, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Third planet from the Sun', 100, 150, 50.00, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Fourth planet from the Sun', 120, 160, 40.50, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Second planet from the Sun', 95, 140, 45.75, true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Closest planet to the Sun', 92, 136, 35.25, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the Solar System', 250, 320, 200.00, true, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Sixth planet from the Sun', 300, 380, 150.50, true, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh planet from the Sun', 350, 420, 140.75, true, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Eighth planet from the Sun', 380, 460, 135.25, true, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet', 420, 500, 30.00, true, 4);
INSERT INTO public.planet VALUES (10, 'Jupiter Moon 1', 'Jupiter moon', 255, 330, 10.00, true, 5);
INSERT INTO public.planet VALUES (11, 'Saturn Moon 1', 'Saturn moon', 305, 390, 8.50, true, 6);
INSERT INTO public.planet VALUES (12, 'Titan', 'Saturn moon', 420, 250, 0.13, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Main sequence star', 50, 60, 100.00, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red dwarf star', 70, 80, 50.50, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'Binary star system', 120, 130, 200.75, true, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Main sequence star', 90, 100, 150.25, true, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'Main sequence star', 95, 105, 140.25, true, 2);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Red supergiant star', 200, 220, 300.00, true, 3);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'kanon', 'bad guy');
INSERT INTO public.test VALUES (2, 'kpol', 'poor guy');
INSERT INTO public.test VALUES (3, 'ayon', 'ginus gury');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_uniqe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_uniqe UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_uniqe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_uniqe UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_uniqe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_uniqe UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_uniqe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_uniqe UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: test unique_test_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT unique_test_name UNIQUE (name);


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

