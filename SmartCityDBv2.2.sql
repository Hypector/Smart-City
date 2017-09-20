-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: smartcitydb
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `attractions`
--

DROP TABLE IF EXISTS `attractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attractions` (
  `attractionID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `streeNum` int(11) DEFAULT NULL,
  `streetName` varchar(45) DEFAULT NULL,
  `suburb` varchar(45) DEFAULT NULL,
  `areaCode` int(11) NOT NULL,
  `website` varchar(45) DEFAULT NULL,
  `attractionType` enum('Food and Drink','Retail','Service','Accomodation','Attraction','Recreation') NOT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`attractionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attractions`
--

LOCK TABLES `attractions` WRITE;
/*!40000 ALTER TABLE `attractions` DISABLE KEYS */;
INSERT INTO `attractions` VALUES (1,'Annerly Library',450,'Ipswitch Road','Annerly',4103,NULL,'Service',0),(2,'Banyo Library',284,'St Vincents Road','Banyo',4014,NULL,'Service',0),(3,'Ashgrove Library',87,'Amarina Road','Ashgrove',4060,NULL,'Service',0),(4,'Bracken Ridge Library',NULL,'Barrett road','Bracken Ridge',4017,NULL,'Service',0),(5,'Brisbane Square Library',266,'George Street','Brisbane',4000,NULL,'Service',0),(6,'Bulimba Library',NULL,'Riding Road','Bulimba',4171,NULL,'Service',0),(7,'Carina Library',NULL,'Mayfield Road','Carina',4152,NULL,'Service',0),(8,'Carindale Library',NULL,'Creek Road','Carindale',1151,NULL,'Service',0),(9,'Chermside Library',NULL,'Hamilton Road','Chermside',4032,NULL,'Service',0),(10,'Coopers Plains Library',107,'Orange Grove Road','Coopers Plains',4108,NULL,'Service',0),(11,'Corinda Library',641,'Oxley Road','Corinda',4075,NULL,'Service',0),(12,'Everton Park Library',561,'South Pine Road','Everton Park',4053,NULL,'Service',0),(13,'Fairfield Library',NULL,'Fairfield Road','Fairfield',4103,NULL,'Service',0),(14,'Garden City Library',NULL,'Logan Road','Garden City',4122,NULL,'Service',0),(15,'Grange Library',79,'Evelyn Street','Grange',4051,NULL,'Service',0),(16,'Hamilton Library',NULL,'Rossiter Parade','Hamilton',4007,NULL,'Service',0),(17,'Holland Park Library',81,'Seville Road','Holland Park',4121,NULL,'Service',0),(18,'Inala Library',NULL,'Corsair Avenue','Inala',4077,NULL,'Service',0),(19,'Indooroopilly Library',NULL,'Moggill Road','Indooroopilly',4068,NULL,'Service',0),(20,'Kenmore Library',NULL,'Brookfield Road','Kenmore',4069,NULL,'Service',0),(21,'Mitchelton Library',37,'Heliopolis Parade','Mitchelton',4053,NULL,'Service',0),(22,'Mt Coot-tha Library',NULL,'Mt Coot-tha Road','Toowong',4066,NULL,'Service',0),(23,'Mt Gravatt Library',8,'Creek Road','Mt Gravatt',4122,NULL,'Service',0),(24,'Mt Ommaney Library',NULL,'Dandenong Road','Mt Ommaney',4074,NULL,'Service',0),(25,'New Farm Library',135,'Sydney Street','New Farm',4005,NULL,'Service',0),(26,'Nundah Library',1,'Bage Street','Nundah',4012,NULL,'Service',0),(27,'Sandgate Library',NULL,'Seymour Street','Sandgate',4017,NULL,'Service',0),(28,'Stones Corner Library',280,'Logan Road','Stones Corner',4120,NULL,'Service',0),(29,'Sunnybank Hills Library',NULL,'Compton Road','Sunnybank Hills',4109,NULL,'Service',0),(30,'Toowong Library',NULL,'Sherwood Road','Toowong',4066,NULL,'Service',0),(31,'West End Library',NULL,'Boundry Street','West End',4101,NULL,'Service',0),(32,'Wynnum Library',145,'Florence Street','Wynnum',4178,NULL,'Service',0),(33,'Zillmere Library',NULL,'Jennings Street','Zillmere',4034,NULL,'Service',0);
/*!40000 ALTER TABLE `attractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `favID` int(11) NOT NULL AUTO_INCREMENT,
  `attraction` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`favID`),
  KEY `Attraction to Attraction_idx` (`attraction`),
  KEY `User to User_idx` (`user`),
  CONSTRAINT `Attraction to Attraction` FOREIGN KEY (`attraction`) REFERENCES `attractions` (`attractionID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `User to User` FOREIGN KEY (`user`) REFERENCES `users` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,1),(2,12,1),(3,31,4),(4,6,4),(5,22,3),(6,25,2),(7,18,5),(8,22,6),(9,6,6);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `userType` enum('Student','Tourist','Businessman') NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'example@fake.com','Admin','Istrator','Businessman','Password01'),(2,'zer0@zer0mail.com','First','Entry','Tourist','secret'),(3,'aidensmart00@gmail.com','Aiden','Smart','Student','qwerty'),(4,'notreal@email.com','Owen','Park','Student','also-qwerty'),(5,'Eric@Xu.com','Eric','Xu','Student','123456'),(6,'student@studentmail.com','Nicholas','Bokas','Student','654321');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-20 13:25:19
