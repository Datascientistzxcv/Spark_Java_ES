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
    lat double precision,
    lon double precision,
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
    lat double precision,
    lon double precision,
    ort text,
    plz integer,
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
    "bikeNumber" integer,
    lat double precision,
    lon double precision
);


ALTER TABLE es.kvbnextbiketable OWNER TO shekhar;

--
-- Name: openweathertable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.openweathertable (
    "SID" text,
    city text,
    lat double precision,
    lon double precision,
    humidity double precision,
    pressure double precision,
    temp double precision,
    temp_max double precision,
    temp_min double precision,
    "timestamp" timestamp without time zone,
    wind_speed double precision
);


ALTER TABLE es.openweathertable OWNER TO shekhar;

--
-- Name: wunderfleettable; Type: TABLE; Schema: es; Owner: shekhar
--

CREATE TABLE es.wunderfleettable (
    vehicle_id integer,
    vehicle_type text,
    lat double precision,
    lon double precision
);


ALTER TABLE es.wunderfleettable OWNER TO shekhar;

--
-- Data for Name: koelnpoitable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.koelnpoitable ("SID", "NAME", "ADRESSE", lat, lon, "STADTTEIL", "STADTVIERTEL") FROM stdin;
6e74a035-202b-4846-97da-46ce8b4cb0d7	Jugendpark	im Rheinpark Zoobrücke, Sachsenbergstr.	50.9540290832519531	6.98011350631713867	Mülheim	\N
a8bb695e-9e7e-44af-b7b7-0181d48dcec0	Rheinauhafen	\N	50.9284439086914062	6.96510744094848633	Altstadt/Süd	\N
a236188b-ddb2-4b46-b92c-bb2b256d3156	Dom	Domkloster 4	50.941314697265625	6.95719766616821289	Altstadt/Nord	City
afbc9a7e-494d-4455-98e8-6910da8fbe00	Flora	Amsterdamer Str. 34	50.9608993530273438	6.97014379501342773	Riehl	Zoo-Flora
53ce6ebf-0272-462a-8922-78f9f6a6311f	Rheinpark	\N	50.9492530822753906	6.9756474494934082	Deutz	Zuordnung Deutz
e7d2874e-9256-4bb4-94b6-9e67aa3e767c	Römerturm	Zeughausstr. 13	50.9409141540527344	6.94670581817626953	Altstadt/Nord	Neumarkt-Viertel
ebc24b6b-643a-4259-9069-e4b0b3d8ed9c	Overstolzenhaus	Rheingasse 8	50.9340171813964844	6.96047592163085938	Altstadt/Süd	Georgs-Viertel
022f89b9-3379-4115-a5b7-914d965b9607	Finkens Garten	Friedrich-Ebert-Str. 49	50.8880386352539062	6.98572158813476562	Rodenkirchen	Schillingsrott
c21ff572-2acb-4018-a9b7-8e6eb576bd5c	Harald-Schmidt-Show	Schanzenstr. 39	50.9698753356933594	7.01763248443603516	Mülheim	GI Mülheim-Nord
12259335-b47d-4a2d-b112-96d8134be661	Severinstor	Chlodwigplatz 28	50.9219169616699219	6.95936059951782227	Altstadt/Süd	Severins-Viertel
1dc142d5-6420-45ba-8bfe-85aaf47dbd0f	Tanzbrunnen	Rheinparkweg 1	50.9460983276367188	6.97188568115234375	Deutz	Zuordnung Deutz
a78785ae-4242-49e1-abf9-e7a958674cbf	Mikwe (Jüdisches Bad)	Rathausplatz 2	50.9379539489746094	6.95862388610839844	Altstadt/Nord	City
a1448b63-3e61-4bb9-bc88-23dc3796c293	Hahnentor	Rudolfplatz 9	50.9363327026367188	6.94019460678100586	Altstadt/Süd	Mauritius-Viertel
4a8923f2-6795-44b9-a29a-bc2a1ac9f648	Bottmühle	Severinswall 32	50.9228935241699219	6.9632267951965332	Altstadt/Süd	Severins-Viertel
cc740068-699e-4987-9296-221bc6a57a80	Rheinseilbahn	Frohngasse/Zoobrücke	50.9570121765136719	6.97366857528686523	Riehl	Niederländer-Viertel
b409bf30-0a69-48aa-a79c-26170f57e542	Musical-Dome	Goldgasse 1	50.9428825378417969	6.96206521987915039	Altstadt/Nord	Kuniberts-Viertel
ba9454f3-528d-4443-b799-acbb895f3aa8	Axa-Hochhaus	An der Schanz 2	50.9606094360351562	6.98217391967773438	Riehl	Niederländer-Viertel
e8cafbf1-da9f-4764-a0bc-dc4720110340	Wehrturm	Hauptstr. Zü 182	50.8696784973144531	7.04650402069091797	Zündorf	Zündorf
b920521b-078b-46d3-a32b-ca5f73037453	Weltstadthaus	Schildergasse 65	50.9361953735351562	6.95263957977294922	Altstadt/Nord	Neumarkt-Viertel
a90af9fe-c5f8-46c4-b589-aef7deabae76	WDR	Appellhofplatz 1	50.9401016235351562	6.95231437683105469	Altstadt/Nord	Neumarkt-Viertel
878c1bb8-f8c1-4303-8284-b40506577ff8	Gürzenich	Martinstr. 29	50.9365730285644531	6.95844697952270508	Altstadt/Nord	City
baccfc77-4a18-46b0-8a92-720ed25a5649	Römisches Nordtor	Unter Fettenhennen 11	50.9414939880371094	6.95662593841552734	Altstadt/Nord	City
b9eb3824-19d0-4922-83b6-a7d8edcc9c81	E-Werk	Schanzenstr. 37	50.9696617126464844	7.01652717590332031	Mülheim	GI Mülheim-Nord
8d557f40-c4d2-417a-a9d2-e95d72ad7013	Eigelsteintor	Eigelstein 139	50.9492912292480469	6.95677757263183594	Altstadt/Nord	Eigelstein-Viertel
73ac07c2-240d-4fc1-b895-b881170413dd	Castrum Divitium	Von-Gablenz-Str. 2	50.9378547668457031	6.97047185897827148	Deutz	Deutz
bf0df135-cd63-4ab8-aed7-05d11b1762b0	Palladium	Schanzenstr. 40	50.9692001342773438	7.01809215545654297	Mülheim	GI Mülheim-Nord
3e7c3533-023f-4f96-85cc-c1c9324a094f	Ubiermonument	An der Malzmühle 1	50.9338569641113281	6.95915412902832031	Altstadt/Süd	Kapitol-Viertel
edef21e4-b26d-406c-aa41-f34cc1e57073	Bayenturm	Am Bayenturm 2	50.9237327575683594	6.96699047088623047	Altstadt/Süd	Rheinauhafen
26bf744f-3a02-4c9e-bc57-72de7a3d0a90	Melaten	Aachener Str. 204	50.9392776489257812	6.91667699813842773	Lindenthal	\N
efab300e-02a8-479a-b697-b793d71d3ab3	Zoo	Riehler Str. 173	50.9581489562988281	6.97317266464233398	Riehl	Zoo-Flora
99d3bdb2-d815-471e-8eb4-0f7632932cd7	St. Gereon	Gereonsdriesch 4	50.9432106018066406	6.94618463516235352	Altstadt/Nord	Gereons-Viertel
99fca7f8-7463-4d5a-8fd2-1d2300aab3d7	Coloneum Ossendorf	Am Coloneum 1	50.9875221252441406	6.89605379104614258	Ossendorf	GE Ossendorf
c2cc4107-6403-451e-a868-7ba1f8fbb9e6	Praetorium	Rathausplatz 4	50.9384689331054688	6.95902872085571289	Altstadt/Nord	City
b2ae7164-b34a-4d16-85a6-14e3ea071048	Römische Grabkammer	Aachener Str. 1328	50.9387550354003906	6.82444286346435547	Weiden	Alt-Weiden
e8f7af0e-109e-4128-9720-b279be9ec69c	St. Maria im Kapitol	Marienplatz 19	50.9344024658203125	6.9585118293762207	Altstadt/Süd	Kapitol-Viertel
9c757850-ee51-4a1b-a1dd-326b3f72e2c9	4711-Haus	Glockengasse 4	50.9384803771972656	6.95226573944091797	Altstadt/Nord	Neumarkt-Viertel
34eccba6-ca22-40e2-8ee5-7de2f38f3c9b	Heinzelmännchenbrunnen	Am Hof	50.9399871826171875	6.95727252960205078	Altstadt/Nord	\N
e19c1d94-87b3-42a3-b35e-d66b5c519409	DLR Deutsches Zentrum für	Linder Höhe	50.8525123596191406	7.11934089660644531	Grengel	\N
803d8a4d-3ba5-4e0d-a267-41e2f56df9d2	St. Andreas	Andreaskloster 1	50.9419059753417969	6.95447683334350586	Altstadt/Nord	Andreas-Viertel
104abea3-7148-43ad-8c67-5cdb052c2991	St. Pantaleon	Am Pantaleonsberg 2	50.9286384582519531	6.94768333435058594	Altstadt/Süd	Pantaleons-Viertel
3ca5e9e9-4786-4c6e-aa34-278138b39663	mittelalterl. Stadtmauer	Gereonswall 110	50.9463653564453125	6.94726467132568359	Altstadt/Nord	Gereons-Viertel
39a54364-003a-4a1c-b1b4-46f9d4beeba4	St. Georg	Georgsplatz 17	50.9319076538085938	6.95717906951904297	Altstadt/Süd	Georgs-Viertel
9c0cbcb9-c9de-4c09-a5bd-0b6005123d8d	Rautenstrauch-Joest-Museum	Leonhard-Tietz-Str. 10	50.9343757629394531	6.95068454742431641	Altstadt/Süd	Cäcilien-Viertel
52d0b49c-2044-4853-864f-16188a8b4229	Weltkugel von HA Schult	Riehler Str. 190 DEVK-Haus	50.9579086303710938	6.97589683532714844	Riehl	Niederländer-Viertel
56b69da7-3742-4913-a006-109a06bedb39	Groß St.Martin	An Groß St.Martin 9	50.9385604858398438	6.96128940582275391	Altstadt/Nord	Martins-Viertel
e69ab947-bd8b-45a9-bc4c-42f269196ab9	RheinEnergieStadion	Aachener Str. 999	50.9336280822753906	6.87512016296386719	Müngersdorf	Stadion
e752bc86-3d21-4aab-8798-335ff44b6a59	Skulpturenpark	Riehler Str./Elsa-Brandström-Str.	50.9556198120117188	6.97030925750732422	Neustadt/Nord	Gerichts-Viertel
e752bc86-3d21-4aab-8798-335ff44b6a59	Skulpturenpark	Schillingsrotter Str.	50.8860321044921875	6.98293447494506836	Rodenkirchen	\N
8114112a-5b33-4773-be59-77d432c07c10	Aquarium	Riehler Str. 173	50.9583702087402344	6.97247695922851562	Riehl	Zoo-Flora
616325c0-9fcb-4528-9ba6-12209f19a029	St. Severin	Severinskirchplatz 1	50.9235916137695312	6.96010923385620117	Altstadt/Süd	Severins-Viertel
f96109a5-ecec-4fb8-839d-ec225453e47c	Hist. Rathaus	Rathausplatz 2	50.9381179809570312	6.95930194854736328	Altstadt/Nord	City
e6cc1423-bae9-4287-9209-fea2cb3f8a65	Ulrepforte	Sachsenring 42	50.9241180419921875	6.95299625396728516	Neustadt/Süd	Südstadt
2e524b98-fb02-4cdf-86c1-d9d1886de8e8	Wolkenburg	Mauritiussteinweg 61	50.9328651428222656	6.94477653503417969	Altstadt/Süd	Mauritius-Viertel
cbcb35d4-9f63-4fb1-8af8-680183946c98	St. Aposteln	Neumarkt 30	50.9366340637207031	6.94502687454223633	Altstadt/Süd	Cäcilien-Viertel
e073bce5-5f64-4148-aaab-9a8f3205532d	St. Maria in Lyskirchen	An Lyskirchen 12	50.9330787658691406	6.96264123916625977	Altstadt/Süd	Georgs-Viertel
859eff07-8d66-48d6-92ac-179f1eff0fd5	St. Kunibert	Kunibertsklostergasse 2	50.9467926025390625	6.96266555786132812	Altstadt/Nord	Kuniberts-Viertel
1464f537-82d6-4701-a4ad-774ebbd1e46c	Saturn-Hochhaus	Hansaring 97	50.9490509033203125	6.9515223503112793	Neustadt/Nord	Media-Park
cae8aeb4-aad6-494e-be0c-afcdbf074ae1	Museum Schnütgen	Cäcilienstr. 29	50.9346694946289062	6.95152759552001953	Altstadt/Süd	Cäcilien-Viertel
ef1bc712-2110-4299-90cd-84252ed12a02	Stadtmauer	Blaue-Funken-Weg 2	50.9251289367675781	6.95105409622192383	Altstadt/Süd	Pantaleons-Viertel
1eacf129-7b24-4101-b836-f62161f66322	LanxessArena	Willy-Brandt-Platz 1	50.9384536743164062	6.98295783996582031	Deutz	Köln-Arena
7df91f35-7aea-499e-8a56-bd73fed29f08	LVR-Turm / Köln Triangle	Ottoplatz 1	50.9403762817382812	6.97183704376220703	Deutz	Deutz
cb64020d-d6c0-4e58-a95b-1c483787d042	St. Ursula	Ursulaplatz 24	50.9456748962402344	6.95450019836425781	Altstadt/Nord	Ursula-Viertel
a4ddc105-d073-4c4b-b4b7-8839e841524c	Forstbotanischer Garten	Schillingsrotter Str. 100	50.8833770751953125	6.98014163970947266	Rodenkirchen	\N
5ee712a6-3081-484a-be71-144e52471bd8	Heinrich-Böll-Platz	\N	50.9411201477050781	6.96082019805908203	Altstadt/Nord	\N
\.


--
-- Data for Name: koelnraweventtable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.koelnraweventtable ("SID", description, lat, lon, ort, plz, strasse, uhrzeit, veranstaltungsort) FROM stdin;
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Hier lernen Sie was genau unter Künstlicher Intelligenz zu verstehen ist und wie sie sich entwickelt hat.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Programmieren, Sensoren verkabeln und Klänge durch Berührung steuern.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Grundlagen der Programmiersprache und Entstehung von eigener Musik	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	alles rund um die Welt der Zahlen	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Bau eines Synthesizers	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	mit dem Lasercutter Objekte aus Kunststoff oder Holz gestalten	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Bau eines Elektro Autos	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	14 bis 17 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
9ec11940-2d7c-416f-9672-5383c008a1a8	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9539909362792969	6.91934871673583984	Köln	50825	Subbelrather Straße	14 bis 17 Uhr	Stadtteilbibliothek Ehrenfeld
aadd0925-dca6-4092-94f1-4cadff751578	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	14 bis 17 Uhr	Stadtteilbibliothek Rodenkirchen
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
38cbe7f4-e106-4cb4-ad6d-326e6b436250	spannende Experimente zum Thema anziehende Kräfte	50.9224967956542969	6.95902585983276367	Köln	50678	Severinstraße	14 bis 17 Uhr	Stadtteilbibliothek Haus Balchem
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.0223159790039062	6.89936447143554688	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Treffsicherheit von Pflanzenbestimmungs-Apps	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen was man mit 3D-Druckern alles machen kann.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	17 bis 17:30 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Pflanzen Sie ihren ganz individuellen Flaschengarten.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	17:30 bis 19:30 Uhr	Stadtbibliothek Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
f178f7a7-5f5d-482b-9672-38c064a278c6	spannende Experimente zum Thema anziehende Kräfte	50.9340324401855469	7.06100177764892578	Köln	51109	An St. Adelheid	14 bis 17 Uhr	Stadtteilbibliothek Neubrück
1df950ab-e8cc-4f92-800d-362a9323407e	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.9728202819824219	6.95163249969482422	Köln	50733	Neusser Straße	14 bis 17 Uhr	Stadtteilbibliothek Nippes
48b6edd4-c03c-4669-9179-52168c10f82a	Bau eines Elektro Autos	50.88494873046875	7.05444526672363281	Köln	51143	Friedrich-Ebert-Ufer	14 bis 17 Uhr	Stadtteilbibliothek Porz
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
65277a6b-34d7-4dcc-8e1d-19159f395881	Führung durch den Naturerlebnisgarten für Kinder von drei bis sechs Jahren	50.8897323608398438	6.98473405838012695	Köln	50996	Friedrich-Ebert-Straße	14:30 bis 16 Uhr	Finkens Garten
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Hier lernen Sie was genau unter Künstlicher Intelligenz zu verstehen ist und wie sie sich entwickelt hat.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Programmieren, Sensoren verkabeln und Klänge durch Berührung steuern.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Grundlagen der Programmiersprache und Entstehung von eigener Musik	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	alles rund um die Welt der Zahlen	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Bau eines Synthesizers	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	mit dem Lasercutter Objekte aus Kunststoff oder Holz gestalten	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Treffsicherheit von Pflanzenbestimmungs-Apps	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen was man mit 3D-Druckern alles machen kann.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	17 bis 17:30 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Pflanzen Sie ihren ganz individuellen Flaschengarten.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	17:30 bis 19:30 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gemeinsam gehen wir auf die Suche nach den Zahlen von Fibonacci	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10:30 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Vom Gamedesign bis zur Roboterprogrammierung	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	12 bis 16 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.9728202819824219	6.95163249969482422	Köln	50733	Neusser Straße	14 bis 17 Uhr	Stadtteilbibliothek Nippes
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Bau eines Elektro Autos	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	14 bis 17 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
48b6edd4-c03c-4669-9179-52168c10f82a	Bau eines Elektro Autos	50.88494873046875	7.05444526672363281	Köln	51143	Friedrich-Ebert-Ufer	14 bis 17 Uhr	Stadtteilbibliothek Porz
65277a6b-34d7-4dcc-8e1d-19159f395881	Führung durch den Naturerlebnisgarten für Kinder von drei bis sechs Jahren	50.8897323608398438	6.98473405838012695	Köln	50996	Friedrich-Ebert-Straße	14:30 bis 16 Uhr	Finkens Garten
9ec11940-2d7c-416f-9672-5383c008a1a8	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9539909362792969	6.91934871673583984	Köln	50825	Subbelrather Straße	14 bis 17 Uhr	Stadtteilbibliothek Ehrenfeld
aadd0925-dca6-4092-94f1-4cadff751578	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	14 bis 17 Uhr	Stadtteilbibliothek Rodenkirchen
f178f7a7-5f5d-482b-9672-38c064a278c6	spannende Experimente zum Thema anziehende Kräfte	50.9340324401855469	7.06100177764892578	Köln	51109	An St. Adelheid	14 bis 17 Uhr	Stadtteilbibliothek Neubrück
38cbe7f4-e106-4cb4-ad6d-326e6b436250	spannende Experimente zum Thema anziehende Kräfte	50.9224967956542969	6.95902585983276367	Köln	50678	Severinstraße	14 bis 17 Uhr	Stadtteilbibliothek Haus Balchem
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir erkunden platonische Körper mathematisch und an selbst gebauten Modellen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14:30 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 Uhr bis 17 Uhr	Stadtbibliothek Köln
38cbe7f4-e106-4cb4-ad6d-326e6b436250	Lesung mit Evert Everts, Nicol Goudarzi und Gynter Mödder in der Stadtteilbibliothek Haus Balchem	50.9224967956542969	6.95902585983276367	Köln	50678	Severinstraße	19 Uhr	Stadtteilbibliothek Haus Balchem
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4602c973-4036-4622-ab59-9a20b1e251a5	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.9162673950195312	6.92596673965454102	Köln	50937	Wichterrichstraße	14 bis 17 Uhr	Stadtteilbibliothek Sülz
e5974a36-c6a8-4d05-ac27-6b940404ef20	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9391860961914062	7.00873374938964844	Köln	51103	Kalker Hauptstraße	14 bis 17 Uhr	Stadtteilbibliothek Kalk
58e944c6-94d6-4cd5-8f6d-33d5c7743a6f	spannende Experimente zum Thema anziehende Kräfte	50.9799766540527344	6.86625242233276367	Köln	50829	Görlinger-Zentrum	14 bis 17 Uhr	Stadtteilbibliothek Bocklemünd/Mengenich
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Bau eines Elektro Autos	51.0223159790039062	6.89936447143554688	Köln	50765	Pariser Platz	14 bis 17 Uhr	Stadtteilbibliothek Chorweiler
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728202819824219	6.95163249969482422	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831176757812	6.95060014724731445	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
8219116d-200f-44d3-b4c6-39d8f97fff97	Bernd-Alois-Zimmermann-Stipendium des Jahres 2020	50.9341964721679688	6.95203590393066406	Köln	50676	Jabachstraße 1 (Eingang: Leonhard-Tietz-Straße	19:30 Uhr	Kunst-Station Sankt Peter Köln
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395202636719	6.95048379898071289	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Das neue Bühnenprogramm des preisgekrönten Kabarettduo Mike und Aydin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.0223159790039062	6.89936447143554688	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728202819824219	6.95163249969482422	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831176757812	6.95060014724731445	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395202636719	6.95048379898071289	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.0223159790039062	6.89936447143554688	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ihr gestaltet die Welt von Minecraft Pi und erschafft eigene Kreationen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 13 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie lernen wie Sie das Mozzitron – einen batteriebetriebenen Minisynthesizer mit integriertem Lautsprecher – selbst bauen können.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Workshop im Rahmen des Makerspace-Programms	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie können 3D-Objekte drucken und mit nach Hause nehmen.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dieser Termin ermöglicht den Ausdruck mitgebrachter 3D-Dateien. 	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10:30 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	11 bis 12 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Wir zeigen Ihnen wie ein Lasercutter überhaupt funktioniert.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	12 bis 15 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Ein Mathe Musical über den kleinen Zahlenteufel Zacharias.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: MINTköln 2021: Moderne Mikroskopie mit Dr. André Lampe	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Dr. André Lampe erklärt die Grundlagen der modernen Mikroskopie und zeigt, was man mit einem Mikroskop alles machen kann – auch, wenn man kein Profi ist.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	15 bis 16 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Hier lernen Sie was genau unter Künstlicher Intelligenz zu verstehen ist und wie sie sich entwickelt hat.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Programmieren, Sensoren verkabeln und Klänge durch Berührung steuern.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr	Stadtbibliothek Köln
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395202636719	6.95048379898071289	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck. So wie sich Liese-Lotte als Gleitschirmpilotin von den höchsten Bergen stürzt, so ist ihr Soloprogramm, aufregend, frech, stürmisch, frei und frisch!	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.0223159790039062	6.89936447143554688	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Bau eines Elektro Autos	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	14 bis 17 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
9ec11940-2d7c-416f-9672-5383c008a1a8	Eintauchen in AR- und VR- Welten zum Lösen einer QR-Code Aufgabe	50.9539909362792969	6.91934871673583984	Köln	50825	Subbelrather Straße	14 bis 17 Uhr	Stadtteilbibliothek Ehrenfeld
aadd0925-dca6-4092-94f1-4cadff751578	Logik Spiele und die Geschichte über das neugierige Mädchen Ruby	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	14 bis 17 Uhr	Stadtteilbibliothek Rodenkirchen
38cbe7f4-e106-4cb4-ad6d-326e6b436250	spannende Experimente zum Thema anziehende Kräfte	50.9224967956542969	6.95902585983276367	Köln	50678	Severinstraße	14 bis 17 Uhr	Stadtteilbibliothek Haus Balchem
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gisela Steinhauer im Gespräch mit Marco Schreyl in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	20 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Sie schneiden mit dem Lasercutter Objekte aus Kunststoff und Holz aus.	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	14 bis 17 Uhr	Stadtbibliothek Köln
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728202819824219	6.95163249969482422	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831176757812	6.95060014724731445	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
8219116d-200f-44d3-b4c6-39d8f97fff97	Bernd-Alois-Zimmermann-Stipendium des Jahres 2020	50.9341964721679688	6.95203590393066406	Köln	50676	Jabachstraße 1 (Eingang: Leonhard-Tietz-Straße	19:30 Uhr	Kunst-Station Sankt Peter Köln
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Das neue Bühnenprogramm des preisgekrönten Kabarettduo Mike und Aydin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Die zwei Kabarettistinnen führen den Zuschauer durch die Geschichte der Medizin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
0c38ffec-9594-4994-b0cb-2a1ebe0ec944	Mit der Beschäftigung und Aufarbeitung der kolonialen Vergangenheit sowie des kolonialen Erbes Kölns öffnen wir ein neues Kapitel der Erinnerungskultur.	50.9350395202636719	6.95048379898071289	Köln	50667	Cäcilienstraße 	16 bis 18:45 Uhr	FORUM Volkshochschule im Museum
3f34e580-8c75-4a1b-9868-f73530bcc510	Open Air und Eintritt frei	50.9978752136230469	6.93877077102661133	Köln	50735	Neusser Landstraße	Einlass: 17.30 Uhr<br /> Beginn: 19 Uhr	Die Kantine
1b7bdd2b-3293-42a1-90c4-b66354706b5a	Open Air und Eintritt frei	50.9399871826171875	7.0014805793762207	Köln	51103	Kalk-Mülheimer Straße	Beginn: 16 Uhr	Bürgerhaus Kalk
c30b6bb6-b759-4942-8f5f-93cdef22d9d2	Cologne Alliance und die Kölner Städtepartnerschaftsvereine stellen sich vor!	50.936492919921875	6.95503664016723633	Köln	50667	vor GALERIA Kaufhof	Von 11 bis 17 Uhr.	Schildergasse/Ecke An St. Agatha
e3624424-6fc0-43c6-b8e7-2464294ed9c1	für Einsteiger*innen	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	10 bis 14 Uhr<br /> 	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: Fritzi Benders Zwergenlala und ein Lasercutter-Workshop	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
97962c0a-decb-435a-98c3-21095e1d1b17	Sechs kunstschaffende Malerinnen und Maler präsentieren Acryl- und Aquarell-Malereien in vielen Facetten.	50.9371070861816406	6.9119725227355957	Köln	50931	Aachener Straße	Montag bis Samstag: 16 bis 19 Uhr<br /> Samstag, 25.09.2021, 17 bis 20:30 Uhr<br /> Sonntag, 26.09.2021, 14 bis 19 Uhr<br /> Sonntag, 03.10.2021, 14 bis 17 Uhr	Kunsthalle Lindenthal
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Ein Parodien-Reigen durch das "postfaktische Zeitalter"<br /> <br /> 	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
13f3d85a-188a-425a-9fd8-9bcdeb0725c9	Open Air und Eintritt frei	50.8995933532714844	7.02227401733398438	Köln	51149	Oberstraße	Einlass: 15 Uhr<br /> Beginn: 16 Uhr	Bürgerzentrum Engelshof e. V.
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
672a5d5f-8f5b-412b-bf2f-6eddabb03b7a	Große Geschichten für kleine Leute.	51.0223159790039062	6.89936447143554688	Köln	50765	Pariser Platz	11 Uhr	Stadtteilbibliothek Chorweiler
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gisela Steinhauer im Gespräch mit Marco Schreyl in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	20 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
8219116d-200f-44d3-b4c6-39d8f97fff97	Bernd-Alois-Zimmermann-Stipendium des Jahres 2020	50.9341964721679688	6.95203590393066406	Köln	50676	Jabachstraße 1 (Eingang: Leonhard-Tietz-Straße	19:30 Uhr	Kunst-Station Sankt Peter Köln
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Kabarett im Bürgerhaus Stollwerck<br /> Das neue Bühnenprogramm des preisgekrönten Kabarettduo Mike und Aydin	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Eröffnungsabend des MINT Festival Köln 2021 in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	19 Uhr	Stadtbibliothek Köln
7d9efc06-2de7-4b83-acaa-3a32fde5a520	Ein Ein-Mann-Musical nach dem gleichnamigen Bestseller von Moritz Netenjakob im Bürgerhaus Stollwerck<br /> 	50.9252815246582031	6.96454381942749023	Köln	50678	Dreikönigenstraße	20 bis 23 Uhr	Bürgerhaus Stollwerck
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
1df950ab-e8cc-4f92-800d-362a9323407e	In der Stadtteilbibliothek Nippes steht bei dieser Veranstaltung die Sprach- und Sinnesförderung der Kleinsten im Vordergrund.	50.9728202819824219	6.95163249969482422	Köln	50733	Neusser Straße	11 Uhr	Stadtteilbibliothek Nippes
1133851f-c590-486a-b30b-fda7d55af359	Vortrag zum Thema Depressionen	50.9348831176757812	6.95060014724731445	Köln	50676	Cäcilienstraße	18 bis 19:30 Uhr	VHS-Forum im Rautenstrauch-Joest-Museum
aadd0925-dca6-4092-94f1-4cadff751578	Workshop in der Stadtteilbibliothek Rodenkirchen.	50.8891487121582031	6.99179697036743164	Köln	50996	Schillingsrotter Straße	16 bis 18 Uhr 	Stadtteilbibliothek Rodenkirchen
1b7bdd2b-3293-42a1-90c4-b66354706b5a	Open Air und Eintritt frei	50.9399871826171875	7.0014805793762207	Köln	51103	Kalk-Mülheimer Straße	Beginn: 16 Uhr	Bürgerhaus Kalk
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Heute im Rahmenprogramm: Fritzi Benders Zwergenlala und ein Lasercutter-Workshop	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	13 bis 18 Uhr	Stadtbibliothek Köln
e3624424-6fc0-43c6-b8e7-2464294ed9c1	Gisela Steinhauer im Gespräch mit Marco Schreyl in der Zentralbibliothek	50.9342422485351562	6.94925117492675781	Köln	50676	Josef-Haubrich-Hof	20 Uhr	Stadtbibliothek Köln
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Große Geschichten für kleine Leute	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	16 Uhr	Stadtteilbibliothek Mülheim
d3730834-a1fc-4c76-a48f-2e92bf9bc1e3	Lesung mit Bert Brune und Hermann Spix in der Stadtteilbibliothek Mülheim	50.961029052734375	7.00479984283447266	Köln	51065	Wiener Platz	17 Uhr	Stadtteilbibliothek Mülheim
97962c0a-decb-435a-98c3-21095e1d1b17	Sechs kunstschaffende Malerinnen und Maler präsentieren Acryl- und Aquarell-Malereien in vielen Facetten.	50.9371070861816406	6.9119725227355957	Köln	50931	Aachener Straße	Montag bis Samstag: 16 bis 19 Uhr<br /> Samstag, 25.09.2021, 17 bis 20:30 Uhr<br /> Sonntag, 26.09.2021, 14 bis 19 Uhr<br /> Sonntag, 03.10.2021, 14 bis 17 Uhr	Kunsthalle Lindenthal
13f3d85a-188a-425a-9fd8-9bcdeb0725c9	Open Air und Eintritt frei	50.8995933532714844	7.02227401733398438	Köln	51149	Oberstraße	Einlass: 15 Uhr<br /> Beginn: 16 Uhr	Bürgerzentrum Engelshof e. V.
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Die Stadtverwaltung Köln als Arbeitgeberin: Besuchen Sie uns auf dem Kölner IT-Jobtag.	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	12 bis 17 Uhr	KOMED im MediaPark
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
01b8c53b-b6b1-4027-95a6-335b9cb6389f	Inszenierung | Inspiration<br /> Tanz und Fotografie <br /> Zu Gast: Die Ausstellung zeigt unter anderem Arbeiten der polnischen Fotografin Anna Orlowska, die 2020 im Rahmen von "Artist meets Archive" der Internationalen Photoszene Köln zu Gast im Deutschen Tanzarchiv Köln war. <br /> 	50.9488067626953125	6.94330120086669922	Köln	50670	Im Mediapark	Täglich von 14 bis 19 Uhr, mittwochs geschlossen	Tanzmuseum des Deutschen Tanzarchivs Köln
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.<br /> 	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz		Stadthaus Deutz, Ladenlokal 5
4eea2e68-3ef2-43c9-8c56-aeac12225526	Informieren Sie sich zur Planung und geben Sie eine Stellungnahme ab.	50.9386215209960938	6.97956705093383789	Köln	50679	Öffentlichkeitsbeteiligung des Stadtplanungsamtes, Willy-Brandt-Platz	Bitte vereinbaren Sie einen Termin unter Telefon 0221 / 221-31642 oder schreiben Sie uns eine E-Mail.	Stadthaus Deutz, Ladenlokal 5
\.


--
-- Data for Name: kvbnextbiketable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.kvbnextbiketable (id, "bikeNumber", lat, lon) FROM stdin;
bike_221769	221769	50.979339599609375	6.92421293258666992
bike_221654	221654	50.9534912109375	6.93003320693969727
bike_221716	221716	50.9578056335449219	7.01261520385742188
bike_222390	222390	50.8986320495605469	6.95250606536865234
bike_222265	222265	50.9515151977539062	6.89809894561767578
bike_220988	220988	50.9602699279785156	6.91633701324462891
bike_223225	223225	50.9376945495605469	6.88986015319824219
bike_222769	222769	50.9417877197265625	6.955596923828125
bike_222616	222616	50.9547462463378906	6.92839193344116211
bike_222498	222498	50.9161300659179688	6.92036294937133789
bike_221898	221898	50.9339103698730469	6.99789285659790039
bike_222301	222301	50.9730911254882812	6.91218900680541992
bike_222059	222059	50.9558982849121094	6.8909602165222168
bike_220874	220874	50.9817314147949219	6.96527481079101562
bike_222320	222320	50.9129486083984375	6.93112277984619141
bike_220410	220410	50.9211997985839844	7.00049591064453125
bike_221565	221565	50.9662742614746094	6.95080804824829102
bike_222095	222095	50.9700279235839844	6.9592280387878418
bike_222810	222810	50.9704017639160156	6.94339179992675781
bike_220181	220181	50.9720306396484375	7.00520515441894531
bike_220993	220993	50.9058265686035156	6.9503631591796875
bike_222591	222591	50.9657173156738281	6.97284889221191406
bike_222107	222107	51.3250083923339844	12.3077363967895508
bike_221903	221903	50.9415054321289062	6.95604085922241211
bike_223436	223436	50.9532623291015625	6.90211200714111328
bike_221239	221239	50.9828224182128906	6.96718311309814453
bike_220124	220124	50.9129981994628906	6.92424201965332031
bike_223243	223243	50.9577713012695312	6.94691705703735352
bike_221715	221715	50.9266281127929688	7.01130390167236328
bike_220217	220217	50.9128341674804688	6.94444704055786133
bike_221023	221023	50.9654045104980469	6.9478302001953125
bike_222188	222188	50.8941421508789062	6.99349021911621094
bike_220432	220432	50.9668846130371094	6.97444677352905273
bike_220710	220710	50.9552345275878906	6.96141290664672852
bike_222143	222143	50.89990234375	6.92124319076538086
bike_222858	222858	50.9733467102050781	7.00594186782836914
bike_221406	221406	50.9667549133300781	6.97783803939819336
bike_222907	222907	50.9420394897460938	6.95733118057250977
bike_222703	222703	50.9517745971679688	6.91092300415039062
bike_220418	220418	50.9133644104003906	6.98297691345214844
bike_220132	220132	50.9066505432128906	6.97736978530883789
bike_222194	222194	50.9085121154785156	6.90845584869384766
bike_220152	220152	50.9201622009277344	6.9565730094909668
bike_220821	220821	50.9482994079589844	6.88125181198120117
bike_221641	221641	50.9183883666992188	6.96938180923461914
bike_221602	221602	50.9596672058105469	6.94681501388549805
bike_222335	222335	50.9627494812011719	6.95133876800537109
bike_220308	220308	50.9430923461914062	7.02366018295288086
bike_222767	222767	50.9224357604980469	6.96492290496826172
bike_223431	223431	50.9636116027832031	6.92309808731079102
bike_221285	221285	50.9674491882324219	6.94936323165893555
bike_222162	222162	50.9552078247070312	7.00592708587646484
bike_222899	222899	50.9573745727539062	6.90842294692993164
bike_223228	223228	50.9825363159179688	6.96821498870849609
bike_220344	220344	50.9753227233886719	6.94269800186157227
bike_222438	222438	50.9625740051269531	6.92216205596923828
bike_220053	220053	50.9590721130371094	6.97818708419799805
bike_222639	222639	50.9628105163574219	6.9233708381652832
bike_220720	220720	50.9385910034179688	7.00888919830322266
bike_220756	220756	50.9687080383300781	6.90498590469360352
bike_222903	222903	50.9336471557617188	6.93892192840576172
bike_221529	221529	50.9452285766601562	7.00486278533935547
bike_222234	222234	50.9420013427734375	6.95716714859008789
bike_220678	220678	50.9463462829589844	7.0050201416015625
bike_221973	221973	50.9408111572265625	6.96198320388793945
bike_220935	220935	50.9663734436035156	6.94202423095703125
bike_221809	221809	50.9788093566894531	6.94907617568969727
bike_221571	221571	50.9056892395019531	6.97461891174316406
bike_221575	221575	50.9439697265625	6.96933984756469727
bike_220108	220108	50.9463615417480469	6.95659780502319336
bike_222096	222096	50.9205818176269531	6.95176315307617188
bike_222445	222445	50.9609031677246094	6.94795513153076172
bike_222755	222755	50.9489021301269531	6.92535018920898438
bike_222319	222319	50.9387435913085938	6.97616195678710938
bike_221969	221969	50.9242744445800781	6.93293094635009766
bike_223314	223314	50.9662437438964844	6.96801090240478516
bike_223286	223286	50.9366607666015625	6.93724203109741211
bike_221773	221773	50.9331207275390625	6.93688392639160156
bike_223280	223280	0	6.97021484375
bike_221710	221710	0	6.98194980621337891
bike_220207	220207	50.9423332214355469	6.92622709274291992
bike_222701	222701	50.9098472595214844	6.97435188293457031
bike_221812	221812	50.9156112670898438	7.00065803527832031
bike_221388	221388	50.9506912231445312	7.00382709503173828
bike_221039	221039	50.9799308776855469	6.96855878829956055
bike_222170	222170	50.9143867492675781	6.92508077621459961
bike_220754	220754	50.9691162109375	6.95257806777954102
bike_222137	222137	50.9361572265625	7.00936222076416016
bike_220437	220437	50.9457778930664062	6.99629592895507812
bike_220295	220295	50.9719581604003906	7.00675296783447266
bike_221362	221362	50.9675521850585938	6.94296693801879883
bike_220455	220455	50.9824562072753906	6.94077682495117188
bike_222489	222489	50.9336090087890625	6.98752689361572266
bike_221527	221527	50.9805564880371094	6.96050214767456055
bike_222932	222932	50.9778633117675781	6.93359994888305664
bike_223201	223201	50.9452781677246094	6.96314477920532227
bike_222001	222001	50.9177017211914062	6.91010713577270508
bike_222005	222005	50.9002265930175781	6.97890281677246094
bike_223304	223304	50.9485397338867188	6.88531303405761719
bike_223064	223064	50.9642257690429688	6.89581680297851562
bike_221848	221848	50.9106826782226562	6.95598793029785156
bike_223475	223475	50.9180030822753906	6.95195293426513672
bike_222938	222938	50.9416351318359375	6.95634222030639648
bike_222562	222562	50.9421958923339844	6.95543813705444336
bike_223287	223287	50.9620590209960938	6.98029804229736328
bike_220370	220370	50.9631996154785156	7.00755977630615234
bike_222349	222349	50.9513397216796875	7.00607204437255859
bike_220460	220460	50.9221115112304688	6.99774312973022461
bike_223266	223266	50.9182357788085938	6.97861003875732422
bike_220466	220466	50.9168624877929688	6.97027301788330078
bike_222356	222356	50.9578132629394531	6.94505977630615234
bike_222553	222553	50.9311866760253906	6.96398019790649414
bike_221547	221547	50.9605712890625	6.90254497528076172
bike_221283	221283	50.9629783630371094	6.98113203048706055
bike_223050	223050	50.9432144165039062	6.88328218460083008
bike_222168	222168	50.9369888305664062	6.99570608139038086
bike_221742	221742	50.9743156433105469	6.95717191696166992
bike_221432	221432	50.9387435913085938	6.89492177963256836
bike_222656	222656	50.9520988464355469	7.00911521911621094
bike_220708	220708	50.8999176025390625	6.9339909553527832
bike_221378	221378	50.9659271240234375	6.94041919708251953
bike_222868	222868	50.9314994812011719	6.95644283294677734
bike_221920	221920	50.9674415588378906	7.00244808197021484
bike_223465	223465	50.9455795288085938	6.96320676803588867
bike_220171	220171	50.9466705322265625	6.88547992706298828
bike_222147	222147	50.9661216735839844	6.98503303527832031
bike_221611	221611	50.9776039123535156	6.932952880859375
bike_222690	222690	50.9377593994140625	6.88514280319213867
bike_221706	221706	50.8927421569824219	6.96658611297607422
bike_220016	220016	50.9666404724121094	7.01003217697143555
bike_221422	221422	50.9227142333984375	6.94201087951660156
bike_222698	222698	50.9406204223632812	6.9624018669128418
bike_222359	222359	50.9587745666503906	7.00654506683349609
bike_222570	222570	50.9706802368164062	6.97326421737670898
bike_221455	221455	50.9418373107910156	6.95812797546386719
bike_222974	222974	50.9221420288085938	6.99789190292358398
bike_222811	222811	50.9397964477539062	6.95303583145141602
bike_221629	221629	50.9028663635253906	6.98035478591918945
bike_220948	220948	50.9696388244628906	7.01494884490966797
bike_221459	221459	50.9004135131835938	6.9847559928894043
bike_221054	221054	50.9692230224609375	6.93282413482666016
bike_221063	221063	50.9962081909179688	6.95663309097290039
bike_222042	222042	50.9051589965820312	6.95171308517456055
bike_222470	222470	50.9175796508789062	6.91013717651367188
bike_221647	221647	50.9640884399414062	7.01214790344238281
bike_220244	220244	50.9046974182128906	6.91532993316650391
bike_220463	220463	50.9740486145019531	6.90451288223266602
bike_222340	222340	50.9051589965820312	6.95284700393676758
bike_223007	223007	50.9827651977539062	6.96320199966430664
bike_220088	220088	50.9792404174804688	6.96301984786987305
bike_221866	221866	50.9779472351074219	6.94911003112792969
bike_220714	220714	50.959716796875	6.89666414260864258
bike_222276	222276	50.9116935729980469	6.99229812622070312
bike_222991	222991	50.9647293090820312	7.01037311553955078
bike_220008	220008	50.8989830017089844	6.96117687225341797
bike_223053	223053	50.9055900573730469	6.95992279052734375
bike_222655	222655	50.9949607849121094	6.95888996124267578
bike_221035	221035	50.9168205261230469	6.99208402633666992
bike_221238	221238	50.9403648376464844	7.02056694030761719
bike_222779	222779	50.9307861328125	6.83815717697143555
bike_222957	222957	50.9042205810546875	6.91522216796875
bike_221750	221750	50.9798088073730469	6.94596481323242188
bike_222617	222617	50.9058990478515625	6.95532798767089844
bike_221787	221787	50.9420967102050781	7.01300477981567383
bike_220481	220481	50.9925308227539062	6.96008682250976562
bike_220770	220770	50.9438705444335938	7.02602195739746094
bike_221036	221036	50.9850196838378906	6.93962287902832031
bike_221254	221254	50.9101066589355469	6.99050998687744141
bike_222259	222259	50.9215431213378906	6.92644119262695312
bike_222415	222415	51.3250198364257812	12.3076677322387695
bike_223244	223244	50.9406814575195312	6.93410587310791016
bike_220067	220067	50.9190292358398438	6.92149114608764648
bike_221172	221172	50.9719085693359375	7.00277280807495117
bike_221991	221991	50.9369239807128906	6.97670793533325195
bike_220718	220718	0	6.95941305160522461
bike_220130	220130	50.9485435485839844	6.87911701202392578
bike_220925	220925	50.9162445068359375	6.94277095794677734
bike_222192	222192	50.9282569885253906	7.00253200531005859
bike_221192	221192	50.9657783508300781	6.9414219856262207
bike_221713	221713	50.9463272094726562	7.0117950439453125
bike_221847	221847	50.9377098083496094	6.88750791549682617
bike_220916	220916	50.9259109497070312	6.99892997741699219
bike_222627	222627	50.9138679504394531	6.91634178161621094
bike_220792	220792	50.9209556579589844	6.90651082992553711
bike_222880	222880	50.9304847717285156	6.97634792327880859
bike_223369	223369	50.9201011657714844	6.94040012359619141
bike_220855	220855	50.9316825866699219	6.97798395156860352
bike_221993	221993	50.9639244079589844	6.94501590728759766
bike_220015	220015	50.935302734375	6.99426984786987305
bike_221452	221452	50.9268722534179688	6.93792295455932617
bike_221783	221783	50.9601402282714844	6.99571514129638672
bike_221954	221954	50.9599037170410156	6.89874410629272461
bike_222214	222214	50.9595146179199219	6.94670009613037109
bike_222618	222618	50.9638748168945312	6.9205169677734375
bike_222066	222066	50.9593505859375	6.94292020797729492
bike_223024	223024	50.9207763671875	6.954010009765625
bike_222408	222408	50.9277420043945312	6.95135307312011719
bike_223326	223326	50.9675178527832031	6.9655308723449707
bike_221804	221804	50.9413528442382812	6.95358419418334961
bike_221814	221814	50.9439125061035156	6.9602971076965332
\.


--
-- Data for Name: openweathertable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.openweathertable ("SID", city, lat, lon, humidity, pressure, temp, temp_max, temp_min, "timestamp", wind_speed) FROM stdin;
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:00:03.737	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:00:45.101	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:00:55.781	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:01:04.328	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:01:24.231	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:01:44.153	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:02:03.734	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:02:23.629	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:02:43.632	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:03:04.149	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:03:23.644	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:03:43.651	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:04:03.636	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	94	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:04:23.633	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:04:43.725	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:05:03.635	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:05:23.633	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:05:43.633	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:06:03.623	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:06:23.646	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:06:43.64	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:07:03.64	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:07:23.631	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:07:43.658	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:08:03.64	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:08:23.642	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:08:43.632	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:09:03.643	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:09:23.63	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:09:43.649	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:10:03.624	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:10:27.138	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:10:43.686	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:11:03.809	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:11:23.659	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:11:43.642	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:12:03.635	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1023	11.9099998474121094	12.7399997711181641	10.75	2021-10-06 22:12:23.646	4.63000011444091797
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:12:43.653	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:13:03.647	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:13:23.623	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:13:43.641	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:14:03.652	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:14:23.643	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8199996948242188	12.7399997711181641	10.75	2021-10-06 22:14:43.631	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:15:03.861	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:15:23.632	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:15:43.673	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:16:03.717	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:16:23.65	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:16:43.623	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:17:03.678	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:17:23.621	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:17:43.659	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:18:03.634	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:18:23.659	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:18:43.621	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:19:03.648	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:19:23.621	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:19:43.638	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:20:03.634	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:20:23.658	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:20:43.643	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:21:03.655	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:21:23.624	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:21:43.646	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:22:03.634	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:22:23.644	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:22:43.641	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:23:03.666	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:23:23.617	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:23:43.644	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:24:03.626	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:24:23.663	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8100004196166992	12.7399997711181641	10.75	2021-10-06 22:24:43.643	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:25:03.657	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:25:23.613	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:25:43.638	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:26:03.625	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:26:23.629	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:26:43.632	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:27:03.643	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:27:23.646	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:27:43.65	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:28:03.655	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:28:23.623	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:28:43.632	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:29:03.643	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:29:23.869	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:29:43.657	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:30:04.958	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:30:23.68	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:30:43.645	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:31:03.643	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.7799997329711914	12.7399997711181641	10.75	2021-10-06 22:31:23.628	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:31:43.627	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:32:03.627	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:34:43.626	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:35:03.792	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:35:23.615	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:35:43.637	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:36:03.826	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:36:23.633	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:36:43.624	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:37:03.636	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:37:23.632	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:37:43.646	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:38:03.634	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:38:23.641	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:38:43.628	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:39:03.63	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:39:23.635	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:39:43.648	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:40:04.938	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:40:23.642	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:40:43.629	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:41:03.645	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:41:23.623	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:41:43.663	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:42:03.631	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:42:23.642	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	96	1024	11.8000001907348633	12.7399997711181641	10.75	2021-10-06 22:42:43.643	3.59999990463256836
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:43:03.645	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:43:23.634	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:43:43.654	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:44:03.682	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:44:23.646	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:44:43.628	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:45:03.65	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:45:23.627	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:45:43.65	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:46:03.663	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:46:23.637	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:46:43.633	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:47:03.658	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:47:23.633	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:47:43.652	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9399995803833008	12.7399997711181641	11.119999885559082	2021-10-06 22:48:03.645	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:48:23.662	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:48:43.625	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:49:03.631	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:49:23.625	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:49:43.628	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:50:03.637	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:50:23.628	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:50:43.632	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:51:03.623	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:51:23.637	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:51:43.818	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:52:03.631	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:52:23.625	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:52:43.676	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:53:03.641	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:53:23.628	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:53:43.633	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:54:03.628	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:54:23.633	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:54:43.639	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:55:04.842	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:55:23.661	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:55:43.635	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:56:03.639	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:56:23.65	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:56:43.65	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:57:03.654	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:57:23.632	1.34000003337860107
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:57:43.666	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:58:03.631	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:58:23.648	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:58:43.632	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:59:03.682	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:59:23.628	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 22:59:43.629	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:00:03.645	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:00:23.639	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:00:43.629	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:01:03.622	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:01:23.632	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:01:43.637	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:02:03.644	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:02:23.63	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:02:43.631	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:03:03.634	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:03:23.628	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:03:43.644	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:04:03.636	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	12.0100002288818359	12.7399997711181641	10.8999996185302734	2021-10-06 23:04:23.681	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	12.0100002288818359	12.7399997711181641	10.8999996185302734	2021-10-06 23:04:43.652	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:05:03.658	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:05:23.635	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:05:43.66	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:06:03.629	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:06:23.642	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:06:43.628	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:07:03.637	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:07:23.643	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:07:43.625	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	11.9499998092651367	12.7399997711181641	10.8999996185302734	2021-10-06 23:08:03.644	0.449999988079071045
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	12.0100002288818359	12.7399997711181641	10.8999996185302734	2021-10-06 23:08:23.647	0.889999985694885254
0500e76a-6123-4631-8485-b1272b615701	Köln-Rodenkirchen	50.88330078125	6.98330020904541016	95	1024	12.0100002288818359	12.7399997711181641	10.8999996185302734	2021-10-06 23:08:43.631	0.889999985694885254
\.


--
-- Data for Name: wunderfleettable; Type: TABLE DATA; Schema: es; Owner: shekhar
--

COPY es.wunderfleettable (vehicle_id, vehicle_type, lat, lon) FROM stdin;
28	scooter	50.9394035339355469	6.95345401763916016
15	scooter	50.9217681884765625	6.93310689926147461
29	scooter	50.9099388122558594	6.93775510787963867
34	scooter	50.9084434509277344	6.97042608261108398
39	scooter	50.9347000122070312	6.94062900543212891
53	scooter	50.9542274475097656	6.90981006622314453
18	scooter	50.941314697265625	6.99444580078125
38	scooter	50.9542884826660156	6.90301799774169922
22	scooter	50.9669227600097656	6.9386591911315918
12	scooter	50.9244766235351562	6.96607685089111328
55	scooter	50.9420204162597656	6.96179103851318359
44	scooter	50.9096488952636719	6.94098091125488281
40	scooter	50.9879264831542969	6.89863300323486328
42	scooter	50.9435577392578125	6.91204309463500977
20	scooter	50.941741943359375	6.94379997253417969
19	scooter	50.9537353515625	6.99611711502075195
17	scooter	50.9281501770019531	6.93554782867431641
26	scooter	50.9584579467773438	7.01005220413208008
13	scooter	50.9144744873046875	6.91696882247924805
32	scooter	50.9235076904296875	6.91989421844482422
9	scooter	50.9562301635742188	6.92645597457885742
24	scooter	50.9603424072265625	7.00698280334472656
27	scooter	50.915618896484375	6.89449119567871094
36	scooter	50.9491691589355469	6.87393093109130859
57	scooter	50.9392852783203125	6.95339393615722656
45	scooter	50.9458961486816406	7.00560522079467773
50	scooter	50.9080772399902344	6.91927099227905273
48	scooter	50.9737205505371094	6.93206596374511719
52	scooter	50.9336585998535156	6.94867706298828125
21	scooter	50.9341926574707031	6.92536401748657227
35	scooter	50.9873847961425781	6.9614109992980957
10	scooter	50.8915023803710938	6.90906095504760742
31	scooter	50.9100379943847656	6.90550708770751953
51	scooter	50.9080734252929688	6.91453886032104492
25	scooter	50.9478721618652344	6.98716402053833008
37	scooter	50.9123344421386719	6.96681594848632812
16	scooter	50.9416656494140625	6.95068788528442383
56	scooter	50.9467658996582031	6.98484182357788086
49	scooter	50.9321174621582031	6.93297719955444336
14	scooter	50.9075241088867188	6.93670415878295898
11	scooter	50.9525566101074219	6.93249702453613281
46	scooter	50.9276046752929688	6.93500280380249023
47	scooter	50.90679931640625	6.91291618347167969
54	scooter	50.9489593505859375	6.96396207809448242
33	scooter	50.9368362426757812	6.93905878067016602
23	scooter	50.9202384948730469	6.929473876953125
30	scooter	50.9100379943847656	6.93707180023193359
43	scooter	50.9414405822753906	6.95966291427612305
41	scooter	50.9397621154785156	6.96153783798217773
76	scooter	50.9388542175292969	6.9900360107421875
136	scooter	50.9574394226074219	6.94026422500610352
194	scooter	50.9385032653808594	6.85644102096557617
192	scooter	50.9417152404785156	6.97286081314086914
169	scooter	50.9242362976074219	6.89767789840698242
176	scooter	50.9225387573242188	6.98166704177856445
205	scooter	50.9695205688476562	6.91718387603759766
108	scooter	50.9373741149902344	6.99858713150024414
94	scooter	50.89825439453125	6.89956378936767578
173	scooter	50.9154319763183594	6.92815494537353516
93	scooter	50.9421424865722656	6.95311307907104492
85	scooter	50.9524574279785156	6.90807390213012695
144	scooter	50.9527397155761719	6.92322206497192383
146	scooter	50.9471778869628906	6.94503498077392578
125	scooter	50.9875946044921875	6.96089601516723633
157	scooter	50.9358596801757812	6.97597122192382812
198	scooter	50.9322662353515625	6.87096214294433594
183	scooter	50.9382247924804688	6.84561681747436523
159	scooter	50.9133377075195312	6.94047689437866211
204	scooter	50.9607772827148438	7.00648784637451172
206	scooter	50.9381179809570312	6.877227783203125
161	scooter	50.9047279357910156	6.94227409362792969
67	scooter	50.9108390808105469	6.94119787216186523
99	scooter	50.9453506469726562	6.88446283340454102
66	scooter	50.8997383117675781	6.90327310562133789
174	scooter	50.923095703125	6.94321107864379883
77	scooter	50.9377937316894531	7.00037002563476562
60	scooter	50.9330215454101562	6.98992586135864258
148	scooter	50.9604377746582031	6.95816278457641602
195	scooter	50.9486656188964844	6.96518421173095703
78	scooter	50.9182853698730469	6.9169769287109375
130	scooter	50.9546279907226562	6.90954399108886719
92	scooter	50.9397621154785156	6.8897252082824707
101	scooter	50.9398002624511719	7.00123119354248047
186	scooter	50.9425582885742188	6.88739013671875
89	scooter	50.9388008117675781	6.95233488082885742
98	scooter	50.9381332397460938	6.83471012115478516
167	scooter	50.9643058776855469	6.95615291595458984
58	scooter	50.9919090270996094	6.9298548698425293
122	scooter	50.9397430419921875	6.95181083679199219
115	scooter	50.9095916748046875	6.95266103744506836
74	scooter	50.9056739807128906	6.97985506057739258
65	scooter	50.947967529296875	6.95248317718505859
61	scooter	50.9601364135742188	6.92308998107910156
142	scooter	50.9559555053710938	6.9049072265625
124	scooter	50.9452590942382812	6.90843820571899414
70	scooter	50.937347412109375	6.90133476257324219
79	scooter	50.9748039245605469	6.9278101921081543
120	scooter	50.9372177124023438	6.89488887786865234
189	scooter	50.9367446899414062	6.91299676895141602
208	scooter	50.9458084106445312	6.93809986114501953
72	scooter	50.9202156066894531	6.92958593368530273
80	scooter	50.9480743408203125	6.95925283432006836
133	scooter	50.9684944152832031	6.91630220413208008
87	scooter	50.9170150756835938	6.91074800491333008
134	scooter	50.9502639770507812	6.95474720001220703
121	scooter	50.9406471252441406	6.9594721794128418
193	scooter	50.9445686340332031	6.95344114303588867
110	scooter	50.9410247802734375	6.94794416427612305
135	scooter	50.9070205688476562	6.92181587219238281
132	scooter	50.8960533142089844	6.92761421203613281
138	scooter	50.9097862243652344	6.90580511093139648
64	scooter	50.911468505859375	6.9393458366394043
112	scooter	50.9432411193847656	6.96022891998291016
177	scooter	50.9139289855957031	6.94106578826904297
171	scooter	50.9472122192382812	6.93633890151977539
118	scooter	50.9502067565917969	6.98781394958496094
162	scooter	50.9201622009277344	6.93436813354492188
160	scooter	50.9142875671386719	6.9311370849609375
63	scooter	50.9821243286132812	6.96070718765258789
175	scooter	50.93634033203125	6.97080612182617188
147	scooter	50.9446678161621094	6.94218206405639648
154	scooter	50.9380683898925781	6.85179710388183594
113	scooter	50.9245033264160156	6.91155099868774414
104	scooter	50.9395828247070312	6.95767784118652344
131	scooter	50.8985786437988281	6.90026617050170898
188	scooter	50.9382896423339844	6.95310211181640625
180	scooter	50.9609909057617188	7.00619220733642578
172	scooter	50.9405593872070312	6.9337620735168457
81	scooter	50.9210357666015625	6.96753787994384766
201	scooter	50.9609146118164062	7.0064997673034668
106	scooter	50.9058151245117188	6.97751379013061523
150	scooter	50.94757080078125	6.91939306259155273
71	scooter	50.9403724670410156	6.97362279891967773
107	scooter	50.9021720886230469	6.90507411956787109
111	scooter	50.9473724365234375	6.98810577392578125
153	scooter	50.9665641784667969	6.93058300018310547
141	scooter	50.9394645690917969	6.81592988967895508
149	scooter	50.9574813842773438	6.91073513031005859
178	scooter	50.9015884399414062	6.97673988342285156
114	scooter	50.89447021484375	6.94889211654663086
129	scooter	50.9816360473632812	6.91840696334838867
197	scooter	50.9394874572753906	6.81600284576416016
151	scooter	50.9319229125976562	6.87835979461669922
202	scooter	50.9453277587890625	6.91865301132202148
168	scooter	50.93963623046875	6.95304203033447266
185	scooter	50.9051513671875	6.95639181137084961
127	scooter	50.9256134033203125	6.96484804153442383
158	scooter	50.9604682922363281	7.00754022598266602
83	scooter	50.9406356811523438	6.94007587432861328
128	scooter	50.9654426574707031	6.917877197265625
203	scooter	50.9410972595214844	6.95306396484375
126	scooter	50.9189682006835938	6.93732595443725586
88	scooter	50.911468505859375	6.93922710418701172
116	scooter	50.8948898315429688	6.95438385009765625
143	scooter	50.9001045227050781	6.98498106002807617
119	scooter	50.9091682434082031	6.94116592407226562
184	scooter	50.9214286804199219	6.93335580825805664
96	scooter	50.9343338012695312	6.95467805862426758
155	scooter	50.922943115234375	6.95177507400512695
69	scooter	50.9061050415039062	6.97832679748535156
166	scooter	50.9265403747558594	6.93836021423339844
163	scooter	50.9382133483886719	6.95288610458374023
199	scooter	50.9165420532226562	6.96097087860107422
97	scooter	50.8924522399902344	6.90789222717285156
105	scooter	50.9587287902832031	6.948760986328125
187	scooter	50.9381866455078125	6.84343290328979492
191	scooter	50.9098167419433594	6.93846702575683594
182	scooter	50.9381980895996094	6.85247993469238281
84	scooter	50.9742546081542969	6.96750020980834961
137	scooter	50.9090805053710938	6.94126796722412109
59	scooter	50.9584617614746094	7.01038885116577148
164	scooter	50.9349708557128906	6.95358610153198242
75	scooter	50.9314002990722656	6.98169898986816406
100	scooter	50.9735908508300781	6.96756696701049805
103	scooter	50.9540214538574219	6.96255397796630859
95	scooter	50.944091796875	6.95878791809082031
170	scooter	50.916961669921875	6.96983098983764648
62	scooter	50.9689102172851562	6.93034505844116211
123	scooter	50.9151763916015625	6.91121006011962891
139	scooter	50.9591064453125	7.00889921188354492
91	scooter	50.9470443725585938	6.92349004745483398
73	scooter	50.9112701416015625	6.93962192535400391
196	scooter	50.9187278747558594	6.96280193328857422
181	scooter	50.9228134155273438	6.98130607604980469
156	scooter	50.9649887084960938	6.9120030403137207
200	scooter	50.9266891479492188	6.92199182510375977
117	scooter	50.9541168212890625	6.97117519378662109
86	scooter	50.9605560302734375	7.00688314437866211
82	scooter	50.8945045471191406	6.95426702499389648
165	scooter	50.9135246276855469	6.93966579437255859
102	scooter	50.9595603942871094	7.00603294372558594
179	scooter	50.9723777770996094	6.92364883422851562
190	scooter	50.9297218322753906	6.95149517059326172
207	scooter	50.9349212646484375	6.9386138916015625
152	scooter	50.9125213623046875	6.91922521591186523
68	scooter	50.9150733947753906	6.89626789093017578
140	scooter	50.9326210021972656	6.95590496063232422
145	scooter	50.9381523132324219	6.87709379196166992
90	scooter	50.970428466796875	6.93806695938110352
301	scooter	50.9552078247070312	6.92780494689941406
\.


--
-- PostgreSQL database dump complete
--

