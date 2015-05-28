1. JOHDANTO

Järjestelmän tarkoitus
Työn aiheena on tehdä parayleisurheilun Suomen ennätystilastot nettiin saataville. Sovelluksesta löytyy ennätykset tarvittavine tietoineen: laji, luokka, sarja, tulos, tuuli, ennätyksen tekijä, päiväys ja paikka. Tilastoja on mahdollista selata ainakin lajeittain, luokittain ja sarjoittain - myös esimerkiksi viimeisimmät ennätykset saa näkyville. Tilastoja pääsee muokkaamaan vain admin. 

2. YLEISKUVA JÄRJESTELMÄSTÄ
Käyttäjäryhmät
Vierailija
Vierailijalla tarkoitetaan ketä tahansa henkilöä, joka tulee katsomaan parayleisurheilun Suomen ennätystilastoja.

Admin
Admin on rekisteröitynyt käyttäjä, jolla on mahdollisuus muokata tilastoja.


Käyttötapauskuvaukset

Vierailijan käyttötapaukset
Suomen ennätystilastojen tarkasteleminen:
Kuka tahansa voi tarkastella Suomen ennätystilastoja. Käyttäjälle esitetään 10 viimeisintä Suomen ennätystä. Tuloksista näytetään laji, sarja, luokka, tulos, tuuli, tekijä, aika ja paikka. 

Ennätysten hakeminen:
Tilastoista on mahdollista hakea tiettyjä ennätystuloksia esimerkiksi lajin, luokan, sarjan tai vuosiluvun perusteella. Tuloksista näytetään laji, sarja, luokka, tulos, tuuli, tekijä, aika ja paikka. 

Adminin käyttötapaukset
Suomen ennätystilastojen tarkasteleminen:
Käyttäjälle esitetään 10 viimeisintä Suomen ennätystä. Tuloksista näytetään laji, sarja, luokka, tulos, tuuli, tekijä, aika ja paikka. 

Ennätysten hakeminen:
Tilastoista on mahdollista hakea tiettyjä ennätystuloksia esimerkiksi lajin, luokan, sarjan tai vuosiluvun perusteella. Tuloksista näytetään laji, sarja, luokka, tulos, tuuli, tekijä, aika ja paikka. 

Uuden ennätyksen lisääminen:
Käyttäjä täyttää uuden ennätyksen tiedot (laji, sarja, luokka, tulos, tuuli, tekijä, aika ja paikka). Uusi ennätys korvaa vanhan vastaavan ennätyksen, mikäli sellainen löytyy. Jos tekijältä ei löydy aiempia ennätyksiä, käyttäjä ohjataan täyttämään uuden henkilön tiedot.

Henkilön lisääminen:
Käyttäjä täyttää henkilön tiedot (nimi, syntymäaika, seura).
Muita käyttötapauksia:
Kirjautuminen


Käyttötapauskaavio (vain tekstinä)

[Vierailja]-(Suomen ennätystilastojen tarkasteleminen)
[Vierailija]-(Ennätysten hakeminen)

[Admin]-(Suomen ennätystilastojen tarkastelminen)
[Admin]-(Ennätysten hakeminen)
[Admin]-(Uuden ennätyksen lisääminen)
(Uuden ennätyksen lisääminen)<(Kirjautuminen)[Admin]-(Uuden henkilön lisääminen)
(Uuden henkilön lisääminen)<(Kirjautuminen)


a3. JƒRJESTELMƒN TIETOSISƒLT÷

[Enn‰tys]-[Luokka]
[Enn‰tys]-[Laji]
[Enn‰tys]-[Sarja]
[Enn‰tys]-[Henkilˆ]

Tietokohde: Enn‰tys
Atribuutti / Arvojoukko / Kuvailu
Tulos / desimaaliluku / Riippuu lajista, onko sekunteja vai senttej‰.
Tuuli / desimaaliluku / Kertoo suorituksessa olleen tuulen m/s, esim. +0,8 (myˆt‰tuulta 0,8 m/s).
Paikka / merkkijono, max 100 merkki‰ / Tuloksen tekopaikka, esim. Helsinki, Suomi
Aika / p‰iv‰ys / Tuloksen tekop‰iv‰

Enn‰tykseen liittyy myˆs tieto luokasta, lajista, sarjasta ja tekij‰st‰.

Tietokohde: Luokka
Atribuutti / Arvojoukko / Kuvailu
Luokka / merkkijono, 3 merkki‰ / Kilpailuluokka, esim. T44 tai F35.
kuvaus / merkkijono, max 400 merkki‰ / Vammaluokan kuvaus, esim. n‰kˆvammaiset, t‰ysin sokeat

Luokkaan liittyy tieto lajeista, joita kyseisell‰ luokalla on. Luokalla on monta lajia ja lajilla monta luokkaa. Luokalla on useampi enn‰tys (eri sarjat ja lajit).

Tietokohde: Laji
Atribuutti / Arvojoukko / Kuvailu
Laji / merkkijono, max 20 merkki‰ / Lajin nimi.
tyyppi / merkki / joko F tai T. Kertoo, onko rata- vai kentt‰laji.

Lajiin liittyy tieto kilpailuluokista, joilla kyseinen laji on. Lajilla voi olla useampi enn‰tys (eri luokat ja sarjat).

Tietokohde: Sarja
	Atribuutti / Arvojoukko / Kuvailu
Sarja / merkkijono, max 3 merkki‰ / Kilpailusarja, esim M tai N19.

Sarjaan liittyy tieto lajeista, jotka kyseisell‰ sarjalla on. Lajeja ja sarjoja on molempia monta.

Tietokohde: Henkilˆ
Atribuutti / Arvojoukko / Kuvailu
Nimi / merkkijono, max 120 merkki‰ / Henkilˆn etu- ja sukunimi
Syntym‰aika / p‰iv‰ys / Henkilˆn syntym‰aika
Seura / merkkijono, max 120 merkki‰ / Henkilˆn edustaman seuran nimi, esimerkiksi Polvij‰rven urheilijat (PjU)

Henkilˆll‰ voi olla useampi enn‰tys (eri lajit), mutta enn‰tyksell‰ ei ole kuin yksi henkilˆ.


