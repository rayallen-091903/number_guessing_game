--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.10 (Homebrew)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1739646999283', 2, 512);
INSERT INTO public.users VALUES (12, 'user_1739647888524', 2, 653);
INSERT INTO public.users VALUES (11, 'user_1739647888525', 5, 65);
INSERT INTO public.users VALUES (1, 'user_1739646999284', 5, 143);
INSERT INTO public.users VALUES (24, 'user_1739648718996', 2, 35);
INSERT INTO public.users VALUES (4, 'user_1739647346501', 2, 503);
INSERT INTO public.users VALUES (14, 'user_1739648009703', 2, 177);
INSERT INTO public.users VALUES (3, 'user_1739647346502', 5, 264);
INSERT INTO public.users VALUES (23, 'user_1739648718997', 5, 76);
INSERT INTO public.users VALUES (36, 'user_1739649659540', 2, 40);
INSERT INTO public.users VALUES (13, 'user_1739648009704', 5, 118);
INSERT INTO public.users VALUES (6, 'user_1739647639532', 2, 258);
INSERT INTO public.users VALUES (5, 'user_1739647639533', 5, 7);
INSERT INTO public.users VALUES (35, 'user_1739649659541', 5, 35);
INSERT INTO public.users VALUES (26, 'user_1739648914747', 2, 534);
INSERT INTO public.users VALUES (16, 'user_1739648171774', 2, 434);
INSERT INTO public.users VALUES (8, 'user_1739647765009', 2, 641);
INSERT INTO public.users VALUES (15, 'user_1739648171775', 5, 168);
INSERT INTO public.users VALUES (7, 'user_1739647765010', 5, 61);
INSERT INTO public.users VALUES (25, 'user_1739648914748', 5, 18);
INSERT INTO public.users VALUES (10, 'user_1739647839321', 2, 395);
INSERT INTO public.users VALUES (18, 'user_1739648247614', 2, 505);
INSERT INTO public.users VALUES (9, 'user_1739647839322', 5, 161);
INSERT INTO public.users VALUES (38, 'user_1739649845340', 2, 630);
INSERT INTO public.users VALUES (17, 'user_1739648247615', 5, 305);
INSERT INTO public.users VALUES (28, 'user_1739649048752', 2, 116);
INSERT INTO public.users VALUES (27, 'user_1739649048753', 5, 264);
INSERT INTO public.users VALUES (20, 'user_1739648506565', 2, 562);
INSERT INTO public.users VALUES (37, 'user_1739649845341', 5, 75);
INSERT INTO public.users VALUES (19, 'user_1739648506566', 5, 251);
INSERT INTO public.users VALUES (30, 'user_1739649156538', 2, 746);
INSERT INTO public.users VALUES (22, 'user_1739648595195', 2, 376);
INSERT INTO public.users VALUES (29, 'user_1739649156539', 5, 133);
INSERT INTO public.users VALUES (21, 'user_1739648595196', 5, 216);
INSERT INTO public.users VALUES (32, 'user_1739649181856', 2, 592);
INSERT INTO public.users VALUES (31, 'user_1739649181857', 5, 458);
INSERT INTO public.users VALUES (34, 'user_1739649451611', 2, 5);
INSERT INTO public.users VALUES (33, 'user_1739649451612', 5, 210);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--


