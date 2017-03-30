CREATE DATABASE  IF NOT EXISTS `universidad` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `universidad`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: universidad
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

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
-- Table structure for table `estudiantes_has_clase`
--

DROP TABLE IF EXISTS `estudiantes_has_clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes_has_clase` (
  `Estudiantes_carnet` int(11) NOT NULL,
  `clase_idclase` int(11) NOT NULL,
  PRIMARY KEY (`Estudiantes_carnet`,`clase_idclase`),
  KEY `fk_Estudiantes_has_clase_Estudiantes1_idx` (`Estudiantes_carnet`),
  KEY `fk_Estudiantes_has_clase_clase1_idx` (`clase_idclase`),
  CONSTRAINT `fk_Estudiantes_has_clase_Estudiantes1` FOREIGN KEY (`Estudiantes_carnet`) REFERENCES `estudiantes` (`carnet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estudiantes_has_clase_clase1` FOREIGN KEY (`clase_idclase`) REFERENCES `clase` (`idclase`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes_has_clase`
--

LOCK TABLES `estudiantes_has_clase` WRITE;
/*!40000 ALTER TABLE `estudiantes_has_clase` DISABLE KEYS */;
INSERT INTO `estudiantes_has_clase` VALUES (1,18),(1,21),(1,53),(1,174),(2,166),(2,194),(3,14),(3,125),(3,181),(4,2),(4,7),(4,18),(4,19),(4,27),(4,50),(5,13),(5,29),(7,45),(7,118),(7,162),(8,87),(9,77),(9,131),(9,169),(10,1),(11,124),(12,34),(12,135),(13,17),(13,52),(13,200),(14,125),(14,158),(14,166),(15,6),(15,111),(16,9),(16,29),(16,99),(16,110),(17,64),(17,169),(19,86),(19,110),(21,29),(21,64),(22,38),(22,99),(23,62),(23,88),(23,175),(25,74),(25,149),(26,192),(27,77),(28,4),(28,72),(29,21),(30,180),(31,22),(31,77),(31,106),(32,8),(32,89),(32,174),(33,125),(34,64),(34,192),(35,127),(36,110),(36,192),(38,91),(39,199),(40,7),(40,198),(42,143),(43,95),(43,98),(43,162),(44,56),(44,63),(45,24),(46,145),(46,158),(47,28),(48,1),(48,15),(48,95),(49,56),(49,108),(50,137),(50,152),(51,157),(52,105),(52,121),(53,117),(53,169),(53,182),(53,188),(54,35),(54,59),(54,106),(55,35),(56,47),(56,140),(57,25),(57,156),(57,188),(58,18),(58,92),(58,151),(58,167),(59,77),(59,147),(60,41),(60,128),(61,76),(61,109),(61,156),(62,37),(62,78),(63,90),(64,19),(64,198),(66,93),(66,114),(66,194),(67,7),(67,165),(68,66),(68,129),(68,156),(69,157),(70,104),(71,133),(71,184),(72,30),(72,31),(72,36),(72,151),(72,183),(72,195),(73,146),(73,154),(73,180),(73,199),(76,10),(77,23),(77,62),(77,197),(79,199),(80,50),(80,54),(80,134),(81,19),(81,43),(81,67),(81,131),(84,24),(84,29),(84,112),(84,149),(85,22),(86,110),(86,182),(87,6),(87,54),(87,77),(87,109),(87,112),(87,150),(88,64),(90,26),(90,140),(90,170),(91,7),(91,85),(91,173),(92,3),(92,79),(92,89),(93,62),(93,123),(94,29),(94,145),(94,162),(94,177),(95,43),(95,118),(95,142),(96,30),(96,77),(96,89),(97,42),(97,140),(99,39),(100,16),(100,26),(100,72),(100,175);
/*!40000 ALTER TABLE `estudiantes_has_clase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-30  9:49:44
