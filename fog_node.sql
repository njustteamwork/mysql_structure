-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: localhost    Database: fog_node
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Current Database: `fog_node`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fog_node` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fog_node`;

--
-- Table structure for table `raw_encrypted_data`
--

DROP TABLE IF EXISTS `raw_encrypted_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raw_encrypted_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `user_temperature` varchar(512) NOT NULL,
  `user_heart_rate` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_encrypted_data`
--

LOCK TABLES `raw_encrypted_data` WRITE;
/*!40000 ALTER TABLE `raw_encrypted_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_encrypted_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_data`
--

DROP TABLE IF EXISTS `result_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `earliest_date` datetime NOT NULL,
  `latest_date` datetime NOT NULL,
  `sum_of_temperature` varchar(512) NOT NULL,
  `sum_of_heart_rate` varchar(512) NOT NULL,
  `data_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_data`
--

LOCK TABLES `result_data` WRITE;
/*!40000 ALTER TABLE `result_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `result_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `used_encrypted_data`
--

DROP TABLE IF EXISTS `used_encrypted_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `used_encrypted_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `user_temperature` varchar(512) NOT NULL,
  `user_heart_rate` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `used_encrypted_data`
--

LOCK TABLES `used_encrypted_data` WRITE;
/*!40000 ALTER TABLE `used_encrypted_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `used_encrypted_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-01 10:56:22
