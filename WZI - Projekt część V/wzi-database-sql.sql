CREATE TABLE Konsultacja (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Uzytkownik_id INT NOT NULL,
  Psycholog_id INTEGER UNSIGNED NOT NULL,
  Wydarzenie_Psycholog_id INTEGER UNSIGNED NOT NULL,
  Wydarzenie_Uzytkownik_id INT NOT NULL,
  Wydarzenie_id INTEGER UNSIGNED NOT NULL,
  data_2 DATE NULL,
  typ_konsultacji VARCHAR NULL,
  status_2 VARCHAR NULL,
  PRIMARY KEY(id, Uzytkownik_id, Psycholog_id, Wydarzenie_Psycholog_id, Wydarzenie_Uzytkownik_id, Wydarzenie_id),
  INDEX Konsultacja_FKIndex1(Uzytkownik_id),
  INDEX Konsultacja_FKIndex2(Psycholog_id),
  INDEX Konsultacja_FKIndex3(Wydarzenie_id, Wydarzenie_Uzytkownik_id, Wydarzenie_Psycholog_id)
);

CREATE TABLE Powiadomienia (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Uzytkownik_id INT NOT NULL,
  tresc VARCHAR NULL,
  data_2 DATE NULL,
  status_2 VARCHAR NULL,
  PRIMARY KEY(id, Uzytkownik_id),
  INDEX Powiadomienia_FKIndex1(Uzytkownik_id)
);

CREATE TABLE Psycholog (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  imie VARCHAR NULL,
  nazwisko VARCHAR NULL,
  email VARCHAR NULL,
  numer_telefonu VARCHAR(9) NULL,
  specjalizacja VARCHAR NULL,
  certyfikat VARCHAR NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Pytania_z_testow (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Test_id INTEGER UNSIGNED NOT NULL,
  tresc_pytania VARCHAR NULL,
  typ_pytania VARCHAR NULL,
  PRIMARY KEY(id, Test_id),
  INDEX Pytania_z_testow_FKIndex1(Test_id)
);

CREATE TABLE Test (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nazwa VARCHAR NULL,
  kategoria VARCHAR NULL,
  czas_wykonania TIME NULL,
  ilosc_pytan INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Uzytkownik (
  id INT NOT NULL AUTO_INCREMENT,
  imie VARCHAR NULL,
  nazwisko VARCHAR NULL,
  email VARCHAR NULL,
  numer_telefonu VARCHAR(9) NULL,
  pesel VARCHAR(11) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Wydarzenie (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Uzytkownik_id INT NOT NULL,
  Psycholog_id INTEGER UNSIGNED NOT NULL,
  nazwa VARCHAR NULL,
  data_wydarzenia DATE NULL,
  typ VARCHAR NULL,
  PRIMARY KEY(id, Uzytkownik_id, Psycholog_id),
  INDEX Wydarzenie_FKIndex1(Uzytkownik_id),
  INDEX Wydarzenie_FKIndex2(Psycholog_id)
);

CREATE TABLE Wyniki_testow (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Uzytkownik_id INT NOT NULL,
  Test_id INTEGER UNSIGNED NOT NULL,
  data_wykonania DATE NULL,
  wynik VARCHAR NULL,
  rekomendacje VARCHAR NULL,
  PRIMARY KEY(id, Uzytkownik_id, Test_id),
  INDEX Wyniki_testow_FKIndex1(Uzytkownik_id),
  INDEX Wyniki_testow_FKIndex2(Test_id)
);


