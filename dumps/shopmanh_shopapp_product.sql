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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-20 11:16:31
