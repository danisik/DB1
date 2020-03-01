-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 13. říj 2017, 21:44
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

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `pujcujici`
--
ALTER TABLE `pujcujici`
  ADD PRIMARY KEY (`ID_PUJCUJICI`),
  ADD KEY `fk_Pujcujici_Mesto1_idx` (`Mesto_ID_MESTO`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `pujcujici`
--
ALTER TABLE `pujcujici`
  MODIFY `ID_PUJCUJICI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `pujcujici`
--
ALTER TABLE `pujcujici`
  ADD CONSTRAINT `fk_Pujcujici_Mesto1` FOREIGN KEY (`Mesto_ID_MESTO`) REFERENCES `mesto` (`ID_MESTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
