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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `Carrera_idCarrera` int(11) NOT NULL,
  PRIMARY KEY (`idCurso`,`Carrera_idCarrera`),
  KEY `fk_Curso_Carrera1_idx` (`Carrera_idCarrera`),
  CONSTRAINT `fk_Curso_Carrera1` FOREIGN KEY (`Carrera_idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'HTML',1),(2,'Bases de datos',1),(3,'Javascript',1),(4,'PHP básico',1),(6,'Administración general',2),(7,'Matemática 1',2),(8,'Gerencia de proyectos',2),(9,'Gestion de Recurso Humano',2),(10,'nec tellus.',4),(11,'hymenaeos. Mauris',5),(12,'vulputate ullamcorper',2),(13,'a felis',8),(14,'aliquet odio.',16),(15,'gravida. Praesent',12),(16,'mauris sapien,',12),(17,'ante blandit',11),(18,'eros. Nam',2),(19,'amet risus.',1),(20,'Vivamus nibh',5),(21,'enim nec',1),(22,'lorem vitae',9),(23,'orci luctus',3),(24,'massa rutrum',5),(25,'enim, sit',13),(26,'magna et',4),(27,'tellus faucibus',2),(28,'Duis dignissim',6),(29,'lobortis quis,',9),(30,'cursus. Nunc',4),(31,'mollis. Duis',5),(32,'aliquet magna',1),(33,'lacinia orci,',14),(34,'magna. Phasellus',4),(35,'gravida. Praesent',5),(36,'quam. Curabitur',12),(37,'sem magna',8),(38,'sed libero.',10),(39,'Donec porttitor',11),(40,'neque. Sed',4),(41,'eu sem.',7),(42,'nisl sem,',4),(43,'Sed nulla',15),(44,'urna. Vivamus',7),(45,'Nam porttitor',9),(46,'erat, in',3),(47,'pede. Nunc',16),(48,'in consectetuer',2),(49,'ornare, elit',16),(50,'non quam.',8),(51,'eget metus.',13),(52,'Fusce mollis.',10),(53,'at fringilla',8),(54,'ornare tortor',6),(55,'Praesent eu',11),(56,'Duis a',6),(57,'sit amet',3),(58,'condimentum eget,',2),(59,'orci tincidunt',11),(60,'augue, eu',16),(61,'augue id',14),(62,'malesuada ut,',9),(63,'Sed congue,',8),(64,'odio. Phasellus',1),(65,'lacus. Cras',5),(66,'Fusce fermentum',5),(67,'ipsum. Phasellus',16),(68,'dapibus id,',2),(69,'luctus aliquet',2),(70,'Fusce mi',14),(71,'Mauris nulla.',12),(72,'sem, consequat',9),(73,'facilisis lorem',5),(74,'pede. Cras',4),(75,'lobortis ultrices.',5),(76,'magna tellus',6),(77,'ut mi.',10),(78,'arcu eu',2),(79,'mattis velit',10),(80,'augue. Sed',16),(81,'dictum. Phasellus',1),(82,'fringilla, porttitor',3),(83,'Vestibulum accumsan',15),(84,'a, auctor',11),(85,'porttitor eros',8),(86,'eu metus.',7),(87,'dapibus rutrum,',3),(88,'enim, gravida',1),(89,'gravida. Praesent',4),(90,'eu dui.',7),(91,'tincidunt dui',13),(92,'eu sem.',4),(93,'velit egestas',1),(94,'Pellentesque habitant',1),(95,'conubia nostra,',12),(96,'feugiat. Sed',8),(97,'luctus felis',10),(98,'eu metus.',2),(99,'ligula tortor,',13),(100,'mi, ac',16),(101,'nunc est,',10),(102,'et, rutrum',4),(103,'sem eget',8),(104,'mi eleifend',10),(105,'mauris blandit',7),(106,'Aliquam fringilla',12),(107,'Morbi vehicula.',16),(108,'mauris elit,',12),(109,'venenatis a,',6);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-30  9:49:43
