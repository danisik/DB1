START TRANSACTION;
SAVEPOINT SAVE;
SELECT * FROM cetnost_zanru;
INSERT INTO film (`ID_FILM`, `Nazev`, `Delka`, `Rok_vydani`, `Pocet_kopii`, `Zanr_ID_ZANR`, `Reziser_ID_REZISER`, `Jazyk_ID_JAZYK`)
	VALUES ('17', 'Kun', '100', '1997', '5', '5', '1', '2');
SELECT * FROM cetnost_zanru;
ROLLBACK TO SAVE;


START TRANSACTION;
SAVEPOINT SAVE;
SELECT * FROM aktualne_vypujcene;
SELECT * FROM cetnost_filmu;
INSERT INTO vypujcky (Film_ID_FILM, Pujcujici_ID_PUJCUJICI, Datum_vypujceni, Datum_Vraceni) 
	VALUES(12, 4, '2017-11-25', '2017-11-27'); 
INSERT INTO vypujcky (Film_ID_FILM, Pujcujici_ID_PUJCUJICI, Datum_vypujceni, Datum_Vraceni) 
	VALUES(11, 5, '2017-10-28', '2017-11-05'); 
SELECT * FROM aktualne_vypujcene;
INSERT INTO film (`ID_FILM`, `Nazev`, `Delka`, `Rok_vydani`, `Pocet_kopii`, `Zanr_ID_ZANR`, `Reziser_ID_REZISER`, `Jazyk_ID_JAZYK`)
	VALUES ('17', 'Kun', '100', '1997', '5', '5', '1', '2');
SELECT * FROM cetnost_filmu;
ROLLBACK TO SAVE;
