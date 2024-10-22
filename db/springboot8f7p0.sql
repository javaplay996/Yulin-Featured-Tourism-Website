-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot8f7p0
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
-- Current Database: `springboot8f7p0`
--

/*!40000 DROP DATABASE IF EXISTS `springboot8f7p0`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot8f7p0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot8f7p0`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-20 01:57:40','榆林特色旅游网站','ABOUT US','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢? 你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676858920171 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2023-02-20 01:57:40',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2023-02-20 01:57:40',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2023-02-20 01:57:40',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2023-02-20 01:57:40',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2023-02-20 01:57:40',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2023-02-20 01:57:40',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2023-02-20 01:57:40',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2023-02-20 01:57:40',18,'宇宙银河系地球1号','地某','13823888888','是'),(1676858920170,'2023-02-20 02:08:39',1676858718537,'阳光','111','13612512514','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'jinianpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859343426 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1676858927602,'2023-02-20 02:08:47','jinianpin',1676858718537,53,'商品名称3','upload/jinianpin_shangpintupian3.jpg',2,99.9,0,'产品分类3'),(1676858934346,'2023-02-20 02:08:54','jinianpin',1676858718537,55,'商品名称5','upload/jinianpin_shangpintupian5.jpg',2,99.9,0,'产品分类5'),(1676858986901,'2023-02-20 02:09:46','jinianpin',1676858718537,58,'商品名称8','upload/jinianpin_shangpintupian8.jpg',2,99.9,0,'产品分类8'),(1676859343425,'2023-02-20 02:15:42','jinianpin',1676858718537,1676859146081,'风铃','upload/1676859122857.jpg',2,66,0,'工艺品');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinfenlei`
--

DROP TABLE IF EXISTS `chanpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinfenlei` varchar(200) NOT NULL COMMENT '产品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinfenlei` (`chanpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859028006 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinfenlei`
--

LOCK TABLES `chanpinfenlei` WRITE;
/*!40000 ALTER TABLE `chanpinfenlei` DISABLE KEYS */;
INSERT INTO `chanpinfenlei` VALUES (11,'2023-02-20 01:57:40','产品分类1'),(12,'2023-02-20 01:57:40','产品分类2'),(13,'2023-02-20 01:57:40','产品分类3'),(14,'2023-02-20 01:57:40','产品分类4'),(15,'2023-02-20 01:57:40','产品分类5'),(16,'2023-02-20 01:57:40','产品分类6'),(17,'2023-02-20 01:57:40','产品分类7'),(18,'2023-02-20 01:57:40','产品分类8'),(1676859028005,'2023-02-20 02:10:27','工艺品');
/*!40000 ALTER TABLE `chanpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859384860 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2023-02-20 01:57:40',1,1,'提问1','回复1',1),(82,'2023-02-20 01:57:40',2,2,'提问2','回复2',2),(83,'2023-02-20 01:57:40',3,3,'提问3','回复3',3),(84,'2023-02-20 01:57:40',4,4,'提问4','回复4',4),(85,'2023-02-20 01:57:40',5,5,'提问5','回复5',5),(86,'2023-02-20 01:57:40',6,6,'提问6','回复6',6),(87,'2023-02-20 01:57:40',7,7,'提问7','回复7',7),(88,'2023-02-20 01:57:40',8,8,'提问8','回复8',8),(1676858784682,'2023-02-20 02:06:23',1676858718537,NULL,'222',NULL,0),(1676859384859,'2023-02-20 02:16:24',1676858718537,NULL,'1212',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1676859240900.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjinianpin`
--

DROP TABLE IF EXISTS `discussjinianpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjinianpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859417445 DEFAULT CHARSET=utf8 COMMENT='纪念品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjinianpin`
--

LOCK TABLES `discussjinianpin` WRITE;
/*!40000 ALTER TABLE `discussjinianpin` DISABLE KEYS */;
INSERT INTO `discussjinianpin` VALUES (1676859417444,'2023-02-20 02:16:57',57,1676858718537,'upload/1676858714580.png','111','很好',NULL);
/*!40000 ALTER TABLE `discussjinianpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyoujingdian`
--

DROP TABLE IF EXISTS `discusslvyoujingdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859335421 DEFAULT CHARSET=utf8 COMMENT='旅游景点评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyoujingdian`
--

LOCK TABLES `discusslvyoujingdian` WRITE;
/*!40000 ALTER TABLE `discusslvyoujingdian` DISABLE KEYS */;
INSERT INTO `discusslvyoujingdian` VALUES (1676859335420,'2023-02-20 02:15:34',1676859110856,1676858718537,'upload/1676858714580.png','111','1',NULL);
/*!40000 ALTER TABLE `discusslvyoujingdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstesemeishi`
--

DROP TABLE IF EXISTS `discusstesemeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstesemeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特色美食评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstesemeishi`
--

LOCK TABLES `discusstesemeishi` WRITE;
/*!40000 ALTER TABLE `discusstesemeishi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusstesemeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyoujixinxi`
--

DROP TABLE IF EXISTS `discussyoujixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyoujixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游记信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyoujixinxi`
--

LOCK TABLES `discussyoujixinxi` WRITE;
/*!40000 ALTER TABLE `discussyoujixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussyoujixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianfenlei`
--

DROP TABLE IF EXISTS `jingdianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianfenlei` (`jingdianfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859039690 DEFAULT CHARSET=utf8 COMMENT='景点分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianfenlei`
--

LOCK TABLES `jingdianfenlei` WRITE;
/*!40000 ALTER TABLE `jingdianfenlei` DISABLE KEYS */;
INSERT INTO `jingdianfenlei` VALUES (31,'2023-02-20 01:57:40','景点分类1'),(32,'2023-02-20 01:57:40','景点分类2'),(33,'2023-02-20 01:57:40','景点分类3'),(34,'2023-02-20 01:57:40','景点分类4'),(35,'2023-02-20 01:57:40','景点分类5'),(36,'2023-02-20 01:57:40','景点分类6'),(37,'2023-02-20 01:57:40','景点分类7'),(38,'2023-02-20 01:57:40','景点分类8'),(1676859039689,'2023-02-20 02:10:39','自然风景');
/*!40000 ALTER TABLE `jingdianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinianpin`
--

DROP TABLE IF EXISTS `jinianpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinianpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `shangpintese` longtext COMMENT '商品特色',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  `onelimittimes` int(11) DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) DEFAULT NULL COMMENT '库存',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859146082 DEFAULT CHARSET=utf8 COMMENT='纪念品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinianpin`
--

LOCK TABLES `jinianpin` WRITE;
/*!40000 ALTER TABLE `jinianpin` DISABLE KEYS */;
INSERT INTO `jinianpin` VALUES (51,'2023-02-20 01:57:40','1111111111','商品名称1','upload/jinianpin_shangpintupian1.jpg,upload/jinianpin_shangpintupian2.jpg,upload/jinianpin_shangpintupian3.jpg','产品分类1','商品特色1','规格1','产品详情1',1,99,'2023-02-20 10:08:15',3,99.9),(52,'2023-02-20 01:57:40','2222222222','商品名称2','upload/jinianpin_shangpintupian2.jpg,upload/jinianpin_shangpintupian3.jpg,upload/jinianpin_shangpintupian4.jpg','产品分类2','商品特色2','规格2','产品详情2',2,99,'2023-02-20 10:07:08',3,99.9),(53,'2023-02-20 01:57:40','3333333333','商品名称3','upload/jinianpin_shangpintupian3.jpg,upload/jinianpin_shangpintupian4.jpg,upload/jinianpin_shangpintupian5.jpg','产品分类3','商品特色3','规格3','产品详情3',3,97,'2023-02-20 10:08:49',5,99.9),(54,'2023-02-20 01:57:40','4444444444','商品名称4','upload/jinianpin_shangpintupian4.jpg,upload/jinianpin_shangpintupian5.jpg,upload/jinianpin_shangpintupian6.jpg','产品分类4','商品特色4','规格4','产品详情4',4,99,'2023-02-20 09:57:40',4,99.9),(55,'2023-02-20 01:57:40','5555555555','商品名称5','upload/jinianpin_shangpintupian5.jpg,upload/jinianpin_shangpintupian6.jpg,upload/jinianpin_shangpintupian7.jpg','产品分类5','商品特色5','规格5','产品详情5',5,97,'2023-02-20 10:08:56',8,99.9),(56,'2023-02-20 01:57:40','6666666666','商品名称6','upload/jinianpin_shangpintupian6.jpg,upload/jinianpin_shangpintupian7.jpg,upload/jinianpin_shangpintupian8.jpg','产品分类6','商品特色6','规格6','产品详情6',6,99,'2023-02-20 09:57:40',6,99.9),(57,'2023-02-20 01:57:40','7777777777','商品名称7','upload/jinianpin_shangpintupian7.jpg,upload/jinianpin_shangpintupian8.jpg,upload/jinianpin_shangpintupian9.jpg','产品分类7','商品特色7','规格7','产品详情7',7,97,'2023-02-20 10:16:52',12,99.9),(58,'2023-02-20 01:57:40','8888888888','商品名称8','upload/jinianpin_shangpintupian8.jpg,upload/jinianpin_shangpintupian9.jpg,upload/jinianpin_shangpintupian10.jpg','产品分类8','商品特色8','规格8','产品详情8',8,97,'2023-02-20 10:10:08',11,99.9),(1676859146081,'2023-02-20 02:12:26','1676859110641','风铃','upload/1676859122857.jpg','工艺品','榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现','20*20','<p>榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现<img src=\"http://localhost:8080/springboot8f7p0/upload/1676859143704.jpg\">榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现</p>',10,98,'2023-02-20 10:16:44',4,66);
/*!40000 ALTER TABLE `jinianpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyoujingdian`
--

DROP TABLE IF EXISTS `lvyoujingdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) DEFAULT NULL COMMENT '景点分类',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `shoupiaolianjie` varchar(200) DEFAULT NULL COMMENT '售票链接',
  `jingdiantupian` longtext COMMENT '景点图片',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `mingyouxiaochi` longtext COMMENT '名优小吃',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859110857 DEFAULT CHARSET=utf8 COMMENT='旅游景点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyoujingdian`
--

LOCK TABLES `lvyoujingdian` WRITE;
/*!40000 ALTER TABLE `lvyoujingdian` DISABLE KEYS */;
INSERT INTO `lvyoujingdian` VALUES (41,'2023-02-20 01:57:40','景点名称1','景点分类1','所在城市1','售票链接1','upload/lvyoujingdian_jingdiantupian1.jpg,upload/lvyoujingdian_jingdiantupian2.jpg,upload/lvyoujingdian_jingdiantupian3.jpg','A','景点地址1','门票价格1','开放时间1','名优小吃1','景点介绍1','注意事项1','2023-02-20 09:57:40',1),(42,'2023-02-20 01:57:40','景点名称2','景点分类2','所在城市2','售票链接2','upload/lvyoujingdian_jingdiantupian2.jpg,upload/lvyoujingdian_jingdiantupian3.jpg,upload/lvyoujingdian_jingdiantupian4.jpg','A','景点地址2','门票价格2','开放时间2','名优小吃2','景点介绍2','注意事项2','2023-02-20 10:06:04',3),(43,'2023-02-20 01:57:40','景点名称3','景点分类3','所在城市3','售票链接3','upload/lvyoujingdian_jingdiantupian3.jpg,upload/lvyoujingdian_jingdiantupian4.jpg,upload/lvyoujingdian_jingdiantupian5.jpg','A','景点地址3','门票价格3','开放时间3','名优小吃3','景点介绍3','注意事项3','2023-02-20 09:57:40',3),(44,'2023-02-20 01:57:40','景点名称4','景点分类4','所在城市4','售票链接4','upload/lvyoujingdian_jingdiantupian4.jpg,upload/lvyoujingdian_jingdiantupian5.jpg,upload/lvyoujingdian_jingdiantupian6.jpg','A','景点地址4','门票价格4','开放时间4','名优小吃4','景点介绍4','注意事项4','2023-02-20 09:57:40',4),(45,'2023-02-20 01:57:40','景点名称5','景点分类5','所在城市5','售票链接5','upload/lvyoujingdian_jingdiantupian5.jpg,upload/lvyoujingdian_jingdiantupian6.jpg,upload/lvyoujingdian_jingdiantupian7.jpg','A','景点地址5','门票价格5','开放时间5','名优小吃5','景点介绍5','注意事项5','2023-02-20 09:57:40',5),(46,'2023-02-20 01:57:40','景点名称6','景点分类6','所在城市6','售票链接6','upload/lvyoujingdian_jingdiantupian6.jpg,upload/lvyoujingdian_jingdiantupian7.jpg,upload/lvyoujingdian_jingdiantupian8.jpg','A','景点地址6','门票价格6','开放时间6','名优小吃6','景点介绍6','注意事项6','2023-02-20 09:57:40',6),(47,'2023-02-20 01:57:40','景点名称7','景点分类7','所在城市7','售票链接7','upload/lvyoujingdian_jingdiantupian7.jpg,upload/lvyoujingdian_jingdiantupian8.jpg,upload/lvyoujingdian_jingdiantupian9.jpg','A','景点地址7','门票价格7','开放时间7','名优小吃7','景点介绍7','注意事项7','2023-02-20 09:57:40',7),(48,'2023-02-20 01:57:40','景点名称8','景点分类8','所在城市8','售票链接8','upload/lvyoujingdian_jingdiantupian8.jpg,upload/lvyoujingdian_jingdiantupian9.jpg,upload/lvyoujingdian_jingdiantupian10.jpg','A','景点地址8','门票价格8','开放时间8','名优小吃8','景点介绍8','注意事项8','2023-02-20 09:57:40',8),(1676859110856,'2023-02-20 02:11:50','榆林','自然风景','榆林','http://baidu.com','upload/1676859065632.jpg','AAAAA','榆林','666','8:00-20:00','榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现','<p>榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现</p>','<p>榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现</p>','2023-02-20 10:15:21',2);
/*!40000 ALTER TABLE `lvyoujingdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859263079 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2023-02-20 01:57:40','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(132,'2023-02-20 01:57:40','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(133,'2023-02-20 01:57:40','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(134,'2023-02-20 01:57:40','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(135,'2023-02-20 01:57:40','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(136,'2023-02-20 01:57:40','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(137,'2023-02-20 01:57:40','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(138,'2023-02-20 01:57:40','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(1676859263078,'2023-02-20 02:14:23','榆林特色旅游网站','榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站','upload/1676859256505.jpg','<p>榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jinianpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859361248 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1676858930057,'2023-02-20 02:08:49','202322010845885','jinianpin',1676858718537,53,'商品名称3','upload/jinianpin_shangpintupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','阳光','13612512514','111','1',NULL,'产品分类3'),(1676858936877,'2023-02-20 02:08:56','202322010853264','jinianpin',1676858718537,55,'商品名称5','upload/jinianpin_shangpintupian5.jpg',2,99.9,99.9,199.8,199.8,1,'未支付','阳光','13612512514','111','32',NULL,'产品分类5'),(1676858988753,'2023-02-20 02:09:48','202322010944928','jinianpin',1676858718537,58,'商品名称8','upload/jinianpin_shangpintupian8.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','阳光','13612512514','111','3',NULL,'产品分类8'),(1676858999291,'2023-02-20 02:09:59','202322010955682','jinianpin',1676858718537,57,'商品名称7','upload/jinianpin_shangpintupian7.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','阳光','13612512514','111','43',NULL,'产品分类7'),(1676859345889,'2023-02-20 02:15:45','202322010154241','jinianpin',1676858718537,1676859146081,'风铃','upload/1676859122857.jpg',2,66,66,132,132,1,'已退款','阳光','13612512514','111','2',NULL,'工艺品'),(1676859361247,'2023-02-20 02:16:01','2023220101557512','jinianpin',1676858718537,57,'商品名称7','upload/jinianpin_shangpintupian7.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','阳光','13612512514','111','1',NULL,'产品分类7');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859340901 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1676858829873,'2023-02-20 02:07:09',1676858718537,52,'jinianpin','商品名称2','upload/jinianpin_shangpintupian2.jpg','1','产品分类2',NULL),(1676858896715,'2023-02-20 02:08:15',1676858718537,51,'jinianpin','商品名称1','upload/jinianpin_shangpintupian1.jpg','1','产品分类1',NULL),(1676858926667,'2023-02-20 02:08:45',1676858718537,53,'jinianpin','商品名称3','upload/jinianpin_shangpintupian3.jpg','1','产品分类3',NULL),(1676858985854,'2023-02-20 02:09:45',1676858718537,58,'jinianpin','商品名称8','upload/jinianpin_shangpintupian8.jpg','1','产品分类8',NULL),(1676859322933,'2023-02-20 02:15:21',1676858718537,1676859110856,'lvyoujingdian','榆林','upload/1676859065632.jpg','1',NULL,NULL),(1676859340900,'2023-02-20 02:15:40',1676858718537,1676859146081,'jinianpin','风铃','upload/1676859122857.jpg','1','工艺品',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-02-20 01:57:40','榆林特色旅游网站','SYSTEM INTRODUCTION','<p>当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p>','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tesemeishi`
--

DROP TABLE IF EXISTS `tesemeishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tesemeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `meishitupian` longtext COMMENT '美食图片',
  `meishifenlei` varchar(200) DEFAULT NULL COMMENT '美食分类',
  `renjunjiage` varchar(200) DEFAULT NULL COMMENT '人均价格',
  `dakadizhi` varchar(200) DEFAULT NULL COMMENT '打卡地址',
  `chanpintese` longtext COMMENT '产品特色',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `meishixiangqing` longtext COMMENT '美食详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859192692 DEFAULT CHARSET=utf8 COMMENT='特色美食';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesemeishi`
--

LOCK TABLES `tesemeishi` WRITE;
/*!40000 ALTER TABLE `tesemeishi` DISABLE KEYS */;
INSERT INTO `tesemeishi` VALUES (61,'2023-02-20 01:57:40','美食名称1','upload/tesemeishi_meishitupian1.jpg,upload/tesemeishi_meishitupian2.jpg,upload/tesemeishi_meishitupian3.jpg','本地必吃','人均价格1','打卡地址1','产品特色1','地区1','美食详情1',1,1),(62,'2023-02-20 01:57:40','美食名称2','upload/tesemeishi_meishitupian2.jpg,upload/tesemeishi_meishitupian3.jpg,upload/tesemeishi_meishitupian4.jpg','本地必吃','人均价格2','打卡地址2','产品特色2','地区2','美食详情2',2,2),(63,'2023-02-20 01:57:40','美食名称3','upload/tesemeishi_meishitupian3.jpg,upload/tesemeishi_meishitupian4.jpg,upload/tesemeishi_meishitupian5.jpg','本地必吃','人均价格3','打卡地址3','产品特色3','地区3','美食详情3',3,3),(64,'2023-02-20 01:57:40','美食名称4','upload/tesemeishi_meishitupian4.jpg,upload/tesemeishi_meishitupian5.jpg,upload/tesemeishi_meishitupian6.jpg','本地必吃','人均价格4','打卡地址4','产品特色4','地区4','美食详情4',4,4),(65,'2023-02-20 01:57:40','美食名称5','upload/tesemeishi_meishitupian5.jpg,upload/tesemeishi_meishitupian6.jpg,upload/tesemeishi_meishitupian7.jpg','本地必吃','人均价格5','打卡地址5','产品特色5','地区5','美食详情5',5,5),(66,'2023-02-20 01:57:40','美食名称6','upload/tesemeishi_meishitupian6.jpg,upload/tesemeishi_meishitupian7.jpg,upload/tesemeishi_meishitupian8.jpg','本地必吃','人均价格6','打卡地址6','产品特色6','地区6','美食详情6',6,6),(67,'2023-02-20 01:57:40','美食名称7','upload/tesemeishi_meishitupian7.jpg,upload/tesemeishi_meishitupian8.jpg,upload/tesemeishi_meishitupian9.jpg','本地必吃','人均价格7','打卡地址7','产品特色7','地区7','美食详情7',7,7),(68,'2023-02-20 01:57:40','美食名称8','upload/tesemeishi_meishitupian8.jpg,upload/tesemeishi_meishitupian9.jpg,upload/tesemeishi_meishitupian10.jpg','本地必吃','人均价格8','打卡地址8','产品特色8','地区8','美食详情8',8,8),(1676859192691,'2023-02-20 02:13:12','兰州拉面','upload/1676859157396.webp','本地必吃','12','榆林','新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆新疆','榆林','<p>榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现榆林特色旅游网站的设计与实现</p>',0,0);
/*!40000 ALTER TABLE `tesemeishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1676858718537,'111','yonghu','用户','vsypmccjudp6fu7ylt3mbnai3li07e8a','2023-02-20 02:05:21','2023-02-20 03:15:09'),(2,1,'admin','users','管理员','gjvxhxem8u32l01xg4hszas1tmdstou8','2023-02-20 02:10:18','2023-02-20 03:10:18');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-20 01:57:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1676858718538 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2023-02-20 01:57:40','用户名1','用户姓名1','123456','男','upload/yonghu_touxiang1.jpg','13823888881',200),(22,'2023-02-20 01:57:40','用户名2','用户姓名2','123456','男','upload/yonghu_touxiang2.jpg','13823888882',200),(23,'2023-02-20 01:57:40','用户名3','用户姓名3','123456','男','upload/yonghu_touxiang3.jpg','13823888883',200),(24,'2023-02-20 01:57:40','用户名4','用户姓名4','123456','男','upload/yonghu_touxiang4.jpg','13823888884',200),(25,'2023-02-20 01:57:40','用户名5','用户姓名5','123456','男','upload/yonghu_touxiang5.jpg','13823888885',200),(26,'2023-02-20 01:57:40','用户名6','用户姓名6','123456','男','upload/yonghu_touxiang6.jpg','13823888886',200),(27,'2023-02-20 01:57:40','用户名7','用户姓名7','123456','男','upload/yonghu_touxiang7.jpg','13823888887',200),(28,'2023-02-20 01:57:40','用户名8','用户姓名8','123456','男','upload/yonghu_touxiang8.jpg','13823888888',200),(1676858718537,'2023-02-20 02:05:18','111','胡月','111','女','upload/1676858714580.png','13612512514',434143);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youjixinxi`
--

DROP TABLE IF EXISTS `youjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdiantupian` longtext COMMENT '景点图片',
  `chuxingtianshu` varchar(200) DEFAULT NULL COMMENT '出行天数',
  `renwu` varchar(200) DEFAULT NULL COMMENT '人物',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `youjineirong` longtext COMMENT '游记内容',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676859302878 DEFAULT CHARSET=utf8 COMMENT='游记信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youjixinxi`
--

LOCK TABLES `youjixinxi` WRITE;
/*!40000 ALTER TABLE `youjixinxi` DISABLE KEYS */;
INSERT INTO `youjixinxi` VALUES (71,'2023-02-20 01:57:40','景点名称1','upload/youjixinxi_jingdiantupian1.jpg,upload/youjixinxi_jingdiantupian2.jpg,upload/youjixinxi_jingdiantupian3.jpg','出行天数1','个人','用户名1','用户姓名1','2023-02-20 09:57:40','游记内容1',2),(72,'2023-02-20 01:57:40','景点名称2','upload/youjixinxi_jingdiantupian2.jpg,upload/youjixinxi_jingdiantupian3.jpg,upload/youjixinxi_jingdiantupian4.jpg','出行天数2','个人','用户名2','用户姓名2','2023-02-20 09:57:40','游记内容2',2),(73,'2023-02-20 01:57:40','景点名称3','upload/youjixinxi_jingdiantupian3.jpg,upload/youjixinxi_jingdiantupian4.jpg,upload/youjixinxi_jingdiantupian5.jpg','出行天数3','个人','用户名3','用户姓名3','2023-02-20 09:57:40','游记内容3',3),(74,'2023-02-20 01:57:40','景点名称4','upload/youjixinxi_jingdiantupian4.jpg,upload/youjixinxi_jingdiantupian5.jpg,upload/youjixinxi_jingdiantupian6.jpg','出行天数4','个人','用户名4','用户姓名4','2023-02-20 09:57:40','游记内容4',4),(75,'2023-02-20 01:57:40','景点名称5','upload/youjixinxi_jingdiantupian5.jpg,upload/youjixinxi_jingdiantupian6.jpg,upload/youjixinxi_jingdiantupian7.jpg','出行天数5','个人','用户名5','用户姓名5','2023-02-20 09:57:40','游记内容5',5),(76,'2023-02-20 01:57:40','景点名称6','upload/youjixinxi_jingdiantupian6.jpg,upload/youjixinxi_jingdiantupian7.jpg,upload/youjixinxi_jingdiantupian8.jpg','出行天数6','个人','用户名6','用户姓名6','2023-02-20 09:57:40','游记内容6',6),(77,'2023-02-20 01:57:40','景点名称7','upload/youjixinxi_jingdiantupian7.jpg,upload/youjixinxi_jingdiantupian8.jpg,upload/youjixinxi_jingdiantupian9.jpg','出行天数7','个人','用户名7','用户姓名7','2023-02-20 09:57:40','游记内容7',8),(78,'2023-02-20 01:57:40','景点名称8','upload/youjixinxi_jingdiantupian8.jpg,upload/youjixinxi_jingdiantupian9.jpg,upload/youjixinxi_jingdiantupian10.jpg','出行天数8','个人','用户名8','用户姓名8','2023-02-20 09:57:40','游记内容8',10),(1676859302877,'2023-02-20 02:15:02','榆林','upload/1676859291271.jpg','5','个人','111','胡月','2023-02-20 10:14:39','<p>榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站榆林特色旅游网站</p>',2);
/*!40000 ALTER TABLE `youjixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06 22:56:08
