CREATE DATABASE  IF NOT EXISTS `universidad` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `universidad`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: universidad
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.22-MariaDB

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
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula` (
  `idAula` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,'101'),(2,'102'),(3,'103'),(4,'104'),(5,'105'),(6,'106'),(7,'107'),(8,'108'),(9,'109'),(10,'110'),(11,'201'),(12,'202'),(13,'203'),(14,'204'),(15,'205'),(16,'206'),(17,'207'),(18,'208'),(19,'209'),(20,'210'),(21,'301'),(22,'302'),(23,'303'),(24,'304'),(25,'305'),(26,'306'),(27,'307'),(28,'308'),(29,'309'),(30,'310');
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `Grado_Academico_idNivel` int(11) NOT NULL,
  PRIMARY KEY (`idCarrera`,`Grado_Academico_idNivel`),
  KEY `fk_Carrera_Grado_Academico_idx` (`Grado_Academico_idNivel`),
  CONSTRAINT `fk_Carrera_Grado_Academico` FOREIGN KEY (`Grado_Academico_idNivel`) REFERENCES `grado_academico` (`idNivel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Diseño Web',2),(2,'Administración',1),(3,'Administración',3),(4,'Ingeniería en Sistemas',1),(5,'Ingeniería en Sistemas',4),(6,'Cisco',2),(7,'Inglés',1),(8,'Inglés',3),(9,'Contabilidad',1),(10,'Derecho',1),(11,'Derecho',3),(12,'Educación',1),(13,'Educación',3),(14,'Educación',4),(15,'Turismo',1),(16,'Derecho',4);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes` (
  `carnet` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Isabella','Petty Buchanan','Heredia','25734168'),(2,'Raya','Lewis Hammond','Cartago','25481526'),(3,'Leo','Finley Sherman','San Jose','25528747'),(4,'Victor','Brock Bolton','San Jose','25760027'),(5,'Burke','Fitzgerald Holder','Heredia','25343807'),(6,'Madaline','Skinner Dixon','Cartago','25955385'),(7,'Josiah','Burgess Conner','Heredia','25013110'),(8,'Darrel','Hardy Hogan','Alajuela','24996115'),(9,'Jane','Mcdowell Daniels','San Jose','25853059'),(10,'Kevin','Crawford Wheeler','Guanacaste','26500459'),(11,'Jael','Reeves Jordan','San Jose','25503142'),(12,'Sonia','Rowland Salas','San Jose','25945612'),(13,'Cooper','Berger Tucker','Alajuela','24205820'),(14,'Drew','Copeland Dickerson','Heredia','25999656'),(15,'Porter','Jordan Simpson','Heredia','25388629'),(16,'Harriet','Bartlett Ross','Guanacaste','26434754'),(17,'April','Townsend Mullen','Guanacaste','26437332'),(18,'Sandra','Rutledge Newton','Alajuela','24827413'),(19,'Kaye','Daugherty Thompson','Guanacaste','26441826'),(20,'Logan','Stephens Cannon','Guanacaste','26760880'),(21,'Noelle','Bruce Lewis','Guanacaste','26498472'),(22,'Oprah','Lamb Osborne','Cartago','25370967'),(23,'Skyler','Travis Pacheco','Alajuela','24045837'),(24,'Deborah','Weber Castro','Alajuela','24376755'),(25,'Kendall','Mccray Allen','Heredia','25456005'),(26,'Larissa','Figueroa Miles','San Jose','25016125'),(27,'Ingrid','Olson Reed','Alajuela','24809659'),(28,'Noel','Hayes England','Alajuela','24019252'),(29,'Cade','Stokes Baxter','Cartago','25445802'),(30,'Deacon','Fowler Grant','Alajuela','24222920'),(31,'Tanner','Valentine Emerson','Alajuela','24251512'),(32,'Kessie','Harrison Tanner','Alajuela','24874403'),(33,'Carter','Mayer Jenkins','Cartago','25128009'),(34,'Nina','House English','San Jose','25391032'),(35,'Unity','Shepard Moreno','Alajuela','24340950'),(36,'Todd','Head Jarvis','Heredia','25116128'),(37,'Dacey','Charles Ramos','Cartago','25941881'),(38,'Marsden','Whitley Stephens','San Jose','25245381'),(39,'Kelsey','Mccoy Benson','Alajuela','24364451'),(40,'Rinah','Finch Crosby','Heredia','25756211'),(41,'Nathaniel','Conner Ballard','San Jose','25037045'),(42,'Jesse','Jacobs Weber','Guanacaste','26117827'),(43,'Lillian','Briggs Rush','Alajuela','24742554'),(44,'Cassady','Wolfe Bennett','Puntarenas','27810564'),(45,'Anjolie','Tillman Oliver','San Jose','25923841'),(46,'Ralph','Dennis Nixon','Alajuela','24861271'),(47,'Yoshi','Austin Mccormick','San Jose','25241413'),(48,'Venus','Maldonado Perry','Guanacaste','26793253'),(49,'Martena','Roberts Walker','Alajuela','24441559'),(50,'Raphael','Bridges Boyer','Heredia','25094745'),(51,'Rudyard','Sharp Church','San Jose','25269318'),(52,'Gail','Woodard Henson','San Jose','25006384'),(53,'Ora','Downs Harris','San Jose','25533293'),(54,'Adara','Preston Wagner','San Jose','25820319'),(55,'Riley','Gilbert Durham','San Jose','25529855'),(56,'Bradley','Kennedy Fields','San Jose','25406817'),(57,'Angela','Walter Owen','San Jose','25822084'),(58,'Nola','Holder Knox','Puntarenas','27843719'),(59,'Ina','Wolf Ramos','Alajuela','24792466'),(60,'Cedric','Graham Fowler','Heredia','25322406'),(61,'Desirae','Hoffman Castillo','Alajuela','24760317'),(62,'Marah','Kidd Norton','Guanacaste','26227847'),(63,'Raya','Barnes Diaz','Cartago','25253223'),(64,'Gregory','Wolf Cohen','San Jose','25487931'),(65,'Teagan','Petty Mcclure','Alajuela','24122746'),(66,'Lane','Riley Flynn','San Jose','25763217'),(67,'Nichole','Leonard Fox','Cartago','25340016'),(68,'Igor','Nelson Leach','Cartago','25119723'),(69,'Dora','Fitzpatrick Hensley','Alajuela','24220212'),(70,'Yetta','Bell Foster','Alajuela','24571434'),(71,'Demetria','Warren Gray','San Jose','25088172'),(72,'Chloe','Munoz Lindsay','Alajuela','24706545'),(73,'Edan','Bass Stuart','Guanacaste','26990647'),(74,'Oliver','Webb Turner','San Jose','25110735'),(75,'Jonah','Mays Ramos','Cartago','25919100'),(76,'Illana','Hopkins Dennis','Heredia','25654787'),(77,'Fatima','Cantu Jensen','Cartago','25954677'),(78,'Rylee','Branch Rich','Alajuela','24310893'),(79,'Illana','Gibbs King','Alajuela','24229793'),(80,'Solomon','Beck Daniel','San Jose','25343212'),(81,'Victor','Burke Boyer','Alajuela','24018026'),(82,'Dillon','Coffey Noble','Limon','27886252'),(83,'Caldwell','French Serrano','Cartago','25503111'),(84,'Piper','Barr Cabrera','Alajuela','24442607'),(85,'Wang','Mckinney Pate','Alajuela','24967372'),(86,'Marsden','Clayton Bartlett','San Jose','25327330'),(87,'Robin','Solomon Jenkins','San Jose','25905159'),(88,'Winifred','Duke Zimmerman','San Jose','25330025'),(89,'Priscilla','Andrews Cummings','Cartago','25967104'),(90,'Russell','Larson Robles','San Jose','25997009'),(91,'Clarke','Byrd Hahn','Alajuela','24404785'),(92,'Nolan','Sawyer Farley','Cartago','25834435'),(93,'Kathleen','Mcintosh Murphy','Heredia','25912095'),(94,'Isaiah','Johnson Mccormick','Cartago','25508364'),(95,'Suki','Norton Taylor','Heredia','25089848'),(96,'Melissa','Anthony Norman','Cartago','25704317'),(97,'Ryan','Ellis Serrano','San Jose','25016300'),(98,'Blossom','Downs Mcclure','Cartago','25399207'),(99,'Whilemina','Travis Benton','San Jose','25771274'),(100,'Amos','Mann Herring','Puntarenas','27171644');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `grado_academico`
--

DROP TABLE IF EXISTS `grado_academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado_academico` (
  `idNivel` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNivel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado_academico`
--

LOCK TABLES `grado_academico` WRITE;
/*!40000 ALTER TABLE `grado_academico` DISABLE KEYS */;
INSERT INTO `grado_academico` VALUES (1,'Bachillerato'),(2,'Tecnico'),(3,'Licenciatura'),(4,'Maestría');
/*!40000 ALTER TABLE `grado_academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL,
  `dia` varchar(45) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (0,'lunes','mañana'),(1,'lunes','tarde'),(2,'lunes','noche'),(3,'Martes','mañana'),(4,'Martes','tarde'),(5,'Martes','noche'),(6,'Miercoles','mañana'),(7,'Miercoles','tarde'),(8,'Miercoles','noche'),(9,'Juves','mañana'),(10,'Juves','tarde'),(11,'Juves','noche'),(12,'Viernes','mañana'),(13,'Viernes','tarde'),(14,'Viernes','noche'),(15,'Sabado','mañana'),(16,'Sabado','tarde');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping events for database 'universidad'
--

--
-- Dumping routines for database 'universidad'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 11:20:56
