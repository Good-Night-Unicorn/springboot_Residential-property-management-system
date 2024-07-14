-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot725kw
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
-- Current Database: `springboot725kw`
--

/*!40000 DROP DATABASE IF EXISTS `springboot725kw`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot725kw` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot725kw`;

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
INSERT INTO `aboutus` VALUES (1,'2023-01-26 10:35:14','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) NOT NULL COMMENT '车位名称',
  `tupian` longtext COMMENT '图片',
  `cheweiweizhi` varchar(200) NOT NULL COMMENT '车位位置',
  `zhuangtai` varchar(200) NOT NULL COMMENT '状态',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `shishishijian` datetime DEFAULT NULL COMMENT '实时时间',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (71,'2023-01-26 10:35:14','1111111111','车位名称1','upload/cheweixinxi_tupian1.jpg,upload/cheweixinxi_tupian2.jpg,upload/cheweixinxi_tupian3.jpg','车位位置1','已出售',1,'面积1','2023-01-26 18:35:14','详细介绍1','2023-01-26 18:35:14',1),(72,'2023-01-26 10:35:14','2222222222','车位名称2','upload/cheweixinxi_tupian2.jpg,upload/cheweixinxi_tupian3.jpg,upload/cheweixinxi_tupian4.jpg','车位位置2','已出售',2,'面积2','2023-01-26 18:35:14','详细介绍2','2023-01-26 18:35:14',2),(73,'2023-01-26 10:35:14','3333333333','车位名称3','upload/cheweixinxi_tupian3.jpg,upload/cheweixinxi_tupian4.jpg,upload/cheweixinxi_tupian5.jpg','车位位置3','已出售',3,'面积3','2023-01-26 18:35:14','详细介绍3','2023-01-26 18:35:14',3),(74,'2023-01-26 10:35:14','4444444444','车位名称4','upload/cheweixinxi_tupian4.jpg,upload/cheweixinxi_tupian5.jpg,upload/cheweixinxi_tupian6.jpg','车位位置4','已出售',4,'面积4','2023-01-26 18:35:14','详细介绍4','2023-01-26 18:35:14',4),(75,'2023-01-26 10:35:14','5555555555','车位名称5','upload/cheweixinxi_tupian5.jpg,upload/cheweixinxi_tupian6.jpg,upload/cheweixinxi_tupian7.jpg','车位位置5','已出售',5,'面积5','2023-01-26 18:35:14','详细介绍5','2023-01-26 18:35:14',5),(76,'2023-01-26 10:35:14','6666666666','车位名称6','upload/cheweixinxi_tupian6.jpg,upload/cheweixinxi_tupian7.jpg,upload/cheweixinxi_tupian8.jpg','车位位置6','已出售',6,'面积6','2023-01-26 18:35:14','详细介绍6','2023-01-26 18:35:14',6),(77,'2023-01-26 10:35:14','7777777777','车位名称7','upload/cheweixinxi_tupian7.jpg,upload/cheweixinxi_tupian8.jpg,upload/cheweixinxi_tupian9.jpg','车位位置7','已出售',7,'面积7','2023-01-26 18:35:14','详细介绍7','2023-01-26 18:35:14',7),(78,'2023-01-26 10:35:14','8888888888','车位名称8','upload/cheweixinxi_tupian8.jpg,upload/cheweixinxi_tupian9.jpg,upload/cheweixinxi_tupian10.jpg','车位位置8','已出售',8,'面积8','2023-01-26 18:35:14','详细介绍8','2023-01-26 18:35:14',8);
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaichewei`
--

DROP TABLE IF EXISTS `goumaichewei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaichewei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='购买车位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaichewei`
--

LOCK TABLES `goumaichewei` WRITE;
/*!40000 ALTER TABLE `goumaichewei` DISABLE KEYS */;
INSERT INTO `goumaichewei` VALUES (81,'2023-01-26 10:35:14','1111111111','车位编号1','车位名称1',1,'2023-01-26','账号1','姓名1','手机1','楼房号1','小区名称1','是','','未支付'),(82,'2023-01-26 10:35:14','2222222222','车位编号2','车位名称2',2,'2023-01-26','账号2','姓名2','手机2','楼房号2','小区名称2','是','','未支付'),(83,'2023-01-26 10:35:14','3333333333','车位编号3','车位名称3',3,'2023-01-26','账号3','姓名3','手机3','楼房号3','小区名称3','是','','未支付'),(84,'2023-01-26 10:35:14','4444444444','车位编号4','车位名称4',4,'2023-01-26','账号4','姓名4','手机4','楼房号4','小区名称4','是','','未支付'),(85,'2023-01-26 10:35:14','5555555555','车位编号5','车位名称5',5,'2023-01-26','账号5','姓名5','手机5','楼房号5','小区名称5','是','','未支付'),(86,'2023-01-26 10:35:14','6666666666','车位编号6','车位名称6',6,'2023-01-26','账号6','姓名6','手机6','楼房号6','小区名称6','是','','未支付'),(87,'2023-01-26 10:35:14','7777777777','车位编号7','车位名称7',7,'2023-01-26','账号7','姓名7','手机7','楼房号7','小区名称7','是','','未支付'),(88,'2023-01-26 10:35:14','8888888888','车位编号8','车位名称8',8,'2023-01-26','账号8','姓名8','手机8','楼房号8','小区名称8','是','','未支付');
/*!40000 ALTER TABLE `goumaichewei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeitongzhi`
--

DROP TABLE IF EXISTS `jiaofeitongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeitongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  `shoufeixiangmu` varchar(200) NOT NULL COMMENT '收费项目',
  `feiyong` float DEFAULT NULL COMMENT '费用',
  `feiyongxiangqing` longtext COMMENT '费用详情',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  `wuyegonghao` varchar(200) DEFAULT NULL COMMENT '物业工号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='缴费通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeitongzhi`
--

LOCK TABLES `jiaofeitongzhi` WRITE;
/*!40000 ALTER TABLE `jiaofeitongzhi` DISABLE KEYS */;
INSERT INTO `jiaofeitongzhi` VALUES (91,'2023-01-26 10:35:14','账号1','姓名1','楼房号1','小区名称1','水费',1,'费用详情1','2023-01-26 18:35:14','物业工号1','物业姓名1','未支付'),(92,'2023-01-26 10:35:14','账号2','姓名2','楼房号2','小区名称2','水费',2,'费用详情2','2023-01-26 18:35:14','物业工号2','物业姓名2','未支付'),(93,'2023-01-26 10:35:14','账号3','姓名3','楼房号3','小区名称3','水费',3,'费用详情3','2023-01-26 18:35:14','物业工号3','物业姓名3','未支付'),(94,'2023-01-26 10:35:14','账号4','姓名4','楼房号4','小区名称4','水费',4,'费用详情4','2023-01-26 18:35:14','物业工号4','物业姓名4','未支付'),(95,'2023-01-26 10:35:14','账号5','姓名5','楼房号5','小区名称5','水费',5,'费用详情5','2023-01-26 18:35:14','物业工号5','物业姓名5','未支付'),(96,'2023-01-26 10:35:14','账号6','姓名6','楼房号6','小区名称6','水费',6,'费用详情6','2023-01-26 18:35:14','物业工号6','物业姓名6','未支付'),(97,'2023-01-26 10:35:14','账号7','姓名7','楼房号7','小区名称7','水费',7,'费用详情7','2023-01-26 18:35:14','物业工号7','物业姓名7','未支付'),(98,'2023-01-26 10:35:14','账号8','姓名8','楼房号8','小区名称8','水费',8,'费用详情8','2023-01-26 18:35:14','物业工号8','物业姓名8','未支付');
/*!40000 ALTER TABLE `jiaofeitongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (141,'2023-01-26 10:35:14',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(142,'2023-01-26 10:35:14',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(143,'2023-01-26 10:35:14',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(144,'2023-01-26 10:35:14',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(145,'2023-01-26 10:35:14',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(146,'2023-01-26 10:35:14',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(147,'2023-01-26 10:35:14',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(148,'2023-01-26 10:35:14',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='小区公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-01-26 10:35:14','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(112,'2023-01-26 10:35:14','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(113,'2023-01-26 10:35:14','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2023-01-26 10:35:14','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2023-01-26 10:35:14','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2023-01-26 10:35:14','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(117,'2023-01-26 10:35:14','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(118,'2023-01-26 10:35:14','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
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
INSERT INTO `systemintro` VALUES (1,'2023-01-26 10:35:14','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-01-26 10:35:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuyerenyuan`
--

DROP TABLE IF EXISTS `wuyerenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuyerenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuyegonghao` varchar(200) NOT NULL COMMENT '物业工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuyegonghao` (`wuyegonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='物业人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuyerenyuan`
--

LOCK TABLES `wuyerenyuan` WRITE;
/*!40000 ALTER TABLE `wuyerenyuan` DISABLE KEYS */;
INSERT INTO `wuyerenyuan` VALUES (31,'2023-01-26 10:35:14','物业工号1','123456','物业姓名1',1,'男','upload/wuyerenyuan_touxiang1.jpg','13823888881','小区名称1'),(32,'2023-01-26 10:35:14','物业工号2','123456','物业姓名2',2,'男','upload/wuyerenyuan_touxiang2.jpg','13823888882','小区名称2'),(33,'2023-01-26 10:35:14','物业工号3','123456','物业姓名3',3,'男','upload/wuyerenyuan_touxiang3.jpg','13823888883','小区名称3'),(34,'2023-01-26 10:35:14','物业工号4','123456','物业姓名4',4,'男','upload/wuyerenyuan_touxiang4.jpg','13823888884','小区名称4'),(35,'2023-01-26 10:35:14','物业工号5','123456','物业姓名5',5,'男','upload/wuyerenyuan_touxiang5.jpg','13823888885','小区名称5'),(36,'2023-01-26 10:35:14','物业工号6','123456','物业姓名6',6,'男','upload/wuyerenyuan_touxiang6.jpg','13823888886','小区名称6'),(37,'2023-01-26 10:35:14','物业工号7','123456','物业姓名7',7,'男','upload/wuyerenyuan_touxiang7.jpg','13823888887','小区名称7'),(38,'2023-01-26 10:35:14','物业工号8','123456','物业姓名8',8,'男','upload/wuyerenyuan_touxiang8.jpg','13823888888','小区名称8');
/*!40000 ALTER TABLE `wuyerenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoquxinxi`
--

DROP TABLE IF EXISTS `xiaoquxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoqumingcheng` varchar(200) NOT NULL COMMENT '小区名称',
  `xiaoqufengmian` longtext COMMENT '小区封面',
  `xiaoqumianji` varchar(200) NOT NULL COMMENT '小区面积',
  `xiaoquweizhi` varchar(200) NOT NULL COMMENT '小区位置',
  `xiaoqudongshu` varchar(200) NOT NULL COMMENT '小区栋数',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chengliriqi` date DEFAULT NULL COMMENT '成立日期',
  `xiaoquxiangqing` longtext COMMENT '小区详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='小区信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoquxinxi`
--

LOCK TABLES `xiaoquxinxi` WRITE;
/*!40000 ALTER TABLE `xiaoquxinxi` DISABLE KEYS */;
INSERT INTO `xiaoquxinxi` VALUES (21,'2023-01-26 10:35:14','小区名称1','upload/xiaoquxinxi_xiaoqufengmian1.jpg,upload/xiaoquxinxi_xiaoqufengmian2.jpg,upload/xiaoquxinxi_xiaoqufengmian3.jpg','小区面积1','小区位置1','小区栋数1','负责人1','13823888881','2023-01-26','小区详情1','2023-01-26 18:35:14',1),(22,'2023-01-26 10:35:14','小区名称2','upload/xiaoquxinxi_xiaoqufengmian2.jpg,upload/xiaoquxinxi_xiaoqufengmian3.jpg,upload/xiaoquxinxi_xiaoqufengmian4.jpg','小区面积2','小区位置2','小区栋数2','负责人2','13823888882','2023-01-26','小区详情2','2023-01-26 18:35:14',2),(23,'2023-01-26 10:35:14','小区名称3','upload/xiaoquxinxi_xiaoqufengmian3.jpg,upload/xiaoquxinxi_xiaoqufengmian4.jpg,upload/xiaoquxinxi_xiaoqufengmian5.jpg','小区面积3','小区位置3','小区栋数3','负责人3','13823888883','2023-01-26','小区详情3','2023-01-26 18:35:14',3),(24,'2023-01-26 10:35:14','小区名称4','upload/xiaoquxinxi_xiaoqufengmian4.jpg,upload/xiaoquxinxi_xiaoqufengmian5.jpg,upload/xiaoquxinxi_xiaoqufengmian6.jpg','小区面积4','小区位置4','小区栋数4','负责人4','13823888884','2023-01-26','小区详情4','2023-01-26 18:35:14',4),(25,'2023-01-26 10:35:14','小区名称5','upload/xiaoquxinxi_xiaoqufengmian5.jpg,upload/xiaoquxinxi_xiaoqufengmian6.jpg,upload/xiaoquxinxi_xiaoqufengmian7.jpg','小区面积5','小区位置5','小区栋数5','负责人5','13823888885','2023-01-26','小区详情5','2023-01-26 18:35:14',5),(26,'2023-01-26 10:35:14','小区名称6','upload/xiaoquxinxi_xiaoqufengmian6.jpg,upload/xiaoquxinxi_xiaoqufengmian7.jpg,upload/xiaoquxinxi_xiaoqufengmian8.jpg','小区面积6','小区位置6','小区栋数6','负责人6','13823888886','2023-01-26','小区详情6','2023-01-26 18:35:14',6),(27,'2023-01-26 10:35:14','小区名称7','upload/xiaoquxinxi_xiaoqufengmian7.jpg,upload/xiaoquxinxi_xiaoqufengmian8.jpg,upload/xiaoquxinxi_xiaoqufengmian9.jpg','小区面积7','小区位置7','小区栋数7','负责人7','13823888887','2023-01-26','小区详情7','2023-01-26 18:35:14',7),(28,'2023-01-26 10:35:14','小区名称8','upload/xiaoquxinxi_xiaoqufengmian8.jpg,upload/xiaoquxinxi_xiaoqufengmian9.jpg,upload/xiaoquxinxi_xiaoqufengmian10.jpg','小区面积8','小区位置8','小区栋数8','负责人8','13823888888','2023-01-26','小区详情8','2023-01-26 18:35:14',8);
/*!40000 ALTER TABLE `xiaoquxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhu`
--

DROP TABLE IF EXISTS `yezhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='业主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhu`
--

LOCK TABLES `yezhu` WRITE;
/*!40000 ALTER TABLE `yezhu` DISABLE KEYS */;
INSERT INTO `yezhu` VALUES (11,'2023-01-26 10:35:14','账号1','123456','姓名1',1,'男','13823888881','upload/yezhu_touxiang1.jpg','楼栋1','楼房号1','小区名称1'),(12,'2023-01-26 10:35:14','账号2','123456','姓名2',2,'男','13823888882','upload/yezhu_touxiang2.jpg','楼栋2','楼房号2','小区名称2'),(13,'2023-01-26 10:35:14','账号3','123456','姓名3',3,'男','13823888883','upload/yezhu_touxiang3.jpg','楼栋3','楼房号3','小区名称3'),(14,'2023-01-26 10:35:14','账号4','123456','姓名4',4,'男','13823888884','upload/yezhu_touxiang4.jpg','楼栋4','楼房号4','小区名称4'),(15,'2023-01-26 10:35:14','账号5','123456','姓名5',5,'男','13823888885','upload/yezhu_touxiang5.jpg','楼栋5','楼房号5','小区名称5'),(16,'2023-01-26 10:35:14','账号6','123456','姓名6',6,'男','13823888886','upload/yezhu_touxiang6.jpg','楼栋6','楼房号6','小区名称6'),(17,'2023-01-26 10:35:14','账号7','123456','姓名7',7,'男','13823888887','upload/yezhu_touxiang7.jpg','楼栋7','楼房号7','小区名称7'),(18,'2023-01-26 10:35:14','账号8','123456','姓名8',8,'男','13823888888','upload/yezhu_touxiang8.jpg','楼栋8','楼房号8','小区名称8');
/*!40000 ALTER TABLE `yezhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhucheliang`
--

DROP TABLE IF EXISTS `yezhucheliang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhucheliang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) NOT NULL COMMENT '车牌号',
  `cheliangpinpai` varchar(200) NOT NULL COMMENT '车辆品牌',
  `cheliangleixing` varchar(200) NOT NULL COMMENT '车辆类型',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `huandangfangshi` varchar(200) NOT NULL COMMENT '换挡方式',
  `zhaopian` longtext COMMENT '照片',
  `zuoweishuliang` int(11) DEFAULT NULL COMMENT '座位数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `cheliangxiangqing` longtext COMMENT '车辆详情',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chepaihao` (`chepaihao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='业主车辆';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhucheliang`
--

LOCK TABLES `yezhucheliang` WRITE;
/*!40000 ALTER TABLE `yezhucheliang` DISABLE KEYS */;
INSERT INTO `yezhucheliang` VALUES (51,'2023-01-26 10:35:14','车牌号1','车辆品牌1','车辆类型1','颜色1','手动挡','upload/yezhucheliang_zhaopian1.jpg,upload/yezhucheliang_zhaopian2.jpg,upload/yezhucheliang_zhaopian3.jpg',1,'2023-01-26','车辆详情1','账号1','姓名1','楼房号1','小区名称1'),(52,'2023-01-26 10:35:14','车牌号2','车辆品牌2','车辆类型2','颜色2','手动挡','upload/yezhucheliang_zhaopian2.jpg,upload/yezhucheliang_zhaopian3.jpg,upload/yezhucheliang_zhaopian4.jpg',2,'2023-01-26','车辆详情2','账号2','姓名2','楼房号2','小区名称2'),(53,'2023-01-26 10:35:14','车牌号3','车辆品牌3','车辆类型3','颜色3','手动挡','upload/yezhucheliang_zhaopian3.jpg,upload/yezhucheliang_zhaopian4.jpg,upload/yezhucheliang_zhaopian5.jpg',3,'2023-01-26','车辆详情3','账号3','姓名3','楼房号3','小区名称3'),(54,'2023-01-26 10:35:14','车牌号4','车辆品牌4','车辆类型4','颜色4','手动挡','upload/yezhucheliang_zhaopian4.jpg,upload/yezhucheliang_zhaopian5.jpg,upload/yezhucheliang_zhaopian6.jpg',4,'2023-01-26','车辆详情4','账号4','姓名4','楼房号4','小区名称4'),(55,'2023-01-26 10:35:14','车牌号5','车辆品牌5','车辆类型5','颜色5','手动挡','upload/yezhucheliang_zhaopian5.jpg,upload/yezhucheliang_zhaopian6.jpg,upload/yezhucheliang_zhaopian7.jpg',5,'2023-01-26','车辆详情5','账号5','姓名5','楼房号5','小区名称5'),(56,'2023-01-26 10:35:14','车牌号6','车辆品牌6','车辆类型6','颜色6','手动挡','upload/yezhucheliang_zhaopian6.jpg,upload/yezhucheliang_zhaopian7.jpg,upload/yezhucheliang_zhaopian8.jpg',6,'2023-01-26','车辆详情6','账号6','姓名6','楼房号6','小区名称6'),(57,'2023-01-26 10:35:14','车牌号7','车辆品牌7','车辆类型7','颜色7','手动挡','upload/yezhucheliang_zhaopian7.jpg,upload/yezhucheliang_zhaopian8.jpg,upload/yezhucheliang_zhaopian9.jpg',7,'2023-01-26','车辆详情7','账号7','姓名7','楼房号7','小区名称7'),(58,'2023-01-26 10:35:14','车牌号8','车辆品牌8','车辆类型8','颜色8','手动挡','upload/yezhucheliang_zhaopian8.jpg,upload/yezhucheliang_zhaopian9.jpg,upload/yezhucheliang_zhaopian10.jpg',8,'2023-01-26','车辆详情8','账号8','姓名8','楼房号8','小区名称8');
/*!40000 ALTER TABLE `yezhucheliang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhuchongwu`
--

DROP TABLE IF EXISTS `yezhuchongwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhuchongwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `chongwuzhonglei` varchar(200) NOT NULL COMMENT '宠物种类',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `tupian` longtext COMMENT '图片',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shifoujueyu` varchar(200) NOT NULL COMMENT '是否绝育',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='业主宠物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhuchongwu`
--

LOCK TABLES `yezhuchongwu` WRITE;
/*!40000 ALTER TABLE `yezhuchongwu` DISABLE KEYS */;
INSERT INTO `yezhuchongwu` VALUES (61,'2023-01-26 10:35:14','宠物名称1','宠物种类1','公','upload/yezhuchongwu_tupian1.jpg,upload/yezhuchongwu_tupian2.jpg,upload/yezhuchongwu_tupian3.jpg','年龄1','是','2023-01-26','宠物详情1','账号1','姓名1','楼房号1','小区名称1'),(62,'2023-01-26 10:35:14','宠物名称2','宠物种类2','公','upload/yezhuchongwu_tupian2.jpg,upload/yezhuchongwu_tupian3.jpg,upload/yezhuchongwu_tupian4.jpg','年龄2','是','2023-01-26','宠物详情2','账号2','姓名2','楼房号2','小区名称2'),(63,'2023-01-26 10:35:14','宠物名称3','宠物种类3','公','upload/yezhuchongwu_tupian3.jpg,upload/yezhuchongwu_tupian4.jpg,upload/yezhuchongwu_tupian5.jpg','年龄3','是','2023-01-26','宠物详情3','账号3','姓名3','楼房号3','小区名称3'),(64,'2023-01-26 10:35:14','宠物名称4','宠物种类4','公','upload/yezhuchongwu_tupian4.jpg,upload/yezhuchongwu_tupian5.jpg,upload/yezhuchongwu_tupian6.jpg','年龄4','是','2023-01-26','宠物详情4','账号4','姓名4','楼房号4','小区名称4'),(65,'2023-01-26 10:35:14','宠物名称5','宠物种类5','公','upload/yezhuchongwu_tupian5.jpg,upload/yezhuchongwu_tupian6.jpg,upload/yezhuchongwu_tupian7.jpg','年龄5','是','2023-01-26','宠物详情5','账号5','姓名5','楼房号5','小区名称5'),(66,'2023-01-26 10:35:14','宠物名称6','宠物种类6','公','upload/yezhuchongwu_tupian6.jpg,upload/yezhuchongwu_tupian7.jpg,upload/yezhuchongwu_tupian8.jpg','年龄6','是','2023-01-26','宠物详情6','账号6','姓名6','楼房号6','小区名称6'),(67,'2023-01-26 10:35:14','宠物名称7','宠物种类7','公','upload/yezhuchongwu_tupian7.jpg,upload/yezhuchongwu_tupian8.jpg,upload/yezhuchongwu_tupian9.jpg','年龄7','是','2023-01-26','宠物详情7','账号7','姓名7','楼房号7','小区名称7'),(68,'2023-01-26 10:35:14','宠物名称8','宠物种类8','公','upload/yezhuchongwu_tupian8.jpg,upload/yezhuchongwu_tupian9.jpg,upload/yezhuchongwu_tupian10.jpg','年龄8','是','2023-01-26','宠物详情8','账号8','姓名8','楼房号8','小区名称8');
/*!40000 ALTER TABLE `yezhuchongwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanxinxi`
--

DROP TABLE IF EXISTS `zichanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianhao` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanleixing` varchar(200) NOT NULL COMMENT '资产类型',
  `zichanjiazhi` float DEFAULT NULL COMMENT '资产价值',
  `zhaopian` longtext COMMENT '照片',
  `xiaoqumingcheng` varchar(200) NOT NULL COMMENT '小区名称',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `wuyegonghao` varchar(200) DEFAULT NULL COMMENT '物业工号',
  `wuyexingming` varchar(200) DEFAULT NULL COMMENT '物业姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanbianhao` (`zichanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='资产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanxinxi`
--

LOCK TABLES `zichanxinxi` WRITE;
/*!40000 ALTER TABLE `zichanxinxi` DISABLE KEYS */;
INSERT INTO `zichanxinxi` VALUES (41,'2023-01-26 10:35:14','1111111111','资产名称1','资产类型1',1,'upload/zichanxinxi_zhaopian1.jpg,upload/zichanxinxi_zhaopian2.jpg,upload/zichanxinxi_zhaopian3.jpg','小区名称1','2023-01-26 18:35:14','详细介绍1','物业工号1','物业姓名1'),(42,'2023-01-26 10:35:14','2222222222','资产名称2','资产类型2',2,'upload/zichanxinxi_zhaopian2.jpg,upload/zichanxinxi_zhaopian3.jpg,upload/zichanxinxi_zhaopian4.jpg','小区名称2','2023-01-26 18:35:14','详细介绍2','物业工号2','物业姓名2'),(43,'2023-01-26 10:35:14','3333333333','资产名称3','资产类型3',3,'upload/zichanxinxi_zhaopian3.jpg,upload/zichanxinxi_zhaopian4.jpg,upload/zichanxinxi_zhaopian5.jpg','小区名称3','2023-01-26 18:35:14','详细介绍3','物业工号3','物业姓名3'),(44,'2023-01-26 10:35:14','4444444444','资产名称4','资产类型4',4,'upload/zichanxinxi_zhaopian4.jpg,upload/zichanxinxi_zhaopian5.jpg,upload/zichanxinxi_zhaopian6.jpg','小区名称4','2023-01-26 18:35:14','详细介绍4','物业工号4','物业姓名4'),(45,'2023-01-26 10:35:14','5555555555','资产名称5','资产类型5',5,'upload/zichanxinxi_zhaopian5.jpg,upload/zichanxinxi_zhaopian6.jpg,upload/zichanxinxi_zhaopian7.jpg','小区名称5','2023-01-26 18:35:14','详细介绍5','物业工号5','物业姓名5'),(46,'2023-01-26 10:35:14','6666666666','资产名称6','资产类型6',6,'upload/zichanxinxi_zhaopian6.jpg,upload/zichanxinxi_zhaopian7.jpg,upload/zichanxinxi_zhaopian8.jpg','小区名称6','2023-01-26 18:35:14','详细介绍6','物业工号6','物业姓名6'),(47,'2023-01-26 10:35:14','7777777777','资产名称7','资产类型7',7,'upload/zichanxinxi_zhaopian7.jpg,upload/zichanxinxi_zhaopian8.jpg,upload/zichanxinxi_zhaopian9.jpg','小区名称7','2023-01-26 18:35:14','详细介绍7','物业工号7','物业姓名7'),(48,'2023-01-26 10:35:14','8888888888','资产名称8','资产类型8',8,'upload/zichanxinxi_zhaopian8.jpg,upload/zichanxinxi_zhaopian9.jpg,upload/zichanxinxi_zhaopian10.jpg','小区名称8','2023-01-26 18:35:14','详细介绍8','物业工号8','物业姓名8');
/*!40000 ALTER TABLE `zichanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-27 17:25:20
