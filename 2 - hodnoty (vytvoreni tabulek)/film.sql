-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 18. říj 2017, 00:33
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
(1, 'Jurský park', 110, 1993, 5, 1, 1, 2),
(2, 'Hook', 95, 2005, 3, 4, 1, 1),
(3, 'Pulp Fiction - Historky z podsvětí', 130, 1995, 4, 2, 2, 1),
(4, 'Nespoutaný Django', 122, 2015, 10, 6, 2, 4),
(5, 'Planeta Opic', 90, 2013, 9, 11, 3, 6),
(6, 'Muži v černém 3', 97, 2010, 3, 11, 3, 3),
(7, 'Vetřelci', 100, 1997, 2, 11, 4, 3),
(8, 'Avatar', 200, 2013, 1, 11, 4, 5),
(9, 'Robin Hood', 75, 2005, 10, 4, 5, 1),
(10, 'Hannibal', 85, 2003, 8, 8, 5, 2),
(11, 'Přelet nad kukaččím hnízdem', 95, 1973, 15, 8, 6, 4),
(12, 'Vlasy', 65, 1950, 6, 9, 6, 3),
(13, 'Hobbit', 215, 2015, 7, 11, 7, 2),
(14, 'Americký Sniper', 115, 2014, 10, 1, 8, 2),
(15, 'Dunkerk', 120, 2017, 11, 7, 9, 5),
(16, 'Kameňák', 95, 2007, 6, 2, 10, 1);

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
  ADD KEY `fk_Film_Jazyk1_idx` (`Jazyk_ID_JAZYK`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `film`
--
ALTER TABLE `film`
  MODIFY `ID_FILM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `fk_Film_Jazyk1` FOREIGN KEY (`Jazyk_ID_JAZYK`) REFERENCES `jazyk` (`ID_JAZYK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Film_Reziser1` FOREIGN KEY (`Reziser_ID_REZISER`) REFERENCES `reziser` (`ID_REZISER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Film_Zanr` FOREIGN KEY (`Zanr_ID_ZANR`) REFERENCES `zanr` (`ID_ZANR`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
