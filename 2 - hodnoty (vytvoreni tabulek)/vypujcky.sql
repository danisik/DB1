-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 13. říj 2017, 21:49
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

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `vypujcky`
--
ALTER TABLE `vypujcky`
  ADD PRIMARY KEY (`Film_ID_FILM`,`Pujcujici_ID_PUJCUJICI`),
  ADD KEY `fk_Vypujcky_Pujcujici1_idx` (`Pujcujici_ID_PUJCUJICI`);

--
-- Omezení pro exportované tabulky
--

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
