-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopmanh
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_shopapp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_shopapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-20 03:31:41.334509','1','Product object (1)',1,'[{\"added\": {}}]',7,1),(2,'2022-01-20 03:33:39.617707','4','adminweb',1,'[{\"added\": {}}]',6,1),(3,'2022-01-20 03:33:52.093752','3','trucweb',3,'',6,1),(4,'2022-01-20 03:36:25.084687','2','Product object (2)',1,'[{\"added\": {}}]',7,1),(5,'2022-01-20 03:36:56.409626','3','Product object (3)',1,'[{\"added\": {}}]',7,1),(6,'2022-01-20 03:37:19.187187','4','Product object (4)',1,'[{\"added\": {}}]',7,1),(7,'2022-01-20 03:38:07.657115','5','Product object (5)',1,'[{\"added\": {}}]',7,1),(8,'2022-01-20 03:38:27.606497','6','Product object (6)',1,'[{\"added\": {}}]',7,1),(9,'2022-01-20 03:39:05.377152','7','Product object (7)',1,'[{\"added\": {}}]',7,1),(10,'2022-01-20 03:40:10.751372','8','Product object (8)',1,'[{\"added\": {}}]',7,1),(11,'2022-01-20 03:41:43.475126','9','Product object (9)',1,'[{\"added\": {}}]',7,1),(12,'2022-01-20 04:07:40.104098','2','Product object (2)',2,'[{\"changed\": {\"fields\": [\"Product name\", \"Avatar\"]}}]',7,1),(13,'2022-01-20 04:08:12.147067','10','Product object (10)',1,'[{\"added\": {}}]',7,1),(14,'2022-01-20 04:08:44.677406','2','Product object (2)',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',7,1),(15,'2022-01-20 04:09:42.014417','11','Product object (11)',1,'[{\"added\": {}}]',7,1),(16,'2022-01-20 04:11:15.030540','12','Product object (12)',1,'[{\"added\": {}}]',7,1),(17,'2022-01-20 04:13:09.727044','10','Product object (10)',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-20 11:16:31
