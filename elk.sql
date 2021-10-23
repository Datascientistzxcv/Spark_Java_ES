--
-- PostgreSQL database dump
--

-- Dumped from database version 11.13 (Debian 11.13-0+deb10u1)
-- Dumped by pg_dump version 11.13 (Debian 11.13-0+deb10u1)

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
-- Name: es; Type: SCHEMA; Schema: -; Owner: shekhar
--

CREATE SCHEMA es;


ALTER SCHEMA es OWNER TO shekhar;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: koelnpoitable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.koelnpoitable (
    "SID" text,
    "NAME" text,
    "ADRESSE" text,
    lat real,
    lon real,
    "STADTTEIL" text,
    "STADTVIERTEL" text
);


ALTER TABLE es.koelnpoitable OWNER TO shekhar;

--
-- Name: koelnraweventtable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.koelnraweventtable (
    "SID" text,
    description text,
    lat real,
    lon real,
    ort text,
    plz text,
    strasse text,
    uhrzeit text,
    veranstaltungsort text
);


ALTER TABLE es.koelnraweventtable OWNER TO shekhar;

--
-- Name: kvbnextbiketable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.kvbnextbiketable (
    id text,
    "bikeNumber" text,
    lat real,
    lon real
);


ALTER TABLE es.kvbnextbiketable OWNER TO shekhar;

--
-- Name: openweathertable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.openweathertable (
    city text,
    lat real,
    lon real,
    humidity bigint,
    pressure bigint,
    temp real,
    temp_max real,
    temp_min real,
    "timestamp" timestamp without time zone,
    wind_speed real
);


ALTER TABLE es.openweathertable OWNER TO shekhar;

--
-- Name: wunderfleettable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.wunderfleettable (
    vehicle_id text,
    vehicle_type text,
    lat real,
    lon real
);


ALTER TABLE es.wunderfleettable OWNER TO shekhar;

--
-- Data for Name: koelnpoitable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.koelnpoitable ("SID", "NAME", "ADRESSE", lat, lon, "STADTTEIL", "STADTVIERTEL") FROM stdin;
6e74a035-202b-4846-97da-46ce8b4cb0d7	Jugendpark	im Rheinpark Zoobrücke, Sachsenbergstr.	50.9540291	6.98011351	Mülheim	\N
a8bb695e-9e7e-44af-b7b7-0181d48dcec0	Rheinauhafen	\N	50.9284439	6.96510744	Altstadt/Süd	\N
a236188b-ddb2-4b46-b92c-bb2b256d3156	Dom	Domkloster 4	50.9413147	6.95719767	Altstadt/Nord	City
afbc9a7e-494d-4455-98e8-6910da8fbe00	Flora	Amsterdamer Str. 34	50.9608994	6.9701438	Riehl	Zoo-Flora
53ce6ebf-0272-462a-8922-78f9f6a6311f	Rheinpark	\N	50.9492531	6.97564745	Deutz	Zuordnung Deutz
e7d2874e-9256-4bb4-94b6-9e67aa3e767c	Römerturm	Zeughausstr. 13	50.9409142	6.94670582	Altstadt/Nord	Neumarkt-Viertel
ebc24b6b-643a-4259-9069-e4b0b3d8ed9c	Overstolzenhaus	Rheingasse 8	50.9340172	6.96047592	Altstadt/Süd	Georgs-Viertel
022f89b9-3379-4115-a5b7-914d965b9607	Finkens Garten	Friedrich-Ebert-Str. 49	50.8880386	6.98572159	Rodenkirchen	Schillingsrott
c21ff572-2acb-4018-a9b7-8e6eb576bd5c	Harald-Schmidt-Show	Schanzenstr. 39	50.9698753	7.01763248	Mülheim	GI Mülheim-Nord
12259335-b47d-4a2d-b112-96d8134be661	Severinstor	Chlodwigplatz 28	50.921917	6.9593606	Altstadt/Süd	Severins-Viertel
1dc142d5-6420-45ba-8bfe-85aaf47dbd0f	Tanzbrunnen	Rheinparkweg 1	50.9460983	6.97188568	Deutz	Zuordnung Deutz
a78785ae-4242-49e1-abf9-e7a958674cbf	Mikwe (Jüdisches Bad)	Rathausplatz 2	50.9379539	6.95862389	Altstadt/Nord	City
a1448b63-3e61-4bb9-bc88-23dc3796c293	Hahnentor	Rudolfplatz 9	50.9363327	6.94019461	Altstadt/Süd	Mauritius-Viertel
4a8923f2-6795-44b9-a29a-bc2a1ac9f648	Bottmühle	Severinswall 32	50.9228935	6.9632268	Altstadt/Süd	Severins-Viertel
cc740068-699e-4987-9296-221bc6a57a80	Rheinseilbahn	Frohngasse/Zoobrücke	50.9570122	6.97366858	Riehl	Niederländer-Viertel
b409bf30-0a69-48aa-a79c-26170f57e542	Musical-Dome	Goldgasse 1	50.9428825	6.96206522	Altstadt/Nord	Kuniberts-Viertel
ba9454f3-528d-4443-b799-acbb895f3aa8	Axa-Hochhaus	An der Schanz 2	50.9606094	6.98217392	Riehl	Niederländer-Viertel
e8cafbf1-da9f-4764-a0bc-dc4720110340	Wehrturm	Hauptstr. Zü 182	50.8696785	7.04650402	Zündorf	Zündorf
b920521b-078b-46d3-a32b-ca5f73037453	Weltstadthaus	Schildergasse 65	50.9361954	6.95263958	Altstadt/Nord	Neumarkt-Viertel
a90af9fe-c5f8-46c4-b589-aef7deabae76	WDR	Appellhofplatz 1	50.9401016	6.95231438	Altstadt/Nord	Neumarkt-Viertel
878c1bb8-f8c1-4303-8284-b40506577ff8	Gürzenich	Martinstr. 29	50.936573	6.95844698	Altstadt/Nord	City
baccfc77-4a18-46b0-8a92-720ed25a5649	Römisches Nordtor	Unter Fettenhennen 11	50.941494	6.95662594	Altstadt/Nord	City
b9eb3824-19d0-4922-83b6-a7d8edcc9c81	E-Werk	Schanzenstr. 37	50.9696617	7.01652718	Mülheim	GI Mülheim-Nord
8d557f40-c4d2-417a-a9d2-e95d72ad7013	Eigelsteintor	Eigelstein 139	50.9492912	6.95677757	Altstadt/Nord	Eigelstein-Viertel
73ac07c2-240d-4fc1-b895-b881170413dd	Castrum Divitium	Von-Gablenz-Str. 2	50.9378548	6.97047186	Deutz	Deutz
bf0df135-cd63-4ab8-aed7-05d11b1762b0	Palladium	Schanzenstr. 40	50.9692001	7.01809216	Mülheim	GI Mülheim-Nord
3e7c3533-023f-4f96-85cc-c1c9324a094f	Ubiermonument	An der Malzmühle 1	50.933857	6.95915413	Altstadt/Süd	Kapitol-Viertel
edef21e4-b26d-406c-aa41-f34cc1e57073	Bayenturm	Am Bayenturm 2	50.9237328	6.96699047	Altstadt/Süd	Rheinauhafen
26bf744f-3a02-4c9e-bc57-72de7a3d0a90	Melaten	Aachener Str. 204	50.9392776	6.916677	Lindenthal	\N
efab300e-02a8-479a-b697-b793d71d3ab3	Zoo	Riehler Str. 173	50.958149	6.97317266	Riehl	Zoo-Flora
99d3bdb2-d815-471e-8eb4-0f7632932cd7	St. Gereon	Gereonsdriesch 4	50.9432106	6.94618464	Altstadt/Nord	Gereons-Viertel
99fca7f8-7463-4d5a-8fd2-1d2300aab3d7	Coloneum Ossendorf	Am Coloneum 1	50.9875221	6.89605379	Ossendorf	GE Ossendorf
c2cc4107-6403-451e-a868-7ba1f8fbb9e6	Praetorium	Rathausplatz 4	50.9384689	6.95902872	Altstadt/Nord	City
b2ae7164-b34a-4d16-85a6-14e3ea071048	Römische Grabkammer	Aachener Str. 1328	50.938755	6.82444286	Weiden	Alt-Weiden
e8f7af0e-109e-4128-9720-b279be9ec69c	St. Maria im Kapitol	Marienplatz 19	50.9344025	6.95851183	Altstadt/Süd	Kapitol-Viertel
9c757850-ee51-4a1b-a1dd-326b3f72e2c9	4711-Haus	Glockengasse 4	50.9384804	6.95226574	Altstadt/Nord	Neumarkt-Viertel
34eccba6-ca22-40e2-8ee5-7de2f38f3c9b	Heinzelmännchenbrunnen	Am Hof	50.9399872	6.95727253	Altstadt/Nord	\N
e19c1d94-87b3-42a3-b35e-d66b5c519409	DLR Deutsches Zentrum für	Linder Höhe	50.8525124	7.1193409	Grengel	\N
803d8a4d-3ba5-4e0d-a267-41e2f56df9d2	St. Andreas	Andreaskloster 1	50.941906	6.95447683	Altstadt/Nord	Andreas-Viertel
104abea3-7148-43ad-8c67-5cdb052c2991	St. Pantaleon	Am Pantaleonsberg 2	50.9286385	6.94768333	Altstadt/Süd	Pantaleons-Viertel
3ca5e9e9-4786-4c6e-aa34-278138b39663	mittelalterl. Stadtmauer	Gereonswall 110	50.9463654	6.94726467	Altstadt/Nord	Gereons-Viertel
39a54364-003a-4a1c-b1b4-46f9d4beeba4	St. Georg	Georgsplatz 17	50.9319077	6.95717907	Altstadt/Süd	Georgs-Viertel
9c0cbcb9-c9de-4c09-a5bd-0b6005123d8d	Rautenstrauch-Joest-Museum	Leonhard-Tietz-Str. 10	50.9343758	6.95068455	Altstadt/Süd	Cäcilien-Viertel
52d0b49c-2044-4853-864f-16188a8b4229	Weltkugel von HA Schult	Riehler Str. 190 DEVK-Haus	50.9579086	6.97589684	Riehl	Niederländer-Viertel
56b69da7-3742-4913-a006-109a06bedb39	Groß St.Martin	An Groß St.Martin 9	50.9385605	6.96128941	Altstadt/Nord	Martins-Viertel
e69ab947-bd8b-45a9-bc4c-42f269196ab9	RheinEnergieStadion	Aachener Str. 999	50.9336281	6.87512016	Müngersdorf	Stadion
e752bc86-3d21-4aab-8798-335ff44b6a59	Skulpturenpark	Riehler Str./Elsa-Brandström-Str.	50.9556198	6.97030926	Neustadt/Nord	Gerichts-Viertel
e752bc86-3d21-4aab-8798-335ff44b6a59	Skulpturenpark	Schillingsrotter Str.	50.8860321	6.98293447	Rodenkirchen	\N
8114112a-5b33-4773-be59-77d432c07c10	Aquarium	Riehler Str. 173	50.9583702	6.97247696	Riehl	Zoo-Flora
616325c0-9fcb-4528-9ba6-12209f19a029	St. Severin	Severinskirchplatz 1	50.9235916	6.96010923	Altstadt/Süd	Severins-Viertel
f96109a5-ecec-4fb8-839d-ec225453e47c	Hist. Rathaus	Rathausplatz 2	50.938118	6.95930195	Altstadt/Nord	City
e6cc1423-bae9-4287-9209-fea2cb3f8a65	Ulrepforte	Sachsenring 42	50.924118	6.95299625	Neustadt/Süd	Südstadt
2e524b98-fb02-4cdf-86c1-d9d1886de8e8	Wolkenburg	Mauritiussteinweg 61	50.9328651	6.94477654	Altstadt/Süd	Mauritius-Viertel
cbcb35d4-9f63-4fb1-8af8-680183946c98	St. Aposteln	Neumarkt 30	50.9366341	6.94502687	Altstadt/Süd	Cäcilien-Viertel
e073bce5-5f64-4148-aaab-9a8f3205532d	St. Maria in Lyskirchen	An Lyskirchen 12	50.9330788	6.96264124	Altstadt/Süd	Georgs-Viertel
859eff07-8d66-48d6-92ac-179f1eff0fd5	St. Kunibert	Kunibertsklostergasse 2	50.9467926	6.96266556	Altstadt/Nord	Kuniberts-Viertel
1464f537-82d6-4701-a4ad-774ebbd1e46c	Saturn-Hochhaus	Hansaring 97	50.9490509	6.95152235	Neustadt/Nord	Media-Park
cae8aeb4-aad6-494e-be0c-afcdbf074ae1	Museum Schnütgen	Cäcilienstr. 29	50.9346695	6.9515276	Altstadt/Süd	Cäcilien-Viertel
ef1bc712-2110-4299-90cd-84252ed12a02	Stadtmauer	Blaue-Funken-Weg 2	50.9251289	6.9510541	Altstadt/Süd	Pantaleons-Viertel
1eacf129-7b24-4101-b836-f62161f66322	LanxessArena	Willy-Brandt-Platz 1	50.9384537	6.98295784	Deutz	Köln-Arena
7df91f35-7aea-499e-8a56-bd73fed29f08	LVR-Turm / Köln Triangle	Ottoplatz 1	50.9403763	6.97183704	Deutz	Deutz
cb64020d-d6c0-4e58-a95b-1c483787d042	St. Ursula	Ursulaplatz 24	50.9456749	6.9545002	Altstadt/Nord	Ursula-Viertel
a4ddc105-d073-4c4b-b4b7-8839e841524c	Forstbotanischer Garten	Schillingsrotter Str. 100	50.8833771	6.98014164	Rodenkirchen	\N
5ee712a6-3081-484a-be71-144e52471bd8	Heinrich-Böll-Platz	\N	50.9411201	6.9608202	Altstadt/Nord	\N
\.


--
-- Data for Name: koelnraweventtable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.koelnraweventtable ("SID", description, lat, lon, ort, plz, strasse, uhrzeit, veranstaltungsort) FROM stdin;
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Hier lernen Sie was genau unter Künstlicher Intelligenz zu verstehen ist und wie sie sich entwickelt hat.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Programmieren, Sensoren verkabeln und Klänge durch Berührung steuern.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Grundlagen der Programmiersprache und Entstehung von eigener Musik	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	alles rund um die Welt der Zahlen	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Bau eines Synthesizers	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	mit dem Lasercutter Objekte aus Kunststoff oder Holz gestalten	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Bau eines Elektro Autos	50.9610291	7.00479984	Köln	51065	Wiener Platz	14 bis 17 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.9610291	7.00479984	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
9ec11940-2d7c-416f-9672-5383c008a1a8	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9539909	6.91934872	Köln	50825	Subbelrather Straße	14 bis 17 Uhr	Stadtteilbibliothek Ehrenfeld
aadd0925-dca6-4092-94f1-4cadff751578	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	14 bis 17 Uhr	Stadtteilbibliothek Rodenkirchen
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
38cbe7f4-e106-4cb4-ad6d-326e6b436250	spannende Experimente zum Thema anziehende Kräfte	50.9224968	6.95902586	Köln	50678	Severinstraße	14 bis 17 Uhr	Stadtteilbibliothek Haus Balchem
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.022316	6.89936447	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Treffsicherheit von Pflanzenbestimmungs-Apps	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen was man mit 3D-Druckern alles machen kann.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	17 bis 17:30 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Pflanzen Sie ihren ganz individuellen Flaschengarten.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	17:30 bis 19:30 Uhr	Stadtbibliothek Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
f178f7a7-5f5d-482b-9672-38c064a278c6	spannende Experimente zum Thema anziehende Kräfte	50.9340324	7.06100178	Köln	51109	An St. Adelheid	14 bis 17 Uhr	Stadtteilbibliothek Neubrück
1df950ab-e8cc-4f92-800d-362a9323407e	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.9728203	6.9516325	Köln	50733	Neusser Straße	14 bis 17 Uhr	Stadtteilbibliothek Nippes
48b6edd4-c03c-4669-9179-52168c10f82a	Bau eines Elektro Autos	50.8849487	7.05444527	Köln	51143	Friedrich-Ebert-Ufer	14 bis 17 Uhr	Stadtteilbibliothek Porz
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
65277a6b-34d7-4dcc-8e1d-19159f395881	Führung durch den Naturerlebnisgarten für Kinder von drei bis sechs Jahren	50.8897324	6.98473406	Köln	50996	Friedrich-Ebert-Straße	14:30 bis 16 Uhr	Finkens Garten
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Hier lernen Sie was genau unter Künstlicher Intelligenz zu verstehen ist und wie sie sich entwickelt hat.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Programmieren, Sensoren verkabeln und Klänge durch Berührung steuern.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Grundlagen der Programmiersprache und Entstehung von eigener Musik	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	alles rund um die Welt der Zahlen	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Bau eines Synthesizers	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	mit dem Lasercutter Objekte aus Kunststoff oder Holz gestalten	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Treffsicherheit von Pflanzenbestimmungs-Apps	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen was man mit 3D-Druckern alles machen kann.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	17 bis 17:30 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Pflanzen Sie ihren ganz individuellen Flaschengarten.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	17:30 bis 19:30 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gemeinsam gehen wir auf die Suche nach den Zahlen von Fibonacci	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10:30 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Vom Gamedesign bis zur Roboterprogrammierung	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	12 bis 16 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.9728203	6.9516325	Köln	50733	Neusser Straße	14 bis 17 Uhr	Stadtteilbibliothek Nippes
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Bau eines Elektro Autos	50.9610291	7.00479984	Köln	51065	Wiener Platz	14 bis 17 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.9610291	7.00479984	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
48b6edd4-c03c-4669-9179-52168c10f82a	Bau eines Elektro Autos	50.8849487	7.05444527	Köln	51143	Friedrich-Ebert-Ufer	14 bis 17 Uhr	Stadtteilbibliothek Porz
65277a6b-34d7-4dcc-8e1d-19159f395881	Führung durch den Naturerlebnisgarten für Kinder von drei bis sechs Jahren	50.8897324	6.98473406	Köln	50996	Friedrich-Ebert-Straße	14:30 bis 16 Uhr	Finkens Garten
9ec11940-2d7c-416f-9672-5383c008a1a8	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9539909	6.91934872	Köln	50825	Subbelrather Straße	14 bis 17 Uhr	Stadtteilbibliothek Ehrenfeld
aadd0925-dca6-4092-94f1-4cadff751578	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	14 bis 17 Uhr	Stadtteilbibliothek Rodenkirchen
f178f7a7-5f5d-482b-9672-38c064a278c6	spannende Experimente zum Thema anziehende Kräfte	50.9340324	7.06100178	Köln	51109	An St. Adelheid	14 bis 17 Uhr	Stadtteilbibliothek Neubrück
38cbe7f4-e106-4cb4-ad6d-326e6b436250	spannende Experimente zum Thema anziehende Kräfte	50.9224968	6.95902586	Köln	50678	Severinstraße	14 bis 17 Uhr	Stadtteilbibliothek Haus Balchem
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir erkunden platonische Körper mathematisch und an selbst gebauten Modellen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14:30 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 Uhr bis 17 Uhr	Stadtbibliothek Köln
38cbe7f4-e106-4cb4-ad6d-326e6b436250	Lesung mit Evert Everts, Nicol Goudarzi und Gynter Mödder in der Stadtteilbibliothek Haus Balchem	50.9224968	6.95902586	Köln	50678	Severinstraße	19 Uhr	Stadtteilbibliothek Haus Balchem
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4602c973-4036-4622-ab59-9a20b1e251a5	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.9162674	6.92596674	Köln	50937	Wichterrichstraße	14 bis 17 Uhr	Stadtteilbibliothek Sülz
e5974a36-c6a8-4d05-ac27-6b940404ef20	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9391861	7.00873375	Köln	51103	Kalker Hauptstraße	14 bis 17 Uhr	Stadtteilbibliothek Kalk
58e944c6-94d6-4cd5-8f6d-33d5c7743a6f	spannende Experimente zum Thema anziehende Kräfte	50.9799767	6.86625242	Köln	50829	Görlinger-Zentrum	14 bis 17 Uhr	Stadtteilbibliothek Bocklemünd/Mengenich
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Bau eines Elektro Autos	51.022316	6.89936447	Köln	50765	Pariser Platz	14 bis 17 Uhr	Stadtteilbibliothek Chorweiler
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728203	6.9516325	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.9610291	7.00479984	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831	6.95060015	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
8219116d-200f-44d3-b4c6-39d8f97fff97	Bernd-Alois-Zimmermann-Stipendium des Jahres 2020	50.9341965	6.9520359	Köln	50676	Jabachstraße 1 (Eingang: Leonhard-Tietz-Straße	19:30 Uhr	Kunst-Station Sankt Peter Köln
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395	6.9504838	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Das neue Bühnenprogramm des preisgekrönten Kabarettduo Mike und Aydin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488068	6.9433012	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.022316	6.89936447	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728203	6.9516325	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831	6.95060015	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395	6.9504838	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.022316	6.89936447	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Hier lernen Sie was genau unter Künstlicher Intelligenz zu verstehen ist und wie sie sich entwickelt hat.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Programmieren, Sensoren verkabeln und Klänge durch Berührung steuern.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395	6.9504838	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.022316	6.89936447	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Bau eines Elektro Autos	50.9610291	7.00479984	Köln	51065	Wiener Platz	14 bis 17 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.9610291	7.00479984	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
9ec11940-2d7c-416f-9672-5383c008a1a8	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9539909	6.91934872	Köln	50825	Subbelrather Straße	14 bis 17 Uhr	Stadtteilbibliothek Ehrenfeld
aadd0925-dca6-4092-94f1-4cadff751578	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	14 bis 17 Uhr	Stadtteilbibliothek Rodenkirchen
38cbe7f4-e106-4cb4-ad6d-326e6b436250	spannende Experimente zum Thema anziehende Kräfte	50.9224968	6.95902586	Köln	50678	Severinstraße	14 bis 17 Uhr	Stadtteilbibliothek Haus Balchem
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gisela Steinhauer im Gespräch mit Marco Schreyl in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	20 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728203	6.9516325	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.9610291	7.00479984	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831	6.95060015	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
8219116d-200f-44d3-b4c6-39d8f97fff97	Bernd-Alois-Zimmermann-Stipendium des Jahres 2020	50.9341965	6.9520359	Köln	50676	Jabachstraße 1 (Eingang: Leonhard-Tietz-Straße	19:30 Uhr	Kunst-Station Sankt Peter Köln
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Das neue Bühnenprogramm des preisgekrönten Kabarettduo Mike und Aydin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488068	6.9433012	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395	6.9504838	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
3f34e580-8c75-4a1b-9868-f73530bcc510	Open Air und Eintritt frei	50.9978752	6.93877077	Köln	50735	Neusser Landstraße	Einlass: 17.30 Uhr<br /> Beginn: 19 Uhr	Die Kantine
1b7bdd2b-3293-42a1-90c4-b66354706b5a	Open Air und Eintritt frei	50.9399872	7.00148058	Köln	51103	Kalk-Mülheimer Straße	Beginn: 16 Uhr	Bürgerhaus Kalk
c30b6bb6-b759-4942-8f5f-93cdef22d9d2	Cologne Alliance und die Kölner Städtepartnerschaftsvereine stellen sich vor!	50.9364929	6.95503664	Köln	50667	vor GALERIA Kaufhof	Von 11 bis 17 Uhr.	Schildergasse/Ecke An St. Agatha
e3624424-6fc0-43c6-b8e7-2464294ed9c1	für Einsteiger*innen	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr<br /> 	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: Fritzi Benders Zwergenlala und ein Lasercutter-Workshop	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.9610291	7.00479984	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
97962c0a-decb-435a-98c3-21095e1d1b17	Sechs kunstschaffende Malerinnen und Maler präsentieren Acryl- und Aquarell-Malereien in vielen Facetten.	50.9371071	6.91197252	Köln	50931	Aachener Straße	Montag bis Samstag: 16 bis 19 Uhr<br /> Samstag, 25.09.2021, 17 bis 20:30 Uhr<br /> Sonntag, 26.09.2021, 14 bis 19 Uhr<br /> Sonntag, 03.10.2021, 14 bis 17 Uhr	Kunsthalle Lindenthal
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Ein Parodien-Reigen durch das "postfaktische Zeitalter"<br /> <br /> 	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
13f3d85a-188a-425a-9fd8-9bcdeb0725c9	Open Air und Eintritt frei	50.8995934	7.02227402	Köln	51149	Oberstraße	Einlass: 15 Uhr<br /> Beginn: 16 Uhr	Bürgerzentrum Engelshof e. V.
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.022316	6.89936447	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gisela Steinhauer im Gespräch mit Marco Schreyl in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	20 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.9610291	7.00479984	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.9610291	7.00479984	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
8219116d-200f-44d3-b4c6-39d8f97fff97	Bernd-Alois-Zimmermann-Stipendium des Jahres 2020	50.9341965	6.9520359	Köln	50676	Jabachstraße 1 (Eingang: Leonhard-Tietz-Straße	19:30 Uhr	Kunst-Station Sankt Peter Köln
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Das neue Bühnenprogramm des preisgekrönten Kabarettduo Mike und Aydin	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488068	6.9433012	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815	6.96454382	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728203	6.9516325	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831	6.95060015	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487	6.99179697	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
1b7bdd2b-3293-42a1-90c4-b66354706b5a	Open Air und Eintritt frei	50.9399872	7.00148058	Köln	51103	Kalk-Mülheimer Straße	Beginn: 16 Uhr	Bürgerhaus Kalk
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: Fritzi Benders Zwergenlala und ein Lasercutter-Workshop	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gisela Steinhauer im Gespräch mit Marco Schreyl in der Zentralbibliothek	50.9342422	6.94925117	Köln	50676	Josef-Haubrich-Hof	20 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.9610291	7.00479984	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.9610291	7.00479984	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
97962c0a-decb-435a-98c3-21095e1d1b17	Sechs kunstschaffende Malerinnen und Maler präsentieren Acryl- und Aquarell-Malereien in vielen Facetten.	50.9371071	6.91197252	Köln	50931	Aachener Straße	Montag bis Samstag: 16 bis 19 Uhr<br /> Samstag, 25.09.2021, 17 bis 20:30 Uhr<br /> Sonntag, 26.09.2021, 14 bis 19 Uhr<br /> Sonntag, 03.10.2021, 14 bis 17 Uhr	Kunsthalle Lindenthal
13f3d85a-188a-425a-9fd8-9bcdeb0725c9	Open Air und Eintritt frei	50.8995934	7.02227402	Köln	51149	Oberstraße	Einlass: 15 Uhr<br /> Beginn: 16 Uhr	Bürgerzentrum Engelshof e. V.
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488068	6.9433012	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488068	6.9433012	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215	6.97956705	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
\.


--
-- Data for Name: kvbnextbiketable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.kvbnextbiketable (id, "bikeNumber", lat, lon) FROM stdin;
bike_221769	221769	50.9793396	6.92421293
bike_221654	221654	50.9534912	6.93003321
bike_221716	221716	50.9578056	7.0126152
bike_222390	222390	50.898632	6.95250607
bike_222265	222265	50.9515152	6.89809895
bike_220988	220988	50.9602699	6.91633701
bike_223225	223225	50.9376945	6.88986015
bike_222769	222769	50.9417877	6.95559692
bike_222616	222616	50.9547462	6.92839193
bike_222498	222498	50.9161301	6.92036295
bike_221898	221898	50.9339104	6.99789286
bike_222301	222301	50.9730911	6.91218901
bike_222059	222059	50.9558983	6.89096022
bike_220874	220874	50.9817314	6.96527481
bike_222320	222320	50.9129486	6.93112278
bike_220410	220410	50.9211998	7.00049591
bike_221565	221565	50.9662743	6.95080805
bike_222095	222095	50.9700279	6.95922804
bike_222810	222810	50.9704018	6.9433918
bike_220181	220181	50.9720306	7.00520515
bike_220993	220993	50.9058266	6.95036316
bike_222591	222591	50.9657173	6.97284889
bike_222107	222107	51.3250084	12.3077364
bike_221903	221903	50.9415054	6.95604086
bike_223436	223436	50.9532623	6.90211201
bike_221239	221239	50.9828224	6.96718311
bike_220124	220124	50.9129982	6.92424202
bike_223243	223243	50.9577713	6.94691706
bike_221715	221715	50.9266281	7.0113039
bike_220217	220217	50.9128342	6.94444704
bike_221023	221023	50.9654045	6.9478302
bike_222188	222188	50.8941422	6.99349022
bike_220432	220432	50.9668846	6.97444677
bike_220710	220710	50.9552345	6.96141291
bike_222143	222143	50.8999023	6.92124319
bike_222858	222858	50.9733467	7.00594187
bike_221406	221406	50.9667549	6.97783804
bike_222907	222907	50.9420395	6.95733118
bike_222703	222703	50.9517746	6.910923
bike_220418	220418	50.9133644	6.98297691
bike_220132	220132	50.9066505	6.97736979
bike_222194	222194	50.9085121	6.90845585
bike_220152	220152	50.9201622	6.95657301
bike_220821	220821	50.9482994	6.88125181
bike_221641	221641	50.9183884	6.96938181
bike_221602	221602	50.9596672	6.94681501
bike_222335	222335	50.9627495	6.95133877
bike_220308	220308	50.9430923	7.02366018
bike_222767	222767	50.9224358	6.9649229
bike_223431	223431	50.9636116	6.92309809
bike_221285	221285	50.9674492	6.94936323
bike_222162	222162	50.9552078	7.00592709
bike_222899	222899	50.9573746	6.90842295
bike_223228	223228	50.9825363	6.96821499
bike_220344	220344	50.9753227	6.942698
bike_222438	222438	50.962574	6.92216206
bike_220053	220053	50.9590721	6.97818708
bike_222639	222639	50.9628105	6.92337084
bike_220720	220720	50.938591	7.0088892
bike_220756	220756	50.968708	6.9049859
bike_222903	222903	50.9336472	6.93892193
bike_221529	221529	50.9452286	7.00486279
bike_222234	222234	50.9420013	6.95716715
bike_220678	220678	50.9463463	7.00502014
bike_221973	221973	50.9408112	6.9619832
bike_220935	220935	50.9663734	6.94202423
bike_221809	221809	50.9788094	6.94907618
bike_221571	221571	50.9056892	6.97461891
bike_221575	221575	50.9439697	6.96933985
bike_220108	220108	50.9463615	6.95659781
bike_222096	222096	50.9205818	6.95176315
bike_222445	222445	50.9609032	6.94795513
bike_222755	222755	50.9489021	6.92535019
bike_222319	222319	50.9387436	6.97616196
bike_221969	221969	50.9242744	6.93293095
bike_223314	223314	50.9662437	6.9680109
bike_223286	223286	50.9366608	6.93724203
bike_221773	221773	50.9331207	6.93688393
bike_223280	223280	0	6.97021484
bike_221710	221710	0	6.98194981
bike_220207	220207	50.9423332	6.92622709
bike_222701	222701	50.9098473	6.97435188
bike_221812	221812	50.9156113	7.00065804
bike_221388	221388	50.9506912	7.0038271
bike_221039	221039	50.9799309	6.96855879
bike_222170	222170	50.9143867	6.92508078
bike_220754	220754	50.9691162	6.95257807
bike_222137	222137	50.9361572	7.00936222
bike_220437	220437	50.9457779	6.99629593
bike_220295	220295	50.9719582	7.00675297
bike_221362	221362	50.9675522	6.94296694
bike_220455	220455	50.9824562	6.94077682
bike_222489	222489	50.933609	6.98752689
bike_221527	221527	50.9805565	6.96050215
bike_222932	222932	50.9778633	6.93359995
bike_223201	223201	50.9452782	6.96314478
bike_222001	222001	50.9177017	6.91010714
bike_222005	222005	50.9002266	6.97890282
bike_223304	223304	50.9485397	6.88531303
bike_223064	223064	50.9642258	6.8958168
bike_221848	221848	50.9106827	6.95598793
bike_223475	223475	50.9180031	6.95195293
bike_222938	222938	50.9416351	6.95634222
bike_222562	222562	50.9421959	6.95543814
bike_223287	223287	50.962059	6.98029804
bike_220370	220370	50.9631996	7.00755978
bike_222349	222349	50.9513397	7.00607204
bike_220460	220460	50.9221115	6.99774313
bike_223266	223266	50.9182358	6.97861004
bike_220466	220466	50.9168625	6.97027302
bike_222356	222356	50.9578133	6.94505978
bike_222553	222553	50.9311867	6.9639802
bike_221547	221547	50.9605713	6.90254498
bike_221283	221283	50.9629784	6.98113203
bike_223050	223050	50.9432144	6.88328218
bike_222168	222168	50.9369888	6.99570608
bike_221742	221742	50.9743156	6.95717192
bike_221432	221432	50.9387436	6.89492178
bike_222656	222656	50.9520988	7.00911522
bike_220708	220708	50.8999176	6.93399096
bike_221378	221378	50.9659271	6.9404192
bike_222868	222868	50.9314995	6.95644283
bike_221920	221920	50.9674416	7.00244808
bike_223465	223465	50.9455795	6.96320677
bike_220171	220171	50.9466705	6.88547993
bike_222147	222147	50.9661217	6.98503304
bike_221611	221611	50.9776039	6.93295288
bike_222690	222690	50.9377594	6.8851428
bike_221706	221706	50.8927422	6.96658611
bike_220016	220016	50.9666405	7.01003218
bike_221422	221422	50.9227142	6.94201088
bike_222698	222698	50.9406204	6.96240187
bike_222359	222359	50.9587746	7.00654507
bike_222570	222570	50.9706802	6.97326422
bike_221455	221455	50.9418373	6.95812798
bike_222974	222974	50.922142	6.9978919
bike_222811	222811	50.9397964	6.95303583
bike_221629	221629	50.9028664	6.98035479
bike_220948	220948	50.9696388	7.01494884
bike_221459	221459	50.9004135	6.98475599
bike_221054	221054	50.969223	6.93282413
bike_221063	221063	50.9962082	6.95663309
bike_222042	222042	50.905159	6.95171309
bike_222470	222470	50.9175797	6.91013718
bike_221647	221647	50.9640884	7.0121479
bike_220244	220244	50.9046974	6.91532993
bike_220463	220463	50.9740486	6.90451288
bike_222340	222340	50.905159	6.952847
bike_223007	223007	50.9827652	6.963202
bike_220088	220088	50.9792404	6.96301985
bike_221866	221866	50.9779472	6.94911003
bike_220714	220714	50.9597168	6.89666414
bike_222276	222276	50.9116936	6.99229813
bike_222991	222991	50.9647293	7.01037312
bike_220008	220008	50.898983	6.96117687
bike_223053	223053	50.9055901	6.95992279
bike_222655	222655	50.9949608	6.95888996
bike_221035	221035	50.9168205	6.99208403
bike_221238	221238	50.9403648	7.02056694
bike_222779	222779	50.9307861	6.83815718
bike_222957	222957	50.9042206	6.91522217
bike_221750	221750	50.9798088	6.94596481
bike_222617	222617	50.905899	6.95532799
bike_221787	221787	50.9420967	7.01300478
bike_220481	220481	50.9925308	6.96008682
bike_220770	220770	50.9438705	7.02602196
bike_221036	221036	50.9850197	6.93962288
bike_221254	221254	50.9101067	6.99050999
bike_222259	222259	50.9215431	6.92644119
bike_222415	222415	51.3250198	12.3076677
bike_223244	223244	50.9406815	6.93410587
bike_220067	220067	50.9190292	6.92149115
bike_221172	221172	50.9719086	7.00277281
bike_221991	221991	50.936924	6.97670794
bike_220718	220718	0	6.95941305
bike_220130	220130	50.9485435	6.87911701
bike_220925	220925	50.9162445	6.94277096
bike_222192	222192	50.928257	7.00253201
bike_221192	221192	50.9657784	6.94142199
bike_221713	221713	50.9463272	7.01179504
bike_221847	221847	50.9377098	6.88750792
bike_220916	220916	50.9259109	6.99892998
bike_222627	222627	50.913868	6.91634178
bike_220792	220792	50.9209557	6.90651083
bike_222880	222880	50.9304848	6.97634792
bike_223369	223369	50.9201012	6.94040012
bike_220855	220855	50.9316826	6.97798395
bike_221993	221993	50.9639244	6.94501591
bike_220015	220015	50.9353027	6.99426985
bike_221452	221452	50.9268723	6.93792295
bike_221783	221783	50.9601402	6.99571514
bike_221954	221954	50.9599037	6.89874411
bike_222214	222214	50.9595146	6.9467001
bike_222618	222618	50.9638748	6.92051697
bike_222066	222066	50.9593506	6.94292021
bike_223024	223024	50.9207764	6.95401001
bike_222408	222408	50.927742	6.95135307
bike_223326	223326	50.9675179	6.96553087
bike_221804	221804	50.9413528	6.95358419
bike_221814	221814	50.9439125	6.96029711
\.


--
-- Data for Name: openweathertable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.openweathertable (city, lat, lon, humidity, pressure, temp, temp_max, temp_min, "timestamp", wind_speed) FROM stdin;
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:00:03.737	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:00:45.101	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:00:55.781	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:01:04.328	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:01:24.231	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:01:44.153	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:02:03.734	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:02:23.629	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:02:43.632	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:03:04.149	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:03:23.644	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:03:43.651	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:04:03.636	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	94	1023	11.9099998	12.7399998	10.75	2021-10-06 22:04:23.633	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:04:43.725	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:05:03.635	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:05:23.633	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:05:43.633	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:06:03.623	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:06:23.646	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:06:43.64	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:07:03.64	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:07:23.631	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:07:43.658	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:08:03.64	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:08:23.642	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:08:43.632	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:09:03.643	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:09:23.63	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:09:43.649	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:10:03.624	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:10:27.138	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:10:43.686	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:11:03.809	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:11:23.659	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:11:43.642	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:12:03.635	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1023	11.9099998	12.7399998	10.75	2021-10-06 22:12:23.646	4.63000011
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:12:43.653	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:13:03.647	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:13:23.623	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:13:43.641	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:14:03.652	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:14:23.643	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8199997	12.7399998	10.75	2021-10-06 22:14:43.631	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:15:03.861	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:15:23.632	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:15:43.673	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:16:03.717	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:16:23.65	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:16:43.623	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:17:03.678	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:17:23.621	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:17:43.659	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:18:03.634	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:18:23.659	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:18:43.621	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:19:03.648	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:19:23.621	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:19:43.638	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:20:03.634	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:20:23.658	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:20:43.643	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:21:03.655	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:21:23.624	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:21:43.646	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:22:03.634	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:22:23.644	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:22:43.641	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:23:03.666	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:23:23.617	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:23:43.644	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:24:03.626	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:24:23.663	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8100004	12.7399998	10.75	2021-10-06 22:24:43.643	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:25:03.657	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:25:23.613	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:25:43.638	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:26:03.625	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:26:23.629	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:26:43.632	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:27:03.643	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:27:23.646	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:27:43.65	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:28:03.655	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:28:23.623	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:28:43.632	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:29:03.643	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:29:23.869	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:29:43.657	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:30:04.958	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:30:23.68	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:30:43.645	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:31:03.643	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.7799997	12.7399998	10.75	2021-10-06 22:31:23.628	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:31:43.627	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:32:03.627	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:34:43.626	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:35:03.792	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:35:23.615	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:35:43.637	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:36:03.826	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:36:23.633	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:36:43.624	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:37:03.636	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:37:23.632	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:37:43.646	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:38:03.634	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:38:23.641	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:38:43.628	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:39:03.63	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:39:23.635	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:39:43.648	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:40:04.938	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:40:23.642	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:40:43.629	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:41:03.645	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:41:23.623	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:41:43.663	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:42:03.631	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:42:23.642	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	96	1024	11.8000002	12.7399998	10.75	2021-10-06 22:42:43.643	3.5999999
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:43:03.645	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:43:23.634	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:43:43.654	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:44:03.682	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:44:23.646	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:44:43.628	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:45:03.65	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:45:23.627	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:45:43.65	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:46:03.663	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:46:23.637	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:46:43.633	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:47:03.658	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:47:23.633	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:47:43.652	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9399996	12.7399998	11.1199999	2021-10-06 22:48:03.645	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:48:23.662	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:48:43.625	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:49:03.631	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:49:23.625	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:49:43.628	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:50:03.637	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:50:23.628	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:50:43.632	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:51:03.623	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:51:23.637	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:51:43.818	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:52:03.631	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:52:23.625	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:52:43.676	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:53:03.641	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:53:23.628	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:53:43.633	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:54:03.628	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:54:23.633	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:54:43.639	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:55:04.842	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:55:23.661	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:55:43.635	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:56:03.639	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:56:23.65	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:56:43.65	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:57:03.654	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:57:23.632	1.34000003
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:57:43.666	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:58:03.631	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:58:23.648	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:58:43.632	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:59:03.682	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:59:23.628	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 22:59:43.629	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:00:03.645	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:00:23.639	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:00:43.629	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:01:03.622	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:01:23.632	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:01:43.637	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:02:03.644	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:02:23.63	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:02:43.631	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:03:03.634	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:03:23.628	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:03:43.644	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:04:03.636	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	12.0100002	12.7399998	10.8999996	2021-10-06 23:04:23.681	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	12.0100002	12.7399998	10.8999996	2021-10-06 23:04:43.652	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:05:03.658	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:05:23.635	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:05:43.66	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:06:03.629	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:06:23.642	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:06:43.628	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:07:03.637	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:07:23.643	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:07:43.625	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	11.9499998	12.7399998	10.8999996	2021-10-06 23:08:03.644	0.449999988
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	12.0100002	12.7399998	10.8999996	2021-10-06 23:08:23.647	0.889999986
Köln-Rodenkirchen	50.8833008	6.98330021	95	1024	12.0100002	12.7399998	10.8999996	2021-10-06 23:08:43.631	0.889999986
\.


--
-- Data for Name: wunderfleettable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.wunderfleettable (vehicle_id, vehicle_type, lat, lon) FROM stdin;
28	scooter	50.9394035	6.95345402
15	scooter	50.9217682	6.9331069
29	scooter	50.9099388	6.93775511
34	scooter	50.9084435	6.97042608
39	scooter	50.9347	6.94062901
53	scooter	50.9542274	6.90981007
18	scooter	50.9413147	6.9944458
38	scooter	50.9542885	6.903018
22	scooter	50.9669228	6.93865919
12	scooter	50.9244766	6.96607685
55	scooter	50.9420204	6.96179104
44	scooter	50.9096489	6.94098091
40	scooter	50.9879265	6.898633
42	scooter	50.9435577	6.91204309
20	scooter	50.9417419	6.94379997
19	scooter	50.9537354	6.99611712
17	scooter	50.9281502	6.93554783
26	scooter	50.9584579	7.0100522
13	scooter	50.9144745	6.91696882
32	scooter	50.9235077	6.91989422
9	scooter	50.9562302	6.92645597
24	scooter	50.9603424	7.0069828
27	scooter	50.9156189	6.8944912
36	scooter	50.9491692	6.87393093
57	scooter	50.9392853	6.95339394
45	scooter	50.9458961	7.00560522
50	scooter	50.9080772	6.91927099
48	scooter	50.9737206	6.93206596
52	scooter	50.9336586	6.94867706
21	scooter	50.9341927	6.92536402
35	scooter	50.9873848	6.961411
10	scooter	50.8915024	6.90906096
31	scooter	50.910038	6.90550709
51	scooter	50.9080734	6.91453886
25	scooter	50.9478722	6.98716402
37	scooter	50.9123344	6.96681595
16	scooter	50.9416656	6.95068789
56	scooter	50.9467659	6.98484182
49	scooter	50.9321175	6.9329772
14	scooter	50.9075241	6.93670416
11	scooter	50.9525566	6.93249702
46	scooter	50.9276047	6.9350028
47	scooter	50.9067993	6.91291618
54	scooter	50.9489594	6.96396208
33	scooter	50.9368362	6.93905878
23	scooter	50.9202385	6.92947388
30	scooter	50.910038	6.9370718
43	scooter	50.9414406	6.95966291
41	scooter	50.9397621	6.96153784
76	scooter	50.9388542	6.99003601
136	scooter	50.9574394	6.94026423
194	scooter	50.9385033	6.85644102
192	scooter	50.9417152	6.97286081
169	scooter	50.9242363	6.8976779
176	scooter	50.9225388	6.98166704
205	scooter	50.9695206	6.91718388
108	scooter	50.9373741	6.99858713
94	scooter	50.8982544	6.89956379
173	scooter	50.915432	6.92815495
93	scooter	50.9421425	6.95311308
85	scooter	50.9524574	6.9080739
144	scooter	50.9527397	6.92322206
146	scooter	50.9471779	6.94503498
125	scooter	50.9875946	6.96089602
157	scooter	50.9358597	6.97597122
198	scooter	50.9322662	6.87096214
183	scooter	50.9382248	6.84561682
159	scooter	50.9133377	6.94047689
204	scooter	50.9607773	7.00648785
206	scooter	50.938118	6.87722778
161	scooter	50.9047279	6.94227409
67	scooter	50.9108391	6.94119787
99	scooter	50.9453506	6.88446283
66	scooter	50.8997383	6.90327311
174	scooter	50.9230957	6.94321108
77	scooter	50.9377937	7.00037003
60	scooter	50.9330215	6.98992586
148	scooter	50.9604378	6.95816278
195	scooter	50.9486656	6.96518421
78	scooter	50.9182854	6.91697693
130	scooter	50.954628	6.90954399
92	scooter	50.9397621	6.88972521
101	scooter	50.9398003	7.00123119
186	scooter	50.9425583	6.88739014
89	scooter	50.9388008	6.95233488
98	scooter	50.9381332	6.83471012
167	scooter	50.9643059	6.95615292
58	scooter	50.991909	6.92985487
122	scooter	50.939743	6.95181084
115	scooter	50.9095917	6.95266104
74	scooter	50.905674	6.97985506
65	scooter	50.9479675	6.95248318
61	scooter	50.9601364	6.92308998
142	scooter	50.9559555	6.90490723
124	scooter	50.9452591	6.90843821
70	scooter	50.9373474	6.90133476
79	scooter	50.9748039	6.92781019
120	scooter	50.9372177	6.89488888
189	scooter	50.9367447	6.91299677
208	scooter	50.9458084	6.93809986
72	scooter	50.9202156	6.92958593
80	scooter	50.9480743	6.95925283
133	scooter	50.9684944	6.9163022
87	scooter	50.9170151	6.910748
134	scooter	50.950264	6.9547472
121	scooter	50.9406471	6.95947218
193	scooter	50.9445686	6.95344114
110	scooter	50.9410248	6.94794416
135	scooter	50.9070206	6.92181587
132	scooter	50.8960533	6.92761421
138	scooter	50.9097862	6.90580511
64	scooter	50.9114685	6.93934584
112	scooter	50.9432411	6.96022892
177	scooter	50.913929	6.94106579
171	scooter	50.9472122	6.9363389
118	scooter	50.9502068	6.98781395
162	scooter	50.9201622	6.93436813
160	scooter	50.9142876	6.93113708
63	scooter	50.9821243	6.96070719
175	scooter	50.9363403	6.97080612
147	scooter	50.9446678	6.94218206
154	scooter	50.9380684	6.8517971
113	scooter	50.9245033	6.911551
104	scooter	50.9395828	6.95767784
131	scooter	50.8985786	6.90026617
188	scooter	50.9382896	6.95310211
180	scooter	50.9609909	7.00619221
172	scooter	50.9405594	6.93376207
81	scooter	50.9210358	6.96753788
201	scooter	50.9609146	7.00649977
106	scooter	50.9058151	6.97751379
150	scooter	50.9475708	6.91939306
71	scooter	50.9403725	6.9736228
107	scooter	50.9021721	6.90507412
111	scooter	50.9473724	6.98810577
153	scooter	50.9665642	6.930583
141	scooter	50.9394646	6.81592989
149	scooter	50.9574814	6.91073513
178	scooter	50.9015884	6.97673988
114	scooter	50.8944702	6.94889212
129	scooter	50.981636	6.91840696
197	scooter	50.9394875	6.81600285
151	scooter	50.9319229	6.87835979
202	scooter	50.9453278	6.91865301
168	scooter	50.9396362	6.95304203
185	scooter	50.9051514	6.95639181
127	scooter	50.9256134	6.96484804
158	scooter	50.9604683	7.00754023
83	scooter	50.9406357	6.94007587
128	scooter	50.9654427	6.9178772
203	scooter	50.9410973	6.95306396
126	scooter	50.9189682	6.93732595
88	scooter	50.9114685	6.9392271
116	scooter	50.8948898	6.95438385
143	scooter	50.9001045	6.98498106
119	scooter	50.9091682	6.94116592
184	scooter	50.9214287	6.93335581
96	scooter	50.9343338	6.95467806
155	scooter	50.9229431	6.95177507
69	scooter	50.906105	6.9783268
166	scooter	50.9265404	6.93836021
163	scooter	50.9382133	6.9528861
199	scooter	50.9165421	6.96097088
97	scooter	50.8924522	6.90789223
105	scooter	50.9587288	6.94876099
187	scooter	50.9381866	6.8434329
191	scooter	50.9098167	6.93846703
182	scooter	50.9381981	6.85247993
84	scooter	50.9742546	6.96750021
137	scooter	50.9090805	6.94126797
59	scooter	50.9584618	7.01038885
164	scooter	50.9349709	6.9535861
75	scooter	50.9314003	6.98169899
100	scooter	50.9735909	6.96756697
103	scooter	50.9540215	6.96255398
95	scooter	50.9440918	6.95878792
170	scooter	50.9169617	6.96983099
62	scooter	50.9689102	6.93034506
123	scooter	50.9151764	6.91121006
139	scooter	50.9591064	7.00889921
91	scooter	50.9470444	6.92349005
73	scooter	50.9112701	6.93962193
196	scooter	50.9187279	6.96280193
181	scooter	50.9228134	6.98130608
156	scooter	50.9649887	6.91200304
200	scooter	50.9266891	6.92199183
117	scooter	50.9541168	6.97117519
86	scooter	50.960556	7.00688314
82	scooter	50.8945045	6.95426702
165	scooter	50.9135246	6.93966579
102	scooter	50.9595604	7.00603294
179	scooter	50.9723778	6.92364883
190	scooter	50.9297218	6.95149517
207	scooter	50.9349213	6.93861389
152	scooter	50.9125214	6.91922522
68	scooter	50.9150734	6.89626789
140	scooter	50.932621	6.95590496
145	scooter	50.9381523	6.87709379
90	scooter	50.9704285	6.93806696
301	scooter	50.9552078	6.92780495
\.


--
-- PostgreSQL database dump complete
--

