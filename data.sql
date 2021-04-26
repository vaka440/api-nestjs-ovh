--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _account; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._account (
    id smallint,
    user_id smallint,
    denomination character varying(1) DEFAULT NULL::character varying,
    adresse1 character varying(5) DEFAULT NULL::character varying,
    adresse2 character varying(2) DEFAULT NULL::character varying,
    cp character varying(5) DEFAULT NULL::character varying,
    ville character varying(3) DEFAULT NULL::character varying,
    departement character varying(1) DEFAULT NULL::character varying,
    region character varying(1) DEFAULT NULL::character varying,
    pays character varying(1) DEFAULT NULL::character varying,
    latitude character varying(1) DEFAULT NULL::character varying,
    longitude character varying(1) DEFAULT NULL::character varying,
    info_lieu character varying(1) DEFAULT NULL::character varying,
    nom character varying(6) DEFAULT NULL::character varying,
    prenom character varying(6) DEFAULT NULL::character varying,
    tel character varying(10) DEFAULT NULL::character varying,
    mail character varying(1) DEFAULT NULL::character varying,
    target character varying(1) DEFAULT NULL::character varying,
    sexe character varying(1) DEFAULT NULL::character varying,
    date_naiss character varying(10) DEFAULT NULL::character varying,
    etat smallint,
    code_f character varying(1) DEFAULT NULL::character varying,
    code_co smallint,
    j_j smallint,
    code_secret_instance smallint
);


ALTER TABLE public._account OWNER TO rebasedata;

--
-- Name: _cp_autocomplete; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._cp_autocomplete (
    id character varying(1) DEFAULT NULL::character varying,
    codepays character varying(1) DEFAULT NULL::character varying,
    cp character varying(1) DEFAULT NULL::character varying,
    ville character varying(1) DEFAULT NULL::character varying,
    nomadmin1 character varying(1) DEFAULT NULL::character varying,
    codeadmin1 character varying(1) DEFAULT NULL::character varying,
    nomadmin2 character varying(1) DEFAULT NULL::character varying,
    codeadmin2 character varying(1) DEFAULT NULL::character varying,
    nomadmin3 character varying(1) DEFAULT NULL::character varying,
    codeadmin3 character varying(1) DEFAULT NULL::character varying,
    latitude character varying(1) DEFAULT NULL::character varying,
    longitude character varying(1) DEFAULT NULL::character varying,
    acurancy character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._cp_autocomplete OWNER TO rebasedata;

--
-- Name: _credit; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._credit (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._credit OWNER TO rebasedata;

--
-- Name: _dataet; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataet (
    id character varying(1) DEFAULT NULL::character varying,
    phrase character varying(1) DEFAULT NULL::character varying,
    niveau_id character varying(1) DEFAULT NULL::character varying,
    domaine_id character varying(1) DEFAULT NULL::character varying,
    typeet_id character varying(1) DEFAULT NULL::character varying,
    typejeu_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dataet OWNER TO rebasedata;

--
-- Name: _dataeval; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataeval (
    id character varying(1) DEFAULT NULL::character varying,
    question character varying(1) DEFAULT NULL::character varying,
    reponse character varying(1) DEFAULT NULL::character varying,
    min character varying(1) DEFAULT NULL::character varying,
    max character varying(1) DEFAULT NULL::character varying,
    unite character varying(1) DEFAULT NULL::character varying,
    typejeu_id character varying(1) DEFAULT NULL::character varying,
    niveau_id character varying(1) DEFAULT NULL::character varying,
    domaine_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dataeval OWNER TO rebasedata;

--
-- Name: _dataqcm; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataqcm (
    id smallint,
    question character varying(96) DEFAULT NULL::character varying,
    choix character varying(63) DEFAULT NULL::character varying,
    align smallint,
    typejeu_id smallint,
    niveau_id smallint,
    domaine_id smallint,
    reponse character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public._dataqcm OWNER TO rebasedata;

--
-- Name: _dataqr; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataqr (
    id smallint,
    question character varying(102) DEFAULT NULL::character varying,
    reponse character varying(40) DEFAULT NULL::character varying,
    reponsemin character varying(143) DEFAULT NULL::character varying,
    reponseexact character varying(23) DEFAULT NULL::character varying,
    typejeu_id smallint,
    niveau_id smallint,
    domaine_id smallint,
    wordexact character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dataqr OWNER TO rebasedata;

--
-- Name: _dataqrm; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataqrm (
    id smallint,
    question1 character varying(31) DEFAULT NULL::character varying,
    reponse1 character varying(14) DEFAULT NULL::character varying,
    question2 character varying(1) DEFAULT NULL::character varying,
    reponse2 character varying(23) DEFAULT NULL::character varying,
    reponsemin1 character varying(23) DEFAULT NULL::character varying,
    reponseexact1 character varying(5) DEFAULT NULL::character varying,
    reponsemin2 character varying(79) DEFAULT NULL::character varying,
    reponseexact2 character varying(8) DEFAULT NULL::character varying,
    fichier character varying(12) DEFAULT NULL::character varying,
    typejeu_id smallint,
    niveau_id smallint,
    domaine_id smallint,
    wordexact1 character varying(4) DEFAULT NULL::character varying,
    wordexact2 character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dataqrm OWNER TO rebasedata;

--
-- Name: _dataqrp; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataqrp (
    id smallint,
    question1 character varying(93) DEFAULT NULL::character varying,
    reponse1 character varying(38) DEFAULT NULL::character varying,
    question2 character varying(1) DEFAULT NULL::character varying,
    reponse2 character varying(1) DEFAULT NULL::character varying,
    reponsemin1 character varying(89) DEFAULT NULL::character varying,
    reponseexact1 character varying(20) DEFAULT NULL::character varying,
    reponsemin2 character varying(1) DEFAULT NULL::character varying,
    reponseexact2 character varying(1) DEFAULT NULL::character varying,
    fichier character varying(39) DEFAULT NULL::character varying,
    width smallint,
    typerep1 character varying(6) DEFAULT NULL::character varying,
    typerep2 character varying(12) DEFAULT NULL::character varying,
    typejeu_id smallint,
    niveau_id smallint,
    domaine_id smallint,
    wordexact1 character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dataqrp OWNER TO rebasedata;

--
-- Name: _dataqrpm; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dataqrpm (
    id smallint,
    question1 character varying(12) DEFAULT NULL::character varying,
    reponse1 character varying(20) DEFAULT NULL::character varying,
    question2 character varying(1) DEFAULT NULL::character varying,
    reponse2 character varying(1) DEFAULT NULL::character varying,
    reponsemin1 character varying(32) DEFAULT NULL::character varying,
    reponseexact1 character varying(5) DEFAULT NULL::character varying,
    reponsemin2 character varying(1) DEFAULT NULL::character varying,
    reponseexact2 character varying(1) DEFAULT NULL::character varying,
    fichier character varying(29) DEFAULT NULL::character varying,
    width smallint,
    typerep1 character varying(1) DEFAULT NULL::character varying,
    wordexact1 character varying(11) DEFAULT NULL::character varying,
    typerep2 character varying(1) DEFAULT NULL::character varying,
    typejeu_id smallint,
    niveau_id smallint,
    domaine_id smallint
);


ALTER TABLE public._dataqrpm OWNER TO rebasedata;

--
-- Name: _doet; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doet (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataet_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doet OWNER TO rebasedata;

--
-- Name: _doeval; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doeval (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataeval_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doeval OWNER TO rebasedata;

--
-- Name: _domaine; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._domaine (
    id smallint,
    nom character varying(34) DEFAULT NULL::character varying,
    dossier character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._domaine OWNER TO rebasedata;

--
-- Name: _doqcm; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doqcm (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataqcm_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doqcm OWNER TO rebasedata;

--
-- Name: _doqr; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doqr (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataqr_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doqr OWNER TO rebasedata;

--
-- Name: _doqrm; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doqrm (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataqrm_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doqrm OWNER TO rebasedata;

--
-- Name: _doqrp; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doqrp (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataqrp_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doqrp OWNER TO rebasedata;

--
-- Name: _doqrpm; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._doqrpm (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    dataqrp_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._doqrpm OWNER TO rebasedata;

--
-- Name: _groupeinstance; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._groupeinstance (
    id smallint,
    code_groupe character varying(5) DEFAULT NULL::character varying,
    code_instance character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._groupeinstance OWNER TO rebasedata;

--
-- Name: _instance; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._instance (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    secret character varying(1) DEFAULT NULL::character varying,
    created character varying(1) DEFAULT NULL::character varying,
    updated character varying(1) DEFAULT NULL::character varying,
    etat character varying(1) DEFAULT NULL::character varying,
    sj character varying(1) DEFAULT NULL::character varying,
    sg character varying(1) DEFAULT NULL::character varying,
    sp character varying(1) DEFAULT NULL::character varying,
    nb_jeton character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._instance OWNER TO rebasedata;

--
-- Name: _log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._log (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._log OWNER TO rebasedata;

--
-- Name: _niveau; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._niveau (
    id smallint,
    niveau smallint,
    nom character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE public._niveau OWNER TO rebasedata;

--
-- Name: _statistique; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._statistique (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._statistique OWNER TO rebasedata;

--
-- Name: _typeet; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._typeet (
    id character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._typeet OWNER TO rebasedata;

--
-- Name: _typejeu; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._typejeu (
    id smallint,
    titre character varying(25) DEFAULT NULL::character varying,
    presentation character varying(93) DEFAULT NULL::character varying,
    reglement character varying(1) DEFAULT NULL::character varying,
    nbjoueurmin smallint,
    nbjoueurmax smallint,
    avecarbitre smallint,
    avecduo smallint,
    lienjeu character varying(1) DEFAULT NULL::character varying,
    code character varying(4) DEFAULT NULL::character varying,
    point1 smallint,
    point2 smallint,
    point3 smallint
);


ALTER TABLE public._typejeu OWNER TO rebasedata;

--
-- Name: _user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user (
    id smallint,
    email character varying(17) DEFAULT NULL::character varying,
    username character varying(5) DEFAULT NULL::character varying,
    roles character varying(2) DEFAULT NULL::character varying,
    password character varying(97) DEFAULT NULL::character varying,
    request_token character varying(1) DEFAULT NULL::character varying,
    request_date character varying(1) DEFAULT NULL::character varying,
    statut character varying(1) DEFAULT NULL::character varying,
    code character varying(1) DEFAULT NULL::character varying,
    locked character varying(1) DEFAULT NULL::character varying,
    token_access character varying(22) DEFAULT NULL::character varying
);


ALTER TABLE public._user OWNER TO rebasedata;

--
-- Data for Name: _account; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._account (id, user_id, denomination, adresse1, adresse2, cp, ville, departement, region, pays, latitude, longitude, info_lieu, nom, prenom, tel, mail, target, sexe, date_naiss, etat, code_f, code_co, j_j, code_secret_instance) FROM stdin;
6	1		a1jjj	a2	33700	moo							gggggg	dddddd	0112336542			1	13-04-2020	1		3957	32	9778
7	2																			0		6472	32	8754
8	3																			0		673	32	6400
\.


--
-- Data for Name: _cp_autocomplete; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._cp_autocomplete (id, codepays, cp, ville, nomadmin1, codeadmin1, nomadmin2, codeadmin2, nomadmin3, codeadmin3, latitude, longitude, acurancy) FROM stdin;
\.


--
-- Data for Name: _credit; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._credit (id, user_id) FROM stdin;
\.


--
-- Data for Name: _dataet; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataet (id, phrase, niveau_id, domaine_id, typeet_id, typejeu_id) FROM stdin;
\.


--
-- Data for Name: _dataeval; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataeval (id, question, reponse, min, max, unite, typejeu_id, niveau_id, domaine_id) FROM stdin;
\.


--
-- Data for Name: _dataqcm; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataqcm (id, question, choix, align, typejeu_id, niveau_id, domaine_id, reponse) FROM stdin;
1	Si vous portez un appareil dentaire, vous êtes allé chez un...	orthodontiste]prothésiste dentaire]dentiste]chirurgien-dentiste	0	5	3	11	orthodontiste
2	Un scientifique qui observe le comportement des animaux dans leur milieu naturel est un...	éthologue]entomologue]faunologue]ornithologue	0	5	4	10	éthologue
3	Celui qui soigne exclusivement les chevaux au quotidien est un...	palefrenier]maréchal-ferrant]vétérinaire]hippologue 	0	5	5	10	palefrenier
4	Il faut aimer les livres pour être...	bibliothécaire]bibliothéquaire]bibliotécaire]bibliotéquaire	0	5	3	12	bibliothécaire
5	Un hectare (ha) est équivalent à ?	10 m²]100 m²]1000 m²]10.000 m²	1	5	4	6	10.000 m²
6	Une seconde-lumière correspond à une distance de ?	3.000 km]30.000 km]300.000 km]3.000.000 km	1	5	3	6	300.000 km
7	Dans la mythologie romaine, quel est le Dieu des enfers ?	pluton]saturne]uranus]mercure	0	5	5	2	pluton
8	Dans la mythologie Romaine, quelle est la divinité de l'amour ?	cupidon]luna]cybèle]cérès	0	5	5	2	cupidon
9	Quel album ne fait pas partie de la discographie des Beatles ?	mystery train]help!]abbey road]sgt Pepper's	0	5	5	5	mystery train
10	Comment se nomme le petit du merle ?	merlot]merlet]merlerot]merleret	0	5	6	10	merlot
11	Comment se nomme le petit du tigre ?	tigreau]tigrou]tigron]tigrelet	0	5	6	10	tigreau
12	États d'amérique : Quelle est la capitale de la floride ?	Tallahassee]Miami]Jacksonville]Tampa	0	5	6	3	Tallahassee
13	États d'amérique : Quelle est la capitale du colorado ?	Denver]Indianapolis]Columbus]Oklahoma City	0	5	5	3	Denver
14	Qui a été le président Français de 1932 à 1940 ?	Albert Lebrun]Pompidou]Léon Blum]Paul Doumer	0	5	6	2	Albert Lebrun
15	Les Rois : Qui a régné de 695 à 711 ?	Childebert III]Clovis]Charlemagne]Henry IV	0	5	6	2	Childebert III
16	Quel est le nom de l'élément chimique Cr ?	Chrome]Cuivre]Cobalt]Carbone	0	5	4	6	Chrome
17	Selon l'institut Pasteur, combien de morts a-t-on recensés lors de la grippe espagnole de 1918 ?	30.000]300.000]3 millions]30 millions	1	5	4	11	30 millions
18	La présence habituelle d'une maladie dans une zone géographique est une ?	endémie]épidémie]pandémie]épiphytie	0	5	6	11	endémie
19	En Europe, la peste noire de 1347–1352 a décimé quel pourcentage total de la population ?	moins de 20%]20% à 30%]30% à 50%]50% à 70%	1	5	6	2	30% à 50%
20	Dans cos(x), x représente ?	un angle]une distance]une fréquence]une vitesse	0	5	4	6	un angle
21	Quelle est la monnaie d'Israel ?	Shequel]Euro]Tolar]Cedi	0	5	6	8	Shequel
22	Alphabet international : Quel mot est utilisé pour la lettre A ?	Alpha]Anna]Area]Ada	0	5	5	8	Alpha
23	Football : Quel pays a remporté la coupe du monde en 1994 ?	Brésil]Italie]France]Espagne	0	5	3	7	Brésil
24	Quel signe naît du 23 octobre au 21 novembre ?	Scorpion]Vierge]Capricorne]Taureau	0	5	5	8	Scorpion
25	Quel appareil permet de mesurer la vitesse ou la pression du vent ?	Anémomètre]Vacuomètre]Goniomètre]Accélérographe	0	5	4	6	Anémomètre
\.


--
-- Data for Name: _dataqr; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataqr (id, question, reponse, reponsemin, reponseexact, typejeu_id, niveau_id, domaine_id, wordexact) FROM stdin;
1	Qui a construit la coupole de Santa Maria del Fiore, la cathédrale de Florence?	Brunelleschi	brunelleschi*brunellesco*Brunelleschi lippi*filippo brunelleschi*filippo di ser brunellesco lippi*filippo di ser brunellesco*di ser brunellesco	60*60*60*60*60*60	2	7	1	
2	"Vive le Québec Libre !" - cette phrase a été prononcée par ?	Le général de Gaulle (charles de Gaulle)	de gaulle*general*general gaulle*general de gaulle*le general de gaulle*charles de Gaulle*charles gaulle	70*60*80*70*80*80	2	3	2	
3	Quel roi fut guillotiné pendant la Révolution française ?	Louis 16	louis 16*louis seize	90*90	2	3	2	
4	La semoule à couscous est fabriquée à partir de ?	blé dur	ble*le ble*le ble dur*ble dur*de ble*de ble dur*du ble*du ble dur	90*90*90*90*90*90*90*90	2	5	9	
5	Un grizzli est ?	un grand ours gris (d'Amérique du nord)	ours*un ours	90*90	2	5	10	
6	Hector Berlioz était un célèbre  ..... ?	musicien	musicien*musique	90*90	2	6	8	
9	Sous quel nom sont réunis les différents contes parmi lesquels figurent aladin, sinbad le marin...	Les 1001 Nuits	les 1001 nuits*1001 nuits*les mille et une nuits*mille et une nuits*mille une nuits	80*80*80*80*80	2	8	12	
10	Dans quel musée peut-on aller admirer la Joconde ? 	Le musée du Louvre	le musée du louvre*musee du louvre*le musee louvre*musee louvre*du louvre*louvre*au louvre	80*80*80*80*80*80*80	2	3	2	
11	Dans les milieux maritimes, quelle échelle indique un état du couple vent/mer ?	Échelle de Beaufort	l'echelle de beaufort*echelle de beaufort*l'echelle beaufort*echelle beaufort*de beaufort*beaufort	80*80*80*80*80*80	2	4	8	
12	Du jaune et du bleu donne quelle couleur ?	vert	vert	80	2	2	8	
13	Comment s'appelle le druide dans les albums d'asterix ?	panoramix	panoramix*le druide panoramix*druide panoramix	70*70*70	2	3	8	
14	De quel film est issue cette citation ?\r\n"Houston, on a un problème !"	Apollo 13	apollo 13*apollo treize	80*80	2	5	4	
15	De quel film est issue cette citation ?\r\n"J'adore l'odeur du napalm au petit matin"	Apocalypse Now	apocalypse now	80	2	5	4	
16	De quel film est issue cette citation ?\r\n"Je vais lui faire une offre qu'il ne refusera pas"	Le parrain	parrain*du parrain*le parrain	80*80*80	2	5	4	
17	De quel film est issue cette citation ?\r\n"Mes mains sont faites pour l'or et elles sont dans la merde"	Scarface	scarface	80	2	5	4	
18	De quel film est issue cette citation ?\r\n"Reste cool, sac à merde !"	Terminator	terminator	80	2	4	4	
19	De quel film est issue cette citation ?\r\n"C'est à moi que tu parles ?"\r\n"C'est à moi que tu parles ?"	Taxi Driver	taxi driver	80	2	5	4	
20	De quel film est issue cette citation ?\r\n"Les cons ça ose tout. C'est même à ça qu'on les reconnait"	Tontons flingueurs	tontons flingueurs*les tontons flingueurs	80*80	2	5	4	
\.


--
-- Data for Name: _dataqrm; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataqrm (id, question1, reponse1, question2, reponse2, reponsemin1, reponseexact1, reponsemin2, reponseexact2, fichier, typejeu_id, niveau_id, domaine_id, wordexact1, wordexact2) FROM stdin;
2	Interprète/groupe et le titre ?	Agnes Obel		Riverside	obel*agnes obel	80*70	riverside	70	ao_r.mid	9	6	5	obel	
4	Interprète/groupe et le titre ?	Indochine		3 nuits par semaine	indochine	80	3 nuits par semaine*3 nuits semaine*trois nuits par semaine*trois nuits semaine	80*80*80	i_3nps.mid	9	2	5		
5	Interprète/groupe et le titre ?	Metallica		Nothing else matters	metallica	80	nothing else matters*nothing matters	70*80	m_nem.mid	9	3	5		
6	Interprète/groupe et le titre ?	The Cure		Close to me	the cure*cure	70*70	close to me*close me	70*80	tc_ctm.mid	9	4	5		
8	Interprète/groupe et le titre ?	The Offspring 		Come out and play	offspring*the offspring	80*70	come out and play*come out play	70*70	to_coap.mid	9	7	5		
12	Interprète/groupe et le titre ?	The Police		Roxanne	police*the police	80*70	roxanne	70	p_r.mid	9	7	5		
13	Interprète/groupe et le titre ?	Ace of Base		All that she wants	ace of base*ace base	80*70	all that she wants	70	aob_atsw.mid	9	7	5		
14	Interprète/groupe et le titre ?	Depeche Mode		Enjoy the silence	depeche mode	80	enjoy the silence*enjoy silence	70*70	dm_ets.mid	9	7	5		
15	Interprète/groupe et le titre ?	Phil Collins		Another day in paradise	phil collins*collins	80*80	Another day in paradise	70	pc_adip.mid	9	7	5		
16	Interprète/groupe et le titre ?	Oasis		Wonderwall	oasis	80	Wonderwall	70	o_w.mid	9	7	5		
\.


--
-- Data for Name: _dataqrp; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataqrp (id, question1, reponse1, question2, reponse2, reponsemin1, reponseexact1, reponsemin2, reponseexact2, fichier, width, typerep1, typerep2, typejeu_id, niveau_id, domaine_id, wordexact1) FROM stdin;
2	Qui a peint "la joconde" ?	Léonard de vinci			vinci*da vinci*de vinci*leonard vinci*leonard de vinci*leonardo da vinci*leonardo vinci	80*80*70*70*70*70*70			vinci-joconde.jpg	268	auteur	titre	7	1	1	
3	Quel est le titre de cette oeuvre peint par Auguste Renoir ?	Le déjeuner des canotiers			dejeuner canotiers*le dejeuner des canotiers*dejeuner des canotiers*le dejeuner canotiers	70*70*70*70			renoir-dejeuner_canotiers.jpg	400	auteur	titre	7	4	1	
4	Quel est le titre de cette fresque conçu par Michel-Ange ?	La Création d'Adam			creation adam*la creation d adam*la creation adam*creation d adam	70*70*70*70			michelange_creation_adam.jpg	1136	auteur	titre	7	6	1	
5	Le masque de quel pharaon ?	Toutânkhamon			toutankhamon*le masque de toutankhamon*masque de toutankhamon*masque toutankhamon	70*70*70*70			toutankhamon.jpg	0	nom	archéologue	7	5	2	
6	Quelle civilisation est à l'origine du Machu Picchu ?	Les Incas			inca*incas*les incas	80*80*80			machu-picchu.jpg	280	nom	civilisation	7	5	3	
7	Dans quelle ville peut-on emprunter le Golden Gate Bridge?	San Francisco			san francisco*cisco*francisco	70*100*90			golden-gate-bridge.jpg	0	pont	ville	7	6	1	
8	De quel massif le mont Everest fait-il partie ?	la chaîne de l'Himalaya			himalaya*l himalaya*macif de l'himalaya*le macif de l'himalaya	80*70*70*70			mont-everest.jpg	0	nom	massif	7	4	3	
9	Quel est le surnom de la grande cloche se trouvant au sommet de la tour Elizabeth ?	Big Ben			big ben	70			big-ben.jpg	0	tour	horloge	7	5	1	
11	Quel est le nom de ces fleurs ?	Les Fleurs d’Eucalyptus			eucalyptus	70			eucalyptus.jpg	0	nom	pays	7	6	10	
12	De quelle nationalité est Eddy Merckx ?	Belge			belge*belgique	70*70			eddy-merckx.jpg	260	nom	nationalité	7	6	7	
13	De quel film est issue cette photo ?	Imitation Game			imitation game	80			benedict_cumberbatch_imitation-game.jpg	0	nom	film	7	4	4	
14	Quel est le nom de ce célèbre artiste ?	Freddie Mercury (né Farrokh Bulsara)			mercury*freddie mercury*freddy mercury*Farrokh Bulsara*Bulsara	80*70*70*70*70			freddie_mercury.jpg	0	groupe	chanteur	7	2	5	
15	Quel est le titre de cette oeuvre peint par Léonard de Vinci ?	La Joconde ou le portrait de Mona Lisa			joconde*la joconde*mona lisa*le portrait de mona lisa*portrait mona lisa	80*80*70*70			vinci-joconde.jpg	268	auteur	titre	7	1	1	
16	Qui a peint "Le déjeuner des canotiers" ?	Auguste Renoir			renoir*auguste renoir	80*70			renoir-dejeuner_canotiers.jpg	400	auteur	titre	7	4	1	
17	Qui est l'auteur de cette fresque "La Création d'Adam" ?	Michel-Ange			michel ange*michelangelo*buonarroti*simoni	70*70*70*70			michelange_creation_adam.jpg	1136	auteur	titre	7	6	1	
18	Dans quel bâtiment peut on trouver "la création d'adam", une fresque conçu par Michel-Ange ?	La Chapelle Sixtine			sixtine*la chapelle sixtine*chapelle sixtine	100*80*80			michelange_creation_adam.jpg	1136	auteur	titre	7	6	1	
19	Ou peut on trouver "la création d'adam", une fresque conçu par Michel-Ange ? (ville, état...)	Rome (Vatican) en Italie			rome*vatican*italie	90*90*90			michelange_creation_adam.jpg	1136	auteur	titre	7	6	1	
21	Quel est le nom de cette tour ?	Elizabeth Tower			elizabeth*elizabeth tower*tour elizabeth	70*70*70			big-ben.jpg	0	tour	horloge	7	5	1	
22	Quel est le nom de ce célèbre sportif ?	Eddy Merckx			merckx*eddy merckx	70*70			eddy-merckx.jpg	0	nom	nationalité	7	6	7	
23	Quel est le nom de ce célèbre pont ?	Golden Gate Bridge			golden gate*golden gate bridge	80*70			golden-gate-bridge.jpg	0	pont	ville	7	6	1	
24	Quel est le nom de cette ancienne cité Inca ?	Machu Picchu			machu picchu	70			machu-picchu.jpg	0	nom	civilisation	7	5	3	
25	Dans quel pays se trouve le Machu Picchu ?	Au Pérou			perou*au perou	80*80			machu-picchu.jpg	0	nom	civilisation	7	5	3	
26	Quel est le nom de cette montagne ?	Le Mont Everest			everest*mont everest*le mont everest	80*70*70			mont-everest.jpg	0	nom	massif	7	4	3	
27	Le buste de quelle reine d'Égypte ?	Néfertiti			nefertiti	70			nefertiti.jpg	0	nom	époux	7	6	2	
\.


--
-- Data for Name: _dataqrpm; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dataqrpm (id, question1, reponse1, question2, reponse2, reponsemin1, reponseexact1, reponsemin2, reponseexact2, fichier, width, typerep1, wordexact1, typerep2, typejeu_id, niveau_id, domaine_id) FROM stdin;
1	Qui est-ce ?	Benedict Cumberbatch			benedict cumberbatch*cumberbatch	70*70			qrpm_benedict-cumberbatch.jpg	950		cumberbatch		10	4	4
2	Qui est-ce ?	Freddie Mercury			freddie mercury*mercury	70*70			qrpm_freddie-mercury.jpg	1020		mercury		10	3	5
\.


--
-- Data for Name: _doet; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doet (id, user_id, date, dataet_id) FROM stdin;
\.


--
-- Data for Name: _doeval; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doeval (id, user_id, date, dataeval_id) FROM stdin;
\.


--
-- Data for Name: _domaine; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._domaine (id, nom, dossier) FROM stdin;
1	Art / Architecture	art
2	Histoire	histoire
3	Géographie	geographie
4	Cinéma & Culture télévisé	cinema-tv
5	Musique	musique
6	Science / Technologie / Astronomie	science
7	Sport	sport
8	Culture générale	culture
9	Gastronomie / Alimentation	gastronomie
10	Nature / la faune & la flore	nature
11	Santé / Médecine	sante
12	Littérature / Langue Française	litterature
\.


--
-- Data for Name: _doqcm; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doqcm (id, user_id, date, dataqcm_id) FROM stdin;
\.


--
-- Data for Name: _doqr; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doqr (id, user_id, date, dataqr_id) FROM stdin;
\.


--
-- Data for Name: _doqrm; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doqrm (id, user_id, date, dataqrm_id) FROM stdin;
\.


--
-- Data for Name: _doqrp; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doqrp (id, user_id, date, dataqrp_id) FROM stdin;
\.


--
-- Data for Name: _doqrpm; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._doqrpm (id, user_id, date, dataqrp_id) FROM stdin;
\.


--
-- Data for Name: _groupeinstance; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._groupeinstance (id, code_groupe, code_instance) FROM stdin;
753	CHR63	TBXZU
754	DTH52	TBXZU
755		TBXZU
756		TBXZU
757		TBXZU
758		TBXZU
759		TBXZU
760		TBXZU
777	CGO20	TBSOG
778	EFM40	TBSOG
779		TBSOG
780		TBSOG
781		TBSOG
782		TBSOG
783		TBSOG
784		TBSOG
809	CMY92	TMXOC
810	EAM98	TMXOC
811		TMXOC
812		TMXOC
813		TMXOC
814		TMXOC
815		TMXOC
816		TMXOC
849		TJLDM
850		TJLDM
851		TJLDM
852		TJLDM
853		TJLDM
854		TJLDM
855		TJLDM
856		TJLDM
881	AHO83	TBZSV
882		TBZSV
883		TBZSV
884		TBZSV
885		TBZSV
886		TBZSV
887		TBZSV
888		TBZSV
1065		AXJBQ
1066		AXJBQ
1067		AXJBQ
1068		AXJBQ
1069		AXJBQ
1070		AXJBQ
1071		AXJBQ
1072		AXJBQ
1073	BDF74	AWXVV
1074	FRB43	AWXVV
1075		AWXVV
1076		AWXVV
1077		AWXVV
1078		AWXVV
1079		AWXVV
1080		AWXVV
1081		AVZPQ
1082		AVZPQ
1083		AVZPQ
1084		AVZPQ
1085		AVZPQ
1086		AVZPQ
1087		AVZPQ
1088		AVZPQ
1105	AZG10	APCHM
1106		APCHM
1107		APCHM
1108		APCHM
1109		APCHM
1110		APCHM
1111		APCHM
1112		APCHM
1113		AMPVQ
1114		AMPVQ
1115		AMPVQ
1116		AMPVQ
1117		AMPVQ
1118		AMPVQ
1119		AMPVQ
1120		AMPVQ
1121		ABULE
1122		ABULE
1123		ABULE
1124		ABULE
1125		ABULE
1126		ABULE
1127		ABULE
1128		ABULE
1129		AXTOP
1130		AXTOP
1131		AXTOP
1132		AXTOP
1133		AXTOP
1134		AXTOP
1135		AXTOP
1136		AXTOP
1137		AYBWN
1138		AYBWN
1139		AYBWN
1140		AYBWN
1141		AYBWN
1142		AYBWN
1143		AYBWN
1144		AYBWN
1329	BDE14	AQQLU
1330	FCP42	AQQLU
1331	GOT45	AQQLU
1332		AQQLU
1333		AQQLU
1334		AQQLU
1335		AQQLU
1336		AQQLU
1361	AUL57	APBHF
1362		APBHF
1363		APBHF
1364		APBHF
1365		APBHF
1366		APBHF
1367		APBHF
1368		APBHF
1393	CUG17	AVEWZ
1394		AVEWZ
1395		AVEWZ
1396		AVEWZ
1397		AVEWZ
1398		AVEWZ
1399		AVEWZ
1400		AVEWZ
1417	CCI84	APSRN
1418		APSRN
1419		APSRN
1420		APSRN
1421		APSRN
1422		APSRN
1423		APSRN
1424		APSRN
1441	CWV95	APYYD
1442		APYYD
1443		APYYD
1444		APYYD
1445		APYYD
1446		APYYD
1447		APYYD
1448		APYYD
1465	CUP85	AWBBB
1466	DUB40	AWBBB
1467		AWBBB
1468		AWBBB
1469		AWBBB
1470		AWBBB
1471		AWBBB
1472		AWBBB
1489	CKV34	ACKFP
1490	FHO91	ACKFP
1491		ACKFP
1492		ACKFP
1493		ACKFP
1494		ACKFP
1495		ACKFP
1496		ACKFP
1593	CNI38	AYLYC
1594	DLX47	AYLYC
1595	HGI15	AYLYC
1596	LXH91	AYLYC
1597	NGK05	AYLYC
1598		AYLYC
1599		AYLYC
1600		AYLYC
1641	ACP98	APEEO
1642	EBQ34	APEEO
1643	GFA25	APEEO
1644		APEEO
1645		APEEO
1646		APEEO
1647		APEEO
1648		APEEO
2308	ALD21	AJJEY
2309	FDX18	AJJEY
2310	HWB18	AJJEY
2311		AJJEY
2312		AJJEY
2313		AJJEY
2314		AJJEY
2315		AJJEY
2340	AMC04	ACJDU
2341	DQM06	ACJDU
2342		ACJDU
2343		ACJDU
2344		ACJDU
2345		ACJDU
2346		ACJDU
2347		ACJDU
2348	CDG98	ABQKD
2349	ESK91	ABQKD
2350		ABQKD
2351		ABQKD
2352		ABQKD
2353		ABQKD
2354		ABQKD
2355		ABQKD
2452	BKF29	ALWJW
2453	DBP13	ALWJW
2454	HQY94	ALWJW
2455		ALWJW
2456		ALWJW
2457		ALWJW
2458		ALWJW
2459		ALWJW
2460	AOG79	AYBPS
2461	FYM61	AYBPS
2462	ITR02	AYBPS
2463	KUO75	AYBPS
2464	MTO41	AYBPS
2465	RSK27	AYBPS
2466	SLP23	AYBPS
2467	VHN42	AYBPS
2468		AYBPS
2469	ADR86	AMGLJ
2470		AMGLJ
2471		AMGLJ
2472		AMGLJ
2473		AMGLJ
2474		AMGLJ
2475		AMGLJ
2476		AMGLJ
2477	CNO84	AHSUR
2478	FNF80	AHSUR
2479		AHSUR
2480		AHSUR
2481		AHSUR
2482		AHSUR
2483		AHSUR
2484		AHSUR
2485	AED04	ARMLN
2486		ARMLN
2487		ARMLN
2488		ARMLN
2489		ARMLN
2490		ARMLN
2491		ARMLN
2492		ARMLN
2493	AEP70	AVHBK
2494	ETC65	AVHBK
2495		AVHBK
2496		AVHBK
2497		AVHBK
2498		AVHBK
2499		AVHBK
2500		AVHBK
2501	AUR70	ABBGM
2502	DPU50	ABBGM
2503	GPX81	ABBGM
2504		ABBGM
2505		ABBGM
2506		ABBGM
2507		ABBGM
2508		ABBGM
\.


--
-- Data for Name: _instance; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._instance (id, user_id, code, secret, created, updated, etat, sj, sg, sp, nb_jeton) FROM stdin;
\.


--
-- Data for Name: _log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._log (id, user_id) FROM stdin;
\.


--
-- Data for Name: _niveau; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._niveau (id, niveau, nom) FROM stdin;
1	0	huitre
2	1	singe savant
3	2	collège
4	3	universitaire
5	4	docteur
6	5	terminator
7	6	extra terrestre
8	7	Dieu
\.


--
-- Data for Name: _statistique; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._statistique (id, user_id) FROM stdin;
\.


--
-- Data for Name: _typeet; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._typeet (id, type) FROM stdin;
\.


--
-- Data for Name: _typejeu; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._typejeu (id, titre, presentation, reglement, nbjoueurmin, nbjoueurmax, avecarbitre, avecduo, lienjeu, code, point1, point2, point3) FROM stdin;
2	question / réponse	une question, une réponse		1	8	1	0		qr	6	0	0
5	QCM	4 propositions, une réponse		1	8	0	0		qcm	4	2	0
7	question  / photo			1	8	1	0		qrp	6	3	0
9	question  / musique	Trouvez l'auteur et le titre du morceau qui est joué avec un filtre pour corser la difficulté		1	8	1	0		qrm	6	3	0
10	question  / photo mystère			1	8	1	0		qrpm	6	3	0
\.


--
-- Data for Name: _user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user (id, email, username, roles, password, request_token, request_date, statut, code, locked, token_access) FROM stdin;
1	poub330@gmail.com	duke	[]	$argon2id$v=19$m=65536,t=4,p=1$VTguMXRacEVJR2ZzbTBCbw$JPV3n3+zKnGQAby8+AfUAGEq1PbuHWR98btI5c6K1Kw						wB0DSIhzwlf0dnnq5EPckg
2	toto@toto.fr	toto	[]	$argon2id$v=19$m=65536,t=4,p=1$OGN3SkI3SXZLMVpKYXd2WQ$Nxv+djHHJJtpEfFRP0Lm5bJjLZE6TRPTyiMttkCHaH8						
3	user1@gmail.com	user1	[]	$argon2id$v=19$m=65536,t=4,p=1$Ym11NkxyVE1vNkczZzNTcQ$HwTBQG8yb9DpTRiOmqXjbuPC9xTBxRhn/v/7XOjNwIY						
\.


--
-- PostgreSQL database dump complete
--

