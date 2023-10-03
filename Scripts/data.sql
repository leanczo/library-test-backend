-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'J.K. Rowling'),(2,'George Orwell'),(3,'J.R.R. Tolkien'),(4,'Isaac Asimov'),(5,'Agatha Christie'),(6,'Stephen King'),(7,'William Shakespeare'),(8,'Ernest Hemingway'),(9,'Mark Twain'),(10,'Charles Dickens');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `book_authors`
--

LOCK TABLES `book_authors` WRITE;
/*!40000 ALTER TABLE `book_authors` DISABLE KEYS */;
INSERT INTO `book_authors` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'HP1','Harry Potter and the Sorcerer\'s Stone','Bloomsbury'),(2,'1984','1984','Secker & Warburg'),(3,'LOTR1','The Fellowship of the Ring','Allen & Unwin'),(4,'FDN','Foundation','Gnome Press'),(5,'ABC','The A.B.C. Murders','Collins Crime Club'),(6,'SHINING','The Shining','Doubleday'),(7,'HAM','Hamlet','N/A'),(8,'OSAR','The Old Man and the Sea','Scribner'),(9,'TOM','The Adventures of Tom Sawyer','American Publishing Company'),(10,'OT','Oliver Twist','Richard Bentley');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','123 Main St'),(2,'Jane','Smith','456 Elm St'),(3,'Alice','Johnson','789 Maple St'),(4,'Michael','Brown','101 Pine St'),(5,'Emily','Davis','202 Oak St'),(6,'David','Miller','303 Cherry St'),(7,'Sarah','Wilson','404 Birch St'),(8,'Chris','Taylor','505 Cedar St'),(9,'Jessica','Moore','606 Dogwood St'),(10,'Daniel','White','707 Fir St');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
INSERT INTO `invoice_items` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(28,11,11),(29,12,12),(30,13,13),(31,14,14),(32,15,15),(33,16,16),(34,17,17),(35,18,18),(36,19,19),(37,20,20),(38,21,21),(39,22,22),(40,23,23),(41,24,24),(42,25,25),(43,26,26),(44,27,27),(45,11,11),(46,12,12),(47,13,13),(48,14,14),(49,15,15),(50,16,16),(51,17,17),(52,18,18),(53,19,19),(54,20,20),(55,21,21),(56,22,22),(57,23,23),(58,24,24),(59,25,25),(60,26,26),(61,27,27);
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,'2023-10-03'),(2,2,'2023-10-03'),(3,3,'2023-10-03'),(4,4,'2023-10-03'),(5,5,'2023-10-03'),(6,6,'2023-10-03'),(7,7,'2023-10-03'),(8,8,'2023-10-03'),(9,9,'2023-10-03'),(10,10,'2023-10-03'),(11,1,'2023-10-03'),(12,2,'2023-10-03'),(13,3,'2023-10-03'),(14,4,'2023-10-03'),(15,5,'2023-10-03'),(16,6,'2023-10-03'),(17,7,'2023-10-03'),(18,8,'2023-10-03'),(19,9,'2023-10-03'),(20,10,'2023-10-03'),(21,1,'2023-10-03'),(22,2,'2023-10-03'),(23,3,'2023-10-03'),(24,4,'2023-10-03'),(25,5,'2023-10-03'),(26,6,'2023-10-03'),(27,7,'2023-10-03'),(28,8,'2023-10-03'),(29,9,'2023-10-03'),(30,10,'2023-10-03'),(31,1,'2023-10-03'),(32,2,'2023-10-03'),(33,3,'2023-10-03'),(34,4,'2023-10-03'),(35,5,'2023-10-03'),(36,6,'2023-10-03'),(37,7,'2023-10-03'),(38,8,'2023-10-03'),(39,9,'2023-10-03'),(40,10,'2023-10-03');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,1,1,'2023-10-08'),(2,2,2,'2023-10-13'),(3,3,3,'2023-10-18'),(4,4,4,'2023-10-23'),(5,5,5,'2023-10-28'),(6,6,6,'2023-11-02'),(7,7,7,'2023-11-07'),(8,8,8,'2023-11-12'),(9,9,9,'2023-11-17'),(10,10,10,'2023-11-22'),(11,1,2,'2023-10-10'),(12,1,3,'2023-10-13'),(13,1,4,'2023-10-15'),(14,2,2,'2023-10-17'),(15,2,3,'2023-10-23'),(16,3,4,'2023-10-19'),(17,4,1,'2023-10-25'),(18,4,5,'2023-10-27'),(19,5,2,'2023-10-29'),(20,5,6,'2023-11-02'),(21,6,3,'2023-11-07'),(22,6,4,'2023-11-10'),(23,7,5,'2023-11-12'),(24,7,6,'2023-11-17'),(25,8,7,'2023-11-19'),(26,9,8,'2023-11-22'),(27,10,9,'2023-11-25'),(28,1,2,'2023-10-10'),(29,1,3,'2023-10-13'),(30,1,4,'2023-10-15'),(31,2,2,'2023-10-17'),(32,2,3,'2023-10-23'),(33,3,4,'2023-10-19'),(34,4,1,'2023-10-25'),(35,4,5,'2023-10-27'),(36,5,2,'2023-10-29'),(37,5,6,'2023-11-02'),(38,6,3,'2023-11-07'),(39,6,4,'2023-11-10'),(40,7,5,'2023-11-12'),(41,7,6,'2023-11-17'),(42,8,7,'2023-11-19'),(43,9,8,'2023-11-22'),(44,10,9,'2023-11-25'),(45,1,2,'2023-10-10'),(46,1,3,'2023-10-13'),(47,1,4,'2023-10-15'),(48,2,2,'2023-10-17'),(49,2,3,'2023-10-23'),(50,3,4,'2023-10-19'),(51,4,1,'2023-10-25'),(52,4,5,'2023-10-27'),(53,5,2,'2023-10-29'),(54,5,6,'2023-11-02'),(55,6,3,'2023-11-07'),(56,6,4,'2023-11-10'),(57,7,5,'2023-11-12'),(58,7,6,'2023-11-17'),(59,8,7,'2023-11-19'),(60,9,8,'2023-11-22'),(61,10,9,'2023-11-25');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03  9:51:25
