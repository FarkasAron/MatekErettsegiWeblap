# Matematika Feladatbank – Telepítési összefoglaló

Ez a dokumentum egyszerű, nem technikai nyelvű leírása annak, hogy mi ez az
alkalmazás, jelenleg hogyan működik, és mi szükséges ahhoz, hogy az iskola
saját szerverén fusson.

---

## Mi ez az alkalmazás?

A Feladatbank egy webalkalmazás, amelyen a Boronkay György Műszaki Technikum és Gimnázium diákjai érettségi matematika feladatokat böngészhetnek. Az adatbázis közel 2 500 feladatot tartalmaz az elmúlt 20+ év középszintű és emelt szintű érettségi vizsgáiból. A feladatok témakör és évjárat szerint szűrhetők, és minden feladathoz megjelenik az eredeti vizsgalapon szereplő kép.

Az oldal nyilvános és csak olvasható – nincs bejelentkezés, nincs felhasználói
fiók, személyes adat nem kerül gyűjtésre vagy tárolásra.

---

## Hogyan működik jelenleg?

Az alkalmazás jelenleg egy felhőalapú szolgáltatáson (Supabase) fut, amelyet a
fejlesztő saját fiókján keresztül ér el. Ez ingyenes, de korlátozott: ha az
oldalt 7 napig senki nem látogatja meg, a szolgáltatás automatikusan „szünetelteti"
az adatbázist, és az oldal elérhetetlenné válik, amíg kézzel újra nem indítják.

Ez iskolai és hétköznapi használatra nem megfelelő, ezért az a cél, hogy az alkalmazás az iskola saját szerverén fusson, ahol nincs ilyen korlát.

---

## Mi szükséges az iskolai szerveren?

A szerverre négy programot kell telepíteni. Mindegyik ingyenes, nyílt forráskódú
szoftver, amelyek széles körben elterjedtek és jól dokumentáltak.

**1. Node.js** – Ez futtatja magát a webalkalmazást. Olyan, mint egy motor,
amely feldolgozza a diákok kéréseit és visszaküldi a weboldalt.

**2. PostgreSQL** – Ez az adatbázis-kezelő rendszer, amelyben a ~2 500 feladat
és a hozzájuk tartozó adatok tárolódnak. Hasonló a Microsoft SQL Serverhez,
csak ingyenes.

**3. nginx** – Ez egy webszerver, amely fogadja a beérkező látogatói kéréseket,
és továbbítja azokat a Node.js alkalmazáshoz. Emellett közvetlenül kiszolgálja a
feladatok képfájljait (kb. 2 500 darab PNG képről van szó).

**4. PM2** – Ez egy egyszerű programfelügyeleti eszköz, amely gondoskodik arról,
hogy a Node.js alkalmazás folyamatosan fusson. Ha az alkalmazás valamiért leáll
(pl. szerverhiba), a PM2 automatikusan újraindítja. Szerver-újraindítás esetén
is automatikusan elindul.

Ezeken felül ajánlott feltelepíteni egy HTTPS tanúsítványkezelőt (Let's Encrypt /
Certbot), amely ingyenes SSL tanúsítványt biztosít, hogy az oldal biztonságos
(HTTPS) kapcsolaton érjen el. A tanúsítvány automatikusan megújul.

---

## Milyen szerverre van szükség?

Az alkalmazás nem igényel erős hardvert. Egy átlagos iskolai szerver
bőven elegendő, ha teljesíti az alábbiakat:

- Operációs rendszer: Ubuntu Linux 22.04 LTS (ajánlott) vagy más modern Linux
- Legalább 1 GB RAM (ajánlott 2 GB)
- Legalább 5 GB szabad tárhely (a ~2 500 képfájl kb. 2 GB-ot foglal)
- Nyilvános IP-cím és domain név (pl. feladatbank.boronkay.hu)
- Az internet felőli 80-as (HTTP) és 443-as (HTTPS) port legyen elérhető

---

## Mit kell tenni a költöztetéshez?

A teljes folyamat egyszeri munka, amelyet a fejlesztő végez el a rendszergazda
által előkészített szerveren. Lépések vázlatosan:

1. A rendszergazda telepíti a szükséges szoftvereket a szerverre.
2. A fejlesztő exportálja az adatbázist a felhőből és importálja a szerverre.
3. A fejlesztő letölti a ~2 500 feladatképet és feltölti azokat a szerverre.
4. A fejlesztő frissíti az alkalmazás kódját, hogy a szerver adatbázisát használja.
5. A fejlesztő elindítja az alkalmazást a szerveren és beállítja az automatikus
   újraindítást.
6. A rendszergazda irányítja a domain nevet a szerver IP-címére.
7. A fejlesztő beállítja a HTTPS tanúsítványt.

A részletes technikai lépéseket a MIGRATION_GUIDE.md dokumentum tartalmazza
(ez az IT rendszergazdának szóló részletes útmutató).

---

## Karbantartás telepítés után

Az alkalmazás telepítés után minimális karbantartást igényel:

- A HTTPS tanúsítvány automatikusan megújul, ezt nem kell figyelni.
- Ha az iskola szervere újraindul, az alkalmazás automatikusan elindul.
- Ha új feladatokat kell feltölteni az adatbázisba, azt a fejlesztő a saját
  gépéről végzi el – ehhez nem kell hozzányúlni a szerverhez.
- Az alkalmazás kódjának frissítésekor a fejlesztőnek be kell lépnie a szerverre
  és le kell futtatnia az újraépítést (kb. 2-3 perces folyamat).

---

## Összefoglalás az IT rendszergazdának

| Feladat | Ki végzi? |
|---|---|
| Szoftverek telepítése a szerverre | IT rendszergazda |
| Domain név és tűzfal beállítása | IT rendszergazda |
| Adatok átköltöztetése | Fejlesztő |
| Alkalmazás elindítása és beállítása | Fejlesztő |
| Folyamatos üzemeltetés (automatikus) | PM2 + Certbot (automatikus) |
| Jövőbeli frissítések | Fejlesztő |
