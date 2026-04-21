BEGIN;
DELETE FROM problems WHERE pdf_stem LIKE '%matma%';

-- e_matma_10maj_fl (18 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9564fcd7-e03f-4b9e-a5d1-8335b52d6f99', NOW(), 'e_matma_10maj_fl__001__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 1, 'a', 'a)
Oldja meg a pozitív valós számpárok halmazán a következő egyenletrendszert!
(
)
=
⎧
3
1
log
xy
2
⎨
(
)
−
=
2
3
log
y
x
⎩
2
b)
Határozza meg az összes olyan pozitív egész k számot, amelyre a
729
log3k
kifejezés értéke pozitív egész szám!

a)
b)
Ö.:', 12, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('40da5cd7-2e73-4935-89f0-9ee39418bded', NOW(), 'e_matma_10maj_fl__002__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 2, 'a', 'a)    Igazolja, hogy az  A(0; 1), B(4; 2), C(3; 6) és D(–5; 4) pontokkal megadott
négyszög trapéz!', 12, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_002.png', ARRAY['koordinata-geometria','geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7a6effb0-a0c0-401e-abee-53d5694cb0de', NOW(), 'e_matma_10maj_fl__002__b', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 2, 'b', 'b)      Kati megrajzolt egy olyan egyszerű teljes gráfot, amelynek 253 éle van, és csúcsai
között szerepelnek a trapéz A; B; C; D csúcsai is. Hány új gráfcsúcsot kellett
ehhez felvennie?
Legfeljebb hány éle törölhető ki ennek a teljes gráfnak, hogy még összefüggő
maradjon?

a)
b)
Ö.:
y

x', 12, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_002.png', ARRAY['grafelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('51169b80-d255-4c8b-8a4c-91f31e485f19', NOW(), 'e_matma_10maj_fl__003__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 3, 'a', 'Két európai nagyváros között egy repülőket üzemeltető társaság járatokat közlekedtet.
Ezek a járatok legalább 10 utas esetén indulnak, és a gépek legfeljebb 36 utas
szállítására alkalmasak. A társaság javítani szeretné a járatok kihasználtságát.
Többek között mérlegelik a következő szabály szerinti üzemeltetést: 20 vagy annál
kevesebb utas esetén fejenként 16 000 Ft-ért indítanak gépet. 20 fő feletti létszám esetén
az összes utas számára annyiszor 400 Ft-tal csökken a 16 000 forintos viteldíj,
amennyivel a létszám meghaladja a húszat.
)
(x
B
x a
hozzárendelési utasítását,
a)
Adja meg annak a B függvénynek az
amelynél x az utasok számát, B(x) pedig a társaság bevételét jelöli x utassal
indított járat esetén! Mi a B függvény értelmezési tartománya?', 13, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_003.png', ARRAY['fuggvenyek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7eea7cee-67f9-42b5-be05-7acee22e4c89', NOW(), 'e_matma_10maj_fl__003__b', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 3, 'b', 'Két európai nagyváros között egy repülőket üzemeltető társaság járatokat közlekedtet.
Ezek a járatok legalább 10 utas esetén indulnak, és a gépek legfeljebb 36 utas
szállítására alkalmasak. A társaság javítani szeretné a járatok kihasználtságát.
Többek között mérlegelik a következő szabály szerinti üzemeltetést: 20 vagy annál
kevesebb utas esetén fejenként 16 000 Ft-ért indítanak gépet. 20 fő feletti létszám esetén
az összes utas számára annyiszor 400 Ft-tal csökken a 16 000 forintos viteldíj,
amennyivel a létszám meghaladja a húszat.

b)
Hány utas esetén lesz a repülőtársaság bevétele egy járaton a legnagyobb, és
mekkora ez a maximális bevétel?

a)
b)
Ö.:', 13, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_003.png', ARRAY['fuggvenyek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2ffbac65-0628-416b-9fc5-67011689ad4a', NOW(), 'e_matma_10maj_fl__004__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 4, 'a', 'Felmérések szerint az internetes kapcsolattal rendelkezők 17%-a vásárol az interneten,
33%-a tölt le szoftvert az internetről. A statisztika szerint az internetezők 14%-a
mindkét szolgáltatást igénybe veszi. Mennyi a valószínűsége az alábbi eseményeknek?
a)
Egy véletlenszerűen kiválasztott internetes kapcsolattal rendelkező személy nem
vásárol az interneten.', 14, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_004.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7e1bab95-888b-489d-8807-ba5659262b1e', NOW(), 'e_matma_10maj_fl__004__b', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 4, 'b', 'Felmérések szerint az internetes kapcsolattal rendelkezők 17%-a vásárol az interneten,
33%-a tölt le szoftvert az internetről. A statisztika szerint az internetezők 14%-a
mindkét szolgáltatást igénybe veszi. Mennyi a valószínűsége az alábbi eseményeknek?

b)
Egy véletlenszerűen kiválasztott internetes kapcsolattal rendelkező személy
vásárol az interneten, vagy szoftvert tölt le. (Megengedve, hogy esetleg mindkét
szolgáltatást igénybe veszi.)', 14, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_004.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('73364643-facb-46e5-8ce8-84bf7a261c6b', NOW(), 'e_matma_10maj_fl__004__c', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 4, 'c', 'Felmérések szerint az internetes kapcsolattal rendelkezők 17%-a vásárol az interneten,
33%-a tölt le szoftvert az internetről. A statisztika szerint az internetezők 14%-a
mindkét szolgáltatást igénybe veszi. Mennyi a valószínűsége az alábbi eseményeknek?

c)
Egy véletlenszerűen kiválasztott internetes kapcsolattal rendelkező személy nem
vásárol az interneten és szoftvert sem tölt le az internetről.', 14, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_004.png', ARRAY['valoszinuseg','halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1175278b-6700-4cb2-bbd4-669b3bd5626b', NOW(), 'e_matma_10maj_fl__004__d', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'I', 4, 'd', 'Felmérések szerint az internetes kapcsolattal rendelkezők 17%-a vásárol az interneten,
33%-a tölt le szoftvert az internetről. A statisztika szerint az internetezők 14%-a
mindkét szolgáltatást igénybe veszi. Mennyi a valószínűsége az alábbi eseményeknek?

d)
Három véletlenszerűen kiválasztott internetes kapcsolattal rendelkező személy
közül egyik sem vásárol az interneten. (A kiválasztást visszatevéses módszerrel
végzik el.)

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_004.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fcd112bd-e74e-4794-b632-020e45e4f67d', NOW(), 'e_matma_10maj_fl__005__', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 5, NULL, 'Egy iskola tanulóinak tanév végi létszáma az egyik tanévben 400-nál több volt, de nem
érte el a 430-at. A tanév végén kiszámították, hogy a fiúk tanulmányi eredményének
átlaga 4,01, a lányoké 4,21, míg az iskola összes tanulójáé 4,12. (Ezen három átlag
mindegyike pontos érték.) Hányan jártak az iskolába az adott tanév végén?

Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_005.png', ARRAY['egyenletek','szovegfeladas','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ff850ffc-8a32-454a-8326-f91bb864dc12', NOW(), 'e_matma_10maj_fl__006__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 6, 'a', 'Vízszintes terepen egy 6 méter mély, lefelé keskenyedő, négyszöglapok által határolt
gödröt ástak. A gödör alja is vízszintes. A gödör nyílása egy 8 × 8 m-es négyzet, két
szemközti lapja függőleges, a másik kettő pedig 75°, illetve 60°-os szöget zár be a
földfelszín síkjával. (E két szemközti „ferde” lap síkjai 45°-os szöget zárnak be
egymással.)
a)
Rajzolja le a gödör azon síkmetszetét, amely merőleges a ferde lapokra (és így a
földfelszínre is)! A rajzon tüntesse fel az adatokat!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_006.png', ARRAY['geometria-ter','geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('17facfda-26d9-4705-ad28-1be6d0c39295', NOW(), 'e_matma_10maj_fl__006__b', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 6, 'b', 'Vízszintes terepen egy 6 méter mély, lefelé keskenyedő, négyszöglapok által határolt
gödröt ástak. A gödör alja is vízszintes. A gödör nyílása egy 8 × 8 m-es négyzet, két
szemközti lapja függőleges, a másik kettő pedig 75°, illetve 60°-os szöget zár be a
földfelszín síkjával. (E két szemközti „ferde” lap síkjai 45°-os szöget zárnak be
egymással.)

m  földet kellett kiásni a gödör elkészítéséhez? Az eredményt m3
3
b)
Hány
pontossággal adja meg!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_006.png', ARRAY['geometria-ter','trigonometria','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('af41f053-58b9-47b0-bcbe-b715a78f68ee', NOW(), 'e_matma_10maj_fl__007__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 7, 'a', 'A 12.A osztály öt belépőjegyet kapott a vízilabda bajnokság döntőjére. Az osztály mind
a harminc tanulója szívesen menne, bár közülük 12 tanulónak akkor különórája lenne. A
választást a véletlenre bízzák: felírják a 30 nevet egy-egy cédulára, és ötöt kihúznak
közülük.
a)
Mennyi a valószínűsége annak, hogy a kisorsolt tanulók közül pontosan 2 olyan
lesz, akinek különórája lenne? Az eredményt tizedestört alakban adja meg!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_007.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b8010140-8ccc-4c52-911d-efc895b747e1', NOW(), 'e_matma_10maj_fl__007__b', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 7, 'b', 'A 12.A osztály öt belépőjegyet kapott a vízilabda bajnokság döntőjére. Az osztály mind
a harminc tanulója szívesen menne, bár közülük 12 tanulónak akkor különórája lenne. A
választást a véletlenre bízzák: felírják a 30 nevet egy-egy cédulára, és ötöt kihúznak
közülük.

b)
Tudjuk, hogy a kiválasztott öt tanuló között biztosan van olyan, akinek van
különórája. Mennyi ekkor a valószínűsége annak, hogy pontosan két kisorsolt
tanulónak van különórája?
A döntő után az öt tanuló a következőképpen számolt be a mérkőzésről:
A:
A vesztes csapat 4-nél több gólt dobott.
B:
A győztes csapat 3-mal többször talált a kapuba, mint a vesztes.
C:
Összesen 10-nél több, de 28-nál kevesebb gól született a mérkőzésen.
D:
A két csapat együttesen dobott góljainak a száma prímszám.
E:
A vesztes csapat is prímszámú gólt dobott.', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_007.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2e34ddee-6fce-4939-8c35-60d874dafc80', NOW(), 'e_matma_10maj_fl__007__c', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 7, 'c', 'A 12.A osztály öt belépőjegyet kapott a vízilabda bajnokság döntőjére. Az osztály mind
a harminc tanulója szívesen menne, bár közülük 12 tanulónak akkor különórája lenne. A
választást a véletlenre bízzák: felírják a 30 nevet egy-egy cédulára, és ötöt kihúznak
közülük.

c)
Tudjuk, hogy mind az öt tanuló igazat mondott. Megállapítható-e ezek alapján
egyértelműen, hogy mi lett a döntő végeredménye?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_007.png', ARRAY['logika','szamelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('152396a4-c709-45b9-a053-2909678bf33d', NOW(), 'e_matma_10maj_fl__008__', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 8, NULL, 'Az { }
, { }
és { }
a
nb
nc
egész számokból álló mértani sorozatok. Az egyes sorozatok
n
hányadosai és bizonyos tagjai között a következő összefüggések érvényesek:
1a ,
1b  és
1c  ebben a sorrendben egy olyan mértani sorozat egymást követő tagjai,
(1)
amelynek 2 a hányadosa (kvóciense);
(2) az { }
, { }
és { }
a
nb
nc
sorozatok hányadosai ebben a sorrendben egy olyan számtani
n
sorozat szomszédos tagjai, amelynek 1 a különbsége (differenciája);
=
+
+
(3)
;
24
c
b
a
2
2
2
=
+
+
(4)
84
c
c
c
.
3
2
1
Adja meg mindhárom eredeti mértani sorozat első három tagját!

Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_008.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('537a2c94-377d-4ede-beed-ba4f5ce35af1', NOW(), 'e_matma_10maj_fl__009__a', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 9, 'a', '−
−
=
2
Jelölje az
12
4
x
x
y
egyenletű parabola tengelypontját C, az x tengellyel alkotott
metszéspontjait pedig A és B.
a)
Számítsa ki az ABC háromszög beírt körének sugarát!', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_009.png', ARRAY['koordinata-geometria','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e47b58cc-a447-48cd-bc74-6fd2037d12d8', NOW(), 'e_matma_10maj_fl__009__b', 'e_matma_10maj_fl', 'e_matma_10maj_fl.pdf', 2010, 'emelt', 'majus', true, 'II', 9, 'b', '−
−
=
2
Jelölje az
12
4
x
x
y
egyenletű parabola tengelypontját C, az x tengellyel alkotott
metszéspontjait pedig A és B.
b)
Az ABC háromszög területe hányad része a parabola és az x tengely által
közrefogott zárt síkidom területének?

a)
b)
Ö.:', 16, '/images/e_matma_10maj_fl/crops/e_matma_10maj_fl_prob_009.png', ARRAY['integralszamitas','geometria-sik','fuggvenyek']::text[], false, false, '', true);

-- e_matma_11maj_fl (14 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('89a83b79-54ec-4c08-a3cf-e0612a7dea5a', NOW(), 'e_matma_11maj_fl__001__a', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'I', 1, 'a', '[
]
( )
+
−
−
=
→
−
2
3
2
,
5 ;2
:
x
x
x
f
R
f
Adott az
függvény.
a)
Jellemezze a függvényt a következő szempontok szerint: növekedés, fogyás,
szélsőérték (helye és értéke)!', 14, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_001.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ba0f4771-95c7-4c06-8409-e11829c8cb9b', NOW(), 'e_matma_11maj_fl__001__b', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'I', 1, 'b', '[
]
( )
+
−
−
=
→
−
2
3
2
,
5 ;2
:
x
x
x
f
R
f
Adott az
függvény.

A [
]
−
5 ;2
b)
intervallum mely legbővebb részhalmazán értelmezhető a
1
( )
=
kifejezés?
x
g
(
)
−
−
+
2
5
lg
3
2
lg
x
x

a)
b)
Ö.:', 14, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_001.png', ARRAY['fuggvenyek','exponencialis','egyenletek','halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b6cf5e2b-db7b-4fb9-b61b-e7d51279135b', NOW(), 'e_matma_11maj_fl__002__a', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'I', 2, 'a', 'Egy egyetem mesterképzőjére jelentkező 29 hallgatónak nyilatkoznia kellett arról, van-e
angol, német vagy francia nyelvvizsgájuk. Mindenki válaszolt – igennel vagy nemmel –
mind a három kérdésre.
A jelentkezők közül angol nyelvvizsgája 22, német 18, francia 18 hallgatónak van.
12 hallgatónak német és francia nyelvvizsgája is van, de közülük 3 főnek nincs angol
nyelvvizsgája. Az angol nyelvvizsgával rendelkezők közül 7-nek nincs német és 8-nak
nincs francia nyelvvizsgája.
a)
Hány jelentkező válaszolt mindhárom kérdésre igennel?
b)
Hány jelentkező válaszolt mindhárom kérdésre nemmel?

a)
b)
Ö.:', 12, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_002.png', ARRAY['halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f30f67eb-1db4-40ba-b8f3-bf01d8c4d2c7', NOW(), 'e_matma_11maj_fl__003__', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'I', 3, NULL, 'Egy zöldség-gyümölcs kiskereskedő a nagybani piacon hétfőn 165 kg sárgabarackot,
kedden 165 kg őszibarackot vásárolt. Egy rekesznyi őszibarack 2 kg-mal kisebb
tömegű, mint egy rekesznyi sárgabarack, ezért 8 rekesszel több volt az őszibarack, mint
a sárga.
Hány kilogramm sárgabarack volt egy-egy rekeszben, és hány rekesszel vásárolt ebből
hétfőn a kiskereskedő? (Hétfőn minden rekeszben ugyanannyi kg sárgabarack, kedden
minden rekeszben ugyanannyi kg őszibarack volt.)

Ö.:', 12, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_003.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('05f8ed52-47d5-45da-b9d2-29bf2bfcfc3a', NOW(), 'e_matma_11maj_fl__004__a', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'I', 4, 'a', 'Egy ABCDE négyoldalú szabályos gúla alaplapja az ABCD négyzet. A gúlát elmetsszük
az EAC síkkal. A síkmetszet területe 64 cm2. Ha a gúlát az E csúcsától mért 4 cm
távolságban, az alaplappal párhuzamos síkkal metsszük el, akkor 32 cm2 területű
síkmetszetet kapunk.
a)
Mekkora a gúla magassága, és mekkora az alaplapjának területe?', 13, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_004.png', ARRAY['geometria-ter','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d1819e38-5d08-4753-a564-c47f35be554e', NOW(), 'e_matma_11maj_fl__004__b', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'I', 4, 'b', 'Egy ABCDE négyoldalú szabályos gúla alaplapja az ABCD négyzet. A gúlát elmetsszük
az EAC síkkal. A síkmetszet területe 64 cm2. Ha a gúlát az E csúcsától mért 4 cm
távolságban, az alaplappal párhuzamos síkkal metsszük el, akkor 32 cm2 területű
síkmetszetet kapunk.

b)
Számítsa ki a gúla alaplapjának és oldallapjának hajlásszögét!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 13, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_004.png', ARRAY['geometria-ter','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('52287bc3-49c6-456f-a81e-9cc4a64a5835', NOW(), 'e_matma_11maj_fl__005__', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 5, NULL, 'Vizsgáljuk azt a sorozatot, amelynek n-edik tagja adott α ∈R esetén:
+
= n
( α
n
sin
an
).
π
α =
a)
Legyen
. Írja fel a sorozat első három tagjának pontos értékét!
3
[
]
π
α
∈
2 ;0
b)
Milyen
esetén lesznek az a1, a2, a3 számok – ebben a sorrendben –
egy konstans sorozattól különböző számtani sorozat szomszédos tagjai?
A megoldásában használhatja az alábbi azonosságokat is:
β
α
β
α
−
+
⋅
=
+
β
α
;
cos
sin
2
sin
sin
2
2
α
α
α
−
=
3
sin
4
sin
3
3
sin
.
a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_005.png', ARRAY['sorozatok','trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('66d4af7e-ce39-457d-adb5-05208646ccf0', NOW(), 'e_matma_11maj_fl__006__a', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 6, 'a', 'Egy urnában egy fehér, egy piros és egy kék golyó található. Egymás után ötször
húzunk az urnából egy-egy golyót úgy, hogy a kihúzott golyót minden húzás után
visszatesszük.
a)
Mekkora a valószínűsége, hogy az öt húzás során kihúzott kék és piros golyók
száma megegyezik?', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_006.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4cc988be-c8de-4d75-9fe1-5a8f18acf3f0', NOW(), 'e_matma_11maj_fl__006__b', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 6, 'b', 'Egy urnában egy fehér, egy piros és egy kék golyó található. Egymás után ötször
húzunk az urnából egy-egy golyót úgy, hogy a kihúzott golyót minden húzás után
visszatesszük.

b)
Mekkora a valószínűsége, hogy az öt húzás során több kék golyót húzunk, mint
pirosat?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_006.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b5684331-37b6-419e-80e8-06b1692c6c96', NOW(), 'e_matma_11maj_fl__007__a', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 7, 'a', 'Egy újfajta, enyhe lefolyású fertőző betegségben a nagyvárosok lakosságának 5%-a
betegszik meg. A betegek 45%-a rendszeres dohányos, a betegségben nem
szenvedőknek pedig csak 20%-a dohányzik rendszeresen.
a)
Mekkora annak a valószínűsége, hogy egy nagyváros száz véletlenszerűen
kiválasztott lakosa között legalább két olyan ember van, aki az újfajta betegséget
megkapta?
(Válaszát két tizedes jegyre kerekítve adja meg!)', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_007.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('10e4c479-a256-4bc6-a580-99f5d6f9d7d9', NOW(), 'e_matma_11maj_fl__007__b', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 7, 'b', 'Egy újfajta, enyhe lefolyású fertőző betegségben a nagyvárosok lakosságának 5%-a
betegszik meg. A betegek 45%-a rendszeres dohányos, a betegségben nem
szenvedőknek pedig csak 20%-a dohányzik rendszeresen.

b)
Számítsa ki, hogy a rendszeres dohányosoknak és a nem dohányosoknak hány
százaléka szenved az új betegségben!
(Válaszát egy tizedes jegyre kerekítve adja meg!)

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_007.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ca3d90a8-8801-48e8-bafd-200fbfb54860', NOW(), 'e_matma_11maj_fl__008__a', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 8, 'a', 'Pali és Zoli közösen egy 60 m × 30 m-es, téglalap alakú telket vásárolt. A telket egymás
között két olyan egybevágó derékszögű trapézra osztották fel, amelynek a rövidebb
alapja 20 m. Jelölje EF a közös határvonalszakaszt!
a)
Számítsa ki a közös EF határvonal hosszát!
(Az eredményt méterben, egy tizedes jegyre kerekítve adja meg!)
A közös határvonalon Palinak kellett volna kerítést építtetni, de nem volt erre a célra
pénze. Ezért Zolinak a következő ajánlatot tette: átad neki a telkéből egy háromszög
alakú részt, ha Zoli csináltatja meg a telküket elválasztó kerítést. Zoli szerette volna
telkének 20 m-es határát maximum 8 méterrel megnövelni, így elfogadta az ajánlatot, és
az új közös határvonalnak az EG szakaszt jelölte meg. A telek négyzetméterének ára
30 000 Ft, a kerítés megépíttetésének költsége 15 000 Ft/m. Az egyéb felmerülő
költségeket egyenlő arányban osztották meg.', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_008.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2397e3c7-fda5-4cf5-9b20-6f67d71a67b7', NOW(), 'e_matma_11maj_fl__008__b', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 8, 'b', 'Pali és Zoli közösen egy 60 m × 30 m-es, téglalap alakú telket vásárolt. A telket egymás
között két olyan egybevágó derékszögű trapézra osztották fel, amelynek a rövidebb
alapja 20 m. Jelölje EF a közös határvonalszakaszt!

b)
Legalább hány m hosszú legyen a FG szakasz, hogy Zoli járjon jobban?
(Az eredményt egy tizedesre kerekítve adja meg!)

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_008.png', ARRAY['geometria-sik','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('74f4cda1-3b1d-46ce-bdf2-947fa568f149', NOW(), 'e_matma_11maj_fl__009__', 'e_matma_11maj_fl', 'e_matma_11maj_fl.pdf', 2011, 'emelt', 'majus', true, 'II', 9, NULL, 'Egy játéküzemben fa elemekből álló építőkészletet gyártanak. Ha x darab készletet
5,1
x
gyártanak naponta, akkor a teljes gyártási költség ( )
+
+
=
euró. Egy
300
12
x
x
k
5
készletet 18 euróért tudnak értékesíteni.
a)
Naponta hány készletet gyártson az üzem, hogy a haszon a lehető legnagyobb
legyen? Mennyi ez a maximális haszon?
b)
Az építőkészlet egyik darabját úgy készítik, hogy egy 3 cm élhosszúságú
kockának mind a nyolc „csúcsát” levágják egy-egy sík mentén úgy, hogy a
fűrész a csúcsba futó mindhárom élt a csúcstól 1 cm távolságban vágja el. Az így
kapott test térfogata hány százaléka az eredeti kocka térfogatának?
A választ egész számra kerekítve adja meg!
(A fűrészeléskor keletkező anyagveszteség elhanyagolható, számításaiban nem
kell figyelembe vennie!)

a)
b)
Ö.:', 16, '/images/e_matma_11maj_fl/crops/e_matma_11maj_fl_prob_009.png', ARRAY['differencialszamitas','fuggvenyek','geometria-ter','szovegfeladas']::text[], false, false, '', true);

-- e_matma_12maj_fl (15 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('408817dc-c537-4580-966e-301c50e89b56', NOW(), 'e_matma_12maj_fl__001__a', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 1, 'a', 'Egy háromszög a, b és c oldalairól tudjuk, hogy:
=
;
b
c
2
=
+ b
2
2
4
a
;
=
−b
2
2
2
a
.
Mekkorák a háromszög oldalai?
a)', 13, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_001.png', ARRAY['egyenletek','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1c8a57c5-677f-45ce-bfd0-6ba2a0266bbd', NOW(), 'e_matma_12maj_fl__001__b', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 1, 'b', 'Egy háromszög a, b és c oldalairól tudjuk, hogy:
=
;
b
c
2
=
+ b
2
2
4
a
;
=
−b
2
2
2
a
.

b)
Mekkorák a háromszög szögei?', 13, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_001.png', ARRAY['geometria-sik','trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7db42cc2-e278-4b78-b873-962fc922bc1d', NOW(), 'e_matma_12maj_fl__001__c', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 1, 'c', 'Egy háromszög a, b és c oldalairól tudjuk, hogy:
=
;
b
c
2
=
+ b
2
2
4
a
;
=
−b
2
2
2
a
.

c)
Mekkora a beírt körének sugara?
Az eredmények pontos értékét adja meg!

a)
b)
c)
Ö.:', 13, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_001.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6cd38124-07b5-4354-ba49-beb74b756c57', NOW(), 'e_matma_12maj_fl__002__a', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 2, 'a', 'a)
Egy szabályos dobókockával kétszer dobunk, és a kapott számokat a dobás
hatjegyű számban az a és a b helyére. Mennyi
sorrendjében beírjuk a
b
a567
8
annak a valószínűsége, hogy az így kapott hatjegyű szám minden számjegye
különböző?', 12, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_002.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4e79d18f-86b2-4e79-8bf1-ad262e58cd1a', NOW(), 'e_matma_12maj_fl__002__b', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 2, 'b', 'Megadunk négy halmazt:
b)
Az A halmaz elemei a héttel osztható pozitív kétjegyű számok.
A B halmaz elemei a 29 kétjegyű pozitív többszörösei.
A C halmaz elemei mindazok a pozitív kétjegyű számok, amelyeknél a 11-gyel
nagyobb szám négyzetszám.
A D halmaz elemei mindazok a pozitív kétjegyű számok, amelyeknél a 13-mal
kisebb szám négyzetszám.
A ∪
C
b1)   Hány elemű az
halmaz?
B ∩
D
b2)   Hány elemű a
halmaz?
b3)    Melyek azok a kétjegyű pozitív egészek, amelyek a fenti négy halmaz
közül pontosan kettőnek az elemei?

a)
b)
Ö.:', 12, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_002.png', ARRAY['halmazok','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f864416e-755c-4cfe-8e57-26a50477664f', NOW(), 'e_matma_12maj_fl__003__', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 3, NULL, 'Egy kerek dobozban piros, egy másik, ugyanilyen dobozban pedig kék címkéjű
csomagolt sajtok vannak. A 6-6 egyforma méretű, egymástól nem megkülönböztethető
sajt szelet teljesen kitölti az egyes dobozokat. A dobozok tartalmát kiöntjük az asztalra.
Hány különböző elrendezésben tehetünk vissza ebből a 12 darab sajtból 6 darabot
az egyik dobozba címkéjükkel felfelé? (Két elrendezést különbözőnek tekintünk, ha
azok forgatással nem vihetők egymásba.)

Ö.:', 12, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_003.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5ec7c457-f37f-4a77-8531-97c617c72d99', NOW(), 'e_matma_12maj_fl__004__', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'I', 4, NULL, '1
1
1
1
+
∈N
⋅
⋅
⋅
⋅
=
n
a
,
sorozat.
a)
Adott az
K
n
−
1
2
5
3
n
7
7
7
7
49−
>
50
Melyik az a legnagyobb n természetes szám, amelyre
a
?
n
1
1
1
1
+
+
+
+
+
=
∈N
b)
Adott a
nb
,
n
sorozat.
K
−
1
2
5
3
n
7
7
7
7
b
lim
határértéket!
Számítsa ki a
n
∞
→
n

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_004.png', ARRAY['sorozatok','egyenletek','hatarertek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('709221c0-6a24-4d92-ae6c-92c68f7d4490', NOW(), 'e_matma_12maj_fl__005__a', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 5, 'a', 'a)
A derékszögű koordináta-rendszerben adott egy téglalap, amelynek csúcsai:
(
)
(
),
(
)
(
)
,
és
. Véletlenszerűen kiválasztjuk a
0
;
0
A
0
;
4
B
1
;
4
C
1
;
0
D
téglalap egy belső P ( x ;  y ) pontját.
1
1
+
≤
x
y
?
Mennyi annak a valószínűsége, hogy
2
3

b)
Marci a farsangi rendezvényre kibocsátott 200 darab tombolajegyből 4-et
vásárolt. A tombolán 10 nyereménytárgyat sorsolnak ki. Minden tombolajeggyel
legfeljebb egy tárgyat lehet nyerni.
b1) Mennyi annak a valószínűsége, hogy Marci pontosan egy tárgyat nyer a
tombolán?
b2) Mennyi annak a valószínűsége, hogy Marci nyer a tombolán?
Az eredményeket – a közbülsőket is – négy tizedesjegyre kerekítve számolja ki!

a)
b1)
b2)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_005.png', ARRAY['valoszinuseg','koordinata-geometria','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('263880cd-5882-4758-a263-32f118edd296', NOW(), 'e_matma_12maj_fl__006__a', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 6, 'a', '( )
+
+
=
→
2
Az
c
bx
ax
x
f
f
,
:
másodfokú függvény grafikonjának tengelypontja
R
R
a (
)
(
)
pont, és a
pont is illeszkedik a grafikonra.
2 ;
4
T
0 ;
2
P
a)
Számítsa ki az a, b, c együtthatók értékét!', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_006.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7380be63-d60c-436d-88f9-16da824ec9e7', NOW(), 'e_matma_12maj_fl__006__b', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 6, 'b', '( )
+
+
=
→
2
Az
c
bx
ax
x
f
f
,
:
másodfokú függvény grafikonjának tengelypontja
R
R
a (
)
(
)
pont, és a
pont is illeszkedik a grafikonra.
2 ;
4
T
0 ;
2
P
b)
Írja fel a grafikon 3 abszcisszájú pontjába húzható érintő egyenletét!', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_006.png', ARRAY['fuggvenyek','differencialszamitas','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f2586b84-7a7c-455e-8159-d11b5eade313', NOW(), 'e_matma_12maj_fl__006__c', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 6, 'c', '( )
+
+
=
→
2
Az
c
bx
ax
x
f
f
,
:
másodfokú függvény grafikonjának tengelypontja
R
R
a (
)
(
)
pont, és a
pont is illeszkedik a grafikonra.
2 ;
4
T
0 ;
2
P

c)
Számítsa ki az  f grafikonja és az x tengely által határolt tartomány területet!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_006.png', ARRAY['integralszamitas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fd83dfed-962c-4ca0-877c-ccbfd009d00f', NOW(), 'e_matma_12maj_fl__007__', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 7, NULL, 'Oldja meg a következő egyenletet a valós számok halmazán:
x
log
⎞
⎛
x
log
x
log
3
⎞
⎛
⎟⎟
⎜⎜
2
3
⎟⎠
⎜⎝
3
−
=
⋅
x
6075
3
6
.
⎠
⎝

Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_007.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b39de091-486a-4e61-9017-751945eb3ec5', NOW(), 'e_matma_12maj_fl__008__', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 8, NULL, 'Egy cég három városban nyitott fiókot. A kőszegi fiókban dolgozók átlagéletkora 37 év,
a tatai fiókban dolgozóké 23 év, a füredi fiókban dolgozóké pedig 41 év.
Három alkalommal szerveztek tanulmányutat a cégnél. Ezeken az utakon csak a cégnél
dolgozók vettek részt, és mindenki elment azokra a tanulmányi utakra, amelyekre
beosztották. Az egyes utakra a két-két kijelölt fiók minden munkatársát beosztották.
Az első utat a kőszegi és a tatai fiók munkatársainak szervezték. Ezen az úton a résztve-
vők átlagéletkora 29 év volt. A második úton – amelyen a kőszegi és a füredi fiókban
dolgozók vettek részt – a résztvevők átlagéletkora 39,5 év volt. A harmadik tanulmány-
úton a tatai és a füredi fiók munkatársai vettek részt. Ezen az úton a résztvevők átlag-
életkora 33 év volt.
Mennyi az átlagéletkora a cég összes dolgozójának?

Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_008.png', ARRAY['egyenletek','statisztika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8bbd71a0-8ad6-4eba-a454-d7758bc15cba', NOW(), 'e_matma_12maj_fl__009__a', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 9, 'a', 'Egy képzőművészeti galéria új kiállítótermet nyitott gyermekek számára. A terem alakja
egy négyzet alapú egyenes gúla, melynek belső méretei: az alapél 12 méter, az oldalél
10 méter.
Az egyik kiállító művész azt kérte, hogy a kiállítás kivitelezője ragasszon az oldal-
falakra körbe az alapélekkel párhuzamos keskeny színes csíkot (vonalat), amelyre majd
a kiírásokat elhelyezik. A színes vonalak vízszintes, képzeletbeli síkja éppen felezte
a kiállítótér térfogatát.
a)
Mekkora a színes vonalak összes hossza? Milyen magasan helyezkedik el
a padló síkja felett a képzeletbeli felezősík?
A kiállítás megnyitására a hangmérnök úgy helyezte el a terem legmagasabb pontjáról
belógatott mikrofont, hogy az minden oldalfaltól és a padlótól is azonos távolságra
legyen.', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_009.png', ARRAY['geometria-ter','szovegfeladas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('aeeeb6ab-dabd-4f95-a26f-4bc6dbfd5a9e', NOW(), 'e_matma_12maj_fl__009__b', 'e_matma_12maj_fl', 'e_matma_12maj_fl.pdf', 2012, 'emelt', 'majus', true, 'II', 9, 'b', 'Egy képzőművészeti galéria új kiállítótermet nyitott gyermekek számára. A terem alakja
egy négyzet alapú egyenes gúla, melynek belső méretei: az alapél 12 méter, az oldalél
10 méter.
Az egyik kiállító művész azt kérte, hogy a kiállítás kivitelezője ragasszon az oldal-
falakra körbe az alapélekkel párhuzamos keskeny színes csíkot (vonalat), amelyre majd
a kiírásokat elhelyezik. A színes vonalak vízszintes, képzeletbeli síkja éppen felezte
a kiállítótér térfogatát.

b)
Milyen hosszú volt a belógató vezeték, ha a mikrofon és a rögzítés méretétől
eltekintünk?
(Válaszait cm pontossággal adja meg!)

a)
b)
Ö.:', 16, '/images/e_matma_12maj_fl/crops/e_matma_12maj_fl_prob_009.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);

-- e_matma_13maj_fl (15 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('470a955a-256d-4cd0-9ea4-e8f8634497e6', NOW(), 'e_matma_13maj_fl__001__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 1, 'a', 'Oldja meg az alábbi egyenlőtlenségeket a valós számok halmazán!
<
−
0
)1
2
(
log
x
a)
1
5
−
−
2
1
2
x
>
1
2
b)

a)
b)
Ö.:
Delta (D)
•

Gamma (G)
•
•
Bázis (B)

Epszilon (E)
•', 10, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1a3a83f7-71f2-48d4-a238-d3f03c2dbfcd', NOW(), 'e_matma_13maj_fl__002__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 2, 'a', 'Egy kőolaj-kitermelő vállalat három tengeri fúrótornyot (Delta, Epszilon, Gamma
nevűt) üzemeltet egy félsziget körül. A félszigeten rendezték be a szárazföldi bázist.
Az alábbi, 1 : 500 000 arányú térkép mutatja a fúrótornyok és a bázis elhelyezkedését.
A térképen a bázishoz képest minden fúrótorony pontosan 3,5 cm távolságra helyezke-
°
=
∠54
GED
°
=
∠
dik el, valamint
, és
.
142
EBD

A térkép adatai alapján hány kilométerre vannak a fúrótornyok a bázistól?
a)
Egy helikopter minden hétfőn a Bázis–Epszilon–Gamma–Delta–Bázis útvonalon
szállítja a heti élelmet, valamint minden csütörtökön ugyanez a helikopter a Bázis–
Gamma–Epszilon–Delta–Bázis útvonalon utánpótlást is szállít.', 14, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_002.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('84ba5120-e047-476c-86da-e2a783c5678f', NOW(), 'e_matma_13maj_fl__002__b', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 2, 'b', 'Egy kőolaj-kitermelő vállalat három tengeri fúrótornyot (Delta, Epszilon, Gamma
nevűt) üzemeltet egy félsziget körül. A félszigeten rendezték be a szárazföldi bázist.
Az alábbi, 1 : 500 000 arányú térkép mutatja a fúrótornyok és a bázis elhelyezkedését.
A térképen a bázishoz képest minden fúrótorony pontosan 3,5 cm távolságra helyezke-
°
=
∠54
GED
°
=
∠
dik el, valamint
, és
.
142
EBD

b)
Számítsa ki, hány kilométert repül a helikopter hétfőn, illetve hány kilométert
repül csütörtökön, ha mindkétszer légvonalban (a legrövidebb úton) közlekedik?
Válaszát egész értékre kerekítve adja meg!
(A helikopter mozgásának csak a vízszintes összetevőjét vegyük figyelembe
a számítás során.)

a)
b)
Ö.:', 14, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_002.png', ARRAY['geometria-sik','trigonometria','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('61baa315-f937-402c-a7fe-34940f165f5c', NOW(), 'e_matma_13maj_fl__003__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 3, 'a', 'Hány olyan szám van, amely a hármas számrendszerben háromjegyű
a)
és               alakú? (a és b nem feltétlenül jelölnek különböző számjegyeket)
abb
Írja fel ezeket a számokat a hármas és a tízes számrendszerben!
Ezek között hány olyan van, amelynek a tízes számrendszerbeli alakja kétjegyű
páros szám?

b)
Hány olyan, legalább kételemű részhalmaza van a {2; 3; 4; 5; 6} halmaznak,
amelyben az elemek szorzata osztható 3-mal?

a)
b)
Ö.:', 13, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_003.png', ARRAY['szamrendszerek','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f7a04140-e877-4fc6-bb3c-57a0370cc72e', NOW(), 'e_matma_13maj_fl__004__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 4, 'a', 'Az ábrán látható téglatest  A  csúcsából induló három élének hossza: AB=20 cm;
AD=16 cm;  AE=12 cm.

Legyen P az AB él felezőpontja, Q pedig az EH él felezőpontja. Számítsa ki
a)
a PQ távolságot!
Kiválasztunk a téglatest élegyenesei közül minden lehetséges módon kettőt.', 14, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_004.png', ARRAY['geometria-ter','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8f4f4137-3d41-462f-8b55-5e080d7315f2', NOW(), 'e_matma_13maj_fl__004__b', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 4, 'b', 'Az ábrán látható téglatest  A  csúcsából induló három élének hossza: AB=20 cm;
AD=16 cm;  AE=12 cm.

b)
Hány különböző egyenespár választható? (Két egyenespár akkor különböző, ha
legalább az egyik egyenesükben különböznek.)', 14, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_004.png', ARRAY['kombinatorika','geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8a639727-23bc-41a7-80f6-a21d1ed98949', NOW(), 'e_matma_13maj_fl__004__c', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 4, 'c', 'Az ábrán látható téglatest  A  csúcsából induló három élének hossza: AB=20 cm;
AD=16 cm;  AE=12 cm.

c)
Ezek között hány metsző, hány párhuzamos és hány kitérő egyenespár van?', 14, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_004.png', ARRAY['geometria-ter','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9df2f440-dc19-4df7-a23e-eb18e2e50e57', NOW(), 'e_matma_13maj_fl__004__d', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'I', 4, 'd', 'Az ábrán látható téglatest  A  csúcsából induló három élének hossza: AB=20 cm;
AD=16 cm;  AE=12 cm.
G
F
H
E
C
B
12 cm
D
20 cm
16 cm
A

d)
Az AE élegyenestől milyen távolságra vannak a hozzá képest kitérő
élegyenesek?

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_004.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('564fb836-286f-4c77-8b35-bb019ff33598', NOW(), 'e_matma_13maj_fl__005__', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 5, NULL, '1 .
Egy mértani sorozat első tagja 32, a hányadosa pedig 128
a)
Igazolja, hogy akármennyi egymást követő tagját adjuk össze a sorozatnak
az első taggal kezdve, az összeg nem haladhatja meg a 32,5 értéket!

1  az első tagja, a hányadosa
Az {
}
a
b)
olyan mértani sorozat, amelynek 128
n
pedig 32.
=
⋅
⋅
⋅
⋅
n
3
Milyen pozitív n egész számra teljesül az
na
a
a
a
2048
...
3
2
1
egyenlőség?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_005.png', ARRAY['sorozatok','egyenletek','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8199a721-2c05-4438-9296-d56d83f40213', NOW(), 'e_matma_13maj_fl__006__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 6, 'a', '+
+
=
−
−
=
2
2
1
px
x
y
p
x
x
y
A p valós paraméter olyan, hogy az
és az
egyenletű
parabolák különbözők és van közös pontjuk az x tengelyen.
Számítsa ki a p értékét, és a kapott értékkel írja fel a parabolák egyenletét!
a)
2 +
=
−
−
=
2
x
x
y
2
3
x
x
y
Rajzolja meg közös koordináta-rendszerben az
, és az
egyenletű parabolákat!', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_006.png', ARRAY['egyenletek','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('22ed7267-6181-47f7-9e06-b035e8b2ef47', NOW(), 'e_matma_13maj_fl__006__b', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 6, 'b', '+
+
=
−
−
=
2
2
1
px
x
y
p
x
x
y
A p valós paraméter olyan, hogy az
és az
egyenletű
parabolák különbözők és van közös pontjuk az x tengelyen.

b)
Számítsa ki e két parabola és az y tengely által határolt síkidom területét!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_006.png', ARRAY['integralszamitas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bcae99db-fb8b-41a7-b8a8-871fa5f1a7f6', NOW(), 'e_matma_13maj_fl__007__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 7, 'a', 'Egy mobiltelefon-szolgáltató társaság több évi statisztikája azt mutatja, hogy a szabá-
lyosan elküldött SMS-ek (szöveges telefonüzenetek) közül átlagosan minden hatvanadik
nem jut el a címzettjéhez. A következőkben ezen szolgáltató által továbbított SMS-ekről
lesz szó.
Döntse el, hogy az alábbi állítások közül melyik igaz, illetve melyik hamis!
a)
Tegyen a megfelelő mezőbe egy ×-et! ( A válaszokhoz indoklás nem kell.)
Állítás
IGAZ
HAMIS
Ha egy hónap alatt 45 SMS-t küldünk, akkor biztos, hogy
1.
mindegyik megérkezik a címzettjéhez.
Ha minden SMS-t kétszer küldünk el, akkor legalább az
2.
egyik üzenet biztosan megérkezik mindegyik párból.
Lehetséges, hogy a tegnap elküldött 5 SMS-ből csak egy
3.
jutott el a címzetthez.
Ha tíz nap alatt 120 SMS-t küldünk, akkor lehet, hogy
4.
mindegyik megérkezik a címzettjéhez.
Ha két nap alatt 180 SMS-t küldtünk, akkor közülük három
5.
biztosan nem érkezett meg.
A továbbiakban feltételezzük, hogy a sikeresen elküldött SMS-ek száma binomiális
eloszlást követ.
b)
Mekkora a valószínűsége annak, hogy három elküldött SMS-ből pontosan egy
nem érkezik meg?
Ha számításaihoz kerekített értékeket használ, akkor 4 tizedes jegyre kerekített
alakjukkal számoljon!
c)
Legalább hány SMS elküldése esetén mondhatjuk, hogy legalább 98% a
valószínűsége annak, hogy közülük legalább egy nem érkezett meg?
Ha számításaihoz kerekített értékeket használ, akkor 4 tizedes jegyre kerekített
alakjukkal számoljon!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_007.png', ARRAY['logika','valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('02fac16a-a2f8-4586-8902-0d9439addd00', NOW(), 'e_matma_13maj_fl__008__a', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 8, 'a', 'A bádogosüzemben téglalap alakú, 20 cm széles, 2,5 m hosszú vékony bádoglemezek-
ből 2,5 m hosszú ereszcsatorna-elemeket készítenek az ábrán látható lekerekített szélű
keresztmetszettel.

A csatorna folytonos vonallal határolt keresztmetszetének területe 55 cm2.
a)
Mekkora a negyedkörívek sugara (r), és milyen széles a csatorna (l)? Válaszait
centiméterben, egy tizedes jegyre kerekítve adja meg!', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_008.png', ARRAY[]::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('97622e91-6e0e-4159-90e8-cc5880a29575', NOW(), 'e_matma_13maj_fl__008__b', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 8, 'b', 'A bádogosüzemben téglalap alakú, 20 cm széles, 2,5 m hosszú vékony bádoglemezek-
ből 2,5 m hosszú ereszcsatorna-elemeket készítenek az ábrán látható lekerekített szélű
keresztmetszettel.

2,5 m
2,5 m
2,5 m
2,5 m
2,5 m
2,5 m
lekerekített
lekerekített
lekerekített
szélű csatorna-
szélű csatorna-
szélű csatorna-
az eredeti
az eredeti
az eredeti
elem
elem
elem
lemez
lemez
lemez

20 cm
20 cm
20 cm

r
r
r
r
r
r
•
•
•
•
•
•
r
r
r
r
r
r
•
•
•
•
•
•

l
l
l

b)
A tervezők maximális áteresztőképességre törekszenek. Igazolja, hogy ez abban
az esetben valósul meg, ha l = 2r. Számítsa ki, hogy vízszintes helyzetben hány
liter vizet képes befogadni egy csatornaelem, ha ilyen keresztmetszettel készítik
el?
(Válaszát egész literre kerekítve adja meg!)

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_008.png', ARRAY['geometria-sik','differencialszamitas','geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('43fa2096-2c12-42e0-80b8-53ae8a6846d3', NOW(), 'e_matma_13maj_fl__009__', 'e_matma_13maj_fl', 'e_matma_13maj_fl.pdf', 2013, 'emelt', 'majus', true, 'II', 9, NULL, 'András a gimnázium kosárlabdacsapatának legeredményesebb tagja. A tízfordulós
középiskolai bajnokságban a hatodik, hetedik, nyolcadik és kilencedik fordulóban
rendre 23, 14, 11 és 20 pontot dobott. A kilencedik forduló után András pontátlaga
nagyobb volt, mint az első öt forduló utáni pontátlaga. A bajnokság végén kiderült,
hogy a tíz meccs során átlagosan legalább 18 pontot dobott meccsenként.
Legkevesebb hány pontot dobott András a bajnokság tizedik fordulójában?

Ö.:', 16, '/images/e_matma_13maj_fl/crops/e_matma_13maj_fl_prob_009.png', ARRAY['egyenletek','szovegfeladas','statisztika']::text[], false, false, '', true);

-- e_matma_14maj_fl (18 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('caa270b2-7e54-467f-b886-761062a44246', NOW(), 'e_matma_14maj_fl__001__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'I', 1, 'b', 'Oldja meg a valós számok halmazán a következő egyenleteket!
{{formula:e_matma_14maj_fl_p04_000.png}}

6
log
log
x
x
b)
=
+
9
3

a)
b)
Ö.:', 11, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('18060c0e-43e6-4d9a-81ec-63cd75a84a0b', NOW(), 'e_matma_14maj_fl__002__a', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'I', 2, 'a', 'a) Egy 16 pontú teljes gráf összes élét úgy színeztük ki pirossal vagy sárgával, hogy
minden pontból pontosan három piros él induljon ki. A pontok közül véletlensze-
rűen kiválasztunk kettőt.
Mennyi annak a valószínűsége, hogy a kiválasztott két pontot piros él köti össze?', 12, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_002.png', ARRAY['grafelmelet','valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('99d735ac-6675-436f-9ba9-eaec05764250', NOW(), 'e_matma_14maj_fl__002__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'I', 2, 'b', 'b) Egy másik teljes gráfból 45 élt elhagyva egy fagráfot kaptunk.
Hány pontja van ennek a gráfnak?
(A teljes gráf olyan egyszerű gráf, melynek bármely két pontját él köti össze.)

a)
b)
Ö.:', 12, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_002.png', ARRAY['grafelmelet','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0f7f064e-885c-4f9b-8199-7a7a6201fc85', NOW(), 'e_matma_14maj_fl__003__', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'I', 3, NULL, 'A Tetőfedők Egyesülete a veterán tetőfedőknek
egy kicsi, tömör, névre szóló bronzplasztikával
kedveskedik. Az emléktárgy alaplapja egy 4 cm
oldalú négyzet, melynek két szemközti éléhez
egy-egy, az alaplap síkjára merőleges, egymás-
sal egybevágó háromszöglap csatlakozik az
ábra szerint. A háromszöglapok két oldaléle 2 cm és 3 cm hosszú. Az emléktárgyhoz
megrendelt téglatest alakú díszdoboz belső mérete 4,1 cm × 4,1 cm × 1,5 cm, az emlék-
kg .
tárgy készítésére felhasznált bronz sűrűsége pedig 8,2
3
dm
Számítással igazolja, hogy a bronzplasztika belefér a dobozba és tömege nem haladja
meg a 10 dkg-ot!

Ö.:', 14, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_003.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0204ace7-f37c-46f9-aca1-7fc3d51bd8ec', NOW(), 'e_matma_14maj_fl__004__a', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'I', 4, 'a', 'a) Egy hételemű, pozitív egész számokból álló adatsokaság hat eleme: 10; 2; 5; 2; 4; 2.
A hetedik adatot nem ismerjük. Tudjuk viszont, hogy a hét adat átlaga, módusza és
mediánja (nem feltétlenül ebben a sorrendben) egy szigorúan monoton növekvő
számtani sorozat három egymást követő tagja.
Határozza meg a hetedik adat lehetséges értékeit!', 14, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_004.png', ARRAY['statisztika','sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c415c1cc-64e6-4d7d-bf0f-7ccc273a9f1c', NOW(), 'e_matma_14maj_fl__004__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'I', 4, 'b', 'b) A 0, 1, 2, 3, 4, 5 számjegyekből hány olyan négyjegyű páros szám képezhető,
melynek minden számjegye különböző?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_004.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e1a0bad5-356b-4804-9202-9e8dfa38af70', NOW(), 'e_matma_14maj_fl__005__a', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 5, 'a', 'Egy cég egyik részlegében dolgozó férfiak átlagéletkora 44 év, az ott dolgozó nők át-
lagéletkora 40 év, a részleg összes dolgozójáé pedig 41,5 év.
a) Hányszorosa a férfiak száma a nők számának ebben a részlegben?
A cég egy másik részlegében a férfiak és a nők számának aránya 2 : 3. Egy átszervezés
alkalmával innen 7 férfit és 9 nőt áthelyeztek. Így a részlegben maradó férfiak és nők
számának aránya 1: 2-re változott.', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_005.png', ARRAY['egyenletek','szovegfeladas','statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0f086570-11e5-4fc8-b5b8-e40af6368299', NOW(), 'e_matma_14maj_fl__005__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 5, 'b', 'Egy cég egyik részlegében dolgozó férfiak átlagéletkora 44 év, az ott dolgozó nők át-
lagéletkora 40 év, a részleg összes dolgozójáé pedig 41,5 év.

b) Hány férfi és hány nő maradt ezen a részlegen?', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_005.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('eb4fe25a-6a39-4252-83ae-9b7e0e76caf0', NOW(), 'e_matma_14maj_fl__005__c', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 5, 'c', 'Egy cég egyik részlegében dolgozó férfiak átlagéletkora 44 év, az ott dolgozó nők át-
lagéletkora 40 év, a részleg összes dolgozójáé pedig 41,5 év.

c) Hányféleképpen lehet 6 nőből és 3 férfiből három munkacsoportot szervezni úgy,
hogy mindegyik csoportba 2 nő és 1 férfi kerüljön? (A három munkacsoport
sorrendjétől eltekintünk.)

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_005.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('08b66556-8957-4ea4-a764-d1b12fcf3c4b', NOW(), 'e_matma_14maj_fl__006__a', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 6, 'a', '2
2
a) Adott az O középpontú,
45
)1
(
)
2
(
y
x
egyenletű kör. Az y = 2 egyenletű
=
+
+
−
e egyenes és a kör első síknegyedbeli metszéspontját jelöljük M-mel. Tükrözzük az
e egyenest az OM egyenesre.
Írja fel az e egyenes tükörképének egyenletét!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_006.png', ARRAY['koordinata-geometria','transzformacio']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e79b98ed-09a0-451a-8e0c-71b7b0a9db03', NOW(), 'e_matma_14maj_fl__006__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 6, 'b', '2
b) Adott az
egyenletű parabola. Az y = 2 egyenletű egyenes és a
5
2
x
x
y
+
+
−
=
parabola első síknegyedbeli metszéspontját jelöljük P-vel.
Számítsa ki a parabola P pontbeli érintőjének a meredekségét!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_006.png', ARRAY['koordinata-geometria','differencialszamitas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a309a8a0-5f54-4033-a739-6086c3f7f713', NOW(), 'e_matma_14maj_fl__007__a', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 7, 'a', '2
3
a) Határozza meg az
c
bx
ax
x
x
f
f
)
(
,
:
függvényben az a, b és c
R
R
+
+
+
=
→
valós paraméterek értékét, ha a függvényről tudjuk a következőket:
)1
(
)1(
= f
f
+ 4;
(1)
−
(2)
f’(3) = 10 (f ’ az f deriváltfüggvénye);
2
{{formula:e_matma_14maj_fl_p16_001.png}}
(3)
.
8
)
(
dx
x
f
−
=
0', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_007.png', ARRAY['egyenletek','differencialszamitas','integralszamitas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('79d53339-451a-48c0-b4e7-badb905d6b79', NOW(), 'e_matma_14maj_fl__007__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 7, 'b', '2
3
b) Mutassa meg, hogy az
3
3
x
x
x
polinom szorzattá alakítható, és ennek
−
+
−
2
3
segítségével határozza meg a
3
3
)
(
,
:
x
x
x
x
g
g
függvény zérus-
R
R
−
+
−
=
→
helyeit!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_007.png', ARRAY['algebra','egyenletek','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('15e69916-caf1-445a-bb3a-101228bc2b09', NOW(), 'e_matma_14maj_fl__008__a', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 8, 'a', 'Az ulti nevű kártyajátékot magyar kártyával játsszák, melyben 4 szín (piros, tök, makk,
zöld) és minden színben 8 lap (VII, VIII, IX, X, alsó, felső, király, ász), összesen tehát
32 lap van.
Dénes, Elemér és Fanni ultiznak: egy osztásnál mindhárom játékos (véletlenszerű elosz-
tással) 10-10 lapot kap, a maradék 2 lap pedig az úgynevezett talonba kerül.
a) Számítsa ki annak a valószínűségét, hogy egy osztásnál a talonba kerülő két lap
különböző színű!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_008.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8c720ad1-39cc-4507-bff6-73c21467750a', NOW(), 'e_matma_14maj_fl__008__b', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 8, 'b', 'Az ulti nevű kártyajátékot magyar kártyával játsszák, melyben 4 szín (piros, tök, makk,
zöld) és minden színben 8 lap (VII, VIII, IX, X, alsó, felső, király, ász), összesen tehát
32 lap van.
Dénes, Elemér és Fanni ultiznak: egy osztásnál mindhárom játékos (véletlenszerű elosz-
tással) 10-10 lapot kap, a maradék 2 lap pedig az úgynevezett talonba kerül.

b) Számítsa ki annak a valószínűségét, hogy egy osztásnál Elemérhez kerül valame-
lyik színből mind a 8 lap!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_008.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('695984b5-6d07-4f87-8ebd-1abafa535f19', NOW(), 'e_matma_14maj_fl__008__c', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 8, 'c', 'Az ulti nevű kártyajátékot magyar kártyával játsszák, melyben 4 szín (piros, tök, makk,
zöld) és minden színben 8 lap (VII, VIII, IX, X, alsó, felső, király, ász), összesen tehát
32 lap van.
Dénes, Elemér és Fanni ultiznak: egy osztásnál mindhárom játékos (véletlenszerű elosz-
tással) 10-10 lapot kap, a maradék 2 lap pedig az úgynevezett talonba kerül.

c) Számítással igazolja, hogy (négy tizedesjegyre kerekítve) 0,7966 annak a valószí-
nűsége, hogy az osztáskor Fanni kap legalább egy ászt!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_008.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bd8be7e1-8491-4c07-88c0-6e92bd91803d', NOW(), 'e_matma_14maj_fl__008__d', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 8, 'd', 'Az ulti nevű kártyajátékot magyar kártyával játsszák, melyben 4 szín (piros, tök, makk,
zöld) és minden színben 8 lap (VII, VIII, IX, X, alsó, felső, király, ász), összesen tehát
32 lap van.
Dénes, Elemér és Fanni ultiznak: egy osztásnál mindhárom játékos (véletlenszerű elosz-
tással) 10-10 lapot kap, a maradék 2 lap pedig az úgynevezett talonba kerül.

d) Ha tudjuk, hogy az osztáskor Fanni kapott legalább egy ászt, akkor határozzuk
meg annak a (feltételes) valószínűségét, hogy mind a négy ász hozzá került!

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_008.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('df2c0125-c2f1-44e6-b4db-a630e47058ac', NOW(), 'e_matma_14maj_fl__009__', 'e_matma_14maj_fl', 'e_matma_14maj_fl.pdf', 2014, 'emelt', 'majus', true, 'II', 9, NULL, 'Egy játékban minden játékos ugyanakkora kezdő pontszámmal indult, amely érték a já-
ték fordulói során növekedhetett vagy csökkenhetett. Rita és Péter jól játszottak, mert
mindketten folyamatosan nyertek, így növekedett a pontszámuk. Érdekes módon Rita
pontszáma fordulóról fordulóra ugyanannyiszorosára nőtt, és ez igaz volt Péterre is, bár
Péter esetében nagyobb volt a növekedés mértéke. Az első forduló után Péternek
20-szal több pontja volt, mint Ritának, a második után már 70 ponttal vezetett Rita előtt,
a harmadik forduló után pedig már 185 pont volt a különbség a javára.
Mekkora volt a közös kezdő pontszám értéke?

Ö.:', 16, '/images/e_matma_14maj_fl/crops/e_matma_14maj_fl_prob_009.png', ARRAY['sorozatok','egyenletek','szovegfeladas']::text[], false, false, '', true);

-- e_matma_15maj_fl (16 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f41067a6-6bca-4157-ab74-356d5c7ed102', NOW(), 'e_matma_15maj_fl__001__', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'I', 1, NULL, '2
2
Adott a
90
4
4
+ y
x
egyenletű k kör és az  x + 3y = 0 egyenletű g egyenes.
=
Írja fel a k kör g-vel párhuzamos érintőinek egyenletét!

Ö.:', 12, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_001.png', ARRAY['koordinata-geometria','geometria-sik','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('395fd4dd-86c9-4cc7-9c78-c0e5ff45f136', NOW(), 'e_matma_15maj_fl__002__a', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'I', 2, 'a', 'Egy dobozban 40 üveggyöngy között 8 selejtes van. Egy kísérlet abból áll, hogy a 40
gyöngy közül visszatevés nélküli mintavétellel, véletlenszerűen kiválasztanak 10-et,
és megszámolják, hogy hány selejtes van közöttük.
a)
Egy tanulócsoport tagjai összesen 500 alkalommal végezték el a fent leírt kísér-
letet. A kísérletek befejezése után összesítették a tapasztaltakat: a 10 elemű min-
tákban előforduló selejtes gyöngyök számának relatív gyakoriságát oszlop-
diagramon ábrázolták. A diagram segítségével válaszoljon a következő kérdé-
sekre:
I. Mennyi volt az egy mintában előforduló legtöbb selejtes gyöngy?
II. Mennyi volt az egy mintában legtöbbször előforduló selejtszám?
III. Hány alkalommal nem volt a 10 elemű mintában egyetlen selejtes gyöngy
sem?

b)
Számítsa ki annak a valószínűségét, hogy a kísérletet egyszer elvégezve a min-
tában pontosan 2 selejtes lesz! Állapítsa meg, hogy az eseménynek az 500 kísér-
letből kapott relatív gyakorisága hány százaléka a kiszámított valószínűségnek!
c)
Egy másik kísérletben ugyanebből a 40 gyöngyből visszatevéses mintavétellel
választunk ki 10 gyöngyöt. Ekkor mennyi annak a valószínűsége, hogy a mintá-
ban pontosan 2 selejtes gyöngy lesz?

a)
b)
c)
Ö.:', 13, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_002.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e643c73b-bc73-48b8-acc7-f3c574e5cbfe', NOW(), 'e_matma_15maj_fl__003__a', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy hegy és a tetején álló kilátótorony magasságát szeretnénk meghatározni. Legyen a
kilátótorony legmagasabban lévő pontja A, a kilátó talppontja B. A hegy lábánál elterülő
vízszintes, sík mezőn a toronytól ugyanabban az irányban felvesszük az egymástól
30 méterre lévő P és Q pontokat úgy, hogy az A, B, P és Q pontok ugyanabban a
(függőleges) síkban legyenek. A P pontból a torony alját (a B pontot) 29o-os, a tetejét
(az A pontot) 33o-os, a Q pontból a torony alját 27o-os emelkedési szög alatt látjuk.
a)
Hány méterrel emelkedik a mező fölé a hegy, amelynek tetején a kilátó áll?', 13, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_003.png', ARRAY['trigonometria','geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e911f389-b5e6-436b-8e8f-aaaef0a7991e', NOW(), 'e_matma_15maj_fl__003__b', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'I', 3, 'b', 'Egy hegy és a tetején álló kilátótorony magasságát szeretnénk meghatározni. Legyen a
kilátótorony legmagasabban lévő pontja A, a kilátó talppontja B. A hegy lábánál elterülő
vízszintes, sík mezőn a toronytól ugyanabban az irányban felvesszük az egymástól
30 méterre lévő P és Q pontokat úgy, hogy az A, B, P és Q pontok ugyanabban a
(függőleges) síkban legyenek. A P pontból a torony alját (a B pontot) 29o-os, a tetejét
(az A pontot) 33o-os, a Q pontból a torony alját 27o-os emelkedési szög alatt látjuk.

b)
Milyen magas a kilátó?
Válaszait egész méterre kerekítve adja meg!

a)
b)
Ö.:', 13, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_003.png', ARRAY['trigonometria','geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2fd627b0-645a-412d-9adb-2bd09a574a69', NOW(), 'e_matma_15maj_fl__004__', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'I', 4, NULL, '2
Jelölje a
0
22
19
4
x
x
egyenlőtlenség valós megoldásainak halmazát A, a
<
+
−
egyenlőtlenség valós megoldásainak halmazát pedig B.
0
2
sin
x
<
B
A ⊂
Igazolja, hogy
!

Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 13, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_004.png', ARRAY['egyenletek','trigonometria','halmazok','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b505c94c-3f82-462e-83ce-48ef88d603fc', NOW(), 'e_matma_15maj_fl__005__a', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 5, 'a', 'Egy 40 cm × 25 cm-es kartonlapból ki-
vágunk két egybevágó téglalapot, az áb-
rán ezek vonalkázva láthatók. A meg-
maradt kartonlapból ezután (a berajzolt
élek mentén) egy olyan téglatestet haj-
togatunk, melynek magassága a kivágott
téglalapok rövidebb oldalával egyenlő.
a)
Mekkora lesz a kapott téglatest
felszíne, ha a kivágott téglalapok
rövidebb oldala 2 cm-es?', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_005.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('40047522-f51c-428c-98be-1942bb3b7ef0', NOW(), 'e_matma_15maj_fl__005__b', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 5, 'b', 'Egy 40 cm × 25 cm-es kartonlapból ki-
vágunk két egybevágó téglalapot, az áb-
rán ezek vonalkázva láthatók. A meg-
maradt kartonlapból ezután (a berajzolt
élek mentén) egy olyan téglatestet haj-
togatunk, melynek magassága a kivágott
téglalapok rövidebb oldalával egyenlő.

b)
Hogyan válasszuk meg a kivágott téglalapok rövidebb oldalának hosszát, ha azt
szeretnénk, hogy az elkészített téglatest térfogata maximális legyen? Mekkora a
maximális térfogat?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_005.png', ARRAY['geometria-ter','differencialszamitas','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8e1b0d15-d20b-4144-b9c8-96f8b4bfbbb4', NOW(), 'e_matma_15maj_fl__006__a', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 6, 'a', 'a)
Egy 9 pontú fagráfban ismerjük 8 pont fokszámát: 1; 1; 1; 1; 2; 3; 3, 3.
Határozza meg a kilencedik pont fokszámát!', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_006.png', ARRAY['grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('321d3d77-c35c-42d7-a513-2a2f263e15e5', NOW(), 'e_matma_15maj_fl__006__b', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 6, 'b', 'b)
Van-e olyan 9 pontú egyszerű gráf, amelyben mind a 9 pontnak más a fokszáma?', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_006.png', ARRAY['grafelmelet','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('48ba6134-beb4-406b-9520-753c8e21edb2', NOW(), 'e_matma_15maj_fl__006__c', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 6, 'c', 'c)
Egy kilenctagú társaságban kézfogással köszöntik egymást az emberek. Eddig
4 kézfogás történt. Hány különböző módon történhetett ez meg, ha senki sem fo-
gott kezet egynél többször, és a kézfogások sorrendjére nem vagyunk tekintettel?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_006.png', ARRAY['grafelmelet','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6e1fe2be-9676-4fee-97c4-ff34840e37a0', NOW(), 'e_matma_15maj_fl__007__', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 7, NULL, 'Egy iskola egyéni sakkbajnokságának döntőjében minden versenyző egyszer játszott a
többi döntőbe jutott versenyzővel. A verseny végén kiderült, hogy a versenyzők elért
pontszámai egy szigorúan növekvő számtani sorozat egymást követő tagjai.
Hányan versenyeztek a döntőben és hány pontja volt a győztesnek, ha az utolsó helye-
zett összesen 1 pontot szerzett? (A sakkversenyen győzelemért 1 pont, döntetlenért
0,5 pont, vereségért 0 pont jár.)

Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_007.png', ARRAY['sorozatok','grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ceec40a2-b722-4039-a23d-f4af75f83af4', NOW(), 'e_matma_15maj_fl__008__a', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 8, 'a', 'A
derékszögű
koordináta-rendszerben
adott
az
2 +
3 −
x
x
y
x
x
y
3
25
,0
, illetve az
44
,1
01
,0
egyenletű
−
=
=
görbéknek az az íve, amelyre 0 ≤ x ≤ 12. (Ez a két ív az áb-
rán is látható.) Tudjuk, hogy a (0; 0) és a (12; 0) pont a két
ív közös pontja.
Mindkét ív esetében adja meg az ív x tengelytől
a)
legtávolabbi pontjának első koordinátáját!', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_008.png', ARRAY['fuggvenyek','differencialszamitas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2b72cd6a-4e65-457d-848a-b268cab8622f', NOW(), 'e_matma_15maj_fl__008__b', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 8, 'b', 'A
derékszögű
koordináta-rendszerben
adott
az
2 +
3 −
x
x
y
x
x
y
3
25
,0
, illetve az
44
,1
01
,0
egyenletű
−
=
=
görbéknek az az íve, amelyre 0 ≤ x ≤ 12. (Ez a két ív az áb-
rán is látható.) Tudjuk, hogy a (0; 0) és a (12; 0) pont a két
ív közös pontja.

b)
Mekkora a két ív által közrezárt síkidom területe?', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_008.png', ARRAY['integralszamitas','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bed0eced-35e0-4b15-a158-b8b68c676313', NOW(), 'e_matma_15maj_fl__008__c', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 8, 'c', 'A
derékszögű
koordináta-rendszerben
adott
az
2 +
3 −
x
x
y
x
x
y
3
25
,0
, illetve az
44
,1
01
,0
egyenletű
−
=
=
görbéknek az az íve, amelyre 0 ≤ x ≤ 12. (Ez a két ív az áb-
rán is látható.) Tudjuk, hogy a (0; 0) és a (12; 0) pont a két
ív közös pontja.

c)
Értelmezzük a ]0; 12[ intervallumon az alábbi hoz-
zárendeléssel megadott f és g függvényeket:
2
25
x
x
3
25
,0
+
−
x
f
)
(
x
g
.
)
(
és
=
−
=
3
x
x
12
x
44
,1
01
,0
−
+
)
(
)
(
x
g
x
f
, és mutassa meg, hogy a g függvény szigorúan
Igazolja, hogy
=
monoton növekvő!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszés szerint választott négyet kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_008.png', ARRAY['fuggvenyek','differencialszamitas','bizonyitasok','algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f7f9c4f3-1bb4-408d-9f3b-07c01d9855a3', NOW(), 'e_matma_15maj_fl__009__a', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 9, 'a', 'Egy osztály tanulói matematikadolgozatot írtak, melynek során három feladatot kellett
megoldaniuk. Az első feladatot összesen 22-en oldották meg, közülük a második felada-
tot is megoldotta 16 tanuló. Azok, akik mindhárom feladatot megoldották, háromszor
annyian voltak, mint akiknek csak az első feladat sikerült. Azok, akik csak az első két
feladatot tudták megoldani, két és félszer annyian voltak, mint akik csak az elsőt és a
harmadikat.
a)
Hány tanuló oldotta meg mindhárom feladatot?
Összesen 30-an írták meg a dolgozatot. A dolgozatokat a tanár 1-től 5-ig terjedő egész
osztályzatokkal értékelte. Az osztályzatok átlaga 3,4, mediánja 3,5, egyetlen módusza 4
volt. Amikor a tanár kiosztotta a dolgozatokat, a dolgozatírók közül hatan hiányoztak.
A 24 kiosztott dolgozat között 7 db ötös, 5 db négyes, 6 db hármas, 4 db kettes és 2 db
egyes volt.', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_009.png', ARRAY['halmazok','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5dcd32f2-6c77-4d77-b2f4-6409567f20e7', NOW(), 'e_matma_15maj_fl__009__b', 'e_matma_15maj_fl', 'e_matma_15maj_fl.pdf', 2015, 'emelt', 'majus', true, 'II', 9, 'b', 'Egy osztály tanulói matematikadolgozatot írtak, melynek során három feladatot kellett
megoldaniuk. Az első feladatot összesen 22-en oldották meg, közülük a második felada-
tot is megoldotta 16 tanuló. Azok, akik mindhárom feladatot megoldották, háromszor
annyian voltak, mint akiknek csak az első feladat sikerült. Azok, akik csak az első két
feladatot tudták megoldani, két és félszer annyian voltak, mint akik csak az elsőt és a
harmadikat.

b)
Hányas lehetett a hat hiányzó tanuló dolgozata?

a)
b)
Ö.:', 16, '/images/e_matma_15maj_fl/crops/e_matma_15maj_fl_prob_009.png', ARRAY['statisztika','egyenletek','szovegfeladas']::text[], false, false, '', true);

-- e_matma_16maj_fl (18 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c7f1de76-2bc0-4ec2-81ea-6f88263acc57', NOW(), 'e_matma_16maj_fl__001__', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'I', 1, NULL, 'Oldja meg a valós számok halmazán az alábbi egyenleteket!
+
11
2
x
+
+
=
2
9
6
x
x
a)
3
=
+
−
−
+
+
b)
1
)
9
(
log
)
3
(
log
)1
(
log
x
x
x
2
2
2

a)
b)
Ö.:', 13, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_001.png', ARRAY['egyenletek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('71e5527a-eda6-4050-af85-64356679c7cc', NOW(), 'e_matma_16maj_fl__002__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'I', 2, 'a', 'Egy 28 fős osztályban minden tanulónak van év végi osztályzata fizikából és matemati-
kából is. 23 tanuló nem kapott jelest fizikából, és 21 tanuló nem kapott jelest matemati-
kából, de a két tárgy közül legalább az egyikből 10-en kaptak jelest.
a) Hány tanulónak van jelese mindkét tárgyból?
Az A és B halmazokról tudjuk, hogy az A \ B, az A ∪ B, az A és a B halmaz elemszáma
(ebben a sorrendben) egy növekvő számtani sorozat első négy tagja. Az A halmaz elem-
számának és a B halmaz elemszámának összege 28.', 11, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_002.png', ARRAY['halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5ac49617-24dd-4018-bfec-c52adc928e92', NOW(), 'e_matma_16maj_fl__002__b', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'I', 2, 'b', 'Egy 28 fős osztályban minden tanulónak van év végi osztályzata fizikából és matemati-
kából is. 23 tanuló nem kapott jelest fizikából, és 21 tanuló nem kapott jelest matemati-
kából, de a két tárgy közül legalább az egyikből 10-en kaptak jelest.

b) Határozza meg a számtani sorozat első tagját és differenciáját!

a)
b)
Ö.:', 11, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_002.png', ARRAY['halmazok','sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4353377e-3ae0-4a77-afe6-0d6d64a6479d', NOW(), 'e_matma_16maj_fl__003__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy 6 méter széles és 8 méter hosszú,
téglalap alaprajzú épületre „sátortetőt”
építettek. A tető 4 méter hosszú gerin-
ce a mennyezet téglalapjának hosszab-
bik középvonala fölött, attól 3,5 méter
távolságra van. A mennyezet téglalap-
jának négy csúcsában támaszkodó,
négy egyenlő hosszúságú gerenda tart-
ja a tetőgerincet.
a) Számítsa ki a tartógerendák hosszát és a vízszintes síkkal bezárt szögüket!
A tető déli irányba néző, trapéz alakú részére egy téglalap alakú napelemet fektetnek. A
téglalap egyik oldala a tető alsó élére, az ezzel szemközti oldala pedig a trapéz közép-
vonalára illeszkedik. A napelem sehol sem nyúlik túl a tetőn.
b) Mekkora a legnagyobb területű napelem, amelyet a megadott módon el lehet he-
lyezni a tetőn?
Válaszát négyzetméterben, egy tizedesjegyre kerekítve adja meg!

a)
b)
Ö.:', 13, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_003.png', ARRAY['geometria-ter','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('71058e12-8312-437b-8ef7-a531a0abf90d', NOW(), 'e_matma_16maj_fl__004__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'I', 4, 'a', 'Egy város kézilabdacsapatának vezetői a bajnoki mérkőzések jegybevételét szeretnék
növelni. A korábbi évek adatai azt mutatják, hogy 1500 Ft-os jegyár esetén átlagosan
1000-en vásárolnak jegyet. Az adatokból az is kiderül, hogy ahányszor 5 Ft-tal csökken-
tik a jegy árát, átlagosan annyiszor 10 fővel többen váltanak jegyet az adott mérkőzésre;
ha a jegyárat növelik, akkor pedig ahányszor 5 Ft-tal nő a jegy ára, átlagosan annyiszor
10 fővel csökken a jegyet vásárló nézők száma. (A jegy ára forintban kifejezve 0-ra
vagy 5-re végződhet.)
a) Mutassa meg, hogy ha a jelenlegi jegyár 1500 forint, akkor a fenti modell szerint a
jegyárak bármilyen összegű növelése esetén csökkenni fog az összbevétel!', 14, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_004.png', ARRAY['fuggvenyek','bizonyitasok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('87cfc8f6-82ab-4403-a41e-bf4251ab0351', NOW(), 'e_matma_16maj_fl__004__b', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'I', 4, 'b', 'Egy város kézilabdacsapatának vezetői a bajnoki mérkőzések jegybevételét szeretnék
növelni. A korábbi évek adatai azt mutatják, hogy 1500 Ft-os jegyár esetén átlagosan
1000-en vásárolnak jegyet. Az adatokból az is kiderül, hogy ahányszor 5 Ft-tal csökken-
tik a jegy árát, átlagosan annyiszor 10 fővel többen váltanak jegyet az adott mérkőzésre;
ha a jegyárat növelik, akkor pedig ahányszor 5 Ft-tal nő a jegy ára, átlagosan annyiszor
10 fővel csökken a jegyet vásárló nézők száma. (A jegy ára forintban kifejezve 0-ra
vagy 5-re végződhet.)

b) A modell szerint mekkora lehet a jegyárakból származó legnagyobb bevétel egy
mérkőzésen, és mennyit kell fizetni ebben az esetben egy jegyért?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_004.png', ARRAY['fuggvenyek','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1321f64b-e48d-405b-90ca-6d2a7a04ea6a', NOW(), 'e_matma_16maj_fl__005__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 5, 'a', 'Egy üzemben két automata gépsoron egyforma ingeket gyártanak. Az első gépsoron
gyártott 4000 ingnek a 2%-a, a második gépsoron készült 5000 ingnek pedig a 3,4%-a
anyaghibás.
Az elkészült ingek ugyanabba a raktárba kerültek és összekeveredtek. A 9000 ing közül
véletlenszerűen kiválasztunk egyet, és azt anyaghibásnak találjuk.
a) Mekkora annak a valószínűsége, hogy a hibás inget a második gépsoron gyártot-
ták?
A Kis Áruházban egy anyaghibás ing árából először 500 Ft árengedményt adtak, majd
nemsokára az új árat tovább csökkentették annak p%-ával. Így az ing 50 Ft-tal drágább
lett, mint ha először engedték volna le az árát p%-kal és utána 500 Ft-tal, viszont
90 Ft-tal olcsóbb lett, mint ha mindkétszer p%-kal csökkentették volna az árát.', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_005.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cadcb30f-4681-4477-bb7d-78c5e9598674', NOW(), 'e_matma_16maj_fl__005__b', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 5, 'b', 'Egy üzemben két automata gépsoron egyforma ingeket gyártanak. Az első gépsoron
gyártott 4000 ingnek a 2%-a, a második gépsoron készült 5000 ingnek pedig a 3,4%-a
anyaghibás.
Az elkészült ingek ugyanabba a raktárba kerültek és összekeveredtek. A 9000 ing közül
véletlenszerűen kiválasztunk egyet, és azt anyaghibásnak találjuk.

b) Határozza meg p értékét, valamint az ing eredeti árát!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_005.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('33870077-5ea6-4de7-a0c7-f4f70f5d3397', NOW(), 'e_matma_16maj_fl__006__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 6, 'a', 'a) Számítsa ki az ábrán látható, két görbe vonal által köz-
refogott síkidom területét!
+
=
2
sin
x
y
(Az egyik határoló vonal az
, a másik pe-
cos +
=
2
x
y
dig az
egyenletű görbének egy része.)

−
5
11
n
=
b) Igazolja, hogy ha
an
, akkor az
}
{
a
sorozat nem monoton, de korlátos!
n
−
8
3
n
+
∉N
)
(
n

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_006.png', ARRAY['integralszamitas','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('21e2a52d-f1bc-4dfa-8eac-017dfa817ca7', NOW(), 'e_matma_16maj_fl__007__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 7, 'a', 'a) Határozza meg, hány olyan 1000-nél kisebb pozitív egész szám van, amelynek
számjegyei között nem szerepel a 0, de szerepel legalább egyszer az 1.
Egy pozitív egész számokból álló adatsokaság módusza 32, átlaga 22, a legkisebb adat
a 10. Az m medián eleme a sokaságnak és gyakorisága 1.
Ha az m-et (m + 10)-re cserélnénk, akkor az így kapott új sokaság átlaga 24 lenne. Ha az
eredeti sokaságban az m számot (m – 5)-re cserélnénk, akkor az így kapott sokaság me-
diánja m – 4 lenne.', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_007.png', ARRAY['kombinatorika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ae0c9aa6-1b35-4ee9-8488-74963dcff49f', NOW(), 'e_matma_16maj_fl__007__b', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 7, 'b', 'b) Igazolja, hogy az adatsokaságnak öt eleme van!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_007.png', ARRAY['statisztika','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d8a9e750-cc2f-4210-8833-b416c4a49108', NOW(), 'e_matma_16maj_fl__007__c', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 7, 'c', 'c) Határozza meg az eredeti adatsokaság elemeit!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_007.png', ARRAY['statisztika','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e31368b1-37d7-4fce-a583-839d35a44aa9', NOW(), 'e_matma_16maj_fl__008__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 8, 'a', 'Az ABCDEFGH téglatest ABCD lapjára merőleges
élei AE, BF, CG és DH. A téglatest három élének
=
=
=
cm,
cm és
cm.
hossza:
16
AD
5
AE
12
AB
a) Számítsa ki az ACFH tetraéder térfogatát!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_008.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b23f5f68-582f-4f75-8d39-3e0dd0b02e3d', NOW(), 'e_matma_16maj_fl__008__b', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 8, 'b', 'Az ABCDEFGH téglatest ABCD lapjára merőleges
élei AE, BF, CG és DH. A téglatest három élének
=
=
=
cm,
cm és
cm.
hossza:
16
AD
5
AE
12
AB

b) Igazolja, hogy az ACFH tetraéder oldallapjai
egybevágó háromszögek!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_008.png', ARRAY['geometria-ter','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9002279e-af7c-4429-83ef-763fa18419fc', NOW(), 'e_matma_16maj_fl__008__c', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 8, 'c', 'Az ABCDEFGH téglatest ABCD lapjára merőleges
élei AE, BF, CG és DH. A téglatest három élének
=
=
=
cm,
cm és
cm.
hossza:
16
AD
5
AE
12
AB

c) Igazolja, hogy az ACFH tetraéder oldallapjai hegyesszögű háromszögek!
A PQRS tetraéder QP élének hossza 10 cm, PS éle 15 cm, SR éle pedig 40 cm hosszú.
A másik három él hossza 20 cm, 25 cm és 30 cm.', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_008.png', ARRAY['geometria-ter','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('596bbe82-fa18-47d1-af9d-99b8930c912a', NOW(), 'e_matma_16maj_fl__008__d', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 8, 'd', 'Az ABCDEFGH téglatest ABCD lapjára merőleges
élei AE, BF, CG és DH. A téglatest három élének
=
=
=
cm,
cm és
cm.
hossza:
16
AD
5
AE
12
AB

d) Hány különböző tetraéder felel meg a feltételeknek? (Az egybevágó tetraédereket
nem tekintjük különbözőknek.)

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_008.png', ARRAY['kombinatorika','geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('975de634-dd94-4b23-9adc-307953c0d300', NOW(), 'e_matma_16maj_fl__009__a', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 9, 'a', 'Egy társasjátékban egy hosszú egyenes pályán haladunk a bábunkkal. A Start mezőről
indulunk; a szabályos dobókockával dobott pontszámunknak megfelelően léphetünk
1-et, 2-t, 3-at, 4-et, 5-öt vagy 6-ot. Ha a játék során bármikor a 4-es mezőre érkezünk,
vissza kell állnunk a Start mezőre, és újra kell kezdenünk a játékot. Ebben a társasjáték-
ban csak a 4-es mezőre érkezés miatt lehet a pályán „visszafelé” haladni.

a) Mennyi a valószínűsége annak, hogy legalább egyszer a 4-es mezőre érkezünk?
András eddig háromszor dobott, és a negyedik dobása előtt éppen a Start mezőn áll.', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_009.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d45c6291-4e22-479a-9abc-5e73b08701a2', NOW(), 'e_matma_16maj_fl__009__b', 'e_matma_16maj_fl', 'e_matma_16maj_fl.pdf', 2016, 'emelt', 'majus', true, 'II', 9, 'b', 'Egy társasjátékban egy hosszú egyenes pályán haladunk a bábunkkal. A Start mezőről
indulunk; a szabályos dobókockával dobott pontszámunknak megfelelően léphetünk
1-et, 2-t, 3-at, 4-et, 5-öt vagy 6-ot. Ha a játék során bármikor a 4-es mezőre érkezünk,
vissza kell állnunk a Start mezőre, és újra kell kezdenünk a játékot. Ebben a társasjáték-
ban csak a 4-es mezőre érkezés miatt lehet a pályán „visszafelé” haladni.

1
2
3
5
6
7
…
Start
4

b) Hányféle lehetett az András első három dobásából álló dobássorozat?

a)
b)
Ö.:', 16, '/images/e_matma_16maj_fl/crops/e_matma_16maj_fl_prob_009.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);

-- e_matma_17maj_fl (21 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ae224b05-017d-4496-b82a-9daa90b7f6b0', NOW(), 'e_matma_17maj_fl__001__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 1, 'a', 'Oldja meg a valós számok halmazán az alábbi egyenlőtlenségeket!
a) lg x < 2', 12, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('48040d1a-4563-4e09-b254-d68ae96892b6', NOW(), 'e_matma_17maj_fl__001__b', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 1, 'b', 'Oldja meg a valós számok halmazán az alábbi egyenlőtlenségeket!

2
−
<
5
4
x
x
b)', 12, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_001.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e945a0f6-23d5-407b-9733-53c0b03cdd28', NOW(), 'e_matma_17maj_fl__001__c', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 1, 'c', 'Oldja meg a valós számok halmazán az alábbi egyenlőtlenségeket!

3 <
−
x
c)
25
,0
5,0

a)
b)
c)
Ö.:', 12, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('77f510e7-3754-456c-a9e7-6e5e1bac132c', NOW(), 'e_matma_17maj_fl__002__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 2, 'a', 'Noémi első egyetemi vizsgája három részből áll: egy projektmunkából, egy írásbeli dol-
gozatból, valamint egy szóbeli feleletből. Mindhárom rész eredményét százalékban adják
meg.
A vizsga végeredményét egyetlen számmal jellemzik úgy, hogy kiszámolják a három rész
százalékban megadott eredményének súlyozott számtani közepét: a projektmunka ered-
ményét 2-es súllyal, az írásbeli dolgozat eredményét 5-ös súllyal, a szóbeli felelet ered-
ményét 3-as súllyal veszik figyelembe.
Noémi projektmunkája 73%-os, írásbeli vizsgája 64%-os lett.
a) Hány százalékra kell teljesítenie a szóbeli vizsgáját, hogy vizsgájának végeredmé-
nye legalább 70%-os legyen?
Az első évfolyam adatainak összesítésekor kiderült, hogy a 75 lány vizsgaeredményeinek
átlaga 70%, a fiúk vizsgaeredményeinek átlaga 62% lett. A kollégiumban lakó 40 hallgató
vizsgaeredményeinek átlaga 71%, a nem kollégistáké pedig 65% lett.', 11, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_002.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2999432d-70c5-4b0e-babf-0c9b3845c266', NOW(), 'e_matma_17maj_fl__002__b', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 2, 'b', 'Noémi első egyetemi vizsgája három részből áll: egy projektmunkából, egy írásbeli dol-
gozatból, valamint egy szóbeli feleletből. Mindhárom rész eredményét százalékban adják
meg.
A vizsga végeredményét egyetlen számmal jellemzik úgy, hogy kiszámolják a három rész
százalékban megadott eredményének súlyozott számtani közepét: a projektmunka ered-
ményét 2-es súllyal, az írásbeli dolgozat eredményét 5-ös súllyal, a szóbeli felelet ered-
ményét 3-as súllyal veszik figyelembe.
Noémi projektmunkája 73%-os, írásbeli vizsgája 64%-os lett.

b) Hányan vizsgáztak összesen az első évfolyamról?

a)
b)
Ö.:', 11, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_002.png', ARRAY['egyenletek','statisztika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('42b37a33-7a30-42e3-8b77-6a9e4896623f', NOW(), 'e_matma_17maj_fl__003__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy baráti társaság 8 tagjának tömegét mutatja az alábbi táblázat.
név
Albert
Bori
Csaba
Dénes
Elek
Frigyes
Gabi
Helga
tömeg (kg)
82
74
90
88
85
85
63
71
a) Adja meg a 8 adat mediánját, átlagát és szórását!
Ez a 8 ember lifttel szeretne feljutni egy épület legfelső emeletére, ahol a baráti társaság
rendezvényét tartják. A kisméretű lift ajtaján ez a felirat áll: „Max. 3 személy vagy 230 kg”
(vagyis a liftben nem utazhat 3-nál több személy, továbbá a liftben utazók tömegének
összege nem lehet több 230 kg-nál).', 14, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_003.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('71630edd-d2bb-447f-ac8b-01e060a311c8', NOW(), 'e_matma_17maj_fl__003__b', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 3, 'b', 'Egy baráti társaság 8 tagjának tömegét mutatja az alábbi táblázat.
név
Albert
Bori
Csaba
Dénes
Elek
Frigyes
Gabi
Helga
tömeg (kg)
82
74
90
88
85
85
63
71

b) Igazolja, hogy a lift három fordulója már elegendő ahhoz, hogy (az előírás betartá-
sával) mind a 8 ember lifttel mehessen fel a rendezvény helyszínére!
A lift felújításakor a liftben együtt utazók megengedett össztömegét 300 kg-ra növelik,
de a személyek számára vonatkozó korlátozás megmarad (legfeljebb 3 fő utazhat együtt).', 14, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_003.png', ARRAY['szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0c1593db-0612-45db-a453-82ee3f72fa95', NOW(), 'e_matma_17maj_fl__003__c', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 3, 'c', 'Egy baráti társaság 8 tagjának tömegét mutatja az alábbi táblázat.
név
Albert
Bori
Csaba
Dénes
Elek
Frigyes
Gabi
Helga
tömeg (kg)
82
74
90
88
85
85
63
71

c) Az új előírás figyelembevételével hányféleképpen mehetne fel a baráti társaság
8 tagja a lifttel, ha minden fordulóban legalább két személy utazna együtt? (Két „fel-
jutást” különbözőnek tekintünk, ha legalább egy csoport összetétele nem azonos a
két feljutásban, vagy a csoportok más sorrendben jutottak fel a legfelső emeletre.)

a)
b)
c)
Ö.:', 14, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_003.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4471f40d-3037-408e-a382-c7e4b983ce1c', NOW(), 'e_matma_17maj_fl__004__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'I', 4, 'a', '2
+
+
−
=
6
x
x
y
a) Mekkora területű síkidomot zár közre az
egyenletű parabola és az
x – y + 2 = 0 egyenletű egyenes?
2
+
+
−
=
6
x
x
y
Az
egyenletű parabola az x tengelyt az A és a B pontban metszi.
b) Számítsa ki a parabola B pontbeli érintőjének meredekségét, ha tudjuk, hogy a
B pont első koordinátája pozitív!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon található üres négyzetbe!', 14, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_004.png', ARRAY['integralszamitas','fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('73cc8d62-3a00-4eee-8eb3-8577d120522c', NOW(), 'e_matma_17maj_fl__005__', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 5, NULL, 'Az interneten érdekes hírként jelent meg 2015-ben, hogy a matematikusok újabb, egybe-
vágó ötszögekből álló hézagmentes síklefedést (parkettázást) fedeztek fel. (A két ábrán a
parkettázás egy részlete, illetve a parketta egyik ötszögének néhány adata látható: EA =
AB = CD = 1, BC = 2, EAB∇ = 90º, ABC∇ = 150º, BCD∇ = 60º.)

a) Igazolja, hogy az ábrán megadott ötszög B csúcsából húzott két átló 75°-os szöget
zár be egymással!
−
2
6
=
°
b) Igazolja (például addíciós tételek segítségével), hogy
.
75
cos
4

2 +
c) Igazolja, hogy az ötszög DE oldala hosszának pontos értéke
.
3

+
2
6
=
+
d) Igazolja, hogy
.
3
2
2

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon található üres négyzetbe!', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_005.png', ARRAY['geometria-sik','trigonometria','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2e96e65b-6223-4ce8-a7ea-96a08bec1f49', NOW(), 'e_matma_17maj_fl__006__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 6, 'a', 'a) Az A és C kijelentések logikai értéke igaz, a B kijelentés logikai értéke hamis.
Határozza meg az alábbi állítások logikai értékét!
(Válaszait itt nem szükséges indokolnia.)
(1) ∧A ⇔ ∧B
(2) (A ∨ B) ⇔ ∧C
(3) B → ∧A
(4) ∧A ↔ B
(5) A → (B ∨ C)
A H halmaz a tízpontú egyszerű gráfok halmaza. A következő állítás a H elemeire vonat-
kozik: Ha egy (tízpontú egyszerű) gráfnak legfeljebb 8 éle van, akkor nem tartalmaz kört.', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_006.png', ARRAY['logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('df87fcbf-10a2-4d94-9dac-35e2da736766', NOW(), 'e_matma_17maj_fl__006__b', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 6, 'b', 'b) Döntse el, hogy az állítás igaz vagy hamis! Válaszát indokolja!', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_006.png', ARRAY['grafelmelet','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2bfbdc9f-dd61-458c-a911-b4bd04b85ff0', NOW(), 'e_matma_17maj_fl__006__c', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 6, 'c', 'c) Fogalmazza meg az állítás megfordítását a H elemeire vonatkozóan, és döntse el a
megfordított állításról, hogy igaz vagy hamis! Válaszát indokolja!
Egy tízpontú teljes gráf élei közül véletlenszerűen kiválasztunk három különbözőt.
(Teljes gráf: olyan egyszerű gráf, melynek bármely két pontja között van él.)', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_006.png', ARRAY['grafelmelet','logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('40bec82d-3e82-4870-b6a1-95936aa4be88', NOW(), 'e_matma_17maj_fl__006__d', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 6, 'd', 'd) Határozza meg annak a valószínűségét, hogy a három kiválasztott él a gráfnak egy
körét alkotja!

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon található üres négyzetbe!', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_006.png', ARRAY['grafelmelet','valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('77558442-755d-424d-bf53-f0d98ace2293', NOW(), 'e_matma_17maj_fl__007__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 7, 'a', 'a) Hány olyan különböző hegyesszögű háromszög van, melynek szögei fokban mérve
különböző egész számok, és a szögek egy növekvő számtani sorozat egymást követő
tagjai? (Két háromszöget különbözőnek tekintünk, ha nem hasonlók egymáshoz.)', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_007.png', ARRAY['sorozatok','geometria-sik','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e27ae5d9-18d6-4443-b789-960f69c66af9', NOW(), 'e_matma_17maj_fl__007__b', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 7, 'b', 'b) Igazolja, hogy nincs olyan szabályos n-szög, amelynek a belső szögei n fokosak!', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_007.png', ARRAY['geometria-sik','bizonyitasok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('00c971f8-57a3-4e5b-8b77-8ed7aab6017a', NOW(), 'e_matma_17maj_fl__007__c', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 7, 'c', 'c) Egy szabályos n-szögről tudjuk, hogy a belső szögei fokban mérve egész számok.
Hányféle lehet az n értéke?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon található üres négyzetbe!', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_007.png', ARRAY['geometria-sik','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a795cf06-657e-4cf0-bb9b-1964f5b21dbf', NOW(), 'e_matma_17maj_fl__008__a', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 8, 'a', 'Járványos időszakban egy nagyváros lakóinak 0,2%-a fertőzött a járványt okozó vírussal.
Ebben az időszakban a város lakói közül 80-an ugyanazon az autóbuszon utaznak.
a) Mekkora annak a valószínűsége, hogy az autóbusz 80 utasa között van legalább egy
fertőzött? Válaszát két tizedesjegyre kerekítve adja meg!
A járvány terjedésére vonatkozó előrejelzések szerint a nagyvárosban a fertőzöttek száma
minden nap az előző napi érték 105%-ára növekszik.', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_008.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('89f2ab12-9a82-4e23-a28c-5f4e2076c1cf', NOW(), 'e_matma_17maj_fl__008__b', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 8, 'b', 'Járványos időszakban egy nagyváros lakóinak 0,2%-a fertőzött a járványt okozó vírussal.
Ebben az időszakban a város lakói közül 80-an ugyanazon az autóbuszon utaznak.

b) Ha a növekedés üteme az előrejelzés szerint alakulna, akkor hány nap alatt emel-
kedne a város összlakosságának 0,2%-áról az összlakosság 1%-ára az összes fertő-
zött száma?
Egy kereskedelmi forgalomban is kapható gyorsteszt azt ígéri a felhasználóknak, hogy a
teszt kimutatja a vírusfertőzést. A termék leírásában ez áll: „A teszt a vírussal fertőzött
embereknél 99% valószínűséggel mutatja ki a fertőzöttséget. A vírussal nem fertőzött em-
berek esetében olykor szintén fertőzöttséget jelez a teszt, ám ennek a téves jelzésnek a
valószínűsége mindössze 4%.”', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_008.png', ARRAY['exponencialis','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fc42a93c-68ae-4ee7-b4f3-f556e2796fff', NOW(), 'e_matma_17maj_fl__008__c', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 8, 'c', 'Járványos időszakban egy nagyváros lakóinak 0,2%-a fertőzött a járványt okozó vírussal.
Ebben az időszakban a város lakói közül 80-an ugyanazon az autóbuszon utaznak.

c) Tudjuk, hogy a város lakosságának 0,2%-a fertőzött a járványt okozó vírussal.
Mutassa meg, hogy ha egy véletlenszerűen választott városlakó gyorstesztje fertő-
zöttséget mutat, akkor 0,05-nál kisebb annak a valószínűsége, hogy a tesztalany va-
lóban vírusfertőzött (tehát a gyorsteszt nem a fertőzöttség megbízható kimutatására
alkalmas)!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon található üres négyzetbe!', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_008.png', ARRAY['valoszinuseg','bizonyitasok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b4a1b620-fe16-4cd3-92c2-94f7a3fcdb06', NOW(), 'e_matma_17maj_fl__009__c', 'e_matma_17maj_fl', 'e_matma_17maj_fl.pdf', 2017, 'emelt', 'majus', true, 'II', 9, 'c', 'Több részletben összesen 350 tonna árut szeretnénk vasúton elszállíttatni. Az egyik szál-
lítócég árajánlatában a szállítási díj két összetevőből áll. Egyrészt a szállított áru tömegé-
nek négyzetével arányos díjat kell fizetnünk, másrészt az áru tömegétől független állandó
alapdíjat is felszámítanak: ha egyszerre t tonna áru elszállítását rendeljük meg, akkor ezért
2
t
+
eurót kell fizetnünk.
205
10
a) Igazolja, hogy ha két részletben (két alkalommal) szállíttatnánk el a 350 tonna árut,
akkor a vasúti költség abban az esetben lenne a legkisebb, ha az árut két egyenlő
tömegű részre osztanánk!
A vasúti szállítás költségének csökkentése érdekében a 350 tonna tömegű árut n egyenlő
részre osztjuk, és azt tervezzük, hogy minden egyes alkalommal egy-egy részt szállítta-
tunk el a vasúttal. (n ∉ N+)
b) Igazolja, hogy a szállítócég ajánlata szerint az n alkalommal történő vasúti szállítás
250
12
+
költsége összesen
euró lenne!
n
205
n
A vasúti szállítás költségén kívül figyelembe kell vennünk azt is, hogy ha a 350 tonna
árut n egyenlő tömegű részre akarjuk szétosztatni, akkor a munka elvégzéséért nekünk
eurót kell fizetnünk. (n ∉ N+)
×
−
400
)1
(
n
c) Hány egyenlő tömegű részletre bontva lenne a legolcsóbb a 350 tonna áru elfuva-
roztatása?

a)
b)
c)
Ö.:', 16, '/images/e_matma_17maj_fl/crops/e_matma_17maj_fl_prob_009.png', ARRAY['egyenletek','differencialszamitas','szovegfeladas']::text[], false, false, '', true);

-- e_matma_18maj_fl (18 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0741280f-2994-46f5-ab02-f56fb10e0894', NOW(), 'e_matma_18maj_fl__001__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 1, 'a', 'Negyven egyetemi hallgató férfi egész kilogrammra kerekített testtömegéről ad tájékoz-
tatást az alábbi táblázat.
tömeg (kg) 53-56 57-60 61-64 65-68 69-72 73-76 77-80
2
3
4
11
9
6
5
gyakoriság
a) A táblázat alapján, az osztályközepek segítségével számítsa ki a 40 hallgató testtö-
megének átlagát és szórását! (Osztályközép: az osztály alsó és felső határának szám-
tani közepe.)
Egy reklámfilm forgatásához három „pehelysúlyú” és két „nehézsúlyú” fiatalt keresnek.
A „pehelysúlyúak” tömege legfeljebb 64 kg lehet, a „nehézsúlyúaké” pedig legalább 77 kg.
b) Hányféleképpen választhatják ki az öt szereplőt, ha mindegyikük a 40 egyetemista
közül kerül ki?
Péter – az egyik hallgató – öt érdemjegyet szerzett statisztika tantárgyból az előző félév-
ben. Jegyeinek mediánja a 3, módusza a 2, átlaga pedig 3,2. (Érdemjegy az 1, 2, 3, 4, 5
számok valamelyike lehet.)
c) Határozza meg Péter öt érdemjegyének az érdemjegyek átlagától számított átlagos
abszolút eltérését!

a)
b)
c)
Ö.:', 13, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_001.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8a1ba052-c23f-4675-a37d-f4dc93aba64b', NOW(), 'e_matma_18maj_fl__002__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 2, 'a', 'a) Egy síkbeli négyszög szögei (fokban mérve) egy olyan mértani sorozat egymást kö-
vető tagjai, amelynek hányadosa 3. Határozza meg a négyszög szögeit!', 12, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_002.png', ARRAY['sorozatok','geometria-sik','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ba35204-011d-4805-9e9e-7db3b7354d2e', NOW(), 'e_matma_18maj_fl__002__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 2, 'b', 'b) Egy konvex sokszög szögei (fokban mérve) egy olyan számtani sorozat egymást
követő tagjai, amelynek első tagja 143, differenciája 2. Határozza meg a sokszög
oldalainak számát!

a)
b)
Ö.:', 12, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_002.png', ARRAY['sorozatok','geometria-sik','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d08dcfc4-65ce-4878-8190-498c05077fee', NOW(), 'e_matma_18maj_fl__003__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 3, 'a', 'Oldja meg a valós számok halmazán a következő egyenlőtlenségeket!
<
−x
2
50
5
x
a)', 13, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_003.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('09cff053-d89a-40c8-8e01-9c6930c68233', NOW(), 'e_matma_18maj_fl__003__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 3, 'b', 'Oldja meg a valós számok halmazán a következő egyenlőtlenségeket!

2
≤
−
1
)
81
(
log
)
(
log
x
x
b)
9
3

a)
b)
Ö.:', 13, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_003.png', ARRAY['egyenletek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fbc57cfe-e805-441a-8a30-8637bb463ec9', NOW(), 'e_matma_18maj_fl__004__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 4, 'a', 'Egy cirkuszi sátor alsó része szabályos tizenkétszög alapú
egyenes hasáb, a felső része pedig szabályos tizenkétszög
alapú gúla, amelynek alaplapja a hasáb fedőlapjára illeszke-
dik.
Az alapélek hossza 5 méter, a hasáb alakú rész magassága
8 méter, a felső, gúla alakú rész magassága 3 méter.
A téli időszakban a sátrat olyan (egyforma) fűtőtestekkel fű-
tik, amelyek egyenként 200 m3 befűtésére elegendők.
a) Legalább hány ilyen fűtőtestre van szükség?
Titi és Jeromos zsonglőrök az egyik műsorszámukban több buzogányt dobálnak egymás-
nak. Mindkét zsonglőr nagyon ügyes, hiszen mindegyikük átlagosan csak háromszor hi-
bázik ezer esetből a buzogány elkapásakor (ezt úgy tekintjük, hogy minden elkapáskor
0,003 a hibázás valószínűsége). A két zsonglőr legújabb műsorszámában összesen 72 bu-
zogányelkapás szerepel.', 13, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_004.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('999454ae-83b9-4626-ae3d-15cbb9e31c53', NOW(), 'e_matma_18maj_fl__004__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'I', 4, 'b', 'Egy cirkuszi sátor alsó része szabályos tizenkétszög alapú
egyenes hasáb, a felső része pedig szabályos tizenkétszög
alapú gúla, amelynek alaplapja a hasáb fedőlapjára illeszke-
dik.
Az alapélek hossza 5 méter, a hasáb alakú rész magassága
8 méter, a felső, gúla alakú rész magassága 3 méter.
A téli időszakban a sátrat olyan (egyforma) fűtőtestekkel fű-
tik, amelyek egyenként 200 m3 befűtésére elegendők.

b) Mekkora a valószínűsége annak, hogy legfeljebb egy buzogányelkapási hiba csúszik
az előadásukba? Válaszát két tizedesjegyre kerekítve adja meg!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 13, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_004.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a2bbd278-b221-4b91-9909-cab588f44fe6', NOW(), 'e_matma_18maj_fl__005__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 5, 'a', '1
a) Mely egész számokra teljesül a [0; 2π] intervallumban a
<
egyenlőtlenség?
cos
x
2', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_005.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8457c186-987b-4c71-a9b1-aa57fffb7a67', NOW(), 'e_matma_18maj_fl__005__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 5, 'b', '<
−
+
−
x
x
2015
15
20
2
b) Hány olyan egész szám van, amelyre teljesül a
egyenlőt-
lenség?
−
4
x
{{formula:e_matma_18maj_fl_p12_001.png}}
1
)
(
x
f
2
pontot tartalmaz az f függvény grafikonja és a koordinátatengelyek által az első sík-
negyedben közbezárt síkidom? (A síkidom határolóvonalait is a síkidomhoz tarto-
zónak tekintjük.)

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_005.png', ARRAY['egyenletek','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e881c686-688b-41b6-a012-e1fbc5ed7800', NOW(), 'e_matma_18maj_fl__006__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 6, 'a', 'a) Az A, B és C nemüres halmazokról tudjuk a következőket: az A minden eleme
a B-nek is eleme, továbbá C-nek van olyan eleme, amelyik A-nak is eleme.
Az alábbi öt állítás mindegyikéről döntse el, hogy igaz vagy hamis! (Válaszait nem
kell indokolnia.)
(1) Van olyan eleme A-nak, amelyik C-nek is eleme.
(2) Nincs olyan eleme C-nek, amelyik B-nek is eleme.
(3) Ha valami eleme B-nek, akkor eleme A-nak is.
(4) Ha valami nem eleme B-nek, akkor az eleme C-nek.
(5) Ha valami nem eleme B-nek, akkor az nem eleme A-nak sem.
Egy 34 fős osztály matematikatanára az egyik óra elején egy rövid, öt kijelentést tartal-
mazó tesztet írat. A tanulóknak meg kell határozniuk a kijelentések logikai értékét (igaz
vagy hamis). A feladatok sorszámuk szerint fokozatosan nehezedők, ennek megfelelő
a pontozás is: az n-edik feladat esetén a helyes válasz n pontot ér, a hibás válaszért pedig
n pont levonás jár (n ∉ {1; 2; 3; 4; 5}). Tudjuk, hogy mind a 34 tanuló mind az öt teszt-
kérdésre válaszolt.', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_006.png', ARRAY['halmazok','logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cc1f4e9e-1d30-436f-8979-cc69903947d1', NOW(), 'e_matma_18maj_fl__006__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 6, 'b', 'b) Bizonyítsa be, hogy van két olyan tanuló, aki ugyanúgy töltötte ki a tesztlapot!', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_006.png', ARRAY['kombinatorika','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fe04837b-24a5-4f10-a48a-f51ce9b8e1c0', NOW(), 'e_matma_18maj_fl__006__c', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 6, 'c', 'c) Mutassa meg, hogy a teszttel elért összpontszám csak páratlan egész szám lehet!
Jól sikerült tesztet írt Adél, Béla és Csilla, az osztály három tanulója. Tesztjeikkel össze-
sen 39 pontot értek el.', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_006.png', ARRAY['logika','szamelmelet','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ad18e41e-a5f6-4dc9-8d7d-b274e9709ba0', NOW(), 'e_matma_18maj_fl__006__d', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 6, 'd', 'd) Hányféleképpen lehet három, 15-nél nem nagyobb páratlan egész szám összegeként
a 39-et felírni, ha az összeadandók sorrendjét is figyelembe vesszük?

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_006.png', ARRAY['kombinatorika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3a22c9cf-e867-4619-8b51-0b3c2dc0adee', NOW(), 'e_matma_18maj_fl__007__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 7, 'a', '+
+
=
≠
2
(x ∉ R, a, b, c ∉ R és
c
x
x
x
f
b
a
)
(
0
a
a) Számítsa ki az a, b és c értékét, ha az
2
50
{{formula:e_matma_18maj_fl_p16_002.png}}
=
dx
x
f
=
=
)
(
) függvényről tudjuk, hogy
és
, valamint
.
6
)
2
(
''f
2
)
6
(
''f
3
0', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_007.png', ARRAY['differencialszamitas','integralszamitas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8d31ea23-74fd-47f3-a57f-adfb78cf1c9b', NOW(), 'e_matma_18maj_fl__007__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 7, 'b', 'b) Határozza meg annak a P(0; 35) ponton átmenő egyenesnek az egyenletét, amely
1
2
+
+
−
=
érinti az
egyenletű parabolát!
3
8
x
x
y
2

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_007.png', ARRAY['differencialszamitas','egyenletek','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('59d1f11f-cb2e-44a1-ac80-687b3839d9b9', NOW(), 'e_matma_18maj_fl__008__a', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 8, 'a', 'Egy négyzetes oszlopnak (négyzet alapú egyenes hasábnak) pontosan négy olyan éle van,
amelyik 10 cm hosszú. Az oszlop testátlójának hossza 12,5 cm.
a) Számítsa ki a négyzetes oszlop felszínét!
Négyzetes oszlop alakú üveg akváriumot vettünk. A választott
akvárium felülről nyitott, négyzetlapjai függőleges síkúak (az
ábra szerint), és pontosan 288 liter víz fér bele. Azt szeretnénk
tudni, hogy a belső üvegfelületek káros algásodása szempontjá-
ból kedvező volt-e a választásunk.', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_008.png', ARRAY['geometria-ter','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('838cc9c8-3f04-476f-9052-f2b72e5d4670', NOW(), 'e_matma_18maj_fl__008__b', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 8, 'b', 'Egy négyzetes oszlopnak (négyzet alapú egyenes hasábnak) pontosan négy olyan éle van,
amelyik 10 cm hosszú. Az oszlop testátlójának hossza 12,5 cm.

b) Számítsa ki, hogy – a megadott feltételek mellett – hány deciméter hosszúak a lehető
legkisebb belső felületű akvárium (belső) élei!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_008.png', ARRAY['geometria-ter','egyenletek','differencialszamitas','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2450ea4a-ecad-42ee-b978-f67a5cd5f23f', NOW(), 'e_matma_18maj_fl__009__', 'e_matma_18maj_fl', 'e_matma_18maj_fl.pdf', 2018, 'emelt', 'majus', true, 'II', 9, NULL, 'Ottó osztálylottót szervez, melyben az 1, 2, 3, 4, 5, 6, 7, 8, 9 számok közül ötöt húznak
ki. Egy játékszelvényen ennek megfelelően pontosan öt számot kell megjelölni
(az alábbi ábra egy üres szelvényt és egy érvényesen kitöltött szelvényt mutat).

a) András legalább három találatot szeretne elérni, és ehhez a lehető legkevesebb szel-
vényt akarja kitölteni. Hány szelvényre van szüksége ahhoz, hogy legalább
az egyik szelvényen biztosan legyen legalább három találata?
b) Dóra és Zoli is véletlenszerűen (és érvényesen) kitölt egy-egy szelvényt. Mekkora
annak a valószínűsége, hogy pontosan négy közös számot jelölnek be?
c) Hány különböző módon lehet kitölteni az osztálylottószelvényt úgy, hogy a bejelölt
öt szám szorzata osztható legyen 3780-nal?

a)
b)
c)
Ö.:', 16, '/images/e_matma_18maj_fl/crops/e_matma_18maj_fl_prob_009.png', ARRAY['kombinatorika','valoszinuseg','szamelmelet','szovegfeladas']::text[], false, false, '', true);

-- e_matma_19maj_fl (23 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('23d4e773-bab2-4f6e-9776-054d599044d2', NOW(), 'e_matma_19maj_fl__001__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 1, 'a', 'Oldja meg a valós számok halmazán az alábbi egyenleteket!
+ +
2
2
x
x
2
31 2
8
0
a)
⋅
−=', 13, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0c73ec00-a51a-4553-bd75-344a4359d036', NOW(), 'e_matma_19maj_fl__001__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 1, 'b', 'Oldja meg a valós számok halmazán az alábbi egyenleteket!

3
4sin
sin
0
x
x
b)
−
=

a)
b)
Ö.:', 13, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_001.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('157d9e9c-2057-4fca-8ada-65c74f1855c6', NOW(), 'e_matma_19maj_fl__002__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 2, 'a', 'Több település közötti legkisebb költségű vezetékhálózat tervezésekor először egy teljes
gráfot készítettek. Ebben a gráfban minden települést a gráf egy csúcsával, minden ve-
zetékes kapcsolatot a gráf egy-egy élével jelöltek, majd a gráf minden élére ráírták, hogy
mennyibe kerülne az adott kapcsolat kiépítése. Ezután egyesével kitörölték a „költséges
éleket” úgy, hogy a törlés után megmaradó gráf összefüggő maradjon.
A teljes gráf élei kétharmadának törlése után végül egy (a legkisebb költségű hálózatot
megadó) fagráfot kaptak.
a) Hány település szerepelt a tervben?
Az őszi kispályás labdarúgó bajnokságban 10 település egy-egy csapata vett részt. Min-
den csapat egy mérkőzést játszott mindegyik másik csapattal; minden mérkőzés győztese
3, vesztese 0 pontot kapott, döntetlen esetén mindkét csapatnak 1-1 pont járt. A bajnokság
végén a 10 csapatnak összesen 130 pontja volt.', 11, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_002.png', ARRAY['grafelmelet','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d1beee05-9923-4125-a9cd-d94d08fd9d85', NOW(), 'e_matma_19maj_fl__002__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 2, 'b', 'Több település közötti legkisebb költségű vezetékhálózat tervezésekor először egy teljes
gráfot készítettek. Ebben a gráfban minden települést a gráf egy csúcsával, minden ve-
zetékes kapcsolatot a gráf egy-egy élével jelöltek, majd a gráf minden élére ráírták, hogy
mennyibe kerülne az adott kapcsolat kiépítése. Ezután egyesével kitörölték a „költséges
éleket” úgy, hogy a törlés után megmaradó gráf összefüggő maradjon.
A teljes gráf élei kétharmadának törlése után végül egy (a legkisebb költségű hálózatot
megadó) fagráfot kaptak.

b) Hány mérkőzés végződött döntetlenre?

a)
b)
Ö.:', 11, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_002.png', ARRAY['grafelmelet','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4dcfa218-96ef-4d17-898c-72ed8cbd6fd6', NOW(), 'e_matma_19maj_fl__003__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 3, 'a', 'Tekintsük az összes olyan hétjegyű természetes számot, amely az 1, 2, 3, 4, 5, 6, 7 szám-
jegyek mindegyikét tartalmazza.
a) Az összes ilyen hétjegyű számot felírjuk egy-egy 0,5 cm × 2 cm-es téglalap alakú
papírdarabra (minden papírdarabra egy hétjegyű számot írunk). Elegendő lesz-e a
kis téglalapok elkészítéséhez 8 darab A4-es papírlap? (Az A4-es papírlap téglalap
alakú, mérete 21 cm × 29,7 cm.)', 13, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_003.png', ARRAY['kombinatorika','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a066cf57-3005-4b7d-9a4e-1b41702c993c', NOW(), 'e_matma_19maj_fl__003__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 3, 'b', 'Tekintsük az összes olyan hétjegyű természetes számot, amely az 1, 2, 3, 4, 5, 6, 7 szám-
jegyek mindegyikét tartalmazza.

b) A megadott tulajdonságú hétjegyű számokat nagyság szerint növekvő sorba rendez-
zük. Igazolja, hogy a 721. helyen a 2 134 567 áll!
Egy 21 cm × 29,7 cm-es téglalap alakú (A4-es) papírlapot
összehajtottunk az egyik átlója mentén (az ábra szerint).', 13, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_003.png', ARRAY['kombinatorika','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0ce7a0eb-d86b-43be-ba4f-a0b224519787', NOW(), 'e_matma_19maj_fl__003__c', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 3, 'c', 'Tekintsük az összes olyan hétjegyű természetes számot, amely az 1, 2, 3, 4, 5, 6, 7 szám-
jegyek mindegyikét tartalmazza.

c) Számítsa ki, hogy mekkora az összehajtás után kétszeresen
fedett síkrész területe!

a)
b)
c)
Ö.:', 13, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_003.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3d6f5820-3d36-4fd8-b503-7ad2f61bc97a', NOW(), 'e_matma_19maj_fl__004__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 4, 'a', 'A tengerpart közelében, a vízszintes tengerfenékre négy érzékelő egységet telepítenek
(A, B, C, D). A tervrajzon derékszögű koordináta-rendszerben adták meg három érzékelő
helyzetét: A(0; –12,5), B(10; –7,5), C(48; 14).
a) Igazolja, hogy az A, B, C pontok nem illeszkednek egy egyenesre!
A tervrajzon a koordinátatengelyeken megadott 1 egység távolság a valóságban 20 mé-
ternek felel meg.', 14, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_004.png', ARRAY['koordinata-geometria','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3d156edd-2cff-4e2c-8850-8bac1bf31163', NOW(), 'e_matma_19maj_fl__004__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'I', 4, 'b', 'A tengerpart közelében, a vízszintes tengerfenékre négy érzékelő egységet telepítenek
(A, B, C, D). A tervrajzon derékszögű koordináta-rendszerben adták meg három érzékelő
helyzetét: A(0; –12,5), B(10; –7,5), C(48; 14).

b) Hány méter lehet az A és D érzékelők valódi távolsága, ha a D érzékelőt úgy telepí-
tik, hogy az A-tól és a B-től egyenlő távolságra, C-től pedig 1000 méter távolságra
legyen?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_004.png', ARRAY['koordinata-geometria','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8004e9b3-9ef5-47f3-a908-172af6c848eb', NOW(), 'e_matma_19maj_fl__005__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 5, 'a', 'Egy szabályos dobókockával kétszer dobunk. Az első dobás eredményét egy számtani
sorozat első tagjának, a második dobás eredményét a sorozat differenciájának tekintjük.
a) Az így kapható sorozatok között hány olyan van, amelyben az első 10 tag összege
kisebb 100-nál? (Két sorozatot különbözőnek tekintünk, ha az első tagjuk vagy a
differenciájuk eltér egymástól.)
Tekintsük az összes olyan négyjegyű pozitív egész számot, amelynek egyik számjegye
sem 0.', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_005.png', ARRAY['sorozatok','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3d0e8f3d-1b77-4868-8079-39bbbd5d3385', NOW(), 'e_matma_19maj_fl__005__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 5, 'b', 'Egy szabályos dobókockával kétszer dobunk. Az első dobás eredményét egy számtani
sorozat első tagjának, a második dobás eredményét a sorozat differenciájának tekintjük.

b) Hány olyan van ezek között, amelynek a négy számjegye (valamilyen sorrendben)
egy számtani sorozat négy egymást követő tagja?
Janka egy szabályos dobókockával négyszer dobott. Észrevette, hogy ha az ötödik dobá-
sának értéke 3 lenne, akkor az öt dobás átlaga is 3 lenne. Ha az ötödik dobásának értéke
4 lenne, akkor az öt dobás mediánja is 4 lenne. Ha az ötödik dobásának értéke 5 lenne,
akkor az öt dobás (egyetlen) módusza is 5 lenne.', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_005.png', ARRAY['sorozatok','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7f683805-69e3-4a74-ad34-5670d1c0f0b2', NOW(), 'e_matma_19maj_fl__005__c', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 5, 'c', 'Egy szabályos dobókockával kétszer dobunk. Az első dobás eredményét egy számtani
sorozat első tagjának, a második dobás eredményét a sorozat differenciájának tekintjük.

c) Mi lehetett Janka első négy dobása? (A dobások sorrendjétől eltekintünk.)

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_005.png', ARRAY['statisztika','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7d2135f4-e718-4287-a8ec-3b671d34f46f', NOW(), 'e_matma_19maj_fl__006__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 6, 'a', 'Egy r sugarú körcikk ívhossza i, a körcikk kerülete: 2r + i = 10 cm.
a) Legyen a körcikk sugara 2 cm! Határozza meg a körcikk α középponti szögét, T te-
rületét, továbbá azon forgáskúp alapkörének R sugarát, amelynek ez a körcikk a pa-
lástja!', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_006.png', ARRAY['geometria-sik','geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('64a05977-37bd-4e25-9f47-528f628266e9', NOW(), 'e_matma_19maj_fl__006__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 6, 'b', 'Egy r sugarú körcikk ívhossza i, a körcikk kerülete: 2r + i = 10 cm.

b) Igazolja, hogy a 10 cm kerületű körcikkek közül annak maximális a területe, amely-
nek a középponti szöge 2 radián nagyságú!', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_006.png', ARRAY['geometria-sik','differencialszamitas','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a261257f-6247-45d3-807a-acc42a36d4db', NOW(), 'e_matma_19maj_fl__006__c', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 6, 'c', 'Egy r sugarú körcikk ívhossza i, a körcikk kerülete: 2r + i = 10 cm.

c) Döntse el, hogy az alábbi állítás igaz vagy hamis! Válaszát indokolja!
Egy 10 cm kerületű körcikk területe mindig kisebb, mint egy 20 cm kerületű körcikk
területe.

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_006.png', ARRAY['geometria-sik','bizonyitasok','differencialszamitas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e93a855e-6ae2-4945-b4ee-4026413b666f', NOW(), 'e_matma_19maj_fl__007__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 7, 'a', 'Egy dobozban 4 piros és 3 zöld golyó van. A dobozba beteszünk még s darab sárga golyót.
A golyók közül visszatevéssel kihúzunk kettőt.
a) Határozza meg s értékét, ha 0,09 annak a valószínűsége, hogy mindkét kihúzott go-
lyó zöld!
Egy dobozban 4 piros, 3 zöld és k darab kék golyó van (k ≥ 1). A golyók közül visszatevés
nélkül kihúzunk hármat.', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_007.png', ARRAY['valoszinuseg','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d90611cb-d6f4-4e07-badf-5638ef8026a6', NOW(), 'e_matma_19maj_fl__007__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 7, 'b', 'Egy dobozban 4 piros és 3 zöld golyó van. A dobozba beteszünk még s darab sárga golyót.
A golyók közül visszatevéssel kihúzunk kettőt.

b) Igazolja, hogy annak a valószínűsége, hogy három különböző színű golyót húzunk,
72
k
.
(
7)(
6)(
5)
k
k
k
+
+
+', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_007.png', ARRAY['valoszinuseg','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e0c8291e-c4cc-4483-9bb1-ab177044cdf7', NOW(), 'e_matma_19maj_fl__007__c', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 7, 'c', 'Egy dobozban 4 piros és 3 zöld golyó van. A dobozba beteszünk még s darab sárga golyót.
A golyók közül visszatevéssel kihúzunk kettőt.

c) Határozza meg k értékét, ha annak a valószínűsége, hogy három különböző színű
golyót húzunk, megegyezik annak a valószínűségével, hogy mindhárom kihúzott
golyó kék!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_007.png', ARRAY['valoszinuseg','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2c30c67e-51f0-4802-b830-60967dda5796', NOW(), 'e_matma_19maj_fl__008__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 8, 'a', 'A Balaton vízfelületének hossza kb. 76,5 km, átlagos szélessége kb. 7,7 km.
a) Számítsa ki a Balaton átlagos vízmélységét, ha a tóban levő vízmennyiség becsült
térfogata 2 milliárd m3! Válaszát méterben, egy tizedesjegyre kerekítve adja meg!
Ádám és Misi szeretnék kerékpárral egy nap alatt megkerülni a Balatont. A tó körüli ke-
rékpárút hossza 205 km. Reggel 7-kor indulnak. Mikor ebédszünetet tartanak, megálla-
pítják, hogy átlagsebességük az ebédszünetig 16 km/h volt. A 60 perces ebédszünet után
továbbindulnak. Hogy még sötétedés előtt célba érjenek, átlagsebességüket 20 km/h-ra
növelik a hátralevő úton. Így valóban visszaérnek a kiindulási pontjukra este fél 8-ra.', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_008.png', ARRAY['geometria-ter','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5f81e945-f284-483b-9876-8edc045b1164', NOW(), 'e_matma_19maj_fl__008__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 8, 'b', 'A Balaton vízfelületének hossza kb. 76,5 km, átlagos szélessége kb. 7,7 km.

b) Mikor tartottak a fiúk ebédszünetet?
A tó szélessége Balatonvilágos és Balatonalmádi között a legnagyobb, kb. 12,7 km.', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_008.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b2292751-2ea3-43ec-9db4-41290ad671e0', NOW(), 'e_matma_19maj_fl__008__c', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 8, 'c', 'A Balaton vízfelületének hossza kb. 76,5 km, átlagos szélessége kb. 7,7 km.

c) Legalább hány méterrel kell a vízfelszín fölé emelkednie a balatonvilágosi kikötő-
ben elhelyezett jelzőoszlopnak ahhoz, hogy az oszlop tetején rögzített viharjelző ké-
szülék fényjelzése – a Föld görbületét is figyelembe véve – látható legyen a bala-
tonalmádi strandon fürdőzők számára is? (A Földet tekintsük egy 6370 kilométer
sugarú gömbnek.)

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_008.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3a7803bf-396d-44f2-b97a-1bc04b08f880', NOW(), 'e_matma_19maj_fl__009__a', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 9, 'a', 'Az ábrán az ]x1; x2[ nyílt intervallumon értelmezett
f függvény grafikonja, valamint az f első derivált-
függvényének és az f második deriváltfüggvényé-
nek grafikonja látható. A három függvény grafi-
konját valamilyen sorrendben az a, b, c betűkkel
jelöltük.
Az alábbi táblázat A jelű állítása szerint az ábrán
a jelöli az f függvényt, b jelöli az f első derivált-
függvényét ( f ′ ), és c jelöli az f második derivált-
függvényét ( f ′′).
Ehhez hasonlóan felsoroltuk az összes többi lehet-
séges megfeleltetést is.
a) Állapítsa meg a B, C, D, E, F állítások logikai
értékét! Válaszait itt nem kell indokolnia.
(Az A állítás hamis, ezt már megadtuk.)
f ′
f
f ′′  az állítás igaz/hamis
hamis
a
b
c
A
a
c
b
B
b
a
c
C
b
c
a
D
c
a
b
E
c
b
a
F', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_009.png', ARRAY['logika','differencialszamitas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('eb5fcbe4-d6dd-4314-a966-be62554f47b6', NOW(), 'e_matma_19maj_fl__009__b', 'e_matma_19maj_fl', 'e_matma_19maj_fl.pdf', 2019, 'emelt', 'majus', true, 'II', 9, 'b', 'Az ábrán az ]x1; x2[ nyílt intervallumon értelmezett
f függvény grafikonja, valamint az f első derivált-
függvényének és az f második deriváltfüggvényé-
nek grafikonja látható. A három függvény grafi-
konját valamilyen sorrendben az a, b, c betűkkel
jelöltük.
Az alábbi táblázat A jelű állítása szerint az ábrán
a jelöli az f függvényt, b jelöli az f első derivált-
függvényét ( f ′ ), és c jelöli az f második derivált-
függvényét ( f ′′).
Ehhez hasonlóan felsoroltuk az összes többi lehet-
séges megfeleltetést is.

b) A függvény és deriváltfüggvényei közötti kapcsolatokra alapozva indokolja meg,
miért hamis az A állítás!
Adottak a derékszögű koordináta-rendszerben az A, B, C, D pontok: A(0; 4), B(0; 1),
2
x
C(p; 1), D(p; 4), ahol p > 0. Az
egyenletű görbe felezi az ABCD téglalap területét.
y =
4
c) Igazolja, hogy p > 4, majd számítsa ki p értékét!

a)
b)
c)
Ö.:', 16, '/images/e_matma_19maj_fl/crops/e_matma_19maj_fl_prob_009.png', ARRAY['differencialszamitas','fuggvenyek','bizonyitasok']::text[], false, false, '', true);

-- e_matma_20maj_fl (17 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('84489fd6-d0ca-4f14-abaa-750c343d06ae', NOW(), 'e_matma_20maj_fl__001__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 1, 'a', 'Az ABCD téglalap oldalainak hossza AB = 17 cm és AD = 8 cm.
a) Mekkora területű részt fed le a téglalapból az A középpontú, 17 cm sugarú kör?', 12, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_001.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('22f5dfd5-e431-47fb-8e86-a9f2cef91458', NOW(), 'e_matma_20maj_fl__001__b', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 1, 'b', 'Az ABCD téglalap oldalainak hossza AB = 17 cm és AD = 8 cm.

b) Az APCQ rombusz P csúcsa a téglalap AB oldalának belső pontja, Q csúcsa pedig a
CD oldal belső pontja. Számítsa ki a rombusz kerületét!

a)
b)
Ö.:', 12, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_001.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('70880ffc-9174-4ba0-816b-cb9ea8d39731', NOW(), 'e_matma_20maj_fl__002__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 2, 'a', 'a) Oldja meg a valós számok halmazán az alábbi egyenletet!
2
2
7
0, 25
x
x
x
−
=
+
−
b) Hány olyan egész szám van, amelyik megoldása az alábbi egyenlőtlenségnek?
2
log (
200)
20
x −
<
2

a)
b)
Ö.:', 13, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_002.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('46b2e007-b255-44fc-b2f7-3ab341f553ea', NOW(), 'e_matma_20maj_fl__003__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 3, 'a', 'Az interneten 2018 nyarán több hírportálon is megjelent az alábbi két hír.
I. 2018 júliusában az álláskeresők 26,0%-a, 67 000 ember tartósan (több mint egy éve)
keresett munkát;
II. 2018 júliusában az álláskeresők aránya a munkavállalási korú népességhez viszonyítva
3,8%, a gazdaságilag aktív népességhez viszonyítva pedig 5,6% volt. (Feltételezhetjük,
hogy a munkavállalási korú népességnek részhalmaza a gazdaságilag aktív népesség.)
a) Számítsa ki a közölt adatok alapján az álláskeresők számát! Válaszát tízezer főre
kerekítve adja meg!', 12, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_003.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d941dd85-bc25-481f-8771-00139662afe4', NOW(), 'e_matma_20maj_fl__003__b', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 3, 'b', 'Az interneten 2018 nyarán több hírportálon is megjelent az alábbi két hír.
I. 2018 júliusában az álláskeresők 26,0%-a, 67 000 ember tartósan (több mint egy éve)
keresett munkát;
II. 2018 júliusában az álláskeresők aránya a munkavállalási korú népességhez viszonyítva
3,8%, a gazdaságilag aktív népességhez viszonyítva pedig 5,6% volt. (Feltételezhetjük,
hogy a munkavállalási korú népességnek részhalmaza a gazdaságilag aktív népesség.)

b) A munkavállalási korú népességnek hány százaléka volt a gazdaságilag aktív népes-
ség?
Egy szintén 2018-as, internetes hír arról szól, hogy 2017 decemberében a nemzetgazda-
sági bruttó havi átlagkereset 328 000 Ft volt, a bruttó havi keresetek mediánja pedig
256 000 Ft körül lehetett.', 12, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_003.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('05bb9a5a-fd63-40b5-b9dc-52fab318fa50', NOW(), 'e_matma_20maj_fl__003__c', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 3, 'c', 'Az interneten 2018 nyarán több hírportálon is megjelent az alábbi két hír.
I. 2018 júliusában az álláskeresők 26,0%-a, 67 000 ember tartósan (több mint egy éve)
keresett munkát;
II. 2018 júliusában az álláskeresők aránya a munkavállalási korú népességhez viszonyítva
3,8%, a gazdaságilag aktív népességhez viszonyítva pedig 5,6% volt. (Feltételezhetjük,
hogy a munkavállalási korú népességnek részhalmaza a gazdaságilag aktív népesség.)

c) Adjon meg 7 olyan különböző pozitív számot, amelyek átlaga nagyobb, mint a me-
diánja! Adja meg a hét szám átlagát és mediánját is!', 12, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_003.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('154a61e6-9949-4894-83c1-3ebed0644acd', NOW(), 'e_matma_20maj_fl__003__d', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 3, 'd', 'Az interneten 2018 nyarán több hírportálon is megjelent az alábbi két hír.
I. 2018 júliusában az álláskeresők 26,0%-a, 67 000 ember tartósan (több mint egy éve)
keresett munkát;
II. 2018 júliusában az álláskeresők aránya a munkavállalási korú népességhez viszonyítva
3,8%, a gazdaságilag aktív népességhez viszonyítva pedig 5,6% volt. (Feltételezhetjük,
hogy a munkavállalási korú népességnek részhalmaza a gazdaságilag aktív népesség.)

d) Virág úr úgy tudja, hogy ő többet keres, mint a dolgozók fele. Véleménye szerint
emiatt neki az átlagkeresetnél többet kellene kapnia, mégis csak 283 000 Ft a havi
bruttó bére. Ezért azt gondolja, hogy a közölt statisztikai adatok hibásak.
Indokolja röviden (1-2 mondatban), hogy Virág úr következtetése miért nem meg-
alapozott!

a)
b)
c)
d)
Ö.:', 12, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_003.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('34467cfd-30f9-4f83-9c97-a9186e24a373', NOW(), 'e_matma_20maj_fl__004__', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'I', 4, NULL, '1
Adott az
egyenletű e egyenes.
7
y
x
=
−
2
a) Egy négyzet egyik csúcsa az origó, egyik átlójának egyenese pedig az e.
Számítsa ki a négyzet középpontjának koordinátáit és a négyzet területét!
2
(
4)
x
−
7
y
b) Számítsa ki annak a korlátos síkidomnak a területét, amelyet az
= −
+
4
egyenletű parabola és az e egyenes határol!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_004.png', ARRAY['koordinata-geometria','geometria-sik','integralszamitas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('73315f25-15d5-4a94-8b8b-01d95796376e', NOW(), 'e_matma_20maj_fl__005__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 5, 'a', 'Egy szigorúan monoton növekvő sorozat első négy tagja az {1; 2; 3; 4; 5; 6; 7; 8; 9} hal-
maz eleme. A sorozat tagjai között nincsenek szomszédos egész számok.
a) Hányféleképpen választható meg a sorozat első négy tagja?
A háromjegyű pozitív egész számok közül véletlenszerűen kiválasztunk egyet.
b) Határozza meg annak a valószínűségét, hogy a kiválasztott szám számjegyei balról
jobbra egyesével nőnek vagy egyesével csökkennek.
Az a, b, c és d szomszédos számjegyek a tízes számrendszerben, a ≠ 0, és a < b < c < d.
Az N szám kilences számrendszerbeli alakja abc , nyolcas számrendszerbeli alakja pedig
bcd .
c) Határozza meg az N szám tízes számrendszerbeli alakját!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_005.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5f510e22-bfae-4aea-bd50-664796678ad4', NOW(), 'e_matma_20maj_fl__006__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 6, 'a', 'Egy szabályos tízszög legrövidebb átlója 6 cm hosszú.
a) Határozza meg a tízszög oldalának hosszát!
Legyen G egy tízpontú egyszerű gráf, melynek összesen 6 éle van.
b) Igaz-e, hogy G csúcsai közt biztosan van legalább két olyan, amelynek a fokszáma
legalább 2? Válaszát indokolja!
Egy n pontú teljes gráf egyik élét pirosra színeztük (n ≥ 3). Ezután a többi él közül vélet-
lenszerűen kiválasztunk egyet. Legyen az A esemény az, hogy a kiválasztott élnek és a
pirosra színezett élnek van közös csúcsa, a B esemény pedig az, hogy nincs közös csú-
csuk.
c) Ha az A és a B esemény egyenlő valószínűségű, akkor hány pontja van a gráfnak?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_006.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('603ba9d8-5c9b-4950-8548-18582b3ce7a8', NOW(), 'e_matma_20maj_fl__007__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 7, 'a', 'Egy társasjátékban a játékosok egyforma méretű golyókból négy ré-
2 + 2
2 + 3
2 + 4
2 = 30 golyó
tegű piramist építenek (ábra). A piramist 1
alkotja, amelyek közül 15 sötét, a többi 15 pedig világos.
A piramis építéséhez szükséges 30 golyót először kikészítik egy do-
bozba, majd az építés során a golyókat véletlenszerűen veszik ki a do-
bozból.
a) Mekkora annak a valószínűsége, hogy a fölülről számított második rétegbe kerülő 4
golyó mindegyike sötét színű lesz?
darab golyóból áll (n ∈ N+).
Az n rétegű piramis
2
2
2
1
2
...
n
+
+
+
(
1)(2
1)
n n
n
+
+
2
2
2
b) Bizonyítsa be (például teljes indukcióval), hogy
.
1
2
...
n
+
+
+
=
6
A kétrétegű piramis 5 golyóból áll (ábra). Az alsó réteget alkotó 4 go-
lyót egy vízszintes síklapon helyezzük el úgy, hogy az egymás melletti
golyók érintsék egymást, középpontjaik pedig egy négyzet csúcsai le-
gyenek. A golyók sugara 1 cm.', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_007.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1d906099-dcbe-4673-b16a-85942c0fcef1', NOW(), 'e_matma_20maj_fl__007__c', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 7, 'c', 'Egy társasjátékban a játékosok egyforma méretű golyókból négy ré-
2 + 2
2 + 3
2 + 4
2 = 30 golyó
tegű piramist építenek (ábra). A piramist 1
alkotja, amelyek közül 15 sötét, a többi 15 pedig világos.
A piramis építéséhez szükséges 30 golyót először kikészítik egy do-
bozba, majd az építés során a golyókat véletlenszerűen veszik ki a do-
bozból.

c) Számítsa ki a kétrétegű piramis magasságát!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_007.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b35d2853-d036-4e85-97d1-d556abf0cc73', NOW(), 'e_matma_20maj_fl__008__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 8, 'a', 'Egy élelmiszergyártó kisüzem levesporkészítő részlegében 700 kg levespor van raktáron.
A raktárkészlet csökkentése érdekében az eladással foglalkozó vezető azt tervezi, hogy
minden hónapban először (eladással, jótékony célú ajándékozással) 24%-kal csökkentik
az aktuális raktárkészletet, ezután a készletet megnövelik a havonta előállított 60 kg le-
vesporral (így például az első hónap végén 592 kg levespor lesz raktáron).
a) Ha sikerül a terv megvalósítása, akkor összesen hány kg levesport adnak/ajándékoz-
nak el 18 hónap alatt?', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_008.png', ARRAY['sorozatok','exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('267c4df1-290e-40d8-88dc-0f863731b7f7', NOW(), 'e_matma_20maj_fl__008__b', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 8, 'b', 'Egy élelmiszergyártó kisüzem levesporkészítő részlegében 700 kg levespor van raktáron.
A raktárkészlet csökkentése érdekében az eladással foglalkozó vezető azt tervezi, hogy
minden hónapban először (eladással, jótékony célú ajándékozással) 24%-kal csökkentik
az aktuális raktárkészletet, ezután a készletet megnövelik a havonta előállított 60 kg le-
vesporral (így például az első hónap végén 592 kg levespor lesz raktáron).

b) Igazolja, hogy a tervezett módszert 18 hónapon túl (gondolatban akár végtelen so-
káig) is alkalmazva a raktárkészlet minden hónapban csökken ugyan, de soha nem
csökken 250 kg alá!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_008.png', ARRAY['sorozatok','bizonyitasok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('28ff99b9-c72a-4001-a57e-36660556ca9e', NOW(), 'e_matma_20maj_fl__009__a', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 9, 'a', 'Az 1917-ben gyártott és nosztalgiajárműként megőrzött
109.109 sorozatszámú gőzmozdony legnagyobb, úgyne-
vezett hajtókerekének átmérője 1740 mm. A mozdony
maximális engedélyezett sebessége 90 km/h.
a) Mekkora a hajtókerék percenkénti fordulatszáma
90 km/h sebességnél?
Több próbaút során is vizsgálták, hogy a mozdony szénfogyasztása hogyan függ a moz-
dony átlagsebességétől. A mérések szerint v km/h átlagsebesség esetén (50 < v < 100) jó
2
0,5
65
3800
v
v
közelítéssel
kg volt az óránkénti szénfogyasztás. A mozdony a hoz-
−
+
zákapcsolt szerkocsiban 6,1 tonna szenet tud magával vinni.', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_009.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('83822dc1-f11d-4c84-bb5e-4f4280cd6e8e', NOW(), 'e_matma_20maj_fl__009__b', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 9, 'b', 'Az 1917-ben gyártott és nosztalgiajárműként megőrzött
109.109 sorozatszámú gőzmozdony legnagyobb, úgyne-
vezett hajtókerekének átmérője 1740 mm. A mozdony
maximális engedélyezett sebessége 90 km/h.

b) Számítsa ki, hogy 60 km/h átlagsebesség esetén (a megadott modell szerint) hány
km hosszúságú útra elegendő a 6,1 tonna szénkészlet!', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_009.png', ARRAY['szovegfeladas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('83fb50bd-9933-49a0-8642-db3325e3c4b1', NOW(), 'e_matma_20maj_fl__009__c', 'e_matma_20maj_fl', 'e_matma_20maj_fl.pdf', 2020, 'emelt', 'majus', true, 'II', 9, 'c', 'Az 1917-ben gyártott és nosztalgiajárműként megőrzött
109.109 sorozatszámú gőzmozdony legnagyobb, úgyne-
vezett hajtókerekének átmérője 1740 mm. A mozdony
maximális engedélyezett sebessége 90 km/h.

c) Határozza meg azt az átlagsebességet, amelynél a 6,1 tonna szén a lehető leghosz-
szabb útra elegendő!

a)
b)
c)
Ö.:', 16, '/images/e_matma_20maj_fl/crops/e_matma_20maj_fl_prob_009.png', ARRAY['differencialszamitas','fuggvenyek','szovegfeladas']::text[], false, false, '', true);

-- e_matma_21maj_fl (21 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ca0d109-ac8c-4102-8d03-dc3945ba0d9c', NOW(), 'e_matma_21maj_fl__001__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 1, 'a', 'a) Igazolja, hogy bármely hat egymást követő természetes szám szorzata osztható
45-tel!', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_001.png', ARRAY['bizonyitasok','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1a4d67c0-0c17-4e02-b0fe-4a68da0bc8d9', NOW(), 'e_matma_21maj_fl__001__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 1, 'b', 'b) Igaz-e, hogy bármely öt egymást követő páratlan természetes szám szorzata osztható
45-tel? (Válaszát indokolja!)', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_001.png', ARRAY['szamelmelet','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b4cdb85a-087b-443c-9ade-f447d2914956', NOW(), 'e_matma_21maj_fl__001__c', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 1, 'c', 'c) Hány olyan megoldása van a 45 = 3 + 5 + a + b + c egyenletnek, amelyben a, b és c
különböző páratlan természetes számok, és 5 < a < b < c is teljesül?', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_001.png', ARRAY['kombinatorika','szamelmelet','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d6046310-6a46-4a70-ba00-c9ae84601bce', NOW(), 'e_matma_21maj_fl__001__d', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 1, 'd', 'd) Határozza meg az (A ∨ B) → C állítás logikai értékét az A, B és C kijelentések
különböző lehetséges logikai értékei esetén, és töltse ki ennek megfelelően az alábbi
igazságtáblázatot! (Válaszait itt nem szükséges indokolnia.)
A
B
C
(A ∨ B) → C
i
i
i
i
i
h
i
h
i
i
h
h
h
i
i
h
i
h
h
h
i
h
h
h

a)
b)
c)
d)
Ö.:', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_001.png', ARRAY['logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b85e4147-be30-4b59-b7a8-208026ef987a', NOW(), 'e_matma_21maj_fl__002__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 2, 'a', 'A Budavári Siklót 1870-ben építették. Korabeli források
szerint a sikló (hegyoldali vasútvonal) kivitelezője,
Wohlfarth Henrik a pálya eredeti tervekben szereplő kb.
33 fokos hajlásszögét – ma már nem tudni, milyen okból –
30 fokra csökkentette. A kivitelezés során a felső állomás
helye változatlan maradt, az alsó állomás azonban a ter-
vekhez képest 6 méterrel feljebb került. (Az alsó állomás
tervezett és valóságos helyét összekötő képzeletbeli egye-
nes merőleges a földfelszínre.)
a) Határozza meg a sikló pályájának hosszát és a pálya
szintemelkedését!
A feljegyzések szerint a millennium évében, 1896-ban a
sikló összesen 670 ezer utast szállított. Tételezzük fel,
hogy a sikló egy napi üzemideje 14 óra volt, s kéthetente
egy napra karbantartás céljából leállították a közlekedését,
azaz megközelítőleg 340 napot üzemelt az év során. A me-
netek közti átlagos követési időköz 10 perc volt.
Akkoriban egy-egy kocsi egyszerre 22 utast szállíthatott.
A pályán összesen két kocsi közlekedik: egy menetben az
egyik felfelé, a másik lefelé halad ugyanabban az időben.', 12, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_002.png', ARRAY['trigonometria','geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('39b0f876-76b8-49f3-9b00-f9ca0c4f8260', NOW(), 'e_matma_21maj_fl__002__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 2, 'b', 'A Budavári Siklót 1870-ben építették. Korabeli források
szerint a sikló (hegyoldali vasútvonal) kivitelezője,
Wohlfarth Henrik a pálya eredeti tervekben szereplő kb.
33 fokos hajlásszögét – ma már nem tudni, milyen okból –
30 fokra csökkentette. A kivitelezés során a felső állomás
helye változatlan maradt, az alsó állomás azonban a ter-
vekhez képest 6 méterrel feljebb került. (Az alsó állomás
tervezett és valóságos helyét összekötő képzeletbeli egye-
nes merőleges a földfelszínre.)

b) A megadott adatok alapján számítsa ki, hogy kb. hány százalékos volt a férőhelyek
átlagos kihasználtsága 1896-ban!

a)
b)
Ö.:', 12, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_002.png', ARRAY['szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a70ff57a-22c2-49cf-b095-1423a76e048b', NOW(), 'e_matma_21maj_fl__003__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy egyetemi előadáson 32-en ülnek a kisteremben. Ha négy lány távozna, akkor a jelen-
lévők több mint 60%-a fiú lenne. Ha azonban a 32 főhöz további hat lány csatlakozna,
akkor a jelenlévők több mint fele lenne lány.
a) Hány fiú és hány lány lehet jelen az előadáson?
Az egyetem több ezer hallgatójának 60%-a fiú, 40%-a lány. (Ezt tekinthetjük úgy, hogy
0,6 annak a valószínűsége, hogy egy véletlenszerűen választott hallgató fiú, és 0,4 annak a
valószínűsége, hogy lány.)', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_003.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5e02c3bd-53a4-4508-b4c0-3437436dcb6d', NOW(), 'e_matma_21maj_fl__003__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 3, 'b', 'Egy egyetemi előadáson 32-en ülnek a kisteremben. Ha négy lány távozna, akkor a jelen-
lévők több mint 60%-a fiú lenne. Ha azonban a 32 főhöz további hat lány csatlakozna,
akkor a jelenlévők több mint fele lenne lány.

b) Ha az egyetem büféjében egy asztalhoz véletlenszerűen ül le négy hallgató, akkor
mennyi annak a valószínűsége, hogy több fiú van közöttük, mint lány?
Ha három lányhallgató találkozik véletlenszerűen, akkor 0,008 annak a valószínűsége,
hogy mindegyikük rendszeresen sportol.', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_003.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2b86117d-fb1d-4be1-af9a-355d23b8b720', NOW(), 'e_matma_21maj_fl__003__c', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 3, 'c', 'Egy egyetemi előadáson 32-en ülnek a kisteremben. Ha négy lány távozna, akkor a jelen-
lévők több mint 60%-a fiú lenne. Ha azonban a 32 főhöz további hat lány csatlakozna,
akkor a jelenlévők több mint fele lenne lány.

c) A lányok hányadrésze sportol rendszeresen?

a)
b)
c)
Ö.:', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_003.png', ARRAY['valoszinuseg','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3cc0fbd1-dc6e-4a65-b7bf-bacf86a6872d', NOW(), 'e_matma_21maj_fl__004__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 4, 'a', '2
4
0
x
y
Adott az
egyenletű parabola és az x – y = 5 egyenletű g egyenes.
−
=
a) Igazolja, hogy a parabola fókuszpontja az F(0; 1) pont!', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_004.png', ARRAY['geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('62ba0cae-198d-4bd8-aa90-44f0fc0674b0', NOW(), 'e_matma_21maj_fl__004__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 4, 'b', '2
4
0
x
y
Adott az
egyenletű parabola és az x – y = 5 egyenletű g egyenes.
−
=

b) Írja fel annak a körnek az egyenletét, amelynek középpontja a g egyenesen van,
valamint átmegy a P(0; –1) ponton és a parabola F fókuszpontján is!', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_004.png', ARRAY['koordinata-geometria','egyenletek','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5aa5b9a8-d8d3-4e72-a322-42a3e7c03cbb', NOW(), 'e_matma_21maj_fl__004__c', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'I', 4, 'c', '2
4
0
x
y
Adott az
egyenletű parabola és az x – y = 5 egyenletű g egyenes.
−
=

c) Adja meg a parabola g egyenessel párhuzamos érintőjének egyenletét!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 13, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_004.png', ARRAY['koordinata-geometria','differencialszamitas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3d33c107-a3d9-4b24-be0e-f8989c2c73c5', NOW(), 'e_matma_21maj_fl__005__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 5, 'a', 'Kovács úr új autót vásárolt 5 millió forintért. Egy matematikai modell szerint az autó egy
év alatt elveszíti az aktuális értékének 12%-át.
a) Ha csak az értékvesztést vesszük figyelembe, akkor hány teljes év elteltével ér
1,5 millió forintnál kevesebbet Kovács úr autója?
A Precíz Kft. havi amortizációval (értékvesztéssel) számolja ki a gépjármű aktuális érté-
két. (Havi amortizáció: az autó értéke minden hónapban az előző havi értékének ugyan-
akkora százalékával csökken.)', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_005.png', ARRAY['exponencialis','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f44970d1-f646-4d05-a857-8bc38e37ec14', NOW(), 'e_matma_21maj_fl__005__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 5, 'b', 'Kovács úr új autót vásárolt 5 millió forintért. Egy matematikai modell szerint az autó egy
év alatt elveszíti az aktuális értékének 12%-át.

b) Mutassa meg, hogy ha az éves értékvesztés 12%-os, akkor a havi amortizáció meg-
közelítőleg 1,06%-os!
Kovács úr szeretné eladni törésmentes és jó állapotú autóját a Precíz Kft.-nek.
A Kft. szórólapján az áll, hogy kétféleképpen is kiszámítják az autó aktuális értékét, és
az eladó számára kedvezőbb árat garantálják.
I. módszer: a jelenlegi akciójukban 12 hónapot levonnak az autó valós életkorából, majd
1,06%-os havi amortizációval számolják ki az autó értékét.
II. módszer: az autó által megtett kilométerek alapján számítják ki az autó „életkorát”
úgy, hogy évente átlagosan 15 000 km-es megtett utat feltételeznek; ebben az esetben
azonban 1,2%-os havi amortizációval számolnak (az 1,06% helyett), és nincsen 12 hónap
kedvezmény.', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_005.png', ARRAY['exponencialis','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('981d4209-44ee-4889-8efd-01a3b968c83c', NOW(), 'e_matma_21maj_fl__005__c', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 5, 'c', 'Kovács úr új autót vásárolt 5 millió forintért. Egy matematikai modell szerint az autó egy
év alatt elveszíti az aktuális értékének 12%-át.

c) Melyik számítási módszer a kedvezőbb Kovács úr számára, ha az autója 8 éves 5 hó-
napos, és az autó eddig 91 250 km utat tett meg?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_005.png', ARRAY['exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('deca82ad-ba2f-46b2-91b4-f274aae496d8', NOW(), 'e_matma_21maj_fl__006__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 6, 'a', 'a) Egy szabályos dobókockával hatszor dobtunk. A dobott számok egyetlen módusza,
a mediánja és az átlaga – ebben a sorrendben – egy szigorúan monoton növekvő
számtani sorozat három szomszédos tagja.
Adjon meg egy megfelelő dobássorozatot, és igazolja, hogy a megadott dobássorozat
a feltételeknek megfelel!
Igaz-e, hogy a megadott hat szám szórása is tagja ugyanennek a számtani sorozatnak?', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_006.png', ARRAY['statisztika','sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('03295229-9ca8-418f-8155-a955be05cfae', NOW(), 'e_matma_21maj_fl__006__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 6, 'b', 'b) Egy szabályos dobókockával háromszor dobunk. Mennyi annak a valószínűsége,
hogy a másodiknak dobott szám éppen a másik két dobott szám átlaga?

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_006.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8c505b5d-cd7a-42d1-a090-efd6599adc12', NOW(), 'e_matma_21maj_fl__007__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 7, 'a', 'a) Egy tömör fából készült forgáshenger magassága 30 cm, felszíne 10 000 cm2.
A hengerből egy olyan forgáskúpot készítenek, amelynek az alapköre és a magas-
sága megegyezik a hengerével.
A henger térfogatának hány százaléka lesz forgács, és mekkora a kúp térfogata?
b) Határozza meg a 10 000 cm2 felszínű forgáshengerek közül a legnagyobb térfogatú
henger alapkörének a sugarát és a henger magasságát!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_007.png', ARRAY['geometria-ter','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8025d446-7294-487d-89f4-00333ec858b2', NOW(), 'e_matma_21maj_fl__008__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 8, 'a', 'A rejtvényújságok egyik kedvelt feladattípusa a
számpiramis. Az előírás szerint a számpiramis
üres mezőibe pozitív egész számokat kell írni
úgy, hogy az egymás mellé kerülő számok ösz-
szege megegyezzen a föléjük írt számmal.
Az ábrán látható számpiramisban a 13, 7, 36, 29,
32 és a 65 kezdőszámok adottak.
a) Számítsa ki a, b és c értékét!
1852-ben egy londoni diák az Anglia megyéit áb-
rázoló térkép színezése közben úgy találta, hogy a
megyék „helyes” színezéséhez legfeljebb négy
színre van szükség. (Helyes színezés esetén a kö-
zös határszakasszal rendelkező megyék külön-
böző színűek.) A diák sejtésének általánosítása
tetszőleges térképek esetére (négyszín-tétel) so-
káig megoldatlan matematikai probléma volt.
A térképrészleten Tolna megye és négy megye-
szomszédja látható. Az öt megyét legfeljebb négy
színnel színezzük ki (piros, sárga, kék és zöld).', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_008.png', ARRAY['egyenletek','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e160747a-698b-454b-8a9b-be34876be05b', NOW(), 'e_matma_21maj_fl__008__b', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 8, 'b', 'A rejtvényújságok egyik kedvelt feladattípusa a
számpiramis. Az előírás szerint a számpiramis
65
üres mezőibe pozitív egész számokat kell írni
úgy, hogy az egymás mellé kerülő számok ösz-
36
29
32
szege megegyezzen a föléjük írt számmal.
Az ábrán látható számpiramisban a 13, 7, 36, 29,
13
7
a
b
c
32 és a 65 kezdőszámok adottak.

b) Hányféleképpen színezhető helyesen ez a térképrészlet?
(Két színezés különböző, ha van legalább egy megye, melynek a két színezésben
más a színe.)

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_008.png', ARRAY['grafelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2c5abbe2-39e8-4f20-b5a3-ff132abf2123', NOW(), 'e_matma_21maj_fl__009__a', 'e_matma_21maj_fl', 'e_matma_21maj_fl.pdf', 2021, 'emelt', 'majus', true, 'II', 9, 'a', '2
1
1
(n ∈ N+).
a) Igazolja, hogy
=
−
2
2
n
n
(
1)
1
n
+
+
−
2
a
b) Számítsa ki az
sorozat első négy tagjának az összegét!
=
n
2
(
1)
1
n
+
−
Válaszát a
b  alakban adja meg, ahol a és b relatív prím pozitív egész számok!

c) Határozza meg a
lim(
...
)
a
a
a
határértéket!
+
+
+
1
2
n
n
→∞

a)
b)
c)
Ö.:', 16, '/images/e_matma_21maj_fl/crops/e_matma_21maj_fl_prob_009.png', ARRAY['bizonyitasok','algebra']::text[], false, false, '', true);

-- e_matma_22maj_fl (21 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ca1dbbfa-6536-4822-852b-13a99a2071e8', NOW(), 'e_matma_22maj_fl__001__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 1, 'a', 'a) Egy szabályos dobókockával 7-szer dobunk, és a dobott számokat összeadjuk. Hány
olyan különböző dobássorozat van, amelyben a hét dobott szám összege 9? (A do-
bott számok sorrendje is számít.)', 14, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_001.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2ce21f75-e428-4f26-b5ad-c635cdd55ea0', NOW(), 'e_matma_22maj_fl__001__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 1, 'b', 'b) Egy szabályos dobókockával 8-szor dobtunk. Az első hét dobás 2, 1, 3, 5, 4, 3, 5 volt.
Mi lehetett a nyolcadik dobás, ha tudjuk, hogy a nyolc dobás után a dobott számok
átlaga nagyobb volt, mint a dobott számok mediánja?', 14, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_001.png', ARRAY['statisztika','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0563738d-e045-42ed-9ac9-f305df0ca204', NOW(), 'e_matma_22maj_fl__001__c', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 1, 'c', 'c) Egy szabályos dobókockával kétszer dobunk. Mennyi annak a valószínűsége, hogy
a második dobás nagyobb lesz, mint az első?

a)
b)
c)
Ö.:', 14, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_001.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cc5c2737-cc1c-4de3-90a5-d5744401e2b0', NOW(), 'e_matma_22maj_fl__002__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 2, 'a', 'a) Adottak az A, B, C kijelentések. Az A és B kijelentések logikai értéke igaz, a C kije-
lentés logikai értéke hamis.
Határozza meg az alábbi állítások logikai értékét! (Válaszait itt nem szükséges in-
dokolnia.)
(1) A ∧ C
(2) ¬A ∨ B
(3) B → C
(4) (A ∧ ¬B) ∨ C
Jelölje x és y a derékszögű koordináta-rendszer egy tetszőleges pontjának első, illetve
második koordinátáját, és legyen c egy valós szám.', 10, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_002.png', ARRAY['logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('99d6955d-4ef7-4e56-8461-76d440ae408b', NOW(), 'e_matma_22maj_fl__002__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 2, 'b', 'b) Igaz-e a következő állítás?
2
2
Ha c ≤ 12, akkor
egy kör egyenlete.
4
6
0
x
x
y
y
c
+
+
−
+
=
(Válaszát indokolja!)', 10, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_002.png', ARRAY['logika','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('81d1a9cb-7d0f-44eb-a62e-741f6f5ec55a', NOW(), 'e_matma_22maj_fl__002__c', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 2, 'c', 'c) Fogalmazza meg az állítás megfordítását, és a megfordított állításról is döntse el,
hogy igaz vagy hamis! (Válaszát indokolja!)

a)
b)
c)
Ö.:', 10, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_002.png', ARRAY['logika','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d36a5a24-0570-4644-b296-d3c043128640', NOW(), 'e_matma_22maj_fl__003__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy háromszög három oldalának hossza (valamilyen sorrendben) tekinthető egy mértani
sorozat három szomszédos tagjának. Két oldal hosszát ismerjük, az egyik 12 cm, a másik
27 cm.
a) Milyen hosszú lehet a harmadik oldal?
Az ABC derékszögű háromszög befogóinak hossza AC = 30 egység és BC = 40 egység.
Megrajzoljuk a derékszögű csúcsból induló magasságvonalat, szögfelezőt és súlyvonalat.
Ezek metszéspontját az átfogóval jelölje rendre P, Q és R.', 13, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_003.png', ARRAY['sorozatok','geometria-sik','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cf791ff5-07b7-4bc6-acce-03b079f7325d', NOW(), 'e_matma_22maj_fl__003__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 3, 'b', 'Egy háromszög három oldalának hossza (valamilyen sorrendben) tekinthető egy mértani
sorozat három szomszédos tagjának. Két oldal hosszát ismerjük, az egyik 12 cm, a másik
27 cm.

b) Írja fel egész számokkal az AP : PQ : QR : RB arányt! Pontos értékekkel számoljon!

a)
b)
Ö.:', 13, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_003.png', ARRAY['geometria-sik','sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c6b373e8-3440-46e6-8a17-8c47c4a56330', NOW(), 'e_matma_22maj_fl__004__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 4, 'a', 'Különböző közlekedési ágazatok gazdaságosságát gyakran hasonlítják össze. Ennek ré-
szeként meghatározzák 1 személy 1 kilométer távolságra történő elszállításának üzem-
anyagköltségét.
Egy Boeing 737-700 típusú utasszállító repülőgép átlagos üzemanyag-fogyasztása az
1200 km-es Budapest–Amszterdam repülési útvonalon kb. 2,4 tonna óránként. A gép át-
lagsebessége az úton kb. 750 km/h, a szállítható személyek száma 150 fő. A repülőgép
üzemanyagának egységára 900 euró/tonna.
Egy személyautó üzemanyag-fogyasztása kb. 6 liter/100 km, a szállítható személyek
száma 5 fő. A személyautó üzemanyagának egységára 1,2 euró/liter.
a) Tegyük fel, hogy a repülőgépen és a személyautóban is minden férőhely foglalt.
Csak az üzemanyagköltséget tekintve a vizsgált repülőjárat vagy a személyautó szál-
lít el olcsóbban 1 személyt 1 kilométer távolságra?
Az egyik repülőjárat fedélzetén szendvicset, üdítőt és kávét lehet kapni. A szendvics ára
3,50 euró, az üdítő ára 3 euró, a kávé ára 2,50 euró. A szendvicsből és üdítőből álló menü
ára 5,50 euró.
Kávéból 28 adagot adtak el. Kétszer annyi szendvicset adtak el menüben, mint menün
kívül, és 10-zel kevesebb üdítőt adtak el menüben, mint menün kívül. Az elszámolásnál
kiderült, hogy az összes bevételnek éppen az egyharmada származott menü eladásából.', 14, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_004.png', ARRAY['szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ff3553f6-c57d-4f40-8b40-fe0410a43ef5', NOW(), 'e_matma_22maj_fl__004__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'I', 4, 'b', 'Különböző közlekedési ágazatok gazdaságosságát gyakran hasonlítják össze. Ennek ré-
szeként meghatározzák 1 személy 1 kilométer távolságra történő elszállításának üzem-
anyagköltségét.
Egy Boeing 737-700 típusú utasszállító repülőgép átlagos üzemanyag-fogyasztása az
1200 km-es Budapest–Amszterdam repülési útvonalon kb. 2,4 tonna óránként. A gép át-
lagsebessége az úton kb. 750 km/h, a szállítható személyek száma 150 fő. A repülőgép
üzemanyagának egységára 900 euró/tonna.
Egy személyautó üzemanyag-fogyasztása kb. 6 liter/100 km, a szállítható személyek
száma 5 fő. A személyautó üzemanyagának egységára 1,2 euró/liter.

b) Határozza meg a fedélzeti eladásokból származó bevételt ezen a repülőjáraton!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_004.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('91ae2011-4306-4cc6-a331-3ebdba0c5153', NOW(), 'e_matma_22maj_fl__005__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 5, 'b', 'Egy háromszög oldalai a,  a + 1 és a + 2 egység hosszúak.
a
3
−
a) Igazolja, hogy ha a háromszög legnagyobb szöge γ, akkor
.
cos
=
γ
a
2
b) Határozza meg a háromszög oldalainak hosszát, ha a háromszög legnagyobb szöge
120 fokos!
Egy derékszögű háromszög oldalainak hossza 8 cm, 15 cm és 17 cm. A háromszöglemez
egy pontját véletlenszerűen kiválasztjuk.', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_005.png', ARRAY['geometria-sik','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('75da3855-f1d9-45dc-a526-3e0fa593ca63', NOW(), 'e_matma_22maj_fl__005__c', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 5, 'c', 'Egy háromszög oldalai a,  a + 1 és a + 2 egység hosszúak.
a
3
−
a) Igazolja, hogy ha a háromszög legnagyobb szöge γ, akkor
.
cos
=
γ
a
2

c) Mennyi annak a valószínűsége, hogy ez a pont mindegyik csúcstól legalább 3 cm
távolságra lesz?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_005.png', ARRAY['valoszinuseg','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8039c1d4-e96b-475b-8dec-f50de7be5ec6', NOW(), 'e_matma_22maj_fl__006__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 6, 'a', 'Egy gyárban olyan 5 liter űrtartalmú lábosokat készítenek, melyek alakja jó közelítéssel
(felül nyitott) forgáshenger.
a) Mekkora az 5 literes lábos alapkörének a sugara, ha magassága 15 cm?', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_006.png', ARRAY['geometria-ter','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5e7fce10-1259-4a04-9c2b-67c1f9b6cc71', NOW(), 'e_matma_22maj_fl__006__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 6, 'b', 'Egy gyárban olyan 5 liter űrtartalmú lábosokat készítenek, melyek alakja jó közelítéssel
(felül nyitott) forgáshenger.

b) A lábosok külső felületét vékony, piros zománcréteggel vonják be.
Mekkora legyen az 5 literes lábos alapkörének a sugara, hogy a külső felület bevo-
násához a lehető legkevesebb zománcot kelljen felhasználni?
Minden egyes elkészült termék (egymástól függetlenül) p valószínűséggel selejtes. Egy
kamion több ezer lábost szállított a megrendelőnek, melyek közül a minőségellenőrök
20-at vizsgálnak meg a szállítmány átvétele előtt.', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_006.png', ARRAY['geometria-ter','differencialszamitas','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e3f6cafe-0819-4963-ad38-3bd39e0cc217', NOW(), 'e_matma_22maj_fl__006__c', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 6, 'c', 'Egy gyárban olyan 5 liter űrtartalmú lábosokat készítenek, melyek alakja jó közelítéssel
(felül nyitott) forgáshenger.

c) Legfeljebb mekkora lehet p értéke, ha legalább 0,8 annak a valószínűsége, hogy
a 20 megvizsgált termék egyike sem selejtes?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_006.png', ARRAY['valoszinuseg','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d155f4fe-3df6-420d-884e-5a071df5c70f', NOW(), 'e_matma_22maj_fl__007__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 7, 'a', 'a) Két pozitív egész szám relatív prím, legkisebb közös többszörösük 35 700.
Határozza meg az ilyen tulajdonságú számpárok számát!
(Az (a, b) és a (b, a) számpárokat nem tekintjük különbözőknek.)', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_007.png', ARRAY['szamelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2332a66b-7ed8-4219-9eed-abbab34091d7', NOW(), 'e_matma_22maj_fl__007__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 7, 'b', 'b) Legyen H = {1; 2; 3; 4; 5; 6; 7; 8; 9; 10}. Hány olyan részhalmaza van H-nak,
amelyben az elemek szorzata osztható 9-cel? (Egyelemű halmaz esetén az „elemek
szorzatának” az egyetlen elem értékét tekintjük.)', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_007.png', ARRAY['kombinatorika','szamelmelet','halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e9005731-60ff-419a-be03-d43e953f64d4', NOW(), 'e_matma_22maj_fl__007__c', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 7, 'c', 'c) Egy papírlapon adott öt pont. A pontok mellé egy-egy pozitív egész számot írunk.
Az adott pontok legyenek egy olyan ötpontú egyszerű gráf csúcsai, amelynek két
csúcsa pontosan akkor van éllel összekötve, ha a csúcsok mellé írt számok közül az
egyik többszöröse a másiknak.
Az alábbi három ábra mindegyikén 5-5 pont látható. Írjon mindhárom ábrán az
5 pont mellé különböző pozitív egész számokat, majd rajzolja meg a fenti szabály
szerint a gráf éleit úgy, hogy az első esetben egy teljes gráfot, a második esetben egy
fagráfot, a harmadik esetben pedig egy üres gráfot kapjon (az üres gráfnak egyetlen
éle sincsen)!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_007.png', ARRAY['grafelmelet','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('183220ab-bab6-4da1-b373-64c12024254e', NOW(), 'e_matma_22maj_fl__008__', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 8, NULL, 'A közúti forgalomban gyakran előfordul, hogy egy autónak hirtelen meg kell állnia. Szá-
raz útviszonyok között jellemzően 7,5 m/s² egy autó lassulása.
Ebben az esetben a pillanatnyi sebességet a megtett út függvényében leíró összefüggés:
, ahol x a fékezés megkezdésétől mért út hossza méterben, v0 pedig
2
( )
2 7,5
v x
v
x
=
−⋅
⋅
0
a fékezés megkezdésekor az autó sebessége m/s-ban.
a) Egy autó (száraz útviszonyok között) 18 m/s sebességgel halad, amikor megkezdi a
fékezést. Meg tud-e állni az útra kigurult labda előtt, ha a labda ekkor 20 méter tá-
volságra van tőle?
b) Balesetek vizsgálatakor a szakértők a féknyom hosszából állapítják meg az autó se-
bességét, mellyel a fékezés megkezdésekor haladt. Egy autó (száraz útviszonyok
között) a fékezés megkezdésétől kezdve a teljes megállásig 40 méteres féknyomot
hagyott. Hány m/s volt az autó sebessége a fékezés megkezdésekor?
Az akadály észlelésétől az autó megállásáig megtett út a féktávolság. Ez két részből
tevődik össze: a sofőr reakcióideje alatt megtett útból és a fékútból.
A sofőr reakcióideje az észlelés és a fékezés megkezdése között eltelő idő; ezalatt az
autó változatlan sebességgel halad. A fékezés megkezdésétől az autó megállásáig megtett
utat nevezzük fékútnak.
Havas, jeges úton 1,5 m/s²-re csökken a lassulás, ekkor a fékezés során a pillanatnyi
sebességet leíró összefüggés alakja megváltozik:
.
2
( )
2 1,5
v x
v
x
=
−
⋅
⋅
0
c) Tegyük fel, hogy egy sofőr reakcióideje 0,8 másodperc. Számítsa ki, hogy mekkora
a száraz útviszonyok között 15 m/s (54 km/h) sebességgel haladó autó féktávolsága!
Havas-jeges úton haladva mekkora sebesség esetén lesz ugyanekkora a féktávolság?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_008.png', ARRAY['fuggvenyek','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('30df3f58-c788-41be-a444-0bbba2b0abf4', NOW(), 'e_matma_22maj_fl__009__a', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 9, 'a', '3
2
a) Határozza meg az f: R → R,
+  függvényben az a, b és c
( )
f x
x
ax
bx
c
=
+
+
valós paraméterek értékét, ha a függvényről tudjuk az alábbiakat:
(1) f (0) = 1;
(2) f (1) = 0;
(3) f ′(2) = f ″(1) (az f első deriváltjának x = 2-ben vett értéke megegyezik az
f második deriváltjának x = 1-ben vett értékével).', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_009.png', ARRAY['differencialszamitas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bcf2321a-4c75-4841-93fc-88e927c4f3a1', NOW(), 'e_matma_22maj_fl__009__b', 'e_matma_22maj_fl', 'e_matma_22maj_fl.pdf', 2022, 'emelt', 'majus', true, 'II', 9, 'b', '3
2
3
b) Igazolja, hogy az
és az
+  egyenletű görbének két kö-
4
2
3
y
x
x
x
3
y
x
=
−
+
+
=
zös pontja van, és számítsa ki a görbék által közbezárt síkidom területét!

a)
b)
Ö.:', 16, '/images/e_matma_22maj_fl/crops/e_matma_22maj_fl_prob_009.png', ARRAY['egyenletek','integralszamitas','fuggvenyek']::text[], false, false, '', true);

-- e_matma_23maj_fl (20 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7b8896e0-d2ae-437e-bf33-1266af0b42ce', NOW(), 'e_matma_23maj_fl__001__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 1, 'a', 'Az interneten található adatok1 alapján a napenergiát elektromos energiává alakító eszkö-
zök maximális összteljesítményének magyarországi alakulását az alábbi táblázat szem-
lélteti (megawattban mérve).
év
2012 2013 2014 2015 2016 2017 2018 2019
összteljesítmény (MW)
12
35
77
168
225
300
640
1277
a) A fenti táblázat adatai alapján készült a következő táblázat, amely azt mutatja, hogy
hányszorosára változott a maximális összteljesítmény az egymást követő években
az előző évi maximális összteljesítményhez viszonyítva. A még hiányzó három szá-
mot írja az alábbi táblázat üres mezőibe, majd számítsa ki a kapott 7 szám átlagát és
szórását!
év
2013 2014 2015 2016 2017 2018 2019
ebben az évben a maximális össztelje-
2,92
2,18
1,33
2,00
sítmény az előző évinek ennyiszerese:
A
maximális
összteljesítmény
alakulását
exponenciális növekedésűnek feltételezve egy
táblázatkezelő program az első táblázatban
17,84 1,848x
megadott adatok alapján a ( )
c x =
⋅
közelítő összefüggést adja, ahol x a 2012 óta el-
telt évek száma (x természetes szám), c(x) pe-
dig MW-ban adja meg a maximális összteljesít-
ményt a modell szerint.
b) Hány százalékkal tér el a 2018. évi 640 MW-os adattól a modell alapján kiszámít-
ható 2018-as érték?
x
c) Oldja meg a valós számok halmazán a 17,84 1,848
40000
egyenletet!
⋅
=

a)
b)
c)
Ö.:

1 https://hu.wikipedia.org/wiki/Napenergia_Magyarországon', 11, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_001.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ec8192b6-4feb-4a92-8c5e-35dd86d72435', NOW(), 'e_matma_23maj_fl__002__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 2, 'a', 'Legyen a H alaphalmaz a pozitív egészekből álló számpárok halmaza,
az A, B és C pedig a H alábbi részhalmazai:
A = {(a; b) | a és b relatív prímek};
B = {(a; b) | a osztója b-nek};
C = {(a; b) | a és b közül legalább az egyik prímszám}.
(Ha a ≠ b, akkor az (a; b) és a (b; a) számpárokat különbözőnek tekintjük.)
a) Az alábbi Venn-diagram két részébe beírtunk egy-egy számpárt. Írjon a diagram
további hat üres részébe egy-egy megfelelő számpárt!

Tekintsük a következő két állítást (a, b, c pozitív egészek)!
I. Ha c osztója ab-nek, akkor c osztója a-nak vagy c osztója b-nek.
II. Ha a osztója c-nek és b osztója c-nek, akkor ab osztója c-nek.
b) Határozza meg a két állítás logikai értékét (igaz vagy hamis)! Válaszait indokolja!
c) Fogalmazza meg az I. állítás megfordítását, és határozza meg a megfordítás logikai
értékét! Ha a megfordítás igaz, akkor bizonyítsa be, ha pedig hamis, akkor mutasson
ellenpéldát!

a)
b)
c)
Ö.:', 14, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_002.png', ARRAY['halmazok','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('82a583dc-81d2-436f-9662-8c4856c5b779', NOW(), 'e_matma_23maj_fl__003__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy vízszintesen futó egyenes alagút függőleges ke-
resztmetszete egy olyan 8,1 m magas körszelet, amely
egy 6 m sugarú körből származik. Az alagút hossza
340 m. (A kép illusztráció.)
a) Mutassa meg, hogy a körszelet körívéhez (egész
fokra kerekítve) 221°-os középponti szög tartozik
a körben!', 14, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_003.png', ARRAY['geometria-sik','bizonyitasok','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3aed5755-f47c-40cc-8e47-2805a28834c7', NOW(), 'e_matma_23maj_fl__003__b', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 3, 'b', 'Egy vízszintesen futó egyenes alagút függőleges ke-
resztmetszete egy olyan 8,1 m magas körszelet, amely
egy 6 m sugarú körből származik. Az alagút hossza
340 m. (A kép illusztráció.)

b) Számítsa ki az alagút térfogatát! Az eredményt ezer m3-re kerekítve adja meg!
Az alagút íves belső felületét kerámiaburkolattal látták el.', 14, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_003.png', ARRAY['geometria-ter','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a3a798e9-82d3-486c-b9aa-eeeb101c5d23', NOW(), 'e_matma_23maj_fl__003__c', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 3, 'c', 'Egy vízszintesen futó egyenes alagút függőleges ke-
resztmetszete egy olyan 8,1 m magas körszelet, amely
egy 6 m sugarú körből származik. Az alagút hossza
340 m. (A kép illusztráció.)

c) Hány m2 a kerámiával burkolt felület?

a)
b)
c)
Ö.:', 14, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_003.png', ARRAY['geometria-ter','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3f765ab1-ca9b-4642-a93e-22000d1d112e', NOW(), 'e_matma_23maj_fl__004__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 4, 'a', 'Egy biogazdaságban az L-es (nagy) méretű tojásokat 10 Ft-tal drágábban adják, mint az
M-es (közepes) méretű tojásokat. Egy kereskedő a múlt héten 450 tojást vásárolt a bio-
gazdaságtól 25 800 Ft-ért. Ezen a héten is 450 tojást vásárol, de csak 23 700 Ft-ot fizet,
mert ezen a héten az M-es tojások száma ugyanannyi, mint a múlt héten az L-es tojások
száma volt (és így az L-es tojások száma ugyanannyi, mint a múlt héten az M-es tojások
száma volt).
a) Mennyibe kerül az M-es, illetve az L-es tojás darabja, és hány darab M-es tojást
vásárolt a múlt héten a kereskedő? (A tojások egységára nem változott.)
Balázs pontosan 4 tojásból szeretne rántottát készíteni magának. Van 6 tojás a hűtőben,
amelyek közül 5 jó és 1 romlott (záp), de ezt ő nem tudja. Balázs sietősen, egymás után
üti bele a tojásokat egy tálba. Ha 4 jó tojás kerül a tálba, akkor már készülhet is a rántotta,
ha azonban két vagy három jó tojás után a romlott tojás kerül a tálba, akkor sajnos nem
sikerül Balázs terve. (Ha romlott tojást üt a tálba, akkor azt Balázs rögtön észreveszi, és
az egészet kiönti. Ám ha ekkor még maradt legalább 4 tojás a hűtőben, akkor újra nekilát
a rántotta készítésének.)', 12, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_004.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('82ec6055-3ef7-4831-82d8-7023578c27bb', NOW(), 'e_matma_23maj_fl__004__b', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'I', 4, 'b', 'Egy biogazdaságban az L-es (nagy) méretű tojásokat 10 Ft-tal drágábban adják, mint az
M-es (közepes) méretű tojásokat. Egy kereskedő a múlt héten 450 tojást vásárolt a bio-
gazdaságtól 25 800 Ft-ért. Ezen a héten is 450 tojást vásárol, de csak 23 700 Ft-ot fizet,
mert ezen a héten az M-es tojások száma ugyanannyi, mint a múlt héten az L-es tojások
száma volt (és így az L-es tojások száma ugyanannyi, mint a múlt héten az M-es tojások
száma volt).

b) Számítsa ki, mennyi a valószínűsége annak, hogy Balázs elkészítheti a négytojásos
rántottát!

a)
b)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 12, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_004.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('68647fa6-fb31-4600-9349-fe6bb0226ea4', NOW(), 'e_matma_23maj_fl__005__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 5, 'a', 'Az ABCD húrnégyszögben AB = 15, BC = 10. Az ABC szöget a DB átló két részre
osztja: ABDΣ= 20°, DBCΣ= 40°.

a) Igazolja, hogy az AC átló hossza pontosan 5
7
!
⋅', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_005.png', ARRAY['geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('555d5684-8e86-4798-8796-eff0a226238d', NOW(), 'e_matma_23maj_fl__005__b', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 5, 'b', 'Az ABCD húrnégyszögben AB = 15, BC = 10. Az ABC szöget a DB átló két részre
osztja: ABDΣ= 20°, DBCΣ= 40°.

b) Igazolja, hogy az ACD háromszög szögei 20°, 40° és 120°!', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_005.png', ARRAY['geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ee3355bd-4380-483b-80c0-5ebbc5119add', NOW(), 'e_matma_23maj_fl__005__c', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 5, 'c', 'Az ABCD húrnégyszögben AB = 15, BC = 10. Az ABC szöget a DB átló két részre
osztja: ABDΣ= 20°, DBCΣ= 40°.

c) Számítsa ki az ABCD négyszög területét!
A KLMN deltoidban a K és az M csúcsnál derékszög van, a KM átló hossza 9,6 cm.
Az LN szimmetriaátlót az átlók metszéspontja két olyan szakaszra osztja, amelyek
hosszának különbsége 2,8 cm.', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_005.png', ARRAY['geometria-sik','trigonometria','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('14a77240-ad77-4a17-9c85-c630b2d8d317', NOW(), 'e_matma_23maj_fl__005__d', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 5, 'd', 'Az ABCD húrnégyszögben AB = 15, BC = 10. Az ABC szöget a DB átló két részre
osztja: ABDΣ= 20°, DBCΣ= 40°.

d) Számítsa ki a deltoid területét!

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_005.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6d9076a8-c518-4ded-9284-a193dd3981cf', NOW(), 'e_matma_23maj_fl__006__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 6, 'a', 'a) Három lány és négy fiú moziba megy. Egy sorba szól a jegyük, hét egymás melletti
székre. Hányféle sorrendben ülhetnek le, ha két lány nem ülhet egymás mellé?', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_006.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('447c9043-70f6-40b2-94ab-4101309698c1', NOW(), 'e_matma_23maj_fl__006__b', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 6, 'b', 'b) A nézőtéren az első és a második sorban már csak 3-3 szabad ülőhely van. A máso-
dik sor szabad ülései pontosan az első sor szabad ülései mögött vannak.
Hányféleképpen tud leülni egy hatfős társaság a hat szabad helyre úgy, hogy a má-
sodik sorban mindenki magasabb legyen a közvetlenül előtte ülőnél? (A hat személy
magassága különböző.)', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_006.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e369e28a-efce-49ea-a939-bc3fab1f57fb', NOW(), 'e_matma_23maj_fl__006__c', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 6, 'c', 'c) Egy 8 pontú egyszerű gráfnak 13 éle van, és az egyik pontjának a fokszáma 6.
Igazolja, hogy van hárompontú kör (gráfelméleti háromszög) a gráfban!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_006.png', ARRAY['grafelmelet','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e3b5521a-29ea-480f-b817-675c0b195d07', NOW(), 'e_matma_23maj_fl__007__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 7, 'a', 'A mérnökök egy új fejlesztésű autó üzemanyag-fogyasztását igyekeznek meghatározni
különböző sebességek mellett. Eddig három mérési adat áll rendelkezésre: ezek szerint
40 km/h sebesség mellett 9,6 liter, 70 km/h sebesség mellett 6,9 liter, 120 km/h sebesség
mellett pedig 6,4 liter a 100 km-enkénti üzemanyag-fogyasztás.
a) A mérési adatokkal számolva mennyi lenne ennek az autónak a 100 km-re vonat-
kozó átlagos üzemanyag-fogyasztása egy olyan úton, amelyen 30 percig 40 km/h
sebességgel, majd 50 percen át 120 km/h sebességgel halad?
Három mérnök olyan f függvényeket keres, amelyek minél jobban közelítik az ismert
(40)
9,6
(70)
6,9
(120)
6,4
f
f
f
mérési eredményeket, azaz amelyekre az
ösz-
−
+
−
+
−
szeg értéke minél kisebb.
1( )
11,2 0,04
f x
x
függvényt, Mérnök Dóra pedig az
Mérnök Csaba az elsőfokú
=
−
100
x
−
( )
4
f
x
abszolútérték-függvényt javasolja az autó 100 km-enkénti fogyasz-
=
+
2
10
tásának közelítésére (x az autó sebességét jelöli km/h-ban mérve, a fogyasztást pedig li-
terben kapjuk meg).
b) Az f1 vagy az f2 függvény közelíti-e jobban a fenti értelemben a három mérési ered-
ményt?
2
Mérnök Elemér azt a másodfokú
függvényt kereste meg, amely
3( )
f
x
ax
bx
c
=
+
+
mindhárom mérési adat esetén pontos eredményt ad, azaz f3(40) = 9,6; f3(70) = 6,9 és
f3(120) = 6,4.
c) Határozza meg az a, b és c paraméterek értékét!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_007.png', ARRAY['szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d5419d9b-1616-4d6c-8c6e-a6184ca1c5cd', NOW(), 'e_matma_23maj_fl__008__a', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 8, 'a', 'Egy nyári fesztiválon a résztvevők a „Szerencsekerekek” nevű játékkal tehetik próbára a
szerencséjüket. Egy játék során a játékosnak két kereket kell külön-külön megforgatnia.
A kerekek a forgatás után véletlenszerűen állnak meg valamelyik számnál. (Az azonos
keréken lévő körcikkek középponti szöge egyenlő, a kilenc körcikk mindegyikén van
egy-egy szám, a 100, a 200 vagy a 800.)
A forgatás előtt egy játékért 200 forintot
kell fizetni. Ha a forgatás után a két kerék
ugyanannál a számnál áll meg, akkor any-
nyi forintot kap nyereményként a játékos,
amennyi a két szám összege.
(Ha például az ábrán látható módon mind-
két kerék a 200-as feliratnál áll meg, akkor
200 + 200 = 400 forintot kap a játékos.) Ha
a két kerék két különböző számnál áll
meg, akkor a játékos nem kap pénzt.
a) Mennyi a valószínűsége annak, hogy 10 játék során az 1. kerék pontosan négyszer
áll meg 100-as számnál?
Egy játékot játszva a két kerékkel, a nyereménynek és a játék árának különbsége a játékos
nyeresége.', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_008.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9912d58a-2409-48b3-99a4-7527513a6a11', NOW(), 'e_matma_23maj_fl__008__b', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 8, 'b', 'Egy nyári fesztiválon a résztvevők a „Szerencsekerekek” nevű játékkal tehetik próbára a
szerencséjüket. Egy játék során a játékosnak két kereket kell külön-külön megforgatnia.
A kerekek a forgatás után véletlenszerűen állnak meg valamelyik számnál. (Az azonos
keréken lévő körcikkek középponti szöge egyenlő, a kilenc körcikk mindegyikén van
egy-egy szám, a 100, a 200 vagy a 800.)
A forgatás előtt egy játékért 200 forintot
kell fizetni. Ha a forgatás után a két kerék
ugyanannál a számnál áll meg, akkor any-
nyi forintot kap nyereményként a játékos,
amennyi a két szám összege.
(Ha például az ábrán látható módon mind-
két kerék a 200-as feliratnál áll meg, akkor
200 + 200 = 400 forintot kap a játékos.) Ha
a két kerék két különböző számnál áll
meg, akkor a játékos nem kap pénzt.

b) Egy játékot játszva mennyi a nyereség várható értéke?
Ha a két keréken forgatott számok összege 1000, ezt „bingó”-nak nevezik. Ha bingót ér
el egy játékos, akkor választhat egy zeneszámot a fesztiválsátorban.', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_008.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1c4fce8c-8ef4-4884-8a77-159a53a37ca0', NOW(), 'e_matma_23maj_fl__008__c', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 8, 'c', 'Egy nyári fesztiválon a résztvevők a „Szerencsekerekek” nevű játékkal tehetik próbára a
szerencséjüket. Egy játék során a játékosnak két kereket kell külön-külön megforgatnia.
A kerekek a forgatás után véletlenszerűen állnak meg valamelyik számnál. (Az azonos
keréken lévő körcikkek középponti szöge egyenlő, a kilenc körcikk mindegyikén van
egy-egy szám, a 100, a 200 vagy a 800.)
A forgatás előtt egy játékért 200 forintot
kell fizetni. Ha a forgatás után a két kerék
ugyanannál a számnál áll meg, akkor any-
nyi forintot kap nyereményként a játékos,
amennyi a két szám összege.
(Ha például az ábrán látható módon mind-
két kerék a 200-as feliratnál áll meg, akkor
200 + 200 = 400 forintot kap a játékos.) Ha
a két kerék két különböző számnál áll
meg, akkor a játékos nem kap pénzt.

c) Igazolja, hogy a bingó forgatásának valószínűsége 0,2.', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_008.png', ARRAY['valoszinuseg','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('44bfaacc-c6de-47fe-976a-10c5c94c2411', NOW(), 'e_matma_23maj_fl__008__d', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 8, 'd', 'Egy nyári fesztiválon a résztvevők a „Szerencsekerekek” nevű játékkal tehetik próbára a
szerencséjüket. Egy játék során a játékosnak két kereket kell külön-külön megforgatnia.
A kerekek a forgatás után véletlenszerűen állnak meg valamelyik számnál. (Az azonos
keréken lévő körcikkek középponti szöge egyenlő, a kilenc körcikk mindegyikén van
egy-egy szám, a 100, a 200 vagy a 800.)
A forgatás előtt egy játékért 200 forintot
kell fizetni. Ha a forgatás után a két kerék
ugyanannál a számnál áll meg, akkor any-
nyi forintot kap nyereményként a játékos,
amennyi a két szám összege.
(Ha például az ábrán látható módon mind-
két kerék a 200-as feliratnál áll meg, akkor
200 + 200 = 400 forintot kap a játékos.) Ha
a két kerék két különböző számnál áll
meg, akkor a játékos nem kap pénzt.

d) Hányszor kell játszani ahhoz, hogy legalább 95% legyen annak a valószínűsége,
hogy egy játékos legalább egyszer bingót forgasson?

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_008.png', ARRAY['valoszinuseg','egyenletek','exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5edfed32-b6ed-4be1-a13a-f6e833effd3b', NOW(), 'e_matma_23maj_fl__009__', 'e_matma_23maj_fl', 'e_matma_23maj_fl.pdf', 2023, 'emelt', 'majus', true, 'II', 9, NULL, 'A valós számok halmazán értelmezett f függvény f ′  deriváltfüggvényének hozzárende-
2
( )
(
2)
(
5)
f
x
x
x
′
.
lési szabálya:
=
−
⋅
−
a) Adja meg az f függvény összes lokális (helyi) szélsőértékének típusát és helyét!
b) Határozza meg az f függvény hozzárendelési szabályát úgy, hogy az f grafikonja
áthaladjon a (0; 1) ponton!
3
3
x
x
+
:
;
( )
g
g x
R
R
c) Igazolja, hogy a
függvény szigorúan monoton növekedő!
→
=
2
x
1
+

a)
b)
c)
Ö.:', 16, '/images/e_matma_23maj_fl/crops/e_matma_23maj_fl_prob_009.png', ARRAY['differencialszamitas','fuggvenyek','integralszamitas','bizonyitasok']::text[], false, false, '', true);

-- e_matma_24maj_fl (20 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a8ee79ce-b78b-4ab6-ba56-4ed6fa2b967c', NOW(), 'e_matma_24maj_fl__001__', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'I', 1, NULL, 'Oldja meg az alábbi egyenleteket a valós számok halmazán!

x+
=
−
1
x
a)
2
2
1
+
=
2
2sin
3cos
0
x
x
b)

a)
b)
Ö.:', 13, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5c8d5c0b-b688-4455-b127-bed638fad163', NOW(), 'e_matma_24maj_fl__002__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'I', 2, 'a', 'Egy szöveget ketten lektorálnak, Aliz és Hanna. Aliz az összes hiba p%-át fedezte fel, és
a Hanna által felfedezett hibáknak is éppen a p%-át találta meg.
A szövegben Aliz 35, Hanna 40 hibát vett észre, ezek közül 28 hibát mindketten észre-
vettek.
a) Az összes hiba közül hányat nem vett észre egyikük sem?
Egy gyakorlott gépírónő a tapasztalatok szerint ötszáz karakterből átlagosan egynél hibá-
zik (ezt tekinthetjük úgy, hogy minden egyes karaktert 1
500  valószínűséggel ír le hibá-
san). Egy gépelt oldal kb. 2000 karaktert tartalmaz.
b) Igazolja, hogy a gépírónő körülbelül 0,0182 valószínűséggel gépel le hibátlanul egy
teljes oldalt!
c) Ha a gépírónőnek egy 150 oldalas szöveget kell legépelnie, akkor mennyi annak a
valószínűsége, hogy a legépelt szövegnek lesz legalább két hibátlan oldala?

a)
b)
c)
Ö.:', 13, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_002.png', ARRAY['halmazok','szovegfeladas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e90f4525-ed37-4e12-89dd-448cb68e74dd', NOW(), 'e_matma_24maj_fl__003__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'I', 3, 'a', '→
=−
+
2
:
;
( )
0,5
3
f
f x
x
x
R
R
Adott az
másodfokú függvény.
a) Határozza meg az f értékkészletét!', 13, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_003.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('41a7baa5-71e7-4b08-ad02-72ac38055bb0', NOW(), 'e_matma_24maj_fl__003__b', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'I', 3, 'b', '→
=−
+
2
:
;
( )
0,5
3
f
f x
x
x
R
R
Adott az
másodfokú függvény.

b) A P(6; 0) pont rajta van az f grafikonján. Adja meg a grafikon P-re illeszkedő érin-
tőjének meredekségét, és ennek az érintőnek az egyenletét!', 13, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_003.png', ARRAY['fuggvenyek','differencialszamitas','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('14f3b92c-3e51-416f-98a4-8ef9f6e2a4ab', NOW(), 'e_matma_24maj_fl__003__c', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'I', 3, 'c', '→
=−
+
2
:
;
( )
0,5
3
f
f x
x
x
R
R
Adott az
másodfokú függvény.

c) Adja meg azt a valós számok halmazán értelmezett g függvényt, amelyre igaz, hogy
=
és g(3) = 7 ( ga g deriváltfüggvényét jelöli)!
g
f

a)
b)
c)
Ö.:', 13, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_003.png', ARRAY['differencialszamitas','integralszamitas','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f59eb915-59d1-4e31-8ce7-6e32f208198c', NOW(), 'e_matma_24maj_fl__004__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'I', 4, 'a', 'Az utakon látható STOP tábla méretét egy miniszteri rendelet
pontosan szabályozza1: a tábla alakja egy olyan szabályos nyolc-
szög, amelynek az ábrán D-vel jelölt méretei egyaránt
600 mm-esek (lakott területen belüli táblák esetén).
a) Mekkora a szabályos nyolcszög egy oldalának hossza?

A méhek (megközelítőleg) szabályos hatszög alakú sejtekből építik fel a lépet. Az épít-
kezés első „lépése” után 1, a második lépése után 7, a harmadik lépése után 19 sejt készült
már el összesen. Az első három lépést szemlélteti az alábbi ábra.

Tegyük fel, hogy az ábra szerint vázolt „körkörös” stratégia szerint épít-
keznek tovább a méhek, azaz minden egyes további lépésben újabb sza-
bályos hatszög alakú sejtekkel veszik körül az előzőleg már elkészült
építményt. Így a harmadik lépéstől kezdve minden egyes lépésben 6-tal
több új szabályos hatszöget építenek meg, mint az előző lépésben.
b) Igazolja (teljes indukcióval vagy más módszerrel), hogy az n-edik lépés után ösz-
−
+ darab hatszög készült el!
2
3
3
1
n
n
szesen

a)
b)
Ö.:

1 https://net.jogtar.hu/jogszabaly?docid=a0100004.kov
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 12, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_004.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('43625db1-deeb-4cf8-ba35-31bec30449dd', NOW(), 'e_matma_24maj_fl__005__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 5, 'a', 'Egy építőjáték olyan (kockától különböző) egybevágó négyzetes oszlopokat tartalmaz,
amelyeknek minden lapja vagy kékre, vagy sárgára van festve. Mindegyik oszlopon több
sárga színű lap van, mint kék színű. Az építőjáték a feltételnek megfelelő minden külön-
böző színezésű oszlopból egy darabot tartalmaz.
a) Hány négyzetes oszlop van az építőjátékban? (Két színezett oszlop különböző, ha
térbeli mozgatással nem vihetők át egymásba.)
Egy négyzetes oszlop felszíne 384 cm2.', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_005.png', ARRAY['kombinatorika','geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c193f676-a494-43fd-89d3-424d15da2e1b', NOW(), 'e_matma_24maj_fl__005__b', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 5, 'b', 'Egy építőjáték olyan (kockától különböző) egybevágó négyzetes oszlopokat tartalmaz,
amelyeknek minden lapja vagy kékre, vagy sárgára van festve. Mindegyik oszlopon több
sárga színű lap van, mint kék színű. Az építőjáték a feltételnek megfelelő minden külön-
böző színezésű oszlopból egy darabot tartalmaz.

b) Számítsa ki az oszlop térfogatát, ha oldalélei 22 cm hosszúak!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_005.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3cc1fd4d-9923-4534-bba3-fc9a50032666', NOW(), 'e_matma_24maj_fl__005__c', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 5, 'c', 'Egy építőjáték olyan (kockától különböző) egybevágó négyzetes oszlopokat tartalmaz,
amelyeknek minden lapja vagy kékre, vagy sárgára van festve. Mindegyik oszlopon több
sárga színű lap van, mint kék színű. Az építőjáték a feltételnek megfelelő minden külön-
böző színezésű oszlopból egy darabot tartalmaz.

c) Hogyan válasszuk meg a 384 cm2 felszínű négyzetes oszlop alapéleit, illetve oldal-
éleit, hogy a nyolc alapél és a négy oldalél hosszának az összege minimális
legyen?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_005.png', ARRAY['geometria-ter','egyenletek','differencialszamitas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6970081f-6fe9-494a-99fd-165a590fe60c', NOW(), 'e_matma_24maj_fl__006__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 6, 'a', 'Az ABC derékszögű háromszög A csúcsánál fekvő szöge 30°-os.
a) A háromszög AB átfogójának F felezőpontjában me-
rőlegest állítunk az átfogóra. Ez a merőleges az AC
befogót az E pontban metszi. Milyen arányban osztja
két részre az E pont az AC befogót?
A háromszögből az átfogójához tartozó CP1 magassága
mentén levágjuk a H1-gyel jelölt háromszöget. Az így meg-
maradó ACP1 derékszögű háromszögben végrehajtjuk
ugyanezt a lépést: a H2 háromszöget vágjuk le a háromszög
átfogójához tartozó P1P2 magassága mentén, és így tovább
(lásd az ábrán).', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_006.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f39369f6-236c-4235-82e0-ba8bbda9e833', NOW(), 'e_matma_24maj_fl__006__b', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 6, 'b', 'Az ABC derékszögű háromszög A csúcsánál fekvő szöge 30°-os.

b) Ha ezt az eljárást 13-szor hajtjuk végre, akkor a 13 háromszög levágása után meg-
maradó háromszög területe hány százaléka az ABC háromszög területének?', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_006.png', ARRAY['geometria-sik','sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c36e75f7-8e89-42ba-8166-41c6564d8916', NOW(), 'e_matma_24maj_fl__006__c', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 6, 'c', 'Az ABC derékszögű háromszög A csúcsánál fekvő szöge 30°-os.

c) Mekkora a végtelen sok szakaszból álló CP1P2P3P4… töröttvonal hosszának pontos
−
értéke, ha CP1 = 2
3
?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_006.png', ARRAY['sorozatok','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c4b02570-356e-488e-a94e-c6c15e82c672', NOW(), 'e_matma_24maj_fl__007__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 7, 'a', 'Endre, Frici és Gyuri sportlövők. A lőtéren hat lőállás van egymás mellett, 1-től 6-ig
megszámozva. Egyik nap az edzőjük véletlenszerűen osztja be őket egy-egy különböző
lőállásba.
a) Melyik esemény a valószínűbb: az, hogy három egymás melletti lőállásba kerülnek,
vagy az, hogy közülük semelyik kettő nem kerül szomszédos lőállásba?
Egy sportlövőversenyen minden lövéssel 5, 4, 3, 2, 1 vagy 0 pontot lehet szerezni.
A győzelemhez Endrének az utolsó öt lövéssel összesen legalább 22 pontot kell elérnie.', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_007.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2b11c3d1-a604-480a-a9e3-963d8aa26cac', NOW(), 'e_matma_24maj_fl__007__b', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 7, 'b', 'Endre, Frici és Gyuri sportlövők. A lőtéren hat lőállás van egymás mellett, 1-től 6-ig
megszámozva. Egyik nap az edzőjük véletlenszerűen osztja be őket egy-egy különböző
lőállásba.

b) Hányféleképpen lehet öt lövéssel legalább 22 pontot elérni?
(Két ötlövéses sorozatot azonosnak tekintünk, ha legfeljebb a szerzett pontszámok
sorrendjében térnek el egymástól.)
Ugyanezen a versenyen Gyuri utolsó tíz lövése között nem volt 0 pontos. A tíz lövés
pontszámának terjedelme, mediánja és átlaga is 3, egyetlen módusza pedig a 2 volt.', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_007.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('698758ac-b22c-463f-b795-a99654af96e5', NOW(), 'e_matma_24maj_fl__007__c', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 7, 'c', 'Endre, Frici és Gyuri sportlövők. A lőtéren hat lőállás van egymás mellett, 1-től 6-ig
megszámozva. Egyik nap az edzőjük véletlenszerűen osztja be őket egy-egy különböző
lőállásba.

c) Határozza meg monoton növekvő sorrendben Gyuri utolsó tíz lövésének pontérté-
két! (Megoldása során indokolja, hogy a tíz lövés pontértéke – sorrendjüktől elte-
kintve – egyértelmű.)

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_007.png', ARRAY['statisztika','logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('efbced01-e867-4d48-b4ea-ec5878acd8d9', NOW(), 'e_matma_24maj_fl__008__a', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 8, 'a', '+
−
2
2
2
2
p
q
p
q
Egy háromszög oldalainak hossza
,
, illetve 2pq, ahol p és q olyan pozi-
tív egész számok, melyekre p > q teljesül.
+
2
2
p
q
a) Igazolja, hogy a három oldalhossz közül
a legnagyobb!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_008.png', ARRAY['bizonyitasok','geometria-sik','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3dc4199b-4509-42f5-974f-a7b777a50569', NOW(), 'e_matma_24maj_fl__008__b', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 8, 'b', '+
−
2
2
2
2
p
q
p
q
Egy háromszög oldalainak hossza
,
, illetve 2pq, ahol p és q olyan pozi-
tív egész számok, melyekre p > q teljesül.

b) Igazolja, hogy a háromszög derékszögű!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_008.png', ARRAY['geometria-sik','bizonyitasok','algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('821adea2-e9fe-4213-8bb0-a6b53f288bc3', NOW(), 'e_matma_24maj_fl__008__c', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 8, 'c', '+
−
2
2
2
2
p
q
p
q
Egy háromszög oldalainak hossza
,
, illetve 2pq, ahol p és q olyan pozi-
tív egész számok, melyekre p > q teljesül.

−
3
3
p q
q p
c) Igazolja, hogy a háromszög területe
!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_008.png', ARRAY['geometria-sik','bizonyitasok','algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7666d620-a1eb-46e1-a67b-da8586ab9e24', NOW(), 'e_matma_24maj_fl__008__d', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 8, 'd', '+
−
2
2
2
2
p
q
p
q
Egy háromszög oldalainak hossza
,
, illetve 2pq, ahol p és q olyan pozi-
tív egész számok, melyekre p > q teljesül.

d) Jelölje a háromszögbe írt kör sugarának hosszát r. Igazolja, hogy r értéke egész
szám!

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_008.png', ARRAY['geometria-sik','bizonyitasok','szamelmelet','algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('09480bce-207f-4591-91a2-d850caf6101d', NOW(), 'e_matma_24maj_fl__009__', 'e_matma_24maj_fl', 'e_matma_24maj_fl.pdf', 2024, 'emelt', 'majus', true, 'II', 9, NULL, '=
2
( )
f x
x
Legyen f a valós számok halmazán értelmezett függvény, ahol
.
b
{{formula:e_matma_24maj_fl_p20_001.png}}

=
f x =
( )
f a
b
( )
63
a) Határozza meg a és b értékét, ha
és
.
a
Legyen h a valós számok halmazán értelmezett függvény, ahol h(x) = x2 + px + r.

b) Határozza meg p és r értékét, ha h(1), h(3) és h(4) (ebben a sorrendben) egy szám-
tani, h(1), h(2) és h(4) pedig (ebben a sorrendben) egy mértani sorozat egymást kö-
vető tagjai!

a)
b)
Ö.:', 16, '/images/e_matma_24maj_fl/crops/e_matma_24maj_fl_prob_009.png', ARRAY['integralszamitas','differencialszamitas','egyenletek','sorozatok','fuggvenyek']::text[], false, false, '', true);

-- e_matma_25maj_fl (24 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7e946be8-f843-47f6-8bc8-1b1c023eed8d', NOW(), 'e_matma_25maj_fl__001__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 1, 'a', 'a) Oldja meg az alábbi egyenletet a valós számok halmazán!
+
−
−
+
=
3
1
x
x
x
2
2
2
60
b) Oldja meg az alábbi egyenletrendszert a valós számpárok halmazán!
+
=
−
{{formula:e_matma_25maj_fl_p04_001.png}}

a)
b)
Ö.:', 13, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_001.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5ce442d2-dab3-442e-a505-4abc101741c8', NOW(), 'e_matma_25maj_fl__002__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 2, 'a', 'a) Satírozza be az alábbi ábrán a B \ (A ∪ C) halmazt!', 11, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_002.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('18d0a4c0-4f3b-48d1-8662-23f658d0c95f', NOW(), 'e_matma_25maj_fl__002__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 2, 'b', 'b) Adja meg halmazműveletek segítségével az alábbi ábrán szürke színnel jelzett rész-
halmazt!

Legyen a H alaphalmaz a függvények halmaza, Z, K és P pedig a H alábbi részhalmazai:
Z = {zérushellyel rendelkező függvények};
K = {kölcsönösen egyértelmű függvények};
P = {páratlan függvények}.', 11, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_002.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4d5a7ac7-6f64-4547-8fa2-417c9a7155a6', NOW(), 'e_matma_25maj_fl__002__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 2, 'c', 'c) Helyezze el az alábbi hozzárendelésekkel megadott
függvények betűjelét az ábra megfelelő részébe!
f : R → R, x
α
x
x +
g: R → R,
2
α
2
x
h: R+ → R,
α
lg
x
x
i:  R → R,
α
sin
x
x
Egy négypontú gráf csúcsait megfeleltetjük a fenti f, g, h és i függvényeknek. Két csúcsot
pontosan akkor kötünk össze éllel, ha a két megfelelő függvény értékkészletének van kö-
zös eleme.', 11, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_002.png', ARRAY['halmazok','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('50f29e22-e455-4686-8f8e-1cf5e1e11663', NOW(), 'e_matma_25maj_fl__002__d', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 2, 'd', 'd) Rajzolja fel az így kapott gráfot! Válaszát itt nem kell indokolnia.

a)
b)
c)
d)
Ö.:', 11, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_002.png', ARRAY['grafelmelet','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('99d857f0-352b-4857-b40e-2ef2c2ee9939', NOW(), 'e_matma_25maj_fl__003__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 3, 'a', 'Egy pizzériában 2 sonkás pizza és 3 baracklé összesen 7600 Ft-ba kerül, ugyanitt 3 sonkás
pizza és 5 baracklé pedig összesen 11 700 Ft-ba.
a) Mennyibe kerül egy sonkás pizza, és mennyibe egy baracklé?
A pizzagyártás során az alapanyag ára és az egyéb költségek (energia, munkaerő stb.)
aránya 7 : 3. Az alapanyag ára 15%-kal, az egyéb költségek 25%-kal nőttek az elmúlt
évben.', 13, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_003.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('42f85478-2878-499c-a644-adbaac0b69db', NOW(), 'e_matma_25maj_fl__003__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 3, 'b', 'Egy pizzériában 2 sonkás pizza és 3 baracklé összesen 7600 Ft-ba kerül, ugyanitt 3 sonkás
pizza és 5 baracklé pedig összesen 11 700 Ft-ba.

b) Hány százalékkal kerül többe egy pizza elkészítése most, mint tavaly?
Péter takarékoskodik az energiával, ezért egy 46 cm × 46 cm-es
tepsiben egyszerre szeretne megsütni két darab 32 cm átmérőjű
pizzát. Mivel egészben nem férnek el egymás mellett, ezért Péter
félbevágja a pizzákat, és megpróbálja elhelyezni a tepsiben az
ábra szerinti elrendezésben. (A fél pizzák középpontja egybeesik
a tepsi egy-egy oldalának felezőpontjával, és a fél pizzák között
nem lehet átfedés.)', 13, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_003.png', ARRAY['szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e2017984-d325-40bc-a528-32db05794830', NOW(), 'e_matma_25maj_fl__003__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 3, 'c', 'Egy pizzériában 2 sonkás pizza és 3 baracklé összesen 7600 Ft-ba kerül, ugyanitt 3 sonkás
pizza és 5 baracklé pedig összesen 11 700 Ft-ba.

c) Belefér-e így a tepsibe a két pizza?

a)
b)
c)
Ö.:', 13, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_003.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2190b15a-f679-4ed0-a758-c73cd8af4e7f', NOW(), 'e_matma_25maj_fl__004__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 4, 'a', 'Bence a történelmi évszámokat tanulva észrevette, hogy három évszám egy mértani
sorozat három egymást követő tagja. A három szám közül a legkisebb a 732, a
legnagyobb pedig az 1647.
a) Melyik a középső évszám?
Bence tíz matematikajegyének átlaga és mediánja is 4, egyetlen módusza 5. (A jegyek
egész számok, 1-től 5-ig.)', 14, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_004.png', ARRAY['sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('22c5c473-491d-499f-be52-5942e58d6ec6', NOW(), 'e_matma_25maj_fl__004__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 4, 'b', 'Bence a történelmi évszámokat tanulva észrevette, hogy három évszám egy mértani
sorozat három egymást követő tagja. A három szám közül a legkisebb a 732, a
legnagyobb pedig az 1647.

b) Határozza meg Bence matematikajegyeit!
Bence tízóraira három kürtőskalácsot vásárol a családnak. Az üzletben diós, fahéjas, ka-
kaós és vaníliás kürtőskalács kapható.', 14, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_004.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3fa09350-0174-4166-af87-ac61d5f03b35', NOW(), 'e_matma_25maj_fl__004__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'I', 4, 'c', 'Bence a történelmi évszámokat tanulva észrevette, hogy három évszám egy mértani
sorozat három egymást követő tagja. A három szám közül a legkisebb a 732, a
legnagyobb pedig az 1647.

c) Hányféleképpen választhatja ki Bence a három kürtőskalácsot? (Egyféle ízből töb-
bet is vehet. Két kiválasztást különbözőnek tekintünk, ha legalább egy ízből külön-
böző számú darabot választott a két esetben.)

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 14, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_004.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a867f7dd-dd9e-43c8-b3ff-3f97ae38c225', NOW(), 'e_matma_25maj_fl__005__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 5, 'a', 'a) Egy számtani sorozat harmadik tagja 5, tizenharmadik tagja 22. Határozza meg a
sorozat első 100 tagjának összegét!', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_005.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cae0ede3-21ca-4b34-af8d-d805cce7f5e8', NOW(), 'e_matma_25maj_fl__005__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 5, 'b', 'b) Egy számtani sorozat első tagja 91, differenciája 2. Határozza meg azt az n pozitív
egész számot, amelyre a sorozat első n tagjának összege n 3.', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_005.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cbca3898-bb3f-49d1-8571-6093c2f97096', NOW(), 'e_matma_25maj_fl__005__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 5, 'c', 'c) Egy mértani sorozat első tagja 1,6, hányadosa 2. Az első tagtól kezdve legalább hány
tagot kell összeadni, hogy az összeg nagyobb legyen egymilliárdnál?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_005.png', ARRAY['sorozatok','egyenletek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9d3b7e56-94c5-4f8c-b4ee-972d2bbf8e4a', NOW(), 'e_matma_25maj_fl__006__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 6, 'a', '=
Σ= 35°, DACΣ= 48°.
Σ
Az ABCD húrnégyszögben a BD átló hossza 20 cm, ABD
BCA
a) Igazolja, hogy BDAΣ= 35° és ACDΣ= 35°.', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_006.png', ARRAY['geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8441efc3-65ae-4ff3-83c1-ac4e491019ce', NOW(), 'e_matma_25maj_fl__006__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 6, 'b', '=
Σ= 35°, DACΣ= 48°.
Σ
Az ABCD húrnégyszögben a BD átló hossza 20 cm, ABD
BCA

b) Számítsa ki az ABCD húrnégyszög kerületét!
Az EFG háromszögről a következőket tudjuk: EF = 110 cm, FG = 50 cm, EG = 104 cm.', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_006.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bae36757-700c-49a7-89cc-5f0d3d84682d', NOW(), 'e_matma_25maj_fl__006__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 6, 'c', '=
Σ= 35°, DACΣ= 48°.
Σ
Az ABCD húrnégyszögben a BD átló hossza 20 cm, ABD
BCA

c) Számítsa ki, hogy a háromszög F csúcsából induló belső szögfelező mekkora ré-
szekre osztja az EG oldalt!

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_006.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('dd8de3b1-8d90-4e24-9cc2-9cec6603b683', NOW(), 'e_matma_25maj_fl__007__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 7, 'b', 'Anna és Balázs felváltva dobnak egy szabályos dobókockával. A játékot Anna kezdi. Az
nyer, aki először dob hatost. (Az első hatosdobás után a játéknak vége van.)
a) Igazolja, hogy 5
36 annak a valószínűsége, hogy Balázs az első dobásával megnyeri
a játékot!
b) Határozza meg annak a valószínűségét, hogy Anna az első három dobásának vala-
melyikével megnyeri a játékot!', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_007.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4ef1e9dd-149e-467f-a6ed-808b3a4b9d23', NOW(), 'e_matma_25maj_fl__007__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 7, 'c', 'Anna és Balázs felváltva dobnak egy szabályos dobókockával. A játékot Anna kezdi. Az
nyer, aki először dob hatost. (Az első hatosdobás után a játéknak vége van.)
a) Igazolja, hogy 5
36 annak a valószínűsége, hogy Balázs az első dobásával megnyeri
a játékot!

c) Határozza meg annak a valószínűségét, hogy Anna nyeri a játékot!
Egy kísérletben feldobnak két szabályos dobókockát. A kísérlet kimenetele a két dobott
érték közül a nem nagyobb.', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_007.png', ARRAY['valoszinuseg','sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4a2e63ff-ddb8-4ae5-a1d9-2ce27b9235f0', NOW(), 'e_matma_25maj_fl__007__d', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 7, 'd', 'Anna és Balázs felváltva dobnak egy szabályos dobókockával. A játékot Anna kezdi. Az
nyer, aki először dob hatost. (Az első hatosdobás után a játéknak vége van.)
a) Igazolja, hogy 5
36 annak a valószínűsége, hogy Balázs az első dobásával megnyeri
a játékot!

d) Határozza meg a kísérlet kimenetelének várható értékét!

a)
b)
c)
d)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_007.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8624d979-b488-4bc4-81e7-56c9018ca96b', NOW(), 'e_matma_25maj_fl__008__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 8, 'a', 'a) Adja meg az összes olyan állítás betűjelét, amely a következő állítás tagadása!
„Minden virág illatos.”
A) Van olyan virág, amelyik illatos.
B) Van olyan virág, amelyik nem illatos.
C) Semelyik virág nem illatos.
D) Nem minden virág illatos.
Egy piros, egy fehér és egy zöld színű vázába 6 különböző virágot teszünk.', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_008.png', ARRAY['logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3ebd2cb3-60cb-4565-a5b8-55a7a807886d', NOW(), 'e_matma_25maj_fl__008__b', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 8, 'b', 'b) Hányféle lehetőségünk van a virágok elhelyezésére, ha minden vázába legalább egy
virág kerül? (Két elrendezés különböző, ha van olyan váza, amelyikben nem ponto-
san ugyanazok a virágok szerepelnek a két elrendezésben.)
Egy 2 liter űrtartalmú, felül nyitott, forgáshenger alakú vázát készítünk.', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_008.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('10f02da7-1e45-4ba4-b737-315aa8a4a395', NOW(), 'e_matma_25maj_fl__008__c', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 8, 'c', 'c) Hány centiméter magas legyen a váza, ha azt szeretnénk, hogy a belső felszíne mi-
nimális legyen?

a)
b)
c)
Ö.:
Az 5-9. feladatok közül tetszése szerint választott négyet kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon található üres négyzetbe!', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_008.png', ARRAY['geometria-ter','differencialszamitas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cfe3cf0c-c0bc-402e-b141-88a08698e245', NOW(), 'e_matma_25maj_fl__009__a', 'e_matma_25maj_fl', 'e_matma_25maj_fl.pdf', 2025, 'emelt', 'majus', true, 'II', 9, 'a', 'Az ABC egyenlőszárú háromszög alapjának egyik végpontja B(0; 4), a szárak metszés-
pontja A(3; 0). A háromszög alapjának másik végpontja az x + 2y = 8 egyenletű e egye-
nesre illeszkedik.
a) Határozza meg a háromszög C csúcsának koordinátáit!
1
9
1
13
=−
+
−
=−
+
2
Adott az
egyenletű parabola és az
egyenletű f egyenes.
4
y
x
x
y
x
2
2
2
2
b) Határozza meg a parabola és az f egyenes által határolt korlátos síkidom területét!

a)
b)
Ö.:', 16, '/images/e_matma_25maj_fl/crops/e_matma_25maj_fl_prob_009.png', ARRAY['koordinata-geometria','geometria-sik','egyenletek']::text[], false, false, '', true);

-- k_matma_10maj_fl (13 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e99a5467-5dfe-462a-b67c-2bcc53a303ce', NOW(), 'k_matma_10maj_fl__013__a', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 13, 'a', 'Az  f  függvényt a [–8; 6]-on értelmezzük. Az alábbi ábra f grafikonját mutatja.
a)
Adja meg az f függvény zérushelyeit és az értékkészletét! Mekkora a legkisebb
felvett függvényérték? Melyik helyen veszi fel a függvény ezt az értéket?', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_013.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ec58f2a2-74db-43ee-b5e9-dd2cd55e7685', NOW(), 'k_matma_10maj_fl__013__b', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 13, 'b', 'Az  f  függvényt a [–8; 6]-on értelmezzük. Az alábbi ábra f grafikonját mutatja.

b)
Adja meg f  függvény hozzárendelésének képletét!', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_013.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('07a014a6-06f5-4cdd-9b12-c38050d7060e', NOW(), 'k_matma_10maj_fl__013__c', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 13, 'c', 'Az  f  függvényt a [–8; 6]-on értelmezzük. Az alábbi ábra f grafikonját mutatja.

−
=
−
+
c)
Oldja meg a valós számok halmazán az
egyenletet!
2
4
2
x

a)
b)
c)
Ö.:

y

f
1
x
1', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('12c6b8c4-0125-4ad1-8e52-21081a243cab', NOW(), 'k_matma_10maj_fl__014__', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 14, NULL, 'Az alábbi ábrán egy négyszög alakú telekről készített vázlat látható. Hány négyzetméter
a telek területe? Válaszát százasokra kerekítve adja meg!

Ö.:', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_014.png', ARRAY['geometria-sik','trigonometria','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('caf8bdcd-4098-47a7-b92b-6c3515954915', NOW(), 'k_matma_10maj_fl__015__a', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 15, 'a', 'Az osztályban nyolc tanuló (András, Balázs, Cili, Dani, Eszter, Feri, Gabi és Hedvig) jó
barátságban van egymással. A nyári szünet első napján András kitalálta, hogy másnap
együtt elutazhatnának a nyaralójukba, és ott tölthetnének néhány napot. Ezért felhívta
telefonon Cilit és Ferit, és megkérte őket, hogy a többieket sürgősen értesítsék telefonon
az utazás tervéről. (Egy hívás alkalmával mindig csak ketten beszélgetnek egymással.)
a)
Legalább hány telefonbeszélgetésnek kellett megtörténnie (beleértve András
beszélgetéseit is), hogy mindenki tudjon a tervezett nyaralásról?', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_015.png', ARRAY['grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0b277be5-5bd0-4056-93d6-9b3066529683', NOW(), 'k_matma_10maj_fl__015__b', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 15, 'b', 'Az osztályban nyolc tanuló (András, Balázs, Cili, Dani, Eszter, Feri, Gabi és Hedvig) jó
barátságban van egymással. A nyári szünet első napján András kitalálta, hogy másnap
együtt elutazhatnának a nyaralójukba, és ott tölthetnének néhány napot. Ezért felhívta
telefonon Cilit és Ferit, és megkérte őket, hogy a többieket sürgősen értesítsék telefonon
az utazás tervéről. (Egy hívás alkalmával mindig csak ketten beszélgetnek egymással.)

b)
A létrejött telefonbeszélgetések során végül mindenki értesült András tervéről.
Ezekről a telefonbeszélgetésekről a következőket tudjuk:
- András csak Cilit és Ferit hívta fel;
- Feri senki mással nem beszélt telefonon, Cili pedig csak Andrással és Danival
beszélt;
- Dani összesen két barátjával beszélt, Eszter pedig hárommal;
- Balázzsal csak Hedvig beszélt, mivel Hedvig tudta, hogy másnak már nem kell
szólnia;
- Andrást egyedül csak Gabi hívta fel, hogy megkérdezze a nyaraló pontos
címét.
Ábrázolja a telefonbeszélgetéseket egy olyan gráfban, amelyben a pontok az
embereket jelölik, és két pontot pontosan akkor köt össze él, ha az illetők
beszéltek egymással telefonon (függetlenül attól, hogy ki kezdeményezte a
hívást)!
Használja a mellékelt ábrát!', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_015.png', ARRAY['grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bbc29b94-1cd9-4ff6-a131-24a18914269d', NOW(), 'k_matma_10maj_fl__015__c', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 15, 'c', 'Az osztályban nyolc tanuló (András, Balázs, Cili, Dani, Eszter, Feri, Gabi és Hedvig) jó
barátságban van egymással. A nyári szünet első napján András kitalálta, hogy másnap
együtt elutazhatnának a nyaralójukba, és ott tölthetnének néhány napot. Ezért felhívta
telefonon Cilit és Ferit, és megkérte őket, hogy a többieket sürgősen értesítsék telefonon
az utazás tervéről. (Egy hívás alkalmával mindig csak ketten beszélgetnek egymással.)

c)
Másnap mindannyian ugyanazzal a vonattal utaztak. A zsúfolt vonaton három
szomszédos fülkében rendre 3, 3, 2 szabad helyet találtak. Igaz-e, hogy több
mint 500 – féleképpen helyezkedhettek el a három fülkében, ha a fülkéken belül
az ülőhelyeket nem különböztetjük meg?

a)
b)
c)
Ö.:
B
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_015.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2e443bc7-dd87-4467-b7d3-b6f8a6a1d1f8', NOW(), 'k_matma_10maj_fl__016__a', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy erdő faállományát 1998. január elején 29 000 m3-nek becsülték.
Hány m3 lesz 11 év múlva az erdő faállománya, ha a gyarapodás minden évben
a)
az előző évi állomány 2 százaléka? Válaszát ezresekre kerekítve adja meg!
Az erdő faállománya négy csoportba sorolható: tölgy, bükk, fenyő és vegyes (az
előzőekben felsorolt fafajtáktól különböző).
1998 elején a faállomány 44%-a tölgy és 16%-a fenyő volt. Tudjuk még, hogy ekkor a
bükkfa állomány és a fenyőfa állomány aránya ugyanannyi volt, mint a fenyőfa és a
vegyes fafajták állományának aránya. (Fenyőből több volt, mint a vegyes fafajtákból.)', 17, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_016.png', ARRAY['exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('66d4fc93-2d26-439c-9c6c-171126f556dd', NOW(), 'k_matma_10maj_fl__016__b', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy erdő faállományát 1998. január elején 29 000 m3-nek becsülték.

b)
Számítsa ki, hogy mekkora volt 1998 elején az egyes fafajták százalékos
részesedése az állományban! A kapott adatokat ábrázolja kördiagramon,
feltüntetve a kiszámított szögek nagyságát fokokban mérve!

a)
b)
Ö.:
0°
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_016.png', ARRAY['egyenletek','statisztika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ab3770f-aa31-4a2e-8f69-5b75f7768f32', NOW(), 'k_matma_10maj_fl__017__a', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 17, 'a', 'a)
Vizsgálja meg, hogy a 0°-nál nem kisebb és 360°-nál nem nagyobb szögek közül
melyekre értelmezhető a következő egyenlet! Oldja meg az egyenletet ezen
szögek halmazán!
−
=
x
x
tg
5
ctg
4', 17, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_017.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('080e275a-767b-4ac3-b0e2-f77b25e6b9e8', NOW(), 'k_matma_10maj_fl__017__b', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 17, 'b', '=
+
−
Oldja meg a 3-nál nagyobb valós számok halmazán a
x
x
lg
1
)
3
(
lg
b)
egyenletet!

a)
b)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania, a
kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_017.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3c80f742-e370-4b65-8b57-4bf304df6c20', NOW(), 'k_matma_10maj_fl__018__a', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 18, 'a', 'Minőségellenőrzéskor kiderült, hogy 100 készülék között 12 hibás van, a többi 88 jó. A
100 készülékből véletlenszerűen, egyesével kiválasztunk 6-ot úgy, hogy a kiválasztott
készülékeket rendre visszatesszük.
Mekkora annak a valószínűsége, hogy nincs a kiválasztott készülékek között
a)
hibás?
Válaszát tizedes tört alakban adja meg!
A 100 készülék közül ismét véletlenszerűen, de ezúttal visszatevés nélkül választunk ki
6 darabot.', 17, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_018.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4d5e03ba-2ee9-4731-bd51-aea1e4d2374a', NOW(), 'k_matma_10maj_fl__018__b', 'k_matma_10maj_fl', 'k_matma_10maj_fl.pdf', 2010, 'kozep', 'majus', true, 'II', 18, 'b', 'Minőségellenőrzéskor kiderült, hogy 100 készülék között 12 hibás van, a többi 88 jó. A
100 készülékből véletlenszerűen, egyesével kiválasztunk 6-ot úgy, hogy a kiválasztott
készülékeket rendre visszatesszük.

Melyik esemény bekövetkezésének nagyobb a valószínűsége:
b)
A kiválasztott készülékek között nincs hibás,
vagy
közöttük legalább két hibás készülék van?
Válaszát számítással indokolja!

a)
b)
Ö.:', 17, '/images/k_matma_10maj_fl/crops/k_matma_10maj_fl_prob_018.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);

-- k_matma_11maj_fl (25 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3cfbf89f-380b-4810-b136-3394ee62b963', NOW(), 'k_matma_11maj_fl__001__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 1, NULL, 'Alakítsa szorzattá a következő kifejezést!
a +
3
a

A szorzat alak:', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_001.png', ARRAY['algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7c049139-513a-4598-a709-76673bd1f8a1', NOW(), 'k_matma_11maj_fl__002__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 2, NULL, 'Augusztus végén egy család 9 000 Ft-ot költött a kilencedik osztályt kezdő gyerekük
legfontosabb iskolaszereire. A tankönyvek, a füzetek, illetve az egyéb apróságok árának
aránya ezen az összegen belül 14:5:1. Mennyit költöttek ebből a pénzből a gyerek
tankönyveire, füzeteire?

A tankönyvek ára: ................ Ft.
A füzetek ára: ....................... Ft.', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_002.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('09e5fb64-590d-4fd5-b5e8-fb1903deed13', NOW(), 'k_matma_11maj_fl__003__a', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 3, 'a', 'Az alábbi táblázat egy nagy divatáru üzletben eladott pólók számát mutatja méretek
szerinti bontásban:

a)
Mennyi az eladott M-es méretű pólók relatív gyakorisága?', 1, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_003.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ae3de733-8e69-4138-87c0-3b95f7663d9f', NOW(), 'k_matma_11maj_fl__003__b', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 3, 'b', 'Az alábbi táblázat egy nagy divatáru üzletben eladott pólók számát mutatja méretek
szerinti bontásban:

b)
Melyik az egyes pólók méretéből álló adatsokaság módusza?', 1, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_003.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('84ba6d7c-b102-4b4d-b044-776f40266a74', NOW(), 'k_matma_11maj_fl__003__c', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 3, 'c', 'Az alábbi táblázat egy nagy divatáru üzletben eladott pólók számát mutatja méretek
szerinti bontásban:
A pólók mérete
Eladott darabszám
XS
60
S
125
M
238
L
322
XL
198
XXL
173

c)
Méretenként hány darabot adnának el ugyanekkora forgalom esetén, ha
mindegyik méretből ugyanannyi kelne el?

a) A relatív gyakoriság:

b) A módusz:

c)', 1, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_003.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f84625db-e0c3-4fb3-bbc2-26a2fa4676eb', NOW(), 'k_matma_11maj_fl__004__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 4, NULL, 'A háromszög köré írt kör O középpontjáról három állítást sorolunk fel.
A)
Az O pont az oldalfelező merőlegesek metszéspontja.
B)
Az O pont minden háromszögben egyenlő távolságra van az oldalaktól.
C)
Az O pont bármely háromszögben egyenlő távolságra van a háromszög
csúcsaitól.
A három állítás közül az igaz(ak) betűjelét írja a választéglalapba!

Az igaz állítás(ok) betűjele:', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_004.png', ARRAY['logika','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('773ac158-4d34-4e82-98b3-a85225587bb8', NOW(), 'k_matma_11maj_fl__005__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 5, NULL, 'Oldja meg a következő egyenletrendszert, ahol x és y valós számot jelöl!
=
+
⎫
48
4
y
x
⎬
=
+
60
4
2
y
x
⎭

=
x
2 pont
=
y', NULL, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_005.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('33d3e677-feb5-4e4c-a0d2-f9eb6c6b05de', NOW(), 'k_matma_11maj_fl__006__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 6, NULL, 'Egy hattagú társaságban mindenki a társaságnak pontosan három tagjával fogott kezet.
Hány kézfogásra került sor?

A kézfogások száma:', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_006.png', ARRAY['grafelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0341a3ec-a95f-452b-8674-402ac15212be', NOW(), 'k_matma_11maj_fl__007__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 7, NULL, '6⋅
=
4⋅
=
40
61
X
Y
Legyen
és
. Írja fel az X·Y szorzat normál alakját!
10
10

X·Y =', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_007.png', ARRAY['szamok-muveletek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d859255f-7c60-4c69-b34e-0f24c667d2bd', NOW(), 'k_matma_11maj_fl__008__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 8, NULL, 'Az (
)
3 =
2 =
a
mértani sorozatban
és
6
a
. Számítsa ki a sorozat ötödik tagját!
8
a
n
Válaszát indokolja!

=
a
5', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_008.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ae2c5ef2-bcc8-403a-b1be-fc8056b7153c', NOW(), 'k_matma_11maj_fl__009__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 9, NULL, 'Tapasztalatok szerint egy férfi cm-ben mért (h) magasságának és alkarjának hossza (a)
10 +
256
a
=
.
között a következő összefüggés áll fenn:
h
3
Ezen összefüggés szerint milyen hosszú egy 182 cm magas férfi alkarja?
Válaszát indokolja!

A férfi alkarja  ............  cm hosszú.', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_009.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f29e33a2-099a-4fb4-962f-90dc9f09d9b9', NOW(), 'k_matma_11maj_fl__010__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 10, NULL, 'Egy könyvritkaság értéke a katalógus szerint két éve 23 000 Ft volt. Ez az érték egy év
alatt 20%-kal nőtt. A második évben 30%-os volt az értéknövekedés. Mennyi lett
a könyv értéke két év után? Hány százalékos a két év alatt az értéknövekedés?
Válaszát indokolja!

A könyv értéke 2 év után:

Az értéknövekedés ................... %.', 1, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_010.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c282cf6e-fc89-4590-98d0-5cd5a3cb0812', NOW(), 'k_matma_11maj_fl__011__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 11, NULL, 'Mely valós b számokra igaz, hogy
−
=
2
?
b
b

A lehetséges b értékek:', 2, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_011.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('df32f127-d8da-43b0-8a16-4fcaade29dcb', NOW(), 'k_matma_11maj_fl__012__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'I', 12, NULL, 'Tekintsük a következő két halmazt: A={36 pozitív osztói}; B={16-nak azon osztói,
amelyek négyzetszámok}.
A ∩
;
.
Elemeik felsorolásával adja meg a következő halmazokat: A; B;
B
B
A \

=
{
}
A

=
B
{
}

=
∩B
{
}
A

=
{
}
B
A \
A', 1, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_012.png', ARRAY['halmazok','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ebd412a8-6020-443e-95e8-f05559153924', NOW(), 'k_matma_11maj_fl__013__a', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 13, 'a', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!
2
2
=
−
−x
a)
2
)1
(
x
.', 12, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0fe97ea2-e7dd-4aaf-b530-bbb3d7219ab6', NOW(), 'k_matma_11maj_fl__013__b', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 13, 'b', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!

=
−
−
2
)1
(
lg
lg
x
x
b)
.

a)
b)
Ö.:', 12, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_013.png', ARRAY['egyenletek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('da2c2973-1cdf-4b98-95e6-ac98ebe12fa2', NOW(), 'k_matma_11maj_fl__014__', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 14, NULL, 'Zsuzsi 7-jegyű mobiltelefonszáma különböző számjegyekből áll, és az első számjegy
nem nulla. Amikor Ildikó felhívta Zsuzsit, feltűnt neki, hogy a mobiltelefonján a három
oszlop közül csak kettőnek a nyomógombjaira volt szükség. Ezekre is úgy, hogy először
az egyik oszlopban levő nyomógombokat kellett valamilyen sorrendben megnyomnia,
ezután pedig egy másik oszlop nyomógombjai következtek valamilyen sorrendben.
Hány ilyen telefonszám lehetséges?

Ö.:', 12, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_014.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('665f4ca0-1115-4f3d-b433-2291acb35286', NOW(), 'k_matma_11maj_fl__015__a', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 15, 'a', 'a)
Szélsőérték szempontjából vizsgálja meg az alábbi függvényeket! Írja a meg-
adott függvények betűjeleit a táblázatba a megfelelő helyekre! (Ennél a feladat-
résznél válaszát nem kell indokolnia.)
+
→
2
sin
,
:
x
x
f
R
R
;
a
−
→
;
x
x
g
,
:
R
R
a
3
{ }
→
x
h
,
0
\
:
R
R
;
a
x
→
∞
+
x
x
j
,
[
;
0
[
:
R
;
a
x
R →
.
x
m
2
,
:
R
a
csak maximuma
csak minimuma
minimuma és
nincs szélsőértéke
van
van
maximuma is van

A k függvény értelmezési tartománya a [
]
zárt intervallum, és
b)
4
;
0
2
+
−
=
.
x
x
x
k
5
6
)
(
b1)
Ábrázolja a függvényt a megadott koordináta-rendszerben!
b2)
Adja meg a függvény értékkészletét! (Ezt a válaszát nem kell indokol-
nia.)
b3)
Adja meg a függvény zérushelyét!

a)
b1)
b2)
b3)
Ö.:
B
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_015.png', ARRAY['fuggvenyek','differencialszamitas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9992d019-c59f-42df-9052-a8338b08a0ae', NOW(), 'k_matma_11maj_fl__016__a', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 16, 'a', 'Az ábrán egy vasalódeszka tartószerkezetének méreteit láthatjuk. A vasalódeszka
a padlóval párhuzamos. Az egyik tartórúd 114 cm hosszú.
a)
Hány cm a másik tartórúd hossza?', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_016.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6ddb521e-cf19-44cf-b6a1-e083d05b8dd7', NOW(), 'k_matma_11maj_fl__016__b', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 16, 'b', 'Az ábrán egy vasalódeszka tartószerkezetének méreteit láthatjuk. A vasalódeszka
a padlóval párhuzamos. Az egyik tartórúd 114 cm hosszú.
b)
Hány cm magasan van a padlóhoz képest a vasalófelület, ha a vasalódeszka 3 cm
vastag?

a)
vasalófelület
51 cm
b)
44 cm
42 cm
Ö.:

70 cm

padló
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_016.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('51f65b01-811b-47a0-929a-3c37130afb3c', NOW(), 'k_matma_11maj_fl__017__a', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 17, 'a', 'Egy játék egy fordulójában minden játékosnak egymás után háromszor kell dobnia egy
szabályos dobókockával.
Egy játékos egy fordulóban (a három dobásával) akkor nyer, ha:
1. mindhárom dobásának eredménye páros szám, ekkor a nyereménye 300 zseton;
2. az elsőre dobott szám az 1-es, és a következő két dobás közül pontosan az egyik
páros, ekkor a nyereménye 500 zseton;
3. az első dobása 3-as, a többi pedig páratlan, ekkor a nyereménye 800 zseton;
4. mindhárom dobott szám az 5-ös, ekkor a nyereménye 2000 zseton.
a)
Mekkora valószínűséggel nyer egy játékos egy fordulóban
a1) 300 zsetont;
a2) 500 zsetont;
a3) 800 zsetont;
a4) 2000 zsetont?', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_017.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5535f3b8-e18f-4f84-be08-3222e81e09cb', NOW(), 'k_matma_11maj_fl__017__b', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 17, 'b', 'Egy játék egy fordulójában minden játékosnak egymás után háromszor kell dobnia egy
szabályos dobókockával.
Egy játékos egy fordulóban (a három dobásával) akkor nyer, ha:
1. mindhárom dobásának eredménye páros szám, ekkor a nyereménye 300 zseton;
2. az elsőre dobott szám az 1-es, és a következő két dobás közül pontosan az egyik
páros, ekkor a nyereménye 500 zseton;
3. az első dobása 3-as, a többi pedig páratlan, ekkor a nyereménye 800 zseton;
4. mindhárom dobott szám az 5-ös, ekkor a nyereménye 2000 zseton.

b)
Mekkora annak a valószínűsége, hogy egy játékos egy fordulóban nem nyer
zsetont?

a)
b)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_017.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c8a7b543-2172-4a69-b457-5e26390082e8', NOW(), 'k_matma_11maj_fl__018__a', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy osztályba 16 lány és 18 fiú jár. Egy délutáni összejövetelre a lányok aprósüteményt
készítettek a fiúknak. Mindegyik lány ugyanannyi darabot sütött és az is kiderült, hogy
mindegyik fiúnak ugyanannyi darab sütemény jutott. A sütemények száma 400 darabnál
több volt, de 500-nál kevesebb.
a)
Hány darab sütemény készült?
Dani csak Brigitta rombusz alakú süteményeiből
kapott (a sütemény méretei az ábra szerintiek).
Megpróbált minél több süteményt úgy elhelyezni
körben egy süteményes tálon, hogy mindegyik süte-
ménynek az egyik hegyesszögű csúcsa a tál közép-
pontjában legyen.  Sem élére nem állított, sem egy-
másra nem rakott süteményeket.', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_018.png', ARRAY[]::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d946d75e-1b7d-4e15-90a7-b83e16812469', NOW(), 'k_matma_11maj_fl__018__b', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy osztályba 16 lány és 18 fiú jár. Egy délutáni összejövetelre a lányok aprósüteményt
készítettek a fiúknak. Mindegyik lány ugyanannyi darabot sütött és az is kiderült, hogy
mindegyik fiúnak ugyanannyi darab sütemény jutott. A sütemények száma 400 darabnál
több volt, de 500-nál kevesebb.

b)
Legfeljebb hány sütemény fér el így egy körben?
Andrea linzerkarika tésztaszaggatót használt a süteménye elkészíté-
séhez. A rombusz alakú sütemény és a linzerkarika felülnézetben
ugyanakkora területűek.', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_018.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b429d759-4e6c-4e8f-b048-af343b35be63', NOW(), 'k_matma_11maj_fl__018__c', 'k_matma_11maj_fl', 'k_matma_11maj_fl.pdf', 2011, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy osztályba 16 lány és 18 fiú jár. Egy délutáni összejövetelre a lányok aprósüteményt
készítettek a fiúknak. Mindegyik lány ugyanannyi darabot sütött és az is kiderült, hogy
mindegyik fiúnak ugyanannyi darab sütemény jutott. A sütemények száma 400 darabnál
több volt, de 500-nál kevesebb.

4 cm
4 cm
2,5 cm
4 cm
4 cm

x cm
c)
Hány cm a linzerkarika belső körének a sugara?

4 cm

a)
b)
c)
Ö.:', 17, '/images/k_matma_11maj_fl/crops/k_matma_11maj_fl_prob_018.png', ARRAY['geometria-sik','egyenletek','szovegfeladas']::text[], false, false, '', true);

-- k_matma_12maj_fl (29 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c89a851b-ef75-4b7d-b9c9-0c40f9030e0c', NOW(), 'k_matma_12maj_fl__001__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 1, NULL, '1
= x
)
(
x
f
Az f függvényt a 3-tól különböző valós számok halmazán értelmezzük az
−
3
1  értéket?
képlettel. Melyik valós x szám esetén veszi fel az  f  függvény az 20

=
x', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_001.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('27b4752e-94ca-4d09-a265-5de96bdf46fe', NOW(), 'k_matma_12maj_fl__002__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 2, NULL, 'Egy rombusz egyik hegyesszögű csúcsából induló két oldalvektora a és b.
Fejezze ki ezzel a két vektorral az ugyanezen csúcsból induló átló vektorát!

A keresett vektor:
2 pont', NULL, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_002.png', ARRAY['vektorok','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8fff94b9-2bcb-4737-8123-f71203acceaa', NOW(), 'k_matma_12maj_fl__003__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 3, NULL, 'Melyik x valós szám esetén igaz a következő egyenlőség?
−x
=
8
2

=
x', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_003.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c1f2d796-5c9b-44ec-b830-5b3f21e3f496', NOW(), 'k_matma_12maj_fl__004__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 4, NULL, '+
=
→
Válassza ki az alábbi grafikonok közül a g:
függvény
1
2
)
(
,
x
x
g
R
R
grafikonját, és adja meg a g függvény zérushelyét!

A
B
C
A g függvény grafikonjának
betűjele:

A zérushely:', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_004.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8bf97f16-8249-4052-8a25-45b853d337e7', NOW(), 'k_matma_12maj_fl__005__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 5, NULL, 'Hat ajánlott olvasmányból hányféleképpen lehet pontosan négyet kiválasztani?

A lehetőségek száma:', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_005.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f2e05de4-edc0-4c9d-ab45-8e80c06139f1', NOW(), 'k_matma_12maj_fl__006__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 6, NULL, 'y
y
y

1
1
1
x
x
x
1
1
1

=
∪B
Két halmazról, A-ról és B-ről tudjuk, hogy
{ x; y; z; u; v; w }, A \ B={ z; u },
A
A∩
B \ A={ v; w }. Készítsen halmazábrát, és adja meg elemeinek felsorolásával az
B
halmazt!

=
∩B
{
}
A', 1, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_006.png', ARRAY['fuggvenyek','transzformacio']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('10348b30-d819-4ff8-bd44-24360595ec35', NOW(), 'k_matma_12maj_fl__007__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 7, NULL, 'Mekkora lesz két év múlva annak az 50 000 Ft-os befektetési jegynek az értéke,
amelynek évi 10%-kal nő az értéke az előző évihez képest? Válaszát indokolja!

A befektetési jegy értéke:', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_007.png', ARRAY['exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('87023888-da3f-488a-b692-52c01b95960b', NOW(), 'k_matma_12maj_fl__008__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 8, NULL, 'Az N=437y51 hárommal osztható hatjegyű számot jelöl a tízes számrendszerben.
Adja meg az y számjegy lehetséges értékeit!

Az y számjegy lehetséges értékei:', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_008.png', ARRAY['szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7636f068-b9f5-4326-8217-86fdc06e0b5b', NOW(), 'k_matma_12maj_fl__009__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 9, NULL, '2 +
−
−
=
3
)
6
(
)
(
x
x
f
Állapítsa meg az f: R→ R,
függvény maximumhelyét és
a maximum értékét!

Maximumhely:

Maximum érték:', 1, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_009.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6937a841-bbcf-47ed-b0fc-30e18f0bd351', NOW(), 'k_matma_12maj_fl__010__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 10, NULL, 'Egy vasúti fülkében öt utas utazik. Közülük egy személy három másikat ismer, három
főnek 2-2 útitárs ismerőse a fülkében, egy személy van, aki csak egy útitársát ismeri.
(Az ismeretségi kapcsolatok kölcsönösek.)
Ábrázolja egy ilyen társaság egy lehetséges ismeretségi gráfját!

Egy lehetséges ismeretségi gráf:', 3, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_010.png', ARRAY['grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('df1dcd27-f104-437a-ba01-3dc9bcd11e9d', NOW(), 'k_matma_12maj_fl__011__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 11, NULL, 'Határozza meg az
=
+
−
+
2
2
0
2
4
y
x
y
x
egyenletű kör középpontjának koordinátáit!
Mekkora a kör sugara? Válaszát indokolja!

A középpont:

A kör sugara:', 2, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_011.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9ab6270c-f07f-47be-bcaa-90ae2a706a44', NOW(), 'k_matma_12maj_fl__012__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'I', 12, NULL, 'Döntse el az alábbi állítások mindegyikéről, hogy igaz vagy hamis!
A: Két valós szám közül az a nagyobb, amelyiknek a négyzete nagyobb.
B: Ha egy szám 5-tel és 15-tel is osztható, akkor a szorzatukkal is osztható.
C: Két különböző hegyesszög közül a kisebbnek a koszinusza a nagyobb.

A:

B:

C:
A', 1, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_012.png', ARRAY['logika','szamelmelet','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('faa47d29-fded-4098-8e6b-9a0f2339b201', NOW(), 'k_matma_12maj_fl__013__a', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 13, 'a', 'Egy számtani sorozat tizedik tagja 10, a különbsége 4.
a)
Pali azt állítja, hogy a sorozat tizedik tagjának kettes számrendszerbeli alakja
1011. Indokolja vagy cáfolja Pali állításának helyességét!', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_013.png', ARRAY['sorozatok','szamrendszerek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('202cea02-6735-4bb8-8fdb-ec1e0dd72f6e', NOW(), 'k_matma_12maj_fl__013__b', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 13, 'b', 'Egy számtani sorozat tizedik tagja 10, a különbsége 4.

b)
Mekkora a sorozat első tagja?', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_013.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('615ce7c9-4d9e-44b2-a95f-81f3d3e710c4', NOW(), 'k_matma_12maj_fl__013__c', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 13, 'c', 'Egy számtani sorozat tizedik tagja 10, a különbsége 4.

c)
Határozza meg a sorozat legkisebb három számjegyű tagját! Hányadik tagja ez
a sorozatnak?', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_013.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('aa680de8-2489-422f-9cb0-7628703aff7e', NOW(), 'k_matma_12maj_fl__013__d', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 13, 'd', 'Egy számtani sorozat tizedik tagja 10, a különbsége 4.

d)
Hány elemű az a halmaz, amelyet ezen számtani sorozat kétjegyű pozitív tagjai
alkotnak?

a)
b)
c)
d)
Ö.:', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_013.png', ARRAY['sorozatok','halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('92101386-c60c-4942-b022-e1875bb68264', NOW(), 'k_matma_12maj_fl__014__a', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 14, 'a', 'Nekeresd város kórháza az alábbi adatokat hozta nyilvánosságra: a Nekeresden lakó
12 320 emberből az előző évben 1978 embert ápoltak hosszabb-rövidebb ideig a város
kórházában.
a)
Mekkora az esélye, hogy egy véletlenül kiválasztott nekeresdi lakost az előző
évben a város kórházában ápoltak?
Két tizedesjegyre kerekítve adja meg a valószínűséget!

Abban az évben a kórházban ápoltak közül 138 fő volt 18 év alatti, 633 fő 18 és 60 év
közötti, a többi idősebb. A város lakosságának 24%-a 60 év feletti, 18%-a 18 év alatti.
(A számítások során feltehetjük, hogy Nekeresden az ismertetett adatokban lényeges
változás egy év alatt nem történt.)', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_014.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('00f2d28d-730c-479c-b9b8-e73ac6969dd5', NOW(), 'k_matma_12maj_fl__014__b', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 14, 'b', 'Nekeresd város kórháza az alábbi adatokat hozta nyilvánosságra: a Nekeresden lakó
12 320 emberből az előző évben 1978 embert ápoltak hosszabb-rövidebb ideig a város
kórházában.

b)
Készítsen kördiagramot a kórházban ápoltak korosztály szerinti megoszlásáról!
A diagram elkészítéséhez szükséges számításokat írja le!', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_014.png', ARRAY['statisztika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('63a3d16c-5509-4172-af34-0f69db97c2be', NOW(), 'k_matma_12maj_fl__014__c', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 14, 'c', 'Nekeresd város kórháza az alábbi adatokat hozta nyilvánosságra: a Nekeresden lakó
12 320 emberből az előző évben 1978 embert ápoltak hosszabb-rövidebb ideig a város
kórházában.

c)
Mennyivel kisebb vagy nagyobb az a)-ban kérdezett esély, ha a 60 év felettiek
közül választunk ki valakit véletlenszerűen?

a)
b)
c)
Ö.:', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_014.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c61253dc-018c-445e-82fb-197b3e5414bf', NOW(), 'k_matma_12maj_fl__015__', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 15, NULL, 'Földmérők a megfelelő vízszintezés után az alábbi (síkbeli) ábrával dolgoznak.
A  Q  pontot a többi ponttól egy folyó választja el.
Az  A pontban dolgozó földmérő a  P ponttól 720 méterre volt, és a  P és  Q pontokat
egy egyenesben látta. A  PAB szöget 53º-nak mérte.
A  B pontban álló földmérő  A-tól 620 méterre, az  ABQ szöget 108º-nak mérte.
Számítsa ki ezek alapján a  BP; PQ és BQ távolságokat!
Válaszát méterre kerekítve adja meg!
Q

P

A
Ö.:
B
B
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_015.png', ARRAY['geometria-sik','trigonometria','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f9fa702b-64fe-48ab-8651-7ff21d4ca783', NOW(), 'k_matma_12maj_fl__016__a', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 16, 'a', 'Két ország sakkválogatottja, az A és a B csapat közös edzőtáborban készül egy világver-
senyre. Az első héten az azonos nemzetbeli sportolók játszanak körmérkőzéses bajnok-
ságot, tehát minden egyes sportoló minden nemzetbelijével egy mérkőzést.
Az A csapat 7 játékossal érkezett, a B csapatnál összesen 55 mérkőzés zajlott.
a)
Hány mérkőzés zajlott az A csapatnál, és hány tagja van a B csapatnak?
A második héten az A csapat  6 kiválasztott tagjának mindegyike 8 B csapatbeli játékos-
sal játszik egy-egy játszmát.', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_016.png', ARRAY['kombinatorika','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ee407889-4f6c-4772-8fdf-f4d6f228f090', NOW(), 'k_matma_12maj_fl__016__b', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 16, 'b', 'Két ország sakkválogatottja, az A és a B csapat közös edzőtáborban készül egy világver-
senyre. Az első héten az azonos nemzetbeli sportolók játszanak körmérkőzéses bajnok-
ságot, tehát minden egyes sportoló minden nemzetbelijével egy mérkőzést.
Az A csapat 7 játékossal érkezett, a B csapatnál összesen 55 mérkőzés zajlott.

b)
Összesen hány játszma zajlott a második héten?
Az edzőtáborozás végén a csapatok összes játékosa között négy egyforma ajándék-
tárgyat sorsolnak ki. Egy játékos legfeljebb egy ajándéktárgyat kaphat.', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_016.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4856e856-205a-430f-9d1a-c4b86a439707', NOW(), 'k_matma_12maj_fl__016__c', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 16, 'c', 'Két ország sakkválogatottja, az A és a B csapat közös edzőtáborban készül egy világver-
senyre. Az első héten az azonos nemzetbeli sportolók játszanak körmérkőzéses bajnok-
ságot, tehát minden egyes sportoló minden nemzetbelijével egy mérkőzést.
Az A csapat 7 játékossal érkezett, a B csapatnál összesen 55 mérkőzés zajlott.

c)
Mennyi annak a valószínűsége, hogy az ajándékok közül egyet A csapatbeli
játékos, hármat B csapatbeli játékosok kapjanak?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_016.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d47891e9-f131-4653-8db5-6a610a9cc2ff', NOW(), 'k_matma_12maj_fl__017__a', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 17, 'a', 'a)
Oldja meg a valós számok halmazán a következő egyenletet!
(
)
(
)
=
−
+
−
8
lg
3
2
lg
1
2
lg
x
x', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_017.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ea5ef8cd-0798-4663-9deb-8b3c812165ec', NOW(), 'k_matma_12maj_fl__017__b', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 17, 'b', '=
−
−
2
0
5
cos
8
cos
4
x
x
.
b)
Egy háromszög x szögére igaz, hogy
Mekkora ez a szög?', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_017.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3368a15f-457c-4a2d-9964-388f639ee96c', NOW(), 'k_matma_12maj_fl__017__c', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 17, 'c', 'c)
Oldja meg a valós számok halmazán a következő egyenletet!
=
−
y
y
8
5
4', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_017.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8548a89e-605d-497e-a914-8d5ab2ca9039', NOW(), 'k_matma_12maj_fl__017__d', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 17, 'd', 'd)
Megadtunk hét olyan különböző valós számot, amelyek közül az egyik a c)
kérdésben szereplő egyenletnek is megoldása. A számokat felírjuk valamilyen
sorrendben. Hány olyan sorrendje van a megadott számoknak, amelyben az em-
lített szám a középső?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_017.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fd79d18b-7c81-4601-b3d6-53f4538ea8b8', NOW(), 'k_matma_12maj_fl__018__a', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy víztároló középső része egy 6 m belső átmérőjű, 8 m magasságú forgáshenger, alsó
része félgömb, felső része forgáskúp alakú. A kúp magassága 3 m. A tartály
függőlegesen áll, mellékeljük a forgástengelyén átmenő egyik síkmetszetét.
a)
Hány négyzetmétert kell vízálló anyaggal bevonni a tartály teljes belső
felületének felújításakor?', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_018.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('87bc8537-bf48-49ba-802d-ffe2ea2f359f', NOW(), 'k_matma_12maj_fl__018__b', 'k_matma_12maj_fl', 'k_matma_12maj_fl.pdf', 2012, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy víztároló középső része egy 6 m belső átmérőjű, 8 m magasságú forgáshenger, alsó
része félgömb, felső része forgáskúp alakú. A kúp magassága 3 m. A tartály
függőlegesen áll, mellékeljük a forgástengelyén átmenő egyik síkmetszetét.

b)
Hány köbméter víz van a tartályban, ha a teljes magasságának 85%-áig van
feltöltve? A vízálló réteg vastagságát számítása során elhanyagolhatja.
A válaszokat egészre kerekítve adja meg!

a)
b)
Ö.:', 17, '/images/k_matma_12maj_fl/crops/k_matma_12maj_fl_prob_018.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);

-- k_matma_13maj_fl (28 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('613f020c-acb5-4424-a0a8-ccc0aac94758', NOW(), 'k_matma_13maj_fl__001__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 1, NULL, '2
ab
b
a
2
≠
Egyszerűsítse ab-vel az
törtet, ha
.
0
ab
ab
3

Az egyszerűsítés után kapott tört:', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_001.png', ARRAY['algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f0cf3136-a37b-4f71-8434-b187bb953844', NOW(), 'k_matma_13maj_fl__002__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 2, NULL, 'Egy téglalap oldalai 12cm, illetve 5 cm hosszúak. Ezt a téglalapot megforgatjuk
a hosszabbik oldal egyenese körül. Mekkora a keletkezett forgástest térfogata?
Válaszát indokolja!

A forgástest térfogata:
cm3', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_002.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d5604989-a071-4ed1-acee-d59879c22a51', NOW(), 'k_matma_13maj_fl__003__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 3, NULL, 'Hány valós gyöke van az (x–5)(x2+1)=0 egyenletnek?

A valós gyökök száma:', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_003.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('68b6dd5c-51e2-425f-8e0f-fbe8e2709e40', NOW(), 'k_matma_13maj_fl__004__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 4, NULL, 'Adja meg mindazokat az x értékeket, amelyekhez a valós számok halmazán értelmezett
ffüggvény 10-et rendel, ha  f(x)= ⎢x⎢ – 4.

A keresettx értékek:', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_004.png', ARRAY['egyenletek','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0aa0700b-a828-484f-a498-6520c556e2b8', NOW(), 'k_matma_13maj_fl__005__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 5, NULL, 'Az AB szakasz felezőpontjaF. Az A pont helyvektoraa, az F ponté f. Fejezze ki  aés f
vektorokkal a B pont  b helyvektorát! Válaszát indokolja!

ABpont helyvektora:', 1, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_005.png', ARRAY['vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ea30c0fa-98ad-4409-a330-28404b67083a', NOW(), 'k_matma_13maj_fl__006__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 6, NULL, 'Adott az e egységvektor: e(cos750°; sin750°). Mekkora az a legkisebb szög, amivel az
i(1;0)vektort pozitív irányba elforgatva megkapjuk e vektort?

A keresett legkisebb pozitív szög:', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_006.png', ARRAY['trigonometria','vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d2647eaf-f519-488a-932a-9edb46ea6f26', NOW(), 'k_matma_13maj_fl__007__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 7, NULL, 'Mely xérték(ek)nél veszi fel a valós számok halmazán értelmezett f függvény a leg-
+
+
=
2
81
18
)
(
x
x
x
f
kisebb értékét, ha
? Válaszát indokolja!

=
x', 1, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_007.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4ac582a7-b4ba-4271-8ca4-b0cc3a460e99', NOW(), 'k_matma_13maj_fl__008__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'I', 8, NULL, 'Hány ötjegyű pozitív szám van a kettes számrendszerben?

.............ötjegyű pozitív szám van
a kettes számrendszerben.
90°
150°
120°', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_008.png', ARRAY['szamrendszerek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fbf21e39-9da5-44bd-887a-d5ff0fd700b4', NOW(), 'k_matma_13maj_fl__009__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'III', 9, NULL, 'Az ábrán látható kördiagram 720 megkérdezett személy internetezési szokásait
szemlélteti: I.nem internetezők; II. rendszeresen internetezők; III. ritkán internetezők.
Hányan tartoznak a megkérdezettek közül az egyes csoportokba?

I.:
II.:
III.:', 3, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_009.png', ARRAY['statisztika','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4220071c-5cbe-45bf-b516-d56a8635c65b', NOW(), 'k_matma_13maj_fl__010__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'III', 10, NULL, '2 =
Az A(5; –1) ponton átmenő e egyenes merőleges a
y
x
7
egyenletű egyenesre. Írja fel
az e egyenes egyenletét! Válaszát indokolja!

Az egyenes egyenlete:', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_010.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fcf00448-0173-4ea2-99e0-c0527a1113cb', NOW(), 'k_matma_13maj_fl__011__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'III', 11, NULL, 'Állapítsa meg a következő állítások mindegyikéről, hogy igaz vagy hamis!
A:
Ha egy páros szám osztható 9-cel, akkor 18-cal is osztható.
B:
Minden 100-zal osztható szám 200-zal is osztható.
C:
Van olyan 100-zal osztható szám, ami 13-mal is osztható.
D:
Csak a 3-mal osztható páros számok oszthatók hattal.

A:
B:
C:
D:', 4, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_011.png', ARRAY['logika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c1abd4a6-1874-492c-b2aa-a112c51c8cfc', NOW(), 'k_matma_13maj_fl__012__', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'III', 12, NULL, 'Egy sorozat első tagja –1, második tagja 1. Minden további tag a közvetlenül előtte álló
két tag összegével egyenlő.
Számítsa ki a sorozat első hat tagjának összegét! Számítását írja le!

=
S
6
A', 2, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_012.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('31e1af8f-d646-45f7-a0f7-9a04159b26bd', NOW(), 'k_matma_13maj_fl__013__a', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 13, 'a', 'a)
Egy négyzetet az egyik oldalával párhuzamos két egyenessel három egybevágó
téglalapra bontunk. Egy ilyen téglalap kerülete 24 cm.
Hány cm2 a négyzet területe?', 12, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_013.png', ARRAY['geometria-sik','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('325c2662-a3ed-4262-96b3-d13ff2e18774', NOW(), 'k_matma_13maj_fl__013__b', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 13, 'b', 'b)
Egy ABCD négyzet oldala 12 cm hosszú. A négyzet A csúcsából félegyenest
rajzolunk, mely a BC oldalt P pontban metszi. Az így keletkezett ABP
háromszög AP oldala 13 cm hosszú.
Számítsa ki az ABP derékszögű háromszög átfogóhoz tartozó magasságát!
A magasság hosszát centiméterben egy tizedes jegyre kerekítve adja meg!

a)
b)
Ö.:', 12, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_013.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('394da814-8e82-461b-b2ce-da0f47070df4', NOW(), 'k_matma_13maj_fl__014__a', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 14, 'a', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!
(
)
−
=
−
3
lg
lg
5
2
lg
x
x
a)
√13 �2����5
b)

a)
b)
Ö.:', 12, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_014.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('da317a9a-4d75-494f-869a-d9597921497f', NOW(), 'k_matma_13maj_fl__015__a', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy kutatólaboratóriumban technikusi végzettséggel vagy egyetemi diplomával lehet
dolgozni. A laborban dolgozó 50 ember közül 42 főnek van technikusi oklevele és
28 főnek van egyetemi diplomája.
a)
Közülük hány dolgozónak van csak technikusi végzettsége?
A labor 50 dolgozójának átlagkeresete 165 000 forint. Közülük a 30 év alattiak
átlagkeresete 148 000 forint, a többieké 173 000 forint.', 12, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_015.png', ARRAY['halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('205f3fc6-06f0-4698-9db9-9bbd9aa55248', NOW(), 'k_matma_13maj_fl__015__b', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy kutatólaboratóriumban technikusi végzettséggel vagy egyetemi diplomával lehet
dolgozni. A laborban dolgozó 50 ember közül 42 főnek van technikusi oklevele és
28 főnek van egyetemi diplomája.

b)
Hány 30 év alatti dolgozója van a labornak?
A hétvégén megrendezésre kerülő konferenciára 25 kutató szeretne elmenni, közülük
17 nő és 8 férfi. A kutatóintézet a 25 jelentkező 20%-ának tudja csak a részvételi díját
kifizetni.', 12, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_015.png', ARRAY[]::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('70de16c1-5a94-4484-8872-a51d6da33597', NOW(), 'k_matma_13maj_fl__015__c', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy kutatólaboratóriumban technikusi végzettséggel vagy egyetemi diplomával lehet
dolgozni. A laborban dolgozó 50 ember közül 42 főnek van technikusi oklevele és
28 főnek van egyetemi diplomája.

c)
Ha a vezetőség véletlenszerűen választaná ki, hogy kinek a költségeit fizeti,
mekkora lenne a valószínűsége annak, hogy csak nőket választanak ki?
Válaszát két tizedes jegyre kerekítve adja meg!

a)
b)
c)
Ö.:
B
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_015.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7d336c5e-0ccc-46f2-aff3-952ea67d7bd4', NOW(), 'k_matma_13maj_fl__016__a', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy háromszög két oldala 20 egység, illetve 22 egység hosszú.
a)
Milyen hosszú lehet a háromszög harmadik oldala? Hány ilyen háromszög van,
ha azt is tudjuk, hogy a harmadik oldal hossza is egész szám?', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_016.png', ARRAY['geometria-sik','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a113f479-771f-48cc-a9f8-bc9075c7ad86', NOW(), 'k_matma_13maj_fl__016__b', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy háromszög két oldala 20 egység, illetve 22 egység hosszú.

b)
Mekkora lehet a két oldal által közbezárt szög, ha a háromszög területe 88
területegység?
A keresett szöget fokban, egy tizedes jegyre kerekítve adja meg!', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_016.png', ARRAY['geometria-sik','trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('030308f1-8f26-4fee-84eb-7b21a285bc88', NOW(), 'k_matma_13maj_fl__016__c', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 16, 'c', 'Egy háromszög két oldala 20 egység, illetve 22 egység hosszú.

c)
Mekkora lehet a b) kérdésben megadott feltétel mellett a háromszög harmadik
oldala?
A keresett oldal hosszát egy tizedes jegyre kerekítve adja meg!

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_016.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cea6e871-f9a6-407f-9502-37f0431be9af', NOW(), 'k_matma_13maj_fl__017__a', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 17, 'a', 'Kezdő vállalkozókat segítő cég kedvezményes feltételekkel ad bérbe helyiségeket.
Minden helyiséget 24 hónapra lehet bérbe venni. Az első havi bérleti díj 100 tallér, a 24.
havi pedig 200 tallér. A bérlőnek (a második hónaptól kezdve) minden hónapban többet
kell fizetni, mint az előzőben. Két változat közül választhatnak a bérlők. Az első
változat szerint minden hónapban  p %-kal kell többet fizetni, mint az előző hónapban,
a második változat szerint minden hónapban d  tallérral kell többet fizetni, mint az előző
hónapban. Gábor az első, Péter a második változat szerinti feltétellel bérel egy-egy
helyiséget. (A tallérnak a századrésze a váltópénz.)
a)
Hány százalékkal nő hónapról hónapra Gábor bérleti díja?
A választ századra kerekítve adja meg!', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_017.png', ARRAY['sorozatok','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('789d5d4b-c07b-4086-bf31-176198615b65', NOW(), 'k_matma_13maj_fl__017__b', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 17, 'b', 'Kezdő vállalkozókat segítő cég kedvezményes feltételekkel ad bérbe helyiségeket.
Minden helyiséget 24 hónapra lehet bérbe venni. Az első havi bérleti díj 100 tallér, a 24.
havi pedig 200 tallér. A bérlőnek (a második hónaptól kezdve) minden hónapban többet
kell fizetni, mint az előzőben. Két változat közül választhatnak a bérlők. Az első
változat szerint minden hónapban  p %-kal kell többet fizetni, mint az előző hónapban,
a második változat szerint minden hónapban d  tallérral kell többet fizetni, mint az előző
hónapban. Gábor az első, Péter a második változat szerinti feltétellel bérel egy-egy
helyiséget. (A tallérnak a századrésze a váltópénz.)

b)
Hány tallérral nő havonta Péter bérleti díja?
A választ századra kerekítve adja meg!', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_017.png', ARRAY['sorozatok','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d1ab2449-0f20-4ea1-894b-6996f1d2dce0', NOW(), 'k_matma_13maj_fl__017__c', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 17, 'c', 'Kezdő vállalkozókat segítő cég kedvezményes feltételekkel ad bérbe helyiségeket.
Minden helyiséget 24 hónapra lehet bérbe venni. Az első havi bérleti díj 100 tallér, a 24.
havi pedig 200 tallér. A bérlőnek (a második hónaptól kezdve) minden hónapban többet
kell fizetni, mint az előzőben. Két változat közül választhatnak a bérlők. Az első
változat szerint minden hónapban  p %-kal kell többet fizetni, mint az előző hónapban,
a második változat szerint minden hónapban d  tallérral kell többet fizetni, mint az előző
hónapban. Gábor az első, Péter a második változat szerinti feltétellel bérel egy-egy
helyiséget. (A tallérnak a századrésze a váltópénz.)

c)
Gábor vagy Péter fizet több bérleti díjat a 24 hónap alatt?
Mennyivel fizet többet az egyik, mint a másik?', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_017.png', ARRAY['sorozatok','szovegfeladas','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7282dbb3-60ab-4c96-adde-128c384a2491', NOW(), 'k_matma_13maj_fl__017__d', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 17, 'd', 'Kezdő vállalkozókat segítő cég kedvezményes feltételekkel ad bérbe helyiségeket.
Minden helyiséget 24 hónapra lehet bérbe venni. Az első havi bérleti díj 100 tallér, a 24.
havi pedig 200 tallér. A bérlőnek (a második hónaptól kezdve) minden hónapban többet
kell fizetni, mint az előzőben. Két változat közül választhatnak a bérlők. Az első
változat szerint minden hónapban  p %-kal kell többet fizetni, mint az előző hónapban,
a második változat szerint minden hónapban d  tallérral kell többet fizetni, mint az előző
hónapban. Gábor az első, Péter a második változat szerinti feltétellel bérel egy-egy
helyiséget. (A tallérnak a századrésze a váltópénz.)

d)
Péternek hány százalékkal több bérleti díjat kell fizetnie a második évben, mint
az elsőben?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_017.png', ARRAY['sorozatok','szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8add1d14-a475-420e-823a-86d3465e9e39', NOW(), 'k_matma_13maj_fl__018__a', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy élelmiszerbolt vezetője az árufeltöltőt azzal bízta meg, hogy a bejárat melletti alsó
polcon lévő 6 rekeszt töltse fel a következő árucikkekkel: rizs, cukor, liszt, só, búzadara
és zsemlemorzsa. A vezető figyelmeztette az árufeltöltőt, hogy minden rekeszbe egyféle
árut tegyen, továbbá, hogy a búzadara és a zsemlemorzsa ne kerüljön egymás melletti
rekeszbe, mert az új csomagolásuk nagyon hasonló, ezért könnyen összekeverhetők.
Egyébként a hatféle árut bármilyen sorrendben kirakhatja.
a)
Hányféle sorrendben rendezhette el az árufeltöltő ezt a hatféle árut?
Az üzletvezető úgy kötött szerződést egy sütödével, hogy minden este zárás után meg-
mondja, hogy mennyi kenyeret és mennyi péksüteményt kér másnapra. Minden alka-
lommal háromféle kenyeret (1 kg-os fehér kenyér, ½ kg-os fehér kenyér, rozskenyér) és
kétféle péksüteményt (zsemle és kifli) rendelt.
A 32. héten öt munkanapon keresztül (hétfőtől péntekig) feljegyezte, hogy a megrendelt
pékáruból mennyi fogyott el, és mennyi maradt meg, amit vissza kellett küldenie.
Az alábbi táblázatban az egyes napokról készült kimutatás látható:', NULL, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_018.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('74b7f078-792f-48a5-b872-06e6be567e6b', NOW(), 'k_matma_13maj_fl__018__c', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy élelmiszerbolt vezetője az árufeltöltőt azzal bízta meg, hogy a bejárat melletti alsó
polcon lévő 6 rekeszt töltse fel a következő árucikkekkel: rizs, cukor, liszt, só, búzadara
és zsemlemorzsa. A vezető figyelmeztette az árufeltöltőt, hogy minden rekeszbe egyféle
árut tegyen, továbbá, hogy a búzadara és a zsemlemorzsa ne kerüljön egymás melletti
rekeszbe, mert az új csomagolásuk nagyon hasonló, ezért könnyen összekeverhetők.
Egyébként a hatféle árut bármilyen sorrendben kirakhatja.

c)
Az 5  napból véletlenszerűen megjelölünk 2  napot. Mekkora annak a valószínű-
sége, hogy két olyan napot jelölünk meg, amikor mindkét napon legalább
130 péksüteményt adtak el?
Az egyes pékárukból a következő, 33. hét minden napján ugyanannyit rendelt a keres-
kedő, mégpedig mindhárom fajta kenyérből a 32. héten naponta eladott mennyiségeik-
nek egészre kerekített átlagát, zsemléből és kifliből pedig a 32. héten eladott mennyi-
ségek móduszát.', NULL, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_018.png', ARRAY['valoszinuseg','kombinatorika','statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b121d192-7a3a-4a72-92bd-a2fd8ad3afb1', NOW(), 'k_matma_13maj_fl__018__d', 'k_matma_13maj_fl', 'k_matma_13maj_fl.pdf', 2013, 'kozep', 'majus', true, 'II', 18, 'd', 'Egy élelmiszerbolt vezetője az árufeltöltőt azzal bízta meg, hogy a bejárat melletti alsó
polcon lévő 6 rekeszt töltse fel a következő árucikkekkel: rizs, cukor, liszt, só, búzadara
és zsemlemorzsa. A vezető figyelmeztette az árufeltöltőt, hogy minden rekeszbe egyféle
árut tegyen, továbbá, hogy a búzadara és a zsemlemorzsa ne kerüljön egymás melletti
rekeszbe, mert az új csomagolásuk nagyon hasonló, ezért könnyen összekeverhetők.
Egyébként a hatféle árut bármilyen sorrendben kirakhatja.

Pékáru
1. nap
2. nap
3. nap
4. nap
5. nap
darabszáma
vissza-
vissza-
vissza-
vissza-
vissza-
eladott
eladott
eladott
eladott
eladott
küldött
küldött
küldött
küldött
küldött
1 kg-os
fehér
32
6
28
4
30
4
29
5
36
2
kenyér
1/2 kg-os
fehér
19
1
20
4
18
2
20
5
18
2
kenyér
rozskenyér
7
3
6
1
6
2
6
0
8
1
zsemle
56
4
58
2
58
6
54
6
68
2
kifli
68
2
75
0
74
6
68
3
82
3
b)
Számítsa ki, hogy az üzletvezető az 5 nap alatt összesen hány darab kenyeret,
illetve péksüteményt rendelt, és a megrendelt mennyiségnek hány százalékát
küldte vissza a két árufajta esetén!

d)
Mennyit rendelt ekkor naponta az egyes pékárukból?', NULL, '/images/k_matma_13maj_fl/crops/k_matma_13maj_fl_prob_018.png', ARRAY['statisztika','szovegfeladas']::text[], false, false, '', true);

-- k_matma_14maj_fl (30 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('eb4f3c45-2c39-490a-afff-9c27ed54d665', NOW(), 'k_matma_14maj_fl__001__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 1, NULL, 'Egy osztályban 35 tanuló van. A fiúk és a lányok számának aránya 3:4.
Hány fiú van az osztályban?

fiú van az osztályban.', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_001.png', ARRAY['szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f4907efc-d82b-433d-878c-b4678d8ded89', NOW(), 'k_matma_14maj_fl__002__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 2, NULL, 'Melyik x valós számra teljesül a következő egyenlőség?
x
2 2 =
2

x
=', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_002.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e1ec05f2-dfaa-437a-b04a-7abb1f330299', NOW(), 'k_matma_14maj_fl__003__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 3, 'a', '4
2 +
−x
x α
A valós számokon értelmezett függvény hozzárendelési utasítása:
.
a) Állapítsa meg, hogy hol metszi a függvény grafikonja a derékszögű
koordinátarendszer y tengelyét!', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_003.png', ARRAY['fuggvenyek','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a17b3b57-e9b3-4e1b-9c56-c33fe5a420cb', NOW(), 'k_matma_14maj_fl__003__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 3, 'b', '4
2 +
−x
x α
A valós számokon értelmezett függvény hozzárendelési utasítása:
.

b) Melyik számhoz rendeli a függvény a 6 függvényértéket?

a) Az y tengelymetszet:

b) A keresett szám:', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_003.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b8a00715-d978-43b4-9e39-1cbaf621f8ca', NOW(), 'k_matma_14maj_fl__004__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 4, NULL, 'Egy dolgozatra a tanulók a nevük helyett az A, B és C betűkből alkotott hárombetűs
kódokat írták fel AAA-tól CCC-ig. Minden lehetséges kódot kiosztottak és nem volt két
azonos kódú tanuló.
Hány tanuló írta meg a dolgozatot?

2 pont
tanuló írta meg a dolgozatot.', NULL, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_004.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('827ae383-1979-449c-933f-b75072f3a48d', NOW(), 'k_matma_14maj_fl__005__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 5, NULL, 'Adja meg az alábbi hétpontú gráfban a csúcsok fokszámának összegét!

A fokszámok összege:', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_005.png', ARRAY['grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d8ca9920-d7b4-449c-a048-d9e498c4090c', NOW(), 'k_matma_14maj_fl__006__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 6, NULL, 'Legyenek az A halmaz elemei azok a nem negatív egész számok, amelyekre a
x
5
−
kifejezés értelmezhető. Sorolja fel az  A halmaz elemeit!
Megoldását részletezze!

{
}
A
=', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_006.png', ARRAY['halmazok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e2689760-8b11-4442-bb59-4454ac31da3e', NOW(), 'k_matma_14maj_fl__007__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 7, NULL, 'Egy kör sugara 3 cm. Számítsa ki ebben a körben a 270 fokos középponti szöghöz
tartozó körcikk területét!
Megoldását részletezze!

cm2.
A körcikk területe:', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_007.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3f491f24-5272-4a0d-bd15-83ed9d032b0d', NOW(), 'k_matma_14maj_fl__008__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 8, NULL, 'Egy dolgozat értékelésének eloszlását mutatja a következő táblázat:
osztályzat
1
2
3
4
5
gyakoriság
0
2
7
8
3
Határozza meg az egyes osztályzatok előfordulásának relatív gyakoriságát!

osztályzat
1
2
3
4
5
relatív
gyakoriság', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_008.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2b746ce8-de7f-4f70-854a-c7fb6be755ac', NOW(), 'k_matma_14maj_fl__009__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 9, NULL, 'Döntse el az alábbi állítások mindegyikéről, hogy igaz vagy hamis!
A) Ha egy mértani sorozat első tagja (–2) és harmadik tagja (–8),
akkor második tagja 4 vagy (–4).
B) A szabályos háromszög középpontosan szimmetrikus alakzat.
C) Ha egy négyszög minden oldala egyenlő, akkor ez a négyszög paralelogramma.

A)

B)

C)', 1, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_009.png', ARRAY['sorozatok','geometria-sik','logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('573469d3-1103-4c94-9d65-e4678ce7874f', NOW(), 'k_matma_14maj_fl__010__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 10, NULL, 'Mekkora a 7 cm élű kocka köré írható gömbnek a sugara? Válaszát egy tizedesjegyre
kerekítve adja meg!

A gömb sugara:
cm.', 3, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_010.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d3e4ca70-3333-4b80-9885-6f3c7808f280', NOW(), 'k_matma_14maj_fl__011__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 11, NULL, 'Adott a valós számok halmazán értelmezett
4
2 −
x
x α
függvény.
−
Mennyi a függvény minimumának értéke?
A: (– 2)
B: (– 4)
C: 2
D: 0
E: (– 6)

A helyes válasz betűjele:', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_011.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('09765f48-648b-45b2-a31e-99510053667b', NOW(), 'k_matma_14maj_fl__012__', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'I', 12, NULL, 'Az ABCD rombusz egy oldala 6 cm hosszú, a BCD szög 120º.
Mekkora a rombusz AC átlója?
Válaszát indokolja!

Az AC átló hossza:
cm.
A', 2, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_012.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('790f54b3-36c7-44b2-9f92-538e6dbb3080', NOW(), 'k_matma_14maj_fl__013__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 13, 'a', 'a) Oldja meg a következő egyenletet a valós számok halmazán:
(
)
2
log
18
7
log
x
x
=
−
+
3
3', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_013.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b7a9e2d2-02ad-4c7f-a319-cfc971a69270', NOW(), 'k_matma_14maj_fl__013__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 13, 'b', 'b) Oldja meg a következő egyenletet a [
]
zárt intervallumon:
2
;
0
π
2
4
cos
7
cos
2
x
x
+
=

a)
b)
Ö.:', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_013.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('59ad4943-0ae3-43c3-98e7-0c817ffe99bd', NOW(), 'k_matma_14maj_fl__014__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 14, 'a', 'A Matematika Határok Nélkül versenyre a középiskolák 9. osztályai jelentkezhetnek.
A versenyen résztvevő minden osztály ugyanabban az időben, ugyanazt a feladatsort
oldja meg. Az alábbi táblázat 28 osztálynak a versenyen elért eredményét tartalmazza.
Elért pontszám: 83 76
69
67
65
61
60
58
56 55
Gyakoriság:
2
4
2
2
4
3
2
4
4
1

5 pont
a)
b)
c)
Ö.:', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_014.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('092d6b2f-6263-4a0f-a600-eebaac3f7bde', NOW(), 'k_matma_14maj_fl__014__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 14, 'b', 'A Matematika Határok Nélkül versenyre a középiskolák 9. osztályai jelentkezhetnek.
A versenyen résztvevő minden osztály ugyanabban az időben, ugyanazt a feladatsort
oldja meg. Az alábbi táblázat 28 osztálynak a versenyen elért eredményét tartalmazza.
Elért pontszám: 83 76
69
67
65
61
60
58
56 55
Gyakoriság:
2
4
2
2
4
3
2
4
4
1

b)
A megadott táblázat adatainak felhasználásával ábrázolja a három minősítés
gyakoriságát oszlopdiagramon!
A versenyszervezők a táblázatban felsorolt 28 osztály dolgozatai közül a hat legjobban
sikerült dolgozat javítását ellenőrzik. Ezt a hat dolgozatot véletlenszerű sorrendben
egymásra helyezik.', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_014.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5dfc5960-c82d-460f-8f81-66b467ef4f69', NOW(), 'k_matma_14maj_fl__014__c', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 14, 'c', 'A Matematika Határok Nélkül versenyre a középiskolák 9. osztályai jelentkezhetnek.
A versenyen résztvevő minden osztály ugyanabban az időben, ugyanazt a feladatsort
oldja meg. Az alábbi táblázat 28 osztálynak a versenyen elért eredményét tartalmazza.
Elért pontszám: 83 76
69
67
65
61
60
58
56 55
Gyakoriság:
2
4
2
2
4
3
2
4
4
1

Mekkora a valószínűsége annak, hogy legfelül 83 pontos, közvetlenül alatta
c)
pedig 76 pontos dolgozat fekszik?', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_014.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('57d021dd-253e-4e63-92e9-1927a001f0a6', NOW(), 'k_matma_14maj_fl__015__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 15, 'a', 'A koordináta-rendszerben adottak az A(8; 9) és a B(12; 1) koordinátájú pontok, továbbá
egy origó középpontú, 5 egység sugarú k kör, és az e egyenes, amely az E (4;3) pontban
érinti a k kört.
a)
Számítsa ki az A és B pontok távolságát!', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_015.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9f23b1ce-7bad-41ab-a16a-633d6a50d63f', NOW(), 'k_matma_14maj_fl__015__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 15, 'b', 'A koordináta-rendszerben adottak az A(8; 9) és a B(12; 1) koordinátájú pontok, továbbá
egy origó középpontú, 5 egység sugarú k kör, és az e egyenes, amely az E (4;3) pontban
érinti a k kört.

b)
Határozza meg az e egyenes egyenletét!
Az f egyenes áthalad az adott A és B pontokon.', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_015.png', ARRAY['koordinata-geometria','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('56fa1a82-c409-44aa-9e9c-2f0974687e78', NOW(), 'k_matma_14maj_fl__015__c', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 15, 'c', 'A koordináta-rendszerben adottak az A(8; 9) és a B(12; 1) koordinátájú pontok, továbbá
egy origó középpontú, 5 egység sugarú k kör, és az e egyenes, amely az E (4;3) pontban
érinti a k kört.

c)
Számítsa ki az e és az f egyenes metszéspontjának koordinátáit!

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_015.png', ARRAY['koordinata-geometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('59d52c8b-bb9d-49d2-a0c3-3cc42e963945', NOW(), 'k_matma_14maj_fl__016__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy cirkuszi sátor egy forgáshenger palástjából és egy erre illeszkedő forgáskúp palást-
jából áll. A henger és a kúp alapkörének a sugara egyaránt 18 méter. A sátor teljes
magassága 10 méter, oldalfalának magassága 4 méter.
Egy biztonsági előírás alapján az ilyen típusú sátorban a maximális nézőszámot úgy
határozzák meg, hogy egy nézőre legalább 6 m3 légtér jusson. (A teljes légtér nagyságát
a sátor üres állapotában kell kiszámítani.)
a)
Mekkora a maximális nézőszám ebben a sátorban?
A cirkusz igazgatója úgy dönt, hogy 1000 fizető nézőt engednek be az előadásra. Egy
felnőttjegy 800 Ft-ba, a gyerekjegy ennél 25%-kal kevesebbe kerül. Az előadás utáni
elszámolásnál kiderül, hogy az 1000 jegy eladásából összesen 665 800 Ft bevétele volt
a pénztárnak.', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_016.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('24c1fda1-19bc-452a-bc01-07b23a1c5c43', NOW(), 'k_matma_14maj_fl__016__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy cirkuszi sátor egy forgáshenger palástjából és egy erre illeszkedő forgáskúp palást-
jából áll. A henger és a kúp alapkörének a sugara egyaránt 18 méter. A sátor teljes
magassága 10 méter, oldalfalának magassága 4 méter.
Egy biztonsági előírás alapján az ilyen típusú sátorban a maximális nézőszámot úgy
határozzák meg, hogy egy nézőre legalább 6 m3 légtér jusson. (A teljes légtér nagyságát
a sátor üres állapotában kell kiszámítani.)

b)
Hány gyerek- és hány felnőttjegyet adtak el erre az előadásra?
A cirkusz egyik produkciójában 10 artista négyszintes ember-piramist alkot a porond
bejáratának háttal állva. A földön négyen állnak egymás mellett, rajtuk hárman, aztán
ketten, legfelül pedig egy ember áll. Minden artistánál adott, hogy melyik szinten áll, de
az egyes szinteken az artisták sorrendje tetszőleges.', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_016.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('241113c2-21c4-43be-b6af-cd522ca85225', NOW(), 'k_matma_14maj_fl__016__c', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 16, 'c', 'Egy cirkuszi sátor egy forgáshenger palástjából és egy erre illeszkedő forgáskúp palást-
jából áll. A henger és a kúp alapkörének a sugara egyaránt 18 méter. A sátor teljes
magassága 10 méter, oldalfalának magassága 4 méter.
Egy biztonsági előírás alapján az ilyen típusú sátorban a maximális nézőszámot úgy
határozzák meg, hogy egy nézőre legalább 6 m3 légtér jusson. (A teljes légtér nagyságát
a sátor üres állapotában kell kiszámítani.)

c)
Hányféleképpen állhat fel az ember-piramis?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_016.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1fb50576-1052-4d1d-8857-09c0c9cee5ab', NOW(), 'k_matma_14maj_fl__017__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 17, 'a', 'Tekintsük mindazoknak a pozitív egész számoknak a növekvő sorozatát,
melyek 3-mal osztva 2 maradékot adnak.
A sorozat első tagja a legkisebb ilyen tulajdonságú szám.
a)
Melyik ennek a sorozatnak a 25. tagja?', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_017.png', ARRAY['sorozatok','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c9261fab-e506-41a3-800e-47c36fdce3fc', NOW(), 'k_matma_14maj_fl__017__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 17, 'b', 'Tekintsük mindazoknak a pozitív egész számoknak a növekvő sorozatát,
melyek 3-mal osztva 2 maradékot adnak.
A sorozat első tagja a legkisebb ilyen tulajdonságú szám.

b)
A sorozat első n tagjának az összege 8475. Határozza meg n értékét!', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_017.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0f0d529e-36e2-46cf-93f7-cbe643106b18', NOW(), 'k_matma_14maj_fl__017__c', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 17, 'c', 'Tekintsük mindazoknak a pozitív egész számoknak a növekvő sorozatát,
melyek 3-mal osztva 2 maradékot adnak.
A sorozat első tagja a legkisebb ilyen tulajdonságú szám.

c)
Hány háromjegyű, 5-tel osztható tagja van a sorozatnak?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszés szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_017.png', ARRAY['sorozatok','szamelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d12afac1-b22b-4df8-a9df-2eb30a0a3526', NOW(), 'k_matma_14maj_fl__018__a', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy érettségi előtt álló 32 fős osztály a ballagásra készül.
A ballagási meghívó színéről szavazáson döntöttek, melyen minden tanuló részt vett.
A szavazólapon három szín (sárga, fehér, bordó) szerepelt, ezek közül mindenki egyet
vagy kettőt jelölhetett meg. A két színt választók közül a sárgát és a fehéret 4-en,
a fehéret és a bordót 3-an választották. A sárgát és a bordót együtt senki nem jelölte
meg. A szavazatok összeszámolása után kiderült, hogy mindegyik szín ugyanannyi
szavazatot kapott.
a)
Mennyi annak valószínűsége, hogy az osztályból egy diákot véletlenszerűen
kiválasztva, az illető csak egy színt jelölt meg a szavazólapon?', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_018.png', ARRAY['valoszinuseg','halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ec28c750-62a0-4c24-804a-9282d539f9ba', NOW(), 'k_matma_14maj_fl__018__b', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy érettségi előtt álló 32 fős osztály a ballagásra készül.
A ballagási meghívó színéről szavazáson döntöttek, melyen minden tanuló részt vett.
A szavazólapon három szín (sárga, fehér, bordó) szerepelt, ezek közül mindenki egyet
vagy kettőt jelölhetett meg. A két színt választók közül a sárgát és a fehéret 4-en,
a fehéret és a bordót 3-an választották. A sárgát és a bordót együtt senki nem jelölte
meg. A szavazatok összeszámolása után kiderült, hogy mindegyik szín ugyanannyi
szavazatot kapott.

b)
Hány olyan diák volt, aki csak a fehér színt jelölte meg a szavazólapon?
Az egyik tizenegyedikes diáknak 7 barátja van a ballagók között: 5 fiú és 2 lány. Ez
a diák három barátjától egy-egy szál rózsával kíván elbúcsúzni. Úgy szeretné kiosztani
a három szál rózsát barátai között, hogy fiú és lány is kapjon, és minden kiválasztott
egyet-egyet.', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_018.png', ARRAY['egyenletek','szovegfeladas','halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bdb2f894-c57a-4ed3-a70d-8b55c5a22116', NOW(), 'k_matma_14maj_fl__018__c', 'k_matma_14maj_fl', 'k_matma_14maj_fl.pdf', 2014, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy érettségi előtt álló 32 fős osztály a ballagásra készül.
A ballagási meghívó színéről szavazáson döntöttek, melyen minden tanuló részt vett.
A szavazólapon három szín (sárga, fehér, bordó) szerepelt, ezek közül mindenki egyet
vagy kettőt jelölhetett meg. A két színt választók közül a sárgát és a fehéret 4-en,
a fehéret és a bordót 3-an választották. A sárgát és a bordót együtt senki nem jelölte
meg. A szavazatok összeszámolása után kiderült, hogy mindegyik szín ugyanannyi
szavazatot kapott.

Hányféleképpen választhatja ki – a fenti feltételek teljesítésével –
c)
hét barátja közül azt a hármat, akinek ad virágot?

a)
b)
c)
Ö.:', 17, '/images/k_matma_14maj_fl/crops/k_matma_14maj_fl_prob_018.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);

-- k_matma_15maj_fl (27 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e0842da2-c33d-4e47-9ff2-d7cde562aaa6', NOW(), 'k_matma_15maj_fl__001__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 1, NULL, 'Adott az A, a B és a C halmaz az elemeivel:
A = {1; 2; 3; 4; 5},
B = {3; 4; 5; 6; 7},
C = {6; 7; 8; 9; 10}.
B
A ∩
és A \ B halmazokat elemeik felsorolásával!
Adja meg az
,
C
B ∪

1 pont
∩B
A
=

∪C
B
=

A \ B =', 1, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_001.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3705b16e-2a41-4088-8438-38b5d352811d', NOW(), 'k_matma_15maj_fl__002__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 2, NULL, 'Adja meg az alábbi hatpontú gráfban a pontok fokszámának összegét!

A fokszámok összege:', 2, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_002.png', ARRAY['grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ad2287bf-65e2-4d18-85f3-c84b1c4198af', NOW(), 'k_matma_15maj_fl__003__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 3, NULL, 'Adja meg a következő állítások logikai értékét (igaz vagy hamis)!
3
A)
8
16 4
=
B) A kettes számrendszerben felírt 11100 szám tízes számrendszerbeli alakja 56.
C) A derékszögű háromszög magasságpontja egybeesik a háromszög egyik csúcsával.

A)
B)
C)', 2, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_003.png', ARRAY['logika','szamrendszerek','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3f903486-b080-401b-84a5-cd5f1db0cf9a', NOW(), 'k_matma_15maj_fl__004__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 4, NULL, '2 +
−x
x α
Az ábrán a [–3; 0] intervallumon értelmezett
2
)
2
(
függvény grafikonja
+
látható. Adja meg a függvény értékkészletét!

Az értékkészlet:', 2, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_004.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b54b011a-6cdb-440b-84d8-28d692697d48', NOW(), 'k_matma_15maj_fl__005__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 5, NULL, 'Végezze el a következő műveleteket és a lehetséges összevonásokat!
A számítás menetét részletezze!
2)
a
a
a
4
(
)1
)(
9
(
−
+
−
+

Az összevont alak:', 2, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_005.png', ARRAY['algebra']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2a44e7c8-0630-4fd3-b8ea-d0ce628d6d08', NOW(), 'k_matma_15maj_fl__006__a', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 6, 'a', 'Egy mértani sorozat első tagja 2, második tagja –6.
a) Határozza meg a sorozat hányadosát!', 1, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_006.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('66311e5b-edc8-46be-9d8b-b983c28414e5', NOW(), 'k_matma_15maj_fl__006__b', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 6, 'b', 'Egy mértani sorozat első tagja 2, második tagja –6.
b) Adja meg a sorozat negyedik tagját!

A sorozat hányadosa:
1 pont

A sorozat negyedik tagja:', 1, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_006.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e6a42329-06a4-4329-9748-9e34cb24aa57', NOW(), 'k_matma_15maj_fl__007__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 7, NULL, 'Egy családban három gyerek van. A gyerekek kétévente születtek, életkoruk összege
45 év. Hány éves a legidősebb gyerek?

A legidősebb gyerek          éves.
2 pont', NULL, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_007.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0243049c-40a1-405f-b049-6e0086374750', NOW(), 'k_matma_15maj_fl__008__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 8, NULL, 'Ábrázolja a [–2; 3] intervallumon értelmezett
függvényt!
2
1 −
x
x α
+

3 pont', NULL, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_008.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('76abb7ae-7b0e-4bae-a45c-e7a3aa36f5cc', NOW(), 'k_matma_15maj_fl__009__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 9, NULL, 'Egy forgáskúp alkotója 41 cm, alapkörének sugara 9 cm hosszú.
Hány centiméter a kúp magassága? Válaszát indokolja!

A kúp magassága          cm.', 2, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_009.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('edd33cf4-75ff-4853-ba18-98ed994a052e', NOW(), 'k_matma_15maj_fl__010__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 10, NULL, 'Adjon meg öt pozitív egész számot, melyek mediánja 4, átlaga 3.

Az öt szám:
3 pont', NULL, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_010.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('36b8202c-ade4-4e76-a37b-75bea5e7712d', NOW(), 'k_matma_15maj_fl__011__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 11, NULL, 'Mekkora az
2
2
y
y
x
0
5
6
egyenletű kör sugara? Számítását részletezze!
=
+
−
+

A kör sugara:', 2, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_011.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b1150673-4027-4538-baaa-9ccd1176e21e', NOW(), 'k_matma_15maj_fl__012__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'I', 12, NULL, 'Szabályos pénzérmével háromszor dobunk egymás után.
Adja meg a FEJ-ÍRÁS-FEJ dobássorozat valószínűségét!

A valószínűség:
2 pont
A', NULL, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_012.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('02e21fa4-a346-4e16-b0fa-403fc49b0ddf', NOW(), 'k_matma_15maj_fl__013__a', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 13, 'a', 'Az e egyenes egyenlete: 3x + 7y = 21.

2 pont
a)
b)
c)
Ö.:', 10, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_013.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('25295136-c581-438c-9164-fb7e23f349a8', NOW(), 'k_matma_15maj_fl__013__b', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 13, 'b', 'Az e egyenes egyenlete: 3x + 7y = 21.

b) Írja fel az f egyenes egyenletét!
3
A g egyenes egyenlete:
.
5
x
y
+
−
=
7', 10, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_013.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b893afc0-b9ac-4c53-a1aa-37defb16eead', NOW(), 'k_matma_15maj_fl__013__c', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 13, 'c', 'Az e egyenes egyenlete: 3x + 7y = 21.

c) Igazolja, hogy az e és g egyenesek párhuzamosak egymással!', 10, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_013.png', ARRAY['koordinata-geometria','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ba96eaf9-4981-4305-9537-337fe2170a1f', NOW(), 'k_matma_15maj_fl__014__a', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 14, 'a', 'Egy téglalap alakú papírlap oldalai 12 és 18 cm hosszúak.
A szomszédos oldalak harmadolópontjait összekötve a lap négy
sarkát egy-egy egyenes szakasszal levágjuk.
Így az ABCDEFGH nyolcszöglapot kapjuk.
a) Számítsa ki a nyolcszög B csúcsánál fekvő belső szög
nagyságát!
A papírlapon a nyolcszög oldalait piros színnel rajzoljuk át, és
mind a 20 átlóját kék színnel húzzuk be.', 14, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_014.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7d7d2b80-d217-4c48-9e82-919fcaced22c', NOW(), 'k_matma_15maj_fl__014__b', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 14, 'b', 'Egy téglalap alakú papírlap oldalai 12 és 18 cm hosszúak.
A szomszédos oldalak harmadolópontjait összekötve a lap négy
sarkát egy-egy egyenes szakasszal levágjuk.
Így az ABCDEFGH nyolcszöglapot kapjuk.

b) Számítsa ki annak valószínűségét, hogy az így kiszínezett 28 szakaszból hármat
véletlenszerűen kiválasztva 1 piros és 2 kék lesz a kiválasztott szakaszok között!
A nyolcszöget megforgatjuk az ábrán berajzolt (az eredeti téglalap hosszabb oldalával
párhuzamos) szimmetriatengelye körül.', 14, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_014.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b0b5015f-c903-4921-a03d-e6e3a92c71f6', NOW(), 'k_matma_15maj_fl__014__c', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 14, 'c', 'Egy téglalap alakú papírlap oldalai 12 és 18 cm hosszúak.
A szomszédos oldalak harmadolópontjait összekötve a lap négy
sarkát egy-egy egyenes szakasszal levágjuk.
Így az ABCDEFGH nyolcszöglapot kapjuk.

c) Számítsa ki az így keletkező forgástest térfogatát!

a)
b)
c)
Ö.:', 14, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_014.png', ARRAY['geometria-ter','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c76cb32f-1f97-466c-99a2-ddac99ea0008', NOW(), 'k_matma_15maj_fl__015__a', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 15, 'a', '1
x
−
R
R →
:f
a) Számítsa ki az
,
2
3
)
(
x
f
függvény x = 6 helyen felvett értékét!
⋅
=', 12, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_015.png', ARRAY['exponencialis','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('cd8a8eaa-777b-47da-969c-6c8378a4cab2', NOW(), 'k_matma_15maj_fl__015__b', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 15, 'b', 'b) Oldja meg a következő egyenletet a valós számok halmazán!
1 =
x
−
375
,0
2
3
⋅', 12, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_015.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7fdb6a2b-ceb4-4e96-92e9-d08b09653e35', NOW(), 'k_matma_15maj_fl__015__c', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 15, 'c', '1
n
−
c) Adott az a mértani sorozat, melynek n-edik tagja:
.
2
3
a
⋅
=
n
Számítsa ki a sorozat első 10 tagjának összegét!

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!

Egyszemélyes
háztartások száma

1990
2011', 12, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_015.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('af7f1b7e-0844-42c8-95ad-5469bf2cb714', NOW(), 'k_matma_15maj_fl__016__d', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 16, 'd', 'A népszámlálások során felmérik a Magyarországon élő családok számát és jellemzőit.
Mindegyik népszámlálásnál minden egyes családról feljegyzik, hogy mennyi a család-
ban az eltartott gyermekek száma, majd az így kapott adatokat összesítik.
Az 1990-es és a 2011-es adatok összesítésének eredményét az alábbi táblázat mutatja.
(Például 2011-ben az összes család 5%-ában volt 3 az eltartott gyermekek száma.)
A családok megoszlása
Az eltartott
1990
2011
gyermekek száma
0
48%
52%
1
26%
25%
2
21%
16%
3
4%
5%
4 vagy több
1%
2%
Azt tudjuk még, hogy a családok száma 1990-ben 2 896 ezer, 2011-ben 2 713 ezer volt.
a)  Számítsa ki, hogy 1990-ről 2011-re hány százalékkal változott azoknak a csalá-
doknak a száma, amelyekben nem volt eltartott gyermek!
b) Számítsa ki, hogy átlagosan hány eltartott gyermek jutott egy családra 2011-ben!
(A 4 vagy több eltartott gyermeket nevelő családokban a gyermekek számát te-
kintse 4-nek.)
A népszámlálások során a háztartások számát is felmérték. A háztartások száma
1990-ről 2001-re 0,7%-kal csökkent, majd 2001-ről 2011-re 6,3%-kal nőtt, és így
2011-ben 4 106 ezer lett.
c) Mennyi volt a háztartások száma ezerre kerekítve 1990-ben?
Az egyszemélyes háztartások száma 1990-ben 946 ezer volt, majd
2011-re ez a szám 1 317 ezerre nőtt. Szeretnénk ezeket az adatokat egy
plakáton két olyan körlappal ábrázolni, amelyek területe az adatok
nagyságával egyenesen arányos. Az 1990-es év adatát egy 4,5 cm suga-
rú körlappal jelenítjük meg.
d) Mekkora legyen a 2011-es adatot ábrázoló körlap sugara?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_016.png', ARRAY['geometria-sik','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f07d781c-5745-435a-b65b-8a93ff4e2c58', NOW(), 'k_matma_15maj_fl__017__', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 17, NULL, 'István a családjával nyári utazásra készül.
Debrecenből Bajára szeretnének eljutni
autóval. Az útvonaltervező honlap két út-
vonalat javasol. Az egyik nagyrészt autó-
pályán halad, de 140 kilométerrel hosz-
szabb, mint a másik, amelyik lakott terü-
leteken is átmegy.
A hosszabb útvonal esetében az útvonal-
km  átlagsebességgel, a rövi-
tervező 106 h
km  átlagsebes-
debb esetében pedig 71 h
séggel számol. Így a honlap az utazási időt mindkét esetben ugyanannyinak mutatja.
a) Számítsa ki a rövidebb útvonal hosszát!
Istvánék egy korábbi alkalommal autóval utaztak Debrecenből Badacsonyba. Az út
hossza 396 kilométer volt. Az autó átlagos benzinfogyasztása 6,5 liter 100 kilométeren-
ként. Egy liter benzin ára 420 Ft.
b) Hány forint volt a benzinköltség ezen az úton?
Válaszát ezer forintra kerekítve adja meg!
Mikor megérkeztek, István kiszámolta, hogy ha a 396 kilométeres út során az átlagse-
km -val nagyobb lett volna, akkor egy órával rövidebb ideig tartott volna
bességük 16 h
az út.
c) Számítsa ki Istvánék autójának átlagsebességét ezen az úton!

6 pont
a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_017.png', ARRAY['egyenletek','szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9da4b974-0f69-40cf-abfe-03d7f86e7d2c', NOW(), 'k_matma_15maj_fl__018__a', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 18, 'a', 'Három végzős diáknak olyan mobiltelefonja van, amelyen be lehet állítani, hogy hány
számjegyű legyen a telefon bekapcsolásához szükséges számkód.
Anna olyan kódot szeretne, amely ötjegyű, csak a 2-es és a 9-es számjegy szerepel ben-
ne, mindkettő legalább egyszer.
a) Hányféle kód közül választhat Anna?
Béla kódja egy olyan hattal osztható, csupa különböző számjegyből álló háromjegyű
szám, melynek minden számjegye prímszám, és amelynek számjegyei (balról jobbra ha-
ladva) csökkenő sorrendben követik egymást.', 17, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_018.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5e634282-844e-4ebf-813e-2f02e2056092', NOW(), 'k_matma_15maj_fl__018__b', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 18, 'b', 'Három végzős diáknak olyan mobiltelefonja van, amelyen be lehet állítani, hogy hány
számjegyű legyen a telefon bekapcsolásához szükséges számkód.
Anna olyan kódot szeretne, amely ötjegyű, csak a 2-es és a 9-es számjegy szerepel ben-
ne, mindkettő legalább egyszer.

b) Adja meg Béla kódját!
Gabi elfelejtette a saját kódját. Arra emlékszik, hogy hatjegyű volt, két 3-as, két 4-es,
egy 5-ös és egy 6-os számjegy szerepelt benne. Gabi az ilyen kódok közül véletlensze-
rűen kiválaszt egyet.', 17, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_018.png', ARRAY['szamelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('641102bc-a339-4791-8fea-80468f58c48d', NOW(), 'k_matma_15maj_fl__018__c', 'k_matma_15maj_fl', 'k_matma_15maj_fl.pdf', 2015, 'kozep', 'majus', true, 'II', 18, 'c', 'Három végzős diáknak olyan mobiltelefonja van, amelyen be lehet állítani, hogy hány
számjegyű legyen a telefon bekapcsolásához szükséges számkód.
Anna olyan kódot szeretne, amely ötjegyű, csak a 2-es és a 9-es számjegy szerepel ben-
ne, mindkettő legalább egyszer.

c) Számítsa ki annak a valószínűségét, hogy éppen a helyes kódot választja ki!

a)
b)
c)
Ö.:', 17, '/images/k_matma_15maj_fl/crops/k_matma_15maj_fl_prob_018.png', ARRAY['kombinatorika','valoszinuseg','szovegfeladas']::text[], false, false, '', true);

-- k_matma_16maj_fl (24 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ac217455-30bb-4235-ac7e-7bac2b22f6bc', NOW(), 'k_matma_16maj_fl__001__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 1, NULL, '=
−x
2
Oldja meg a következő egyenletet a valós számok halmazán:
.
0
5
2
x

Az egyenlet megoldása(i):', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_001.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d1c00542-e845-4c29-a135-9b7f5acdc56b', NOW(), 'k_matma_16maj_fl__002__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 2, NULL, 'Döntse el, hogy igazak-e az alábbi állítások minden A és B halmaz esetén!
c∉
⊃
∉
A
1. állítás: Ha
, akkor
.
)
(
B
A
c
d ∉
∪
∉
B
2. állítás: Ha
, akkor
.
)
(
A
B
d
e∉
e∉
A
3. állítás: Ha
, akkor
.
)
\
(
B
A

1. állítás:

2. állítás:

3. állítás:', 1, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_002.png', ARRAY['halmazok','logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7eb22627-0cfe-47f3-9671-601567dcb890', NOW(), 'k_matma_16maj_fl__003__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 3, NULL, '=
Számítsa ki az x értékét, ha
9
log
log
x
.
3
5

=
x', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_003.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7b4ae9e7-bbca-4a40-bf97-213a00bcb8e3', NOW(), 'k_matma_16maj_fl__004__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 4, NULL, 'Hány olyan 3-mal osztható négyjegyű szám van, amely 5-re végződik és a számjegyei
között a 3; 4; 6 számjegyek mindegyike előfordul? Válaszát indokolja!

A feltételeknek megfelelő
négyjegyű számok száma:', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_004.png', ARRAY['kombinatorika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5b93f0fb-5100-4d88-a8ba-15d87344c95c', NOW(), 'k_matma_16maj_fl__005__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 5, NULL, 'Az a(2; 5) vektor merőleges a b(5; b2) vektorra. Adja meg b2 értékét!

=
2b', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_005.png', ARRAY['vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8b4f470f-aee4-48e7-83b5-7e84934df7cf', NOW(), 'k_matma_16maj_fl__006__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 6, NULL, 'Egy találkozóra öt üzletember érkezik, akik a többi résztvevő közül rendre 1, 2, 2, 2, 3
másikat ismernek (az ismeretségek kölcsönösek).
Szemléltesse gráffal az ismeretségeket!

Az ismeretségeket szemléltető
gráf:', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_006.png', ARRAY['grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('da625ec8-b768-48e1-8d95-a2fce02db7c4', NOW(), 'k_matma_16maj_fl__007__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 7, NULL, 'Írja fel a C(1; –1) középpontú, E(–2; 3) ponton átmenő kör egyenletét!
Válaszát indokolja!

A kör egyenlete:', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_007.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e3693152-a42c-4c1f-8103-f184a0eaf2ba', NOW(), 'k_matma_16maj_fl__008__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 8, NULL, 'Jelölje A azt az eseményt, hogy egy szabályos dobókockával egyszer dobva ötöst
dobunk, B pedig azt, hogy két szabályos dobókockával egyszerre dobva a pontok
összege 5 lesz.
Határozza meg a két esemény valószínűségét!

P(A) =

P(B) =', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_008.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8c39e92b-6f74-499e-b79a-99de0859ac23', NOW(), 'k_matma_16maj_fl__009__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 9, NULL, 'Adott négy szám: 3; –2; –2; 0. Adjon meg egy ötödik számot úgy, hogy az öt szám
mediánja 0 legyen!

Az ötödik szám:', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_009.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('243c2aaa-0ba7-4f41-9ec0-77e1cb8bc263', NOW(), 'k_matma_16maj_fl__010__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 10, NULL, 'Adja meg a valós számok halmazán értelmezett
cos +
1
x
x α
függvény zérushelyeit
π
π
−
a
]
2
;
2
[
intervallumban!

A függvény zérushelye(i):', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_010.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8d46f0cf-2c87-4bc3-8c48-05ee5fc2b5b8', NOW(), 'k_matma_16maj_fl__011__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 11, NULL, 'Két négyzet kerülete úgy aránylik egymáshoz, mint 1:4. A kisebb négyzet területe
25 cm2. Adja meg a nagyobb négyzet területének értékét! Válaszát indokolja!

A nagyobb négyzet területe:
cm2.', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_011.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7cada53d-8396-49fd-92e6-e9692c1e4264', NOW(), 'k_matma_16maj_fl__012__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy 1000 fős felmérés során kiderült, hogy a megkérdezettek közül 470 embernek van
életbiztosítása, 520 embernek van lakásbiztosítása, 240 embernek pedig sem életbiztosí-
tása, sem lakásbiztosítása nincs.
A megkérdezettek között hány olyan ember van, akinek életbiztosítása is és lakás-
biztosítása is van? Válaszát indokolja!

A mindkét biztosítással
rendelkező emberek száma:
A', 2, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_012.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e2c38fc4-1aba-4fed-92e7-4a17ce95a8da', NOW(), 'k_matma_16maj_fl__013__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 13, NULL, 'Legyen az f függvény értelmezési tartománya a [
]
−
intervallum,
3
;
4
[
]
−
=2
−
∉
és
minden
esetén.
x
x
f
)
(
3
;
4
x

a)  Számítsa ki az f függvény helyettesítési értékét a –2,85 helyen!
b) Ábrázolja az f függvényt és állapítsa meg az értékkészletét!
c) Oldja meg az alábbi egyenletet a valós számok halmazán!
1
−x
2
=
5
5

a)
b)
c)
Ö.:', 12, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_013.png', ARRAY['fuggvenyek','exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('568be5fa-a94b-495b-a382-17ea365bfd66', NOW(), 'k_matma_16maj_fl__014__', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 14, NULL, 'Ismert, hogy négyféle vércsoport van: 0 (nullás), A, B és AB, továbbá azt is tudjuk,
hogy egy adott vércsoporton belül kétféle lehet az Rh-faktor: pozitív vagy negatív.
Egy vérellátó központ legutóbbi akciójában 400 véradó vett részt. Mindegyik véradótól
egy egység vért vettek le. Az így összegyűjtött 400 egység vérről az alábbi táblázatot
készítették:
Vércsoport
0
A
B
AB
100
148
51
26
Rh-pozitív
25
31
13
6
Rh-negatív

a) A táblázat alapján számítsa ki az egyes vércsoportok relatív gyakoriságát a
400 elemű mintában, és írja az eredmények két tizedesjegyre kerekített értékét az
alábbi táblázat megfelelő mezőibe!
Vércsoport
0
A
B
AB
Relatív gyakoriság

b) A nullás vércsoportú véradók közül kettőt véletlenszerűen kiválasztva mekkora
annak a valószínűsége, hogy egyikük Rh-pozitív, a másikuk Rh-negatív lesz?
Válaszát két tizedesjegyre kerekítve adja meg!', NULL, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_014.png', ARRAY['statisztika','valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('41a5767f-9a43-44bf-8cc8-bb128811b7d6', NOW(), 'k_matma_16maj_fl__015__a', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy 19 méter sugarú körben az AC húr 40°-os szöget zár be az AB átmérővel.
Az AB és az AC szakaszok a körlapot három részre osztják.
a) Számítsa ki mindhárom rész területét!
Válaszait m2-ben, egészre kerekítve adja meg!', 12, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_015.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7a5dcd70-3a43-4d74-98e0-8a605ece5589', NOW(), 'k_matma_16maj_fl__015__b', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy 19 méter sugarú körben az AC húr 40°-os szöget zár be az AB átmérővel.
Az AB és az AC szakaszok a körlapot három részre osztják.

b) Számítsa ki a BC szakasz hosszát!
Válaszát méterben, egy tizedesjegyre kerekítve adja meg!

a)
b)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_015.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f3383bf2-4b2a-4182-a71d-08beb1fc3a67', NOW(), 'k_matma_16maj_fl__016__a', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 16, 'a', 'A dél-franciaországi Orange városában található
az egyik legjobb állapotban fennmaradt antik
színház. Félkör alakú nézőterének első sorában
60 ülőhely van, majd a második sortól kezdve
minden sorban az előző sornál 6-tal több ülő-
helyről tudják nézni az előadást.
(A képen a nézőtér egy részlete látható.)
a)  Hány ülőhely van a 17. sorban?', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_016.png', ARRAY['sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8c630a25-87e8-4618-9123-dbb82cdd5b5c', NOW(), 'k_matma_16maj_fl__016__b', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 16, 'b', 'A dél-franciaországi Orange városában található
az egyik legjobb állapotban fennmaradt antik
színház. Félkör alakú nézőterének első sorában
60 ülőhely van, majd a második sortól kezdve
minden sorban az előző sornál 6-tal több ülő-
helyről tudják nézni az előadást.
(A képen a nézőtér egy részlete látható.)

b)  A színházról szóló prospektusból kiderül, hogy összesen 6786 ülőhely van a
nézőtéren. Hány sor van a színház nézőterén?
Egy mértani sorozat első tagja 60, hányadosa 1,1.', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_016.png', ARRAY['sorozatok','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('158f7000-01a0-4584-88b3-94d81152a1b3', NOW(), 'k_matma_16maj_fl__016__c', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 16, 'c', 'A dél-franciaországi Orange városában található
az egyik legjobb állapotban fennmaradt antik
színház. Félkör alakú nézőterének első sorában
60 ülőhely van, majd a második sortól kezdve
minden sorban az előző sornál 6-tal több ülő-
helyről tudják nézni az előadást.
(A képen a nézőtér egy részlete látható.)

c)  Az első tagtól kezdve legalább hány egymást követő tagot kell összeadnunk ebben
a sorozatban ahhoz, hogy az összeg elérje a 6786-ot?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_016.png', ARRAY['sorozatok','exponencialis','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('24be3aef-d5f2-4af5-88fc-6a2fa1d131b1', NOW(), 'k_matma_16maj_fl__017__a', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 17, 'a', 'Egy szabályos négyoldalú csonkagúla alapéleinek hossza 30 cm, fedőélei 18 cm, oldal-
élei 19 cm hosszúak.
a)  Határozza meg a csonkagúla oldalélének az alaplappal bezárt szögét!', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_017.png', ARRAY['geometria-ter','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('088146a3-cdd6-41d6-a5bd-4c3573c0878e', NOW(), 'k_matma_16maj_fl__017__b', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 17, 'b', 'Egy szabályos négyoldalú csonkagúla alapéleinek hossza 30 cm, fedőélei 18 cm, oldal-
élei 19 cm hosszúak.

b)  Számítsa ki a csonkagúla térfogatát!
Az ábrán a csonkagúla (nem méretarányos) felülnézeti rajza
látható, mely tekinthető egy 8 pontú gráfnak.', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_017.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4dd25e9b-bd00-400a-8a55-3abb09d50c05', NOW(), 'k_matma_16maj_fl__017__c', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 17, 'c', 'Egy szabályos négyoldalú csonkagúla alapéleinek hossza 30 cm, fedőélei 18 cm, oldal-
élei 19 cm hosszúak.

c)  Számítsa ki, hány élt kell még a gráfba berajzolni ahhoz,
hogy az így kapott gráf mindegyik csúcsát pontosan egy
él kösse össze a gráf mindegyik más csúcsával!

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania,
a kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_017.png', ARRAY['grafelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f7f313da-88d9-4a57-97a1-b831c5894c2d', NOW(), 'k_matma_16maj_fl__018__a', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 18, 'a', 'A Központi Statisztikai Hivatal 2012-ben kiadta a 2011-es népszámlálás néhány előze-
tes adatát.
a) Az alábbi táblázatban a nyugat-dunántúli régiót alkotó három megye népességé-
nek változása látható. Számítsa ki, hogy a teljes nyugat-dunántúli régióban hány
százalékkal változott a népesség 2001 és 2011 között!
Válaszában a változást tized százalékra kerekítve adja meg!
Népesség 2011-ben
Változás a 2001-es
(ezer fő)
adathoz viszonyítva (%)
449
2,4
Győr-Moson-Sopron megye
258
–3,8
Vas megye
283
–4,7
Zala megye', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_018.png', ARRAY['statisztika','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ea9761f-261a-41d3-9b48-9a8f362205b4', NOW(), 'k_matma_16maj_fl__018__b', 'k_matma_16maj_fl', 'k_matma_16maj_fl.pdf', 2016, 'kozep', 'majus', true, 'II', 18, 'b', 'A Központi Statisztikai Hivatal 2012-ben kiadta a 2011-es népszámlálás néhány előze-
tes adatát.

b) Egy másik táblázat a közép-magyarországi régiót alkotó Budapest és Pest megye
népességéről készült. Számítsa ki az ezer férfira jutó nők számát a teljes közép-
magyarországi régiót tekintve!
Népesség 2011-ben
Ezer férfira jutó nők
(ezer fő)
száma 2011-ben
1737
1210
Budapest főváros
1223
1084
Pest megye

a)
b)
Ö.:', 17, '/images/k_matma_16maj_fl/crops/k_matma_16maj_fl_prob_018.png', ARRAY['statisztika','szamok-muveletek']::text[], false, false, '', true);

-- k_matma_17maj_fl (31 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4abcf2ba-e9c9-4f72-89c7-fc408a03f876', NOW(), 'k_matma_17maj_fl__001__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 1, NULL, 'Oldja meg a következő egyenletet a valós számok halmazán!
=
+
2
0
2
x
x

2 pont', NULL, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_001.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e9b8d8bb-c83b-4d22-9a63-a371ab6e23f6', NOW(), 'k_matma_17maj_fl__002__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 2, NULL, 'Egy tavaszi felmérés során olyan diákokat kérdeztek meg terveikről, akik a nyári szünet-
ben a LESZ vagy a FOLYÓ fesztivál közül legalább az egyiken részt szeretnének venni.
A 29 megkérdezett diák közül 23 szívesen menne a LESZ fesztiválra, 19-en pedig részt
vennének a FOLYÓ fesztiválon.
Hányan vannak a megkérdezettek között olyanok, akik mindkét fesztiválon részt vennének?

2 pont', NULL, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_002.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4768cd1c-f03e-4f02-aee1-4e391111af9e', NOW(), 'k_matma_17maj_fl__003__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 3, NULL, 'Írja fel kettes számrendszerben a tízes számrendszerbeli 23-at!', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_003.png', ARRAY['szamrendszerek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('31dd89f0-3234-4ac4-8db7-f216f74c3ac2', NOW(), 'k_matma_17maj_fl__004__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 4, NULL, 'Egy ötfős társaság tagjai találkozáskor üdvözölték egymást. Néhányan kezet is fogtak
egymással. Feljegyeztük, hogy az egyes személyek hányszor fogtak kezet: 2, 3, 4, 3, 2.
Hány kézfogás történt összesen? Válaszát indokolja!

A kézfogások száma:', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_004.png', ARRAY['grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2b2af7e3-e911-4f9a-af36-e51494b9fc59', NOW(), 'k_matma_17maj_fl__005__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 5, NULL, 'Oldja meg a következő egyenletet a pozitív valós számok halmazán!
=
6
)
4
(
log2
x', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_005.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c617b4ae-0dd9-469e-9e61-04d8533d6b3d', NOW(), 'k_matma_17maj_fl__006__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 6, NULL, '2 −
x
x
3
Az f: R → R,
függvény melyik számhoz rendel 5-öt?
α

x =', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_006.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('19c560e5-e6f2-4f61-a3bf-e5f3572243f3', NOW(), 'k_matma_17maj_fl__007__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 7, NULL, 'Egy 50 számból álló adatsokaságnak ismerjük az átlagát, a mediánját, a móduszát, a ter-
jedelmét és a szórását.
Az alábbiak közül melyik szerepel biztosan az adatok között is?
A: az átlag
B: a medián
C: a módusz      D: a terjedelem
E: a szórás', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_007.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('359ff2f5-50f2-4920-a44e-1d01a1c0c6d7', NOW(), 'k_matma_17maj_fl__008__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 8, NULL, 'Egy szabályos háromszög alapú egyenes hasáb minden éle 4 cm hosszú.
Számítsa ki a test térfogatát! Számításait részletezze!

V =                       cm3', 3, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_008.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6b2673dc-affc-4043-86ff-4e999ae5dd08', NOW(), 'k_matma_17maj_fl__009__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 9, NULL, '5 +
8
x
Mely x valós számokra értelmezhető a
kifejezés?', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_009.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('14191bee-6260-4fb1-951e-5d4c3b39bacb', NOW(), 'k_matma_17maj_fl__010__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 10, NULL, 'Határozza meg a következő állítások logikai értékét (igaz vagy hamis)!
A: Ha egy szám osztható 24-gyel, akkor osztható 6-tal és 4-gyel is.
B: Ha egy szám osztható 6-tal és 4-gyel, akkor osztható 24-gyel is.
C: Ha egy szám osztható 24-gyel, akkor a számjegyeinek összege osztható 3-mal.

A:
B:
C:', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_010.png', ARRAY['logika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7bed0866-7f0d-471e-a736-8e7000d892b1', NOW(), 'k_matma_17maj_fl__011__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 11, NULL, 'Legyen A = {a; b; c; d; e; f}, B = {d; e; f; g; h}, C = {c; d; e; f; g}.
Elemei felsorolásával adja meg az A ∪ B ∪ C és az (A ⊃ B) \ C halmazt!

∪
∪
C
B
A
=

(A ⊃ B) \ C =', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_011.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('993fe20e-df7f-4684-8885-7b0bec409867', NOW(), 'k_matma_17maj_fl__012__', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy piros és egy fehér szabályos dobókockával egyszerre dobunk.
Mennyi a valószínűsége annak, hogy a dobott számok szorzata 9 lesz?
Válaszát indokolja!

A valószínűség:
A', 2, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_012.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9b47375f-9099-4d2b-a8d4-aaadbb6410f4', NOW(), 'k_matma_17maj_fl__013__a', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 13, 'a', 'a) Oldja meg az alábbi egyenletrendszert a valós számok halmazán!
=
+
{{formula:k_matma_17maj_fl_p12_001.png}}
=
+
12
2
y
x
⎪', 10, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('50e020df-bff4-417f-b671-4f8f15bcae6d', NOW(), 'k_matma_17maj_fl__013__b', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 13, 'b', 'b) Oldja meg az alábbi egyenletet a valós számok halmazán!
1 =
+
×
+
×
x
x
425
5
3
5
2

a)
b)
Ö.:', 10, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_013.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('94fb81e5-c2b8-42f8-b74b-76036a118a84', NOW(), 'k_matma_17maj_fl__014__a', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 14, 'a', '−
Legyen f: [–2; 5] → R,  f (x) =
4
x
, és
g: R → R,  g(x) =
2 +
1
x
.
a) Ábrázolja az f  függvényt!', 12, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_014.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2f793749-a3dc-41ef-a75d-c8096964cc6b', NOW(), 'k_matma_17maj_fl__014__b', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 14, 'b', '−
Legyen f: [–2; 5] → R,  f (x) =
4
x
, és
g: R → R,  g(x) =
2 +
1
x
.

b) Határozza meg, x mely értéke esetén lesz az f és a g függvény értéke egyenlő!
Tekintsük azt a számtani sorozatot, amelynek első tagja 3, differenciája 2. Összeadjuk a
sorozat tagjait az 5. tagtól kezdve az 50. tagig.', 12, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_014.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('78bc45c4-88a3-4e7f-8c55-9ce7cd00a654', NOW(), 'k_matma_17maj_fl__014__c', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 14, 'c', '−
Legyen f: [–2; 5] → R,  f (x) =
4
x
, és
g: R → R,  g(x) =
2 +
1
x
.

c) Számítsa ki ezt az összeget!

a)
b)
c)
Ö.:', 12, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_014.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('54104c9c-7cd3-48e7-8417-915debc8df03', NOW(), 'k_matma_17maj_fl__015__a', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy háromszög csúcsai: A(–4; –10),  B(6; 14),  C(11; –2).
a) Számítsa ki az ABC háromszög AB oldallal párhuzamos középvonalának hosszát!', 14, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_015.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ce5487f-9bbd-48df-9e15-2529a76efd7a', NOW(), 'k_matma_17maj_fl__015__b', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy háromszög csúcsai: A(–4; –10),  B(6; 14),  C(11; –2).

b) Írja fel az ABC háromszög AB oldalához tartozó magasságvonalának egyenletét!', 14, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_015.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fcbf757b-89f6-4b93-b5c9-6f31a84b1b6d', NOW(), 'k_matma_17maj_fl__015__c', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy háromszög csúcsai: A(–4; –10),  B(6; 14),  C(11; –2).

c) Számítsa ki a háromszög A csúcsánál lévő belső szög nagyságát!

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon lévő üres négyzetbe!', 14, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_015.png', ARRAY['koordinata-geometria','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ab42cadb-2034-4b7b-a9c6-b6ac568f21b6', NOW(), 'k_matma_17maj_fl__016__a', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 16, 'a', 'Édesanya egy plüss hóembert készít a kisfiának. A hóember testét két
– szivacstörmelékkel kitömött – gömbből varrja össze. A töltőanyag
a tömörítés miatt 20%-kal kisebb térfogatú lesz a töltés során.
a) Hány liter (tömörítetlen) töltőanyagra volt szükség a test meg-
töltéséhez, ha a gömbök 20 cm, illetve 16 cm átmérőjűek?
A hóember orra forgáskúp alakú lesz. A kúp alapja egy 2 cm sugarú
kör, magassága 4,8 cm. A kúp palástjának elkészítéséhez egy körcik-
ket kell kivágni narancssárga anyagból.', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_016.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ec55252e-9b86-4e0a-a082-486164087479', NOW(), 'k_matma_17maj_fl__016__b', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 16, 'b', 'Édesanya egy plüss hóembert készít a kisfiának. A hóember testét két
– szivacstörmelékkel kitömött – gömbből varrja össze. A töltőanyag
a tömörítés miatt 20%-kal kisebb térfogatú lesz a töltés során.

b)  Számítsa ki a körcikk sugarát és középponti szögét!
(Az illesztéshez szükséges ráhagyást ne vegye figyelembe!)
Édesanya kijelölte a hóember két szemének és három kabátgombjának helyét. A varró-
dobozában hatféle különböző méretű fekete gombot talált, mindegyik méretből legalább
hármat. Tervei szerint két egyforma méretű gomb lesz a hóember két szeme, a kabátgom-
bok pedig föntről lefelé haladva egyre nagyobbak lesznek. A kabátgombok lehetnek
ugyanakkorák, kisebbek vagy nagyobbak is, mint a hóember szeme.', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_016.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d1760162-d644-4f2b-b1c3-40fc7a0bc8e5', NOW(), 'k_matma_17maj_fl__016__c', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 16, 'c', 'Édesanya egy plüss hóembert készít a kisfiának. A hóember testét két
– szivacstörmelékkel kitömött – gömbből varrja össze. A töltőanyag
a tömörítés miatt 20%-kal kisebb térfogatú lesz a töltés során.

c)  Hány különböző tervet készíthetett édesanya?
(Két terv akkor különböző, ha a tervek alapján elkészített két hóember a felvarrt
gombok mérete alapján megkülönböztethető.)

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_016.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e6cbf615-12bd-4c8c-a54b-a38666af39b1', NOW(), 'k_matma_17maj_fl__017__a', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 17, 'a', 'Az autók átlagfogyasztását Magyarországon literben, 100 kilométerre vetítve szokták
megadni.
Kovács úr egyik útja során autójával először 1 órán keresztül 70 km/h átlagsebességgel
haladt. A fedélzeti számítógép szerint ez alatt az autó átlagos üzemanyag-fogyasztása
(100 kilométerre vetítve) 6,0 liter volt. Ezután 1 órán keresztül 120 km/h átlagsebességgel
haladt, ami alatt az átlagos fogyasztás (100 kilométerre vetítve) 8,5 liter volt.
a)  Számítsa ki az autó átlagfogyasztását a teljes útra vonatkoztatva!
Válaszát egy tizedesjegyre kerekítve adja meg!
Kovács úr üzleti útra Washingtonba utazik. Amikor megérkezik, autót bérel. Az egyik
autón ez olvasható: „Ez az autó átlagosan 25 mérföld utat tesz meg 1 gallon benzinnel.”
Tudjuk, hogy 1 gallon körülbelül 3,8 liter, 1 mérföld pedig kb. 1600 méter.', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_017.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4396c436-3482-4b42-9f75-510767e961d4', NOW(), 'k_matma_17maj_fl__017__b', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 17, 'b', 'Az autók átlagfogyasztását Magyarországon literben, 100 kilométerre vetítve szokták
megadni.
Kovács úr egyik útja során autójával először 1 órán keresztül 70 km/h átlagsebességgel
haladt. A fedélzeti számítógép szerint ez alatt az autó átlagos üzemanyag-fogyasztása
(100 kilométerre vetítve) 6,0 liter volt. Ezután 1 órán keresztül 120 km/h átlagsebességgel
haladt, ami alatt az átlagos fogyasztás (100 kilométerre vetítve) 8,5 liter volt.

b) Számítsa ki, hogy ez az autó hány liter benzint fogyaszt 100 kilométeren!
Kovács úr hét napon keresztül minden nap utazott a bérelt autóval. Megfigyelte, hogy a
második naptól kezdve minden nap 10%-kal rövidebb utat tett meg, mint az azt megelőző
napon.', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_017.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c950c863-0bd0-440e-b207-194efd10d107', NOW(), 'k_matma_17maj_fl__017__c', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 17, 'c', 'Az autók átlagfogyasztását Magyarországon literben, 100 kilométerre vetítve szokták
megadni.
Kovács úr egyik útja során autójával először 1 órán keresztül 70 km/h átlagsebességgel
haladt. A fedélzeti számítógép szerint ez alatt az autó átlagos üzemanyag-fogyasztása
(100 kilométerre vetítve) 6,0 liter volt. Ezután 1 órán keresztül 120 km/h átlagsebességgel
haladt, ami alatt az átlagos fogyasztás (100 kilométerre vetítve) 8,5 liter volt.

c) Hány mérföldet tett meg az első napon, ha a hetedik napon 186 mérföldet tett meg?
Washingtonban az autók rendszáma hét karakterből áll: az első három karakter betű, az
utolsó négy pedig szám (pl. APR 0123). (Előfordulhat, hogy mind a négy szám nulla.) Az
APR betűkkel kezdődő rendszámokat már mind kiadták, ezek közül egyet véletlensze-
rűen kiválasztunk.', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_017.png', ARRAY['sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bea25c4d-a1dc-4d42-8a6a-8090cc55664e', NOW(), 'k_matma_17maj_fl__017__d', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 17, 'd', 'Az autók átlagfogyasztását Magyarországon literben, 100 kilométerre vetítve szokták
megadni.
Kovács úr egyik útja során autójával először 1 órán keresztül 70 km/h átlagsebességgel
haladt. A fedélzeti számítógép szerint ez alatt az autó átlagos üzemanyag-fogyasztása
(100 kilométerre vetítve) 6,0 liter volt. Ezután 1 órán keresztül 120 km/h átlagsebességgel
haladt, ami alatt az átlagos fogyasztás (100 kilométerre vetítve) 8,5 liter volt.

d) Melyik esemény a valószínűbb: az, hogy a kiválasztott rendszámon az APR betűk
után négy különböző számjegy szerepel, vagy az, hogy a számjegyek között legalább
kettő azonos?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 2. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_017.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('152b8291-adc3-4c52-954b-0bc1c477a70f', NOW(), 'k_matma_17maj_fl__018__a', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy tanulókísérleti órán a diákok a nehézségi gyorsulást (g) mér-
ték egy úgynevezett ejtőgép segítségével. Az ejtőgép csövébe
egy méréshez 10 egyforma vasgolyót töltenek, melyek egymás
után esnek ki a csőből. A 10 golyó leesésének összidejéből szá-
molható a g értéke.
Az órán öt mérőpár dolgozott, minden pár nyolc sikeres mérést
végzett. Az egyik mérőpár a következő értékeket kapta:
{{formula:k_matma_17maj_fl_p22_002.png}}
.
A nyolc mérésből álló méréssorozat ezzel az eszközzel akkor
m .
számít jónak, ha a kapott nyolc mérési eredmény szórása legfeljebb 0,1
2s
a) Jónak számít-e a fenti méréssorozat?
Az alábbi diagram mutatja az öt mérőpár összesen 40 sikeres mérésének eredményét.

{{formula:k_matma_17maj_fl_p22_003.png}}', NULL, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_018.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ad869cd-23c1-47e3-aafe-23c7453a04dd', NOW(), 'k_matma_17maj_fl__018__b', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy tanulókísérleti órán a diákok a nehézségi gyorsulást (g) mér-
ték egy úgynevezett ejtőgép segítségével. Az ejtőgép csövébe
egy méréshez 10 egyforma vasgolyót töltenek, melyek egymás
után esnek ki a csőből. A 10 golyó leesésének összidejéből szá-
molható a g értéke.
Az órán öt mérőpár dolgozott, minden pár nyolc sikeres mérést
végzett. Az egyik mérőpár a következő értékeket kapta:
{{formula:k_matma_17maj_fl_p22_002.png}}
.
A nyolc mérésből álló méréssorozat ezzel az eszközzel akkor
m .
számít jónak, ha a kapott nyolc mérési eredmény szórása legfeljebb 0,1
2s

b) Adja meg a 40 mérési eredmény átlagát és mediánját!
Az egyik mérőpár készletéből hiányzott két vasgolyó, melyeket két egyforma rézgolyóval
helyettesítettek.', NULL, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_018.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('324a960d-b425-4637-895b-b70b8100d553', NOW(), 'k_matma_17maj_fl__018__c', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy tanulókísérleti órán a diákok a nehézségi gyorsulást (g) mér-
ték egy úgynevezett ejtőgép segítségével. Az ejtőgép csövébe
egy méréshez 10 egyforma vasgolyót töltenek, melyek egymás
után esnek ki a csőből. A 10 golyó leesésének összidejéből szá-
molható a g értéke.
Az órán öt mérőpár dolgozott, minden pár nyolc sikeres mérést
végzett. Az egyik mérőpár a következő értékeket kapta:
{{formula:k_matma_17maj_fl_p22_002.png}}
.
A nyolc mérésből álló méréssorozat ezzel az eszközzel akkor
m .
számít jónak, ha a kapott nyolc mérési eredmény szórása legfeljebb 0,1
2s

c) Hányféle sorrendben tölthető a csőbe a 10 golyó, ha a két rézgolyó nem kerülhet
egymás mellé, és az azonos anyagból készült golyókat nem különböztetjük meg egy-
mástól?
Egy mérési folyamat során előfordulhat, hogy a 10 golyó egyike beragad. Ekkor ez a
mérés sikertelen. Tudjuk, hogy 0,06 annak a valószínűsége, hogy egy mérés sikertelen.', NULL, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_018.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bfcb209d-f722-4279-b445-1faa9952d132', NOW(), 'k_matma_17maj_fl__018__d', 'k_matma_17maj_fl', 'k_matma_17maj_fl.pdf', 2017, 'kozep', 'majus', true, 'II', 18, 'd', 'Egy tanulókísérleti órán a diákok a nehézségi gyorsulást (g) mér-
ték egy úgynevezett ejtőgép segítségével. Az ejtőgép csövébe
egy méréshez 10 egyforma vasgolyót töltenek, melyek egymás
után esnek ki a csőből. A 10 golyó leesésének összidejéből szá-
molható a g értéke.
Az órán öt mérőpár dolgozott, minden pár nyolc sikeres mérést
végzett. Az egyik mérőpár a következő értékeket kapta:
{{formula:k_matma_17maj_fl_p22_002.png}}
.
A nyolc mérésből álló méréssorozat ezzel az eszközzel akkor
m .
számít jónak, ha a kapott nyolc mérési eredmény szórása legfeljebb 0,1
2s

12
10
A mérések száma
8
6
4
2
0
9,70
9,75
9,80
9,85
9,90
9,95

d) Számítsa ki annak a valószínűségét, hogy 40 mérés mindegyike sikeres lesz!', NULL, '/images/k_matma_17maj_fl/crops/k_matma_17maj_fl_prob_018.png', ARRAY['valoszinuseg']::text[], false, false, '', true);

-- k_matma_18maj_fl (28 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e2d14d8d-972b-45c1-a7b4-70a8f2387cf4', NOW(), 'k_matma_18maj_fl__001__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 1, NULL, 'Egy számtani sorozat ötödik tagja 7, nyolcadik tagja 1.
Adja meg a sorozat differenciáját!

A differencia:
2 pont', NULL, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_001.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1787f2aa-101c-447c-84f0-0c07ca31e44d', NOW(), 'k_matma_18maj_fl__002__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 2, NULL, 'Hány kételemű részhalmaza van az A = {P; Q; R; S} halmaznak?

A kételemű részhalmazok száma:', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_002.png', ARRAY['kombinatorika','halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7a7244f8-8359-426c-8f52-ff97b62f9cc2', NOW(), 'k_matma_18maj_fl__003__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 3, NULL, 'Határozza meg a
és a
legnagyobb közös osztóját!
×
×
2 ×
2
3
4
5
3
2
3

A legnagyobb közös osztó:', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_003.png', ARRAY['szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4d66ba68-0176-4b30-afa9-70141de6892f', NOW(), 'k_matma_18maj_fl__004__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 4, NULL, 'Adja meg az alábbi állítások logikai értékét (igaz vagy hamis)!
A: A szabályos nyolcszög egy belső szögének nagysága 135°.
B: A háromszög szögfelezőinek metszéspontja megegyezik a háromszög körülírt
körének középpontjával.
C: Van olyan trapéz, amelynek minden szöge derékszög.

A:
B:
C:', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_004.png', ARRAY['logika','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b93a4bf5-c707-4e2a-81a4-10f31836c93e', NOW(), 'k_matma_18maj_fl__005__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 5, NULL, 'Egy elsőfokú függvény grafikonja az x tengelyt a (–2)-ben, az y tengelyt a 6-ban metszi.
Mennyi a meredeksége?

A meredekség:', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_005.png', ARRAY['fuggvenyek','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fe1fef40-584b-40eb-99f8-9188d2cdb3c6', NOW(), 'k_matma_18maj_fl__006__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 6, NULL, 'Egy eredetileg 112 000 forintba kerülő hűtőszekrényt egy akció keretében 95 200 forin-
tért árulnak.
Hány százalékkal alacsonyabb az akciós ár az eredeti árnál? Megoldását részletezze!

%-kal alacsonyabb.', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_006.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('97bed134-9ed3-453d-8930-0ec455d1df9c', NOW(), 'k_matma_18maj_fl__007__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 7, NULL, '4 =
−
Oldja meg a
egyenletet a valós számok halmazán! Megoldását részletezze!
×
x
54
3
2

x =', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_007.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ba7224ff-3c29-46bd-af63-193aa8195468', NOW(), 'k_matma_18maj_fl__008__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 8, NULL, '+
2
2
ab
b
a
=
=
8
b
Határozza meg az
kifejezés helyettesítési értékét, ha
és
.
2
a
+
b
a

A helyettesítési érték:', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_008.png', ARRAY['algebra','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('aecd5b3f-4cf0-432b-8a19-7f89024753f8', NOW(), 'k_matma_18maj_fl__009__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 9, NULL, 'András ötéves lekötéssel bankba tesz 300 000 Ft-ot évi 2%-os kamatos kamatra.
Mennyi pénze lesz Andrásnak a bankban az öt év elteltével?', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_009.png', ARRAY['exponencialis','penzugyi-matematika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b4737c6c-a3b1-4971-85aa-97963651527f', NOW(), 'k_matma_18maj_fl__010__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 10, NULL, '=
Igaz-e, hogy ha
32
log
log
x
, akkor x > 32 000? Válaszát indokolja!
2
8', 2, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_010.png', ARRAY['exponencialis','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('df079346-3981-4faa-ac1f-04ef141e4d2d', NOW(), 'k_matma_18maj_fl__011__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 11, NULL, 'Rajzolja fel egy olyan szigorúan monoton csökkenő függvénynek a grafikonját, amelynek
értelmezési tartománya [–5; 3], értékkészlete [1; 5].', 3, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_011.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('227c3604-ca0e-4f6b-b815-3c27c3aa743d', NOW(), 'k_matma_18maj_fl__012__', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy szabályos dobókockával kétszer dobunk. A dobott számokat (a dobás sorrendjében)
egymás után írva egy kétjegyű számot kapunk.
Mennyi annak a valószínűsége, hogy 7-tel osztható számot kapunk?
Megoldását részletezze!

A valószínűség:
A', 3, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_012.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5725b96a-abc8-4920-a1fc-5359e1a2d185', NOW(), 'k_matma_18maj_fl__013__b', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 13, 'b', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!
−
+
−
18
)1
(
2
1
x
x
−
=
+
a)
2
11
5
+
=
−
5
7
x
x
b)

a)
b)
Ö.:', 12, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('fa236589-2566-452e-81ad-2eb79ea7666e', NOW(), 'k_matma_18maj_fl__014__a', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 14, 'a', 'Egy ötöslottó-szelvényen öt számot kell megjelölni az 1, 2, 3, …, 90 számok közül.
A lottósorsolás alkalmával nyilvánosan húzzák ki egy adott héten az öt nyerőszámot.
Áron ezen a héten egy szelvényt tölt ki. Az előző heti nyerőszámok között volt a 6, a 9 és
az 54 is. Áron most csupa olyan számot szeretne megjelölni, ami sem a 6-nak, sem a
9-nek nem többszöröse.
a) Hány szám közül választhat Áron a szelvény kitöltésekor?
A lottósorsolást Áron együtt nézi ötéves kislányával, Pannival. Panni azt szeretné, hogy
a kihúzott számok mindegyike legalább 5 legyen.', 10, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_014.png', ARRAY['kombinatorika','szamelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4f7ecf71-6f9e-487f-8f5e-d90ab3a20a3f', NOW(), 'k_matma_18maj_fl__014__b', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 14, 'b', 'Egy ötöslottó-szelvényen öt számot kell megjelölni az 1, 2, 3, …, 90 számok közül.
A lottósorsolás alkalmával nyilvánosan húzzák ki egy adott héten az öt nyerőszámot.
Áron ezen a héten egy szelvényt tölt ki. Az előző heti nyerőszámok között volt a 6, a 9 és
az 54 is. Áron most csupa olyan számot szeretne megjelölni, ami sem a 6-nak, sem a
9-nek nem többszöröse.

b) Mennyi a valószínűsége annak, hogy Panni kívánsága teljesül?

a)
b)
Ö.:', 10, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_014.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('703b82ce-252b-4604-8046-c2fc5f29ab25', NOW(), 'k_matma_18maj_fl__015__a', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 15, 'a', 'a) Számítsa ki az ábrán látható hatszög kerületét és területét!', 14, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_015.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('27a4e711-5eb9-4469-97ca-d0e6855ac004', NOW(), 'k_matma_18maj_fl__015__b', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 15, 'b', 'b) Az ábrán látható téglatest oldaléleinek hossza AB = 63 cm, BC = 16 cm, BF = 72 cm.
Számítsa ki a téglatest CE testátlójának az ABCD lappal bezárt szögét!

a)
b)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 14, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_015.png', ARRAY['geometria-ter','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0e7e09f8-747c-4dd1-8f10-a1f2b4223c3c', NOW(), 'k_matma_18maj_fl__016__a', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy labdarúgócsapat hat tagja az egyik mérkőzés előtt bemelegítésként egyéni lábtenisz-
mérkőzéseket játszott egymás ellen. Az alábbi táblázat mutatja, hogy melyik játékos hány
társával mérkőzött. (Senki nem játszott kétszer ugyanazzal a csapattársával.)

játékos
A
B
C
D
E
F
mérkőzések száma
2
5
2
2
5
a) Lehetséges-e, hogy az F jelű játékos 3 társával mérkőzött?
A labdarúgó-mérkőzés kezdetén a csapat pályán lévő 11 játékosának átlagmagassága
186 cm volt. Egy játékos cseréje után az átlagmagasság 188 cm lett.', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_016.png', ARRAY['grafelmelet','logika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bf981798-8147-4b23-805b-e1e28cca13be', NOW(), 'k_matma_18maj_fl__016__b', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy labdarúgócsapat hat tagja az egyik mérkőzés előtt bemelegítésként egyéni lábtenisz-
mérkőzéseket játszott egymás ellen. Az alábbi táblázat mutatja, hogy melyik játékos hány
társával mérkőzött. (Senki nem játszott kétszer ugyanazzal a csapattársával.)

játékos
A
B
C
D
E
F
mérkőzések száma
2
5
2
2
5

b) Hány centiméterrel magasabb a lecserélt társánál a beálló játékos?
Játék közben egy labdarúgó elrúg egy focilabdát, amelybe a földre érkezéséig senki nem
2 +
−
=
t
t
t
h
15
5
)
(
ér bele. A
függvény írja le, hogy milyen magasan van a labda a talajhoz
képest, ahol t a labda elrúgásának pillanatától mért időt jelöli. (A magasságot méterben,
az időt másodpercben mérjük.)', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_016.png', ARRAY['statisztika','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b4ec345a-adbe-48b5-a154-31361bf119e5', NOW(), 'k_matma_18maj_fl__016__c', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 16, 'c', 'Egy labdarúgócsapat hat tagja az egyik mérkőzés előtt bemelegítésként egyéni lábtenisz-
mérkőzéseket játszott egymás ellen. Az alábbi táblázat mutatja, hogy melyik játékos hány
társával mérkőzött. (Senki nem játszott kétszer ugyanazzal a csapattársával.)

játékos
A
B
C
D
E
F
mérkőzések száma
2
5
2
2
5

c) Milyen magasan volt a labda az elrúgás után 1 másodperccel?', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_016.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d05ee9da-b3e6-469a-b957-762a8707ab44', NOW(), 'k_matma_18maj_fl__016__d', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 16, 'd', 'Egy labdarúgócsapat hat tagja az egyik mérkőzés előtt bemelegítésként egyéni lábtenisz-
mérkőzéseket játszott egymás ellen. Az alábbi táblázat mutatja, hogy melyik játékos hány
társával mérkőzött. (Senki nem játszott kétszer ugyanazzal a csapattársával.)

játékos
A
B
C
D
E
F
mérkőzések száma
2
5
2
2
5

d) Mennyi ideig volt a labda a levegőben?', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_016.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d35e17f1-9f5a-470d-bfb0-5e0584d3fb87', NOW(), 'k_matma_18maj_fl__016__e', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 16, 'e', 'Egy labdarúgócsapat hat tagja az egyik mérkőzés előtt bemelegítésként egyéni lábtenisz-
mérkőzéseket játszott egymás ellen. Az alábbi táblázat mutatja, hogy melyik játékos hány
társával mérkőzött. (Senki nem játszott kétszer ugyanazzal a csapattársával.)

játékos
A
B
C
D
E
F
mérkőzések száma
2
5
2
2
5

e) Milyen magasan volt a labda a pályájának legmagasabb pontján?

a)
b)
c)
d)
e)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_016.png', ARRAY['fuggvenyek','differencialszamitas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('80ac3e8b-d18a-4198-b817-80b77105de60', NOW(), 'k_matma_18maj_fl__017__a', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 17, 'a', 'Egy feladatsor az érettségi előtt álló diákok koordinátageometriai ismereteit vizsgálja.
A feladatsor első részében egy tesztet kell megoldani, amely hat rövid kérdésből áll.
A kérdésekhez három-három válasz van megadva, amelyek között minden esetben pon-
tosan egy helyes van.
a) Hányféleképpen lehet úgy kitölteni a tesztet, hogy a hat tesztkérdés közül pontosan
ötre adjunk helyes választ? (Minden kérdésnél egy választ jelölünk meg a megadott
három közül.)
A feladatsor második részében nyolc feladat szerepel, a diákoknak ezek közül kettőt kell
megoldaniuk. A nyolc feladat között három olyan van, amelynek megoldásához tudni kell
egyenesek metszéspontját meghatározni. Eszter véletlenszerűen választja ki, hogy melyik
két feladatot oldja meg a nyolc közül.', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_017.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('252e3385-3fa0-4634-b9af-791703627277', NOW(), 'k_matma_18maj_fl__017__b', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 17, 'b', 'Egy feladatsor az érettségi előtt álló diákok koordinátageometriai ismereteit vizsgálja.
A feladatsor első részében egy tesztet kell megoldani, amely hat rövid kérdésből áll.
A kérdésekhez három-három válasz van megadva, amelyek között minden esetben pon-
tosan egy helyes van.

b) Számítsa ki annak valószínűségét, hogy az Eszter által választott két feladat közül
legalább az egyik megoldásához tudni kell egyenesek metszéspontját meghatározni!
A feladatsor második részében szerepel az alábbi feladat is:
„Adott a koordinátarendszerben az e egyenes, valamint az A és
B pontok. Tükrözzük az A pontot az e egyenesre, majd az így
kapott A’ pontot kössük össze B-vel. Az A’ B egyenes és az e
metszéspontja az E pont.
Legyen A (–5; 36), B (–9; 11), az e egyenes egyenlete pedig
x = 3. Határozza meg az E pont koordinátáit!”', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_017.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9ad91f45-bc51-4247-b992-a2fffe589877', NOW(), 'k_matma_18maj_fl__017__c', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 17, 'c', 'Egy feladatsor az érettségi előtt álló diákok koordinátageometriai ismereteit vizsgálja.
A feladatsor első részében egy tesztet kell megoldani, amely hat rövid kérdésből áll.
A kérdésekhez három-három válasz van megadva, amelyek között minden esetben pon-
tosan egy helyes van.

c) Ha Eszter ezt a feladatot jól oldotta meg, akkor melyik szá-
mot adta meg az E pont első, illetve második koordinátája-
ként?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_017.png', ARRAY['koordinata-geometria','transzformacio']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f0566f7e-7bcf-4b03-aa2e-196024d85062', NOW(), 'k_matma_18maj_fl__018__a', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy gazdaságban géppel kaszálják a füves területet. Reggel 7 órakor kezdenek el dolgozni
egy olyan géppel, amely 8 óra alatt tudja lekaszálni az egész területet. 10 órakor gyüle-
kezni kezdenek a felhők, ezért a gazdák egy második, az elsővel azonos teljesítményű
gépet is munkába állítanak. A gépek folyamatosan dolgoznak.
a) Hány órára fejezik be a gépek a teljes terület kaszálását?
A megszárított füvet (szénát) egyforma, henger alakú bálákba tömörítik, majd körbefóli-
ázzák. A hengerek átmérője és magassága is 1,2 méter. A bálázó gép 1 m3 térfogatba
körülbelül 160 kg szénát tömörít bele.', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_018.png', ARRAY['szovegfeladas','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9a805b8a-da4b-4abe-bca1-c86cb24598b3', NOW(), 'k_matma_18maj_fl__018__b', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy gazdaságban géppel kaszálják a füves területet. Reggel 7 órakor kezdenek el dolgozni
egy olyan géppel, amely 8 óra alatt tudja lekaszálni az egész területet. 10 órakor gyüle-
kezni kezdenek a felhők, ezért a gazdák egy második, az elsővel azonos teljesítményű
gépet is munkába állítanak. A gépek folyamatosan dolgoznak.

b) Hány kg tömegű egy szénabála?
Válaszát 10 kilogrammra kerekítve adja meg!
A bálázógép működését az ellenőr mintavételezéssel vizsgálja. Ennek során véletlensze-
rűen kiválaszt 10 bálát, és ezek alapkörének átmérőjét megméri. Ahhoz, hogy az ellenőr-
zésnél a gép „megfelelt” minősítést kapjon, a minta átlagának a [118 cm; 122 cm] inter-
vallumba kell esnie, és a minta szórása nem lehet 4 cm-nél nagyobb.
Az ellenőr az alábbi értékeket mérte a mintavétel során:
bála sorszáma
1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
átmérő (cm)
115
122
119
114
116
120
124
116
118
126', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_018.png', ARRAY[]::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('10fd10aa-4056-4a53-b5f8-22bf14bfb998', NOW(), 'k_matma_18maj_fl__018__c', 'k_matma_18maj_fl', 'k_matma_18maj_fl.pdf', 2018, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy gazdaságban géppel kaszálják a füves területet. Reggel 7 órakor kezdenek el dolgozni
egy olyan géppel, amely 8 óra alatt tudja lekaszálni az egész területet. 10 órakor gyüle-
kezni kezdenek a felhők, ezért a gazdák egy második, az elsővel azonos teljesítményű
gépet is munkába állítanak. A gépek folyamatosan dolgoznak.

c) Állapítsa meg, hogy a gép „megfelelt” minősítést kap-e az ellenőrzésnél!

a)
b)
c)
Ö.:', 17, '/images/k_matma_18maj_fl/crops/k_matma_18maj_fl_prob_018.png', ARRAY['statisztika','szovegfeladas']::text[], false, false, '', true);

-- k_matma_19maj_fl (31 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('38067b1c-754b-4d38-b31a-61ad9ff64f71', NOW(), 'k_matma_19maj_fl__001__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 1, NULL, 'Oldja meg az alábbi egyenletet a valós számok halmazán!
2
2
0
x
x
+
−
=

2 pont', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_001.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b1b57ecd-0a54-4084-bce1-72c53c9eeef6', NOW(), 'k_matma_19maj_fl__002__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 2, NULL, 'Egy esküvőn azt kérdeztük egy öttagú asztaltársaság tagjaitól, hogy hány ismerősük ül az
asztalnál (az ismeretségek kölcsönösek). Négy személy válasza sorban: 4, 4, 4, 3.
Az ötödik személynek hány ismerőse ül az asztalnál?

2 pont', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_002.png', ARRAY['grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('19399ff7-af05-468c-b670-e43c7a367f7c', NOW(), 'k_matma_19maj_fl__003__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 3, NULL, 'x.
16 = 16
Adja meg x értékét, ha 2

2 pont', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_003.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('440c5d65-df74-4f29-ad77-371e730ceddc', NOW(), 'k_matma_19maj_fl__004__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 4, NULL, 'Egy forgáshenger alakú palack térfogata 1 liter, magassága 20 cm.
Számítsa ki a palack alapkörének sugarát! Megoldását részletezze!', 3, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_004.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d1017565-94e0-4ef6-af45-7fb4672d6f28', NOW(), 'k_matma_19maj_fl__005__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 5, NULL, 'Határozza meg az alábbi állítások logikai értékét (igaz vagy hamis)!
A: Ha egy szám osztható 12-vel, akkor a szám osztható 6-tal.
B: Ha egy szám osztható 3-mal, akkor a szám osztható 6-tal.
C: Egy szám akkor és csak akkor osztható 6-tal, ha osztható 2-vel és 3-mal.

A:
B:
C:', 2, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_005.png', ARRAY['logika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f48fa98b-493b-4355-baa6-c0ccded1749e', NOW(), 'k_matma_19maj_fl__006__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 6, NULL, '3
4
5
2
2
3 7 19
2
7 19
Adja meg a
és a
számok legnagyobb közös osztóját!
⋅⋅
⋅
⋅
⋅

2 pont', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_006.png', ARRAY['szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e0db6be6-2f5c-4400-a90c-7b5eda2cd332', NOW(), 'k_matma_19maj_fl__007__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 7, NULL, '2
α
2(
1)
5
x
x −
Adja meg a valós számok halmazán értelmezett
függvény minimumá-
+
nak helyét és értékét!

A minimum helye:
1 pont

A minimum értéke:', 1, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_007.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a76f46a3-891f-4588-905e-2db86e805019', NOW(), 'k_matma_19maj_fl__008__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 8, NULL, 'Melyik az a szám, amelyik 2-vel kisebb, mint az abszolútértéke?', 2, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_008.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4feb6a81-23de-4286-b44f-237852e73d64', NOW(), 'k_matma_19maj_fl__009__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 9, NULL, 'α
sin
x
x
Adja meg a [0; 2π] zárt intervallumon értelmezett
függvény zérushelyeit!

2 pont', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_009.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3630735f-8354-41a0-b9ed-b0d46cf80867', NOW(), 'k_matma_19maj_fl__010__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 10, NULL, 'Egy mértani sorozat első tagja 2, negyedik tagja 54.
Adja meg a sorozat első öt tagjának összegét! Megoldását részletezze!', 3, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_010.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('475d2e33-74b0-49df-8e76-945da7bc5ab5', NOW(), 'k_matma_19maj_fl__011__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 11, NULL, 'Adja meg az
2
2
6
9
25
x
y
y
egyenletű kör középpontjának koordinátáit és sugarát!
+
−
+
=

A kör középpontja:
2 pont

A kör sugara:', 1, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_011.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ee729ab9-e403-403f-9154-7421c9a892f4', NOW(), 'k_matma_19maj_fl__012__', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy 32 fős osztályban 14 lány van. Az osztály tanulói közül véletlenszerűen kiválasztunk
kettőt. Mennyi annak a valószínűsége, hogy két lányt választunk?
Megoldását részletezze!
A', 2, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_012.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('adac3bd0-b20a-44af-b7c3-2da30bf41a05', NOW(), 'k_matma_19maj_fl__013__a', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 13, 'a', 'Két társaság a városi állatkertbe látogat. Az egyik társaság 1 felnőtt- és 4 gyerekjegy után
4300 Ft-ot, a másik társaság 2 felnőtt- és 5 gyerekjegy után 6350 Ft-ot fizet a belépésért.
a) Számítsa ki a felnőtt- és a gyerekjegy árát!
A jegyekért fizetendő bruttó ár a nettó árnak és az általános forgalmi adónak (áfa) az
összege. Az áfa a nettó ár 27%-ával egyenlő.', 11, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_013.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('15ade73f-bed3-423e-b777-ae9877925832', NOW(), 'k_matma_19maj_fl__013__b', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 13, 'b', 'Két társaság a városi állatkertbe látogat. Az egyik társaság 1 felnőtt- és 4 gyerekjegy után
4300 Ft-ot, a másik társaság 2 felnőtt- és 5 gyerekjegy után 6350 Ft-ot fizet a belépésért.

b) Hány forint a 6350 Ft-os bruttó ár áfatartalma, és a bruttó árnak hány százaléka az
áfa összege?

a)
b)
Ö.:', 11, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_013.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b5c61637-bdcd-4690-86ba-3ee095e79161', NOW(), 'k_matma_19maj_fl__014__a', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 14, 'a', 'Az ABCD paralelogramma AB oldala 5 cm,
AD oldala 3 cm hosszú.
A paralelogramma A csúcsánál lévő szöge 50°.

a) Számítsa ki a paralelogramma AB oldalhoz tartozó magasságának hosszát és a para-
lelogramma területét!', 12, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_014.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('985588e0-00a7-4b3b-928a-9db0a172cddc', NOW(), 'k_matma_19maj_fl__014__b', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 14, 'b', 'Az ABCD paralelogramma AB oldala 5 cm,
AD oldala 3 cm hosszú.
A paralelogramma A csúcsánál lévő szöge 50°.

b) Számítsa ki a paralelogramma AC átlójának hosszát!', 12, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_014.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('34ef3379-b74e-4591-92c3-e57e99aa394c', NOW(), 'k_matma_19maj_fl__014__c', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 14, 'c', 'Az ABCD paralelogramma AB oldala 5 cm,
AD oldala 3 cm hosszú.
A paralelogramma A csúcsánál lévő szöge 50°.

υυυρ
υυυρ
υυυρ
υυυρ
vektort b. Fejezze ki az AC
és a CD
c) Jelölje az AD
vektort a, a DB
vektort az
a és b vektorok segítségével!

a)
b)
c)
Ö.:', 12, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_014.png', ARRAY['vektorok','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4f4f71c4-8322-438f-a962-ba0748d81c52', NOW(), 'k_matma_19maj_fl__015__a', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy véletlen kísérlet során két szabályos dobókockával dobunk egyszerre. Ezt a kísérletet
többször egymás után elvégezzük. Egy-egy dobás után mindig feljegyezzük a két dobott
szám összegét, és ezt az összeget tekintjük a kísérlet kimenetelének.
Az első kilenc kísérlet után ezeket az összegeket jegyeztük fel: 9, 3, 5, 4, 11, 6, 9, 6, 10.
a) Számítsa ki a kilenc számból álló adatsokaság terjedelmét, mediánját, átlagát és szó-
rását!
Legyen az A esemény az, hogy a kísérlet kimenetele 4-nél nagyobb, de 9-nél kisebb.', 13, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_015.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('53d1057a-76ed-47d0-9a39-3fe2d1e7b882', NOW(), 'k_matma_19maj_fl__015__b', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy véletlen kísérlet során két szabályos dobókockával dobunk egyszerre. Ezt a kísérletet
többször egymás után elvégezzük. Egy-egy dobás után mindig feljegyezzük a két dobott
szám összegét, és ezt az összeget tekintjük a kísérlet kimenetelének.
Az első kilenc kísérlet után ezeket az összegeket jegyeztük fel: 9, 3, 5, 4, 11, 6, 9, 6, 10.

b) Adja meg az A esemény relatív gyakoriságát az első kilenc kísérlet után!', 13, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_015.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('17f080b9-a148-4cf0-8020-c673c2f37e3c', NOW(), 'k_matma_19maj_fl__015__c', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy véletlen kísérlet során két szabályos dobókockával dobunk egyszerre. Ezt a kísérletet
többször egymás után elvégezzük. Egy-egy dobás után mindig feljegyezzük a két dobott
szám összegét, és ezt az összeget tekintjük a kísérlet kimenetelének.
Az első kilenc kísérlet után ezeket az összegeket jegyeztük fel: 9, 3, 5, 4, 11, 6, 9, 6, 10.

c) Számítsa ki az A esemény valószínűségét!

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 13, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_015.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1c9e4746-ed93-4b04-871d-a1456124cfe1', NOW(), 'k_matma_19maj_fl__016__a', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy strandon egy nyári héten minden nap feljegyezték az adott nap legmagasabb hőmér-
sékletét és az adott napon eladott belépőjegyek számát. Az alábbi táblázat mutatja a fel-
jegyzett adatokat.
hétfő
kedd
szerda csütörtök péntek szombat vasárnap
legmagasabb napi
31
28
27
31
32
33
28
hőmérséklet (°C)
eladott belépő-
1246
1315
1167
1275
1358
2617
1786
jegyek száma
Tekintsük a táblázatban megadott értékekre vonatkozó következő állítást: Ha a legmaga-
sabb napi hőmérséklet 30 °C-nál magasabb, akkor az aznap eladott belépőjegyek száma
1200-nál több.
a) Határozza meg az állítás logikai értékét (igaz vagy hamis)! Válaszát indokolja!', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_016.png', ARRAY['logika','statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d322c55d-d451-4ef8-a5a4-92dfd69964e7', NOW(), 'k_matma_19maj_fl__016__b', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy strandon egy nyári héten minden nap feljegyezték az adott nap legmagasabb hőmér-
sékletét és az adott napon eladott belépőjegyek számát. Az alábbi táblázat mutatja a fel-
jegyzett adatokat.
hétfő
kedd
szerda csütörtök péntek szombat vasárnap
legmagasabb napi
31
28
27
31
32
33
28
hőmérséklet (°C)
eladott belépő-
1246
1315
1167
1275
1358
2617
1786
jegyek száma
Tekintsük a táblázatban megadott értékekre vonatkozó következő állítást: Ha a legmaga-
sabb napi hőmérséklet 30 °C-nál magasabb, akkor az aznap eladott belépőjegyek száma
1200-nál több.

b) Írja fel az állítás megfordítását, és határozza meg az állítás megfordításának logikai
értékét! Válaszát indokolja!
A strandon lévő egyik úszómedence 50 méter hosszú és 16,5 méter széles, az egyik végén
130 centiméter, a másik végén 210 centiméter mély. A medence egyenletesen mélyül az
egyik végétől a másikig.', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_016.png', ARRAY['logika','statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8a45a070-35fa-4696-95ab-daaea1363dcb', NOW(), 'k_matma_19maj_fl__016__c', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 16, 'c', 'Egy strandon egy nyári héten minden nap feljegyezték az adott nap legmagasabb hőmér-
sékletét és az adott napon eladott belépőjegyek számát. Az alábbi táblázat mutatja a fel-
jegyzett adatokat.
hétfő
kedd
szerda csütörtök péntek szombat vasárnap
legmagasabb napi
31
28
27
31
32
33
28
hőmérséklet (°C)
eladott belépő-
1246
1315
1167
1275
1358
2617
1786
jegyek száma
Tekintsük a táblázatban megadott értékekre vonatkozó következő állítást: Ha a legmaga-
sabb napi hőmérséklet 30 °C-nál magasabb, akkor az aznap eladott belépőjegyek száma
1200-nál több.

c) Legfeljebb mennyi víz fér el a medencében?
Válaszát tíz köbméterre kerekítve adja meg!
Az úszómedencében versenyt rendeznek egy úszótábor 8 résztvevője számára. A ver-
senyzőket véletlenszerűen osztják be a medencében lévő 8 sávba.', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_016.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7ea1fdba-cdba-4a20-b88a-ac5b21cfde97', NOW(), 'k_matma_19maj_fl__016__d', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 16, 'd', 'Egy strandon egy nyári héten minden nap feljegyezték az adott nap legmagasabb hőmér-
sékletét és az adott napon eladott belépőjegyek számát. Az alábbi táblázat mutatja a fel-
jegyzett adatokat.
hétfő
kedd
szerda csütörtök péntek szombat vasárnap
legmagasabb napi
31
28
27
31
32
33
28
hőmérséklet (°C)
eladott belépő-
1246
1315
1167
1275
1358
2617
1786
jegyek száma
Tekintsük a táblázatban megadott értékekre vonatkozó következő állítást: Ha a legmaga-
sabb napi hőmérséklet 30 °C-nál magasabb, akkor az aznap eladott belépőjegyek száma
1200-nál több.

d) Mekkora annak a valószínűsége, hogy két versenyző, Matyi és Sári, két egymás
melletti sávban fog úszni?
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', NULL, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_016.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5bc8d748-4993-499e-b578-cd00757acf34', NOW(), 'k_matma_19maj_fl__017__a', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 17, 'a', 'a) Egy sorozat tagjai azok a pozitív egész számok (növekvő sorrendben), amelyek
3-mal osztva 1 maradékot adnak. Adja meg a sorozat 56. tagját, és határozza meg,
hogy hányadik tagja a sorozatnak az 1456.', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_017.png', ARRAY['sorozatok','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8c160cf7-bd57-43ad-be25-e70718766dd0', NOW(), 'k_matma_19maj_fl__017__b', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 17, 'b', 'b) Írja fel az A(14; 56) ponton átmenő, az y = 3x + 1 egyenletű egyenesre merőleges
egyenes egyenletét!', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_017.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9c22236e-cca0-483b-b635-e718c04a7090', NOW(), 'k_matma_19maj_fl__017__c', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 17, 'c', 'c) Adja meg a [–14; 56] zárt intervallumon értelmezett
α
függvény érték-
3
1
x
x
⋅
+
készletét!

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_017.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('10f77f47-c8f3-4994-8e93-e17521e2d859', NOW(), 'k_matma_19maj_fl__018__a', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy számítógépes jelszó annál biztonságosabb, minél több karakterből áll, és az alábbi
háromféle karakterből minél többfélét tartalmaz:
- nagybetű (az angol ábécé betűi: 26 különböző lehetőség),
- kisbetű (szintén 26 különböző lehetőség),
- számjegy (0, 1, …, 9).
A Nyers Erő nevű számítógépes alkalmazás másodpercenként kb. 15 millió jelszót tud
kipróbálni.
András jelszava nem kellően biztonságos, A típusú: ezek a jelszavak hat különböző szám-
jegyből állnak.
a) Mennyi idő alatt próbálja ki a Nyers Erő alkalmazás az összes lehetséges A típusú
jelszót?
Balázs jelszava közepesen biztonságos, B típusú: ezek a jelszavak nyolc kisbetűből áll-
nak. Cili jelszava kellően biztonságos, C típusú: ezek a jelszavak tíz betűből állnak, me-
lyek közül valamelyik kettő nagybetű, a többi nyolc pedig kisbetű. (A B és a C típusú
jelszóban is előfordulhatnak azonos karakterek.)', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_018.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('76f7ecf7-f0d4-4882-bf9c-4cb718817845', NOW(), 'k_matma_19maj_fl__018__b', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy számítógépes jelszó annál biztonságosabb, minél több karakterből áll, és az alábbi
háromféle karakterből minél többfélét tartalmaz:
- nagybetű (az angol ábécé betűi: 26 különböző lehetőség),
- kisbetű (szintén 26 különböző lehetőség),
- számjegy (0, 1, …, 9).
A Nyers Erő nevű számítógépes alkalmazás másodpercenként kb. 15 millió jelszót tud
kipróbálni.
András jelszava nem kellően biztonságos, A típusú: ezek a jelszavak hat különböző szám-
jegyből állnak.

b) Hányszor több időbe telik a Nyers Erő alkalmazásnak az összes különböző C típusú
jelszó kipróbálása, mint az összes B típusúé?
Egy számítógépes program megadott jelszavak biztonsági szintjét hasonlítja össze.
Ennek során minden megadott jelszó biztonsági szintjét összehasonlítja az összes többi
megadott jelszóéval. (Két jelszó összehasonlítását pontosan egyszer végzi el a program.)
Egy alkalommal ez a program valahány jelszó vizsgálata során 900-nál kevesebb össze-
hasonlítást végzett.', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_018.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('56c53dc6-1a0f-4b36-ab98-6340a0481ce5', NOW(), 'k_matma_19maj_fl__018__c', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy számítógépes jelszó annál biztonságosabb, minél több karakterből áll, és az alábbi
háromféle karakterből minél többfélét tartalmaz:
- nagybetű (az angol ábécé betűi: 26 különböző lehetőség),
- kisbetű (szintén 26 különböző lehetőség),
- számjegy (0, 1, …, 9).
A Nyers Erő nevű számítógépes alkalmazás másodpercenként kb. 15 millió jelszót tud
kipróbálni.
András jelszava nem kellően biztonságos, A típusú: ezek a jelszavak hat különböző szám-
jegyből állnak.

c) Legfeljebb hány jelszót hasonlított össze a program?
A titkosítási algoritmusok sokszor használnak nagy prímszámokat. 2018 elején jelent
meg a hír, hogy megtalálták az addig ismert legnagyobb prímszámot: ez a 277 232 917 – 1.
Egy matematikai témákkal foglalkozó internetes oldalon ez olvasható: „Egy tízes szám-
rendszerben felírt pozitív egész szám számjegyei számának a meghatározásához először
vegyük annak 10-es alapú logaritmusát. Az így kapott számnál nagyobb egész számok
közül a legkisebb lesz a kérdéses szám számjegyeinek a száma.”', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_018.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('76ac48f4-9895-4a8f-b6b6-bd100d7b2584', NOW(), 'k_matma_19maj_fl__018__d', 'k_matma_19maj_fl', 'k_matma_19maj_fl.pdf', 2019, 'kozep', 'majus', true, 'II', 18, 'd', 'Egy számítógépes jelszó annál biztonságosabb, minél több karakterből áll, és az alábbi
háromféle karakterből minél többfélét tartalmaz:
- nagybetű (az angol ábécé betűi: 26 különböző lehetőség),
- kisbetű (szintén 26 különböző lehetőség),
- számjegy (0, 1, …, 9).
A Nyers Erő nevű számítógépes alkalmazás másodpercenként kb. 15 millió jelszót tud
kipróbálni.
András jelszava nem kellően biztonságos, A típusú: ezek a jelszavak hat különböző szám-
jegyből állnak.

d) Mutassa meg a leírt módszerrel, hogy a 277 232 917 (tízes számrendszerben felírva)
23 249 425 számjegyből áll!

a)
b)
c)
d)
Ö.:', 17, '/images/k_matma_19maj_fl/crops/k_matma_19maj_fl_prob_018.png', ARRAY['exponencialis','szamrendszerek','bizonyitasok']::text[], false, false, '', true);

-- k_matma_20maj_fl (25 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3b50ee0a-c7bf-4ba1-8195-e72d351e15dd', NOW(), 'k_matma_20maj_fl__001__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 1, NULL, 'Egy mértani sorozat első tagja 8, hányadosa 2.
Adja meg a sorozat első 10 tagjának összegét!

Az első 10 tag összege:
2 pont', NULL, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_001.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9b37e16f-bde6-462f-a36e-262804c14fcb', NOW(), 'k_matma_20maj_fl__002__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 2, NULL, 'Egy áprilisi héten a legmagasabb napi hőmérsékletértékek a következőképpen alakultak:
Hétfő
Kedd
Szerda
Csütörtök
Péntek
Szombat Vasárnap
Hőmérséklet
20
21
21
17
17
18
21
(°C)
Adja meg ezen értékek mediánját!

A medián:
2 pont', NULL, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_002.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b9f5a7d9-9d24-4dfd-b51e-224b1781d6b7', NOW(), 'k_matma_20maj_fl__003__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 3, NULL, 'Adottak az A és a B halmazok, amelyekről a következőket tudjuk: az A halmaznak 6 eleme,
az A
B
halmaznak 7 eleme, az A
B
halmaznak 2 eleme van.
∪
∩
Hány eleme van a B halmaznak? Válaszát indokolja!

A B halmaznak          eleme van.', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_003.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c6b188ed-fa8a-4602-9c28-92c59414ea3e', NOW(), 'k_matma_20maj_fl__004__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 4, NULL, 'Egy vitorlásversenyen 8 hajó indul.
Számítsa ki, hányféle sorrendben érhetnek be a célba, ha minden hajó célba ér, és nem
lehet holtverseny!

A lehetséges sorrendek száma:', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_004.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('39c313f9-6121-4f5c-946f-c1d8da81d893', NOW(), 'k_matma_20maj_fl__005__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 5, NULL, 'Az alábbi ábra kiegészítésével rajzoljon egy olyan 5 pontú gráfot, amelynek 7 éle van, és
minden pont fokszáma legfeljebb 3.', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_005.png', ARRAY['grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('67c59bb7-a551-49ca-9b33-44300aacf052', NOW(), 'k_matma_20maj_fl__006__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 6, NULL, 'Adott tíz egész szám: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10. Közülük az egyiket véletlenszerűen
kiválasztjuk.
Mekkora annak a valószínűsége, hogy négyzetszámot választunk?

A kérdéses valószínűség:', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_006.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f6b09b98-85ae-4630-bdc6-f9783ba70a30', NOW(), 'k_matma_20maj_fl__007__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 7, NULL, 'Adja meg az alábbi állítások logikai értékét (igaz vagy hamis)!
A)  Ha egymás után 100-szor feldobunk egy tízforintost, akkor pontosan 50-szer
kapunk írást, 50 esetben pedig fejet.
B)  Az ötöslottón az 1, 2, 3, 4, 5 számok kihúzásának a valószínűsége ugyanannyi, mint
a 9, 23, 46, 75, 86 számok kihúzásának a valószínűsége.
C) Két szabályos dobókockát egyszerre feldobunk. Ekkor 1
36  annak a valószínűsége,
hogy mindkettővel hatost dobunk.

A:
B:
C:', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_007.png', ARRAY['logika','valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e8016ed1-40a1-42d0-954b-aaac10e6a718', NOW(), 'k_matma_20maj_fl__008__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 8, NULL, 'Egy felmérés során 1200 embert
Számítógép-használattal
kérdeztek meg arról, hogy naponta
töltött idő naponta:
Kevesebb
hány órát tölt számítógép-haszná-
Több mint
mint 1 óra
lattal. Az eredményeket (százalé-
3 óra
kos megoszlásban) a mellékelt
kördiagram szemlélteti.
Számítsa ki, hogy a felmérésben
résztvevők közül hány ember tölt
naponta legfeljebb 3 órát a gép
1-2 óra
előtt! Válaszát indokolja!
2-3 óra

Naponta legfeljebb 3 órát tölt
a gép előtt               fő.', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_008.png', ARRAY['statisztika','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d4d4b4f1-c3d8-4ec0-b3a7-98cb1826f3cb', NOW(), 'k_matma_20maj_fl__009__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 9, NULL, 'Adja meg annak az egyenesnek az egyenletét, amely párhuzamos a 2x – 5y = 10 egyenletű
egyenessel, és átmegy a P(4; 1) ponton!

Az egyenes egyenlete:', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_009.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8548f156-66cb-4121-bb8a-e3d296343880', NOW(), 'k_matma_20maj_fl__010__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 10, NULL, 'Egy számtani sorozat negyedik tagja 72, hatodik tagja 64.
Határozza meg a sorozat első tagját! Válaszát indokolja!

A sorozat első tagja:', 3, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_010.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ef3dcade-b57a-44fd-924a-74281fafef0c', NOW(), 'k_matma_20maj_fl__011__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 11, NULL, 'Oldja meg az alábbi egyenletet a [0; π] intervallumon!
tg x = – 1

x =', 2, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_011.png', ARRAY['trigonometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('16ab622c-1278-40c7-9cf5-f12db1a60a60', NOW(), 'k_matma_20maj_fl__012__', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'I', 12, NULL, 'Az alábbi ábrán BC párhuzamos DE-vel. Ismerjük a következő sza-
kaszok hosszát: BC = 1,5; DE = 5; CE = 7.
Számítsa ki az AC szakasz hosszát! Válaszát indokolja!

Az AC szakasz hossza:
A', 3, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_012.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c26678cb-5e4e-481d-9344-f9f3aab7a476', NOW(), 'k_matma_20maj_fl__013__a', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 13, 'a', 'Adott a következő függvény: f: [ 2;4]
α
2
1
x
x −
.
→R,
−
−

a) Adja meg, hogy milyen értéket rendel az f függvény a (–1)-hez!', 12, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_013.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9c104d7f-7b11-47b5-b968-b0fea53d0a3b', NOW(), 'k_matma_20maj_fl__013__b', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 13, 'b', 'Adott a következő függvény: f: [ 2;4]
α
2
1
x
x −
.
→R,
−
−

b) Ábrázolja az f függvényt, és jellemezze a következő szempontok szerint:
monotonitás, szélsőérték(ek), zérushely(ek), értékkészlet.

a)
b)
Ö.:', 12, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_013.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('2ee02ade-fdb0-4d28-a9b6-b8e041474795', NOW(), 'k_matma_20maj_fl__014__b', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 14, 'b', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!
a) 1
2
2
1
x
x
−
+
+
=
2
2
2 (
2)
x
x
+
⋅
+
2
b)
log (
1)
log 81
5
x −
+
=
3
3

a)
b)
Ö.:', 11, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_014.png', ARRAY['egyenletek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a64e758b-989b-4fc6-b322-9c27dad01167', NOW(), 'k_matma_20maj_fl__015__a', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy sportcsarnok nézőtere négy szektorra osz-
lik: A, B, C és D. Mind a négy szektort további
három zónára osztották: az 1. zónához a pályá-
hoz legközelebb eső üléssorok tartoznak,
a 2.-hoz a nézőtér középső sorai, míg a 3. zóná-
hoz a legfelső üléssorok.

Az alábbi – hiányosan kitöltött – táblázat az egyes szektorok különböző zónáiba eladott
jegyek számát mutatja az egyik mérkőzésen.
A szektor
B szektor
C szektor
D szektor
69
96
85
1. zóna
116
99
2. zóna
102
113
3. zóna
Tudjuk, hogy az 1. zónában szektoronként átlagosan 82 jegyet vásároltak.
a) Hány jegyet váltottak a D szektor 1. zónájába?
A mérkőzésre összesen 1102 jegyet adtak el.', 13, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_015.png', ARRAY['szovegfeladas','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('15933475-1b91-4526-866b-08fd7bc1b1db', NOW(), 'k_matma_20maj_fl__015__b', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy sportcsarnok nézőtere négy szektorra osz-
lik: A, B, C és D. Mind a négy szektort további
három zónára osztották: az 1. zónához a pályá-
hoz legközelebb eső üléssorok tartoznak,
a 2.-hoz a nézőtér középső sorai, míg a 3. zóná-
hoz a legfelső üléssorok.

Az alábbi – hiányosan kitöltött – táblázat az egyes szektorok különböző zónáiba eladott
jegyek számát mutatja az egyik mérkőzésen.
A szektor
B szektor
C szektor
D szektor
69
96
85
1. zóna
116
99
2. zóna
102
113
3. zóna
Tudjuk, hogy az 1. zónában szektoronként átlagosan 82 jegyet vásároltak.

b) Mennyi a valószínűsége annak, hogy egy véletlenszerűen kiválasztott néző jegye
a C vagy a D szektor valamelyikébe szól?
A C szektor három zónájába összesen 295 jegyet adtak el, összesen 752 200 forintért.
Egy jegy ára a C szektor 1. zónájában 3200 Ft, a 2.-ban 2900 Ft, a 3.-ban pedig 1500 Ft.', 13, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_015.png', ARRAY['valoszinuseg','szovegfeladas','statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('dc44e4a4-56dc-41e9-9424-dd50d38df194', NOW(), 'k_matma_20maj_fl__015__c', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy sportcsarnok nézőtere négy szektorra osz-
lik: A, B, C és D. Mind a négy szektort további
három zónára osztották: az 1. zónához a pályá-
hoz legközelebb eső üléssorok tartoznak,
a 2.-hoz a nézőtér középső sorai, míg a 3. zóná-
hoz a legfelső üléssorok.

Az alábbi – hiányosan kitöltött – táblázat az egyes szektorok különböző zónáiba eladott
jegyek számát mutatja az egyik mérkőzésen.
A szektor
B szektor
C szektor
D szektor
69
96
85
1. zóna
116
99
2. zóna
102
113
3. zóna
Tudjuk, hogy az 1. zónában szektoronként átlagosan 82 jegyet vásároltak.

c) Hány jegyet adtak el a C szektor 2., illetve 3. zónájába?

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 13, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_015.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7098d8a4-1a3d-4059-9e33-49065c5795c2', NOW(), 'k_matma_20maj_fl__016__a', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy 30 fős gimnáziumi osztály osztálykirándulást szervez. A kirándulás lehetséges hely-
színei: Sopron, Debrecen és Pécs. Az osztály tanulói szavazást tartanak arról, hogy ki
melyik helyszínre menne szívesen. Több helyszínre is lehet szavazni, de legalább egyet
mindenkinek választania kell. A szavazás eredménye:
Sopronba 18-an mennének, közülük 8-an a pécsi helyszínbe is belegyeznének.
Debrecent 20-an látogatnák meg, közülük 12 fő Sopronba is elmenne.
Debrecenbe és Pécsre is ellátogatna 11 fő.
5-en mindhárom helyre szívesen utaznának.
a)  Összesen hányan vannak az osztályban azok, akik szívesen kirándulnának Pécsre?
János a szavazás eredményéről egy ábrát készített. Az ábrán mindhá-
rom kör sugara 3 cm, és mindegyik kör áthalad a másik két kör kö-
zéppontján.', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_016.png', ARRAY['halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0e3fad28-d1bd-456b-bb6f-a5dd494b72d1', NOW(), 'k_matma_20maj_fl__016__b', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy 30 fős gimnáziumi osztály osztálykirándulást szervez. A kirándulás lehetséges hely-
színei: Sopron, Debrecen és Pécs. Az osztály tanulói szavazást tartanak arról, hogy ki
melyik helyszínre menne szívesen. Több helyszínre is lehet szavazni, de legalább egyet
mindenkinek választania kell. A szavazás eredménye:
Sopronba 18-an mennének, közülük 8-an a pécsi helyszínbe is belegyeznének.
Debrecent 20-an látogatnák meg, közülük 12 fő Sopronba is elmenne.
Debrecenbe és Pécsre is ellátogatna 11 fő.
5-en mindhárom helyre szívesen utaznának.

b)  Számítsa ki a három körlemez közös részének területét!

Tudjuk, hogy az osztály 30 tanulójából 20 jelölte meg Debrecent lehetséges úti célként.
Az osztály tanulói közül véletlenszerűen kiválasztunk hármat.', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_016.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9234df85-614a-4082-9b17-08a9e7be2afe', NOW(), 'k_matma_20maj_fl__016__c', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 16, 'c', 'Egy 30 fős gimnáziumi osztály osztálykirándulást szervez. A kirándulás lehetséges hely-
színei: Sopron, Debrecen és Pécs. Az osztály tanulói szavazást tartanak arról, hogy ki
melyik helyszínre menne szívesen. Több helyszínre is lehet szavazni, de legalább egyet
mindenkinek választania kell. A szavazás eredménye:
Sopronba 18-an mennének, közülük 8-an a pécsi helyszínbe is belegyeznének.
Debrecent 20-an látogatnák meg, közülük 12 fő Sopronba is elmenne.
Debrecenbe és Pécsre is ellátogatna 11 fő.
5-en mindhárom helyre szívesen utaznának.

c)  Mekkora annak a valószínűsége, hogy közülük éppen ketten mennének Debre-
cenbe, a harmadik kiválasztott tanuló viszont nem?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_016.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c7a91263-7c17-468e-ba88-e91d0e829938', NOW(), 'k_matma_20maj_fl__017__a', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 17, 'a', 'Az a), b) és c) feladatokat az alábbi ábra alapján oldja meg!

Az ABC háromszögben AB = 37, BC = 41 egység hosszú, a BAC szög nagysága 60°.
a)  Számítsa ki az ABC háromszög kerületét egész számra kerekítve!
Tudjuk, hogy a D pont éppen a CE szakasz felezőpontja.', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_017.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('76b78e41-f4a6-495b-9b5a-65ff78533981', NOW(), 'k_matma_20maj_fl__017__b', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 17, 'b', 'Az a), b) és c) feladatokat az alábbi ábra alapján oldja meg!

Az ABC háromszögben AB = 37, BC = 41 egység hosszú, a BAC szög nagysága 60°.

υυυρ
υυυρ
υυυρ
υυυρ
, az AC
és a CD
b)  Fejezze ki a BE
vektort az AB
vektorok segítségével!
Az A pontból a G-be kell eljutnunk úgy, hogy az egyes pontok között csak a berajzolt
szakaszokon mozoghatunk, és mindig csak olyan pontra léphetünk tovább, amelynek be-
tűjele a magyar ábécében az elhagyni készült pont betűjele után helyezkedik el.
(Tehát például C-ről D-re vagy F-re léphetünk, de A-ra vagy B-re nem.)', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_017.png', ARRAY['vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6b8bd27b-77e7-4124-a4fe-601cf19e5cef', NOW(), 'k_matma_20maj_fl__017__c', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 17, 'c', 'Az a), b) és c) feladatokat az alábbi ábra alapján oldja meg!

Az ABC háromszögben AB = 37, BC = 41 egység hosszú, a BAC szög nagysága 60°.

c)  Hányféle különböző útvonalon juthatunk el ilyen módon A-ból G-be?

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_017.png', ARRAY['grafelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f73a5c59-55f4-456b-b992-64573549f092', NOW(), 'k_matma_20maj_fl__018__a', 'k_matma_20maj_fl', 'k_matma_20maj_fl.pdf', 2020, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy teáskanna jó közelítéssel csonkakúp alakú. A teáskanna alapkör-
ének átmérője 18 cm, fedőkörének átmérője 8 cm. A kanna oldalán az
aljától a tetejéig mért távolság (a csonkakúp alkotója) 14 cm.
A kannában magasságának feléig áll a tea.
a)  Számítsa ki, hogy hány deciliter tea van a kannában!
Ismert tény, hogy magára hagyva a forró tea előbb-utóbb a környező levegő hőmérsékle-
tére hűl le. Ez a hőmérsékletcsökkenés exponenciális jellegű.
Egy kísérlet során egy kanna forró teát egy 23°C-os helyiségben magára hagytak, majd
időről időre megmérték a hőmérsékletét. Az eredményeket számítógépbe táplálva a tea T
hőmérsékletére (°C-ban) a következő összefüggést kapták:
56 0,96t
tea( )
23
T
t =
, ahol t a mérés kezdete óta eltelt idő percben.
+
⋅
b)  A megállapított összefüggés szerint hány °C lesz a tea hőmérséklete negyedóra
elteltével?
c) Számítsa ki, hogy a fenti összefüggés szerint hány perc alatt csökken a tea hőmérsék-
lete 37°C-ra!
a)
9 pont
b)
c)
Ö.:', 17, '/images/k_matma_20maj_fl/crops/k_matma_20maj_fl_prob_018.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);

-- k_matma_21maj_fl (30 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f5e7a204-cf9b-4133-9aa3-5161bfbfacf5', NOW(), 'k_matma_21maj_fl__001__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 1, NULL, 'Tudjuk, hogy 3y + 9 = 2x. Számítsa ki y értékét, ha x = 123.

y =', 2, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_001.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6fa38056-b651-45e8-9bc0-ec9e603da78c', NOW(), 'k_matma_21maj_fl__002__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 2, NULL, 'Adja meg egy négyzet alapú csonkagúla lapjainak, éleinek és csúcsainak a számát!

A lapok száma:
Az élek száma:
A csúcsok száma:', 3, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_002.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('76fa306c-a22c-4b2d-90c5-c44ef6b601ec', NOW(), 'k_matma_21maj_fl__003__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 3, NULL, 'Hány kétjegyű pozitív páratlan szám van a tízes számrendszerben?

2 pont', NULL, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_003.png', ARRAY['szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e4cf7f99-0fd8-4423-bc52-a0acc695f220', NOW(), 'k_matma_21maj_fl__004__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 4, NULL, 'Egy étel négy személyre való elkészítéséhez 6 dl tej szükséges.
Hány deciliter tej kell ahhoz, hogy ugyanezt az ételt hét személyre készítsük el?', 2, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_004.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f4273c39-3fc8-48e1-b49f-3089e0cf80fe', NOW(), 'k_matma_21maj_fl__005__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 5, NULL, 'Adja meg x értékét, ha 2x = 20
· 21
· 22
· 23
· 24
· 25
· 26
· 27
· 28.

x =', 2, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_005.png', ARRAY['exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c48fb4bc-6128-4ae1-a954-772d528c90d9', NOW(), 'k_matma_21maj_fl__006__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 6, NULL, 'Egy derékszögű háromszög egyik befogója 24 méter, átfogója 25 méter.
Hány méter hosszú a másik befogó?

2 pont', NULL, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_006.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5e1a454e-e026-439f-be92-40206eb3db8d', NOW(), 'k_matma_21maj_fl__007__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 7, NULL, 'Egy számtani sorozat első tagja 2, második tagja 3,5.
Hányadik tagja a sorozatnak a 80? Megoldását részletezze!', 3, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_007.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8847ed1f-2c20-485f-b5b7-ea12caf14bed', NOW(), 'k_matma_21maj_fl__008__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 8, NULL, 'Egy új webáruháznak 2019 januárjában 3400 vásárlója volt, majd a vásárlók száma hó-
napról hónapra 7%-kal nőtt.
Hány vásárlója volt ennek a webáruháznak 2020 januárjában? Válaszát száz főre kere-
kítve adja meg! Megoldását részletezze!', 3, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_008.png', ARRAY['exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('71aa563f-a81e-49f8-88e6-53cc74454707', NOW(), 'k_matma_21maj_fl__009__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 9, NULL, 'Adja meg a következő állítások logikai értékét (igaz vagy hamis)!
A: A téglalap átlói felezik a téglalap szögeit.
B: Ha a paralelogramma egyik szöge 90°-os, akkor téglalap.
C: Van olyan paralelogramma, amelyiknek három hegyesszöge van.

A:
B:
C:', 2, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_009.png', ARRAY['logika','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c520dd56-6a07-439d-b590-37496234c6c4', NOW(), 'k_matma_21maj_fl__010__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 10, NULL, 'Az első 25 pozitív egész szám közül véletlenszerűen kiválasztunk egyet.
Mennyi annak a valószínűsége, hogy 4-gyel osztható számot választunk?

2 pont', NULL, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_010.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('553a888c-18ad-4a99-8e91-17b6f64e31d1', NOW(), 'k_matma_21maj_fl__011__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 11, NULL, 'Adjon meg egy olyan 180°-nál nagyobb szöget, amelynek a szinusza 0.

2 pont', NULL, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_011.png', ARRAY['trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('85e3176f-655d-4918-b831-dbae039ea328', NOW(), 'k_matma_21maj_fl__012__', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy kosárlabdacsapat az előző öt mérkőzésén 77, 60, 83, 73, illetve 90 pontot szerzett.
Hány pontot kell szereznie a csapatnak a következő mérkőzésén ahhoz, hogy a hat mér-
kőzésen szerzett pontjainak átlaga 75 legyen? Megoldását részletezze!
A', 2, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_012.png', ARRAY['statisztika','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9f328b70-e4b1-4a5f-94b3-6264af7f7beb', NOW(), 'k_matma_21maj_fl__013__a', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 13, 'a', 'Az alábbi ábrán a [–2; 6] zárt intervallumon értelmezett f (x) = – | x – 1| + 2 függvény
grafikonja látható.

a) Jellemezze a függvényt a következő szempontok szerint:
– zérushelyek;
– maximum helye és értéke;
– értékkészlet.', 13, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_013.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bd0a742f-7ac0-456e-9227-2eaa3f376419', NOW(), 'k_matma_21maj_fl__013__b', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 13, 'b', 'Az alábbi ábrán a [–2; 6] zárt intervallumon értelmezett f (x) = – | x – 1| + 2 függvény
grafikonja látható.

b) Az [1; 6] intervallumon a függvény az x ↦ m · x + b hozzárendeléssel is megadható.
A grafikon alapján határozza meg m és b értékét!', 13, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_013.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('49297c94-c8bc-4584-a142-99af7f2c3c0f', NOW(), 'k_matma_21maj_fl__013__c', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 13, 'c', 'Az alábbi ábrán a [–2; 6] zárt intervallumon értelmezett f (x) = – | x – 1| + 2 függvény
grafikonja látható.

c) Mely x valós számok esetén teljesül az f (x) < 1 egyenlőtlenség?

a)
b)
c)
Ö.:', 13, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_013.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4b0a0d56-77a1-4328-85df-c099ece8c58e', NOW(), 'k_matma_21maj_fl__014__b', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 14, 'b', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!
1
1
5
a)
, ahol x ≠ 2 és x ≠ 3
+
=
3
2
6
x
x
−
−
b) 7 x + 2 – 7 x + 1 = 2058

a)
b)
Ö.:', 11, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_014.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('29861b1e-1a4a-47f7-b508-34efafb7e2c2', NOW(), 'k_matma_21maj_fl__015__a', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy 32 fős osztályban 13 lány van.

4 pont
a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_015.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f5477980-7f36-4cf5-a26a-e78ff69b2ebe', NOW(), 'k_matma_21maj_fl__015__b', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy 32 fős osztályban 13 lány van.

b) Hány olyan tanuló van az osztályban, aki csak a harmadik filmet látta?
Egy új közösségi oldalon Anna, Bence, Cili, Dénes, Edit és Feri már regisztrálta magát.
Ahhoz, hogy két regisztrált felhasználó ismerős legyen az oldalon, kölcsönösen be kell
jelölniük egymást. A 6 fő között Anna már csak Bencével nem ismerős, a többiekkel igen.
Cili (Annán kívül) Ferivel, Bence pedig csupán Edittel ismerős. Dénes, Edit és Feri még
nem ismerősei egymásnak az oldalon.', 12, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_015.png', ARRAY['halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('5e60b3f2-df51-4cee-87b6-d7e5a8d38e14', NOW(), 'k_matma_21maj_fl__015__c', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy 32 fős osztályban 13 lány van.

c) Szemléltesse gráffal, hogy a 6 fő közül ki kivel ismerős ezen a közösségi oldalon,
és adja meg, hány olyan „pár” van közöttük, akik még nem ismerősei egymásnak?', 12, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_015.png', ARRAY['grafelmelet','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('609f321d-ab87-47c2-8011-c08682fd39da', NOW(), 'k_matma_21maj_fl__016__a', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 16, 'a', 'Egy fémipari kisvállalkozás acéltartályokat gyárt. A tartály folyadék-
kal megtölthető része egy forgáskúpból és egy rá illeszkedő forgáshen-
gerből áll. A kúp és a henger alapkörének átmérője egyaránt 80 cm,
a kúp magassága 110 cm, a henger magassága 120 cm.
a) Legfeljebb hány liter folyadék fér a tartályba?', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_016.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f4f14a95-008b-4507-b22a-b34442fb6001', NOW(), 'k_matma_21maj_fl__016__b', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 16, 'b', 'Egy fémipari kisvállalkozás acéltartályokat gyárt. A tartály folyadék-
kal megtölthető része egy forgáskúpból és egy rá illeszkedő forgáshen-
gerből áll. A kúp és a henger alapkörének átmérője egyaránt 80 cm,
a kúp magassága 110 cm, a henger magassága 120 cm.

b) Mekkora a kúp nyílásszöge?
A tartályok a sorozatgyártás megkezdésekor még viszonylag magas hibaaránnyal készül-
nek: 8% annak a valószínűsége, hogy egy elkészülő tartály hibás lesz.', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_016.png', ARRAY['geometria-ter','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('13ce82a5-45e0-453c-b289-f73f4678dc3f', NOW(), 'k_matma_21maj_fl__016__c', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 16, 'c', 'Egy fémipari kisvállalkozás acéltartályokat gyárt. A tartály folyadék-
kal megtölthető része egy forgáskúpból és egy rá illeszkedő forgáshen-
gerből áll. A kúp és a henger alapkörének átmérője egyaránt 80 cm,
a kúp magassága 110 cm, a henger magassága 120 cm.

c) Számítsa ki annak a valószínűségét, hogy 10 elkészülő tartály között legfeljebb egy
hibás lesz!
Két fémipari kisvállalkozásnak négy-négy dolgozója van. Az alábbi diagramon az ő havi
fizetésüket és ezek (cégen belüli) átlagát ábrázoltuk.', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_016.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('02fc2ebb-7bfe-4126-b5bc-cda1c5998c70', NOW(), 'k_matma_21maj_fl__016__d', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 16, 'd', 'Egy fémipari kisvállalkozás acéltartályokat gyárt. A tartály folyadék-
kal megtölthető része egy forgáskúpból és egy rá illeszkedő forgáshen-
gerből áll. A kúp és a henger alapkörének átmérője egyaránt 80 cm,
a kúp magassága 110 cm, a henger magassága 120 cm.

d) Melyik cégnél nagyobb a havi fizetések szórása? Válaszát indokolja!

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_016.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9bf3f469-ee94-456b-bd57-0b35d2c72c10', NOW(), 'k_matma_21maj_fl__017__a', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 17, 'a', 'Egy darab A4-es méretű, tehát 210 × 297 mm-es irodai másolópapír tömege jó közelítés-
sel 5 gramm. A másolópapír sűrűsége 0,8 gramm/cm3.
a) Határozza meg a másolópapír vastagságát!
Válaszát milliméterben adja meg! (sűrűség = tömeg/térfogat)
Egy 2 : 3 oldalarányú, 10 × 15 cm-es (fekvő formátumú) fotóról (fekvő) A4-es méretű
nagyítást szeretnénk készíteni. A fotó és az A4-es papír oldalaránya nem egyezik meg,
ezért két megoldás közül választhatunk.
A FIT-eljárás alkalmazása esetén a teljes kép látható lesz a nagyításon, de az oldalarány-
különbség miatt a lap alsó és felső szélén két, egyenlő szélességű fehér csík keletkezik.
A FILL-eljárás alkalmazása esetén a nagyításon nem lesz fehér csík, csupán az eredeti
kép bal és jobb széléről marad le két egybevágó, téglalap alakú rész.

eredeti
FIT
FILL', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_017.png', ARRAY['szamok-muveletek','geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('550a8e3b-b0cd-4fcf-93d0-588e69b6e009', NOW(), 'k_matma_21maj_fl__017__b', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 17, 'b', 'Egy darab A4-es méretű, tehát 210 × 297 mm-es irodai másolópapír tömege jó közelítés-
sel 5 gramm. A másolópapír sűrűsége 0,8 gramm/cm3.

b) Határozza meg a FIT-eljárás alkalmazása esetén keletkező fehér csíkok szélességét!', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_017.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('36081187-50cf-402e-a0ff-42a96b6365de', NOW(), 'k_matma_21maj_fl__017__c', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 17, 'c', 'Egy darab A4-es méretű, tehát 210 × 297 mm-es irodai másolópapír tömege jó közelítés-
sel 5 gramm. A másolópapír sűrűsége 0,8 gramm/cm3.

c) A FILL-eljárás alkalmazása esetén az eredeti kép területének hány százaléka marad
le a nagyításról?
Egy fotókidolgozással foglalkozó vállalkozás 10 × 15 cm-es nagyítás megrendelése esetén
a következő árakkal dolgozik:
1-50 db kép megrendelése esetén 59 Ft/kép;
51-100 db kép megrendelése esetén 49 Ft/kép;
100-nál több kép megrendelése esetén 39 Ft/kép.
Balázs 51 darab 10 × 15-ös képet rendelt. Hajni kevesebb képet rendelt, végül mégis töb-
bet fizetett, mint Balázs.', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_017.png', ARRAY['geometria-sik','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('53d3948c-edd5-49ec-bf96-71662a1e19c4', NOW(), 'k_matma_21maj_fl__017__d', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 17, 'd', 'Egy darab A4-es méretű, tehát 210 × 297 mm-es irodai másolópapír tömege jó közelítés-
sel 5 gramm. A másolópapír sűrűsége 0,8 gramm/cm3.

d) Hány képet rendelhetett Hajni?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_017.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('857234e1-785c-4f56-ad50-d6863074b83e', NOW(), 'k_matma_21maj_fl__018__a', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 18, 'a', 'A k kör egyenlete a koordináta-rendszerben: x2 + y2 – 2x – 4y – 15 = 0.

4 pont
a)
b)
c)
Ö.:', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_018.png', ARRAY['koordinata-geometria','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f3445849-98f3-4b1d-964f-e692b9559e8b', NOW(), 'k_matma_21maj_fl__018__b', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 18, 'b', 'A k kör egyenlete a koordináta-rendszerben: x2 + y2 – 2x – 4y – 15 = 0.

b) Írja fel az A ponton átmenő, a kört érintő egyenes egyenletét!
Az alábbi körlap négy tartományát szeretnénk egy-egy színnel kiszínezni úgy, hogy
szomszédos tartományok ne legyenek azonos színűek. (Például az A-val jelölt tartomány
szomszédos B-vel és D-vel, de nem szomszédos C-vel.) A színezéshez a piros, sárga, kék
és zöld színek állnak rendelkezésünkre.', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_018.png', ARRAY['koordinata-geometria','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('16ed95ec-75c8-4693-a998-5aa64820cfe3', NOW(), 'k_matma_21maj_fl__018__c', 'k_matma_21maj_fl', 'k_matma_21maj_fl.pdf', 2021, 'kozep', 'majus', true, 'II', 18, 'c', 'A k kör egyenlete a koordináta-rendszerben: x2 + y2 – 2x – 4y – 15 = 0.

c) Hányféleképpen végezhetjük el a színezést, ha legalább három színt fel kell hasz-
nálnunk?', 17, '/images/k_matma_21maj_fl/crops/k_matma_21maj_fl_prob_018.png', ARRAY['kombinatorika']::text[], false, false, '', true);

-- k_matma_22maj_fl (25 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0abe4786-3741-4898-bd40-23e1ddcc146e', NOW(), 'k_matma_22maj_fl__001__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 1, NULL, 'Adott az A = {1; 2; 5; 6} halmaz.
Tudjuk, hogy A ∪ B = {1; 2; 3; 4; 5; 6}, valamint A ∩ B = {1; 2}.
Elemei felsorolásával adja meg a B halmazt!

B =', 2, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_001.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3830adde-4caa-4002-a860-72be63959c20', NOW(), 'k_matma_22maj_fl__002__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 2, NULL, 'Egy téglalap egyik oldala 10 cm, átlója 26 cm hosszú.
Számítsa ki a másik oldal hosszát!

A másik oldal hossza:
2 pont', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_002.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e6f98b0a-6756-4fd2-86fe-a8e801a331c8', NOW(), 'k_matma_22maj_fl__003__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 3, NULL, 'Melyik az a szám, amelyik 6-tal kisebb, mint az ellentettje?', 2, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_003.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('63983901-6ec8-4aa7-8041-a5a043e0c0c7', NOW(), 'k_matma_22maj_fl__004__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 4, NULL, 'Ha 35 dkg sajt ára 840 Ft, akkor mennyibe kerül ebből a sajtból 1 kg?

1 kg sajt ára:                           Ft', 2, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_004.png', ARRAY['szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ede1975a-11eb-40f0-bc72-6e012e75a554', NOW(), 'k_matma_22maj_fl__005__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 5, NULL, 'Ábrázolja a [−1; 3] zárt intervallumon értelmezett
függvényt!
α
2
1
x
x −', 3, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_005.png', ARRAY['fuggvenyek','koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a59f1c59-e6b1-44b1-bc68-5f2e957fe17c', NOW(), 'k_matma_22maj_fl__006__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 6, NULL, 'Adjon meg öt pozitív egész számot, melyek átlaga 4 és (egyetlen) módusza 3.

Öt megfelelő szám:', 2, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_006.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('26f2b766-f757-4012-af9b-07daf7bad920', NOW(), 'k_matma_22maj_fl__007__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 7, NULL, 'Az alábbi, a valós számok halmazán értelmezett függvények (f, g, h, i) közül válassza ki
azokat, amelyeknek az 1 zérushelye!
f:
α
2
1
x
x +
2
α
(
2)
1
x
x−
g:
−

h:
α
1
1
x
x −
+

2
α
(
1)
x
x −
i:

2 pont', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_007.png', ARRAY['fuggvenyek','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8235d3af-0c36-4a12-9c39-6a0f063a5f9e', NOW(), 'k_matma_22maj_fl__008__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 8, NULL, 'Számítsa ki a szabályos tízszög egy belső szögének nagyságát!

2 pont', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_008.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('638ac6f4-6cc2-4159-bead-c54b265f9276', NOW(), 'k_matma_22maj_fl__009__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 9, NULL, 'Oldja meg a 3 ⋅ 4x = 96 egyenletet a valós számok halmazán! Megoldását részletezze!

x =', 2, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_009.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b33ee946-5196-4d90-828a-33a64cd7e3ce', NOW(), 'k_matma_22maj_fl__010__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 10, NULL, 'Az alábbi táblázat egy statisztika dolgozat eredményeit mutatja egy 18 fős csoportban.
Készítsen kördiagramot ezekből az adatokból!
eredmény elégtelen elégséges
közepes
jó
jeles
fő
1
3
4
6
4', 3, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_010.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('36bea7a1-196d-4e33-8bd3-22dd34e60877', NOW(), 'k_matma_22maj_fl__011__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 11, NULL, 'Adja meg az összes olyan 6-tal osztható négyjegyű természetes számot, melyben csak
1-es és 2-es számjegy szerepel!

A számok:', 3, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_011.png', ARRAY['szamelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('03f5fbaf-1322-416a-a995-353bbead757f', NOW(), 'k_matma_22maj_fl__012__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy hatfős társaságban Andrásnak 5, Borinak 5, Cilinek 3, Dezsőnek 3, Elemérnek 2
ismerőse van. Hány ismerőse lehet a többiek között Flórának, a társaság hatodik tagjának?
Minden lehetőséget szemléltessen a megfelelő ismeretségi gráffal!
(Az ismeretség kölcsönös, a gráfban a pontok mellett a nevek kezdőbetűje szerepel.
A gráfban két pontot akkor kössön össze él, ha a megfelelő személyek ismerik egymást.)

Flórának ennyi ismerőse lehet:
A', 2, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_012.png', ARRAY['grafelmelet','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3cd0dff4-35dd-49ec-bc51-22728eb54e1a', NOW(), 'k_matma_22maj_fl__013__b', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 13, 'b', 'Oldja meg az alábbi egyenleteket a valós számok halmazán!

a) 3
1
1
x
x
+
−
13
+
=
2
3

1
7
x
x
b)
−=
−

a)
b)
Ö.:', 11, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('773a67f0-4b93-4253-ad43-b7eb7816e85a', NOW(), 'k_matma_22maj_fl__014__a', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 14, 'a', '5 pont
a)
b)
Ö.:', 12, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_014.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('746d60f8-4254-485a-9381-90296d0b7d5f', NOW(), 'k_matma_22maj_fl__014__b', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 14, 'b', 'b) Egy számtani sorozat első három tagjának összege 18. A harmadik és a negyedik
tag összege 28-cal nagyobb az első és a második tag összegénél. Határozza meg a
sorozat első tagját és különbségét, valamint a sorozat első húsz tagjának összegét!', 12, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_014.png', ARRAY['sorozatok','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ef05830d-bd6a-4d3d-8366-48dfd83c63cf', NOW(), 'k_matma_22maj_fl__015__c', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy dobozkészlet három, vékony fémlemezből készült forgáshenger alakú dobozból áll.
A legnagyobb doboz alaplapjának sugara 13 cm, magassága 18 cm. (A lemez vastagsá-
gától eltekintünk.)

a) Számítsa ki, hány liter a legnagyobb fémdoboz térfogata!
Válaszát egy tizedesjegyre kerekítve adja meg!
A doboz elkészítéséhez (az illesztések, a dobozfedő pereme, illetve az anyagveszteség
miatt) 18%-kal több lemezre van szükség, mint amennyi egy ugyanekkora forgáshenger
felszíne.
b) Hány négyzetméter lemez szükséges ahhoz, hogy a legnagyobb dobozból el lehes-
sen készíteni 1000 darabot?
A dobozok ára egyenesen arányos az elkészítésükhöz szükséges lemez területével.
A legkisebb doboz 800 cm2, a középső 2000 cm2 lemezből készül el. A két doboz ára
összesen 2100 Ft.
c) Mennyibe kerül a legkisebb, és mennyibe kerül a középső doboz?

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 13, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_015.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c13093af-4789-4d88-b257-a68eb74c6baa', NOW(), 'k_matma_22maj_fl__016__a', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 16, 'a', 'Adottak a koordináta-rendszerben az A(0; 4), B(1; 0), C(6; 2) és D(5; 6) pontok.
a) Írja fel az A és B pontokra illeszkedő egyenes egyenletét!', 17, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_016.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a516269b-cca9-40c4-bee0-bcdcaf021cfe', NOW(), 'k_matma_22maj_fl__016__b', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 16, 'b', 'Adottak a koordináta-rendszerben az A(0; 4), B(1; 0), C(6; 2) és D(5; 6) pontok.

b) Mutassa meg, hogy az ABCD négyszög paralelogramma!', 17, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_016.png', ARRAY['koordinata-geometria','geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e8f259c2-c763-4a20-977a-980fb0fa9565', NOW(), 'k_matma_22maj_fl__016__c', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 16, 'c', 'Adottak a koordináta-rendszerben az A(0; 4), B(1; 0), C(6; 2) és D(5; 6) pontok.

c) Számítsa ki az ABCD paralelogramma B csúcsánál lévő belső szög nagyságát!
A sokszögeket a csúcsaikhoz írt nagybetűkkel jelöljük (pl. ABCD, EFGH). A betűzés
akkor „szabályos”, ha valamelyik csúcsból kiindulva és az egyik körüljárási irányban ha-
ladva a betűk ábécésorrendben követik egymást.', 17, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_016.png', ARRAY['koordinata-geometria','trigonometria','vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('899ef83d-08a1-4b72-a0d0-8b7c92071338', NOW(), 'k_matma_22maj_fl__016__d', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 16, 'd', 'Adottak a koordináta-rendszerben az A(0; 4), B(1; 0), C(6; 2) és D(5; 6) pontok.

d) Egy négyszög négy csúcsához az E, F, G és H betűket írjuk véletlenszerű sorrend-
ben. Mennyi a valószínűsége annak, hogy a betűzés szabályos lesz?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_016.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('98e1c83e-3488-461d-87bc-68d90346d78b', NOW(), 'k_matma_22maj_fl__017__', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 17, NULL, 'Az ábrán látható, 16 elemű logikai készletben minden elemnek négy tulajdonsága van:
- lehet kicsi vagy nagy;
- lehet fehér vagy szürke;
- lehet lyukas vagy nem lyukas;
- lehet négyzet vagy háromszög.

A

A készlet egyik elemét egy A betűvel meg-
jelöltük.
a) Helyezze el a halmazábrába az A-val
jelölt elemet (írjon a megfelelő részbe
egy A betűt)!
b) Karikázza be a fenti készletben az
összes olyan elemet, amelyik a satíro-
zott részhalmazba tartozik!

A 16 elemű készletből véletlenszerűen kihúzunk két elemet (visszatevés nélkül).
c) Mennyi a valószínűsége annak, hogy mindkét kihúzott elem kicsi háromszög?
Az ABCD négyzet oldala 3 cm hosszú. A négyzet BC oldalára kifelé megrajzoltuk a BCE
szabályos háromszöget az ábrán látható módon.

d) Hány négyzetcentiméter az ACE háromszög területe?
e) Igazolja, hogy az ACE háromszög körülírt körének középpontja a B pont!
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_017.png', ARRAY['halmazok','valoszinuseg','geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4a2a238f-489b-4e87-8bf0-e834504a3125', NOW(), 'k_matma_22maj_fl__018__a', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 18, 'a', 'Andrea és Balázs kockarulettet játszanak. Egy játék abból áll, hogy két szabályos dobó-
kockával egyszerre dobnak. A dobás előtt a játékszelvényen megadott öt eseményre lehet
fogadni úgy, hogy a játékosok minden játék előtt beírják a tétjeiket a játékszelvény meg-
felelő oszlopába. A tétként feltett pontokat levonják a játékos pontszámából. A szelvé-
nyen látható az egyes eseményekre a nyereményszorzó is, ami megmutatja, hogy a tétként
feltett pontok hányszorosát kapják meg nyereményként, amennyiben az esemény bekö-
vetkezik.
A játékosok 100 ponttal indulnak. A lenti ábrán Andrea játékszelvényét látjuk. Az 1. já-
tékban 10-10-10 pontot tett fel három eseményre, és ezek után az 1 és 4 számokat dobták
a kockákkal. Andrea az első téttel nem nyert, de a másik kettővel 3 ⋅ 10, illetve 2 ⋅ 10 pontot
nyert. Összesen 30 pontot tett fel, és 50 pontot nyert, tehát az 1. játék után 120 pontja lett,
ennyivel kezdi a 2. játékot.

a) A 2. játékban Andrea ugyanerre a három eseményre fogadott 20-20-20 ponttal, és
mindhárom tétjével nyert. Melyik számokat dobták a 2. játékban, és mennyi lett
Andrea pontszáma a 2. játék után?', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_018.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8d306002-3d50-4ae5-8e37-3a05e739ed51', NOW(), 'k_matma_22maj_fl__018__b', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 18, 'b', 'Andrea és Balázs kockarulettet játszanak. Egy játék abból áll, hogy két szabályos dobó-
kockával egyszerre dobnak. A dobás előtt a játékszelvényen megadott öt eseményre lehet
fogadni úgy, hogy a játékosok minden játék előtt beírják a tétjeiket a játékszelvény meg-
felelő oszlopába. A tétként feltett pontokat levonják a játékos pontszámából. A szelvé-
nyen látható az egyes eseményekre a nyereményszorzó is, ami megmutatja, hogy a tétként
feltett pontok hányszorosát kapják meg nyereményként, amennyiben az esemény bekö-
vetkezik.
A játékosok 100 ponttal indulnak. A lenti ábrán Andrea játékszelvényét látjuk. Az 1. já-
tékban 10-10-10 pontot tett fel három eseményre, és ezek után az 1 és 4 számokat dobták
a kockákkal. Andrea az első téttel nem nyert, de a másik kettővel 3 ⋅ 10, illetve 2 ⋅ 10 pontot
nyert. Összesen 30 pontot tett fel, és 50 pontot nyert, tehát az 1. játék után 120 pontja lett,
ennyivel kezdi a 2. játékot.

b) A 3. játékban Andrea az első három eseményre fogadott 10-10-10 ponttal, de egyik-
kel sem nyert. Melyik számokat dobhatták a 3. játékban?', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_018.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('06fb5e45-55b2-4602-9f67-bb089b587602', NOW(), 'k_matma_22maj_fl__018__c', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 18, 'c', 'Andrea és Balázs kockarulettet játszanak. Egy játék abból áll, hogy két szabályos dobó-
kockával egyszerre dobnak. A dobás előtt a játékszelvényen megadott öt eseményre lehet
fogadni úgy, hogy a játékosok minden játék előtt beírják a tétjeiket a játékszelvény meg-
felelő oszlopába. A tétként feltett pontokat levonják a játékos pontszámából. A szelvé-
nyen látható az egyes eseményekre a nyereményszorzó is, ami megmutatja, hogy a tétként
feltett pontok hányszorosát kapják meg nyereményként, amennyiben az esemény bekö-
vetkezik.
A játékosok 100 ponttal indulnak. A lenti ábrán Andrea játékszelvényét látjuk. Az 1. já-
tékban 10-10-10 pontot tett fel három eseményre, és ezek után az 1 és 4 számokat dobták
a kockákkal. Andrea az első téttel nem nyert, de a másik kettővel 3 ⋅ 10, illetve 2 ⋅ 10 pontot
nyert. Összesen 30 pontot tett fel, és 50 pontot nyert, tehát az 1. játék után 120 pontja lett,
ennyivel kezdi a 2. játékot.

c) Balázs az egyik játékban az A, a D és az E eseményre fogadott összesen 70 ponttal,
és mindhárom tétjével nyert. Az E eseményre éppen kétszer annyi tétet tett, mint az
A-ra. Hány ponttal fogadott Balázs az A eseményre, ha összesen 200 pont lett a nye-
reménye?', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_018.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1a848c95-f96e-4cd7-9b10-e6ececdbd438', NOW(), 'k_matma_22maj_fl__018__d', 'k_matma_22maj_fl', 'k_matma_22maj_fl.pdf', 2022, 'kozep', 'majus', true, 'II', 18, 'd', 'Andrea és Balázs kockarulettet játszanak. Egy játék abból áll, hogy két szabályos dobó-
kockával egyszerre dobnak. A dobás előtt a játékszelvényen megadott öt eseményre lehet
fogadni úgy, hogy a játékosok minden játék előtt beírják a tétjeiket a játékszelvény meg-
felelő oszlopába. A tétként feltett pontokat levonják a játékos pontszámából. A szelvé-
nyen látható az egyes eseményekre a nyereményszorzó is, ami megmutatja, hogy a tétként
feltett pontok hányszorosát kapják meg nyereményként, amennyiben az esemény bekö-
vetkezik.
A játékosok 100 ponttal indulnak. A lenti ábrán Andrea játékszelvényét látjuk. Az 1. já-
tékban 10-10-10 pontot tett fel három eseményre, és ezek után az 1 és 4 számokat dobták
a kockákkal. Andrea az első téttel nem nyert, de a másik kettővel 3 ⋅ 10, illetve 2 ⋅ 10 pontot
nyert. Összesen 30 pontot tett fel, és 50 pontot nyert, tehát az 1. játék után 120 pontja lett,
ennyivel kezdi a 2. játékot.
TÉTEK
nyeremény-
ESEMÉNY
szorzó
1. játék
2. játék
3. játék
A: két páros számot dobunk
4
10
B: az egyik szám páros, a másik páratlan
3
0
C: a számok összege kisebb, mint 6
3
10
D: a számok szorzata páros
2
10
E: dobunk 6-ost
3
0
30
összes tét
50
nyeremény
pontszám
120
a játék után
1, 4
dobott számok

d) Egy másik napon már három, különböző színű szabályos dobókockával dobtak egy-
szerre. Az új játékhoz új eseményeket találtak ki, az egyik esemény ez volt:
Dobunk 5-öst.
Számítsa ki ennek az eseménynek a valószínűségét!', NULL, '/images/k_matma_22maj_fl/crops/k_matma_22maj_fl_prob_018.png', ARRAY['valoszinuseg']::text[], false, false, '', true);

-- k_matma_23maj_fl (30 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('42653f41-1e3b-4ae3-b4e5-527d01225acc', NOW(), 'k_matma_23maj_fl__001__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 1, NULL, 'Adott a következő két halmaz: A = {a; b; e; g} és B = {a; b; c; d; f}.
Adja meg a B \ A halmazt elemei felsorolásával!

2 pont
B \ A =', NULL, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_001.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('87248642-6bd2-4474-b952-84de205dd95e', NOW(), 'k_matma_23maj_fl__002__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 2, NULL, 'Bori, Kristóf és Marci játszanak. A játék elején 10 különböző szerepkártyából húznak
egyet-egyet, visszatevés nélkül. Hányféle szereposztásban kezdhetik a játékot?', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_002.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f8e420c9-6758-4dd3-8a19-05da27d3fc02', NOW(), 'k_matma_23maj_fl__003__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 3, NULL, 'Zita 275 000 Ft-os fizetését 308 000 Ft-ra emelték. Hány százalékkal emelték Zita fize-
tését?', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_003.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('50d75224-b6f8-411b-b3a6-ea31afcd7244', NOW(), 'k_matma_23maj_fl__004__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 4, NULL, 'AC
Az ABC háromszögben
b,
c. Az AB oldal felezőpontja F, az AC oldal fele-
AB
=
=
zőpontja G. Írja fel b és c vektorok segítségével az FG vektort! Válaszát indokolja!

FG=', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_004.png', ARRAY['vektorok','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('787c27cc-07c2-410b-a31e-4945d49936dd', NOW(), 'k_matma_23maj_fl__005__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 5, NULL, 'Adjon meg öt pozitív számot, melyek mediánja 3, terjedelme 7.', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_005.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7de28156-b3bd-4b21-a1af-82541932daf4', NOW(), 'k_matma_23maj_fl__006__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 6, NULL, 'Határozza meg a kettes számrendszerben felírt 101011 szám tízes számrendszerbeli
alakját!', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_006.png', ARRAY['szamrendszerek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('19c72ffc-8344-43fd-af53-168f700c601d', NOW(), 'k_matma_23maj_fl__007__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 7, NULL, '5
log2
x
log (2 )x  értékét! Válaszát indokolja!
Tudjuk, hogy
. Adja meg
=
2', 1, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_007.png', ARRAY['exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9e763cac-2ac6-44ef-ba71-35b85e8af53f', NOW(), 'k_matma_23maj_fl__008__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 8, NULL, 'Sorolja fel azokat az x egész számokat, amelyekre – 6 ≤ x ≤ 2 és – 4 < x < 10 egyszerre
teljesül!', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_008.png', ARRAY['halmazok','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ed8d3b7d-c6ac-4c51-b0a9-d276f163768d', NOW(), 'k_matma_23maj_fl__009__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 9, NULL, 'Az iskolai teremfoci-bajnokságra 16 csapat nevezett. Hányféleképpen lehet közülük ki-
választani azt a kettőt, amelyek a nyitómérkőzést játsszák?', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_009.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('791955a3-6b27-4102-8b84-aca426866f77', NOW(), 'k_matma_23maj_fl__010__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 10, NULL, 'Az ABC derékszögű háromszög oldalai a = 7, b = 24, c = 25 egység hosszúak.
Számítsa ki az átfogóhoz tartozó magasság hosszát! Válaszát indokolja!', 3, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_010.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ddc95e54-0440-47d8-9865-66d59230625b', NOW(), 'k_matma_23maj_fl__011__a', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 11, 'a', 'Adott az 5x – y = 7 egyenletű e egyenes.
a) Adja meg az e egyenes egy normálvektorát!', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_011.png', ARRAY['koordinata-geometria','vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8f152e6b-5982-4eb3-8955-a4a072f9d526', NOW(), 'k_matma_23maj_fl__011__b', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 11, 'b', 'Adott az 5x – y = 7 egyenletű e egyenes.

b) Írja fel annak az egyenesnek az egyenletét, amelyik átmegy a P(3; 2) ponton,
és párhuzamos az e egyenessel!

a)

b)', 2, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_011.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a54aaa24-e4f3-4b00-8815-6ba8b62f9a3a', NOW(), 'k_matma_23maj_fl__012__', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'I', 12, NULL, 'Adott a nemnegatív valós számok halmazán értelmezett f, illetve a valós számok halma-
zán értelmezett g és h függvény:
2 – 3
f (x) =
g (x) = (x – 2)
h(x) = 2 sin x
2
x
−
Az alábbi állítások mellé írja oda azoknak a függvényeknek a nevét, amelyekre az adott
állítás igaz!

Minimumának értéke (– 2):
2 pont

Legalább két zérushelye van:
2 pont
A', NULL, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_012.png', ARRAY['fuggvenyek','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7e9ba2d0-4e1d-43ad-95d3-eefca86761a3', NOW(), 'k_matma_23maj_fl__013__a', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 13, 'a', 'Az 1, 2, 3, 4, 5 és 6 számokat leírtuk egy lapra. Két különböző számot pontosan akkor
kötünk össze egy vonallal (éllel), ha az egyik szám osztója a másiknak (de egyik számot
sem kötjük össze önmagával). Így egy hatpontú gráfot kapunk.

a) Rajzolja fel a kapott gráfot!', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_013.png', ARRAY['grafelmelet','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('93af6c96-3d57-4f98-a545-07ada68699d3', NOW(), 'k_matma_23maj_fl__013__b', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 13, 'b', 'Az 1, 2, 3, 4, 5 és 6 számokat leírtuk egy lapra. Két különböző számot pontosan akkor
kötünk össze egy vonallal (éllel), ha az egyik szám osztója a másiknak (de egyik számot
sem kötjük össze önmagával). Így egy hatpontú gráfot kapunk.

b) Adja meg az alábbi két állítás logikai értékét (igaz vagy hamis)! Válaszait indo-
kolja!
I. Van olyan pozitív egész szám, amelynek 4 darab pozitív osztója van.
II. Ha az n egész szám nem osztója az m egész számnak, akkor n és m relatív
prímek.
Tekintsük az alábbi két eseményt.
A: Egy szabályos dobókockával egyszer dobva a dobott szám osztója a 24-nek.
B: Egy szabályos dobókockával kétszer dobva egyik dobás sem 6-os.', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_013.png', ARRAY['logika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3e5f8798-9a2f-4a21-841b-2d487d9e8f04', NOW(), 'k_matma_23maj_fl__013__c', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 13, 'c', 'Az 1, 2, 3, 4, 5 és 6 számokat leírtuk egy lapra. Két különböző számot pontosan akkor
kötünk össze egy vonallal (éllel), ha az egyik szám osztója a másiknak (de egyik számot
sem kötjük össze önmagával). Így egy hatpontú gráfot kapunk.

c)  Melyik eseménynek nagyobb a valószínűsége?

a)
b)
c)
Ö.:', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_013.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a1511971-bdfe-4c25-94a6-c105b442bebe', NOW(), 'k_matma_23maj_fl__014__a', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 14, 'a', 'Fizikaórán egy lejtőn lecsúszó test gyorsulását vizsgálták pármunkában a tanulók. A hat
mérőpár mindegyike négy mérést végzett.
Az Emma-Norbi mérőpár négy mérésének eredménye:
1. mérés
2. mérés
3. mérés
4. mérés
gyorsulás (m/s2)
1,9
2,0
1,8
2,3
a) Számítsa ki Emma és Norbi négy mérésének a szórását!
A másik öt mérőpár 20 mérésének átlaga pontosan 1,9 m/s2 lett.', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_014.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('94166992-e110-472d-b3e6-87fa52340545', NOW(), 'k_matma_23maj_fl__014__b', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 14, 'b', 'Fizikaórán egy lejtőn lecsúszó test gyorsulását vizsgálták pármunkában a tanulók. A hat
mérőpár mindegyike négy mérést végzett.
Az Emma-Norbi mérőpár négy mérésének eredménye:
1. mérés
2. mérés
3. mérés
4. mérés
gyorsulás (m/s2)
1,9
2,0
1,8
2,3

b) Mennyi a hat mérőpár 24 mérésének átlaga? Válaszát két tizedesjegyre kerekítve
adja meg!
Egy másik mérés alkalmával a tanulók a talaj szintjéről függőlegesen fellőtt, majd a talajra
visszahulló golyó mozgását vizsgálták. Méréseik szerint a golyó talajtól mért h távolsága
a következő összefüggésben van a fellövés pillanatától eltelt t idővel:
2. (Az időt másodpercben, a távolságot méterben mérjük.)
h(t) = 6t – 5t', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_014.png', ARRAY['statisztika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a8f9a307-5d73-4b1f-9c43-052e9b51dcf9', NOW(), 'k_matma_23maj_fl__014__c', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 14, 'c', 'Fizikaórán egy lejtőn lecsúszó test gyorsulását vizsgálták pármunkában a tanulók. A hat
mérőpár mindegyike négy mérést végzett.
Az Emma-Norbi mérőpár négy mérésének eredménye:
1. mérés
2. mérés
3. mérés
4. mérés
gyorsulás (m/s2)
1,9
2,0
1,8
2,3

c)  A képlet alapján hány méterre van a talajtól a golyó a fellövéstől számított 0,5 má-
sodperc elteltével?', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_014.png', ARRAY['fuggvenyek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('25358f45-0382-4a5e-a9d1-241fc75b4354', NOW(), 'k_matma_23maj_fl__014__d', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 14, 'd', 'Fizikaórán egy lejtőn lecsúszó test gyorsulását vizsgálták pármunkában a tanulók. A hat
mérőpár mindegyike négy mérést végzett.
Az Emma-Norbi mérőpár négy mérésének eredménye:
1. mérés
2. mérés
3. mérés
4. mérés
gyorsulás (m/s2)
1,9
2,0
1,8
2,3

d)  A fellövéstől számítva hány másodperc elteltével lesz a golyó a talaj fölött 1 méter
magasságban?

a)
b)
c)
d)
Ö.:', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_014.png', ARRAY['egyenletek','fuggvenyek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a4e1954b-da14-4ff1-b4c3-7ab54e6bc7bd', NOW(), 'k_matma_23maj_fl__015__a', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy 4 cm oldalú négyzetbe két olyan szakaszt húzunk, amelyek az egyik
csúcsnál lévő derékszöget harmadolják.
a)  Mekkora az így keletkező, az ábrán szürkére színezett háromszög
területe?
Jelöljük ki egy ugyanekkora négyzetnek egy belső pontját, és a pontot kös-
sük össze a négyzet csúcsaival az ábrán látható módon. A keletkező három-
szögek belsejét kiszínezzük kék, zöld vagy sárga színnel. Mindhárom színt
felhasználjuk, és minden háromszöget csak egy színnel színezünk. Az ol-
dalukkal egymáshoz csatlakozó háromszögek nem lehetnek azonos szí-
nűek.', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_015.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('66060be0-f3bd-4d85-a450-f7a9982b4423', NOW(), 'k_matma_23maj_fl__015__b', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy 4 cm oldalú négyzetbe két olyan szakaszt húzunk, amelyek az egyik
csúcsnál lévő derékszöget harmadolják.

b)  Hányféleképpen színezhető ki a négyzet a feltételeknek megfelelően?
Tekintsük a 4 cm oldalú négyzetbe rajzolt háromszögek közül a két-két
szemközti háromszög területének összegét.', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_015.png', ARRAY['kombinatorika','grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('66c7d457-03d7-4745-a0f1-cf611700ada1', NOW(), 'k_matma_23maj_fl__015__c', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy 4 cm oldalú négyzetbe két olyan szakaszt húzunk, amelyek az egyik
csúcsnál lévő derékszöget harmadolják.

c)  Igazolja, hogy ez a két területösszeg egyenlő, azaz az ábrán látható
szürke terület ugyanakkora, mint a fehér terület!

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_015.png', ARRAY['geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8a617d0d-ec54-445b-a539-9dff98094592', NOW(), 'k_matma_23maj_fl__016__c', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 16, 'c', 'Oldja meg az alábbi két egyenletet a valós számok halmazán!

5
3
2
x
x
+
=
−
⋅
a)

2
x
x
2
=
+
b)
2
1
1
x
x
−
+
Egy számtani sorozat első tagja 18. A sorozat első hat tagjának összege egyenlő a sorozat
első hét tagjának összegével.
c)  Mutassa meg, hogy a sorozat első tizenhárom tagjának az összege 0, és számítsa ki
a sorozat tizenharmadik tagját!

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_016.png', ARRAY['sorozatok','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9d92169d-8857-402f-b211-d33f4a0815ec', NOW(), 'k_matma_23maj_fl__017__a', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 17, 'a', 'A 2018-as esztendőben az A kisüzem 500 millió forint, a B kisüzem 400 millió forint
értékű terméket állított elő. A hosszú távú fejlesztési tervek szerint az A üzem évi 5%-
kal, a B üzem évi 6%-kal növeli a termelési értékét.
a) Számítsa ki, hogy a tervek szerint a következő 20 év alatt (2019-től 2038-ig) ösz-
szesen hány millió forint értékű terméket állítanak elő az A üzemben!
Egy gazdasággal foglalkozó portálon nyilvánosságra hozták a fenti terveket. A cikkhez
kapcsolódó fórumon vita bontakozott ki. Az egyik hozzászóló szerint a következő idő-
szakban évről évre egyre kisebb lesz a két üzem éves termelési értéke közötti különbség.', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_017.png', ARRAY['sorozatok','exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6a0f0e69-cbd2-43dd-bd3a-80d9ca51af60', NOW(), 'k_matma_23maj_fl__017__b', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 17, 'b', 'A 2018-as esztendőben az A kisüzem 500 millió forint, a B kisüzem 400 millió forint
értékű terméket állított elő. A hosszú távú fejlesztési tervek szerint az A üzem évi 5%-
kal, a B üzem évi 6%-kal növeli a termelési értékét.

b) Számítsa ki a megadott táblázat hiányzó adatait, és igazolja, hogy ez a kijelentés
nem igaz!
2018
2019
2020
2021
A üzem termelésének értéke (millió Ft)
500
B üzem termelésének értéke (millió Ft)
400
A vitafórum egy másik résztvevője szerint éppen ellenkezőleg: a két üzem éves termelési
értéke közötti különbség az évek múlásával egyre nagyobb lesz, és a B üzem termelési
értéke soha nem fogja meghaladni az A üzem termelési értékét. Egy harmadik hozzászóló
szerint ez sem igaz.', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_017.png', ARRAY['exponencialis','sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('90b18097-150c-4e59-bbce-1c574adfd231', NOW(), 'k_matma_23maj_fl__017__c', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 17, 'c', 'A 2018-as esztendőben az A kisüzem 500 millió forint, a B kisüzem 400 millió forint
értékű terméket állított elő. A hosszú távú fejlesztési tervek szerint az A üzem évi 5%-
kal, a B üzem évi 6%-kal növeli a termelési értékét.

c) Számítsa ki, hogy melyik évben éri utol a B üzem termelésének értéke az A üzem
termelésének értékét! (Feltételezzük, hogy a termelések értéke valóban a tervek sze-
rint alakul.)

a)
b)
c)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_017.png', ARRAY['exponencialis','egyenletek','sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('90d92788-5519-4ead-b9e3-29930bc31628', NOW(), 'k_matma_23maj_fl__018__a', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 18, 'a', 'A Gömbvarázs desszert dobozának alakja szabályos hatszög alapú hasáb, melynek min-
den alapéle 5 cm, magassága pedig 3 cm hosszú. A desszert hat csokigömböt tartalmaz.
Mindegyik csokigömb átmérője 2,8 cm.
a) Hány százaléka a hat csokigömb térfogata a doboz térfogatának?
A Gömbvarázs desszertbe kerülő csokigömböket aranyszínű vagy piros papírba csoma-
golják. Az adagológép véletlenszerűen, egyesével ejt 1
3  valószínűséggel piros, 2
3 való-
színűséggel pedig aranyszínű gömböt a dobozokba, mindegyikbe összesen hatot.', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_018.png', ARRAY['geometria-ter']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8ac7db38-f9cf-417f-814b-344012903dd4', NOW(), 'k_matma_23maj_fl__018__b', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 18, 'b', 'A Gömbvarázs desszert dobozának alakja szabályos hatszög alapú hasáb, melynek min-
den alapéle 5 cm, magassága pedig 3 cm hosszú. A desszert hat csokigömböt tartalmaz.
Mindegyik csokigömb átmérője 2,8 cm.

b) Határozza meg annak a valószínűségét, hogy az egy dobozba kerülő hat gömb közül
legalább öt aranyszínű!
Az ABCDEF szabályos hatszög minden oldala 5 cm hosszú.
A hatszöget megforgatjuk az AB oldal felezőmerőlegese körül.', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_018.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8c8c2db5-c765-4a78-b11f-cdca4d5ce215', NOW(), 'k_matma_23maj_fl__018__c', 'k_matma_23maj_fl', 'k_matma_23maj_fl.pdf', 2023, 'kozep', 'majus', true, 'II', 18, 'c', 'A Gömbvarázs desszert dobozának alakja szabályos hatszög alapú hasáb, melynek min-
den alapéle 5 cm, magassága pedig 3 cm hosszú. A desszert hat csokigömböt tartalmaz.
Mindegyik csokigömb átmérője 2,8 cm.

c) Számítsa ki az így keletkező forgástest felszínét!

a)
b)
c)
Ö.:', 17, '/images/k_matma_23maj_fl/crops/k_matma_23maj_fl_prob_018.png', ARRAY['geometria-ter','geometria-sik']::text[], false, false, '', true);

-- k_matma_24maj_fl (28 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d92ba203-6000-45bf-97ca-c47f513a9f7d', NOW(), 'k_matma_24maj_fl__001__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 1, NULL, 'Sorolja fel a 28 összes pozitív osztóját!', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_001.png', ARRAY['szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('12a04a43-6a55-4e64-84b2-547edc2b4bf7', NOW(), 'k_matma_24maj_fl__002__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 2, NULL, 'Adja meg egy szabályos nyolcszög belső szögeinek összegét!', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_002.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('f4247624-bd22-4fa9-87d3-8591f3767218', NOW(), 'k_matma_24maj_fl__003__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 3, NULL, 'Egy frissen alapított informatikai cég adatállománya nagyjából 10 naponta megduplá-
zódik. Állapítsa meg, hogy hány nap alatt nő nyolcszorosára a cég adatállománya!', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_003.png', ARRAY['exponencialis','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7d605deb-e7e7-40ed-b888-468be32863af', NOW(), 'k_matma_24maj_fl__004__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 4, NULL, 'Az alábbi diagram 25 tanuló lábméretének eloszlását mutatja. Határozza meg a diagram
alapján az adatok átlagát, móduszát és mediánját!

Átlag:

Módusz:

Medián:', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_004.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('bb3bebfb-44d6-491a-8efa-8b718d7f7fd3', NOW(), 'k_matma_24maj_fl__005__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 5, NULL, '10
fő
8
6
4
2
0
41
42
43
44
lábméret

Egy 16 fős tanulócsoportban egyszerre 2 tanuló old meg közösen egy feladatot a táblánál.
Hányféleképpen választható ki a csoportból az a 2 tanuló, akik a táblánál dolgoznak?', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_005.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('71c1e416-dc26-48c7-a725-f8e738198d61', NOW(), 'k_matma_24maj_fl__006__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 6, NULL, 'Az ábrán látható ABC háromszög BC oldalának felezőpontja F. Az A csúcsból kiinduló
oldalvektorokat jelölje p és q az ábrának megfelelően.
υυυρ
υυυρ
υυυρ
Fejezze ki p és q segítségével a CB
, a CF
és a BA
vektort!

υυυρ
1 pont
CB =

υυυρ
CF =

υυυρ
BA =', 1, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_006.png', ARRAY['vektorok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('8d5cfefa-958e-4bd8-8939-a69af3f92db2', NOW(), 'k_matma_24maj_fl__007__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 7, NULL, 'Egy porcerősítő tablettákat tartalmazó doboz címkéjén az olvasható, hogy egy tabletta
tömege 1,57 gramm. A doboz tömege üresen 24,7 gramm. A tablettákkal teli doboz tö-
mege 166 gramm.
Hány tablettát tartalmaz a teli doboz? Számítását részletezze!', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_007.png', ARRAY['szamok-muveletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('08137fd2-25bb-4ed3-900e-c7693960e8e3', NOW(), 'k_matma_24maj_fl__008__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 8, NULL, 'Tekintsük a következő (pozitív egész számokra vonatkozó) állítást:
„Ha két szám szorzata páratlan, akkor a két szám összege páros.”
Fogalmazza meg az állítás megfordítását, és adja meg a megfordított állítás logikai értékét
(igaz vagy hamis)!

Az állítás megfordítása:

A megfordított állítás logikai értéke:', 1, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_008.png', ARRAY['logika','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ad510e68-9655-4397-a237-cb56aa7b8d9d', NOW(), 'k_matma_24maj_fl__009__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 9, NULL, 'Egy bank évente 6% kamatos kamatot fizet a lekötött pénzösszegekre. Hány százalékkal
nő a lekötött pénzösszeg 3 év alatt?', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_009.png', ARRAY['exponencialis','penzugyi-matematika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1f7d502d-e526-4a8f-8c2e-1c4c8e870e7b', NOW(), 'k_matma_24maj_fl__010__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 10, NULL, '2
Egy egyenes egyenlete
=
−
. Az egyenesre illeszkedő P pont második koordiná-
2
y
x
3
tája 2. Adja meg a P pont első koordinátáját!', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_010.png', ARRAY['koordinata-geometria','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b92d566f-f905-4cb1-b817-0a0f61358a32', NOW(), 'k_matma_24maj_fl__011__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 11, NULL, '−
1
x
{{formula:k_matma_24maj_fl_p07_000.png}}
értékét, ha x = 3.', 2, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_011.png', ARRAY['exponencialis','fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('51c02116-7e7c-4c1d-8ef3-bd32effaa710', NOW(), 'k_matma_24maj_fl__012__', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'I', 12, NULL, 'A kétjegyű pozitív egész számok közül véletlenszerűen kiválasztunk egyet. Határozza
meg annak a valószínűségét, hogy a szám osztható 11-gyel! Megoldását részletezze!
A', 3, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_012.png', ARRAY['valoszinuseg','szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e3faa704-99a5-4b96-8014-7e37b24048d4', NOW(), 'k_matma_24maj_fl__013__a', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 13, 'a', 'a)  A piacon az egyik zöldségesnél egy vásárló 4 kg krumplit és 3 kg hagymát vásárolt,
amiért összesen 1570 Ft-ot fizetett. A sorban utána következő vásárló 2 kg krump-
liért és 1 kg hagymáért 700 Ft-ot fizetett. Mennyibe került 1 kg krumpli, és meny-
nyibe került 1 kg hagyma ennél a zöldségesnél?', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_013.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b196fd95-771e-421f-95c6-cbae12a41398', NOW(), 'k_matma_24maj_fl__013__b', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 13, 'b', 'b)  Oldja meg az alábbi egyenletet a valós számok halmazán!
+
−
=
+
2
4
2 (
1)
(
1)
x x
x

a)
b)
Ö.:', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('d062363b-65ea-460d-8979-1b839206a762', NOW(), 'k_matma_24maj_fl__014__a', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 14, 'a', 'Dóri egy 6 cm átmérőjű, 10 cm magas forgáshengert készített gyurmából. Később a húga,
Panni ugyanebből a gyurmamennyiségből egy szintén forgáshenger alakú „kígyót” for-
mált, de az már 40 cm hosszú lett.
a) Hány centiméter a Panni által formált kígyó átmérője?
Dóri másnap – egy forma segítségével – piramisokat készí-
tett gyurmából. Az egyik piramis alakja egy olyan négyzet
alapú gúla lett, amelynek alapéle 8 cm, és minden oldaléle
9 cm hosszúságú.', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_014.png', ARRAY['geometria-ter','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ac7aadca-346e-4769-9b3c-78c7ec1b810a', NOW(), 'k_matma_24maj_fl__014__b', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 14, 'b', 'Dóri egy 6 cm átmérőjű, 10 cm magas forgáshengert készített gyurmából. Később a húga,
Panni ugyanebből a gyurmamennyiségből egy szintén forgáshenger alakú „kígyót” for-
mált, de az már 40 cm hosszú lett.

b) Mekkora ennek a gúlának a térfogata?

a)
b)
Ö.:', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_014.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('19a443fe-5eed-4993-9eaf-512a54f2b673', NOW(), 'k_matma_24maj_fl__015__a', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 15, 'a', 'Egy frissen elültetett fa törzséből három ág indult ki. Az első évben minden ág végén két
újabb ág hajtott ki. Az alábbi ábrák egy-egy gráfon szemléltetik a fa ágszerkezetét ülte-
téskor, illetve az első év végén. Az elágazásokat és az ágak végét tekintjük a gráf pontja-
inak, az ágakat pedig a gráf éleinek (a fa törzsét is egy élnek tekintjük).

ültetéskor
az első év végén

a) Hány éle és hány pontja van a gráfnak az első év végén?
A második év végére az első évben kihajtott ágak végén két új ág hajt ki. És így tovább:
minden évben az azt megelőző évben kifejlődött ágak végén két új ág hajt ki.', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_015.png', ARRAY['grafelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4f0bb672-7542-463e-a726-8af5739b74c2', NOW(), 'k_matma_24maj_fl__015__b', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 15, 'b', 'Egy frissen elültetett fa törzséből három ág indult ki. Az első évben minden ág végén két
újabb ág hajtott ki. Az alábbi ábrák egy-egy gráfon szemléltetik a fa ágszerkezetét ülte-
téskor, illetve az első év végén. Az elágazásokat és az ágak végét tekintjük a gráf pontja-
inak, az ágakat pedig a gráf éleinek (a fa törzsét is egy élnek tekintjük).

ültetéskor
az első év végén

b) Hány éle van összesen annak a gráfnak, amely a negyedik év végén ábrázolja a fát?
Egy kertészetben facsemetéket ültettek el egy trapéz alakú területen 17 sorban. Az első
sorba 12 facsemete, a másodikba 15, a harmadikba 18 került, és így tovább: minden sorba
3-mal több facsemetét ültettek el, mint az előzőbe.', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_015.png', ARRAY['grafelmelet','sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('672b87e5-f8e2-4a64-a3cd-7ae1e1359bdd', NOW(), 'k_matma_24maj_fl__015__c', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 15, 'c', 'Egy frissen elültetett fa törzséből három ág indult ki. Az első évben minden ág végén két
újabb ág hajtott ki. Az alábbi ábrák egy-egy gráfon szemléltetik a fa ágszerkezetét ülte-
téskor, illetve az első év végén. Az elágazásokat és az ágak végét tekintjük a gráf pontja-
inak, az ágakat pedig a gráf éleinek (a fa törzsét is egy élnek tekintjük).

ültetéskor
az első év végén

c) Hány facsemetét ültettek az utolsó sorba, és hány facsemete van összesen a területen?

a)
b)
c)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_015.png', ARRAY['sorozatok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('09015ebe-dd4c-4d05-8829-977971fa2d06', NOW(), 'k_matma_24maj_fl__016__a', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 16, 'a', 'Hajni gyakorolt a matematika érettségi vizsgára, ezért az abszolútértékes, a lineáris, a
másodfokú és a négyzetgyökös függvényekből összesen 24 darabnak a grafikonját raj-
zolta fel a füzetébe. Ezek eloszlását kördiagramon szeretnénk ábrázolni, az alábbi táblázat
adatai alapján.
Darab-
Középponti
Függvény típusa
szám
szög
Abszolútértékes függvény
5
Lineáris függvény
135°
Másodfokú függvény
6
Négyzetgyökös függvény
a) Töltse ki a táblázat üres celláit, és készítse el a kördiagramot!

=
−
−
2
másodfokú függvényt is (x ∉ R).
( )
(
3)
4
f x
x
Hajni ábrázolta az', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_016.png', ARRAY['statisztika','szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('51154754-ead5-4b10-9b6c-a765af0731b6', NOW(), 'k_matma_24maj_fl__016__b', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 16, 'b', 'Hajni gyakorolt a matematika érettségi vizsgára, ezért az abszolútértékes, a lineáris, a
másodfokú és a négyzetgyökös függvényekből összesen 24 darabnak a grafikonját raj-
zolta fel a füzetébe. Ezek eloszlását kördiagramon szeretnénk ábrázolni, az alábbi táblázat
adatai alapján.
Darab-
Középponti
Függvény típusa
szám
szög
Abszolútértékes függvény
5
Lineáris függvény
135°
Másodfokú függvény
6
Négyzetgyökös függvény

b) Jellemezze az f függvényt a következő szempontok szerint: zérushelyek, monotoni-
tás, szélsőérték (típus, hely és érték), értékkészlet!

a)
b)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_016.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a27587f9-62d3-465f-b9dc-454ab446ba7c', NOW(), 'k_matma_24maj_fl__017__a', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 17, 'a', 'Az ábrán látható ABC háromszög oldalainak
hossza: AB = 40 cm, AC = 25 cm és BC = 35 cm.
A D pont az AC oldal belső pontja úgy, hogy a BD
szakasz hossza szintén 35 cm. Jelölje α az ABC
háromszög A csúcsánál lévő belső szöget.
a) Számítással igazolja, hogy α = 60°!', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_017.png', ARRAY['geometria-sik','trigonometria','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('03d19a1c-87f9-45c2-8fc9-ffd3866740a9', NOW(), 'k_matma_24maj_fl__017__b', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 17, 'b', 'Az ábrán látható ABC háromszög oldalainak
hossza: AB = 40 cm, AC = 25 cm és BC = 35 cm.
A D pont az AC oldal belső pontja úgy, hogy a BD
szakasz hossza szintén 35 cm. Jelölje α az ABC
háromszög A csúcsánál lévő belső szöget.

b) Határozza meg az ABD tompaszögű háromszög területét!
Az ábrán négy település (A, B, C és D), valamint
az ezeket összekötő utak hálózata látható. Az utak
állapotát ellenőrző autó vezetője szeretné mind az
öt utat bejárni úgy, hogy minden összekötő úton
pontosan egyszer halad végig. Egy lehetséges be-
járási terv például: DABDCB.', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_017.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0d1997a7-0cae-4700-88fd-bd85f2218a2a', NOW(), 'k_matma_24maj_fl__017__c', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 17, 'c', 'Az ábrán látható ABC háromszög oldalainak
hossza: AB = 40 cm, AC = 25 cm és BC = 35 cm.
A D pont az AC oldal belső pontja úgy, hogy a BD
szakasz hossza szintén 35 cm. Jelölje α az ABC
háromszög A csúcsánál lévő belső szöget.

c) Hány olyan különböző bejárási terv készíthető, amely a B pontból indul?
(Két bejárási terv különböző, ha az egyikben legalább egy település más helyen sze-
repel, mint a másikban.)', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_017.png', ARRAY['grafelmelet','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c6cc5f25-d44f-4c4f-a543-3b62cbb0019a', NOW(), 'k_matma_24maj_fl__017__d', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 17, 'd', 'Az ábrán látható ABC háromszög oldalainak
hossza: AB = 40 cm, AC = 25 cm és BC = 35 cm.
A D pont az AC oldal belső pontja úgy, hogy a BD
szakasz hossza szintén 35 cm. Jelölje α az ABC
háromszög A csúcsánál lévő belső szöget.

d) Adja meg az alábbi állítások logikai értékét (igaz vagy hamis)! Válaszait itt nem kell
indokolnia!
(1)  A 4 csúcsú teljes gráfnak 6 éle van.
(2)  Van olyan 5 csúcsú gráf, amelyben minden csúcs fokszáma 3.
(3)  Van olyan 6 csúcsú gráf, amelynek 5 éle van.

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_017.png', ARRAY['grafelmelet','logika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('3fb023f7-11c0-452f-8397-7d1ce3a7a148', NOW(), 'k_matma_24maj_fl__018__a', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 18, 'a', 'Egy iskolában tánc- és kerámiaszakkör is működik. Az iskola 142 tanulója közül 24-en
járnak táncszakkörre, és 20-an kerámiaszakkörre. Nyolcszor annyi tanuló nem jár egyik
szakkörre sem, mint ahányan mindkettőre járnak.
a) Hányan járnak csak a táncszakkörre, és hányan csak a kerámiaszakkörre a két szak-
kör közül?
Az egyik alkalommal nyolc tanuló vett részt a kerámiaszakkörön. A szakkört egy olyan
teremben tartották, ahol összesen 16 hely volt nyolc darab kétszemélyes padban. A tanár
a szakkör elején azt kérte a diákoktól, hogy minden padba egy ember üljön, a két hely
bármelyikére.', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_018.png', ARRAY['halmazok','egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('a515cfdb-202b-4413-a2be-d89f2a04b736', NOW(), 'k_matma_24maj_fl__018__b', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 18, 'b', 'Egy iskolában tánc- és kerámiaszakkör is működik. Az iskola 142 tanulója közül 24-en
járnak táncszakkörre, és 20-an kerámiaszakkörre. Nyolcszor annyi tanuló nem jár egyik
szakkörre sem, mint ahányan mindkettőre járnak.

b) Hányféleképpen ülhettek le a diákok a tanár kérésének megfelelően? (Két ülésrendet
különbözőnek tekintünk, ha legalább egy diák másik helyen ül a két esetben.)
Egy másik alkalommal 14 tanuló vett részt a táncszakkörön. A 14 tanuló közül 6-an jár-
nak a kerámiaszakkörre is.', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_018.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('41fc06b9-11f2-435f-a708-fba86efb8106', NOW(), 'k_matma_24maj_fl__018__c', 'k_matma_24maj_fl', 'k_matma_24maj_fl.pdf', 2024, 'kozep', 'majus', true, 'II', 18, 'c', 'Egy iskolában tánc- és kerámiaszakkör is működik. Az iskola 142 tanulója közül 24-en
járnak táncszakkörre, és 20-an kerámiaszakkörre. Nyolcszor annyi tanuló nem jár egyik
szakkörre sem, mint ahányan mindkettőre járnak.

c) Mennyi a valószínűsége annak, hogy a 14 tanuló közül 3-at véletlenszerűen kivá-
lasztva, a kiválasztottak között pontosan 2 olyan lesz, aki a kerámiaszakkörre is jár?

a)
b)
c)
Ö.:', 17, '/images/k_matma_24maj_fl/crops/k_matma_24maj_fl_prob_018.png', ARRAY['valoszinuseg','kombinatorika','szovegfeladas']::text[], false, false, '', true);

-- k_matma_25maj_fl (31 problems)
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('56e0116d-91a9-4ab3-90be-4c337645d903', NOW(), 'k_matma_25maj_fl__001__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 1, NULL, 'Adott a következő két halmaz: A = {2; 3; 4; 5; 6} és B = {5; 6; 7; 8; 9}.
Elemei felsorolásával adja meg az A ∪ B és a B \ A halmazt!

A ∪ B =

B \ A =', 1, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_001.png', ARRAY['halmazok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('332c3b2c-7bcc-4f57-8e7c-2cf4a313d009', NOW(), 'k_matma_25maj_fl__002__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 2, NULL, 'Emma egy 80 pontos dolgozatban 68 pontot ért el. Hány százalékos lett Emma dolgozata?

Emma dolgozata          százalékos
lett.', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_002.png', ARRAY['szamok-muveletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('4cf8c857-281d-44b5-928b-d8f52b89db08', NOW(), 'k_matma_25maj_fl__003__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 3, NULL, 'Hány különböző háromjegyű számot képezhetünk a 4, 5, 6, 7, 8 számjegyekből, ha a
számjegyeket többször is felhasználhatjuk?', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_003.png', ARRAY['kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('e9ca8370-5df0-4170-903c-27c059508418', NOW(), 'k_matma_25maj_fl__004__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 4, NULL, 'x =
4
2
8
Adja meg x értékét, ha
.

x =', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_004.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('aabf128c-c7db-4025-b9d1-ff46b4ab72e5', NOW(), 'k_matma_25maj_fl__005__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 5, NULL, 'Írja fel tízes számrendszerben a kettes számrendszerbeli 101012 számot!', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_005.png', ARRAY['szamrendszerek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b634ab20-45da-448f-9cd4-4f6ca835cced', NOW(), 'k_matma_25maj_fl__006__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 6, NULL, 'Egy mértani sorozat harmadik tagja 8, negyedik tagja 4. Adja meg a sorozat hányadosát,
első tagját, és a sorozat első 7 tagjának az összegét!

A sorozat hányadosa:

A sorozat első tagja:

Az első 7 tag összege:', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_006.png', ARRAY['sorozatok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b8475263-7ef0-4d00-96bb-32eb6c55253c', NOW(), 'k_matma_25maj_fl__007__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 7, NULL, 'Egy héttagú társaság tagjai kézfogással üdvözlik egymást: mindenki mindenkivel egyszer
fog kezet. Eddig 10 kézfogás történt.
Hány kézfogás van még hátra? Megoldását részletezze!', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_007.png', ARRAY['kombinatorika','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('7980fbe1-d48c-43f3-a915-3c37eff670b7', NOW(), 'k_matma_25maj_fl__008__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 8, NULL, 'Egy háromszög oldalainak hossza 4 cm, 8 cm és 10 cm. Egy hozzá hasonló háromszög
legrövidebb oldala 6 cm hosszú. Hány centiméter hosszú ennek a háromszögnek a
leghosszabb oldala?

A háromszög leghosszabb oldala
cm hosszú.', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_008.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1455021e-9b4f-410a-963f-4c59920137ce', NOW(), 'k_matma_25maj_fl__009__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 9, NULL, 'Adja meg az összes olyan 3-mal osztható négyjegyű pozitív egész számot, melynek
minden számjegye kisebb 2-nél!', 3, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_009.png', ARRAY['szamelmelet']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ef8fa5d2-cc18-459d-a234-9bb8f2f4d23a', NOW(), 'k_matma_25maj_fl__010__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 10, NULL, 'Írja fel annak az egyenesnek az egyenletét, amelynek a meredeksége 2, és átmegy a
P(1; 3) ponton!', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_010.png', ARRAY['koordinata-geometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ea131b90-80a1-41ca-8420-2f46389a3e37', NOW(), 'k_matma_25maj_fl__011__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 11, NULL, 'Az ábrán látható háromszög 30°-os szögével szemközti oldal 4 cm hosszú.
Milyen hosszú a 40°-os szöggel szemközti oldal? Megoldását részletezze!', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_011.png', ARRAY['geometria-sik','trigonometria']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('46fbf36e-31f8-4695-94d0-820eaf8357c9', NOW(), 'k_matma_25maj_fl__012__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'I', 12, NULL, 'Egy fekete és egy fehér szabályos nyolcoldalú dobótesttel (oktaéderrel) dobunk. A két
dobótest mindegyikén az 1, 2, 3, 4, 5, 6, 7, 8 számok vannak. (Az ábrán például 1-est és
3-ast dobtunk.)
Mennyi a valószínűsége annak, hogy a dobott számok összege 5 lesz? Megoldását
részletezze!
A', 2, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_012.png', ARRAY['valoszinuseg']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('64a84ff6-ef72-42b5-ae02-b2ffd7ecf10d', NOW(), 'k_matma_25maj_fl__013__', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 13, NULL, 'Oldja meg az alábbi egyenleteket a valós számok halmazán!
−
+
+
1
5
3
x
x
x
+
=
a)
6
9
4
2 + (x + 1)(x – 1) = 0
b) (x + 1)

a)
b)
Ö.:', 11, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_013.png', ARRAY['egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('58c938b2-7184-4ef9-88f7-bafe0d311e84', NOW(), 'k_matma_25maj_fl__014__a', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 14, 'a', '3 pont
a)
b)
c)
d)
Ö.:', 13, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_014.png', ARRAY['geometria-sik','bizonyitasok']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('958a3895-6ac7-47e5-8fb5-3c6a7dbdbd1d', NOW(), 'k_matma_25maj_fl__014__b', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 14, 'b', 'b) Számítsa ki a BDF háromszög területét!', 13, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_014.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ecb73646-546c-4251-90fa-3be7aa02c3e8', NOW(), 'k_matma_25maj_fl__014__c', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 14, 'c', 'c) Számítsa ki az ABCDEF hatszög köré írható kör kerületét!', 13, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_014.png', ARRAY['geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b9f4db5a-9b6c-43c3-8cd4-66b17cc21e99', NOW(), 'k_matma_25maj_fl__014__d', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 14, 'd', 'd) Adja meg a következő vektorműveletek eredményét:
υυυρ
υυυρ
υυυρ
υυυρ
+
=
−
=
BF
FD
AB
AF', 13, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_014.png', ARRAY['vektorok','geometria-sik']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('becda98e-4f5a-4c6f-baa9-d9858966e2f6', NOW(), 'k_matma_25maj_fl__015__a', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 15, 'a', 'x +
−
Az
2
függvény értelmezési tartománya a [−2; 2] zárt intervallum.
α
:
(
1)
2
f
x

a)  Melyik számot rendeli az f függvény az x = –1,5-hez?', 12, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_015.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('b18a6bdc-8224-4890-bd9f-593a268623ec', NOW(), 'k_matma_25maj_fl__015__b', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 15, 'b', 'x +
−
Az
2
függvény értelmezési tartománya a [−2; 2] zárt intervallum.
α
:
(
1)
2
f
x

b) Ábrázolja az f függvényt!

Adottak a valós számok halmazán értelmezett e és g függvények.
−
+
2x
g x α
:
α
:
2
1
e x
x', 12, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_015.png', ARRAY['fuggvenyek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ea216257-be8e-464c-aeb0-e1ecce0f5fe1', NOW(), 'k_matma_25maj_fl__015__c', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 15, 'c', 'x +
−
Az
2
függvény értelmezési tartománya a [−2; 2] zárt intervallum.
α
:
(
1)
2
f
x

c) Döntse el, hogy az e és g függvényekre a táblázatban megadott három állítás igaz
vagy hamis! Töltse ki az alábbi táblázatot! Válaszait itt nem kell indokolnia.
e
g
Van zérushelye.
Szigorúan monoton növekvő.
Van maximuma.', 12, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_015.png', ARRAY['fuggvenyek','exponencialis']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c063e5f8-ddd6-4a2a-8268-078e447319d5', NOW(), 'k_matma_25maj_fl__015__d', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 15, 'd', 'x +
−
Az
2
függvény értelmezési tartománya a [−2; 2] zárt intervallum.
α
:
(
1)
2
f
x

d) Határozza meg, hogy a g függvény melyik számhoz rendeli a 3-at! Válaszát három
tizedesjegyre kerekítve adja meg!
a)
b)
c)
d)
Ö.:
B

A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 12, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_015.png', ARRAY['exponencialis','egyenletek']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1a0da438-a945-4082-9f2a-19ec1d850c7d', NOW(), 'k_matma_25maj_fl__016__a', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 16, 'a', 'Az ábrán egy tanterem vázlatos
rajza látható. A tanterem padlója
egy 8 méter oldalú négyzet. A
bejárati ajtó felőli fal 3,5 méter,
míg az ablakos fal 4,5 méter
magas.
A tanterem három, téglalap alakú
ablakának mérete 1,6 m × 2,5 m.
Az ajtó 90 cm széles és 210 cm
magas.
A tanterem két szemközti, tégla-
lap alakú függőleges falát (az ajtó és az ablakok kivételével) világoskék színűre festették,
a többi felületet nem festették le.
a) Hány négyzetméter falfelületet festettek világoskék színűre a tanteremben?', NULL, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_016.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('1cc4063f-8430-4623-bc34-42c20f1f7d8a', NOW(), 'k_matma_25maj_fl__016__b', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 16, 'b', 'Az ábrán egy tanterem vázlatos
rajza látható. A tanterem padlója
egy 8 méter oldalú négyzet. A
bejárati ajtó felőli fal 3,5 méter,
míg az ablakos fal 4,5 méter
magas.
A tanterem három, téglalap alakú
ablakának mérete 1,6 m × 2,5 m.
Az ajtó 90 cm széles és 210 cm
magas.
A tanterem két szemközti, tégla-
lap alakú függőleges falát (az ajtó és az ablakok kivételével) világoskék színűre festették,
a többi felületet nem festették le.

b) Számítsa ki a tanterem térfogatát!
A tantermet főleg matematika és természettudományos órákra használják, így az egyik
falra egy olyan dekoráció került, amelyre összesen 196 híres matematikus és természet-
tudós vezetéknevét írták fel az alábbi háromszögszerű elrendezésben. Az ábra a felső
4 sort mutatja, ami lefelé folytatódik még hasonlóképpen, azaz minden sorba kettővel
több név kerül, mint a felette lévőbe.
Euklidész
Gauss
Euler
Pitagorasz
Fibonacci
Karikó
Cardano
Bolyai
Leibniz
Cantor
Krausz
Neumann
Erdős
Lovász
Szemerédi
Newton', NULL, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_016.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('ca4cd103-6685-4783-868f-f8e33a0f1c37', NOW(), 'k_matma_25maj_fl__016__c', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 16, 'c', 'Az ábrán egy tanterem vázlatos
rajza látható. A tanterem padlója
egy 8 méter oldalú négyzet. A
bejárati ajtó felőli fal 3,5 méter,
míg az ablakos fal 4,5 méter
magas.
A tanterem három, téglalap alakú
ablakának mérete 1,6 m × 2,5 m.
Az ajtó 90 cm széles és 210 cm
magas.
A tanterem két szemközti, tégla-
lap alakú függőleges falát (az ajtó és az ablakok kivételével) világoskék színűre festették,
a többi felületet nem festették le.

c) Összesen hány sorba írták fel a 196 nevet?
A tanteremben három egymás melletti kétszemélyes padba leül Anna, Balázs, Csaba,
Dóra, Eszter és Fülöp.

d) Hányféleképpen tehetik ezt meg, ha Eszter és Csaba valamelyik padban egymás
mellett ül? (Két eset különböző, ha van olyan diák, aki másik helyen ül a két ülés-
rendben.)
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', NULL, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_016.png', ARRAY[]::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('6b9ffe97-ffba-4389-94a6-6c5807f8ea04', NOW(), 'k_matma_25maj_fl__017__a', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 17, 'a', 'Egy internetes boltban kapható társasjátékot 14 vásárló értékelt 1, 2, 3, 4 vagy 5 ponttal.
Az alábbi táblázatban az értékelés eredménye látható.

a) Az adatok alapján töltse ki az alábbi táblázatot a pontszámokról!', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_017.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('9503e07a-d9f6-4b8f-afd4-864d4f1a8f48', NOW(), 'k_matma_25maj_fl__017__b', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 17, 'b', 'Egy internetes boltban kapható társasjátékot 14 vásárló értékelt 1, 2, 3, 4 vagy 5 ponttal.
Az alábbi táblázatban az értékelés eredménye látható.

b) Számítsa ki a 14 pontszám átlagát és szórását!
Két vásárló nevét (visszatevés nélkül) véletlenszerűen kiválasztjuk az értékelést író
14 vásárló neve közül.', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_017.png', ARRAY['statisztika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('34867052-2a8d-46df-8da7-3c079b9c1e68', NOW(), 'k_matma_25maj_fl__017__c', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 17, 'c', 'Egy internetes boltban kapható társasjátékot 14 vásárló értékelt 1, 2, 3, 4 vagy 5 ponttal.
Az alábbi táblázatban az értékelés eredménye látható.

c) Mennyi a valószínűsége annak, hogy mindketten legalább 4 pontot adtak?
Idén a három legnépszerűbb játék a Kert, a Szigetlakók és a Duna–Tisza volt. Az egyik
héten a bolt vásárlói közül 20-an megvették a Kertet, 16-an pedig a Szigetlakókat. A
vásárlók közül összesen 18-an vettek pontosan egy játékot: csak a Szigetlakókat kétszer
annyian, mint csak a Kertet, csak a Duna–Tiszát pedig háromszor annyian, mint csak a
Kertet. Ezen a héten nem volt olyan vásárló, aki mind a három játékot megvette, de 10-en
voltak olyanok, aki a Kertet és a Szigetlakókat is megvásárolták.', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_017.png', ARRAY['valoszinuseg','kombinatorika']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0bce9445-afd3-4d5d-a7c1-4aecbed1c874', NOW(), 'k_matma_25maj_fl__017__d', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 17, 'd', 'Egy internetes boltban kapható társasjátékot 14 vásárló értékelt 1, 2, 3, 4 vagy 5 ponttal.
Az alábbi táblázatban az értékelés eredménye látható.
pontszám
1
2
3
4
5
gyakoriság
0
2
3
2
7

minimum
alsó kvartilis
medián
felső kvartilis
maximum

d) Hányan voltak ezen a héten a vásárlók közül azok, akik a Duna–Tisza játékot
megvásárolták?

a)
b)
c)
d)
Ö.:
A 16-18. feladatok közül tetszése szerint választott kettőt kell megoldania.
A kihagyott feladat sorszámát írja be a 3. oldalon lévő üres négyzetbe!', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_017.png', ARRAY['halmazok','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('0fdee9a3-82b9-4591-9938-790ba837ad5d', NOW(), 'k_matma_25maj_fl__018__a', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 18, 'a', 'Andrásék mosdótálja forgáshenger alakú, melynek belső átmé-
rője 38 cm, belső magassága pedig 12 cm. A mosdóhoz tartozó
csaptelep elromlott, minden másodpercben egy csepp víz csepeg
ki a csapból. Egy csepp térfogata 1/20 ml. Andrásék 3 teljes
napra elutaznak otthonról. A mosdótál dugóját bedugva
felejtették, így a csepegő víz a mosdótálban gyűlik 3 napon
keresztül.
a) Számítsa ki a mosdótál térfogatát, és döntse el, hogy a három nap alatt belecsöpögő
víz ki fog-e csordulni a mosdótálból!
Andrásék az utazás során kétszer is betértek ugyanabba a cukrászdába. Egyik nap
4 somlóit és 2 gombóc fagylaltot vásároltak 4100 Ft-ért, másnap pedig 2 somlóit és
4 gombóc fagylaltot 3400 Ft-ért.', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_018.png', ARRAY['geometria-ter','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('c2c18a05-07f8-431c-ba3d-2f29bff051df', NOW(), 'k_matma_25maj_fl__018__b', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 18, 'b', 'Andrásék mosdótálja forgáshenger alakú, melynek belső átmé-
rője 38 cm, belső magassága pedig 12 cm. A mosdóhoz tartozó
csaptelep elromlott, minden másodpercben egy csepp víz csepeg
ki a csapból. Egy csepp térfogata 1/20 ml. Andrásék 3 teljes
napra elutaznak otthonról. A mosdótál dugóját bedugva
felejtették, így a csepegő víz a mosdótálban gyűlik 3 napon
keresztül.

b) Mennyibe kerül egy somlói és mennyibe kerül egy gombóc fagylalt?
A cukrászdában 10-féle fagylalt – köztük a pisztácia – közül lehet választani. András
kisfia, Bandi szeret véletlenszerűen választani a kapható fagylaltfélék közül. Most is ilyen
módon állít össze egy háromgombócos fagylaltot: felírja a fagylaltfélék nevét egy-egy
cédulára, és ezek közül húz hármat visszatevéssel.', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_018.png', ARRAY['egyenletek','szovegfeladas']::text[], false, false, '', true);
INSERT INTO problems (id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, is_secondary_language, exam_part, problem_number, sub_part, statement_text, max_points, problem_image_url, topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ('96cac227-d76b-4f96-907b-8ffc3d381582', NOW(), 'k_matma_25maj_fl__018__c', 'k_matma_25maj_fl', 'k_matma_25maj_fl.pdf', 2025, 'kozep', 'majus', true, 'II', 18, 'c', 'Andrásék mosdótálja forgáshenger alakú, melynek belső átmé-
rője 38 cm, belső magassága pedig 12 cm. A mosdóhoz tartozó
csaptelep elromlott, minden másodpercben egy csepp víz csepeg
ki a csapból. Egy csepp térfogata 1/20 ml. Andrásék 3 teljes
napra elutaznak otthonról. A mosdótál dugóját bedugva
felejtették, így a csepegő víz a mosdótálban gyűlik 3 napon
keresztül.

c) Mennyi a valószínűsége annak, hogy a három gombóc közül legfeljebb az egyik lesz
pisztácia?

a)
b)
c)
Ö.:', 17, '/images/k_matma_25maj_fl/crops/k_matma_25maj_fl_prob_018.png', ARRAY['valoszinuseg','szovegfeladas']::text[], false, false, '', true);

COMMIT;
