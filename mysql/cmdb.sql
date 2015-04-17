-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: cmdb
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `jifang`
--

DROP TABLE IF EXISTS `jifang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `weizhi` char(255) DEFAULT '',
  `tel` char(255) DEFAULT NULL,
  `kefu` char(255) DEFAULT NULL,
  `jigui` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifang`
--

LOCK TABLES `jifang` WRITE;
/*!40000 ALTER TABLE `jifang` DISABLE KEYS */;
INSERT INTO `jifang` VALUES (20,'北京市朝阳区酒仙桥','酒仙桥3区','110','封大大','东区15号'),(21,'的期待我的武器的武器去我的期望','的期待我的武器的武器去我的期望','的期待我的武器的武器去我的期望','的期待我的武器的武器去我的期望','的期待我的武器的武器去我的期望'),(23,'萨达四大四大傻按时','萨达四大四大傻按时','萨达四大四大傻按时','萨达四大四大傻按时','萨达四大四大傻按时'),(24,'阿萨是的撒打算的三大','阿萨是的撒打算的三大','阿萨是的撒打算的三大','阿萨是的撒打算的三大','阿萨是的撒打算的三大'),(25,'测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试');
/*!40000 ALTER TABLE `jifang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` char(255) DEFAULT NULL,
  `hostname` char(255) DEFAULT '',
  `memory` char(255) DEFAULT NULL,
  `cpu` char(255) DEFAULT NULL,
  `disk` char(255) DEFAULT NULL,
  `net_card` char(255) DEFAULT NULL,
  `system` char(255) DEFAULT NULL,
  `model` char(255) DEFAULT NULL,
  `sn` char(255) DEFAULT NULL,
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES (637,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:12'),(638,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:12'),(639,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:12'),(640,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:12'),(641,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:12'),(642,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:12'),(643,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(644,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(645,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(646,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(647,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(648,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(649,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:13'),(650,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(651,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(652,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(653,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(654,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(655,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(656,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:14'),(657,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(658,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(659,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(660,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(661,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(662,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(663,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(664,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(665,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(666,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-21 21:52:15'),(667,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 16:20:59'),(668,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 16:21:59'),(669,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 16:22:57'),(670,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 16:30:09'),(671,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 20:35:25'),(672,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 21:10:21'),(673,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 21:31:54'),(674,'192.168.1.105','localhost','max: 1 TBnumber:      1  Size: 1024 MB','1 Intel(R) Core(TM) i5-3230M','/dev/sda:20971520','1 Intel Corporation 82545EM','CentOS-6.6','\" VMware Virtual Platform\"','VMware-564dd56b321035a8-2e743b8ba093af50','2015-03-22 22:12:53');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` char(255) DEFAULT NULL,
  `passwd` char(255) DEFAULT '',
  `email` char(255) DEFAULT NULL,
  `tel` char(255) DEFAULT NULL,
  `sele` char(255) DEFAULT NULL,
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=679 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (675,'ffewf','ewfew','ewfew','fewfew','管理员','2015-04-12 18:04:16'),(676,'ewfewfew','ewfewfew','wefewfew','ewfewfew','管理员','2015-04-12 18:08:27'),(677,'ewfew','111111','威锋网废物','ewfewfew','管理员','2015-04-12 18:24:03'),(678,'fewfe','ewfewfew','wefew','wefewfew','管理员','2015-04-12 18:32:48');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-18  1:33:41
