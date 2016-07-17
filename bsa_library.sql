-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: bsa_library
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `book_user`
--

DROP TABLE IF EXISTS `book_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_user`
--

LOCK TABLES `book_user` WRITE;
/*!40000 ALTER TABLE `book_user` DISABLE KEYS */;
INSERT INTO `book_user` VALUES (1,2,6),(2,3,6),(3,4,6),(4,5,7),(5,6,7),(7,8,8),(8,9,8),(9,10,8),(10,11,9),(11,12,9),(12,13,9),(16,5,10),(17,5,10),(18,5,10),(19,5,10),(22,5,10),(25,5,17),(27,26,17),(28,26,17),(29,12,17),(40,17,10),(41,6,10),(42,7,10),(43,6,3),(44,7,3);
/*!40000 ALTER TABLE `book_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` smallint(5) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (7,'Miss',2000,'2016-07-16 04:25:36','2016-07-16 04:25:36','Mrs. Ellen Jast DDS','aspernatur'),(8,'Dr.',1989,'2016-07-16 04:25:36','2016-07-16 04:25:36','Ollie Rippin','neque'),(9,'Prof.',2011,'2016-07-16 04:25:36','2016-07-16 04:25:36','Dr. Cayla Donnelly','est'),(10,'Dr.',1998,'2016-07-16 04:25:36','2016-07-16 04:25:36','Clement Welch','et'),(11,'Prof.',2014,'2016-07-16 04:25:36','2016-07-16 04:25:36','Ahmed Johns','deserunt'),(12,'Prof.',1983,'2016-07-16 04:25:36','2016-07-16 04:25:36','Mrs. Maeve Wunsch DDS','totam'),(13,'Ms.',1985,'2016-07-16 04:25:36','2016-07-16 04:25:36','Anna Yundt','dolore'),(14,'Prof.',2014,'2016-07-16 04:25:36','2016-07-16 04:25:36','Prof. Marcia Renner','perferendis'),(15,'Dr.',1979,'2016-07-16 04:25:36','2016-07-16 04:25:36','Dr. Zachary Nikolaus IV','similique'),(16,'Prof.',2005,'2016-07-16 04:25:36','2016-07-16 04:25:36','Obie Bruen','velit'),(17,'war and piece',1819,'2016-07-16 19:30:44','2016-07-16 19:30:44','tolstoi','drama');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2016_07_16_072119_create_book_user_table',5),('2016_07_15_193249_create_books_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Laurencepp','Brown','bernadette21@example.com','2016-07-16 04:18:55','2016-07-17 05:45:41'),(5,'Annette','Fahey','schimmel.joey@example.com','2016-07-16 04:18:55','2016-07-16 04:18:55'),(6,'Austyn','Dare','ursula84@example.net','2016-07-16 04:25:35','2016-07-16 04:25:35'),(7,'Ike','Marquardt','cassandra99@example.net','2016-07-16 04:25:35','2016-07-16 04:25:35'),(8,'Geraldine','Larkin','rowe.berniece@example.com','2016-07-16 04:25:35','2016-07-16 04:25:35'),(9,'Destany','Morar','jennyfer07@example.net','2016-07-16 04:25:35','2016-07-16 04:25:35'),(10,'Madge','Ruecker','collins.araceli@example.com','2016-07-16 04:25:35','2016-07-16 04:25:35'),(11,'rob','rob','rob@rob','2016-07-16 16:01:03','2016-07-16 16:01:03'),(13,'rob','rob','rob1@rob','2016-07-16 16:01:49','2016-07-16 16:01:49'),(14,'rob','rob','rob2@rob','2016-07-16 16:06:37','2016-07-16 16:06:37'),(15,'rob','rob','rob4@rob','2016-07-16 16:07:06','2016-07-16 16:07:06'),(16,'rob','rob','rob3@rob.com','2016-07-16 17:57:07','2016-07-16 17:57:07'),(17,'rob','rob','rob@rob.com','2016-07-16 18:56:51','2016-07-16 18:56:51'),(18,'Kylie','Boehm','bernadette@example.com','2016-07-17 05:45:29','2016-07-17 05:45:29');
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

-- Dump completed on 2016-07-17 12:57:48
