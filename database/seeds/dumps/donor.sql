-- MySQL dump 10.14  Distrib 5.5.44-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: donorportal
-- ------------------------------------------------------
-- Server version	5.5.44-MariaDB

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_username_unique` (`username`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Goldengide','$2y$10$8QWouBckrPUCmmeSQs5OQemoF/d8X2I1xeaXbo6jGXp9zwStqTCqq','goldengide@yahoo.com',NULL,'2016-09-29 19:23:01','2016-09-29 19:23:01'),(2,'toluwanimi','$2y$10$XhpEQwjIM4sgsVtjEAGQG.7ks9EVyTDq6VdcHppCeVEqCc8TaEeie','tolwanimi@gmail.com',NULL,'2016-11-18 20:46:48','2016-11-18 20:46:48');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_products`
--

DROP TABLE IF EXISTS `blood_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blood_bag_no` int(11) NOT NULL,
  `blood_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `date_collected` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blood_products_blood_bag_no_unique` (`blood_bag_no`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_products`
--

LOCK TABLES `blood_products` WRITE;
/*!40000 ALTER TABLE `blood_products` DISABLE KEYS */;
INSERT INTO `blood_products` VALUES (1,1,'A+',9,3,5,'2016-10-31','2016-10-31 11:56:35','2016-10-31 11:56:35'),(2,12484,'B+',1,6,8,'2017-02-02','2017-02-09 08:34:37','2017-02-09 08:34:37'),(3,37,'O+',1,11,11,'0000-00-00','2017-02-09 11:33:05','2017-02-09 11:33:05'),(4,12354,'O+',1,12,10,'1234-04-05','2017-02-09 11:33:08','2017-02-09 11:33:08'),(5,38,'AB+',1,10,13,'0000-00-00','2017-02-09 11:34:06','2017-02-09 11:34:06'),(6,33,'B+',1,9,12,'2017-02-02','2017-02-09 11:34:15','2017-02-09 11:34:15'),(7,1996,'O+',1,12,10,'0002-05-31','2017-02-09 11:34:18','2017-02-09 11:34:18'),(8,9999,'loading...',1,12,10,'1998-04-11','2017-02-09 11:34:46','2017-02-09 11:34:46'),(9,40,'O+',1,14,14,'0000-00-00','2017-02-09 11:35:23','2017-02-09 11:35:23'),(10,67,'O+',1,13,9,'2017-03-25','2017-02-09 11:36:38','2017-02-09 11:36:38'),(11,71,'A+',1,17,13,'0000-00-00','2017-02-09 11:59:51','2017-02-09 11:59:51'),(12,97,'O-',1,16,12,'2017-02-09','2017-02-09 12:00:10','2017-02-09 12:00:10'),(13,51,'O+',1,15,11,'0000-00-00','2017-02-09 12:02:15','2017-02-09 12:02:15'),(14,89,'O-',1,18,9,'2017-02-09','2017-02-09 12:03:22','2017-02-09 12:03:22'),(15,50,'O-',1,19,14,'0000-00-00','2017-02-09 12:03:32','2017-02-09 12:03:32'),(16,123,'B+',1,9,12,'2017-01-23','2017-02-09 12:13:04','2017-02-09 12:13:04');
/*!40000 ALTER TABLE `blood_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_types`
--

DROP TABLE IF EXISTS `blood_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_types`
--

LOCK TABLES `blood_types` WRITE;
/*!40000 ALTER TABLE `blood_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `blood_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `due_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `month` int(11) NOT NULL,
  `blood_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `reminder_set` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `donors_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES (1,'Adeyanju Tolu','09090005267','toluwanimiadeyanju02@gmail.com','Lagos','479','tolu','tolu','female','2016-10-06','2017-01-03 23:00:00',9,'A+','',3,0,'2016-10-06 10:37:02','2016-10-06 10:37:02'),(2,'Aina Dada','08038489387','aina.dada@gmail.com','Edo','211','aina','aina','male','2016-10-21','2017-01-18 23:00:00',9,'A+','',4,0,'2016-10-21 12:38:56','2016-10-21 12:38:56'),(3,'Samson Oyenekan','08038333952','samsonoyenekan@gmail.com','Lagos','487','samsondimeji','oyenekan','male','2016-10-31','2016-10-31 11:56:35',9,'A+','',5,0,'2016-10-31 11:54:20','2016-10-31 11:56:35'),(4,'Sola Adeyanju','08067911979','sola.adeyanju@gmail.com','Lagos','483','solaadeyanju','solaadeyanju','male','2016-12-13','2017-03-13 00:00:00',11,'O+','',7,0,'2016-12-13 08:08:29','2016-12-13 08:08:29'),(5,'francis adereti','08135616117','francis.adereti@medifix.ng','Lagos','479','francis','francis','male','2016-12-13','2017-03-13 00:00:00',11,'O+','',7,0,'2016-12-13 09:38:31','2016-12-13 09:38:31'),(6,'Abayomi ','07063358777','abayomiola52@yahoo.com','Lagos','485','abayorme','akinsola','male','2017-02-09','2017-02-09 08:34:37',1,'B+','',8,0,'2017-02-09 08:29:51','2017-02-09 08:34:37'),(7,'Akinsola','07063358737','olasunkami010@gmail.com','Lagos','492','a-kube@hotmail.com','akinsola','male','2017-02-09','2017-05-10 00:00:00',1,'A+','',8,0,'2017-02-09 08:45:22','2017-02-09 08:45:22'),(8,'Akinsol ola','09490343212','olasunkami010@gmail.com','Yobe','733','abayomiola52@yahoo.com','akinsola','male','2017-02-09','2017-05-10 00:00:00',1,'O+','',8,0,'2017-02-09 08:47:25','2017-02-09 08:47:25'),(9,'Abayomi','07063358721','abayomiola52@yahoo.com','Lagos','492','abayor','akinsola10','male','2017-02-09','2017-02-09 12:13:04',1,'B+','',12,0,'2017-02-09 11:27:02','2017-02-09 12:13:04'),(10,'olaniran omobolaji. I','08180045916','olaniranomobolajibj@gmail.com','Ogun','558','olaniranomobolajibj@gmail.com','solferino','male','2017-02-09','2017-02-09 11:34:06',1,'AB+','',13,0,'2017-02-09 11:27:35','2017-02-09 11:34:06'),(11,'Okenwa-Martins, Chinedu','07063688486','chinexy.jmart@gmail.com','Imo','275','samuel martins','samuelmartins','male','2017-02-09','2017-02-09 11:33:05',1,'O+','',11,0,'2017-02-09 11:27:36','2017-02-09 11:33:05'),(12,'Adeyemi Samuel','08094904940','adeyemisam23@yahoo.com','Osun','579','samuel','Solferino1859','male','2017-02-09','2017-02-09 11:34:46',1,'O+','',10,0,'2017-02-09 11:27:37','2017-02-09 11:34:46'),(13,'kuyoro sodiq','08121199090','abiouduns11@gmail.com','Lagos','485','holuwasegun453','Donttrust','male','2017-02-09','2017-05-10 00:00:00',1,'O+','',9,0,'2017-02-09 11:27:44','2017-02-09 12:06:37'),(14,'BENJAMIN AGHORO','08139055684','benjiaghoro@yahoo.com','Delta','166','benjiaghoro@yahoo.com','aghoro','male','2017-02-09','2017-02-09 11:35:23',1,'O+','',14,0,'2017-02-09 11:30:04','2017-02-09 11:35:23'),(15,'Blessing Abraham','09038090517','blessingpeace@gmail.com','Akwa Ibom','4','blessingpeace','09038090517','female','2017-02-09','2017-02-09 12:02:15',1,'O+','',11,0,'2017-02-09 11:57:24','2017-02-09 12:02:15'),(16,'aj','09023846152','olasunkami010@gmail.com','Borno','121','abayorki','akinsola10','male','2017-02-09','2017-02-09 12:00:10',1,'O-','',12,0,'2017-02-09 11:58:55','2017-02-09 12:00:10'),(17,'alade olanrewaju','08054750195','bolajinho@yahoo.com','Ogun','542','titiny@gmail.com','jabkxh;;l','male','2017-02-09','2017-02-09 11:59:51',1,'A+','',13,0,'2017-02-09 11:59:19','2017-02-09 11:59:51'),(18,'bolatito','08088903013','abiouduns11@yahoo.com','Lagos','479','holuwasegun','mylove','male','2017-02-09','2017-02-09 12:03:22',1,'O-','',9,0,'2017-02-09 12:00:31','2017-02-09 12:03:22'),(19,'juke bola','09031625745','dayo@yahoo.com','Imo','266','hiinty','xak nkqas','male','2017-02-09','2017-02-09 12:03:32',1,'O-','',14,0,'2017-02-09 12:02:49','2017-02-09 12:03:32'),(20,'akinsola ty','08081234212','olasunkami010@gmail.com','Yobe','719','aui','akinsola10','male','2017-02-09','2017-05-10 00:00:00',1,'O-','',12,0,'2017-02-09 12:05:53','2017-02-09 12:05:53');
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors_recruits`
--

DROP TABLE IF EXISTS `donors_recruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donors_recruits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `due_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `month` int(11) NOT NULL,
  `blood_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_id` int(11) NOT NULL,
  `reminder_set` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `donors_recruits_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors_recruits`
--

LOCK TABLES `donors_recruits` WRITE;
/*!40000 ALTER TABLE `donors_recruits` DISABLE KEYS */;
INSERT INTO `donors_recruits` VALUES (1,'Goldengide','08174007780','amowogbajegideon@gmail.com','Akwa Ibom','1','Goldengide','goldengide','male','0000-00-00','0000-00-00 00:00:00',8,'O+','',0,0,'2016-09-29 01:17:15','2016-09-29 01:17:15'),(2,'Goldengide','08021312312','goldengide@yahoo.com','Akwa Ibom','8','GoodGuy','goldengide','male','0000-00-00','0000-00-00 00:00:00',8,'O+','',0,0,'2016-09-29 01:24:31','2016-09-29 01:24:31'),(3,'Goldengide','08039346388','goldengide@gmail.com','Akwa Ibom','1','gollyKeeper','goldengide','male','0000-00-00','0000-00-00 00:00:00',8,'O+','',0,0,'2016-09-29 01:26:19','2016-09-29 01:26:19'),(4,'Gideon Amowogbaje','07063592566','g.amowogbaje@student.oauife.edu.ng','Akwa Ibom','1','OkNow','goldengide','male','0000-00-00','0000-00-00 00:00:00',8,'O-','',0,0,'2016-09-29 01:28:30','2016-09-29 01:28:30');
/*!40000 ALTER TABLE `donors_recruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2016_07_24_170038_create_users_table',1),('2016_07_24_170211_create_admins_table',1),('2016_07_24_170256_create_blood_products_table',1),('2016_07_24_170333_create_blood_types_table',1),('2016_07_24_170355_create_donors_table',1),('2016_07_24_170434_create_password_resets_table',1),('2016_07_24_170502_create_states_table',1),('2016_07_24_170531_create_state_and_lgas_table',1),('2016_07_24_171040_create_notifications_table',1),('2016_07_27_213448_create_reminder_table',1),('2016_09_29_011716_create_donors_recruit',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `org_unique_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'Infinite MediFix Limited has added a donor Tolu','http://donor.redbank.com.ng/donor/3',100,'',0,'2016-10-06 10:37:02','2016-10-06 10:37:02'),(2,'Sickle Cell Aid Foundation has added a donor Aina','http://donor.redbank.com.ng/donor/4',100,'',0,'2016-10-21 12:38:56','2016-10-21 12:38:56'),(3,'Calebolasam Public Solutions has added a donor Samsondimeji','http://donor.redbank.com.ng/donor/5',100,'uploads/90a8fc9ddc184360da70938db40370bc.jpg',0,'2016-10-31 11:54:20','2016-10-31 11:54:20'),(4,'Samson Oyenekan alias <b><i>samsondimeji</i></b> has donated blood with bag no 001 to Calebolasam Public Solutions Organization','http://donor.redbank.com.ng/analytics',100,'uploads/90a8fc9ddc184360da70938db40370bc.jpg',0,'2016-10-31 11:56:35','2016-10-31 11:56:35'),(5,'iQube Labs has added a donor Solaadeyanju','http://donor.redbank.com.ng/donor/7',100,'',0,'2016-12-13 08:08:29','2016-12-13 08:08:29'),(6,'iQube Labs has added a donor Francis','http://donor.redbank.com.ng/donor/7',100,'',0,'2016-12-13 09:38:31','2016-12-13 09:38:31'),(7,'Cube Foundation has added a donor Abayorme','http://donor.redbank.com.ng/donor/8',100,'',0,'2017-02-09 08:29:51','2017-02-09 08:29:51'),(8,'Abayomi  alias <b><i>abayorme</i></b> has donated blood with bag no 12484 to Cube Foundation Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 08:34:37','2017-02-09 08:34:37'),(9,'Cube Foundation has added a donor A-kube@hotmail.com','http://donor.redbank.com.ng/donor/8',100,'',0,'2017-02-09 08:45:22','2017-02-09 08:45:22'),(10,'Cube Foundation has added a donor Abayomiola52@yahoo.com','http://donor.redbank.com.ng/donor/8',100,'',0,'2017-02-09 08:47:25','2017-02-09 08:47:25'),(11,'RED CROSS DEMO has added a donor Abayor','http://donor.redbank.com.ng/donor/12',100,'',0,'2017-02-09 11:27:02','2017-02-09 11:27:02'),(12,'Nigeria Red Cross Society has added a donor Olaniranomobolajibj@gmail.com','http://donor.redbank.com.ng/donor/13',100,'',0,'2017-02-09 11:27:35','2017-02-09 11:27:35'),(13,'Nigerian Red Cross Society has added a donor Samuel Martins','http://donor.redbank.com.ng/donor/11',100,'',0,'2017-02-09 11:27:36','2017-02-09 11:27:36'),(14,'Nigerian Red Cross Society has added a donor Samuel','http://donor.redbank.com.ng/donor/10',100,'',0,'2017-02-09 11:27:37','2017-02-09 11:27:37'),(15,'nigeriaredcross has added a donor Holuwasegun453','http://donor.redbank.com.ng/donor/9',100,'',0,'2017-02-09 11:27:44','2017-02-09 11:27:44'),(16,'NIGERIAN RED CROSS SOCIETY has added a donor Benjiaghoro@yahoo.com','http://donor.redbank.com.ng/donor/14',100,'',0,'2017-02-09 11:30:04','2017-02-09 11:30:04'),(17,'Okenwa-Martins, Chinedu alias <b><i>samuel martins</i></b> has donated blood with bag no 037 to Nigerian Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:33:05','2017-02-09 11:33:05'),(18,'Adeyemi Samuel alias <b><i>samuel</i></b> has donated blood with bag no 12354 to Nigerian Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:33:08','2017-02-09 11:33:08'),(19,'olaniran omobolaji. I alias <b><i>olaniranomobolajibj@gmail.com</i></b> has donated blood with bag no 038 to Nigeria Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:34:06','2017-02-09 11:34:06'),(20,'Abayomi alias <b><i>abayor</i></b> has donated blood with bag no 033 to RED CROSS DEMO Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:34:15','2017-02-09 11:34:15'),(21,'Adeyemi Samuel alias <b><i>samuel</i></b> has donated blood with bag no 1996 to Nigerian Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:34:18','2017-02-09 11:34:18'),(22,'Adeyemi Samuel alias <b><i>samuel</i></b> has donated blood with bag no 9999 to Nigerian Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:34:46','2017-02-09 11:34:46'),(23,'BENJAMIN AGHORO alias <b><i>benjiaghoro@yahoo.com</i></b> has donated blood with bag no 040 to NIGERIAN RED CROSS SOCIETY Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:35:23','2017-02-09 11:35:23'),(24,'kuyoro sodiq alias <b><i>holuwasegun453</i></b> has donated blood with bag no 67 to nigeriaredcross Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:36:38','2017-02-09 11:36:38'),(25,'Nigerian Red Cross Society has added a donor Blessingpeace','http://donor.redbank.com.ng/donor/11',100,'',0,'2017-02-09 11:57:24','2017-02-09 11:57:24'),(26,'RED CROSS DEMO has added a donor Abayorki','http://donor.redbank.com.ng/donor/12',100,'',0,'2017-02-09 11:58:55','2017-02-09 11:58:55'),(27,'Nigeria Red Cross Society has added a donor Titiny@gmail.com','http://donor.redbank.com.ng/donor/13',100,'',0,'2017-02-09 11:59:19','2017-02-09 11:59:19'),(28,'alade olanrewaju alias <b><i>titiny@gmail.com</i></b> has donated blood with bag no 071 to Nigeria Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 11:59:51','2017-02-09 11:59:51'),(29,'aj alias <b><i>abayorki</i></b> has donated blood with bag no 097 to RED CROSS DEMO Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 12:00:10','2017-02-09 12:00:10'),(30,'nigeriaredcross has added a donor Holuwasegun','http://donor.redbank.com.ng/donor/9',100,'',0,'2017-02-09 12:00:31','2017-02-09 12:00:31'),(31,'Blessing Abraham alias <b><i>blessingpeace</i></b> has donated blood with bag no 051 to Nigerian Red Cross Society Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 12:02:15','2017-02-09 12:02:15'),(32,'NIGERIAN RED CROSS SOCIETY has added a donor Hiinty','http://donor.redbank.com.ng/donor/14',100,'',0,'2017-02-09 12:02:49','2017-02-09 12:02:49'),(33,'bolatito alias <b><i>holuwasegun</i></b> has donated blood with bag no 89 to nigeriaredcross Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 12:03:22','2017-02-09 12:03:22'),(34,'juke bola alias <b><i>hiinty</i></b> has donated blood with bag no 050 to NIGERIAN RED CROSS SOCIETY Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 12:03:32','2017-02-09 12:03:32'),(35,'RED CROSS DEMO has added a donor Aui','http://donor.redbank.com.ng/donor/12',100,'',0,'2017-02-09 12:05:53','2017-02-09 12:05:53'),(36,'Abayomi alias <b><i>abayor</i></b> has donated blood with bag no 123 to RED CROSS DEMO Organization','http://donor.redbank.com.ng/analytics',100,'',0,'2017-02-09 12:13:04','2017-02-09 12:13:04'),(37,'Nigerian Red Cross Society sent reminders to 0 donors, \'Thank you for donating with blood last. We  would like to inform that you are due for donation again. Kindly visit your last donation center\'','',101,'reminder',0,'2017-02-09 12:22:00','2017-02-09 12:22:00');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `reminder_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES (1,7,'Hello Sola, Thank you for donating with blood last. We  would like to inform that you are due for donation again. Kindly visit your last donation centre.Redbank','2016-12-13 08:09:15','2016-12-13 08:09:15'),(2,8,'Thank you for donating with blood last. We  would like to inform that you are due for donation again. Kindly visit your last donation center','2017-02-09 08:51:48','2017-02-09 09:04:39'),(3,11,'Thank you for donating with blood last. We  would like to inform that you are due for donation again. Kindly visit your last donation center','2017-02-09 12:21:35','2017-02-09 12:21:35'),(4,13,'Thank you for donating with blood last. We  would like to inform that you are due for donation again. Kindly visit your last donation center','2017-02-09 12:22:54','2017-02-09 12:23:34');
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_and_lgas`
--

DROP TABLE IF EXISTS `state_and_lgas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_and_lgas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=761 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_and_lgas`
--

LOCK TABLES `state_and_lgas` WRITE;
/*!40000 ALTER TABLE `state_and_lgas` DISABLE KEYS */;
INSERT INTO `state_and_lgas` VALUES (1,'Akwa Ibom','Itu',NULL,NULL),(2,'Akwa Ibom','Etim Ekpo',NULL,NULL),(3,'Akwa Ibom','Nsit Ubium',NULL,NULL),(4,'Akwa Ibom','Ikot Ekpene',NULL,NULL),(5,'Akwa Ibom','Mbo',NULL,NULL),(6,'Akwa Ibom','Mkpat Enin',NULL,NULL),(7,'Akwa Ibom','Uruan',NULL,NULL),(8,'Akwa Ibom','Ika ',NULL,NULL),(9,'Akwa Ibom','Etinan',NULL,NULL),(10,'Akwa Ibom','Essien Udim',NULL,NULL),(11,'Akwa Ibom','Urue/offong',NULL,NULL),(12,'Akwa Ibom','Ikot Abasi',NULL,NULL),(13,'Akwa Ibom','Uyo',NULL,NULL),(14,'Akwa Ibom','Onna',NULL,NULL),(15,'Akwa Ibom','Ibesikpo Asutan',NULL,NULL),(16,'Akwa Ibom','Oruk Anam',NULL,NULL),(17,'Akwa Ibom','Udung Uko',NULL,NULL),(18,'Akwa Ibom','Ini',NULL,NULL),(19,'Akwa Ibom','Eket',NULL,NULL),(20,'Akwa Ibom','Nsit Atai',NULL,NULL),(21,'Akwa Ibom','Abak',NULL,NULL),(22,'Akwa Ibom','Oron',NULL,NULL),(23,'Akwa Ibom','Ikono',NULL,NULL),(24,'Akwa Ibom','Esit Eket',NULL,NULL),(25,'Akwa Ibom','Ibiono Ibom',NULL,NULL),(26,'Akwa Ibom','Okobo',NULL,NULL),(27,'Akwa Ibom','Ukanafun',NULL,NULL),(28,'Akwa Ibom','Nsit Ibom',NULL,NULL),(29,'Akwa Ibom','Obot Akare',NULL,NULL),(30,'Akwa Ibom','Ibeno',NULL,NULL),(31,'Akwa Ibom','Eastern Obolo',NULL,NULL),(32,'Abia','Aba South',NULL,NULL),(33,'Abia','Ohafia',NULL,NULL),(34,'Abia','Isuikwuato',NULL,NULL),(35,'Abia','Aba North',NULL,NULL),(36,'Abia','Ukwa East',NULL,NULL),(37,'Abia','Bende',NULL,NULL),(38,'Abia','Ikwauano',NULL,NULL),(39,'Abia','Osisioma Ngwa',NULL,NULL),(40,'Abia','Ukwa West',NULL,NULL),(41,'Abia','Umuahia South',NULL,NULL),(42,'Abia','Isiala-ngwa South',NULL,NULL),(43,'Abia','Ugwunagbo',NULL,NULL),(44,'Abia','Umuahia North',NULL,NULL),(45,'Abia','Isiala-ngwa North',NULL,NULL),(46,'Abia','Obi Ngwa',NULL,NULL),(47,'Abia','Arochukwu',NULL,NULL),(48,'Abia','Umu Nneochi',NULL,NULL),(49,'Adamawa','Numan',NULL,NULL),(50,'Adamawa','Gombi',NULL,NULL),(51,'Adamawa','Fufore ',NULL,NULL),(52,'Adamawa','Hong',NULL,NULL),(53,'Adamawa','Lamurde',NULL,NULL),(54,'Adamawa','Song',NULL,NULL),(55,'Adamawa','Yola South',NULL,NULL),(56,'Adamawa','Mubi South',NULL,NULL),(57,'Adamawa','Toungo',NULL,NULL),(58,'Adamawa','Shelleg',NULL,NULL),(59,'Adamawa','Yola',NULL,NULL),(60,'Adamawa','Mubi North',NULL,NULL),(61,'Adamawa','Ganye',NULL,NULL),(62,'Adamawa','Guyuk',NULL,NULL),(63,'Adamawa','Maiya',NULL,NULL),(64,'Adamawa','Jada',NULL,NULL),(65,'Adamawa','Michika',NULL,NULL),(66,'Adamawa','Demba',NULL,NULL),(67,'Adamawa','Girei',NULL,NULL),(68,'Adamawa','Mayo',NULL,NULL),(69,'Adamawa','Madagali',NULL,NULL),(70,'Bauchi','Tafawa Balewa',NULL,NULL),(71,'Bauchi','Dambam',NULL,NULL),(72,'Bauchi','Ningi',NULL,NULL),(73,'Bauchi','Shira',NULL,NULL),(74,'Bauchi','Dass',NULL,NULL),(75,'Bauchi','Gamawa',NULL,NULL),(76,'Bauchi','Ganjuwa',NULL,NULL),(77,'Bauchi','Darazo',NULL,NULL),(78,'Bauchi','Toro',NULL,NULL),(79,'Bauchi','Zaki',NULL,NULL),(80,'Bauchi','Kirfi',NULL,NULL),(81,'Bauchi','Misau',NULL,NULL),(82,'Bauchi','Bauchi',NULL,NULL),(83,'Bauchi','Itas-gadau',NULL,NULL),(84,'Bauchi','Alkaleri',NULL,NULL),(85,'Bauchi','Giade',NULL,NULL),(86,'Bauchi','Jama\'are',NULL,NULL),(87,'Bauchi','Bogoro',NULL,NULL),(88,'Bauchi','Warji',NULL,NULL),(89,'Bauchi','Katagum',NULL,NULL),(90,'Bayelsa','Sagbama',NULL,NULL),(91,'Bayelsa','Southern Ijaw',NULL,NULL),(92,'Bayelsa','Ogbia',NULL,NULL),(93,'Bayelsa','Kolokuma/opokuma',NULL,NULL),(94,'Bayelsa','Nembe',NULL,NULL),(95,'Bayelsa','Yenagoa',NULL,NULL),(96,'Bayelsa','Brass',NULL,NULL),(97,'Bayelsa','Ekeremor',NULL,NULL),(98,'Benue','Obi',NULL,NULL),(99,'Benue','Kwande',NULL,NULL),(100,'Benue','Ohinimi',NULL,NULL),(101,'Benue','Tarka',NULL,NULL),(102,'Benue','Konshisha',NULL,NULL),(103,'Benue','Katsina-ala',NULL,NULL),(104,'Benue','Otukpo',NULL,NULL),(105,'Benue','Gboko',NULL,NULL),(106,'Benue','Gwer East',NULL,NULL),(107,'Benue','Ukum',NULL,NULL),(108,'Benue','Apa',NULL,NULL),(109,'Benue','Ogbadibo',NULL,NULL),(110,'Benue','Gwer West',NULL,NULL),(111,'Benue','Logo',NULL,NULL),(112,'Benue','Agatu',NULL,NULL),(113,'Benue','Okpokwu',NULL,NULL),(114,'Benue','Guma',NULL,NULL),(115,'Benue','Ushongo',NULL,NULL),(116,'Benue','Oju',NULL,NULL),(117,'Benue','Vandeikya',NULL,NULL),(118,'Benue','Ado',NULL,NULL),(119,'Benue','Markurdi',NULL,NULL),(120,'Benue','Buruku',NULL,NULL),(121,'Borno','Gubio',NULL,NULL),(122,'Borno','Kaga',NULL,NULL),(123,'Borno','Monguno',NULL,NULL),(124,'Borno','Hawul',NULL,NULL),(125,'Borno','Ngala',NULL,NULL),(126,'Borno','Magumeri Gubio',NULL,NULL),(127,'Borno','Gwoza',NULL,NULL),(128,'Borno','Kukawa',NULL,NULL),(129,'Borno','Biu',NULL,NULL),(130,'Borno','Kala Balge',NULL,NULL),(131,'Borno','Mobbar',NULL,NULL),(132,'Borno','Konduga',NULL,NULL),(133,'Borno','Guzamala',NULL,NULL),(134,'Borno','Askira/uba',NULL,NULL),(135,'Borno','Dikwa',NULL,NULL),(136,'Borno','Shani',NULL,NULL),(137,'Borno','Jere',NULL,NULL),(138,'Borno','Nganzai',NULL,NULL),(139,'Borno','Chibok',NULL,NULL),(140,'Borno','Mafa',NULL,NULL),(141,'Borno','Bayo',NULL,NULL),(142,'Borno','Maiduguri',NULL,NULL),(143,'Borno','Abadam',NULL,NULL),(144,'Borno','Damboa',NULL,NULL),(145,'Borno','Marte',NULL,NULL),(146,'Borno','Kwaya-kusar',NULL,NULL),(147,'Borno','Bama',NULL,NULL),(148,'Cross River','Boki',NULL,NULL),(149,'Cross River','Calabar Municipal',NULL,NULL),(150,'Cross River','Obanliku',NULL,NULL),(151,'Cross River','Akamkpa',NULL,NULL),(152,'Cross River','Ikom',NULL,NULL),(153,'Cross River','Obudu',NULL,NULL),(154,'Cross River','Biase',NULL,NULL),(155,'Cross River','Etung',NULL,NULL),(156,'Cross River','Bekwara',NULL,NULL),(157,'Cross River','Odukpani',NULL,NULL),(158,'Cross River','Obubra',NULL,NULL),(159,'Cross River','Yala',NULL,NULL),(160,'Cross River','Akpabuyo',NULL,NULL),(161,'Cross River','Yakuur',NULL,NULL),(162,'Cross River','Ogoja',NULL,NULL),(163,'Cross River','Calabar S.',NULL,NULL),(164,'Cross River','Bakassi',NULL,NULL),(165,'Cross River','Abi',NULL,NULL),(166,'Delta','Ethiope East',NULL,NULL),(167,'Delta','Isoko South',NULL,NULL),(168,'Delta','Warri North',NULL,NULL),(169,'Delta','Oshimili S.',NULL,NULL),(170,'Delta','Udu',NULL,NULL),(171,'Delta','Ika South',NULL,NULL),(172,'Delta','Patani',NULL,NULL),(173,'Delta','Burutu',NULL,NULL),(174,'Delta','Ndokwa East',NULL,NULL),(175,'Delta','Uvwie',NULL,NULL),(176,'Delta','Ika North East',NULL,NULL),(177,'Delta','Bomadi',NULL,NULL),(178,'Delta','Warri South W.',NULL,NULL),(179,'Delta','Ndokwa West',NULL,NULL),(180,'Delta','Okpe',NULL,NULL),(181,'Delta','Aniocha N.',NULL,NULL),(182,'Delta','Ughelli South',NULL,NULL),(183,'Delta','Warri South',NULL,NULL),(184,'Delta','Ukwuani',NULL,NULL),(185,'Delta','Ethiope West',NULL,NULL),(186,'Delta','Aniocha S.',NULL,NULL),(187,'Delta','Ughelli North',NULL,NULL),(188,'Delta','Isoko North',NULL,NULL),(189,'Delta','Sapele',NULL,NULL),(190,'Delta','Oshimili N.',NULL,NULL),(191,'Ebonyi','Ebonyi',NULL,NULL),(192,'Ebonyi','Ezza South',NULL,NULL),(193,'Ebonyi','Onicha',NULL,NULL),(194,'Ebonyi','Abakaliki',NULL,NULL),(195,'Ebonyi','Ezza North',NULL,NULL),(196,'Ebonyi','Ivo',NULL,NULL),(197,'Ebonyi','Ishielu',NULL,NULL),(198,'Ebonyi','Afikpo North',NULL,NULL),(199,'Ebonyi','Ohaukwu',NULL,NULL),(200,'Ebonyi','Afikpo South',NULL,NULL),(201,'Ebonyi','Izzi',NULL,NULL),(202,'Ebonyi','Ikwo',NULL,NULL),(203,'Ebonyi','Ohaozara',NULL,NULL),(204,'Edo','Egor',NULL,NULL),(205,'Edo','Owan East',NULL,NULL),(206,'Edo','Ovia North-east',NULL,NULL),(207,'Edo','Esan North East',NULL,NULL),(208,'Edo','Akoko Edo',NULL,NULL),(209,'Edo','Orhionmwon',NULL,NULL),(210,'Edo','Igueben',NULL,NULL),(211,'Edo','Etsako West',NULL,NULL),(212,'Edo','Uhunmwode',NULL,NULL),(213,'Edo','Esan Central',NULL,NULL),(214,'Edo','Etsako East',NULL,NULL),(215,'Edo','Ikpoba-okha',NULL,NULL),(216,'Edo','Esan West',NULL,NULL),(217,'Edo','Etsako Central',NULL,NULL),(218,'Edo','Oredo',NULL,NULL),(219,'Edo','Owan West',NULL,NULL),(220,'Edo','Ovia South-west',NULL,NULL),(221,'Edo','Esan South East',NULL,NULL),(222,'Ekiti','Oye',NULL,NULL),(223,'Ekiti','Ado Ekiti',NULL,NULL),(224,'Ekiti','Ekiti Sw.',NULL,NULL),(225,'Ekiti','Gbonyin',NULL,NULL),(226,'Ekiti','Ilejemeje',NULL,NULL),(227,'Ekiti','Ise Orun',NULL,NULL),(228,'Ekiti','Ekiti East',NULL,NULL),(229,'Ekiti','Moba',NULL,NULL),(230,'Ekiti','Emure',NULL,NULL),(231,'Ekiti','Ikole',NULL,NULL),(232,'Ekiti','Ijero',NULL,NULL),(233,'Ekiti','Irepodun',NULL,NULL),(234,'Ekiti','Efon',NULL,NULL),(235,'Ekiti','Ido-osi',NULL,NULL),(236,'Ekiti','Ikere',NULL,NULL),(237,'Ekiti','Ekiti West',NULL,NULL),(238,'Enugu','Ezeagu',NULL,NULL),(239,'Enugu','Nkanu East',NULL,NULL),(240,'Enugu','Isi-uzo',NULL,NULL),(241,'Enugu','Udi',NULL,NULL),(242,'Enugu','Nkanu West',NULL,NULL),(243,'Enugu','Udenu',NULL,NULL),(244,'Enugu','Enugu South',NULL,NULL),(245,'Enugu','Aninri',NULL,NULL),(246,'Enugu','Igbo-etiti',NULL,NULL),(247,'Enugu','Enugu North',NULL,NULL),(248,'Enugu','Awgu',NULL,NULL),(249,'Enugu','Uzo-uwani',NULL,NULL),(250,'Enugu','Enugu East',NULL,NULL),(251,'Enugu','Igbo-eze S.',NULL,NULL),(252,'Enugu','Oji River',NULL,NULL),(253,'Enugu','Nsukka',NULL,NULL),(254,'Enugu','Igbo-eze N.',NULL,NULL),(255,'Gombe','Dukku',NULL,NULL),(256,'Gombe','Billiri',NULL,NULL),(257,'Gombe','Nafada',NULL,NULL),(258,'Gombe','Shongom',NULL,NULL),(259,'Gombe','Yamaltu',NULL,NULL),(260,'Gombe','Balanga',NULL,NULL),(261,'Gombe','Kwami',NULL,NULL),(262,'Gombe','Kaltungo',NULL,NULL),(263,'Gombe','Gombe',NULL,NULL),(264,'Gombe','Funakaye',NULL,NULL),(265,'Gombe','Akko',NULL,NULL),(266,'Imo','Ngor-okpala',NULL,NULL),(267,'Imo','Orsu',NULL,NULL),(268,'Imo','Ahiazu-mbaise',NULL,NULL),(269,'Imo','Oru East',NULL,NULL),(270,'Imo','Onuimo',NULL,NULL),(271,'Imo','Owerri North',NULL,NULL),(272,'Imo','Ihitte/uboma',NULL,NULL),(273,'Imo','Ezinihitte',NULL,NULL),(274,'Imo','Oru West',NULL,NULL),(275,'Imo','Okigwe',NULL,NULL),(276,'Imo','Owerri West',NULL,NULL),(277,'Imo','Ehime-mbano',NULL,NULL),(278,'Imo','Aboh-mbaise',NULL,NULL),(279,'Imo','Njaba',NULL,NULL),(280,'Imo','Oguta',NULL,NULL),(281,'Imo','Owerri',NULL,NULL),(282,'Imo','Nkwerre',NULL,NULL),(283,'Imo','Mbaitoli',NULL,NULL),(284,'Imo','Isu',NULL,NULL),(285,'Imo','Ohaji/egbema',NULL,NULL),(286,'Imo','Ideato South',NULL,NULL),(287,'Imo','Nwangele',NULL,NULL),(288,'Imo','Ikeduru',NULL,NULL),(289,'Imo','Orlu',NULL,NULL),(290,'Imo','Obowo',NULL,NULL),(291,'Imo','Ideato North',NULL,NULL),(292,'Imo','Isiala Mbano',NULL,NULL),(293,'Jigawa','Malam-madori',NULL,NULL),(294,'Jigawa','Roni',NULL,NULL),(295,'Jigawa','Guri',NULL,NULL),(296,'Jigawa','Jahun',NULL,NULL),(297,'Jigawa','Sule Tankarkar',NULL,NULL),(298,'Jigawa','Kaugama',NULL,NULL),(299,'Jigawa','Babura',NULL,NULL),(300,'Jigawa','Kafin Hausa',NULL,NULL),(301,'Jigawa','Kiyawa',NULL,NULL),(302,'Jigawa','Gumel',NULL,NULL),(303,'Jigawa','Gwaram',NULL,NULL),(304,'Jigawa','Gwiwa',NULL,NULL),(305,'Jigawa','Auyo',NULL,NULL),(306,'Jigawa','Dutse',NULL,NULL),(307,'Jigawa','Gagarawa',NULL,NULL),(308,'Jigawa','Buji',NULL,NULL),(309,'Jigawa','Taura',NULL,NULL),(310,'Jigawa','Hadejia',NULL,NULL),(311,'Jigawa','Yankwashi',NULL,NULL),(312,'Jigawa','Maigatari',NULL,NULL),(313,'Jigawa','Birnin Kudu',NULL,NULL),(314,'Jigawa','Ringim',NULL,NULL),(315,'Jigawa','Kiri-kasama',NULL,NULL),(316,'Jigawa','Kazaure',NULL,NULL),(317,'Jigawa','Biriniwa',NULL,NULL),(318,'Jigawa','Miga',NULL,NULL),(319,'Jigawa','Garki',NULL,NULL),(320,'Kaduna','Soba',NULL,NULL),(321,'Kaduna','Kauru',NULL,NULL),(322,'Kaduna','Makarfi',NULL,NULL),(323,'Kaduna','Igabi',NULL,NULL),(324,'Kaduna','Jema\'a',NULL,NULL),(325,'Kaduna','Zangon Kataf',NULL,NULL),(326,'Kaduna','Kudan',NULL,NULL),(327,'Kaduna','Kaduna S.',NULL,NULL),(328,'Kaduna','Jaba',NULL,NULL),(329,'Kaduna','Kachia',NULL,NULL),(330,'Kaduna','Sabon Gari',NULL,NULL),(331,'Kaduna','Kaduna N.',NULL,NULL),(332,'Kaduna','Kajuru',NULL,NULL),(333,'Kaduna','Kagarko',NULL,NULL),(334,'Kaduna','Giwa',NULL,NULL),(335,'Kaduna','Kubau',NULL,NULL),(336,'Kaduna','Birnin Gwari',NULL,NULL),(337,'Kaduna','Kaura',NULL,NULL),(338,'Kaduna','Zaria',NULL,NULL),(339,'Kaduna','Lere',NULL,NULL),(340,'Kaduna','Ikara',NULL,NULL),(341,'Kaduna','Chikun',NULL,NULL),(342,'Kaduna','Sanga',NULL,NULL),(343,'Kano','Bagwai',NULL,NULL),(344,'Kano','Kiru',NULL,NULL),(345,'Kano','Ajingi',NULL,NULL),(346,'Kano','Minjibir',NULL,NULL),(347,'Kano','Wudil',NULL,NULL),(348,'Kano','Tarauni',NULL,NULL),(349,'Kano','Tsanyawa',NULL,NULL),(350,'Kano','Bunkure',NULL,NULL),(351,'Kano','Dawakin Tofa',NULL,NULL),(352,'Kano','Kabo',NULL,NULL),(353,'Kano','Gaya',NULL,NULL),(354,'Kano','Gabasawa',NULL,NULL),(355,'Kano','Madobi',NULL,NULL),(356,'Kano','Ungongo',NULL,NULL),(357,'Kano','Bichi',NULL,NULL),(358,'Kano','Sumaila',NULL,NULL),(359,'Kano','Gwale',NULL,NULL),(360,'Kano','Rogo',NULL,NULL),(361,'Kano','Doguwa',NULL,NULL),(362,'Kano','Gezawa',NULL,NULL),(363,'Kano','Kura',NULL,NULL),(364,'Kano','Kumbotso',NULL,NULL),(365,'Kano','Kunchi',NULL,NULL),(366,'Kano','Takai',NULL,NULL),(367,'Kano','Fagge',NULL,NULL),(368,'Kano','Karaye',NULL,NULL),(369,'Kano','Tundun Wada',NULL,NULL),(370,'Kano','Rimin Gado',NULL,NULL),(371,'Kano','Garun Mallam',NULL,NULL),(372,'Kano','Dawakin Kundu',NULL,NULL),(373,'Kano','Kano',NULL,NULL),(374,'Kano','Makoda',NULL,NULL),(375,'Kano','Alabsu',NULL,NULL),(376,'Kano','Dala',NULL,NULL),(377,'Kano','Gwarzo',NULL,NULL),(378,'Kano','Kibiya',NULL,NULL),(379,'Kano','Tofa',NULL,NULL),(380,'Kano','Bebeji',NULL,NULL),(381,'Kano','Warawa',NULL,NULL),(382,'Kano','Dambatta',NULL,NULL),(383,'Kano','Garko',NULL,NULL),(384,'Kano','Nasarawa',NULL,NULL),(385,'Kano','Shanono',NULL,NULL),(386,'Kano','Rano',NULL,NULL),(387,'Katsina','Charanchi',NULL,NULL),(388,'Katsina','Kafur',NULL,NULL),(389,'Katsina','Batagarawa',NULL,NULL),(390,'Katsina','Mai\'adua',NULL,NULL),(391,'Katsina','Kurfi',NULL,NULL),(392,'Katsina','Faskari',NULL,NULL),(393,'Katsina','Rimi',NULL,NULL),(394,'Katsina','Bakori',NULL,NULL),(395,'Katsina','Kaita',NULL,NULL),(396,'Katsina','Mashi',NULL,NULL),(397,'Katsina','Matazu',NULL,NULL),(398,'Katsina','Dan Musa',NULL,NULL),(399,'Katsina','Baure',NULL,NULL),(400,'Katsina','Bindawa',NULL,NULL),(401,'Katsina','Danja',NULL,NULL),(402,'Katsina','Katsina',NULL,NULL),(403,'Katsina','Dutsi',NULL,NULL),(404,'Katsina','Musawa',NULL,NULL),(405,'Katsina','Safana',NULL,NULL),(406,'Katsina','Zango',NULL,NULL),(407,'Katsina','Kusada',NULL,NULL),(408,'Katsina','Funtua',NULL,NULL),(409,'Katsina','Mani',NULL,NULL),(410,'Katsina','Kankara',NULL,NULL),(411,'Katsina','Batsari',NULL,NULL),(412,'Katsina','Sandamu',NULL,NULL),(413,'Katsina','Kankia',NULL,NULL),(414,'Katsina','Dandume',NULL,NULL),(415,'Katsina','Ingawa',NULL,NULL),(416,'Katsina','Malufashi',NULL,NULL),(417,'Katsina','Jibia',NULL,NULL),(418,'Katsina','Daura',NULL,NULL),(419,'Katsina','Dutsin Ma',NULL,NULL),(420,'Katsina','Sabuwa',NULL,NULL),(421,'Kebbi','Maiyama',NULL,NULL),(422,'Kebbi',' Birni Kebbi',NULL,NULL),(423,'Kebbi',' Koko/besse',NULL,NULL),(424,'Kebbi',' Kalgo',NULL,NULL),(425,'Kebbi',' Jega',NULL,NULL),(426,'Kebbi',' Bagudo',NULL,NULL),(427,'Kebbi',' Argungu',NULL,NULL),(428,'Kebbi',' Sakaba',NULL,NULL),(429,'Kebbi',' Aleiro',NULL,NULL),(430,'Kebbi',' Ngaski',NULL,NULL),(431,'Kebbi',' Arewa Dandi',NULL,NULL),(432,'Kebbi',' Zuru',NULL,NULL),(433,'Kebbi',' Suru',NULL,NULL),(434,'Kebbi',' Shanga',NULL,NULL),(435,'Kebbi',' Augie',NULL,NULL),(436,'Kebbi',' Danko/wasagu',NULL,NULL),(437,'Kebbi',' Dandi',NULL,NULL),(438,'Kebbi',' Yauri',NULL,NULL),(439,'Kebbi',' Gwandu',NULL,NULL),(440,'Kebbi',' Fakai',NULL,NULL),(441,'Kebbi',' Bunza',NULL,NULL),(442,'Kogi','Omala',NULL,NULL),(443,'Kogi',' Mopa-muro',NULL,NULL),(444,'Kogi',' Bassa',NULL,NULL),(445,'Kogi',' Okene',NULL,NULL),(446,'Kogi','Olamaboro',NULL,NULL),(447,'Kogi','Kabba/bunu',NULL,NULL),(448,'Kogi','Ofu',NULL,NULL),(449,'Kogi','Ajaokuta',NULL,NULL),(450,'Kogi','Ankpa',NULL,NULL),(451,'Kogi','Kogi',NULL,NULL),(452,'Kogi','Igalamela-odolu',NULL,NULL),(453,'Kogi','Yagba- East',NULL,NULL),(454,'Kogi','Adavi',NULL,NULL),(455,'Kogi','Lokoja',NULL,NULL),(456,'Kogi','Idah',NULL,NULL),(457,'Kogi','Yagba-west',NULL,NULL),(458,'Kogi','Ogori/magongo',NULL,NULL),(459,'Kogi','Ibaji',NULL,NULL),(460,'Kogi','Ijumu',NULL,NULL),(461,'Kogi','Dekina',NULL,NULL),(462,'Kogi','Okehi',NULL,NULL),(463,'Kwara','Pategi',NULL,NULL),(464,'Kwara','Ilorin West',NULL,NULL),(465,'Kwara','Oyun',NULL,NULL),(466,'Kwara','Edu',NULL,NULL),(467,'Kwara','Ekiti',NULL,NULL),(468,'Kwara','Offa',NULL,NULL),(469,'Kwara','Baruten',NULL,NULL),(470,'Kwara','Oke Ero',NULL,NULL),(471,'Kwara','Asa',NULL,NULL),(472,'Kwara','Kaiama',NULL,NULL),(473,'Kwara','Irepodun',NULL,NULL),(474,'Kwara','Ilorin South',NULL,NULL),(475,'Kwara','Ifelodun',NULL,NULL),(476,'Kwara','Isin',NULL,NULL),(477,'Kwara','Ilorin East',NULL,NULL),(478,'Kwara','Moro',NULL,NULL),(479,'Lagos','Alimosho',NULL,NULL),(480,'Lagos','Surulere',NULL,NULL),(481,'Lagos','Ibeju/lekki',NULL,NULL),(482,'Lagos','Badagry',NULL,NULL),(483,'Lagos','Lagos Island',NULL,NULL),(484,'Lagos','Ajeromi/ifelodun',NULL,NULL),(485,'Lagos','Shomolu',NULL,NULL),(486,'Lagos','Eti Osa',NULL,NULL),(487,'Lagos','Kosofe',NULL,NULL),(488,'Lagos','Agege/ijaiye',NULL,NULL),(489,'Lagos','Oshodi/isolo',NULL,NULL),(490,'Lagos','Epe',NULL,NULL),(491,'Lagos','Ikorodu',NULL,NULL),(492,'Lagos','Oriade',NULL,NULL),(493,'Lagos','Ojo',NULL,NULL),(494,'Lagos','Apapa',NULL,NULL),(495,'Lagos','Ikeja',NULL,NULL),(496,'Lagos','Olorunda',NULL,NULL),(497,'Lagos','Mushin',NULL,NULL),(498,'Lagos','Amuwo Odofin',NULL,NULL),(499,'Lagos','Ifako Ijaiye',NULL,NULL),(500,'Lagos','Ejigbo',NULL,NULL),(501,'Lagos','Lagos Mainland',NULL,NULL),(502,'Nassarawa','Karu',NULL,NULL),(503,'Nassarawa','Obi',NULL,NULL),(504,'Nassarawa','Kokona',NULL,NULL),(505,'Nassarawa','Doma',NULL,NULL),(506,'Nassarawa','Akwanga',NULL,NULL),(507,'Nassarawa','Nasarawa',NULL,NULL),(508,'Nassarawa','Nasarawa Egon',NULL,NULL),(509,'Nassarawa','Wamba',NULL,NULL),(510,'Nassarawa','Toto',NULL,NULL),(511,'Nassarawa','Lafia',NULL,NULL),(512,'Nassarawa','Awe',NULL,NULL),(513,'Nassarawa','Keffi',NULL,NULL),(514,'Nassarawa','Keana',NULL,NULL),(515,'Niger','Mokwa',NULL,NULL),(516,'Niger','Chanchaga',NULL,NULL),(517,'Niger','Borgu',NULL,NULL),(518,'Niger','Gurara',NULL,NULL),(519,'Niger','Magama',NULL,NULL),(520,'Niger','Edati',NULL,NULL),(521,'Niger','Bosso',NULL,NULL),(522,'Niger','Lavun',NULL,NULL),(523,'Niger','Suleja',NULL,NULL),(524,'Niger','Rijau',NULL,NULL),(525,'Niger','Katcha',NULL,NULL),(526,'Niger','Mashegu',NULL,NULL),(527,'Niger','Paikoro',NULL,NULL),(528,'Niger','Mariga',NULL,NULL),(529,'Niger','Gbako ',NULL,NULL),(530,'Niger','Bida',NULL,NULL),(531,'Niger','Shiroro',NULL,NULL),(532,'Niger','Rafi',NULL,NULL),(533,'Niger','Lapai',NULL,NULL),(534,'Niger','Agwara',NULL,NULL),(535,'Niger','Wushishi',NULL,NULL),(536,'Niger','Raffi',NULL,NULL),(537,'Niger','Munya',NULL,NULL),(538,'Niger','Agaie',NULL,NULL),(539,'Niger','Kontagora',NULL,NULL),(540,'Ogun','Abeokuta North',NULL,NULL),(541,'Ogun','Sagamu',NULL,NULL),(542,'Ogun','Ifo',NULL,NULL),(543,'Ogun','Imeko Afon',NULL,NULL),(544,'Ogun','Odogbolu',NULL,NULL),(545,'Ogun','Ado Odo/otta',NULL,NULL),(546,'Ogun','Egbado South',NULL,NULL),(547,'Ogun','Ijebu East',NULL,NULL),(548,'Ogun','Obafemi Owode',NULL,NULL),(549,'Ogun','Ogun Waterside',NULL,NULL),(550,'Ogun','Egbado North',NULL,NULL),(551,'Ogun','Ijebu North',NULL,NULL),(552,'Ogun','Odeda',NULL,NULL),(553,'Ogun','Remo North',NULL,NULL),(554,'Ogun','Ipokia',NULL,NULL),(555,'Ogun','Ijebu North/east',NULL,NULL),(556,'Ogun','Abeokuta South',NULL,NULL),(557,'Ogun','Ikenne',NULL,NULL),(558,'Ogun','Ewekoro',NULL,NULL),(559,'Ogun','Ijebu Ode',NULL,NULL),(560,'Ondo','Ondo East',NULL,NULL),(561,'Ondo','Akure North',NULL,NULL),(562,'Ondo','Ilaje',NULL,NULL),(563,'Ondo','Ose',NULL,NULL),(564,'Ondo','Ile Oluji',NULL,NULL),(565,'Ondo','Irele',NULL,NULL),(566,'Ondo','Owo',NULL,NULL),(567,'Ondo','Akoko Sw',NULL,NULL),(568,'Ondo','Okitipupa',NULL,NULL),(569,'Ondo','Idanre',NULL,NULL),(570,'Ondo','Akoko Se',NULL,NULL),(571,'Ondo','Odigbo',NULL,NULL),(572,'Ondo','Ifedore',NULL,NULL),(573,'Ondo','Akoko Ne',NULL,NULL),(574,'Ondo','Ondo West',NULL,NULL),(575,'Ondo','Akure South',NULL,NULL),(576,'Ondo','Ese Odo',NULL,NULL),(577,'Ondo','Akoko Nw',NULL,NULL),(578,'Osun','Ola Oluwa',NULL,NULL),(579,'Osun','Ife East',NULL,NULL),(580,'Osun','Egbedore',NULL,NULL),(581,'Osun','Orolu',NULL,NULL),(582,'Osun','Atakunmosa W.',NULL,NULL),(583,'Osun','Iwo',NULL,NULL),(584,'Osun','Ife South',NULL,NULL),(585,'Osun','Ede South',NULL,NULL),(586,'Osun','Aiyedaade',NULL,NULL),(587,'Osun','Irepodun',NULL,NULL),(588,'Osun','Oriade',NULL,NULL),(589,'Osun','Odo Otin',NULL,NULL),(590,'Osun','Ife North',NULL,NULL),(591,'Osun','Ede North',NULL,NULL),(592,'Osun','Isokan',NULL,NULL),(593,'Osun','Olorunda',NULL,NULL),(594,'Osun','Obokun',NULL,NULL),(595,'Osun','Boluwaduro',NULL,NULL),(596,'Osun','Ifedayo',NULL,NULL),(597,'Osun','Aiyedire',NULL,NULL),(598,'Osun','Irewole',NULL,NULL),(599,'Osun','Osogbo',NULL,NULL),(600,'Osun','Ilesa East',NULL,NULL),(601,'Osun','Boripe',NULL,NULL),(602,'Osun','Ila',NULL,NULL),(603,'Osun','Ejigbo',NULL,NULL),(604,'Osun','Ife Central',NULL,NULL),(605,'Osun','Ilesa West',NULL,NULL),(606,'Osun','Ifelodun',NULL,NULL),(607,'Osun','Atakunmosa E.',NULL,NULL),(608,'Oyo','Oyo East',NULL,NULL),(609,'Oyo','Ogbomosho N.',NULL,NULL),(610,'Oyo','Ibarapa Central',NULL,NULL),(611,'Oyo','North',NULL,NULL),(612,'Oyo','Saki East',NULL,NULL),(613,'Oyo','Oluyole',NULL,NULL),(614,'Oyo','Oyo West',NULL,NULL),(615,'Oyo','Irepo',NULL,NULL),(616,'Oyo','Ibarapa North',NULL,NULL),(617,'Oyo','Ogo Oluwa',NULL,NULL),(618,'Oyo','North West',NULL,NULL),(619,'Oyo','Iwajowa',NULL,NULL),(620,'Oyo','Ido',NULL,NULL),(621,'Oyo','Akinyele',NULL,NULL),(622,'Oyo','Olorunsogo',NULL,NULL),(623,'Oyo','Ibarapa East',NULL,NULL),(624,'Oyo','Surulere',NULL,NULL),(625,'Oyo','Itesiwaju',NULL,NULL),(626,'Oyo','South East',NULL,NULL),(627,'Oyo','Egbeda',NULL,NULL),(628,'Oyo','Orelope',NULL,NULL),(629,'Oyo','Afijio',NULL,NULL),(630,'Oyo','Ori Ire',NULL,NULL),(631,'Oyo','Kajola',NULL,NULL),(632,'Oyo','North East',NULL,NULL),(633,'Oyo','Ona-ara',NULL,NULL),(634,'Oyo','Atisbo',NULL,NULL),(635,'Oyo','Atiba',NULL,NULL),(636,'Oyo','Ogbomosho S.',NULL,NULL),(637,'Oyo','Iseyin',NULL,NULL),(638,'Oyo','South West',NULL,NULL),(639,'Oyo','Saki West',NULL,NULL),(640,'Oyo','Lagelu',NULL,NULL),(641,'Plateau','Bassa',NULL,NULL),(642,'Plateau','Pankshin',NULL,NULL),(643,'Plateau','Langtang N.',NULL,NULL),(644,'Plateau','Jos East',NULL,NULL),(645,'Plateau','Mangu',NULL,NULL),(646,'Plateau','Mikang',NULL,NULL),(647,'Plateau','Jos North',NULL,NULL),(648,'Plateau','Bokkos',NULL,NULL),(649,'Plateau','Shendam',NULL,NULL),(650,'Plateau','Jos South',NULL,NULL),(651,'Plateau','Wase',NULL,NULL),(652,'Plateau','Barkin Ladi',NULL,NULL),(653,'Plateau','Qua\'an Pan',NULL,NULL),(654,'Plateau','Kanam',NULL,NULL),(655,'Plateau','Riyom',NULL,NULL),(656,'Plateau','Kanke',NULL,NULL),(657,'Plateau','Langtang S.',NULL,NULL),(658,'Rivers','Gokana',NULL,NULL),(659,'Rivers','Opobo Nkoro',NULL,NULL),(660,'Rivers','Ogubolo',NULL,NULL),(661,'Rivers','Ahoada E',NULL,NULL),(662,'Rivers','Omuma',NULL,NULL),(663,'Rivers','Andoni',NULL,NULL),(664,'Rivers','Okrika',NULL,NULL),(665,'Rivers','Ogba',NULL,NULL),(666,'Rivers','Etche',NULL,NULL),(667,'Rivers','Bonny',NULL,NULL),(668,'Rivers','Obio/akpor',NULL,NULL),(669,'Rivers','Ahoada W',NULL,NULL),(670,'Rivers','Degema',NULL,NULL),(671,'Rivers','Ikwerre',NULL,NULL),(672,'Rivers','Khana',NULL,NULL),(673,'Rivers','Port Harcourt',NULL,NULL),(674,'Rivers','Tai',NULL,NULL),(675,'Rivers','Asari Toru',NULL,NULL),(676,'Rivers','Emohua',NULL,NULL),(677,'Rivers','Oyigbo',NULL,NULL),(678,'Rivers','Akuku Toru',NULL,NULL),(679,'Rivers','Eleme',NULL,NULL),(680,'Rivers','Abua/odual',NULL,NULL),(681,'Sokoto','Binji',NULL,NULL),(682,'Sokoto','Gada',NULL,NULL),(683,'Sokoto','Sokoto N',NULL,NULL),(684,'Sokoto','Dange-shuni',NULL,NULL),(685,'Sokoto','Tangaza',NULL,NULL),(686,'Sokoto','Yabo',NULL,NULL),(687,'Sokoto','Illela',NULL,NULL),(688,'Sokoto','Bodinga',NULL,NULL),(689,'Sokoto','Gudu',NULL,NULL),(690,'Sokoto','Shagari',NULL,NULL),(691,'Sokoto','Gwadabawa',NULL,NULL),(692,'Sokoto','Isa',NULL,NULL),(693,'Sokoto','Kware',NULL,NULL),(694,'Sokoto','Kebbe',NULL,NULL),(695,'Sokoto','Wurno',NULL,NULL),(696,'Sokoto','Sabon Birni',NULL,NULL),(697,'Sokoto','Wamako',NULL,NULL),(698,'Sokoto','Tambuwal',NULL,NULL),(699,'Sokoto','Silame',NULL,NULL),(700,'Sokoto','Gonroyo',NULL,NULL),(701,'Sokoto','Sokoto S',NULL,NULL),(702,'Sokoto','Tureta',NULL,NULL),(703,'Taraba','Wukari',NULL,NULL),(704,'Taraba','Takum',NULL,NULL),(705,'Taraba','Lau',NULL,NULL),(706,'Taraba','Ibi',NULL,NULL),(707,'Taraba','Kurmi',NULL,NULL),(708,'Taraba','Karim Lamido',NULL,NULL),(709,'Taraba','Gassol',NULL,NULL),(710,'Taraba','Donga',NULL,NULL),(711,'Taraba','Jalingo',NULL,NULL),(712,'Taraba','Bali',NULL,NULL),(713,'Taraba','Sardauna',NULL,NULL),(714,'Taraba','Ardo Kola',NULL,NULL),(715,'Taraba','Zing',NULL,NULL),(716,'Taraba','Gashaka',NULL,NULL),(717,'Taraba','Ussa',NULL,NULL),(718,'Taraba','Yorro',NULL,NULL),(719,'Yobe','	Fika',NULL,NULL),(720,'Yobe','Nguru',NULL,NULL),(721,'Yobe','Geidam',NULL,NULL),(722,'Yobe','Potiskum',NULL,NULL),(723,'Yobe','Machina',NULL,NULL),(724,'Yobe','Bursari',NULL,NULL),(725,'Yobe','Nangere',NULL,NULL),(726,'Yobe','Gujba',NULL,NULL),(727,'Yobe','Tarmuwa',NULL,NULL),(728,'Yobe','Jakusko',NULL,NULL),(729,'Yobe','Gulani',NULL,NULL),(730,'Yobe','Damaturu',NULL,NULL),(731,'Yobe','Karasuwa',NULL,NULL),(732,'Yobe','Bade',NULL,NULL),(733,'Yobe','Fune',NULL,NULL),(734,'Yobe','Yusufari',NULL,NULL),(735,'Yobe','Yunusari',NULL,NULL),(736,'Zamfara','	Gusau',NULL,NULL),(737,'Zamfara','Bukkuyum',NULL,NULL),(738,'Zamfara','Zurmi',NULL,NULL),(739,'Zamfara','Gummis',NULL,NULL),(740,'Zamfara','Bungudu',NULL,NULL),(741,'Zamfara','Anka',NULL,NULL),(742,'Zamfara','Maradun',NULL,NULL),(743,'Zamfara','Shinkafi',NULL,NULL),(744,'Zamfara','Maru',NULL,NULL),(745,'Zamfara','Talata Mafara',NULL,NULL),(746,'Zamfara','Birni Magaji/kiyaw',NULL,NULL),(747,'Zamfara','Chafe',NULL,NULL),(748,'Zamfara','Bakura',NULL,NULL),(749,'Zamfara','Kaura Namoda',NULL,NULL),(750,'Abuja','	Abuja Municipal',NULL,NULL),(751,'Abuja','Abaji',NULL,NULL),(752,'Abuja','Kaura',NULL,NULL),(753,'Abuja','Karu',NULL,NULL),(754,'Abuja','Kwali',NULL,NULL),(755,'Abuja','Gudu',NULL,NULL),(756,'Abuja','Gwagwalada',NULL,NULL),(757,'Abuja','Garki',NULL,NULL),(758,'Abuja','Kuje',NULL,NULL),(759,'Abuja','Dutse',NULL,NULL),(760,'Abuja','Bwari',NULL,NULL);
/*!40000 ALTER TABLE `state_and_lgas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Abia',NULL,NULL),(2,'Adamawa',NULL,NULL),(3,'Akwa Ibom',NULL,NULL),(4,'Anambra',NULL,NULL),(5,'Bauchi',NULL,NULL),(6,' Bayelsa',NULL,NULL),(7,' Benue',NULL,NULL),(8,' Borno',NULL,NULL),(9,' Cross River',NULL,NULL),(10,' Delta',NULL,NULL),(11,' Ebonyi',NULL,NULL),(12,' Edo',NULL,NULL),(13,' Ekiti',NULL,NULL),(14,' Enugu',NULL,NULL),(15,' Gombe',NULL,NULL),(16,' Imo',NULL,NULL),(17,' Jigawa',NULL,NULL),(18,' Kaduna',NULL,NULL),(19,' Kano',NULL,NULL),(20,' Katsina',NULL,NULL),(21,' Kebbi',NULL,NULL),(22,' Kogi',NULL,NULL),(23,' Kwara',NULL,NULL),(24,' Lagos',NULL,NULL),(25,' Nassarawa',NULL,NULL),(26,' Niger',NULL,NULL),(27,' Ogun',NULL,NULL),(28,' Ondo',NULL,NULL),(29,' Osun',NULL,NULL),(30,' Oyo',NULL,NULL),(31,' Plateau',NULL,NULL),(32,' Rivers',NULL,NULL),(33,' Sokoto',NULL,NULL),(34,' Taraba',NULL,NULL),(35,' Yobe',NULL,NULL),(36,' Zamfara',NULL,NULL),(37,' Abuja',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','amowogbajegideon@gmail.com','$2y$10$VBsdAzcnR2nhyaEMLGNbo.Ksz6S73RLnjt8RHgOx/bRuUZs7iolbO','uploads/9fcc411b6ff81a8ed4517eb295f810bd.jpg','Portal','08174007780','3, Salon','',NULL,'2016-09-29 00:56:10','2016-10-24 13:05:01'),(2,'','kennieret22@gmail.com','$2y$10$pLLuwONOhRvsFcswA31CLOyuheaqWNxox4mzjaRhmQ2DS1e46LR0O','','iQube ','08135616117','kennieret22@gmail.com','','sAhc1JzmJGmTXEW8SNovPAlf0Q08eltYeHEyMveVeM8XyjkSD9C9HWX8wgn5','2016-10-06 07:42:58','2016-10-06 07:43:26'),(3,'','redbank@medifix.ng','$2y$10$J5VP3ssKW4.Xw5FSEsLjve62fS5215N0Mjtg9q1rg/8mnpRcWHBPq','','Infinite MediFix Limited','08039346388','194, Herbert Macaulaay Way Yaba','','UAQ4msxyRsd36Sx1OjyMixZwreDCCEw4Alg7NVMOoQlZcV7WEvnAD2eItMGv','2016-10-06 09:20:07','2016-10-06 10:40:27'),(4,'','scafnigeria@yahoo.com','$2y$10$DfydC.IAudU.XaQwjmdgUOFxjNc9y1aWV.7Z1rdcCqSGGXXA9G/X6','','Sickle Cell Aid Foundation','07033393505','Lagos','','OANgwnUd2npHmOoMrIrK0sGhd8pIIFIcO6We5ZY6VUXwpZ9O6lS8G4a1XzPf','2016-10-21 12:32:13','2016-10-21 13:06:06'),(5,'','calebolasam@gmail.com','$2y$10$SnF4/Cl01a.ldGtbdhK8d.RtnRt6oLY1XwlZv83alFbYBNcuwJvE.','uploads/90a8fc9ddc184360da70938db40370bc.jpg','Calebolasam Public Solutions','08038333952','505 Ikorodu Road, Ketu Lagos','','OLeRPlZvrMZktTVQ6AZayabnA78IuvDtaBcGOU1ThE38GNnzwr31HTwjMp9u','2016-10-31 11:40:32','2016-10-31 12:48:26'),(6,'','redcrosslagos@gmail.com','$2y$10$0NX8YxOKWFklLDOlbjp1ROECrCBC9Y7UpDFyMvvKFNn/R9UsGherC','uploads/2b361508097b8c7fbace5a07d8bcd869.jpg','Nigerian Red Cross Society, Lagos State ','08023310969','2, Makoko Road, Adekunle Yaba','','HrArix6rwbMpqoZ2euJE49q8RX9IBxcsCGN7XgKnOb01FG1GbzPr63VkGf87','2016-10-31 13:37:18','2016-10-31 14:12:51'),(7,'','toluwanimiadeyanju02@gmail.com','$2y$10$ndr20I4ScciYQfavsJ1DzO8M.4OW7oqIXudo/dHUZqWySwM2GEQNS','','iQube Labs','08039346388','10, hughes street, alagomeji','',NULL,'2016-12-13 08:06:42','2016-12-13 08:06:42'),(8,'','abayomiola52@yahoo.com','$2y$10$.x4mghdUEju82G.wWQJZZe.CqOIi.qRdchURSdfVzjIqjOz3u5P1O','','Cube Foundation','07063358777','abayomi close','','eyiYgiPrvZ9wlHe3qxju4SKg3748j4QNv2d9g4j8QNrYeKcsPdEZRbbmgLUc','2017-02-09 08:28:18','2017-02-15 09:25:52'),(9,'','abiouduns11@gmail.com','$2y$10$968r78ypV2G1IGsmTlTpd.cilXKftkMuJUI0Q2GnvJC6pFg6LoDSq','','nigeriaredcross','08121199090','25mojoyinolastreet lagos','',NULL,'2017-02-09 11:12:41','2017-02-09 11:12:41'),(10,'','adeyemisam23@yahoo.com','$2y$10$lC.xi1qYKmN8.JxKGhUuVuerZCIhDcmKlxLdXOGMR92/C2DAwZ.jm','','Nigerian Red Cross Society','08094904940','83, simpson street adekunle yaba','',NULL,'2017-02-09 11:13:09','2017-02-09 11:13:09'),(11,'','chinexy.jmart@gmail.com','$2y$10$3QrkvW9jQRoabzRC4tAF1OUTNrr1pMX85.fOIcHyZNfe4ylVokJU6','','Nigerian Red Cross Society','07063688486','22, Oremeji street, Ilaje Road, Bariga, Lagos','','ktTza5IUKLAcjZgO5TARXfbcUO03FeC0r9bgfe2t355FFRtIPQgDEzJhrmtM','2017-02-09 11:13:47','2017-02-09 12:25:02'),(12,'','olasunkami010@gmai.com','$2y$10$20X7n2STByu0A9YiqKoTdOJ0ubWrXQzzHE96hAihDx23ouO19rpHa','','RED CROSS DEMO','09024428333','udyed','',NULL,'2017-02-09 11:13:48','2017-02-09 11:13:48'),(13,'','olaniranomobolajibj@gmail.com','$2y$10$KbiuKWIbTBxLuJ.eBvkQfefOZusG5zrXSeqX2xoZOHisRJRu7jKYq','','Nigeria Red Cross Society','08180045916','83, simpson street, adekunle, yaba','',NULL,'2017-02-09 11:14:11','2017-02-09 11:14:11'),(14,'','benjiaghoro@yahoo.com','$2y$10$PypFDGjmsbAB4OqC.pINz.KkyVMpyXWPrMk9NyLryUQgN.jbkSbMW','','NIGERIAN RED CROSS SOCIETY','O8139055684','11 ADAMS STREET, OWORONSOKI, LAGOS','',NULL,'2017-02-09 11:16:33','2017-02-09 11:16:33'),(15,'','francis.adereti@iqubelabs.com','$2y$10$sVppMlnM5wUSeUZ9qeV93Ouex3ldBsqzkPgK5VGI.72g.q/f4dxkW','','iQube','08135616117','194, Herbert Macaulay Way','','2AhV9jZWSObLVAzaQJQZAmF3vMczO91YNC9ZUgQimnrFjZX3ZsJVBhJqORvG','2017-02-09 11:57:07','2017-02-09 11:59:45');
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

-- Dump completed on 2017-02-16 12:23:02
