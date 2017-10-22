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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add attraction',7,'add_attraction'),(20,'Can change attraction',7,'change_attraction'),(21,'Can delete attraction',7,'delete_attraction');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$CrGezV87jjsm$u0gOv015psEmdeUQwPx9ql8kZ08rDQieCDqRahnPXh0=','2017-10-22 16:17:32.611699',1,'admin','','','admin@admin.com',1,1,'2017-10-22 16:17:24.759818');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `createuser_signup`
--

DROP TABLE IF EXISTS `createuser_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `createuser_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `createuser_signup`
--

LOCK TABLES `createuser_signup` WRITE;
/*!40000 ALTER TABLE `createuser_signup` DISABLE KEYS */;
/*!40000 ALTER TABLE `createuser_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-22 16:25:25.989139','2','Attraction object',1,'[{\"added\": {}}]',7,1),(2,'2017-10-22 16:25:35.576314','2','Attraction object',2,'[]',7,1),(3,'2017-10-22 16:27:38.706485','3','Banvo Library',1,'[{\"added\": {}}]',7,1),(4,'2017-10-22 16:28:38.046924','4','Ashgrove Library',1,'[{\"added\": {}}]',7,1),(5,'2017-10-22 16:28:51.272127','4','Ashgrove Library',2,'[{\"changed\": {\"fields\": [\"attractionType\"]}}]',7,1),(6,'2017-10-22 16:32:26.814181','5','The Mandarin Star',1,'[{\"added\": {}}]',7,1),(7,'2017-10-22 16:34:05.945382','6','Cupcakes Amour',1,'[{\"added\": {}}]',7,1),(8,'2017-10-22 16:35:10.916138','7','Hog\'s Australia\'s Steakhouse',1,'[{\"added\": {}}]',7,1),(9,'2017-10-22 16:38:39.259229','8','What\'s Your Team',1,'[{\"added\": {}}]',7,1),(10,'2017-10-22 16:42:20.498894','9','MegaBuy Technology Superstore',1,'[{\"added\": {}}]',7,1),(11,'2017-10-22 16:44:02.576085','10','City Beach',1,'[{\"added\": {}}]',7,1),(12,'2017-10-22 16:45:20.785453','11','AVCS Hotel',1,'[{\"added\": {}}]',7,1),(13,'2017-10-22 16:46:07.634860','12','Dayboro Crown Hotel',1,'[{\"added\": {}}]',7,1),(14,'2017-10-22 16:47:20.490659','13','Club Hotel Caboolture',1,'[{\"added\": {}}]',7,1),(15,'2017-10-22 16:49:46.282227','14','Laserzone',1,'[{\"added\": {}}]',7,1),(16,'2017-10-22 16:50:37.924383','15','Fat Louies',1,'[{\"added\": {}}]',7,1),(17,'2017-10-22 16:53:27.501352','16','Puzzled Room Escape',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'homepage','attraction'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-09-16 05:55:00.138194'),(2,'auth','0001_initial','2017-09-16 05:55:02.663824'),(3,'admin','0001_initial','2017-09-16 05:55:03.377967'),(4,'admin','0002_logentry_remove_auto_add','2017-09-16 05:55:03.397033'),(5,'contenttypes','0002_remove_content_type_name','2017-09-16 05:55:03.739847'),(6,'auth','0002_alter_permission_name_max_length','2017-09-16 05:55:04.001278'),(7,'auth','0003_alter_user_email_max_length','2017-09-16 05:55:04.271986'),(8,'auth','0004_alter_user_username_opts','2017-09-16 05:55:04.292099'),(9,'auth','0005_alter_user_last_login_null','2017-09-16 05:55:04.462028'),(10,'auth','0006_require_contenttypes_0002','2017-09-16 05:55:04.475075'),(11,'auth','0007_alter_validators_add_error_messages','2017-09-16 05:55:04.500106'),(12,'auth','0008_alter_user_username_max_length','2017-09-16 05:55:04.731002'),(13,'sessions','0001_initial','2017-09-16 05:55:04.902574'),(14,'homepage','0001_initial','2017-10-09 06:42:13.531178');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qqexm13s22bzptm5flo36x66yvdo64nh','Zjg1ZTNlMGJkN2FlZTU5ODE2YzRlMWFjY2I2M2JmMGUwMTdiNzk3MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZWRmZThkY2VjNDMxZDNlNmZkOTc2ZTdhZDZiYTYxMTAwNTZkMmMyIn0=','2017-11-05 16:17:32.613700');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
-- Table structure for table `homepage_attraction`
--

DROP TABLE IF EXISTS `homepage_attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_attraction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `streetNum` int(11) NOT NULL,
  `StreetName` varchar(30) NOT NULL,
  `suburb` varchar(30) NOT NULL,
  `areaCode` int(11) NOT NULL,
  `attractionType` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_attraction`
--

LOCK TABLES `homepage_attraction` WRITE;
/*!40000 ALTER TABLE `homepage_attraction` DISABLE KEYS */;
INSERT INTO `homepage_attraction` VALUES (2,'Annerly Library',450,'Ipswitch Road','Annerly',4103,'Service'),(3,'Banvo Library',284,'St Vincents Road','Banvo',4014,'Service'),(4,'Ashgrove Library',87,'Amarina Road','Ashgrove',4060,'Service'),(5,'The Mandarin Star',496,'Gympie Road','Strathpine',4500,'Food and Drink'),(6,'Cupcakes Amour',265,'Hamilton Road','Chermside',4032,'Food and Drink'),(7,'Hog\'s Australia\'s Steakhouse',115,'Redcliffe Parade','Redcliffe',4020,'Food and Drink'),(8,'What\'s Your Team',89,'Redcliffe Parade','Redcliffe',4020,'Retail'),(9,'MegaBuy Technology Superstore',844,'Gympie Road','Chermside',4032,'Retail'),(10,'City Beach',13,'Cavill Ave','Surfers Paradise',4217,'Retail'),(11,'AVCS Hotel',7,'Staghorn Ave','Surfers Paradise',4217,'Accommodation'),(12,'Dayboro Crown Hotel',1,'Bradley Street','Dayboro',4521,'Accommodation'),(13,'Club Hotel Caboolture',16,'Matthew Terrace','Caboolture',4510,'Accommodation'),(14,'Laserzone',561,'Gympie Road','Lawnton',4501,'Recreation'),(15,'Fat Louies',124,'Albert Street','Brisbane City',4000,'Recreation'),(16,'Puzzled Room Escape',1177,'Logan Road','Holland Park West',4121,'Recreation');
/*!40000 ALTER TABLE `homepage_attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_users`
--

DROP TABLE IF EXISTS `homepage_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `firstNme` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `userType` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_users`
--

LOCK TABLES `homepage_users` WRITE;
/*!40000 ALTER TABLE `homepage_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
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

-- Dump completed on 2017-10-23  2:55:40
