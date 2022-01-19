-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: manhdzai
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-15 16:32:38.470353','2','manh_admin',1,'[{\"added\": {}}]',6,1),(2,'2022-01-15 17:07:59.399875','1','Product object (1)',1,'[{\"added\": {}}]',7,1),(3,'2022-01-15 17:20:55.282277','1','Product object (1)',2,'[]',7,1),(4,'2022-01-15 17:48:23.328410','5','admin1',1,'[{\"added\": {}}]',6,1),(5,'2022-01-17 16:24:10.740947','2','Product object (2)',1,'[{\"added\": {}}]',7,1),(6,'2022-01-18 16:39:02.077679','2','Product object (2)',3,'',7,1),(7,'2022-01-18 16:39:02.091640','1','Product object (1)',3,'',7,1),(8,'2022-01-18 16:42:33.349839','3','Product object (3)',1,'[{\"added\": {}}]',7,1),(9,'2022-01-18 16:43:18.210252','4','Product object (4)',1,'[{\"added\": {}}]',7,1),(10,'2022-01-18 16:43:41.759318','5','Product object (5)',1,'[{\"added\": {}}]',7,1),(11,'2022-01-18 16:44:08.634825','6','Product object (6)',1,'[{\"added\": {}}]',7,1),(12,'2022-01-18 16:44:35.558724','7','Product object (7)',1,'[{\"added\": {}}]',7,1),(13,'2022-01-18 16:44:59.568421','8','Product object (8)',1,'[{\"added\": {}}]',7,1),(14,'2022-01-18 16:45:22.561380','9','Product object (9)',1,'[{\"added\": {}}]',7,1),(15,'2022-01-18 16:45:46.938299','10','Product object (10)',1,'[{\"added\": {}}]',7,1),(16,'2022-01-18 16:49:32.606758','11','Product object (11)',1,'[{\"added\": {}}]',7,1),(17,'2022-01-18 17:29:55.484778','12','Product object (12)',1,'[{\"added\": {}}]',7,1),(18,'2022-01-19 04:48:11.482313','12','Product object (12)',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',7,1),(19,'2022-01-19 04:56:34.214061','13','Product object (13)',1,'[{\"added\": {}}]',7,1),(20,'2022-01-19 08:53:09.636721','14','Product object (14)',1,'[{\"added\": {}}]',7,1),(21,'2022-01-19 08:54:09.768044','5','Product object (5)',2,'[{\"changed\": {\"fields\": [\"Product name\"]}}]',7,1);
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

-- Dump completed on 2022-01-19 20:09:48
