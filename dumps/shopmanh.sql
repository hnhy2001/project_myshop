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
INSERT INTO `django_session` VALUES ('j1byt8pkex4ypf16sa00c292tou0iu7g','.eJxVjDsOwjAQBe_iGlm2E_8o6TmDtetd4wBypDipEHeHSCmgfTPzXiLBtta0dV7SROIstDj9bgj5wW0HdId2m2We27pMKHdFHrTL60z8vBzu30GFXr-18S7bMLIZPVuFYAORR4agiyNntQaNHpEGq6JmxRRiyaVEP7hsFIF4fwDoCzhl:1nAOA2:4fwvaAT97FInNvzF6DUImX7Oy-MrQ_4U-pqCgPCLG_w','2022-02-03 03:30:54.733052');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_notication`
--

LOCK TABLES `shopapp_notication` WRITE;
/*!40000 ALTER TABLE `shopapp_notication` DISABLE KEYS */;
INSERT INTO `shopapp_notication` VALUES (1,1,'Đơn hàng của bạn đã bị từ chối',0,'2022-01-20',5,'null','2022-01-20');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_order`
--

LOCK TABLES `shopapp_order` WRITE;
/*!40000 ALTER TABLE `shopapp_order` DISABLE KEYS */;
INSERT INTO `shopapp_order` VALUES (1,2380000,5,0,NULL),(2,310000,5,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_product`
--

LOCK TABLES `shopapp_product` WRITE;
/*!40000 ALTER TABLE `shopapp_product` DISABLE KEYS */;
INSERT INTO `shopapp_product` VALUES (1,'Hộp quà tết trường tồn','img/2022/01/Hop-Qua-Tet-Truong-Ton-2021-1_bJMXg7h.jpg','2022-01-20','2022-01-20',2370000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(2,'Giỏ Quà Tết Như Ý ( Miền Bắc)','img/2022/01/như_ý_cff355dc-07c6-4776-ad7e-23481fdd073b.png','2022-01-20','2022-01-20',300000,1,'Gói trọn những tinh hoa văn hóa bao đời của người Việt, những giỏ quà Tết thay cho lời gửi gắm lời chúc năm mới Bình An, May Mắn, Đoàn Viên, Như Ý, Phú Quý... Những món quà được lựa chọn tuy quen thuộc nhưng hài hòa, bắt mắt và trang trọng. Với sự phong phú về mẫu mã và đa dạng về mức giá, khách hàng có thể dễ dàng lựa chọn một giỏ quà phù hợp để dành tặng những người thân yêu. Giỏ quà Tết Như Ý sẽ là lời nhắn gửi ý nghĩa để mùa Tết Nhâm Dần thêm trọn vẹn.'),(3,'Cá hồi cắt lát Oceangift khay 200g HSD còn 1 năm','img/2022/01/ca-hoi-cat-lat-oceangift-khay-200g-202107031020496993_AOX6qaK.jpg','2022-01-20','2022-01-20',120000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(4,'Thùng 24 lon nước ngọt Coca Cola Plus 320ml','img/2022/01/thung-24-lon-nuoc-ngot-coca-cola-plus-320ml-202103202215288547_300x300_qVxBvet.jpg','2022-01-20','2022-01-20',333333,1,''),(5,'Lốc 5 tặng 1 bánh flan Ánh Hồng hũ LỚN 100g','img/2022/01/loc-5-tang-1-banh-flan-anh-hong-hu-lon-100g-202201171647258141_300x300_q0yE4LI.jpg','2022-01-20','2022-01-20',125000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(6,'Khăn ướt cồn Let-green sạch khuẩn sạch vết bẩn bịch 50 miếng','img/2022/01/khan-uot-con-let-green-sach-khuan-sach-vet-ban-bich-50-mieng-202104201653508_n7zfAPL.jpg','2022-01-20','2022-01-20',20000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(7,'Miếng lót sơ sinh Bobby Newborn 108 miếng (cho bé dưới 1 tháng)','img/2022/01/mieng-lot-so-sinh-bobby-newborn-108-mieng-cho-be-duoi-1-thang-20210428234725_MzuW3bY.jpg','2022-01-20','2022-01-20',143000,1,''),(8,'Hộp 12 cái bao cao su Durex Kingtex 49mm','img/2022/01/hop-12-cai-bao-cao-su-durex-kingtex-49mm-202103022225334635_300x300.jpg','2022-01-20','2022-01-20',114000,1,''),(9,'Bánh quy bơ Danesita hộp 454g','img/2022/01/banh-quy-bo-vi-truyen-thong-danesita-hop-454g-tet-202112280925329814_7yVfEGJ.jpg','2022-01-20','2022-01-20',222222,1,''),(10,'Thùng 48 bịch sữa tiệt trùng có đường Dutch Lady Canxi & Protein 220ml','img/2022/01/thung-48-bich-sua-tiet-trung-co-duong-dutch-lady-canxi-protein-220ml-2021051_JYz2PPy.jpg','2022-01-20','2022-01-20',365000,1,''),(11,'Bia Sapporo Premium lon 330ml','img/2022/01/162427520073410012014-LON-Loc-6-lon-bia-saporo-Premium-650ml.jpg','2022-01-20','2022-01-20',16000,1,'Bia Sapporo Premium lon 330ml được sản phẩm từ các nguyên liệu cao cấp, tinh khiết, cho ra sản phẩm chất lượng, hương vị thơm ngon.\r\n\r\nThông tin sản phẩm\r\nThương hiệu: Sapporo (Nhật Bản)\r\nDung tích: 330ml\r\nĐóng gói: Thùng 24 lon\r\nBia Sapporo Premium lon 330ml được sản xuất trên dây chuyền công nghệ hiện đại, được giám sát, kiểm soát chặt chẽ từ nguyên liệu đầu vào, chế biến, đóng gói đảm bảo tạo ra sản phẩm chất lượng và an toàn cho người sử dụng.\r\n\r\nBia Sapporo được thiết kế dạng lon nhỏ gọn, dễ dàng mang theo bên mình khi đi chơi, dã ngoại, picnic... Phục vụ nhu cầu giải khát của bạn mọi thời điểm. Bia thích hợp cho những dịp tụ tập bạn bè hay vui chơi, liên hoan, tiệc cuối tuần...\r\n\r\nChú ý khi sử dụng\r\n\r\nSử dụng cho người từ 18 tuổi trở lên.\r\nKhông dùng cho phụ nữ có thai.\r\nĐã uống rượu bia thì không lái xe.\r\nHướng dẫn sử dụng và bảo quản\r\nUống trực tiếp và ngon hơn khi uống lạnh.\r\nBảo quản nơi khô ráo, thoáng mát và tránh ánh sáng mặt trời.\r\nLưu ý:\r\n\r\n- Hạn sử dụng thực tế quý khách vui lòng xem trên bao bì.\r\n\r\n- Hình sản phẩm chỉ mang tính chất minh họa, hình thực tế bao bì của sản phẩm tùy thời điểm sẽ khác so với thực tế.\r\n\r\nThông tin\r\nXuất Xứ\r\n\r\nVietnam\r\n\r\nThành Phần\r\n\r\nGhi trên bao bì sản phẩm\r\n\r\nHướng Dẫn Sử Dụng\r\n\r\nDùng trực tiếp'),(12,'Nho đen không hạt Mỹ','img/2022/01/162427183301910240912-KG-Nho-den-khung-hat-MyVMNK.jpg','2022-01-20','2022-01-20',240000,1,'Nho đen không hạt Mỹ là giống nho đen nổi tiếng nhất hiện nay, có độ cứng trái, ngọt và mọng nước. Đặc trưng nho đen có vỏ dày hơn, nên sẽ có độ chát nhẹ xen kẽ. Nho đen giàu vitamin A, vitamin C, vitamin K cùng với flavonoid giúp tăng cường hệ miễn dịch.\r\n\r\nNho đen không hạt Mỹ có resveratrol, một loại phenol tự nhiên có trong nho đen chịu trách nhiệm làm tăng bài tiết insulin và sự nhạy cảm với insulin, qua đó kiểm soát và duy trì lượng đường trong máu.\r\n\r\nNgoài ra, nho đen có chứa lutein và zeaxanthin, cả hai đều là carotenoid được biết đến để giúp duy trì một thị lực tốt. Nho đen sẽ bảo vệ mắt bằng cách bảo vệ chống lại sự oxy hóa của võng mạc và cũng ngăn ngừa chứng mù loà. Thường xuyên ăn nho đen cũng giúp cải thiện trí nhớ cũng như hỗ trợ chữa đau nửa đầu, chứng suy giảm trí nhớ và ngăn ngừa bệnh Alzheimer. Các chất trong nho đen hoạt động như một chất bảo vệ não.\r\n\r\nĐặc biệt, các loại nho đen còn có đặc tính chống đột biến và chống oxy hoá rất hiệu quả trong việc ngăn ngừa các nguy cơ bị ung thư.\r\n\r\nHướng dẫn sử dụng:\r\nRửa nhẹ nhàng trái nho để loại bỏ lớp phấn trắng trên vỏ.\r\nKhông nên rửa nho trước khi bảo quản trong ngăn mát tủ lạnh vì nếu rửa trước nho sẽ dễ bị hư, thối.\r\nChỉ nên rửa một lượng vừa đủ ăn.\r\nNho đen có thể ăn trực tiếp, làm nước ép, sinh tố, làm bánh.\r\nLưu ý:\r\n\r\n- Hạn sử dụng thực tế quý khách vui lòng xem trên bao bì.\r\n\r\n- Hình sản phẩm chỉ mang tính chất minh họa, hình thực tế bao bì của sản phẩm tùy thời điểm sẽ khác so với thực tế.');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_user`
--

LOCK TABLES `shopapp_user` WRITE;
/*!40000 ALTER TABLE `shopapp_user` DISABLE KEYS */;
INSERT INTO `shopapp_user` VALUES (1,'pbkdf2_sha256$320000$zRPKBfJdYo1es9aw6vAe0f$wY2jyb2jXDCLU8QYUfdC+UAsj1XAxH3fUBBVdMqft4Y=','2022-01-20 03:30:54.727073',1,'admin','','','manhdop01@gmail.com',1,1,'2022-01-20 03:30:39.418479','',''),(4,'123456','2022-01-20 03:32:46.000000',0,'adminweb','','','sonngu@gmail.com',0,1,'2022-01-20 03:32:38.000000','123','admin'),(5,'123',NULL,0,'manhdzai','','','',0,1,'2022-01-20 03:34:01.379920','0354137873','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_user_cart`
--

LOCK TABLES `shopapp_user_cart` WRITE;
/*!40000 ALTER TABLE `shopapp_user_cart` DISABLE KEYS */;
INSERT INTO `shopapp_user_cart` VALUES (3,5,7);
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

-- Dump completed on 2022-01-20 11:17:19
