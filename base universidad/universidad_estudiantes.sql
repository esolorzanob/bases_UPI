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
INSERT INTO `estudiantes` VALUES (1,'Isabella','Petty Buchanan','Heredia','25734168'),(2,'Raya','Lewis Hammond','Cartago','25481526'),(3,'Leo','Finley Sherman','San José','25528747'),(4,'Victor','Brock Bolton','San José','25760027'),(5,'Burke','Fitzgerald Holder','Heredia','25343807'),(6,'Madaline','Skinner Dixon','Cartago','25955385'),(7,'Josiah','Burgess Conner','Heredia','25013110'),(8,'Darrel','Hardy Hogan','Alajuela','24996115'),(9,'Jane','Mcdowell Daniels','San José','25853059'),(10,'Kevin','Crawford Wheeler','Guanacaste','26500459'),(11,'Jael','Reeves Jordan','San José','25503142'),(12,'Sonia','Rowland Salas','San José','25945612'),(13,'Cooper','Berger Tucker','Alajuela','24205820'),(14,'Drew','Copeland Dickerson','Heredia','25999656'),(15,'Porter','Jordan Simpson','Heredia','25388629'),(16,'Harriet','Bartlett Ross','Guanacaste','26434754'),(17,'April','Townsend Mullen','Guanacaste','26437332'),(18,'Sandra','Rutledge Newton','Alajuela','24827413'),(19,'Kaye','Daugherty Thompson','Guanacaste','26441826'),(20,'Logan','Stephens Cannon','Guanacaste','26760880'),(21,'Noelle','Bruce Lewis','Guanacaste','26498472'),(22,'Oprah','Lamb Osborne','Cartago','25370967'),(23,'Skyler','Travis Pacheco','Alajuela','24045837'),(24,'Deborah','Weber Castro','Alajuela','24376755'),(25,'Kendall','Mccray Allen','Heredia','25456005'),(26,'Larissa','Figueroa Miles','San José','25016125'),(27,'Ingrid','Olson Reed','Alajuela','24809659'),(28,'Noel','Hayes England','Alajuela','24019252'),(29,'Cade','Stokes Baxter','Cartago','25445802'),(30,'Deacon','Fowler Grant','Alajuela','24222920'),(31,'Tanner','Valentine Emerson','Alajuela','24251512'),(32,'Kessie','Harrison Tanner','Alajuela','24874403'),(33,'Carter','Mayer Jenkins','Cartago','25128009'),(34,'Nina','House English','San José','25391032'),(35,'Unity','Shepard Moreno','Alajuela','24340950'),(36,'Todd','Head Jarvis','Heredia','25116128'),(37,'Dacey','Charles Ramos','Cartago','25941881'),(38,'Marsden','Whitley Stephens','San José','25245381'),(39,'Kelsey','Mccoy Benson','Alajuela','24364451'),(40,'Rinah','Finch Crosby','Heredia','25756211'),(41,'Nathaniel','Conner Ballard','San José','25037045'),(42,'Jesse','Jacobs Weber','Guanacaste','26117827'),(43,'Lillian','Briggs Rush','Alajuela','24742554'),(44,'Cassady','Wolfe Bennett','Puntarenas','27810564'),(45,'Anjolie','Tillman Oliver','San José','25923841'),(46,'Ralph','Dennis Nixon','Alajuela','24861271'),(47,'Yoshi','Austin Mccormick','San José','25241413'),(48,'Venus','Maldonado Perry','Guanacaste','26793253'),(49,'Martena','Roberts Walker','Alajuela','24441559'),(50,'Raphael','Bridges Boyer','Heredia','25094745'),(51,'Rudyard','Sharp Church','San José','25269318'),(52,'Gail','Woodard Henson','San José','25006384'),(53,'Ora','Downs Harris','San José','25533293'),(54,'Adara','Preston Wagner','San José','25820319'),(55,'Riley','Gilbert Durham','San José','25529855'),(56,'Bradley','Kennedy Fields','San José','25406817'),(57,'Angela','Walter Owen','San José','25822084'),(58,'Nola','Holder Knox','Puntarenas','27843719'),(59,'Ina','Wolf Ramos','Alajuela','24792466'),(60,'Cedric','Graham Fowler','Heredia','25322406'),(61,'Desirae','Hoffman Castillo','Alajuela','24760317'),(62,'Marah','Kidd Norton','Guanacaste','26227847'),(63,'Raya','Barnes Diaz','Cartago','25253223'),(64,'Gregory','Wolf Cohen','San José','25487931'),(65,'Teagan','Petty Mcclure','Alajuela','24122746'),(66,'Lane','Riley Flynn','San José','25763217'),(67,'Nichole','Leonard Fox','Cartago','25340016'),(68,'Igor','Nelson Leach','Cartago','25119723'),(69,'Dora','Fitzpatrick Hensley','Alajuela','24220212'),(70,'Yetta','Bell Foster','Alajuela','24571434'),(71,'Demetria','Warren Gray','San José','25088172'),(72,'Chloe','Munoz Lindsay','Alajuela','24706545'),(73,'Edan','Bass Stuart','Guanacaste','26990647'),(74,'Oliver','Webb Turner','San José','25110735'),(75,'Jonah','Mays Ramos','Cartago','25919100'),(76,'Illana','Hopkins Dennis','Heredia','25654787'),(77,'Fatima','Cantu Jensen','Cartago','25954677'),(78,'Rylee','Branch Rich','Alajuela','24310893'),(79,'Illana','Gibbs King','Alajuela','24229793'),(80,'Solomon','Beck Daniel','San José','25343212'),(81,'Victor','Burke Boyer','Alajuela','24018026'),(82,'Dillon','Coffey Noble','Limón','27886252'),(83,'Caldwell','French Serrano','Cartago','25503111'),(84,'Piper','Barr Cabrera','Alajuela','24442607'),(85,'Wang','Mckinney Pate','Alajuela','24967372'),(86,'Marsden','Clayton Bartlett','San José','25327330'),(87,'Robin','Solomon Jenkins','San José','25905159'),(88,'Winifred','Duke Zimmerman','San José','25330025'),(89,'Priscilla','Andrews Cummings','Cartago','25967104'),(90,'Russell','Larson Robles','San José','25997009'),(91,'Clarke','Byrd Hahn','Alajuela','24404785'),(92,'Nolan','Sawyer Farley','Cartago','25834435'),(93,'Kathleen','Mcintosh Murphy','Heredia','25912095'),(94,'Isaiah','Johnson Mccormick','Cartago','25508364'),(95,'Suki','Norton Taylor','Heredia','25089848'),(96,'Melissa','Anthony Norman','Cartago','25704317'),(97,'Ryan','Ellis Serrano','San José','25016300'),(98,'Blossom','Downs Mcclure','Cartago','25399207'),(99,'Whilemina','Travis Benton','San José','25771274'),(100,'Amos','Mann Herring','Puntarenas','27171644');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
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
