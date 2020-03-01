-- MySQL Script generated by MySQL Workbench
-- Thu Oct 19 12:32:49 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Zanr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Zanr` (
  `ID_ZANR` INT NOT NULL AUTO_INCREMENT,
  `Nazev` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID_ZANR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Reziser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reziser` (
  `ID_REZISER` INT NOT NULL AUTO_INCREMENT,
  `Jmeno` VARCHAR(30) NOT NULL,
  `Prijmeni` VARCHAR(50) NOT NULL,
  `Oceneni` INT NULL,
  PRIMARY KEY (`ID_REZISER`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Jazyk`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Jazyk` (
  `ID_JAZYK` INT NOT NULL AUTO_INCREMENT,
  `Nazev` VARCHAR(20) NOT NULL,
  `Zkratka` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_JAZYK`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Film` (
  `ID_FILM` INT NOT NULL AUTO_INCREMENT,
  `Nazev` VARCHAR(45) NOT NULL,
  `Delka` INT NOT NULL,
  `Rok_vydani` INT NOT NULL,
  `Pocet_kopii` INT NOT NULL,
  `Zanr_ID_ZANR` INT NOT NULL,
  `Reziser_ID_REZISER` INT NOT NULL,
  `Jazyk_ID_JAZYK1` INT NOT NULL,
  PRIMARY KEY (`ID_FILM`),
  INDEX `fk_Film_Zanr_idx` (`Zanr_ID_ZANR` ASC),
  INDEX `fk_Film_Reziser1_idx` (`Reziser_ID_REZISER` ASC),
  INDEX `fk_Film_Jazyk2_idx` (`Jazyk_ID_JAZYK1` ASC),
  CONSTRAINT `fk_Film_Zanr`
    FOREIGN KEY (`Zanr_ID_ZANR`)
    REFERENCES `Zanr` (`ID_ZANR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Film_Reziser1`
    FOREIGN KEY (`Reziser_ID_REZISER`)
    REFERENCES `Reziser` (`ID_REZISER`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Film_Jazyk2`
    FOREIGN KEY (`Jazyk_ID_JAZYK1`)
    REFERENCES `Jazyk` (`ID_JAZYK`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mesto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mesto` (
  `ID_MESTO` INT NOT NULL AUTO_INCREMENT,
  `Nazev` VARCHAR(45) NOT NULL,
  `PSC` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ID_MESTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pujcujici`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pujcujici` (
  `ID_PUJCUJICI` INT NOT NULL AUTO_INCREMENT,
  `Jmeno` VARCHAR(30) NOT NULL,
  `Prijmeni` VARCHAR(50) NOT NULL,
  `Mesto_ID_MESTO` INT NOT NULL,
  `Ulice` VARCHAR(30) NOT NULL,
  `Cislo_popisne` INT NOT NULL,
  PRIMARY KEY (`ID_PUJCUJICI`),
  INDEX `fk_Pujcujici_Mesto1_idx` (`Mesto_ID_MESTO` ASC),
  CONSTRAINT `fk_Pujcujici_Mesto1`
    FOREIGN KEY (`Mesto_ID_MESTO`)
    REFERENCES `Mesto` (`ID_MESTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Vypujcky`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Vypujcky` (
  `Film_ID_FILM` INT NOT NULL,
  `Pujcujici_ID_PUJCUJICI` INT NOT NULL,
  `Datum_vypujceni` DATETIME NOT NULL,
  `Datum_vraceni` DATETIME NOT NULL,
  PRIMARY KEY (`Film_ID_FILM`, `Pujcujici_ID_PUJCUJICI`),
  INDEX `fk_Vypujcky_Pujcujici1_idx` (`Pujcujici_ID_PUJCUJICI` ASC),
  CONSTRAINT `fk_Vypujcky_Film1`
    FOREIGN KEY (`Film_ID_FILM`)
    REFERENCES `Film` (`ID_FILM`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vypujcky_Pujcujici1`
    FOREIGN KEY (`Pujcujici_ID_PUJCUJICI`)
    REFERENCES `Pujcujici` (`ID_PUJCUJICI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;