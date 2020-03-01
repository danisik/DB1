-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 13. říj 2017, 21:15
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

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `reziser`
--
ALTER TABLE `reziser`
  ADD PRIMARY KEY (`ID_REZISER`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `reziser`
--
ALTER TABLE `reziser`
  MODIFY `ID_REZISER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
