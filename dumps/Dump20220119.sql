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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add notication',9,'add_notication'),(34,'Can change notication',9,'change_notication'),(35,'Can delete notication',9,'delete_notication'),(36,'Can view notication',9,'view_notication');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(9,'shopapp','notication'),(8,'shopapp','order'),(7,'shopapp','product'),(6,'shopapp','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f2ysfyy7rolzbw746b07kl1klcqh5qgq','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1n9rCh:4MEZBrMYRYWxyQJpc3CAsElI4oFz63ye3043pi9wnvY','2022-02-01 16:19:27.519912'),('iplxqmxy5wsjutuvdprhsyev6kr899nh','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1n8mSU:zx2u_mNEtEYQq8Kf_PhKS3lIEq471NSklBXl530QpYI','2022-01-29 17:03:18.823250'),('lb9nq0nb69p04oan568ctg6brgc022in','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1n8ltS:K-F7reR8EVRX6RQjf7Sv8CL0Y0wDghVGgtHmHIKYskk','2022-01-29 16:27:06.218571'),('xz6gfjfjc9wyu5wivs3ed73ln6mpnl3s','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1nA2qv:KPkTKkQzjMFTHSWsc5pepOuCd681tIYhz0WIOgKx5WQ','2022-02-02 04:45:45.794258');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_notication`
--

DROP TABLE IF EXISTS `shopapp_notication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_notication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` date NOT NULL,
  `user_id` bigint NOT NULL,
  `casee` varchar(50) NOT NULL,
  `updated_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopapp_notication_user_id_3a65e750_fk_shopapp_user_id` (`user_id`),
  CONSTRAINT `shopapp_notication_user_id_3a65e750_fk_shopapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_notication`
--

LOCK TABLES `shopapp_notication` WRITE;
/*!40000 ALTER TABLE `shopapp_notication` DISABLE KEYS */;
INSERT INTO `shopapp_notication` VALUES (1,1,'Đơn hàng số 1 đã được chấp nhận',0,'2022-01-16',4,'null','2022-01-16'),(2,1,'Đơn hàng số 2 đã được chấp nhận',0,'2022-01-16',3,'null','2022-01-16'),(3,1,'Đơn hàng số 3 đã bị từ chối',0,'2022-01-16',5,'null','2022-01-16'),(4,1,'Đơn hàng số 4 đã bị từ chối',0,'2022-01-18',2,'null','2022-01-18'),(5,1,'Đơn hàng số 6 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(6,1,'Đơn hàng số 5 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(7,1,'Đơn hàng số 7 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(8,1,'Đơn hàng số 9 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(9,1,'Đơn hàng số 8 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(10,1,'Đơn hàng số 10 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(11,1,'Đơn hàng số 11 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(12,1,'Đơn hàng số 12 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(13,1,'Đơn hàng số 13 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(14,1,'Đơn hàng số 14 đã bị từ chối',0,'2022-01-19',3,'null','2022-01-19');
/*!40000 ALTER TABLE `shopapp_notication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_order`
--

DROP TABLE IF EXISTS `shopapp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_price` double NOT NULL,
  `user_id` bigint NOT NULL,
  `active` tinyint(1) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopapp_order_user_id_8d665b62_fk_shopapp_user_id` (`user_id`),
  CONSTRAINT `shopapp_order_user_id_8d665b62_fk_shopapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_order`
--

LOCK TABLES `shopapp_order` WRITE;
/*!40000 ALTER TABLE `shopapp_order` DISABLE KEYS */;
INSERT INTO `shopapp_order` VALUES (1,123134124,4,0,NULL),(2,123134124,3,0,NULL),(3,123134124,3,0,NULL),(4,123134124,3,0,NULL),(5,59000,3,0,NULL),(6,100000,3,0,NULL),(7,68000,3,0,NULL),(8,39000,3,0,NULL),(9,54000,3,0,NULL),(10,183000,3,0,NULL),(11,62000,3,0,NULL),(12,62000,3,0,NULL),(13,54000,3,0,NULL),(14,54000,3,0,NULL);
/*!40000 ALTER TABLE `shopapp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_order_product_id`
--

DROP TABLE IF EXISTS `shopapp_order_product_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_order_product_id` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shopapp_order_product_id_order_id_product_id_08e7ffed_uniq` (`order_id`,`product_id`),
  KEY `shopapp_order_produc_product_id_bfea8204_fk_shopapp_p` (`product_id`),
  CONSTRAINT `shopapp_order_produc_product_id_bfea8204_fk_shopapp_p` FOREIGN KEY (`product_id`) REFERENCES `shopapp_product` (`id`),
  CONSTRAINT `shopapp_order_product_id_order_id_9acc84aa_fk_shopapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `shopapp_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_order_product_id`
--

LOCK TABLES `shopapp_order_product_id` WRITE;
/*!40000 ALTER TABLE `shopapp_order_product_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopapp_order_product_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_product`
--

DROP TABLE IF EXISTS `shopapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `product_price` double NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_product`
--

LOCK TABLES `shopapp_product` WRITE;
/*!40000 ALTER TABLE `shopapp_product` DISABLE KEYS */;
INSERT INTO `shopapp_product` VALUES (3,'Richy Bơ Trứng Hộp 270gx16','img/2022/01/12.-Richy-Bơ-Trứng-Hộp-270gx16-copy.jpg','2022-01-18','2022-01-18',44000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(4,'Bánh quy bơ Danisa','img/2022/01/Bánh_quy_bơ_Danisa.jfif','2022-01-18','2022-01-18',52000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(5,'Bánh bông lan sợi thịt gà orion C\'est Bon','img/2022/01/bánh_bông_lan_sợi_thịt_gà_orion_Cest_Bon.jpg','2022-01-18','2022-01-19',38000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(6,'Bánh Choco-pie Orion dark','img/2022/01/Banh_Choco-pie_Orion_dark.jpg','2022-01-18','2022-01-18',49000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(7,'bánh quy LU','img/2022/01/bánh_quy_LU.jpg','2022-01-18','2022-01-18',58000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(8,'Bánh Choco-pie Orion','img/2022/01/Banh_Choco-pie_Orion.jfif','2022-01-18','2022-01-18',42000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(9,'Bánh Choco-pie Orion matcha','img/2022/01/Banh_Choco-pie_Orion_matcha.jfif','2022-01-18','2022-01-18',46000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(10,'Bánh bông lan cuộn kem socola và lá dứa Solite','img/2022/01/Bánh_bông_lan_cuộn_kem_socola_và_lá_dứa_Solite.jpeg','2022-01-18','2022-01-18',33000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(11,'bánh quy bơ kẹp  cosy','img/2022/01/bánh_quy_bơ_kẹp__cosy.jpg','2022-01-18','2022-01-18',29000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(12,'Vinfast-President','img/2022/01/VinFast-President-1-9915-1596526753.jpg','2022-01-19','2022-01-19',3000000000,1,'Xe đẹp'),(13,'Kawasaki Ninja H2','img/2022/01/kawasaki-ninja-h2-4k-qu-1536x864.jpg','2022-01-19','2022-01-19',12000000000,1,'PKL'),(14,'Xe Lắc','img/2022/01/xe-lac-tay-cho-be-f05-4.jpg','2022-01-19','2022-01-19',350000,1,'Xe lắc cho bé');
/*!40000 ALTER TABLE `shopapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_user`
--

DROP TABLE IF EXISTS `shopapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_user`
--

LOCK TABLES `shopapp_user` WRITE;
/*!40000 ALTER TABLE `shopapp_user` DISABLE KEYS */;
INSERT INTO `shopapp_user` VALUES (1,'pbkdf2_sha256$320000$RiTBCD3K7iKgqi13OB6QqZ$As05c8lHS9hG8MFD1xMbACWcC/StXqQUawJm5ppZ56A=','2022-01-19 04:45:45.787834',1,'admin','','','doxuanmanh@gmail.com',1,1,'2022-01-15 16:26:38.876917','',''),(2,'admin','2022-01-15 16:32:13.000000',0,'manh_admin','','','',0,1,'2022-01-15 16:32:07.000000','123456789','admin'),(3,'hnhy',NULL,0,'hnhy','','','',0,1,'2022-01-15 16:33:30.761834','0354137873','user'),(4,'12345',NULL,0,'manh','','','',0,1,'2022-01-15 17:23:00.767877','12345','user'),(5,'admin1','2022-01-15 17:48:10.000000',0,'admin1','','','',0,1,'2022-01-15 17:48:00.000000','12345','admin'),(7,'123',NULL,0,'manh29','','','',0,1,'2022-01-15 17:49:36.494225','123','user'),(9,'hnhy123123',NULL,0,'hnhy213123','','','',0,1,'2022-01-19 06:09:19.808357','123123','user');
/*!40000 ALTER TABLE `shopapp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_user_cart`
--

DROP TABLE IF EXISTS `shopapp_user_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_user_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shopapp_user_cart_user_id_product_id_4a35164b_uniq` (`user_id`,`product_id`),
  KEY `shopapp_user_cart_product_id_924e6b22_fk_shopapp_product_id` (`product_id`),
  CONSTRAINT `shopapp_user_cart_product_id_924e6b22_fk_shopapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `shopapp_product` (`id`),
  CONSTRAINT `shopapp_user_cart_user_id_e5948b6b_fk_shopapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_user_cart`
--

LOCK TABLES `shopapp_user_cart` WRITE;
/*!40000 ALTER TABLE `shopapp_user_cart` DISABLE KEYS */;
INSERT INTO `shopapp_user_cart` VALUES (12,2,10),(31,3,5),(32,3,6),(35,3,14);
/*!40000 ALTER TABLE `shopapp_user_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_user_groups`
--

DROP TABLE IF EXISTS `shopapp_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shopapp_user_groups_user_id_group_id_098441d9_uniq` (`user_id`,`group_id`),
  KEY `shopapp_user_groups_group_id_4aadad6b_fk_auth_group_id` (`group_id`),
  CONSTRAINT `shopapp_user_groups_group_id_4aadad6b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `shopapp_user_groups_user_id_75859cbe_fk_shopapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_user_groups`
--

LOCK TABLES `shopapp_user_groups` WRITE;
/*!40000 ALTER TABLE `shopapp_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopapp_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_user_user_permissions`
--

DROP TABLE IF EXISTS `shopapp_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shopapp_user_user_permis_user_id_permission_id_9889b8b7_uniq` (`user_id`,`permission_id`),
  KEY `shopapp_user_user_pe_permission_id_c7dc8aa0_fk_auth_perm` (`permission_id`),
  CONSTRAINT `shopapp_user_user_pe_permission_id_c7dc8aa0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `shopapp_user_user_pe_user_id_cb330252_fk_shopapp_u` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_user_user_permissions`
--

LOCK TABLES `shopapp_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `shopapp_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopapp_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 20:10:02
