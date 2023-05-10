-- MySQL Script generated by MySQL Workbench
-- Tue May  9 12:19:19 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema petcare
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `petcare` ;

-- -----------------------------------------------------
-- Schema petcare
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `petcare` DEFAULT CHARACTER SET utf8mb4 ;
USE `petcare` ;

-- -----------------------------------------------------
-- Table `petcare`.`tipousuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`tipousuario` ;

CREATE TABLE IF NOT EXISTS `petcare`.`tipousuario` (
  `idtipousuario` INT(11) NOT NULL,
  `nombre` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`idtipousuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`administrador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`administrador` ;

CREATE TABLE IF NOT EXISTS `petcare`.`administrador` (
  `idadministrador` INT(11) NOT NULL,
  `idtipousuario` INT(11) NULL DEFAULT NULL,
  `nombres` VARCHAR(35) NULL DEFAULT NULL,
  `apellidos` VARCHAR(35) NULL DEFAULT NULL,
  `dni` CHAR(8) NULL DEFAULT NULL,
  `telefono` CHAR(9) NULL DEFAULT NULL,
  `direccion` VARCHAR(50) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  `pass` VARCHAR(45) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  `tipousuario_idtipousuario` INT(11) NOT NULL,
  PRIMARY KEY (`idadministrador`),
  INDEX `idtipousuario` (`idtipousuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`cliente` ;

CREATE TABLE IF NOT EXISTS `petcare`.`cliente` (
  `idcliente` INT(11) NOT NULL AUTO_INCREMENT,
  `idtipousuario` VARCHAR(45) NULL DEFAULT NULL,
  `nombres` VARCHAR(35) NULL DEFAULT NULL,
  `apellidos` VARCHAR(35) NULL DEFAULT NULL,
  `dni` CHAR(8) NULL DEFAULT NULL,
  `telefono` CHAR(9) NULL DEFAULT NULL,
  `direccion` VARCHAR(50) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  `pass` VARCHAR(45) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  `tipousuario_idtipousuario` INT(11) NOT NULL,
  PRIMARY KEY (`idcliente`),
  INDEX `idtipousuario` (`idtipousuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '			';


-- -----------------------------------------------------
-- Table `petcare`.`veterinario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`veterinario` ;

CREATE TABLE IF NOT EXISTS `petcare`.`veterinario` (
  `idveterinario` INT(11) NOT NULL AUTO_INCREMENT,
  `idtipousuario` INT(11) NULL DEFAULT NULL,
  `nombres` VARCHAR(35) NULL DEFAULT NULL,
  `apellidos` VARCHAR(35) NULL DEFAULT NULL,
  `dni` CHAR(8) NULL DEFAULT NULL,
  `telefono` CHAR(9) NULL DEFAULT NULL,
  `direccion` VARCHAR(50) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  `pass` VARCHAR(45) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idveterinario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`horario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`horario` ;

CREATE TABLE IF NOT EXISTS `petcare`.`horario` (
  `idhorario` INT(11) NOT NULL AUTO_INCREMENT,
  `idveterinario` INT(11) NULL DEFAULT NULL,
  `idproductoservicio` INT(11) NULL DEFAULT NULL,
  `dia` VARCHAR(9) NULL DEFAULT NULL,
  `horarioinicio` INT(11) NULL DEFAULT NULL,
  `horariofin` INT(11) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  `veterinario_idveterinario` INT(11) NOT NULL,
  PRIMARY KEY (`idhorario`),
  INDEX `idveterinario` (`idveterinario` ASC) VISIBLE,
  INDEX `idproductoservicio` (`idproductoservicio` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`especie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`especie` ;

CREATE TABLE IF NOT EXISTS `petcare`.`especie` (
  `idespecie` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(15) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idespecie`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`raza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`raza` ;

CREATE TABLE IF NOT EXISTS `petcare`.`raza` (
  `idraza` INT(11) NOT NULL AUTO_INCREMENT,
  `idespecie` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(20) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  `especie_idespecie` INT(11) NOT NULL,
  PRIMARY KEY (`idraza`),
  INDEX `idespecie` (`idespecie` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`mascota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`mascota` ;

CREATE TABLE IF NOT EXISTS `petcare`.`mascota` (
  `idmascota` INT(11) NOT NULL AUTO_INCREMENT,
  `idcliente` INT(11) NULL DEFAULT NULL,
  `idraza` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(35) NULL DEFAULT NULL,
  `fechaNac` DATE NULL DEFAULT NULL,
  `peso` DECIMAL(4,2) NULL DEFAULT NULL,
  `color` VARCHAR(17) NULL DEFAULT NULL,
  `fotoPerfil` VARCHAR(100) NULL DEFAULT NULL,
  `esterilizado` CHAR(2) NULL DEFAULT NULL,
  `etapa` VARCHAR(15) NULL DEFAULT NULL,
  `fechaRegistro` DATE NULL DEFAULT CURRENT_TIMESTAMP(),
  `estado` CHAR(1) NULL DEFAULT NULL,
  `cliente_idcliente` INT(11) NOT NULL,
  PRIMARY KEY (`idmascota`),
  INDEX `idcliente` (`idcliente` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`cita`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`cita` ;

CREATE TABLE IF NOT EXISTS `petcare`.`cita` (
  `idcita` INT(11) NOT NULL AUTO_INCREMENT,
  `idcliente` INT(11) NULL DEFAULT NULL,
  `idmascota` INT(11) NULL DEFAULT NULL,
  `idhorario` INT(11) NULL DEFAULT NULL,
  `estado` VARCHAR(15) NULL DEFAULT NULL,
  `fechacreacion` DATE NULL DEFAULT CURRENT_TIMESTAMP(),
  `cliente_idcliente` INT(11) NOT NULL,
  `horario_idhorario` INT(11) NOT NULL,
  `mascota_idmascota` INT(11) NOT NULL,
  PRIMARY KEY (`idcita`),
  INDEX `idcliente` (`idcliente` ASC) VISIBLE,
  INDEX `idmascota` (`idmascota` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`vacuna`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`vacuna` ;

CREATE TABLE IF NOT EXISTS `petcare`.`vacuna` (
  `idvacuna` INT(11) NOT NULL AUTO_INCREMENT,
  `lote` VARCHAR(15) NULL DEFAULT NULL,
  `tipo` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`idvacuna`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`detallevacuna`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`detallevacuna` ;

CREATE TABLE IF NOT EXISTS `petcare`.`detallevacuna` (
  `iddetallevacuna` INT(11) NOT NULL,
  `idmascota` INT(11) NULL DEFAULT NULL,
  `idvacuna` INT(11) NULL DEFAULT NULL,
  `idveterinario` INT(11) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT CURRENT_TIMESTAMP(),
  `observacion` VARCHAR(55) NULL DEFAULT NULL,
  `mascota_idmascota` INT(11) NOT NULL,
  PRIMARY KEY (`iddetallevacuna`),
  INDEX `idmascota` (`idmascota` ASC) VISIBLE,
  INDEX `idveterinario` (`idveterinario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`venta` ;

CREATE TABLE IF NOT EXISTS `petcare`.`venta` (
  `idventa` INT(11) NOT NULL AUTO_INCREMENT,
  `idcliente` INT(11) NULL DEFAULT NULL,
  `idveterinario` INT(11) NULL DEFAULT NULL,
  `total` DECIMAL(7,2) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT CURRENT_TIMESTAMP(),
  `estado` CHAR(1) NULL DEFAULT NULL,
  `veterinario_idveterinario` INT(11) NOT NULL,
  `cliente_idcliente` INT(11) NOT NULL,
  PRIMARY KEY (`idventa`),
  INDEX `idcliente` (`idcliente` ASC) VISIBLE,
  INDEX `idveterinario` (`idveterinario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`tipoproductoservicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`tipoproductoservicio` ;

CREATE TABLE IF NOT EXISTS `petcare`.`tipoproductoservicio` (
  `idtipoproductoservicio` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(9) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idtipoproductoservicio`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`productoservicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`productoservicio` ;

CREATE TABLE IF NOT EXISTS `petcare`.`productoservicio` (
  `idproductoservicio` INT(11) NOT NULL AUTO_INCREMENT,
  `idtipoproductoservicio` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `precio` DECIMAL(5,2) NULL DEFAULT NULL,
  `descripcion` VARCHAR(55) NULL DEFAULT NULL,
  `estado` CHAR(1) NULL DEFAULT NULL,
  `tipoproductoservicio_idtipoproductoservicio` INT(11) NOT NULL,
  PRIMARY KEY (`idproductoservicio`),
  INDEX `idtipoproductoservicio` (`idtipoproductoservicio` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `petcare`.`detalleventa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `petcare`.`detalleventa` ;

CREATE TABLE IF NOT EXISTS `petcare`.`detalleventa` (
  `iddetalleventa` INT(11) NOT NULL AUTO_INCREMENT,
  `idventa` INT(11) NULL DEFAULT NULL,
  `productoservicio` INT(11) NULL DEFAULT NULL,
  `cantidad` INT(11) NULL DEFAULT NULL,
  `importe` DECIMAL(5,2) NULL DEFAULT NULL,
  `venta_idventa` INT(11) NOT NULL,
  `productoservicio_idproductoservicio` INT(11) NOT NULL,
  PRIMARY KEY (`iddetalleventa`),
  INDEX `idventa` (`idventa` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
