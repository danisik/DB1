-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Sob 28. říj 2017, 01:52
-- Verze serveru: 10.1.26-MariaDB
-- Verze PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `mydb`
--

-- --------------------------------------------------------

--
-- Zástupná struktura pro pohled `aktualne_vypujcene`
-- (See below for the actual view)
--
CREATE TABLE `aktualne_vypujcene` (
`Datum vrácení` datetime
,`Příjmení` varchar(50)
,`Jméno` varchar(30)
,`Město` varchar(45)
,`Film` varchar(45)
);

-- --------------------------------------------------------

--
-- Zástupná struktura pro pohled `cetnost_filmu`
-- (See below for the actual view)
--
CREATE TABLE `cetnost_filmu` (
`Příjmení` varchar(50)
,`Jmeno` varchar(30)
,`Film` varchar(45)
,`Četnost` bigint(21)
);

-- --------------------------------------------------------

--
-- Zástupná struktura pro pohled `cetnost_zanru`
-- (See below for the actual view)
--
CREATE TABLE `cetnost_zanru` (
`Žánr` varchar(20)
,`Četnost` bigint(21)
);

-- --------------------------------------------------------

--
-- Struktura tabulky `film`
--

CREATE TABLE `film` (
  `ID_FILM` int(11) NOT NULL,
  `Nazev` varchar(45) NOT NULL,
  `Delka` int(11) NOT NULL,
  `Rok_vydani` int(11) NOT NULL,
  `Pocet_kopii` int(11) NOT NULL,
  `Zanr_ID_ZANR` int(11) NOT NULL,
  `Reziser_ID_REZISER` int(11) NOT NULL,
  `Jazyk_ID_JAZYK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `film`
--

INSERT INTO `film` (`ID_FILM`, `Nazev`, `Delka`, `Rok_vydani`, `Pocet_kopii`, `Zanr_ID_ZANR`, `Reziser_ID_REZISER`, `Jazyk_ID_JAZYK`) VALUES
(1, 'Jurský park', 110, 1993, 5, 1, 1, 1),
(2, 'Hook', 95, 2005, 3, 4, 1, 1),
(3, 'Pulp Fiction - Historky z podsvětí', 130, 1995, 4, 2, 2, 3),
(4, 'Nespoutaný Django', 122, 2015, 10, 6, 2, 5),
(5, 'Planeta Opic', 90, 2013, 9, 11, 3, 4),
(6, 'Muži v černém 3', 97, 2010, 3, 11, 3, 6),
(7, 'Vetřelci', 100, 1997, 2, 11, 4, 2),
(8, 'Avatar', 200, 2013, 1, 11, 4, 3),
(9, 'Robin Hood', 75, 2005, 10, 4, 5, 4),
(10, 'Hannibal', 85, 2003, 8, 8, 5, 6),
(11, 'Přelet nad kukaččím hnízdem', 95, 1973, 15, 8, 6, 4),
(12, 'Vlasy', 65, 1950, 6, 9, 6, 3),
(13, 'Hobbit', 215, 2015, 7, 11, 7, 4),
(14, 'Americký Sniper', 115, 2014, 10, 1, 8, 3),
(15, 'Dunkerk', 120, 2017, 11, 7, 9, 2),
(16, 'Kameňák', 95, 2007, 6, 2, 10, 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `jazyk`
--

CREATE TABLE `jazyk` (
  `ID_JAZYK` int(11) NOT NULL,
  `Nazev` varchar(20) NOT NULL,
  `Zkratka` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `jazyk`
--

INSERT INTO `jazyk` (`ID_JAZYK`, `Nazev`, `Zkratka`) VALUES
(1, 'Cesky', 'cs'),
(2, 'Anglicky', 'en'),
(3, 'Slovensky', 'sk'),
(4, 'Rusky', 'ru'),
(5, 'Chorvatsky', 'hr'),
(6, 'Španělsky', 'es');

-- --------------------------------------------------------

--
-- Struktura tabulky `mesto`
--

CREATE TABLE `mesto` (
  `ID_MESTO` int(11) NOT NULL,
  `Nazev` varchar(45) NOT NULL,
  `PSC` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `mesto`
--

INSERT INTO `mesto` (`ID_MESTO`, `Nazev`, `PSC`) VALUES
(1, 'Plzeň', '47055'),
(2, 'Praha', '45354'),
(3, 'Brno', '46988'),
(4, 'Ostrava', '41120');

-- --------------------------------------------------------

--
-- Struktura tabulky `pujcujici`
--

CREATE TABLE `pujcujici` (
  `ID_PUJCUJICI` int(11) NOT NULL,
  `Jmeno` varchar(30) NOT NULL,
  `Prijmeni` varchar(50) NOT NULL,
  `Mesto_ID_MESTO` int(11) NOT NULL,
  `Ulice` varchar(30) NOT NULL,
  `Cislo_popisne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `pujcujici`
--

INSERT INTO `pujcujici` (`ID_PUJCUJICI`, `Jmeno`, `Prijmeni`, `Mesto_ID_MESTO`, `Ulice`, `Cislo_popisne`) VALUES
(1, 'Karel', 'Vomáčka', 1, 'Hvězdoslavova', 33),
(2, 'Petr', 'Neuměl', 3, 'Pražská', 105),
(3, 'Karolína', 'Nejedlová', 2, 'Státní', 310),
(4, 'Petra', 'Kouřová', 4, 'Městská', 15),
(5, 'Pavel', 'Jedlička', 4, 'Borovičkova', 70);

-- --------------------------------------------------------

--
-- Struktura tabulky `reziser`
--

CREATE TABLE `reziser` (
  `ID_REZISER` int(11) NOT NULL,
  `Jmeno` varchar(30) NOT NULL,
  `Prijmeni` varchar(50) NOT NULL,
  `Oceneni` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `reziser`
--

INSERT INTO `reziser` (`ID_REZISER`, `Jmeno`, `Prijmeni`, `Oceneni`) VALUES
(1, 'Steven', 'Spielberg', 12),
(2, 'Quentin', 'Tarantino', 15),
(3, 'Tim', 'Burton', 7),
(4, 'James', 'Cameron', 9),
(5, 'Ridley', 'Scott', 4),
(6, 'Miloš', 'Forman', 6),
(7, 'Peter', 'Jackson', 1),
(8, 'Clint', 'Eastwood', 0),
(9, 'Christopher', 'Nolan', 13),
(10, 'Zdeněk', 'Troška', 15);

-- --------------------------------------------------------

--
-- Struktura tabulky `vypujcky`
--

CREATE TABLE `vypujcky` (
  `Film_ID_FILM` int(11) NOT NULL,
  `Pujcujici_ID_PUJCUJICI` int(11) NOT NULL,
  `Datum_vypujceni` datetime NOT NULL,
  `Datum_vraceni` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `vypujcky`
--

INSERT INTO `vypujcky` (`Film_ID_FILM`, `Pujcujici_ID_PUJCUJICI`, `Datum_vypujceni`, `Datum_vraceni`) VALUES
(1, 2, '2017-10-13 00:00:00', '2017-10-24 00:00:00'),
(5, 1, '2017-10-05 00:00:00', '2017-10-17 00:00:00'),
(6, 3, '2017-10-22 00:00:00', '2017-10-29 00:00:00'),
(7, 4, '2017-10-16 00:00:00', '2017-10-30 00:00:00'),
(8, 4, '2017-10-02 00:00:00', '2017-10-15 00:00:00'),
(10, 5, '2017-10-31 00:00:00', '2017-11-09 00:00:00'),
(12, 3, '2017-10-01 00:00:00', '2017-10-15 00:00:00'),
(13, 2, '2017-10-26 00:00:00', '2017-10-31 00:00:00'),
(15, 1, '2017-10-23 00:00:00', '2017-10-25 00:00:00'),
(16, 2, '2017-10-13 00:00:00', '2017-10-26 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabulky `zanr`
--

CREATE TABLE `zanr` (
  `ID_ZANR` int(11) NOT NULL,
  `Nazev` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `zanr`
--

INSERT INTO `zanr` (`ID_ZANR`, `Nazev`) VALUES
(1, 'Drama'),
(2, 'Komedie'),
(3, 'Parodie'),
(4, 'Dobrodružný'),
(5, 'Kovbojka'),
(6, 'Western'),
(7, 'Historický'),
(8, 'Životopisný'),
(9, 'Hudební'),
(10, 'Pohádka'),
(11, 'Sci-fi');

-- --------------------------------------------------------

--
-- Struktura pro pohled `aktualne_vypujcene`
--
DROP TABLE IF EXISTS `aktualne_vypujcene`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aktualne_vypujcene`  AS  select `vypujcky`.`Datum_vraceni` AS `Datum vrácení`,`pujcujici`.`Prijmeni` AS `Příjmení`,`pujcujici`.`Jmeno` AS `Jméno`,`mesto`.`Nazev` AS `Město`,`film`.`Nazev` AS `Film` from (((`film` join `mesto`) join `pujcujici`) join `vypujcky`) where ((`vypujcky`.`Datum_vraceni` > now()) and (`vypujcky`.`Pujcujici_ID_PUJCUJICI` = `pujcujici`.`ID_PUJCUJICI`) and (`vypujcky`.`Film_ID_FILM` = `film`.`ID_FILM`) and (`pujcujici`.`Mesto_ID_MESTO` = `mesto`.`ID_MESTO`)) ;

-- --------------------------------------------------------

--
-- Struktura pro pohled `cetnost_filmu`
--
DROP TABLE IF EXISTS `cetnost_filmu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cetnost_filmu`  AS  select `reziser`.`Prijmeni` AS `Příjmení`,`reziser`.`Jmeno` AS `Jmeno`,`film`.`Nazev` AS `Film`,count(`vypujcky`.`Film_ID_FILM`) AS `Četnost` from ((`reziser` left join `film` on((`reziser`.`ID_REZISER` = `film`.`Reziser_ID_REZISER`))) left join `vypujcky` on((`film`.`ID_FILM` = `vypujcky`.`Film_ID_FILM`))) group by `reziser`.`Prijmeni`,`reziser`.`Jmeno`,`film`.`Nazev` order by count(`vypujcky`.`Film_ID_FILM`) ;

-- --------------------------------------------------------

--
-- Struktura pro pohled `cetnost_zanru`
--
DROP TABLE IF EXISTS `cetnost_zanru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cetnost_zanru`  AS  select `zanr`.`Nazev` AS `Žánr`,count(`film`.`Zanr_ID_ZANR`) AS `Četnost` from (`zanr` left join `film` on((`zanr`.`ID_ZANR` = `film`.`Zanr_ID_ZANR`))) group by `zanr`.`Nazev` order by count(`film`.`Zanr_ID_ZANR`) ;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID_FILM`),
  ADD KEY `fk_Film_Zanr_idx` (`Zanr_ID_ZANR`),
  ADD KEY `fk_Film_Reziser1_idx` (`Reziser_ID_REZISER`),
  ADD KEY `fk_Film_Jazyk2_idx` (`Jazyk_ID_JAZYK`);

--
-- Klíče pro tabulku `jazyk`
--
ALTER TABLE `jazyk`
  ADD PRIMARY KEY (`ID_JAZYK`);

--
-- Klíče pro tabulku `mesto`
--
ALTER TABLE `mesto`
  ADD PRIMARY KEY (`ID_MESTO`);

--
-- Klíče pro tabulku `pujcujici`
--
ALTER TABLE `pujcujici`
  ADD PRIMARY KEY (`ID_PUJCUJICI`),
  ADD KEY `fk_Pujcujici_Mesto1_idx` (`Mesto_ID_MESTO`);

--
-- Klíče pro tabulku `reziser`
--
ALTER TABLE `reziser`
  ADD PRIMARY KEY (`ID_REZISER`);

--
-- Klíče pro tabulku `vypujcky`
--
ALTER TABLE `vypujcky`
  ADD PRIMARY KEY (`Film_ID_FILM`,`Pujcujici_ID_PUJCUJICI`),
  ADD KEY `fk_Vypujcky_Pujcujici1_idx` (`Pujcujici_ID_PUJCUJICI`);

--
-- Klíče pro tabulku `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`ID_ZANR`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `film`
--
ALTER TABLE `film`
  MODIFY `ID_FILM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pro tabulku `jazyk`
--
ALTER TABLE `jazyk`
  MODIFY `ID_JAZYK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pro tabulku `mesto`
--
ALTER TABLE `mesto`
  MODIFY `ID_MESTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `pujcujici`
--
ALTER TABLE `pujcujici`
  MODIFY `ID_PUJCUJICI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `reziser`
--
ALTER TABLE `reziser`
  MODIFY `ID_REZISER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pro tabulku `zanr`
--
ALTER TABLE `zanr`
  MODIFY `ID_ZANR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `fk_Film_Jazyk2` FOREIGN KEY (`Jazyk_ID_JAZYK`) REFERENCES `jazyk` (`ID_JAZYK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Film_Reziser1` FOREIGN KEY (`Reziser_ID_REZISER`) REFERENCES `reziser` (`ID_REZISER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Film_Zanr` FOREIGN KEY (`Zanr_ID_ZANR`) REFERENCES `zanr` (`ID_ZANR`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `pujcujici`
--
ALTER TABLE `pujcujici`
  ADD CONSTRAINT `fk_Pujcujici_Mesto1` FOREIGN KEY (`Mesto_ID_MESTO`) REFERENCES `mesto` (`ID_MESTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `vypujcky`
--
ALTER TABLE `vypujcky`
  ADD CONSTRAINT `fk_Vypujcky_Film1` FOREIGN KEY (`Film_ID_FILM`) REFERENCES `film` (`ID_FILM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vypujcky_Pujcujici1` FOREIGN KEY (`Pujcujici_ID_PUJCUJICI`) REFERENCES `pujcujici` (`ID_PUJCUJICI`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
