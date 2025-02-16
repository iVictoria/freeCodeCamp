--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (277, 2018, 'Final', 393, 394, 4, 2);
INSERT INTO public.games VALUES (278, 2018, 'Third Place', 395, 396, 2, 0);
INSERT INTO public.games VALUES (279, 2018, 'Semi-Final', 394, 396, 2, 1);
INSERT INTO public.games VALUES (280, 2018, 'Semi-Final', 393, 395, 1, 0);
INSERT INTO public.games VALUES (281, 2018, 'Quarter-Final', 394, 397, 3, 2);
INSERT INTO public.games VALUES (282, 2018, 'Quarter-Final', 396, 398, 2, 0);
INSERT INTO public.games VALUES (283, 2018, 'Quarter-Final', 395, 399, 2, 1);
INSERT INTO public.games VALUES (284, 2018, 'Quarter-Final', 393, 400, 2, 0);
INSERT INTO public.games VALUES (285, 2018, 'Eighth-Final', 396, 401, 2, 1);
INSERT INTO public.games VALUES (286, 2018, 'Eighth-Final', 398, 402, 1, 0);
INSERT INTO public.games VALUES (287, 2018, 'Eighth-Final', 395, 403, 3, 2);
INSERT INTO public.games VALUES (288, 2018, 'Eighth-Final', 399, 404, 2, 0);
INSERT INTO public.games VALUES (289, 2018, 'Eighth-Final', 394, 405, 2, 1);
INSERT INTO public.games VALUES (290, 2018, 'Eighth-Final', 397, 406, 2, 1);
INSERT INTO public.games VALUES (291, 2018, 'Eighth-Final', 400, 407, 2, 1);
INSERT INTO public.games VALUES (292, 2018, 'Eighth-Final', 393, 408, 4, 3);
INSERT INTO public.games VALUES (293, 2014, 'Final', 409, 408, 1, 0);
INSERT INTO public.games VALUES (294, 2014, 'Third Place', 410, 399, 3, 0);
INSERT INTO public.games VALUES (295, 2014, 'Semi-Final', 408, 410, 1, 0);
INSERT INTO public.games VALUES (296, 2014, 'Semi-Final', 409, 399, 7, 1);
INSERT INTO public.games VALUES (297, 2014, 'Quarter-Final', 410, 411, 1, 0);
INSERT INTO public.games VALUES (298, 2014, 'Quarter-Final', 408, 395, 1, 0);
INSERT INTO public.games VALUES (299, 2014, 'Quarter-Final', 399, 401, 2, 1);
INSERT INTO public.games VALUES (300, 2014, 'Quarter-Final', 409, 393, 1, 0);
INSERT INTO public.games VALUES (301, 2014, 'Eighth-Final', 399, 412, 2, 1);
INSERT INTO public.games VALUES (302, 2014, 'Eighth-Final', 401, 400, 2, 0);
INSERT INTO public.games VALUES (303, 2014, 'Eighth-Final', 393, 413, 2, 0);
INSERT INTO public.games VALUES (304, 2014, 'Eighth-Final', 409, 414, 2, 1);
INSERT INTO public.games VALUES (305, 2014, 'Eighth-Final', 410, 404, 2, 1);
INSERT INTO public.games VALUES (306, 2014, 'Eighth-Final', 411, 415, 2, 1);
INSERT INTO public.games VALUES (307, 2014, 'Eighth-Final', 408, 402, 1, 0);
INSERT INTO public.games VALUES (308, 2014, 'Eighth-Final', 395, 416, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (393, 'France');
INSERT INTO public.teams VALUES (394, 'Croatia');
INSERT INTO public.teams VALUES (395, 'Belgium');
INSERT INTO public.teams VALUES (396, 'England');
INSERT INTO public.teams VALUES (397, 'Russia');
INSERT INTO public.teams VALUES (398, 'Sweden');
INSERT INTO public.teams VALUES (399, 'Brazil');
INSERT INTO public.teams VALUES (400, 'Uruguay');
INSERT INTO public.teams VALUES (401, 'Colombia');
INSERT INTO public.teams VALUES (402, 'Switzerland');
INSERT INTO public.teams VALUES (403, 'Japan');
INSERT INTO public.teams VALUES (404, 'Mexico');
INSERT INTO public.teams VALUES (405, 'Denmark');
INSERT INTO public.teams VALUES (406, 'Spain');
INSERT INTO public.teams VALUES (407, 'Portugal');
INSERT INTO public.teams VALUES (408, 'Argentina');
INSERT INTO public.teams VALUES (409, 'Germany');
INSERT INTO public.teams VALUES (410, 'Netherlands');
INSERT INTO public.teams VALUES (411, 'Costa Rica');
INSERT INTO public.teams VALUES (412, 'Chile');
INSERT INTO public.teams VALUES (413, 'Nigeria');
INSERT INTO public.teams VALUES (414, 'Algeria');
INSERT INTO public.teams VALUES (415, 'Greece');
INSERT INTO public.teams VALUES (416, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 308, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 416, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_team FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_team; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_team FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

