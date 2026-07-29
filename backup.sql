-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: convocation2026
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

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
-- Table structure for table `convocation_registration`
--

DROP TABLE IF EXISTS `convocation_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convocation_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(20) NOT NULL,
  `event` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `attend_type` varchar(50) DEFAULT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `letter_file` varchar(255) DEFAULT NULL,
  `id_proof_file` varchar(255) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `registration_time` time DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocation_registration`
--

LOCK TABLES `convocation_registration` WRITE;
/*!40000 ALTER TABLE `convocation_registration` DISABLE KEYS */;
INSERT INTO `convocation_registration` VALUES (1,'43212462201',NULL,NULL,NULL,NULL,'parent',NULL,NULL,NULL,NULL,'0000-00-00','12:56:34',NULL),(2,'43212462201',NULL,NULL,NULL,NULL,'parent',NULL,NULL,NULL,NULL,'0000-00-00','12:56:36',NULL),(3,'42312462201',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:02:57',NULL),(4,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:15:30',NULL),(5,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:33:45',NULL),(6,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:37:45',NULL),(7,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:44:37',NULL),(8,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:44:52',NULL),(9,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','01:52:37',NULL),(10,'',NULL,NULL,NULL,NULL,'self',NULL,NULL,NULL,NULL,'0000-00-00','02:19:42',NULL),(11,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','02:21:56',NULL),(12,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','parent','muthu','father','1773640616240_Screenshot (12).png','1773640616250_Screenshot (12).png','0000-00-00','11:26:56',NULL),(13,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','parent','muthu','father','1773640656632_Screenshot (12).png','1773640656640_Screenshot (12).png','0000-00-00','11:27:36',NULL),(14,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','parent','muthu','father','1773641255475_Screenshot (12).png','1773641255480_Screenshot (12).png','0000-00-00','11:37:35',NULL),(15,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium',NULL,'','',NULL,NULL,'0000-00-00','12:14:48',NULL),(16,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','12:38:20',NULL),(17,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:11:26',NULL),(18,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:11:28',NULL),(19,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:32:35',NULL),(20,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:32:37',NULL),(21,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:32:37',NULL),(22,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:32:38',NULL),(23,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:32:38',NULL),(24,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:32:42',NULL),(25,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:34:00',NULL),(26,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','02:02:10',NULL),(27,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','02:07:11',NULL),(28,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','02:08:43',NULL),(29,'42132462201','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','02:28:48',NULL),(30,'42132462202','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','03:02:38',NULL),(31,'42132462202','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','parent','','',NULL,NULL,'0000-00-00','09:55:35',NULL),(32,'42132462202','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','09:37:01',NULL),(33,'42132462202','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','10:16:42',NULL),(34,'42132462202','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:54:40',NULL),(35,'42132462202','Sports Day','2026-07-15','09:00:00','College Ground','MCA','Janani','Tennis',NULL,NULL,'0000-00-00','11:36:06',NULL),(36,'42132462202','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','Janani','Group Singing',NULL,NULL,'0000-00-00','11:39:12',NULL),(37,'42132462202','Sports Day','2026-07-15','09:00:00','College Ground','MCA','Janani','Table Tennis',NULL,NULL,'0000-00-00','11:16:16',NULL),(38,'42132462201','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','AI & DS','Janani','Solo Singing',NULL,NULL,'0000-00-00','11:26:52',NULL),(39,'REG202226','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','CSE','dhivya','Group Dance',NULL,NULL,'0000-00-00','11:50:30',NULL),(40,'REG202226','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','dhivya','Solo Singing',NULL,NULL,'0000-00-00','12:03:02',NULL),(41,'421324622018','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','12:04:14',NULL),(42,'REG202226','Sports Day','2026-07-15','09:00:00','College Ground','Civil','dhivya','Table Tennis',NULL,NULL,'0000-00-00','04:44:47',NULL),(43,'REG202226','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','Civil','dhivya','Western Dance',NULL,NULL,'0000-00-00','04:56:40',NULL),(44,'42132462202','Sports Day','2026-07-15','09:00:00','College Ground','MCA','Janani','Badminton',NULL,NULL,'0000-00-00','04:57:49',NULL),(45,'42132462202','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','Janani','Western Dance',NULL,NULL,'0000-00-00','05:01:16',NULL),(46,'421324622025','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','11:00:49',NULL),(47,'421324622025','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','yamuna','Group Dance',NULL,NULL,'0000-00-00','01:51:37',NULL),(48,'42132462202','Sports Day','2026-07-15','09:00:00','College Ground','MCA','yamuna','Table Tennis',NULL,NULL,'0000-00-00','09:26:40',NULL),(49,'421324622018','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:17:36',NULL),(50,'421324622018','Sports Day','2026-07-15','09:00:00','College Ground','MCA','Janani','Volleyball',NULL,NULL,'0000-00-00','01:18:53',NULL),(51,'421324622018','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','Janani','Group Dance',NULL,NULL,'0000-00-00','01:20:15',NULL),(52,'421324622018','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','Janani','Group Dance',NULL,NULL,'0000-00-00','01:20:48',NULL),(53,'421324622018','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','Janani','Group Dance',NULL,NULL,'0000-00-00','01:20:50',NULL),(54,'421324622018','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:45:04',NULL),(55,'421324622018','Annual Day','2026-08-10','06:00:00','Sivaramakrishnan Auditorium','MCA','Janani','Group Dance',NULL,NULL,'0000-00-00','10:09:06',NULL),(56,'421324622018','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','10:02:29',NULL),(57,'421324622018','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','06:06:32',NULL),(58,'421324622018','Annual Convocation','2026-06-20','10:00:00','Main Auditorium','self','','',NULL,NULL,'0000-00-00','01:45:14',NULL);
/*!40000 ALTER TABLE `convocation_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `venue` varchar(150) DEFAULT NULL,
  `department_allowed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Convocation 2026','2026-03-10','Main Auditorium','ALL'),(2,'Annual Day 2026','2026-04-05','Open Ground Stage','ALL'),(3,'Sports Day 2026','2026-02-15','College Sports Ground','ALL'),(4,'Cultural Fest 2026','2026-01-25','Main Auditorium','ALL'),(5,'Symposium 2026','2026-02-28','Seminar Hall','CSE,IT,MCA'),(6,'Tech Fest 2026','2026-02-20','Innovation Lab','CSE,IT'),(7,'Management Meet 2026','2026-03-01','Conference Hall','MBA'),(8,'Alumni Meet 2026','2026-05-12','Main Auditorium','ALL'),(9,'Workshop on AI','2026-02-10','Lab 3','CSE,MCA'),(10,'Placement Training Program','2026-01-15','Seminar Hall','Final Year');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `attending` varchar(20) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'admin@college.edu','admin123');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `attending` varchar(10) DEFAULT NULL,
  `id_proof` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dob` date DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_reg_no` (`reg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (32,'full_name','reg_no','email','phone','department','degree','year','attending','id_proof','status','0000-00-00 00:00:00','0000-00-00',NULL),(34,'Student_2','42132462202','student2@gmail.com','9876543201','MCA','MCA','2022','Yes','id_2022_2','Rejected','2026-02-11 00:53:24','2002-01-02',NULL),(35,'Student_3','42132462203','student3@gmail.com','9876543202','CSE','B.Tech','2022','Yes','id_2022_3','Approved','2026-02-11 00:53:24','2002-01-03',NULL),(36,'Student_4','42132462204','student4@gmail.com','9876543203','MCA','MCA','2022','Yes','id_2022_4','Approved','2026-02-11 00:53:24','2002-01-04',NULL),(37,'Student_5','42132462205','student5@gmail.com','9876543204','CSE','B.Tech','2022','Yes','id_2022_5','Rejected','2026-02-11 00:53:24','2002-01-05',NULL),(38,'Student_6','42132462206','student6@gmail.com','9876543205','MCA','MCA','2022','Yes','id_2022_6','Approved','2026-02-11 00:53:24','2002-01-06',NULL),(39,'Student_7','42132462207','student7@gmail.com','9876543206','CSE','B.Tech','2022','Yes','id_2022_7','Pending','2026-02-11 00:53:24','2002-01-07',NULL),(40,'Student_8','42132462208','student8@gmail.com','9876543207','MCA','MCA','2022','Yes','id_2022_8','Pending','2026-02-11 00:53:24','2002-01-08',NULL),(41,'Student_9','42132462209','student9@gmail.com','9876543208','CSE','B.Tech','2022','Yes','id_2022_9','Pending','2026-02-11 00:53:24','2002-01-09',NULL),(42,'Student_10','42132462210','student10@gmail.com','9876543209','MCA','MCA','2022','Yes','id_2022_10','Approved','2026-02-11 00:53:24','2002-01-10',NULL),(43,'Student_11','42132462211','student11@gmail.com','9876543210','CSE','B.Tech','2022','Yes','id_2022_11','Pending','2026-02-11 00:53:24','2002-01-11',NULL),(44,'Student_12','42132462212','student12@gmail.com','9876543211','MCA','MCA','2022','Yes','id_2022_12','Pending','2026-02-11 00:53:24','2002-01-12',NULL),(45,'Student_13','42132462213','student13@gmail.com','9876543212','CSE','B.Tech','2022','Yes','id_2022_13','Pending','2026-02-11 00:53:24','2002-01-13',NULL),(46,'Student_14','42132462214','student14@gmail.com','9876543213','MCA','MCA','2022','Yes','id_2022_14','Pending','2026-02-11 00:53:24','2002-01-14',NULL),(47,'Student_15','42132462215','student15@gmail.com','9876543214','CSE','B.Tech','2022','Yes','id_2022_15','Rejected','2026-02-11 00:53:24','2002-01-15',NULL),(48,'Student_16','42132462216','student16@gmail.com','9876543215','MCA','MCA','2022','Yes','id_2022_16','Pending','2026-02-11 00:53:24','2002-01-16',NULL),(49,'Student_17','42132462217','student17@gmail.com','9876543216','CSE','B.Tech','2022','Yes','id_2022_17','Pending','2026-02-11 00:53:24','2002-01-17',NULL),(50,'Student_18','42132462218','student18@gmail.com','9876543217','MCA','MCA','2022','Yes','id_2022_18','Pending','2026-02-11 00:53:24','2002-01-18',NULL),(51,'Student_19','42132462219','student19@gmail.com','9876543218','CSE','B.Tech','2022','Yes','id_2022_19','Pending','2026-02-11 00:53:24','2002-01-19',NULL),(52,'Student_20','42132462220','student20@gmail.com','9876543219','MCA','MCA','2022','Yes','id_2022_20','Pending','2026-02-11 00:53:24','2002-01-20',NULL),(53,'Student_21','42132462221','student21@gmail.com','9876543220','CSE','B.Tech','2022','Yes','id_2022_21','Pending','2026-02-11 00:53:24','2002-01-21',NULL),(54,'Student_22','42132462222','student22@gmail.com','9876543221','MCA','MCA','2022','Yes','id_2022_22','Pending','2026-02-11 00:53:24','2002-01-22',NULL),(55,'Student_23','42132462223','student23@gmail.com','9876543222','CSE','B.Tech','2022','Yes','id_2022_23','Pending','2026-02-11 00:53:24','2002-01-23',NULL),(56,'Student_24','42132462224','student24@gmail.com','9876543223','MCA','MCA','2022','Yes','id_2022_24','Pending','2026-02-11 00:53:24','2002-01-24',NULL),(57,'Student_25','42132462225','student25@gmail.com','9876543224','CSE','B.Tech','2022','Yes','id_2022_25','Approved','2026-02-11 00:53:24','2002-01-25',NULL),(58,'Student_26','42132462226','student26@gmail.com','9876543225','MCA','MCA','2022','Yes','id_2022_26','Approved','2026-02-11 00:53:24','2002-01-26',NULL),(59,'Student_27','42132462227','student27@gmail.com','9876543226','CSE','B.Tech','2022','Yes','id_2022_27','Pending','2026-02-11 00:53:24','2002-01-27',NULL),(60,'Student_28','42132462228','student28@gmail.com','9876543227','MCA','MCA','2022','Yes','id_2022_28','Pending','2026-02-11 00:53:24','2002-01-28',NULL),(61,'Student_29','42132462229','student29@gmail.com','9876543228','CSE','B.Tech','2022','Yes','id_2022_29','Approved','2026-02-11 00:53:24','2002-01-01',NULL),(62,'Student_30','42132462230','student30@gmail.com','9876543229','MCA','MCA','2022','Yes','id_2022_30','Approved','2026-02-11 00:53:24','2002-01-02',NULL),(76,'Student_1','42132462201','student1@gmail.com','9876543200','CSE','MCA','2022','Yes','1770981025691_Screenshot (78).png','Approved','2026-02-13 11:10:32','0000-00-00',NULL),(77,'JANANI','421324622018','janani_new@email.com','9876543210','MCA','MCA','2025','Yes',NULL,'Approved','2026-04-15 07:28:55','2004-02-18',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-29 10:58:34
