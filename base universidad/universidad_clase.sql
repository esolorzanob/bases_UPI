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
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clase` (
  `idclase` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `Profesor_carnet` int(11) NOT NULL,
  `Curso_idCurso` int(11) NOT NULL,
  `Horario_idHorario` int(11) NOT NULL,
  `Aula_idAula` int(11) NOT NULL,
  PRIMARY KEY (`idclase`,`Profesor_carnet`,`Curso_idCurso`,`Horario_idHorario`,`Aula_idAula`),
  KEY `fk_clase_Profesor1_idx` (`Profesor_carnet`),
  KEY `fk_clase_Curso1_idx` (`Curso_idCurso`),
  KEY `fk_clase_Horario1_idx` (`Horario_idHorario`),
  KEY `fk_clase_Aula1_idx` (`Aula_idAula`),
  CONSTRAINT `fk_clase_Aula1` FOREIGN KEY (`Aula_idAula`) REFERENCES `aula` (`idAula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clase_Curso1` FOREIGN KEY (`Curso_idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clase_Horario1` FOREIGN KEY (`Horario_idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clase_Profesor1` FOREIGN KEY (`Profesor_carnet`) REFERENCES `profesor` (`carnet`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,'orci, in',5,106,5,2),(2,'molestie arcu.',25,109,10,11),(3,'enim. Etiam',15,72,14,22),(4,'enim diam',21,64,10,7),(5,'et nunc.',16,61,3,16),(6,'mi. Aliquam',1,37,6,22),(7,'Ut semper',16,64,12,24),(8,'elit sed',28,3,7,3),(9,'mi pede,',7,108,9,15),(10,'convallis, ante',27,66,0,22),(11,'amet, consectetuer',16,2,9,14),(12,'non, hendrerit',24,74,10,3),(13,'nibh enim,',13,32,9,17),(14,'Aenean euismod',6,105,3,21),(15,'non, dapibus',15,33,2,14),(16,'Sed diam',30,62,10,7),(17,'habitant morbi',6,9,5,14),(18,'luctus vulputate,',3,32,5,30),(19,'est, mollis',2,101,14,16),(20,'sollicitudin adipiscing',8,29,13,12),(21,'Mauris blandit',14,71,9,14),(22,'Fusce fermentum',3,97,7,13),(23,'nonummy ipsum',12,44,0,22),(24,'augue malesuada',5,90,0,17),(25,'aliquam arcu.',28,81,8,30),(26,'placerat eget,',19,103,8,7),(27,'Quisque purus',27,6,0,1),(28,'eu arcu.',1,26,8,19),(29,'cursus in,',27,71,2,21),(30,'neque. Sed',16,101,9,12),(31,'tellus faucibus',28,42,8,11),(32,'neque tellus,',12,63,14,23),(33,'dolor. Donec',3,28,4,14),(34,'sollicitudin orci',2,13,16,15),(35,'felis ullamcorper',24,46,15,19),(36,'Morbi non',10,18,6,4),(37,'in, dolor.',17,30,0,15),(38,'lacus pede',26,64,6,9),(39,'ullamcorper viverra.',26,40,4,27),(40,'orci luctus',22,68,6,18),(41,'rhoncus. Nullam',4,109,12,16),(42,'ipsum. Suspendisse',13,12,5,13),(43,'scelerisque neque',3,69,16,9),(44,'mattis ornare,',1,9,10,5),(45,'erat volutpat.',13,25,0,9),(46,'Mauris magna.',13,63,9,25),(47,'blandit. Nam',5,18,15,6),(48,'semper et,',1,53,12,12),(49,'iaculis nec,',4,89,10,12),(50,'lectus sit',13,35,12,2),(51,'ac arcu.',1,8,11,15),(52,'non, hendrerit',4,6,3,25),(53,'accumsan interdum',13,62,10,18),(54,'dolor vitae',11,85,15,1),(55,'et, euismod',4,103,16,10),(56,'neque. Sed',15,85,10,8),(57,'penatibus et',7,104,1,19),(58,'ullamcorper, nisl',12,70,0,1),(59,'in faucibus',20,97,5,24),(60,'cursus luctus,',9,71,10,7),(61,'nec ligula',19,72,3,13),(62,'Mauris blandit',4,105,9,28),(63,'Duis sit',24,94,7,20),(64,'a nunc.',13,89,13,5),(65,'vitae, sodales',14,26,14,8),(66,'vitae odio',30,23,9,26),(67,'Nunc quis',20,65,1,26),(68,'senectus et',6,11,12,14),(69,'enim consequat',20,96,10,30),(70,'tempus scelerisque,',22,54,2,10),(71,'faucibus ut,',30,19,2,4),(72,'lorem tristique',3,70,12,19),(73,'non massa',29,47,12,11),(74,'Integer aliquam',19,30,9,24),(75,'ligula tortor,',2,59,10,18),(76,'Integer sem',12,27,6,12),(77,'posuere, enim',2,80,0,27),(78,'nisl. Quisque',16,16,12,27),(79,'ipsum nunc',6,33,14,24),(80,'diam eu',21,16,11,22),(81,'Ut tincidunt',30,32,14,15),(82,'vehicula aliquet',29,87,6,7),(83,'mauris sagittis',29,48,4,25),(84,'morbi tristique',28,59,11,21),(85,'rutrum magna.',7,39,6,5),(86,'ligula. Nullam',8,70,14,8),(87,'nisi a',17,64,16,27),(88,'non lorem',22,61,5,22),(89,'velit justo',11,21,8,11),(90,'ultricies dignissim',3,72,7,25),(91,'risus. In',17,97,16,23),(92,'magna. Cras',22,53,16,4),(93,'accumsan sed,',18,104,12,25),(94,'nisl arcu',30,23,13,5),(95,'convallis, ante',10,107,1,7),(96,'parturient montes,',6,27,7,21),(97,'Class aptent',23,69,1,2),(98,'libero. Donec',24,86,1,7),(99,'sit amet,',13,101,6,20),(100,'venenatis a,',17,10,5,23),(101,'non, egestas',5,34,15,22),(102,'lacus. Quisque',25,1,12,19),(103,'posuere, enim',2,37,1,18),(104,'et pede.',17,10,14,20),(105,'in, dolor.',5,41,2,19),(106,'Aenean gravida',15,10,5,4),(107,'dictum augue',28,106,0,15),(108,'Quisque imperdiet,',26,6,0,20),(109,'Ut sagittis',4,81,8,30),(110,'amet ornare',29,66,10,22),(111,'eu dui.',28,3,8,10),(112,'Maecenas libero',16,56,15,17),(113,'dictum mi,',11,44,4,20),(114,'commodo ipsum.',28,108,13,4),(115,'consectetuer adipiscing',10,24,3,22),(116,'leo elementum',1,70,15,7),(117,'odio vel',3,29,12,2),(118,'ultrices, mauris',16,76,16,9),(119,'Mauris vel',26,92,9,15),(120,'Donec felis',29,80,3,10),(121,'Vestibulum accumsan',13,29,11,16),(122,'tristique senectus',14,28,14,22),(123,'ipsum primis',19,33,13,17),(124,'iaculis nec,',20,106,11,14),(125,'ut dolor',12,70,12,12),(126,'magna. Phasellus',3,57,11,15),(127,'Vivamus euismod',18,37,13,16),(128,'et risus.',13,88,0,2),(129,'Phasellus vitae',5,108,8,8),(130,'sit amet',24,7,6,30),(131,'commodo hendrerit.',4,66,14,5),(132,'ipsum leo',14,105,3,4),(133,'ornare placerat,',7,100,4,11),(134,'dignissim. Maecenas',15,32,0,22),(135,'enim. Mauris',13,34,9,5),(136,'placerat velit.',30,6,3,30),(137,'Cras convallis',1,10,11,3),(138,'nisl arcu',11,14,5,21),(139,'dui nec',18,91,6,26),(140,'ornare, elit',29,36,16,6),(141,'vitae nibh.',30,90,15,28),(142,'dapibus ligula.',2,29,13,24),(143,'Integer aliquam',15,94,5,15),(144,'lectus. Nullam',11,22,3,5),(145,'commodo ipsum.',16,61,14,7),(146,'Cras vulputate',20,58,0,3),(147,'Suspendisse aliquet',17,60,15,13),(148,'tristique pellentesque,',21,51,15,14),(149,'eu elit.',16,26,14,10),(150,'rutrum magna.',3,103,13,29),(151,'ac mattis',26,18,1,22),(152,'mi, ac',7,105,2,13),(153,'sociis natoque',2,18,3,20),(154,'ornare lectus',23,20,2,15),(155,'cursus et,',9,40,0,7),(156,'tempus scelerisque,',10,96,12,9),(157,'Cras pellentesque.',22,105,16,19),(158,'mi tempor',17,71,4,8),(159,'Aliquam ultrices',8,104,2,1),(160,'vitae, sodales',8,28,5,14),(161,'ultricies ornare,',29,6,10,15),(162,'leo. Morbi',21,25,10,29),(163,'nibh lacinia',23,91,4,28),(164,'vel arcu',10,105,8,11),(165,'pede. Cum',11,82,12,25),(166,'dolor, tempus',15,80,1,24),(167,'ipsum. Curabitur',24,30,11,15),(168,'ipsum primis',1,84,0,7),(169,'habitant morbi',7,16,0,29),(170,'Cras lorem',9,76,4,30),(171,'rutrum lorem',30,38,14,29),(172,'elit. Nulla',29,68,7,6),(173,'est. Nunc',17,33,15,21),(174,'erat eget',13,80,10,6),(175,'cursus. Nunc',24,21,14,28),(176,'sagittis felis.',5,38,2,18),(177,'nisl elementum',16,4,14,22),(178,'faucibus ut,',7,25,11,11),(179,'Proin nisl',4,12,16,2),(180,'orci. Ut',11,82,3,3),(181,'Nullam vitae',21,69,2,5),(182,'tortor at',8,18,9,27),(183,'in consectetuer',25,64,6,18),(184,'auctor vitae,',29,41,10,15),(185,'fringilla mi',18,46,0,16),(186,'Cum sociis',20,96,10,28),(187,'mi eleifend',5,46,0,29),(188,'amet, consectetuer',19,83,8,22),(189,'enim. Etiam',5,74,11,11),(190,'volutpat nunc',29,99,11,2),(191,'Ut nec',23,90,9,4),(192,'id risus',30,8,8,19),(193,'velit eget',29,100,3,3),(194,'montes, nascetur',25,41,7,7),(195,'sed sem',20,78,14,12),(196,'magna et',8,103,2,12),(197,'cursus vestibulum.',30,78,15,15),(198,'Cras dolor',11,59,3,9),(199,'dapibus quam',4,70,13,1),(200,'aliquam eu,',14,51,6,6);
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
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
