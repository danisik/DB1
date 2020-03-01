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

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `jazyk`
--
ALTER TABLE `jazyk`
  ADD PRIMARY KEY (`ID_JAZYK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
