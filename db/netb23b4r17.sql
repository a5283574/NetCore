-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: netb23b4r17
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `netb23b4r17`
--

/*!40000 DROP DATABASE IF EXISTS `netb23b4r17`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `netb23b4r17` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `netb23b4r17`;

--
-- Table structure for table `cepingshi`
--

DROP TABLE IF EXISTS `cepingshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cepingshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cepingzhanghao` varchar(200) NOT NULL COMMENT '测评账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `cepingxingming` varchar(200) DEFAULT NULL COMMENT '测评姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cepingzhanghao` (`cepingzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=6384888696522 DEFAULT CHARSET=utf8 COMMENT='测评师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cepingshi`
--

LOCK TABLES `cepingshi` WRITE;
/*!40000 ALTER TABLE `cepingshi` DISABLE KEYS */;
INSERT INTO `cepingshi` VALUES (21,'2024-04-16 09:53:29','测评账号1','123456','测评姓名1','男','年龄1','upload/cepingshi_touxiang1.jpg','13823888881'),(22,'2024-04-16 09:53:29','测评账号2','123456','测评姓名2','男','年龄2','upload/cepingshi_touxiang2.jpg','13823888882'),(23,'2024-04-16 09:53:29','测评账号3','123456','测评姓名3','男','年龄3','upload/cepingshi_touxiang3.jpg','13823888883'),(24,'2024-04-16 09:53:29','测评账号4','123456','测评姓名4','男','年龄4','upload/cepingshi_touxiang4.jpg','13823888884'),(25,'2024-04-16 09:53:29','测评账号5','123456','测评姓名5','男','年龄5','upload/cepingshi_touxiang5.jpg','13823888885'),(26,'2024-04-16 09:53:29','测评账号6','123456','测评姓名6','男','年龄6','upload/cepingshi_touxiang6.jpg','13823888886'),(27,'2024-04-16 09:53:29','测评账号7','123456','测评姓名7','男','年龄7','upload/cepingshi_touxiang7.jpg','13823888887'),(28,'2024-04-16 09:53:29','测评账号8','123456','测评姓名8','男','年龄8','upload/cepingshi_touxiang8.jpg','13823888888'),(6384888696521,'2024-04-16 09:56:05','22','22','李行','女','33','upload/1713261363098.png','13958478855');
/*!40000 ALTER TABLE `cepingshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-04-16 09:53:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmuceping`
--

DROP TABLE IF EXISTS `xiangmuceping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmuceping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `mubiao` varchar(200) DEFAULT NULL COMMENT '目标',
  `shijianbiao` varchar(200) DEFAULT NULL COMMENT '时间表',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `cepingzhanghao` varchar(200) DEFAULT NULL COMMENT '测评账号',
  `cepingxingming` varchar(200) DEFAULT NULL COMMENT '测评姓名',
  `xitongmingcheng` varchar(200) DEFAULT NULL COMMENT '系统名称',
  `suoshudanwei` varchar(200) DEFAULT NULL COMMENT '所属单位',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `xitongdengji` varchar(200) DEFAULT NULL COMMENT '系统等级',
  `cepingjieguo` varchar(200) DEFAULT NULL COMMENT '测评结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6385254235033 DEFAULT CHARSET=utf8 COMMENT='项目测评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmuceping`
--

LOCK TABLES `xiangmuceping` WRITE;
/*!40000 ALTER TABLE `xiangmuceping` DISABLE KEYS */;
INSERT INTO `xiangmuceping` VALUES (41,'2024-04-16 09:53:29','项目名称1','目标1','时间表1','用户账号1','用户姓名1','测评账号1','测评姓名1','系统名称1','所属单位1','联系人1','系统等级1','测评结果1'),(42,'2024-04-16 09:53:29','项目名称2','目标2','时间表2','用户账号2','用户姓名2','测评账号2','测评姓名2','系统名称2','所属单位2','联系人2','系统等级2','测评结果2'),(43,'2024-04-16 09:53:29','项目名称3','目标3','时间表3','用户账号3','用户姓名3','测评账号3','测评姓名3','系统名称3','所属单位3','联系人3','系统等级3','测评结果3'),(44,'2024-04-16 09:53:29','项目名称4','目标4','时间表4','用户账号4','用户姓名4','测评账号4','测评姓名4','系统名称4','所属单位4','联系人4','系统等级4','测评结果4'),(45,'2024-04-16 09:53:29','项目名称5','目标5','时间表5','用户账号5','用户姓名5','测评账号5','测评姓名5','系统名称5','所属单位5','联系人5','系统等级5','测评结果5'),(46,'2024-04-16 09:53:29','项目名称6','目标6','时间表6','用户账号6','用户姓名6','测评账号6','测评姓名6','系统名称6','所属单位6','联系人6','系统等级6','测评结果6'),(47,'2024-04-16 09:53:29','项目名称7','目标7','时间表7','用户账号7','用户姓名7','测评账号7','测评姓名7','系统名称7','所属单位7','联系人7','系统等级7','测评结果7'),(48,'2024-04-16 09:53:29','项目名称8','目标8','时间表8','用户账号8','用户姓名8','测评账号8','测评姓名8','系统名称8','所属单位8','联系人8','系统等级8','测评结果8'),(6385254235032,'2024-04-16 09:56:45','我的项目','魂牵梦萦 ','无可奈何','11','王子','22','李行','系统名称','单位','王子','一','70');
/*!40000 ALTER TABLE `xiangmuceping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmushenbao`
--

DROP TABLE IF EXISTS `xiangmushenbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmushenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `mubiao` varchar(200) DEFAULT NULL COMMENT '目标',
  `shijianbiao` varchar(200) DEFAULT NULL COMMENT '时间表',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6385567553818 DEFAULT CHARSET=utf8 COMMENT='项目申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmushenbao`
--

LOCK TABLES `xiangmushenbao` WRITE;
/*!40000 ALTER TABLE `xiangmushenbao` DISABLE KEYS */;
INSERT INTO `xiangmushenbao` VALUES (31,'2024-04-16 09:53:29','项目名称1','目标1','时间表1','用户账号1','用户姓名1'),(32,'2024-04-16 09:53:29','项目名称2','目标2','时间表2','用户账号2','用户姓名2'),(33,'2024-04-16 09:53:29','项目名称3','目标3','时间表3','用户账号3','用户姓名3'),(34,'2024-04-16 09:53:29','项目名称4','目标4','时间表4','用户账号4','用户姓名4'),(35,'2024-04-16 09:53:29','项目名称5','目标5','时间表5','用户账号5','用户姓名5'),(36,'2024-04-16 09:53:29','项目名称6','目标6','时间表6','用户账号6','用户姓名6'),(37,'2024-04-16 09:53:29','项目名称7','目标7','时间表7','用户账号7','用户姓名7'),(38,'2024-04-16 09:53:29','项目名称8','目标8','时间表8','用户账号8','用户姓名8'),(6385567553817,'2024-04-16 09:55:48','我的项目','魂牵梦萦 ','无可奈何','11','王子');
/*!40000 ALTER TABLE `xiangmushenbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=6384888693256 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-04-16 09:53:29','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男',1,'13823888881'),(12,'2024-04-16 09:53:29','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男',2,'13823888882'),(13,'2024-04-16 09:53:29','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男',3,'13823888883'),(14,'2024-04-16 09:53:29','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男',4,'13823888884'),(15,'2024-04-16 09:53:29','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男',5,'13823888885'),(16,'2024-04-16 09:53:29','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男',6,'13823888886'),(17,'2024-04-16 09:53:29','用户账号7','123456','用户姓名7','upload/yonghu_touxiang7.jpg','男',7,'13823888887'),(18,'2024-04-16 09:53:29','用户账号8','123456','用户姓名8','upload/yonghu_touxiang8.jpg','男',8,'13823888888'),(6384888693255,'2024-04-16 09:55:33','11','11','王子','upload/1713261327945.png','男',22,'13525252525');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16 21:20:21
