-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: _sms
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(700) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (2,'A9876543210','Admin','Kumar','12/11/2024','user.png','1234567890','male','no where');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(40) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(5) NOT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (1,'S1718791292','1','12c','A','PCERT502 -- THEORY OF COMPUTATION','2024-06-19 15:32:37'),(2,'MCE24ECE014','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(3,'MCE24ECE002','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(4,'MCE24ECE004','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(5,'MCE24ECE005','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(6,'MCE24ECE006','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(7,'MCE24ECE007','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(8,'MCE24ECE008','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(9,'MCE24ECE009','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(10,'MCE24ECE010','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(11,'MCE24ECE011','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(12,'MCE24ECE012','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(13,'MCE24ECE013','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(14,'MCE24ECE015','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(15,'MCE24ECE016','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(16,'MCE24ECE017','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(17,'MCE24ECE018','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(18,'MCE24ECE019','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(19,'MCE24ECE020','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(20,'MCE24ECE021','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(21,'MCE24ECE022','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(22,'MCE24ECE024','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(23,'MCE24ECE025','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(24,'MCE24ECE026','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(25,'MCE24ECE027','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(26,'MCE24ECE028','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(27,'MCE24ECE029','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(28,'MCE24ECE030','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(29,'MCE24ECE031','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(30,'MCE24ECE032','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(31,'MCE24ECE033','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(32,'MCE24ECE035','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(33,'MCE24ECE036','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(34,'MCE24ECE037','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(35,'MCE24ECE038','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(36,'MCE24ECE039','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(37,'MCE24ECE040','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(38,'MCE24ECE041','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(39,'MCE24ECE042','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(40,'MCE24ECE043','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(41,'MCE24ECE044','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(42,'MCE24ECE045','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(43,'MCE24ECE046','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(44,'MCE24ECE047','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(45,'MCE24ECE048','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(46,'MCE24ECE049','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(47,'MCE24ECE050','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(48,'MCE24ECE051','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(49,'MCE24ECE053','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(50,'MCE24ECE054','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(51,'MCE24ECE055','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(52,'MCE24ECE056','0','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(53,'MCE24ECE057','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(54,'MCE24ECE058','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(55,'MCE24ECE059','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(56,'MCE24ECE061','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(57,'MCE24ECE062','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-20 04:36:56'),(58,'MCE24ECE010','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-22 19:54:19'),(59,'MCE24ECE014','1','ECE','A','PCERT502 -- THEORY OF COMPUTATION','2026-09-22 19:54:19'),(60,'1718791037','1','','','Theory of Computation (PCERT502)','2026-09-22 00:00:00'),(61,'1718791037','0','','','Microcontrollers and Interfacing (PCERT503)','2026-09-22 00:00:00'),(62,'MCE24ECE010','0','ECE','A','PCERT503 -- MICROCONTROLLERS AND INTERFACING','2026-09-22 23:19:53');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `s_no` int(10) NOT NULL AUTO_INCREMENT,
  `class` varchar(20) NOT NULL,
  `section` varchar(1) NOT NULL,
  `fees` int(5) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'ECE','A',45000),(2,'ECE','B',45000),(3,'CSE','A',45000),(4,'CSE','B',45000),(5,'EAC','A',45000),(6,'EAC','B',45000),(7,'ME','A',40000),(8,'ME','B',40000),(9,'EEE','A',40000),(10,'EEE','B',40000),(11,'CE','A',40000),(12,'CE','B',40000),(13,'IT','A',45000),(14,'IT','B',45000),(15,'AIDS','A',45000),(16,'AIDS','B',45000);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_record`
--

DROP TABLE IF EXISTS `fee_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_record` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `other_collection` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `paid` int(5) NOT NULL,
  `balance` int(5) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_record`
--

LOCK TABLES `fee_record` WRITE;
/*!40000 ALTER TABLE `fee_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (7,'T1718791191','S1718791292','Hello student','2024-06-19 15:46:58'),(8,'T1718791191','S1718791292','You are so naughty\n','2024-06-19 15:47:11');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `importance` varchar(5) NOT NULL DEFAULT '1',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(11) NOT NULL DEFAULT '',
  `class` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (51,'A9876543210','A9876543210','Notice title','body','A98765432101718791385.png','2','2024-06-19 15:33:05','',''),(52,'A9876543210','A9876543210','Title 2','body 2','A98765432101718791411.png','3','2024-06-19 15:33:31','',''),(53,'A9876543210','A9876543210','Holiday notice','enjoy your holidays','A98765432101718791447.png','1','2024-06-19 15:34:07','','');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(40) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_no` varchar(40) NOT NULL,
  `ifsc_code` varchar(40) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES (68,'T1718791191','Post a homework daily','completed'),(69,'T1718791191','principal meeting','pending'),(70,'A9876543210','Reminder for myself : have a good day','pending'),(71,'A9876543210','\nBest of luck','completed');
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_guardian`
--

DROP TABLE IF EXISTS `student_guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_guardian` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(200) NOT NULL,
  `gcity` varchar(100) NOT NULL,
  `gzip` varchar(50) NOT NULL,
  `relation` varchar(256) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_guardian`
--

LOCK TABLES `student_guardian` WRITE;
/*!40000 ALTER TABLE `student_guardian` DISABLE KEYS */;
INSERT INTO `student_guardian` VALUES (1,'S1718791292','Regan Clemons','4567894562','Eum sit et laboriosa','Abbot','Hunter','Culpa odio laboriosa');
/*!40000 ALTER TABLE `student_guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `request_date` varchar(30) NOT NULL DEFAULT '',
  `request_time` varchar(30) NOT NULL DEFAULT '',
  `request` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (58,'MCE24ECE002','Aaliyah','Fathima Ajay','Guardian of Aaliyah','Female','ECE','A','15-05-2006','user.png','9800000002','mce24ece002@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(59,'MCE24ECE004','Aarchaa','P Aneesh','Guardian of Aarchaa','Female','ECE','A','15-05-2006','user.png','9800000004','mce24ece004@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(60,'MCE24ECE005','Abhijith','K S','Guardian of Abhijith','Male','ECE','A','15-05-2005','user.png','9800000005','mce24ece005@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(61,'MCE24ECE006','Abhijith','S A','Guardian of Abhijith','Male','ECE','A','15-05-2006','user.png','9800000006','mce24ece006@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(62,'MCE24ECE007','Abhinav','S B','Guardian of Abhinav','Male','ECE','A','15-05-2006','user.png','9800000007','mce24ece007@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(63,'MCE24ECE008','Abhinav','S L','Guardian of Abhinav','Male','ECE','A','15-05-2006','user.png','9800000008','mce24ece008@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(64,'MCE24ECE009','Abhinav','S N','Guardian of Abhinav','Male','ECE','A','15-05-2006','user.png','9800000009','mce24ece009@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(65,'MCE24ECE010','Abhishek','R S','Guardian of Abhishek','Male','ECE','A','15-05-2006','abhishek_rs.jpg','9800000010','mce24ece010@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(66,'MCE24ECE011','Abhishek','Vijay','Guardian of Abhishek','Male','ECE','A','15-05-2006','user.png','9800000011','mce24ece011@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(67,'MCE24ECE012','Absalom','Brijesh Parakkattil','Guardian of Absalom','Male','ECE','A','15-05-2006','user.png','9800000012','mce24ece012@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(68,'MCE24ECE013','Adhwaith','Anil','Guardian of Adhwaith','Male','ECE','A','15-05-2006','user.png','9800000013','mce24ece013@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(69,'MCE24ECE014','A','Harsha','Guardian of A','Female','ECE','A','15-05-2006','user.png','9800000014','mce24ece014@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(70,'MCE24ECE015','Amaniya','','Guardian of Amaniya','Female','ECE','A','15-05-2006','user.png','9800000015','mce24ece015@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(71,'MCE24ECE016','Amina','S B','Guardian of Amina','Female','ECE','A','15-05-2007','user.png','9800000016','mce24ece016@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(72,'MCE24ECE017','Anamika','R S','Guardian of Anamika','Female','ECE','A','15-05-2005','user.png','9800000017','mce24ece017@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(73,'MCE24ECE018','Anand','Jain S','Guardian of Anand','Male','ECE','A','15-05-2006','user.png','9800000018','mce24ece018@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(74,'MCE24ECE019','Anaswar','S R','Guardian of Anaswar','Male','ECE','A','15-05-2006','user.png','9800000019','mce24ece019@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(75,'MCE24ECE020','Anisha','Rachel Allen','Guardian of Anisha','Female','ECE','A','15-05-2007','user.png','9800000020','mce24ece020@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(76,'MCE24ECE021','Annie','Albert','Guardian of Annie','Female','ECE','A','15-05-2005','user.png','9800000021','mce24ece021@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(77,'MCE24ECE022','Anugraha','V Pillai','Guardian of Anugraha','Female','ECE','A','15-05-2007','user.png','9800000022','mce24ece022@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(78,'MCE24ECE024','Arjun','S R','Guardian of Arjun','Male','ECE','A','15-05-2006','user.png','9800000024','mce24ece024@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(79,'MCE24ECE025','Aromal','B A','Guardian of Aromal','Male','ECE','A','15-05-2006','user.png','9800000025','mce24ece025@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(80,'MCE24ECE026','Arundhati','Naga B R','Guardian of Arundhati','Female','ECE','A','15-05-2006','user.png','9800000026','mce24ece026@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(81,'MCE24ECE027','Ayush','G','Guardian of Ayush','Male','ECE','A','15-05-2005','user.png','9800000027','mce24ece027@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(82,'MCE24ECE028','Blessto','Basil Joy','Guardian of Blessto','Male','ECE','A','15-05-2005','user.png','9800000028','mce24ece028@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(83,'MCE24ECE029','Cerafin','Walter','Guardian of Cerafin','Female','ECE','A','15-05-2006','user.png','9800000029','mce24ece029@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(84,'MCE24ECE030','Diya','Naveen','Guardian of Diya','Female','ECE','A','15-05-2005','user.png','9800000030','mce24ece030@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(85,'MCE24ECE031','Fiya','Faizal','Guardian of Fiya','Female','ECE','A','15-05-2007','user.png','9800000031','mce24ece031@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(86,'MCE24ECE032','Govind','V Raju','Guardian of Govind','Male','ECE','A','15-05-2006','user.png','9800000032','mce24ece032@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(87,'MCE24ECE033','Hebin','Raj R','Guardian of Hebin','Male','ECE','A','15-05-2006','user.png','9800000033','mce24ece033@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(88,'MCE24ECE035','Joshna','R Wilson','Guardian of Joshna','Female','ECE','A','15-05-2005','user.png','9800000035','mce24ece035@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(89,'MCE24ECE036','Karan','A S','Guardian of Karan','Male','ECE','A','15-05-2005','user.png','9800000036','mce24ece036@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(90,'MCE24ECE037','Karthik','K S','Guardian of Karthik','Male','ECE','A','15-05-2006','user.png','9800000037','mce24ece037@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(91,'MCE24ECE038','Karthik','R K','Guardian of Karthik','Male','ECE','A','15-05-2006','user.png','9800000038','mce24ece038@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(92,'MCE24ECE039','Keerthikrishna','K A','Guardian of Keerthikrishna','Female','ECE','A','15-05-2005','user.png','9800000039','mce24ece039@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(93,'MCE24ECE040','Madhav','S','Guardian of Madhav','Male','ECE','A','15-05-2006','user.png','9800000040','mce24ece040@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(94,'MCE24ECE041','Mahek','Mariam Azad','Guardian of Mahek','Female','ECE','A','15-05-2005','user.png','9800000041','mce24ece041@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(95,'MCE24ECE042','Meenakshi','P G','Guardian of Meenakshi','Female','ECE','A','15-05-2006','user.png','9800000042','mce24ece042@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(96,'MCE24ECE043','Mohamed','Saabith Hammed','Guardian of Mohamed','Male','ECE','A','15-05-2006','user.png','9800000043','mce24ece043@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(97,'MCE24ECE044','Najmal','Khan','Guardian of Najmal','Male','ECE','A','15-05-2005','user.png','9800000044','mce24ece044@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(98,'MCE24ECE045','Nandana','Vipin','Guardian of Nandana','Female','ECE','A','15-05-2006','user.png','9800000045','mce24ece045@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(99,'MCE24ECE046','Niranjan','Rajan Suma','Guardian of Niranjan','Male','ECE','A','15-05-2006','user.png','9800000046','mce24ece046@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(100,'MCE24ECE047','Pavan','V Nair','Guardian of Pavan','Male','ECE','A','15-05-2006','user.png','9800000047','mce24ece047@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(101,'MCE24ECE048','Pravada','M','Guardian of Pravada','Female','ECE','A','15-05-2007','user.png','9800000048','mce24ece048@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(102,'MCE24ECE049','Raino','Anil Gomez','Guardian of Raino','Male','ECE','A','15-05-2006','user.png','9800000049','mce24ece049@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(103,'MCE24ECE050','Rithika','Rajesh','Guardian of Rithika','Female','ECE','A','15-05-2006','user.png','9800000050','mce24ece050@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(104,'MCE24ECE051','Safeel','S','Guardian of Safeel','Male','ECE','A','15-05-2005','user.png','9800000051','mce24ece051@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(105,'MCE24ECE053','Sarga','Shabu','Guardian of Sarga','Female','ECE','A','15-05-2006','user.png','9800000053','mce24ece053@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(106,'MCE24ECE054','Sijitha','Selvaraj','Guardian of Sijitha','Female','ECE','A','15-05-2006','user.png','9800000054','mce24ece054@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(107,'MCE24ECE055','Sinoy','Simon','Guardian of Sinoy','Male','ECE','A','15-05-2006','user.png','9800000055','mce24ece055@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(108,'MCE24ECE056','Sravan','S B','Guardian of Sravan','Male','ECE','A','15-05-2006','user.png','9800000056','mce24ece056@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(109,'MCE24ECE057','Sreelakshmi','S K','Guardian of Sreelakshmi','Female','ECE','A','15-05-2006','user.png','9800000057','mce24ece057@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(110,'MCE24ECE058','Stefan','Michael Kenney','Guardian of Stefan','Male','ECE','A','15-05-2005','user.png','9800000058','mce24ece058@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(111,'MCE24ECE059','Sujin','S K','Guardian of Sujin','Male','ECE','A','15-05-2006','user.png','9800000059','mce24ece059@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(112,'MCE24ECE061','Vaishakh','S Nair','Guardian of Vaishakh','Male','ECE','A','15-05-2006','user.png','9800000061','mce24ece061@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','',''),(113,'MCE24ECE062','Vinayak','S P','Guardian of Vinayak','Male','ECE','A','15-05-2006','user.png','9800000062','mce24ece062@cavatta.edu','Cavatta College Campus','Trivandrum','695001','Kerala','','','');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(40) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (4,'ECE_ba2c5bf7','PCERT501 -- DIGITAL SIGNAL PROCESSING','ECE'),(5,'ECE_48e664e9','PCERT502 -- THEORY OF COMPUTATION','ECE'),(6,'ECE_05d8c46f','PCERT503 -- MICROCONTROLLERS AND INTERFACING','ECE'),(7,'ECE_db6d9106','PBERT504 -- DATABASE MANAGEMENT SYSTEMS','ECE'),(8,'ECE_12a7bc57','CLOUD COMPUTING','ECE'),(9,'ECE_7fd8fef3','DATABASE MANAGEMENT SYSTEMS LAB','ECE'),(10,'ECE_e73af937','DIGITAL SIGNAL PROCESSING LAB','ECE');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_guardian`
--

DROP TABLE IF EXISTS `teacher_guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_guardian` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL,
  `gname` varchar(256) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(256) NOT NULL,
  `gcity` varchar(50) NOT NULL,
  `gzip` varchar(20) NOT NULL,
  `relation` varchar(100) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_guardian`
--

LOCK TABLES `teacher_guardian` WRITE;
/*!40000 ALTER TABLE `teacher_guardian` DISABLE KEYS */;
INSERT INTO `teacher_guardian` VALUES (1,'T1718791191','Velma Walker','1234567895','Sit voluptas nisi v','Maggie','Mckee','Consequatur Volupta');
/*!40000 ALTER TABLE `teacher_guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(150) NOT NULL DEFAULT '',
  `subject` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (2,'T1718791191','Ms. AJANA','J','','PCERT502 -- THEORY OF COMPUTATION','Female','15-05-1988','user.png','9847000001','teacher@cavatta.edu','Cavatta College Campus, Trivandrum','Trivandrum','695001','Kerala','ECE','A'),(3,'T002','Mrs. SIMI','M S','','PCERT503 -- MICROCONTROLLERS AND INTERFACING','Female','15-05-1988','user.png','9847000002','simi@cavatta.edu','Cavatta College Campus, Trivandrum','Trivandrum','695001','Kerala','ECE','A'),(4,'T003','Mrs. LORINDA','E','','PBERT504 -- DATABASE MANAGEMENT SYSTEMS','Female','15-05-1988','user.png','9847000003','lorinda@cavatta.edu','Cavatta College Campus, Trivandrum','Trivandrum','695001','Kerala','ECE','A'),(5,'T004','Mrs. HEMA S','MAHESH','','PCERT501 -- DIGITAL SIGNAL PROCESSING','Female','15-05-1988','user.png','9847000004','hema@cavatta.edu','Cavatta College Campus, Trivandrum','Trivandrum','695001','Kerala','ECE','A'),(6,'T005','Mrs. HEMA','DEVI','','CLOUD COMPUTING','Female','15-05-1988','user.png','9847000005','hema.devi@cavatta.edu','Cavatta College Campus, Trivandrum','Trivandrum','695001','Kerala','ECE','A');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_table` (
  `s_no` int(20) NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `section` varchar(10) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `mon` varchar(150) NOT NULL,
  `tue` varchar(150) NOT NULL,
  `wed` varchar(150) NOT NULL,
  `thu` varchar(150) NOT NULL,
  `fri` varchar(150) NOT NULL,
  `sat` varchar(150) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (9,'ECE','A','09:00 AM','10:00 AM','PCERT502 -- THEORY OF COMPUTATION (Ms. AJANA J)','PCERT503 -- MICROCONTROLLERS AND INTERFACING (Mrs. SIMI M S)','PCERT501 -- DIGITAL SIGNAL PROCESSING (Mrs. HEMA S MAHESH)','CLOUD COMPUTING (Mrs. HEMA DEVI)','PCERT502 -- THEORY OF COMPUTATION (Ms. AJANA J)','-','admin','2026-09-20 01:37:02'),(10,'ECE','A','10:00 AM','11:00 AM','PCERT503 -- MICROCONTROLLERS AND INTERFACING (Mrs. SIMI M S)','PCERT502 -- THEORY OF COMPUTATION (Ms. AJANA J)','PCERT501 -- DIGITAL SIGNAL PROCESSING (Mrs. HEMA S MAHESH)','PBERT504 -- DATABASE MANAGEMENT SYSTEMS (Mrs. LORINDA E)','PBERT504 -- DATABASE MANAGEMENT SYSTEMS (Mrs. LORINDA E)','-','admin','2026-09-20 01:37:02'),(11,'ECE','A','11:15 AM','12:15 PM','CLOUD COMPUTING (Mrs. HEMA DEVI)','PCERT501 -- DIGITAL SIGNAL PROCESSING (Mrs. HEMA S MAHESH)','PCERT503 -- MICROCONTROLLERS AND INTERFACING (Mrs. SIMI M S)','PCERT501 -- DIGITAL SIGNAL PROCESSING (Mrs. HEMA S MAHESH)','CLOUD COMPUTING (Mrs. HEMA DEVI)','-','admin','2026-09-20 01:37:02'),(12,'ECE','A','01:00 PM','02:00 PM','PBERT504 -- DATABASE MANAGEMENT SYSTEMS (Mrs. LORINDA E)','DATABASE MANAGEMENT SYSTEMS LAB','PCERT502 -- THEORY OF COMPUTATION (Ms. AJANA J)','PCERT503 -- MICROCONTROLLERS AND INTERFACING (Mrs. SIMI M S)','DIGITAL SIGNAL PROCESSING LAB','-','admin','2026-09-20 01:37:02'),(13,'ECE','A','02:00 PM','03:00 PM','PCERT501 -- DIGITAL SIGNAL PROCESSING (Mrs. HEMA S MAHESH)','DATABASE MANAGEMENT SYSTEMS LAB','PCERT502 -- THEORY OF COMPUTATION (Ms. AJANA J)','PBERT504 -- DATABASE MANAGEMENT SYSTEMS (Mrs. LORINDA E)','DIGITAL SIGNAL PROCESSING LAB','-','admin','2026-09-20 01:37:02'),(14,'ECE','A','03:00 PM','04:00 PM','PBERT504 -- DATABASE MANAGEMENT SYSTEMS (Mrs. LORINDA E)','DATABASE MANAGEMENT SYSTEMS LAB','PCERT503 -- MICROCONTROLLERS AND INTERFACING (Mrs. SIMI M S)','CLOUD COMPUTING','DIGITAL SIGNAL PROCESSING LAB','-','admin','2026-09-20 01:37:02');
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `s_no` int(15) NOT NULL AUTO_INCREMENT,
  `id` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password_hash` varchar(700) NOT NULL,
  `role` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL DEFAULT 'light',
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'A9876543210','admin','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','admin','light'),(4,'O7898987845','owner','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','owner','light'),(8,'MCE24ECE002','aaliyah fathima ajay','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(9,'MCE24ECE004','aarchaa p aneesh','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(10,'MCE24ECE005','abhijith k s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(11,'MCE24ECE006','abhijith s a','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(12,'MCE24ECE007','abhinav s b','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(13,'MCE24ECE008','abhinav s l','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(14,'MCE24ECE009','abhinav s n','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(15,'MCE24ECE010','abhishek r s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(16,'MCE24ECE011','abhishek vijay','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(17,'MCE24ECE012','absalom brijesh parakkattil','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(18,'MCE24ECE013','adhwaith anil','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(19,'MCE24ECE014','a harsha','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(20,'MCE24ECE015','amaniya','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(21,'MCE24ECE016','amina s b','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(22,'MCE24ECE017','anamika r s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(23,'MCE24ECE018','anand jain s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(24,'MCE24ECE019','anaswar s r','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(25,'MCE24ECE020','anisha rachel allen','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(26,'MCE24ECE021','annie albert','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(27,'MCE24ECE022','anugraha v pillai','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(28,'MCE24ECE024','arjun s r','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(29,'MCE24ECE025','aromal b a','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(30,'MCE24ECE026','arundhati naga b r','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(31,'MCE24ECE027','ayush g','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(32,'MCE24ECE028','blessto basil joy','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(33,'MCE24ECE029','cerafin walter','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(34,'MCE24ECE030','diya naveen','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(35,'MCE24ECE031','fiya faizal','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(36,'MCE24ECE032','govind v raju','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(37,'MCE24ECE033','hebin raj r','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(38,'MCE24ECE035','joshna r wilson','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(39,'MCE24ECE036','karan a s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(40,'MCE24ECE037','karthik k s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(41,'MCE24ECE038','karthik r k','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(42,'MCE24ECE039','keerthikrishna k a','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(43,'MCE24ECE040','madhav s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(44,'MCE24ECE041','mahek mariam azad','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(45,'MCE24ECE042','meenakshi p g','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(46,'MCE24ECE043','mohamed saabith hammed','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(47,'MCE24ECE044','najmal khan','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(48,'MCE24ECE045','nandana vipin','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(49,'MCE24ECE046','niranjan rajan suma','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(50,'MCE24ECE047','pavan v nair','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(51,'MCE24ECE048','pravada m','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(52,'MCE24ECE049','raino anil gomez','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(53,'MCE24ECE050','rithika rajesh','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(54,'MCE24ECE051','safeel s','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(55,'MCE24ECE053','sarga shabu','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(56,'MCE24ECE054','sijitha selvaraj','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(57,'MCE24ECE055','sinoy simon','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(58,'MCE24ECE056','sravan s b','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(59,'MCE24ECE057','sreelakshmi s k','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(60,'MCE24ECE058','stefan michael kenney','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(61,'MCE24ECE059','sujin s k','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(62,'MCE24ECE061','vaishakh s nair','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(63,'MCE24ECE062','vinayak s p','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(64,'MCE24ECE010','student','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','student','light'),(66,'T1718791191','teacher','$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe','teacher','light'),(70,'T1718791191','teacher1','$2y$10$6TWedyDTRAzh0IaAY/jsfuY74vrsvuAUTyFI3noqAaN3pZjXm.rQm','teacher','light'),(71,'T002','teacher2','$2y$10$6TWedyDTRAzh0IaAY/jsfuY74vrsvuAUTyFI3noqAaN3pZjXm.rQm','teacher','light'),(72,'T003','teacher3','$2y$10$6TWedyDTRAzh0IaAY/jsfuY74vrsvuAUTyFI3noqAaN3pZjXm.rQm','teacher','light'),(73,'T004','teacher4','$2y$10$6TWedyDTRAzh0IaAY/jsfuY74vrsvuAUTyFI3noqAaN3pZjXm.rQm','teacher','light'),(74,'T005','teacher5','$2y$10$6TWedyDTRAzh0IaAY/jsfuY74vrsvuAUTyFI3noqAaN3pZjXm.rQm','teacher','light');
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

-- Dump completed on 2026-09-22 23:20:04
