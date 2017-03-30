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
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `carnet` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'Nathaniel','Weeks, Hebert','San José','25459315'),(2,'Signe','Richard, Baxter','Alajuela','24144670'),(3,'Dara','Joyce, Richards','San José','25916738'),(4,'Graiden','Mcfadden, Alexander','Alajuela','24659384'),(5,'Lawrence','Finley, Joyce','Heredia','25640600'),(6,'Ruby','Lloyd, Fitzpatrick','San José','25032722'),(7,'Wade','Mcdaniel, Blair','Guanacaste','26289076'),(8,'Selma','Calderon, Marquez','San José','25225283'),(9,'Ori','Oneill, Dejesus','Alajuela','24969520'),(10,'Orla','Glenn, Ramos','San José','25234038'),(11,'Madison','Brady, Curtis','Alajuela','24734040'),(12,'Kirsten','Hester, Weaver','San José','25947994'),(13,'Barry','Shepard, Warner','San José','25808129'),(14,'Rinah','Webb, Kane','San José','25935835'),(15,'Montana','Durham, Franco','San José','25393707'),(16,'Hashim','Morales, Nieves','San José','25675975'),(17,'Cooper','Mcmahon, Ballard','San José','25524774'),(18,'Basil','Fischer, Mcpherson','Alajuela','24868327'),(19,'Basil','Adams, Mcneil','San José','25531702'),(20,'Ivy','Mercer, Duncan','San José','25884722'),(21,'Kuame','Pierce, Bray','San José','25220274'),(22,'Lysandra','Franks, Franklin','Alajuela','24965344'),(23,'Wing','Stein, Browning','San José','25378695'),(24,'Ulysses','Salas, Gross','Guanacaste','26562609'),(25,'Hedda','Roberson, Jensen','San José','25987424'),(26,'Kirsten','Atkins, Hebert','Puntarenas','27045907'),(27,'Colette','Vega, Salinas','Guanacaste','26819742'),(28,'Christopher','Myers, Jackson','Alajuela','24302551'),(29,'Jennifer','Montoya, Fox','San José','25855578'),(30,'Isabella','Robertson, Potts','Puntarenas','27789514');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
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
