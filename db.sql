/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongsizichan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongsizichan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongsizichan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-17 14:02:33'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-17 14:02:33'),(3,'zhiwei_types','职位',1,'职位1',NULL,NULL,'2023-05-17 14:02:33'),(4,'zhiwei_types','职位',2,'职位2',NULL,NULL,'2023-05-17 14:02:33'),(5,'bumen_types','部门',1,'部门1',NULL,NULL,'2023-05-17 14:02:33'),(6,'bumen_types','部门',2,'部门2',NULL,NULL,'2023-05-17 14:02:33'),(7,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-17 14:02:33'),(8,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-17 14:02:33'),(9,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-17 14:02:33'),(10,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-17 14:02:33'),(11,'zichan_types','资产类型',1,'资产类型1',NULL,NULL,'2023-05-17 14:02:33'),(12,'zichan_types','资产类型',2,'资产类型2',NULL,NULL,'2023-05-17 14:02:33'),(13,'zichan_types','资产类型',3,'资产类型3',NULL,NULL,'2023-05-17 14:02:33'),(14,'zichan_types','资产类型',4,'资产类型4',NULL,NULL,'2023-05-17 14:02:33'),(15,'zichan_shenqing_types','资产申请类型',1,'资产申请类型1',NULL,NULL,'2023-05-17 14:02:33'),(16,'zichan_shenqing_types','资产申请类型',2,'资产申请类型2',NULL,NULL,'2023-05-17 14:02:33'),(17,'zichan_shenqing_types','资产申请类型',3,'资产申请类型3',NULL,NULL,'2023-05-17 14:02:33'),(18,'zichan_shenqing_types','资产申请类型',4,'资产申请类型4',NULL,NULL,'2023-05-17 14:02:33'),(19,'zichan_shenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-17 14:02:33'),(20,'zichan_shenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-17 14:02:33'),(21,'zichan_shenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-17 14:02:33'),(22,'zichan_baofei_types','资产报废类型',1,'资产报废类型1',NULL,NULL,'2023-05-17 14:02:33'),(23,'zichan_baofei_types','资产报废类型',2,'资产报废类型2',NULL,NULL,'2023-05-17 14:02:33'),(24,'zichan_baofei_types','资产报废类型',3,'资产报废类型3',NULL,NULL,'2023-05-17 14:02:33'),(25,'zichan_baofei_types','资产报废类型',4,'资产报废类型4',NULL,NULL,'2023-05-17 14:02:33'),(26,'ziliaoku_types','资料类型',1,'资料类型1',NULL,NULL,'2023-05-17 14:02:34'),(27,'ziliaoku_types','资料类型',2,'资料类型2',NULL,NULL,'2023-05-17 14:02:34'),(28,'ziliaoku_types','资料类型',3,'资料类型3',NULL,NULL,'2023-05-17 14:02:34'),(29,'ziliaoku_types','资料类型',4,'资料类型4',NULL,NULL,'2023-05-17 14:02:34'),(30,'ziliaoku_types','资料类型',5,'资料类型5',NULL,'','2023-05-17 14:43:18');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-17 14:03:01','公告详情1','2023-05-17 14:03:01'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-17 14:03:01','公告详情2','2023-05-17 14:03:01'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-17 14:03:01','公告详情3','2023-05-17 14:03:01'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-05-17 14:03:01','公告详情4','2023-05-17 14:03:01'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-05-17 14:03:01','公告详情5','2023-05-17 14:03:01'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-17 14:03:01','公告详情6','2023-05-17 14:03:01'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-05-17 14:03:01','公告详情7','2023-05-17 14:03:01'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-17 14:03:01','公告详情8','2023-05-17 14:03:01'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-17 14:03:01','公告详情9','2023-05-17 14:03:01'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-05-17 14:03:01','公告详情10','2023-05-17 14:03:01'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-17 14:03:01','公告详情11','2023-05-17 14:03:01'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-17 14:03:01','公告详情12','2023-05-17 14:03:01'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-05-17 14:03:01','公告详情13','2023-05-17 14:03:01'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-05-17 14:03:01','<p>公告详情14广大电视柜</p>','2023-05-17 14:03:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yuangong','员工','e5tqldyxuan2el8by2kxg4maa3v4msyo','2023-05-17 14:06:08','2023-05-17 15:41:47'),(2,1,'admin','users','管理员','43pgli8f1zoejblfefg83zlylgpxd3d7','2023-05-17 14:06:16','2023-05-17 15:43:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-17 14:02:33');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`bumen_types`,`zhiwei_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1684303381652','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',1,1,1,'1@qq.com',1,'2023-05-17 14:03:01'),(2,'a2','123456','1684303381614','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',1,1,1,'2@qq.com',1,'2023-05-17 14:03:01'),(3,'a3','123456','1684303381690','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,2,1,'3@qq.com',2,'2023-05-17 14:03:01');

/*Table structure for table `zichan` */

DROP TABLE IF EXISTS `zichan`;

CREATE TABLE `zichan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zichan_uuid_number` varchar(200) DEFAULT NULL COMMENT '资产编号',
  `zichan_name` varchar(200) DEFAULT NULL COMMENT '资产名称  Search111 ',
  `zichan_photo` varchar(200) DEFAULT NULL COMMENT '资产照片',
  `zichan_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `zichan_types` int(11) DEFAULT NULL COMMENT '资产类型 Search111',
  `zichan_kucun_number` int(11) DEFAULT NULL COMMENT '资产数量',
  `zichan_yuzhi` int(11) DEFAULT NULL COMMENT '阈值',
  `zichan_content` longtext COMMENT '资产介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资产';

/*Data for the table `zichan` */

insert  into `zichan`(`id`,`zichan_uuid_number`,`zichan_name`,`zichan_photo`,`zichan_danwei`,`zichan_types`,`zichan_kucun_number`,`zichan_yuzhi`,`zichan_content`,`insert_time`,`create_time`) values (1,'1684303381653','资产名称1','upload/zichan1.jpg','个',1,101,10,'资产介绍1','2023-05-17 14:03:01','2023-05-17 14:03:01'),(2,'1684303381638','资产名称2','upload/zichan2.jpg','个',3,102,10,'资产介绍2','2023-05-17 14:03:01','2023-05-17 14:03:01'),(3,'1684303381690','资产名称3','upload/zichan3.jpg','个',2,103,10,'资产介绍3','2023-05-17 14:03:01','2023-05-17 14:03:01'),(4,'1684303381694','资产名称4','upload/zichan4.jpg','个',2,104,10,'资产介绍4','2023-05-17 14:03:01','2023-05-17 14:03:01'),(5,'1684303381615','资产名称5','upload/zichan5.jpg','个',1,105,10,'资产介绍5','2023-05-17 14:03:01','2023-05-17 14:03:01'),(6,'1684303381639','资产名称6','upload/zichan6.jpg','个',3,106,10,'资产介绍6','2023-05-17 14:03:01','2023-05-17 14:03:01'),(7,'1684303381687','资产名称7','upload/zichan7.jpg','个',3,107,10,'资产介绍7','2023-05-17 14:03:01','2023-05-17 14:03:01'),(8,'1684303381656','资产名称8','upload/zichan8.jpg','个',2,108,10,'资产介绍8','2023-05-17 14:03:01','2023-05-17 14:03:01'),(9,'1684303381650','资产名称9','upload/zichan9.jpg','个',1,109,10,'资产介绍9','2023-05-17 14:03:01','2023-05-17 14:03:01'),(10,'1684303381646','资产名称10','upload/zichan10.jpg','个',3,1010,10,'资产介绍10','2023-05-17 14:03:01','2023-05-17 14:03:01'),(11,'1684303381682','资产名称11','upload/zichan11.jpg','个',3,1011,10,'资产介绍11','2023-05-17 14:03:01','2023-05-17 14:03:01'),(12,'1684303381654','资产名称12','upload/zichan12.jpg','个',2,1011,10,'资产介绍12','2023-05-17 14:03:01','2023-05-17 14:03:01'),(13,'1684303381673','资产名称13','upload/zichan13.jpg','个',1,10,10,'资产介绍13','2023-05-17 14:03:01','2023-05-17 14:03:01'),(14,'1684303381606','资产名称14','upload/zichan14.jpg','个',1,1013,10,'资产介绍14','2023-05-17 14:03:01','2023-05-17 14:03:01');

/*Table structure for table `zichan_baofei` */

DROP TABLE IF EXISTS `zichan_baofei`;

CREATE TABLE `zichan_baofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `zichan_id` int(11) DEFAULT NULL COMMENT '资产',
  `zichan_baofei_uuid_number` varchar(200) DEFAULT NULL COMMENT '资产报废编号',
  `zichan_baofei_types` int(11) DEFAULT NULL COMMENT '资产报废类型 Search111',
  `zichan_baofei_kucun_number` int(11) DEFAULT NULL COMMENT '资产报废数量',
  `zichan_baofei_content` longtext COMMENT '报废缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报废时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='资产报废';

/*Data for the table `zichan_baofei` */

insert  into `zichan_baofei`(`id`,`yuangong_id`,`zichan_id`,`zichan_baofei_uuid_number`,`zichan_baofei_types`,`zichan_baofei_kucun_number`,`zichan_baofei_content`,`insert_time`,`create_time`) values (1,1,1,'1684303381660',2,101,'报废缘由1','2023-05-17 14:03:01','2023-05-17 14:03:01'),(2,2,2,'1684303381611',3,102,'报废缘由2','2023-05-17 14:03:01','2023-05-17 14:03:01'),(3,2,3,'1684303381602',4,103,'报废缘由3','2023-05-17 14:03:01','2023-05-17 14:03:01'),(4,3,4,'1684303381614',3,104,'报废缘由4','2023-05-17 14:03:01','2023-05-17 14:03:01'),(5,2,5,'1684303381701',3,105,'报废缘由5','2023-05-17 14:03:01','2023-05-17 14:03:01'),(6,1,6,'1684303381683',3,106,'报废缘由6','2023-05-17 14:03:01','2023-05-17 14:03:01'),(7,3,7,'1684303381673',1,107,'报废缘由7','2023-05-17 14:03:01','2023-05-17 14:03:01'),(8,1,8,'1684303381606',2,108,'报废缘由8','2023-05-17 14:03:01','2023-05-17 14:03:01'),(9,1,9,'1684303381615',1,109,'报废缘由9','2023-05-17 14:03:01','2023-05-17 14:03:01'),(10,2,10,'1684303381688',1,1010,'报废缘由10','2023-05-17 14:03:01','2023-05-17 14:03:01'),(11,1,11,'1684303381645',1,1011,'报废缘由11','2023-05-17 14:03:01','2023-05-17 14:03:01'),(12,2,12,'1684303381641',1,1012,'报废缘由12','2023-05-17 14:03:01','2023-05-17 14:03:01'),(13,3,13,'1684303381649',3,1013,'报废缘由13','2023-05-17 14:03:01','2023-05-17 14:03:01'),(14,1,14,'1684303381691',2,1014,'报废缘由14','2023-05-17 14:03:01','2023-05-17 14:03:01'),(15,NULL,12,'1684305929093',2,1,'<p>广东省广东省固定事故</p>','2023-05-17 14:45:46','2023-05-17 14:45:46');

/*Table structure for table `zichan_shenqing` */

DROP TABLE IF EXISTS `zichan_shenqing`;

CREATE TABLE `zichan_shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `zichan_id` int(11) DEFAULT NULL COMMENT '资产',
  `zichan_shenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '资产申请编号',
  `zichan_shenqing_types` int(11) DEFAULT NULL COMMENT '资产申请类型 Search111',
  `zichan_shenqing_kucun_number` int(11) DEFAULT NULL COMMENT '资产申请数量',
  `zichan_shenqing_content` longtext COMMENT '申请缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `zichan_shenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `zichan_shenqing_yesno_text` longtext COMMENT '审核意见',
  `zichan_shenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='资产申请';

/*Data for the table `zichan_shenqing` */

insert  into `zichan_shenqing`(`id`,`yuangong_id`,`zichan_id`,`zichan_shenqing_uuid_number`,`zichan_shenqing_types`,`zichan_shenqing_kucun_number`,`zichan_shenqing_content`,`insert_time`,`zichan_shenqing_yesno_types`,`zichan_shenqing_yesno_text`,`zichan_shenqing_shenhe_time`,`create_time`) values (1,1,1,'1684303381654',4,101,'申请缘由1','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(2,2,2,'1684303381616',4,102,'申请缘由2','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(3,3,3,'1684303381621',4,103,'申请缘由3','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(4,2,4,'1684303381666',3,104,'申请缘由4','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(5,3,5,'1684303381677',4,105,'申请缘由5','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(6,3,6,'1684303381621',2,106,'申请缘由6','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(7,2,7,'1684303381650',3,107,'申请缘由7','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(8,2,8,'1684303381668',4,108,'申请缘由8','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(9,1,9,'1684303381614',4,109,'申请缘由9','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(10,2,10,'1684303381624',1,1010,'申请缘由10','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(11,3,11,'1684303381673',4,1011,'申请缘由11','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(12,1,12,'1684303381621',4,1012,'申请缘由12','2023-05-17 14:03:01',2,'同意','2023-05-17 14:03:01','2023-05-17 14:03:01'),(13,3,13,'1684303381653',2,1013,'申请缘由13','2023-05-17 14:03:01',1,NULL,NULL,'2023-05-17 14:03:01'),(14,2,14,'1684303381678',3,1014,'申请缘由14','2023-05-17 14:03:01',1,NULL,NULL,'2023-05-17 14:03:01'),(15,1,14,'1684305718100',1,10000,'<p>广东省格式的的格式</p>','2023-05-17 14:42:09',1,'',NULL,'2023-05-17 14:42:09'),(16,1,14,'1684305736879',3,1,'<p>合适的是大纲的三个</p>','2023-05-17 14:42:25',2,'孤独颂歌方式都个','2023-05-17 14:46:30','2023-05-17 14:42:25');

/*Table structure for table `ziliaoku` */

DROP TABLE IF EXISTS `ziliaoku`;

CREATE TABLE `ziliaoku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliaoku_uuid_number` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliaoku_name` varchar(200) DEFAULT NULL COMMENT '资料名称  Search111 ',
  `ziliaoku_types` int(11) DEFAULT NULL COMMENT '资料类型 Search111',
  `ziliaoku_file` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `ziliaoku_content` longtext COMMENT '资料介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资料库';

/*Data for the table `ziliaoku` */

insert  into `ziliaoku`(`id`,`ziliaoku_uuid_number`,`ziliaoku_name`,`ziliaoku_types`,`ziliaoku_file`,`ziliaoku_content`,`insert_time`,`create_time`) values (1,'1684303381638','资料名称1',2,'upload/file.rar','资料介绍1','2023-05-17 14:03:01','2023-05-17 14:03:01'),(2,'1684303381610','资料名称2',2,'upload/file.rar','资料介绍2','2023-05-17 14:03:01','2023-05-17 14:03:01'),(3,'1684303381685','资料名称3',3,'upload/file.rar','资料介绍3','2023-05-17 14:03:01','2023-05-17 14:03:01'),(4,'1684303381629','资料名称4',2,'upload/file.rar','资料介绍4','2023-05-17 14:03:01','2023-05-17 14:03:01'),(5,'1684303381682','资料名称5',4,'upload/file.rar','资料介绍5','2023-05-17 14:03:01','2023-05-17 14:03:01'),(6,'1684303381653','资料名称6',3,'upload/file.rar','资料介绍6','2023-05-17 14:03:01','2023-05-17 14:03:01'),(7,'1684303381669','资料名称7',4,'upload/file.rar','资料介绍7','2023-05-17 14:03:01','2023-05-17 14:03:01'),(8,'1684303381615','资料名称8',2,'upload/file.rar','资料介绍8','2023-05-17 14:03:01','2023-05-17 14:03:01'),(9,'1684303381621','资料名称9',3,'upload/file.rar','资料介绍9','2023-05-17 14:03:01','2023-05-17 14:03:01'),(10,'1684303381689','资料名称10',3,'upload/file.rar','资料介绍10','2023-05-17 14:03:01','2023-05-17 14:03:01'),(11,'1684303381678','资料名称11',3,'upload/file.rar','资料介绍11','2023-05-17 14:03:01','2023-05-17 14:03:01'),(12,'1684303381651','资料名称12',3,'upload/file.rar','资料介绍12','2023-05-17 14:03:01','2023-05-17 14:03:01'),(13,'1684303381671','资料名称13',4,'upload/file.rar','资料介绍13','2023-05-17 14:03:01','2023-05-17 14:03:01'),(14,'1684303381671','资料名称14',2,'upload/file.rar','<p>资料介绍14个第三个第三个</p>','2023-05-17 14:03:01','2023-05-17 14:03:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
