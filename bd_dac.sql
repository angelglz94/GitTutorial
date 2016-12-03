CREATE DATABASE  IF NOT EXISTS `bd_dac` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `bd_dac`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_dac
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `status_solicitudes`
--

DROP TABLE IF EXISTS `status_solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_solicitudes` (
  `idstatus_solicitudes` int(11) NOT NULL AUTO_INCREMENT,
  `status_solicitudes` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idstatus_solicitudes`),
  UNIQUE KEY `idstatus_solicitudes_UNIQUE` (`idstatus_solicitudes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_solicitudes`
--

LOCK TABLES `status_solicitudes` WRITE;
/*!40000 ALTER TABLE `status_solicitudes` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_solicitudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgerente_casos`
--

DROP TABLE IF EXISTS `subgerente_casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgerente_casos` (
  `No.` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoIngreso` varchar(45) CHARACTER SET utf8 NOT NULL,
  `DescripcionSolicitud` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `NombreResponsable` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Direccion` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `FechaIncio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  PRIMARY KEY (`CodigoIngreso`),
  UNIQUE KEY `No.` (`No.`),
  UNIQUE KEY `No._UNIQUE` (`No.`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgerente_casos`
--

LOCK TABLES `subgerente_casos` WRITE;
/*!40000 ALTER TABLE `subgerente_casos` DISABLE KEYS */;
/*!40000 ALTER TABLE `subgerente_casos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_direcciones`
--

DROP TABLE IF EXISTS `tbl_direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_direcciones` (
  `idTipoDireccion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Direccion` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Nombre_Responsable` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idTipoDireccion`),
  UNIQUE KEY `IdTipoDireccion_UNIQUE` (`idTipoDireccion`),
  UNIQUE KEY `Nombre_Direccion_UNIQUE` (`Nombre_Direccion`),
  UNIQUE KEY `Nombre_Responsable_UNIQUE` (`Nombre_Responsable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_direcciones`
--

LOCK TABLES `tbl_direcciones` WRITE;
/*!40000 ALTER TABLE `tbl_direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_informes`
--

DROP TABLE IF EXISTS `tbl_informes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_informes` (
  `idInformes` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoIngreso` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) CHARACTER SET utf8 NOT NULL,
  `NombreSolicitante` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Telefono` int(11) NOT NULL,
  `FechaInicioProceso` date NOT NULL,
  `Estatus` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `idTipoDireccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idInformes`),
  UNIQUE KEY `idInformes_UNIQUE` (`idInformes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_informes`
--

LOCK TABLES `tbl_informes` WRITE;
/*!40000 ALTER TABLE `tbl_informes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_informes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiposolicitante`
--

DROP TABLE IF EXISTS `tbl_tiposolicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tiposolicitante` (
  `idTipoSolicitante` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionTipoSolicitante` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idTipoSolicitante`),
  UNIQUE KEY `idTipoSolicitante_UNIQUE` (`idTipoSolicitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiposolicitante`
--

LOCK TABLES `tbl_tiposolicitante` WRITE;
/*!40000 ALTER TABLE `tbl_tiposolicitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiposolicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiposolicitanteempresa`
--

DROP TABLE IF EXISTS `tbl_tiposolicitanteempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tiposolicitanteempresa` (
  `idTipoSolicitanteEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Empresa` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Direccion` varchar(65) CHARACTER SET utf8 NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Persona_Encargada` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idTipoSolicitanteEmpresa`),
  UNIQUE KEY `idTipoSolicitanteEmpresa_UNIQUE` (`idTipoSolicitanteEmpresa`),
  UNIQUE KEY `Nombre_Empresa_UNIQUE` (`Nombre_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiposolicitanteempresa`
--

LOCK TABLES `tbl_tiposolicitanteempresa` WRITE;
/*!40000 ALTER TABLE `tbl_tiposolicitanteempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiposolicitanteempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tiposolicitantepersona`
--

DROP TABLE IF EXISTS `tbl_tiposolicitantepersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tiposolicitantepersona` (
  `idTipoSolicitantePersona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Apellido_Paterno` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Apellido_Materno` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Fecha` date NOT NULL,
  `Edad` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `NumeroDPI` int(11) NOT NULL,
  `Email` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Profesion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Genero` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Calle_Principal` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Calle_Entre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Y_Calle` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Colonia` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Municipio` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idTipoSolicitantePersona`),
  UNIQUE KEY `idTipoSolicitantePersona_UNIQUE` (`idTipoSolicitantePersona`),
  UNIQUE KEY `NumeroDPI_UNIQUE` (`NumeroDPI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tiposolicitantepersona`
--

LOCK TABLES `tbl_tiposolicitantepersona` WRITE;
/*!40000 ALTER TABLE `tbl_tiposolicitantepersona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tiposolicitantepersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `apellido_paterno` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `apellido_materno` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `domicilio` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `profesion` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `grupo` varchar(100) COLLATE utf8_bin NOT NULL,
  `rol` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_Usuario`),
  UNIQUE KEY `id_Usuario_UNIQUE` (`id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-09 11:05:23
