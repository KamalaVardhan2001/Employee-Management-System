CREATE DATABASE  IF NOT EXISTS `employeems` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employeems`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: employeems
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employe` (
  `empno` int NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `mob_no` varchar(255) DEFAULT NULL,
  `personal_mail` varchar(255) DEFAULT NULL,
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_mobile_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
INSERT INTO `employe` VALUES (1,'Kamala Vardhan','2001-01-01','male',19,'Hyderabad','Hyderabad','1234567899','sample@mail.com','Vardhan','1234567898');
/*!40000 ALTER TABLE `employe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_projects`
--

DROP TABLE IF EXISTS `employee_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_code` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `client_or_project_name` varchar(255) DEFAULT NULL,
  `reporting_manager_code` varchar(255) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_projects`
--

LOCK TABLES `employee_projects` WRITE;
/*!40000 ALTER TABLE `employee_projects` DISABLE KEYS */;
INSERT INTO `employee_projects` VALUES (27,'1','2024-07-01','2024-10-01','Project name','5',1),(28,'2024','2024-11-01','2025-01-01','Project name','5',1);
/*!40000 ALTER TABLE `employee_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empprofessionaldetails`
--

DROP TABLE IF EXISTS `empprofessionaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empprofessionaldetails` (
  `employment_code` int NOT NULL,
  `company_mail` varchar(255) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `office_address` varchar(255) DEFAULT NULL,
  `reporting_manager_mail` varchar(255) DEFAULT NULL,
  `hr_name` varchar(255) DEFAULT NULL,
  `employment_history` varchar(255) DEFAULT NULL,
  `date_of_joining` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empprofessionaldetails`
--

LOCK TABLES `empprofessionaldetails` WRITE;
/*!40000 ALTER TABLE `empprofessionaldetails` DISABLE KEYS */;
INSERT INTO `empprofessionaldetails` VALUES (1,'company@mail.com','1234567897','Hyderabad','Hyderabad','manager@mail.com','HR','Apple 2017 - 2019\nGoogle 2019 - 2023','2024-10-01');
/*!40000 ALTER TABLE `empprofessionaldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_details`
--

DROP TABLE IF EXISTS `finance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_details` (
  `id` int NOT NULL,
  `pan_card` varchar(255) DEFAULT NULL,
  `aadhar_card` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `ctc_breakup` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_details`
--

LOCK TABLES `finance_details` WRITE;
/*!40000 ALTER TABLE `finance_details` DISABLE KEYS */;
INSERT INTO `finance_details` VALUES (1,'AFZPK7190K','123456789123','Bank','Branch','ABCD0000123',4000000);
/*!40000 ALTER TABLE `finance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'kamal','$2a$10$ZCunoO1ChRLyL.229lvA8OHfk4CKV8zEMqF4i5DbyfN7NwS.INI6i','EMPLOYEE'),(2,'admin','$2a$10$UmO1lh27rdZdcGVtR5PS1.y3ZOX.5R9T0dVT.er/SwHTZ.DodmKUu','ADMIN');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 20:29:49
