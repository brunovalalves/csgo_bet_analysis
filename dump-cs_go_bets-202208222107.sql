--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-08-22 21:07:03

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 24577)
-- Name: matches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matches (
    id integer NOT NULL,
    game character varying(255) NOT NULL,
    odd_team1 numeric,
    odd_team2 numeric,
    winner integer,
    CONSTRAINT ck_winner CHECK ((winner = ANY (ARRAY[1, 2])))
);


ALTER TABLE public.matches OWNER TO postgres;

--
-- TOC entry 3308 (class 0 OID 24577)
-- Dependencies: 209
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.matches VALUES (2357689, 'aravt-vs-d13-5e-arena-asia-cup-2022-closed-qualifier', 1.7, 1.95, NULL);
INSERT INTO public.matches VALUES (2357543, 'furia-academy-vs-astralis-talent-weplay-academy-league-season-5', 0, 0, NULL);
INSERT INTO public.matches VALUES (2357690, 'nkt-vs-lynn-vision-5e-arena-asia-cup-2022-closed-qualifier', 2.42, 1.55, NULL);
INSERT INTO public.matches VALUES (2357544, 'spirit-academy-vs-og-academy-weplay-academy-league-season-5', 1.52, 2.49, NULL);
INSERT INTO public.matches VALUES (2357691, 'catevil-vs-ihc-5e-arena-asia-cup-2022-closed-qualifier', 5.5, 1.1, NULL);
INSERT INTO public.matches VALUES (2357753, 'wolsung-vs-cryptova-cct-central-europe-series-1-closed-qualifier', 0, 0, NULL);
INSERT INTO public.matches VALUES (2357545, 'navi-junior-vs-furia-ac-astralis-t-winner-weplay-academy-league-season-5', 0, 0, NULL);
INSERT INTO public.matches VALUES (2357776, 'daotsu-vs-stars-horizon-cct-south-america-series-1', 1.52, 5.25, NULL);
INSERT INTO public.matches VALUES (2357822, 'ec-kyiv-vs-yodagus-elisa-invitational-fall-2022-contenders', 1.13, 6.0, NULL);
INSERT INTO public.matches VALUES (2357877, 'order-vs-encore-iem-road-to-rio-2022-oceania-open-qualifier-1', 1.3, 4.2, NULL);
INSERT INTO public.matches VALUES (2357878, 'rooster-vs-morbin5-iem-road-to-rio-2022-oceania-open-qualifier-1', 1.85, 2.8, NULL);
INSERT INTO public.matches VALUES (2357883, 'rare-atom-vs-wings-up-iem-road-to-rio-2022-china-open-qualifier-1', 1.46, 2.65, NULL);
INSERT INTO public.matches VALUES (2357884, 'lynn-vision-vs-tyloo-iem-road-to-rio-2022-china-open-qualifier-1', 4.81, 1.17, NULL);
INSERT INTO public.matches VALUES (2357889, 'ihc-vs-d13-iem-road-to-rio-2022-asia-open-qualifier-1', 1.14, 5.3, NULL);
INSERT INTO public.matches VALUES (2357890, 'nkt-vs-aravt-iem-road-to-rio-2022-asia-open-qualifier-1', 1.48, 2.77, NULL);
INSERT INTO public.matches VALUES (2357823, 'b8-vs-777-elisa-invitational-fall-2022-contenders', 1.5, 2.7, NULL);
INSERT INTO public.matches VALUES (2357777, 'the-union-vs-isurus-cct-south-america-series-1', 1.67, 2.55, NULL);
INSERT INTO public.matches VALUES (2357896, 'jijiehao-international-vs-intheclub-iem-road-to-rio-2022-middle-east-open-qualifier-1', 1.37, 3.06, NULL);
INSERT INTO public.matches VALUES (2357928, 'astralis-vs-masonic-iem-road-to-rio-2022-europe-open-qualifier-1', 1.02, 11.5, NULL);
INSERT INTO public.matches VALUES (2357929, 'aurora-vs-monte-iem-road-to-rio-2022-europe-open-qualifier-1', 2.77, 1.42, NULL);
INSERT INTO public.matches VALUES (2357778, 'windingo-vs-redragon-cct-south-america-series-1', 2.1, 1.8, NULL);
INSERT INTO public.matches VALUES (2357779, 'rehl-vs-capivara-strong-cct-south-america-series-1', 1.14, 5.75, NULL);
INSERT INTO public.matches VALUES (2357780, 'holkattes-vs-boca-juniors-cct-south-america-series-1', 1.83, 1.95, NULL);
INSERT INTO public.matches VALUES (2357824, 'masonic-vs-prospects-elisa-invitational-fall-2022-contenders', 1.41, 2.81, NULL);
INSERT INTO public.matches VALUES (2357825, 'eclot-vs-skade-x-elisa-invitational-fall-2022-contenders', 1.31, 3.38, NULL);
INSERT INTO public.matches VALUES (2357826, 'tricked-vs-schade-halt-elisa-invitational-fall-2022-contenders', 1.32, 3.31, NULL);
INSERT INTO public.matches VALUES (2357827, 'into-the-breach-vs-hotspurs-elisa-invitational-fall-2022-contenders', 1.2, 4.42, NULL);
INSERT INTO public.matches VALUES (2357640, 'vitality-vs-og-blast-premier-fall-groups-2022', 1.83, 2.0, NULL);
INSERT INTO public.matches VALUES (2357643, 'ninjas-in-pyjamas-vs-astralis-blast-premier-fall-groups-2022', 1.93, 1.95, NULL);
INSERT INTO public.matches VALUES (2357641, 'natus-vincere-vs-complexity-blast-premier-fall-groups-2022', 1.35, 4.0, NULL);
INSERT INTO public.matches VALUES (2357644, 'g2-vs-liquid-blast-premier-fall-groups-2022', 1.72, 2.35, NULL);
INSERT INTO public.matches VALUES (2357642, 'faze-vs-evil-geniuses-blast-premier-fall-groups-2022', 1.13, 6.05, NULL);
INSERT INTO public.matches VALUES (2357645, 'heroic-vs-big-blast-premier-fall-groups-2022', 1.75, 2.11, NULL);
INSERT INTO public.matches VALUES (2357860, 'skade-vs-masonic-cct-central-europe-series-1', 1.42, 2.81, NULL);
INSERT INTO public.matches VALUES (2357862, 'mouz-nxt-vs-sampi-cct-central-europe-series-1', 1.34, 3.19, NULL);
INSERT INTO public.matches VALUES (2357863, 'ec-kyiv-vs-monte-cct-central-europe-series-1', 1.85, 1.72, NULL);
INSERT INTO public.matches VALUES (2357864, 'illuminar-vs-eyeballers-cct-central-europe-series-1', 2.0, 1.77, NULL);
INSERT INTO public.matches VALUES (2357865, 'eclot-vs-sc-cct-central-europe-series-1', 1.54, 2.43, NULL);
INSERT INTO public.matches VALUES (2357866, 'paloma-vs-kova-cct-central-europe-series-1', 1.71, 2.08, NULL);
INSERT INTO public.matches VALUES (2357693, 'natus-vincere-vs-spirit-esl-pro-league-season-16', 1.22, 4.64, NULL);
INSERT INTO public.matches VALUES (2357694, 'vitality-vs-endpoint-esl-pro-league-season-16', 1.14, 5.8, NULL);
INSERT INTO public.matches VALUES (2357695, 'ninjas-in-pyjamas-vs-fnatic-esl-pro-league-season-16', 1.41, 4.75, NULL);
INSERT INTO public.matches VALUES (2357696, 'spirit-vs-endpoint-esl-pro-league-season-16', 1.41, 3.2, NULL);
INSERT INTO public.matches VALUES (2357697, 'natus-vincere-vs-fnatic-esl-pro-league-season-16', 1.18, 5.5, NULL);
INSERT INTO public.matches VALUES (2357698, 'ninjas-in-pyjamas-vs-vitality-esl-pro-league-season-16', 2.03, 1.75, NULL);
INSERT INTO public.matches VALUES (2357699, 'natus-vincere-vs-endpoint-esl-pro-league-season-16', 1.06, 9.0, NULL);
INSERT INTO public.matches VALUES (2357700, 'ninjas-in-pyjamas-vs-spirit-esl-pro-league-season-16', 1.58, 2.35, NULL);
INSERT INTO public.matches VALUES (2357701, 'vitality-vs-fnatic-esl-pro-league-season-16', 1.42, 3.14, NULL);
INSERT INTO public.matches VALUES (2357871, 'oddik-vs-b4-cbcs-masters-festival-2022', 1.04, 12.5, NULL);
INSERT INTO public.matches VALUES (2357702, 'ninjas-in-pyjamas-vs-endpoint-esl-pro-league-season-16', 1.2, 4.5, NULL);
INSERT INTO public.matches VALUES (2357703, 'fnatic-vs-spirit-esl-pro-league-season-16', 2.38, 1.58, NULL);
INSERT INTO public.matches VALUES (2357704, 'natus-vincere-vs-vitality-esl-pro-league-season-16', 1.35, 3.09, NULL);
INSERT INTO public.matches VALUES (2357705, 'natus-vincere-vs-ninjas-in-pyjamas-esl-pro-league-season-16', 1.31, 3.5, NULL);
INSERT INTO public.matches VALUES (2357706, 'vitality-vs-spirit-esl-pro-league-season-16', 1.46, 2.8, NULL);
INSERT INTO public.matches VALUES (2357707, 'fnatic-vs-endpoint-esl-pro-league-season-16', 1.49, 3.0, NULL);
INSERT INTO public.matches VALUES (2357708, 'faze-vs-ftw-esl-pro-league-season-16', 1.05, 9.0, NULL);
INSERT INTO public.matches VALUES (2357709, 'outsiders-vs-big-esl-pro-league-season-16', 2.17, 1.7, NULL);
INSERT INTO public.matches VALUES (2357710, 'g2-vs-mibr-esl-pro-league-season-16', 1.2, 6.6, NULL);
INSERT INTO public.matches VALUES (2357711, 'outsiders-vs-ftw-esl-pro-league-season-16', 1.14, 6.0, NULL);
INSERT INTO public.matches VALUES (2357712, 'g2-vs-big-esl-pro-league-season-16', 1.55, 2.45, NULL);
INSERT INTO public.matches VALUES (2357713, 'faze-vs-mibr-esl-pro-league-season-16', 1.15, 7.5, NULL);
INSERT INTO public.matches VALUES (2357714, 'g2-vs-ftw-esl-pro-league-season-16', 1.07, 8.5, NULL);
INSERT INTO public.matches VALUES (2357715, 'big-vs-mibr-esl-pro-league-season-16', 1.37, 3.1, NULL);
INSERT INTO public.matches VALUES (2357716, 'faze-vs-outsiders-esl-pro-league-season-16', 1.34, 3.5, NULL);
INSERT INTO public.matches VALUES (2357717, 'big-vs-ftw-esl-pro-league-season-16', 1.1, 6.6, NULL);
INSERT INTO public.matches VALUES (2357718, 'outsiders-vs-mibr-esl-pro-league-season-16', 1.5, 2.9, NULL);
INSERT INTO public.matches VALUES (2357719, 'faze-vs-g2-esl-pro-league-season-16', 1.55, 2.7, NULL);
INSERT INTO public.matches VALUES (2357720, 'mibr-vs-ftw-esl-pro-league-season-16', 1.22, 4.23, NULL);
INSERT INTO public.matches VALUES (2357721, 'g2-vs-outsiders-esl-pro-league-season-16', 1.4, 2.94, NULL);
INSERT INTO public.matches VALUES (2357722, 'faze-vs-big-esl-pro-league-season-16', 1.45, 2.73, NULL);
INSERT INTO public.matches VALUES (2357723, 'mouz-vs-heroic-esl-pro-league-season-16', 2.35, 1.68, NULL);
INSERT INTO public.matches VALUES (2357724, 'complexity-vs-astralis-esl-pro-league-season-16', 4.0, 1.24, NULL);
INSERT INTO public.matches VALUES (2357725, 'ence-vs-heet-esl-pro-league-season-16', 1.4, 2.85, NULL);
INSERT INTO public.matches VALUES (2357726, 'astralis-vs-mouz-esl-pro-league-season-16', 1.68, 2.17, NULL);
INSERT INTO public.matches VALUES (2357727, 'complexity-vs-heet-esl-pro-league-season-16', 2.17, 1.68, NULL);
INSERT INTO public.matches VALUES (2357728, 'ence-vs-heroic-esl-pro-league-season-16', 2.3, 1.66, NULL);
INSERT INTO public.matches VALUES (2357729, 'astralis-vs-heet-esl-pro-league-season-16', 1.35, 3.14, NULL);
INSERT INTO public.matches VALUES (2357730, 'heroic-vs-complexity-esl-pro-league-season-16', 1.24, 4.0, NULL);
INSERT INTO public.matches VALUES (2357731, 'ence-vs-mouz-esl-pro-league-season-16', 1.9, 1.85, NULL);
INSERT INTO public.matches VALUES (2357732, 'heroic-vs-heet-esl-pro-league-season-16', 1.35, 3.32, NULL);
INSERT INTO public.matches VALUES (2357733, 'complexity-vs-mouz-esl-pro-league-season-16', 3.6, 1.29, NULL);
INSERT INTO public.matches VALUES (2357734, 'ence-vs-astralis-esl-pro-league-season-16', 2.2, 1.71, NULL);
INSERT INTO public.matches VALUES (2357735, 'heroic-vs-astralis-esl-pro-league-season-16', 1.9, 2.05, NULL);
INSERT INTO public.matches VALUES (2357736, 'ence-vs-complexity-esl-pro-league-season-16', 1.27, 3.62, NULL);
INSERT INTO public.matches VALUES (2357737, 'mouz-vs-heet-esl-pro-league-season-16', 1.42, 2.85, NULL);
INSERT INTO public.matches VALUES (2357738, 'cloud9-vs-evil-geniuses-esl-pro-league-season-16', 1.13, 6.6, NULL);
INSERT INTO public.matches VALUES (2357739, 'eternal-fire-vs-furia-esl-pro-league-season-16', 2.57, 1.5, NULL);
INSERT INTO public.matches VALUES (2357740, 'liquid-vs-movistar-riders-esl-pro-league-season-16', 1.7, 2.17, NULL);
INSERT INTO public.matches VALUES (2357741, 'cloud9-vs-eternal-fire-esl-pro-league-season-16', 1.15, 5.5, NULL);
INSERT INTO public.matches VALUES (2357742, 'movistar-riders-vs-furia-esl-pro-league-season-16', 1.95, 1.9, NULL);
INSERT INTO public.matches VALUES (2357743, 'liquid-vs-evil-geniuses-esl-pro-league-season-16', 1.24, 3.89, NULL);
INSERT INTO public.matches VALUES (2357744, 'cloud9-vs-movistar-riders-esl-pro-league-season-16', 1.36, 3.04, NULL);
INSERT INTO public.matches VALUES (2357745, 'eternal-fire-vs-evil-geniuses-esl-pro-league-season-16', 1.48, 2.7, NULL);
INSERT INTO public.matches VALUES (2357746, 'liquid-vs-furia-esl-pro-league-season-16', 1.69, 2.12, NULL);
INSERT INTO public.matches VALUES (2357747, 'movistar-riders-vs-evil-geniuses-esl-pro-league-season-16', 1.4, 2.95, NULL);
INSERT INTO public.matches VALUES (2357748, 'liquid-vs-eternal-fire-esl-pro-league-season-16', 1.4, 2.85, NULL);
INSERT INTO public.matches VALUES (2357749, 'cloud9-vs-furia-esl-pro-league-season-16', 1.26, 3.89, NULL);
INSERT INTO public.matches VALUES (2357750, 'cloud9-vs-liquid-esl-pro-league-season-16', 1.37, 2.99, NULL);
INSERT INTO public.matches VALUES (2357751, 'movistar-riders-vs-eternal-fire-esl-pro-league-season-16', 1.65, 2.35, NULL);
INSERT INTO public.matches VALUES (2357752, 'furia-vs-evil-geniuses-esl-pro-league-season-16', 1.35, 3.2, NULL);
INSERT INTO public.matches VALUES (2358037, 'endpoint-vs-monte-iem-road-to-rio-2022-europe-open-qualifier-2', 1.61, 2.32, NULL);
INSERT INTO public.matches VALUES (2358034, 'k23-vs-1win-iem-road-to-rio-2022-europe-open-qualifier-2', 1.01, 15.7, NULL);
INSERT INTO public.matches VALUES (2358035, 'gamerlegion-vs-forze-iem-road-to-rio-2022-europe-open-qualifier-2', 3.5, 1.32, NULL);
INSERT INTO public.matches VALUES (2358036, 'fnatic-vs-havu-iem-road-to-rio-2022-europe-open-qualifier-2', 1.09, 7.4, NULL);
INSERT INTO public.matches VALUES (2358191, 'river-plate-vs-rehl-cct-south-america-series-1', 2.8, 1.46, NULL);
INSERT INTO public.matches VALUES (2358007, 'case-vs-9z-iem-road-to-rio-2022-south-america-open-qualifier-2', 4.8, 1.33, NULL);
INSERT INTO public.matches VALUES (2358008, 'o-plano-vs-fluxo-iem-road-to-rio-2022-south-america-open-qualifier-2', 3.5, 1.95, NULL);
INSERT INTO public.matches VALUES (2358058, 'encore-vs-vertex-iem-road-to-rio-2022-oceania-open-qualifier-2', 1.4, 2.95, NULL);
INSERT INTO public.matches VALUES (2358059, 'dgg-vs-antic-iem-road-to-rio-2022-oceania-open-qualifier-2', 1.46, 4.25, NULL);
INSERT INTO public.matches VALUES (2358069, 'kova-vs-sashi-elisa-invitational-fall-2022-contenders', 1.42, 3.04, NULL);
INSERT INTO public.matches VALUES (2358071, 'prospects-vs-schade-halt-elisa-invitational-fall-2022-contenders', 1.8, 1.94, NULL);
INSERT INTO public.matches VALUES (2358064, 'eternal-fire-vs-eyeballers-iem-road-to-rio-2022-europe-open-qualifier-3', 1.42, 2.8, NULL);
INSERT INTO public.matches VALUES (2358065, 'gamerlegion-vs-zero-tenacity-iem-road-to-rio-2022-europe-open-qualifier-3', 1.26, 3.6, NULL);
INSERT INTO public.matches VALUES (2358070, 'partizan-vs-finest-iem-road-to-rio-2022-europe-open-qualifier-3', 5.0, 1.15, NULL);
INSERT INTO public.matches VALUES (2357867, 'tricked-vs-x-cct-central-europe-series-1', 1.66, 2.35, NULL);
INSERT INTO public.matches VALUES (2358195, 'vendetta-vs-ex-gaimin-gladiators-esl-challenger-league-season-42-north-america', 8.1, 1.06, NULL);
INSERT INTO public.matches VALUES (2358196, 'strife-vs-timbermen-esl-challenger-league-season-42-north-america', 1.69, 2.3, NULL);
INSERT INTO public.matches VALUES (2358076, 'ec-kyiv-vs-eclot-elisa-invitational-fall-2022-contenders', 1.7, 2.14, NULL);
INSERT INTO public.matches VALUES (2358078, 'tricked-vs-masonic-elisa-invitational-fall-2022-contenders', 5.58, 1.85, NULL);
INSERT INTO public.matches VALUES (2358197, 'teamone-vs-mythic-esl-challenger-league-season-42-north-america', 1.58, 2.43, NULL);
INSERT INTO public.matches VALUES (2358198, 'ex-gaimin-gladiators-vs-timbermen-esl-challenger-league-season-42-north-america', 1.24, 3.89, NULL);
INSERT INTO public.matches VALUES (2358081, 'eyeballers-vs-jano-elisa-invitational-fall-2022-contenders', 1.91, 1.85, NULL);
INSERT INTO public.matches VALUES (2357658, 'og-vs-complexity-blast-premier-fall-groups-2022', 1.45, 3.0, NULL);
INSERT INTO public.matches VALUES (2358083, 'b8-vs-into-the-breach-elisa-invitational-fall-2022-contenders', 2.0, 1.78, NULL);
INSERT INTO public.matches VALUES (2357659, 'g2-vs-big-blast-premier-fall-groups-2022', 1.74, 2.43, NULL);
INSERT INTO public.matches VALUES (2357811, 'forze-vs-9ine-esl-challenger-league-season-42-europe', 1.39, 4.24, NULL);
INSERT INTO public.matches VALUES (2357812, '1win-vs-saw-esl-challenger-league-season-42-europe', 2.0, 2.43, NULL);
INSERT INTO public.matches VALUES (2357869, 'arctic-vs-daotsu-cbcs-masters-festival-2022', 1.55, 2.4, NULL);
INSERT INTO public.matches VALUES (2357870, 'stars-horizon-vs-sharks-cbcs-masters-festival-2022', 2.75, 1.5, NULL);
INSERT INTO public.matches VALUES (2357872, 'meta-br-vs-the-union-cbcs-masters-festival-2022', 1.83, 1.9, NULL);
INSERT INTO public.matches VALUES (2357813, 'bad-news-eagles-vs-ungentium-esl-challenger-league-season-42-europe', 1.41, 2.85, NULL);
INSERT INTO public.matches VALUES (2357814, 'falcons-vs-ecstatic-esl-challenger-league-season-42-europe', 1.42, 2.81, NULL);
INSERT INTO public.matches VALUES (2357815, 'finest-vs-bluejays-esl-challenger-league-season-42-europe', 1.69, 2.14, NULL);
INSERT INTO public.matches VALUES (2357816, 'heet-vs-sinners-esl-challenger-league-season-42-europe', 1.6, 2.31, NULL);


--
-- TOC entry 3168 (class 2606 OID 24583)
-- Name: matches matches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (id);


-- Completed on 2022-08-22 21:07:04

--
-- PostgreSQL database dump complete
--

