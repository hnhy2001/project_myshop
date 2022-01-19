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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-15 16:24:07.379279'),(2,'contenttypes','0002_remove_content_type_name','2022-01-15 16:24:07.484664'),(3,'auth','0001_initial','2022-01-15 16:24:07.899476'),(4,'auth','0002_alter_permission_name_max_length','2022-01-15 16:24:08.009190'),(5,'auth','0003_alter_user_email_max_length','2022-01-15 16:24:08.023144'),(6,'auth','0004_alter_user_username_opts','2022-01-15 16:24:08.032119'),(7,'auth','0005_alter_user_last_login_null','2022-01-15 16:24:08.047086'),(8,'auth','0006_require_contenttypes_0002','2022-01-15 16:24:08.056057'),(9,'auth','0007_alter_validators_add_error_messages','2022-01-15 16:24:08.064034'),(10,'auth','0008_alter_user_username_max_length','2022-01-15 16:24:08.076003'),(11,'auth','0009_alter_user_last_name_max_length','2022-01-15 16:24:08.083680'),(12,'auth','0010_alter_group_name_max_length','2022-01-15 16:24:08.115595'),(13,'auth','0011_update_proxy_permissions','2022-01-15 16:24:08.130560'),(14,'auth','0012_alter_user_first_name_max_length','2022-01-15 16:24:08.141526'),(15,'shopapp','0001_initial','2022-01-15 16:24:09.280235'),(16,'admin','0001_initial','2022-01-15 16:24:09.461045'),(17,'admin','0002_logentry_remove_auto_add','2022-01-15 16:24:09.491062'),(18,'admin','0003_logentry_add_action_flag_choices','2022-01-15 16:24:09.508015'),(19,'sessions','0001_initial','2022-01-15 16:24:09.689418'),(20,'shopapp','0002_notication_casee_notication_updated_date_and_more','2022-01-15 16:24:09.849317'),(21,'shopapp','0003_alter_user_cart','2022-01-15 16:24:09.862317'),(22,'shopapp','0004_order_active','2022-01-15 16:24:09.915450'),(23,'shopapp','0005_product_content','2022-01-15 16:24:09.970700'),(24,'shopapp','0006_order_phone','2022-01-15 16:24:10.044752'),(25,'shopapp','0007_alter_user_cart','2022-01-15 16:31:46.002651'),(26,'shopapp','0008_alter_order_product_id','2022-01-15 16:31:46.020610');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 20:09:49
