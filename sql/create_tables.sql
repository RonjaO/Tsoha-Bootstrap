CREATE TABLE Henkilo(
  id SERIAL PRIMARY KEY,
  nimi varchar(50) not null, -- henkilön etu- ja sukunimi
  syntymaaika DATE not null,
  seura varchar(120)
);

CREATE TABLE Luokka(
  id SERIAL PRIMARY KEY,
  luokka char(3) not null, -- kilpailuluokka, esim T54
  kuvaus varchar(400)    -- Kuvaus vammaluokasta, esim. näkövammaiset, täysin sokeat
);

CREATE TABLE Laji(
  id SERIAL PRIMARY KEY,
  laji varchar(20) not null,
  tyyppi char(1) not null -- tyyppiä F/T. Kertoo, onko rata- vai kenttälaji.
);

CREATE TABLE Sarja(
  id SERIAL PRIMARY KEY,
  sarja varchar(3) not null
);

CREATE TABLE Laji_Luokka(
  laji_id INTEGER PREFERENCES Laji(id) not null,
  luokka_id INTEGER PREFERENCES Luokka(id) not null
);

CREATE TABLE Sarja_Laji(
  sarja_id INTEGER PREFERENCES Sarja(id) not null,
  laji_id INTEGER PREFERENCES Laji(id) not null
); 

CREATE TABLE Ennatys(
  id SERIAL PRIMARY KEY,
  laji_id INTEGER PREFERENCES Laji(id) not null,
  luokka_id INTEGER PREFERENCES Luokka(id) not null,
  sarja_id INTEGER PREFERENCES Sarja(id) not null,
  tulos_min varchar(8),
  tulos_metri DECIMAL(3,2),
  tuuli DECIMAL(1,1) not null,
  henkilo_id INTEGER PREFERENCES Henkilo(id) not null,
  paikka varchar(120) not null,
  aika DATE not null
);