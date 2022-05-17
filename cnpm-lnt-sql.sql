-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cnpm-lnt
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `IdAccount` int NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `userRole` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IdAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (3,'luan','$2a$10$YfVznZMAAKzdaaHesf6bQe/ltIFkd/REDP3nkxDBzLGrQPWgC25Re','duyluan0804@gmail.com','ROLE_ADMIN','https://res.cloudinary.com/danang-university-architecture/image/upload/v1652686293/gksnkgdylpkozoqnv3vn.jpg'),(7,'Thanhnhan','$2a$10$FuM9F/TJaEa5jp9ZDilMq.qvSfXJm6HFFsGt9GlTAsVP/rGibptVu','nhan_1951220056@dau.edu.vn','ROLE_USER',NULL),(8,'Nhan','$2a$10$.W8lo0CXDBu9agw23kE4SOjMnBbHIPH7R5eM22GQAtzGoNDNRz4Z6','nhan_1951220056@dau.edu.vn','ROLE_USER',NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `IdComment` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `IdAccount` int NOT NULL,
  `IDMatHang` int NOT NULL,
  PRIMARY KEY (`IdComment`),
  KEY `fk_comment_account` (`IdAccount`),
  KEY `fk_comment_mathang` (`IDMatHang`),
  CONSTRAINT `fk_comment_account` FOREIGN KEY (`IdAccount`) REFERENCES `account` (`IdAccount`),
  CONSTRAINT `fk_comment_mathang` FOREIGN KEY (`IDMatHang`) REFERENCES `mathang` (`IDMatHang`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Hello test comment','2021-05-18 21:26:45',3,1),(2,'Hello test comment','2021-05-18 21:26:45',7,21),(3,'Comment khong hien gio','2022-05-11 10:22:22',3,1),(4,'San pham nhu clcccc','2022-05-26 20:12:33',3,14),(5,'San pham nhu clcccc','2022-05-24 20:12:39',3,14),(13,'Hello phần comment',NULL,3,1),(14,'Heelooo',NULL,3,6),(15,'Sắp hoàn thiện phần comment','2022-05-12 00:00:00',3,14),(16,'san pham tuyet voi','2022-05-15 00:00:00',3,6),(17,'san pham tuyet ko tot','2022-05-15 00:00:00',3,6),(18,'san pham tuyet tam duoc','2022-05-15 00:00:00',3,6),(19,'san pham bi mop','2022-05-15 00:00:00',3,6),(20,'san pham bi hu','2022-05-15 00:00:00',3,6),(21,'san pham bi hu ri','2022-05-15 00:00:00',3,6),(22,'san pham bi hu roi','2022-05-15 00:00:00',3,6),(23,'san pham ko chay duoc','2022-05-15 00:00:00',3,6),(24,'san pham chay rồi','2022-05-15 00:00:00',3,6),(25,'sản pham như cc','2022-05-15 00:00:00',3,6),(26,'bố đời thiên hạ','2022-05-15 00:00:00',3,6),(27,'comment of Luan\'s','2022-05-17 00:00:00',3,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhgia` (
  `IDPhanHoi` int NOT NULL AUTO_INCREMENT,
  `IDKhachHang` int NOT NULL,
  `IDMatHang` int NOT NULL,
  `BinhLuan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `ChatLuong` float NOT NULL,
  PRIMARY KEY (`IDPhanHoi`),
  KEY `danhgia-account` (`IDKhachHang`),
  KEY `danhgia-sanpham` (`IDMatHang`),
  CONSTRAINT `danhgia-account` FOREIGN KEY (`IDKhachHang`) REFERENCES `account` (`IdAccount`),
  CONSTRAINT `danhgia-sanpham` FOREIGN KEY (`IDMatHang`) REFERENCES `mathang` (`IDMatHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhgia`
--

LOCK TABLES `danhgia` WRITE;
/*!40000 ALTER TABLE `danhgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `danhgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diachi`
--

DROP TABLE IF EXISTS `diachi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diachi` (
  `IdAddress` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdAccount` int DEFAULT NULL,
  `name` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IdAddress`),
  KEY `address_account_idx` (`IdAccount`),
  CONSTRAINT `address_account` FOREIGN KEY (`IdAccount`) REFERENCES `account` (`IdAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diachi`
--

LOCK TABLES `diachi` WRITE;
/*!40000 ALTER TABLE `diachi` DISABLE KEYS */;
INSERT INTO `diachi` VALUES (1,'34 Dương Thưởng',3,'luan','0375091675');
/*!40000 ALTER TABLE `diachi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giohang` (
  `IdGioHang` int NOT NULL AUTO_INCREMENT,
  `IdKhach` int NOT NULL,
  `IDMatHang` int NOT NULL,
  `SoLuong` int NOT NULL,
  PRIMARY KEY (`IdGioHang`),
  KEY `gh-account` (`IdKhach`),
  KEY `gh-sanpham` (`IDMatHang`),
  CONSTRAINT `gh-account` FOREIGN KEY (`IdKhach`) REFERENCES `account` (`IdAccount`),
  CONSTRAINT `gh-sanpham` FOREIGN KEY (`IDMatHang`) REFERENCES `mathang` (`IDMatHang`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
INSERT INTO `giohang` VALUES (41,7,14,3),(43,7,17,3),(50,3,21,1),(51,3,26,1),(57,3,6,1);
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `IDHoaDon` int NOT NULL AUTO_INCREMENT,
  `IDKhachHang` int NOT NULL,
  `IDMatHang` int NOT NULL,
  `SoLuong` int NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `TinhTrang` int NOT NULL,
  `diachi` int NOT NULL,
  `gia` decimal(10,0) NOT NULL,
  `dateDatHang` datetime NOT NULL,
  PRIMARY KEY (`IDHoaDon`),
  KEY `hoadon-khachhang` (`IDKhachHang`),
  KEY `hoadon-hang` (`IDMatHang`),
  KEY `address-hoadon_idx` (`diachi`),
  CONSTRAINT `address-hoadon` FOREIGN KEY (`diachi`) REFERENCES `diachi` (`IdAddress`),
  CONSTRAINT `hoadon-hang` FOREIGN KEY (`IDMatHang`) REFERENCES `mathang` (`IDMatHang`),
  CONSTRAINT `hoadon-khachhang` FOREIGN KEY (`IDKhachHang`) REFERENCES `account` (`IdAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,3,25,2,500000,0,1,25,'0000-00-00 00:00:00'),(2,3,21,1,21700000,0,1,21,'0000-00-00 00:00:00'),(3,3,6,1,156133121,0,1,6,'0000-00-00 00:00:00'),(4,3,25,2,500000,0,1,250000,'0000-00-00 00:00:00'),(5,3,21,1,21700000,0,1,21700000,'0000-00-00 00:00:00'),(6,3,6,1,156133121,0,1,156133121,'0000-00-00 00:00:00'),(7,3,14,1,123000,0,1,123000,'0000-00-00 00:00:00'),(8,3,6,1,156133121,0,1,156133121,'2022-05-16 22:42:02');
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `idImg` int NOT NULL AUTO_INCREMENT,
  `linkImg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idMatHang` int DEFAULT NULL,
  PRIMARY KEY (`idImg`),
  KEY `idMatHang_idx` (`idMatHang`),
  CONSTRAINT `img-mathang` FOREIGN KEY (`idMatHang`) REFERENCES `mathang` (`IDMatHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisanpham` (
  `IDLoaiSP` int NOT NULL AUTO_INCREMENT,
  `IDNhomSP` int NOT NULL,
  `TenLoaiSP` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDLoaiSP`),
  KEY `loaisp-nhomsanpham` (`IDNhomSP`),
  CONSTRAINT `loaisp-nhomsanpham` FOREIGN KEY (`IDNhomSP`) REFERENCES `nhomsanpham` (`IDNhomSP`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` VALUES (1,1,'Điện thoại'),(2,1,'Thiết bị điện tử'),(4,10,'Linh kiện điện tử'),(13,14,'Aduino UNO');
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mathang` (
  `IDMatHang` int NOT NULL AUTO_INCREMENT,
  `TenMH` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `Hang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `Gia` decimal(10,0) NOT NULL,
  `GiaKhuyenMai` decimal(10,0) NOT NULL,
  `HinhAnh` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int NOT NULL,
  `ChiTiet` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `LoaiSP` int NOT NULL,
  PRIMARY KEY (`IDMatHang`),
  KEY `mathang-loaisanpham` (`LoaiSP`),
  CONSTRAINT `mathang-loaisanpham` FOREIGN KEY (`LoaiSP`) REFERENCES `loaisanpham` (`IDLoaiSP`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathang`
--

LOCK TABLES `mathang` WRITE;
/*!40000 ALTER TABLE `mathang` DISABLE KEYS */;
INSERT INTO `mathang` VALUES (1,'iphone 12 pro max','Trung Quốc',20000000,1200000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652064408/dg7imrndmcpc84uchica.jpg',20,'<p>điện thoại đẹp</p>\r\n',1),(6,'Quần - áo sơ mi','Việt Nam',10000,156133121,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652057745/hlri3o0dw5k5s7xdtrli.jpg',255555,'<p>Quần s&igrave; &aacute;o sơ mi chuy&ecirc;n cung cấp số lượng lớn cho c&aacute;c nh&agrave; b&aacute;n lẽ</p>\r\n',1),(14,'Áo sơ mi','Việt Nam',134000,123000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652057769/z60ussfb4l5qg4zwpy9d.jpg',30,'<p>Quần s&igrave; &aacute;o sơ mi chuy&ecirc;n cung cấp số lượng lớn cho c&aacute;c nh&agrave; b&aacute;n lẽ</p>\r\n',1),(17,'Điện thoại','Hàn Quốc',1700000,1800000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1650619344/jb8dp9szyfp4fu7nw8xa.jpg',0,'Chụp ảnh chất lượng với 4 camera sau 50MP + 5MP + 2MP + 2MP\r\nTrải nghiệm hình ảnh sống động và sắc nét nhờ màn hình FHD+ 6.6\'\'\r\nLàm việc, học tập và giải trí nhanh chóng với vi xử lý Exynos 850\r\nĐa nhiệm mượt mà với RAM 4GB, lưu trữ tối ưu với ROM 128GB\r\nTối ưu hóa trải nghiệm với pin 5000mAh cùng khả năng sạc nhanh 15W\r\nHệ thống âm thanh vòm Dolby ATMOS cho âm thanh sống động',1),(19,'Galaxy J8 Pro','Việt Nam',1351135,15113,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652057804/cufs4btyhdia7rgpygjg.jpg',65135,'<p>45312</p>\r\n',1),(20,'Quạt gió','Việt Nam',125000,135000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1650635888/thy2507qylpxluzwyrka.jpg',23,'Gió mạnh mẽ không ồn khi hoạt động',1),(21,'Quạt điều hòa Rapido 3000D','Việt Nam',20000000,21700000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1650636177/f9sjftjfxrlf5t7svn14.jpg',6,'\r\nTặng cho khách lần đầu mua hàng online tại web BachhoaXANH.com\r\nMã giảm 20% tối đa 100.000đ\r\n\r\nFREEship đơn hàng từ 300.000đ\r\n\r\nÁp dụng tại Tp.HCM và 1 số khu vực, 1 SĐT nhận 1 lần (Xem chi tiết)\r\nTặng suất mua xe đạp Giảm đến 30% (không kèm khuyến mãi khác) (click xem chi tiết)\r\n\r\nMua Đồng hồ thời trang giảm 40% cho Đồng hồ dưới 3 triệu, giảm 30% cho Đồng hồ từ 3 triệu trở lên',2),(25,'Quạt điều hòa Rapido 3000D','Việt Nam',240000,250000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1650637093/tljy9cvdct9hjkzt52ps.jpg',30,'Hehe',4),(26,'Quạt điều hòa Rapido 3000D','Việt Nam',25000,45000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1650856514/cbjvm0ow7nkult4egs8r.jpg',12000,'bạn đã từng một lần cảm nhận vẻ đẹp của quê hương Việt Nam thân yêu. Việt Nam không chỉ làm du khách khắp thế giới trầm trồ với vẻ đẹp ngút ngàn của các danh lam thắng cảnh, phong cảnh thiên nhiên hùng vĩ mà quê hương ta còn tạo nên những tâm hồn thanh khiết, có sức sống mãnh liệt, ý chí kiên cường như những đóa hoa sen vẫn tươi thắm tỏa hương thơm ngát trong hồ',1),(27,'Quạt điều hòa Rapido 3000D','Việt Nam',770000,780000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652064178/l8smcpjt67mrw10u7seh.jpg',13,'<p><strong><em>Bạn đ&atilde; từng một lần cảm nhận vẻ đẹp của qu&ecirc; hương Việt Nam th&acirc;n y&ecirc;u. Việt Nam kh&ocirc;ng chỉ l&agrave;m du kh&aacute;ch khắp thế giới trầm trồ với vẻ đẹp ng&uacute;t ng&agrave;n của c&aacute;c danh lam thắng cảnh, phong cảnh thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ m&agrave; qu&ecirc; hương ta c&ograve;n tạo n&ecirc;n những t&acirc;m hồn thanh khiết, c&oacute; sức sống m&atilde;nh liệt, &yacute; ch&iacute; ki&ecirc;n cường như những đ&oacute;a hoa sen vẫn tươi thắm tỏa hương thơm ng&aacute;t trong hồ. H&igrave;nh ảnh qu&ecirc; hương Việt Nam lu&ocirc;n khiến tất cả con người muốn được một lần h&ograve;a m&igrave;nh v&agrave;o n&eacute;t đẹp tinh t&uacute;y ấy!<a href=\"https://thuthuatnhanh.com/hinh-anh-que-huong/\"><img src=\"https://thuthuatnhanh.com/thuthuatnhanh.jpg\" /></a></em></strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://thuthuatnhanh.com/wp-content/uploads/2020/01/hinh-anh-que-huong.jpg\" style=\"border-style:solid; border-width:1px; height:133px; width:200px\" /></p>\r\n',1),(28,'Galaxy J9 Pro','Việt Nam',79000,78000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652057837/bpcgo7gw2isfg4io8zf3.jpg',23,'<p>hcjacja</p>\r\n',1),(29,'Quạt điều hòa Rapido 3000D','Việt Nam',42000,350000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652064297/vyxgpsiwav38qxogvxre.jpg',12,'<p>H&agrave;ng chất lượng cao</p>\r\n',1),(30,'Rapido 3000D','Việt Nam',18000,15000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652023706/ma4c6rnxilezlb9a770k.jpg',8,'<p>H&agrave;ng chất lượng cao</p>\r\n',2),(31,'Chuột không dây','Việt Nam',10000,12000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652060180/zksprqdv9bsdoulpvmqy.jpg',12,'<p>hhhh</p>\r\n',2),(32,'Aduino ','Viet Nam',240000,250000,'https://res.cloudinary.com/danang-university-architecture/image/upload/v1652313919/rblnifiidptyrlbkr6ss.jpg',20,'<p>Giup hoat dong tot</p>\r\n',4);
/*!40000 ALTER TABLE `mathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhomsanpham`
--

DROP TABLE IF EXISTS `nhomsanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhomsanpham` (
  `IDNhomSP` int NOT NULL AUTO_INCREMENT,
  `TenNhomSP` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDNhomSP`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhomsanpham`
--

LOCK TABLES `nhomsanpham` WRITE;
/*!40000 ALTER TABLE `nhomsanpham` DISABLE KEYS */;
INSERT INTO `nhomsanpham` VALUES (1,'Nước hoa'),(10,'Giày dép - Áo quần'),(14,'Điện tử - Điện lạnh'),(19,'Cảm biến nhiệt độ');
/*!40000 ALTER TABLE `nhomsanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 20:42:51
