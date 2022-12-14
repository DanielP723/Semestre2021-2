-- MySQL Script generated by MySQL Workbench
-- Wed Apr  7 12:22:28 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `PERSONAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PERSONAS` (
  `CODPERSONA` INT NOT NULL,
  `NOMB1PERS` VARCHAR(45) NOT NULL,
  `NOMB2PERS` VARCHAR(45) NULL,
  `APEL1PERS` VARCHAR(45) NOT NULL,
  `APEL2PERS` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(45) NOT NULL,
  `DIRECCION` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CODPERSONA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TIPO_ESTUDIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TIPO_ESTUDIOS` (
  `COD_TIPOE` INT NOT NULL,
  `NOMBRE_TIPOE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`COD_TIPOE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `INSTITUCION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `INSTITUCION` (
  `COD_INST` INT NOT NULL,
  `NOMB_INST` VARCHAR(45) NULL,
  `CIUDAD_INST` VARCHAR(45) NULL,
  PRIMARY KEY (`COD_INST`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ESTADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ESTADO` (
  `COD_ESTADO` INT NOT NULL,
  `DESC_ESTADO` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`COD_ESTADO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PROGRAMAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PROGRAMAS` (
  `COD_PROGRAMA` INT NOT NULL,
  `NOMBRE_PROGRAMA` VARCHAR(45) NOT NULL,
  `DURACION` INT NOT NULL,
  `VALOR` INT NOT NULL,
  `TIPO_ESTUDIOS_COD_TIPOE` INT NOT NULL,
  `INSTITUCION_COD_INST` INT NOT NULL,
  PRIMARY KEY (`COD_PROGRAMA`),
  INDEX `fk_PROGRAMAS_TIPO_ESTUDIOS1_idx` (`TIPO_ESTUDIOS_COD_TIPOE` ASC) VISIBLE,
  INDEX `fk_PROGRAMAS_INSTITUCION1_idx` (`INSTITUCION_COD_INST` ASC) VISIBLE,
  CONSTRAINT `fk_PROGRAMAS_TIPO_ESTUDIOS1`
    FOREIGN KEY (`TIPO_ESTUDIOS_COD_TIPOE`)
    REFERENCES `TIPO_ESTUDIOS` (`COD_TIPOE`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PROGRAMAS_INSTITUCION1`
    FOREIGN KEY (`INSTITUCION_COD_INST`)
    REFERENCES `INSTITUCION` (`COD_INST`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PERSONAS_PROGRAMAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PERSONAS_PROGRAMAS` (
  `PERSONAS_CODPERSONA` INT NOT NULL,
  `PROGRAMAS_COD_PROGRAMA` INT NOT NULL,
  `ESTADO_COD_ESTADO` INT NOT NULL,
  `NOTA` DECIMAL(3,2) NULL,
  `ANNO_GRADUACION` INT NULL,
  PRIMARY KEY (`PERSONAS_CODPERSONA`, `PROGRAMAS_COD_PROGRAMA`, `ESTADO_COD_ESTADO`),
  INDEX `fk_PERSONAS_has_PROGRAMAS_PROGRAMAS1_idx` (`PROGRAMAS_COD_PROGRAMA` ASC) VISIBLE,
  INDEX `fk_PERSONAS_has_PROGRAMAS_PERSONAS1_idx` (`PERSONAS_CODPERSONA` ASC) VISIBLE,
  INDEX `fk_PERSONAS_has_PROGRAMAS_ESTADO1_idx` (`ESTADO_COD_ESTADO` ASC) VISIBLE,
  CONSTRAINT `fk_PERSONAS_has_PROGRAMAS_PERSONAS1`
    FOREIGN KEY (`PERSONAS_CODPERSONA`)
    REFERENCES `PERSONAS` (`CODPERSONA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONAS_has_PROGRAMAS_PROGRAMAS1`
    FOREIGN KEY (`PROGRAMAS_COD_PROGRAMA`)
    REFERENCES `PROGRAMAS` (`COD_PROGRAMA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONAS_has_PROGRAMAS_ESTADO1`
    FOREIGN KEY (`ESTADO_COD_ESTADO`)
    REFERENCES `ESTADO` (`COD_ESTADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
