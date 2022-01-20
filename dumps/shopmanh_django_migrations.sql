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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-20 03:29:04.253190'),(2,'contenttypes','0002_remove_content_type_name','2022-01-20 03:29:04.392035'),(3,'auth','0001_initial','2022-01-20 03:29:04.921894'),(4,'auth','0002_alter_permission_name_max_length','2022-01-20 03:29:05.013539'),(5,'auth','0003_alter_user_email_max_length','2022-01-20 03:29:05.037641'),(6,'auth','0004_alter_user_username_opts','2022-01-20 03:29:05.047616'),(7,'auth','0005_alter_user_last_login_null','2022-01-20 03:29:05.063543'),(8,'auth','0006_require_contenttypes_0002','2022-01-20 03:29:05.069551'),(9,'auth','0007_alter_validators_add_error_messages','2022-01-20 03:29:05.080498'),(10,'auth','0008_alter_user_username_max_length','2022-01-20 03:29:05.093965'),(11,'auth','0009_alter_user_last_name_max_length','2022-01-20 03:29:05.106916'),(12,'auth','0010_alter_group_name_max_length','2022-01-20 03:29:05.135947'),(13,'auth','0011_update_proxy_permissions','2022-01-20 03:29:05.147944'),(14,'auth','0012_alter_user_first_name_max_length','2022-01-20 03:29:05.162877'),(15,'shopapp','0001_initial','2022-01-20 03:29:06.433215'),(16,'admin','0001_initial','2022-01-20 03:29:06.795802'),(17,'admin','0002_logentry_remove_auto_add','2022-01-20 03:29:06.830723'),(18,'admin','0003_logentry_add_action_flag_choices','2022-01-20 03:29:06.845215'),(19,'sessions','0001_initial','2022-01-20 03:29:06.901710'),(20,'shopapp','0002_notication_casee_notication_updated_date_and_more','2022-01-20 03:29:07.035803'),(21,'shopapp','0003_alter_user_cart','2022-01-20 03:29:07.051791'),(22,'shopapp','0004_order_active','2022-01-20 03:29:07.106045'),(23,'shopapp','0005_product_content','2022-01-20 03:29:07.146620'),(24,'shopapp','0006_order_phone','2022-01-20 03:29:07.185560'),(25,'shopapp','0007_alter_user_cart','2022-01-20 03:29:07.207508'),(26,'shopapp','0008_alter_order_product_id','2022-01-20 03:29:07.228509'),(27,'shopapp','0009_alter_product_product_price','2022-01-20 03:29:07.347936'),(28,'shopapp','0010_alter_product_product_price','2022-01-20 03:29:07.704906'),(29,'shopapp','0011_alter_product_product_price','2022-01-20 03:29:07.935157'),(30,'shopapp','0012_alter_product_product_price','2022-01-20 03:29:08.057572'),(31,'shopapp','0013_alter_product_product_price','2022-01-20 03:29:08.183776'),(32,'shopapp','0014_alter_product_product_price','2022-01-20 03:29:08.336647');
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

-- Dump completed on 2022-01-20 11:16:31
