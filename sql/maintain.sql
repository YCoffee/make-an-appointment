/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.19-log : Database - maintain
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`maintain` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `maintain`;

/*Table structure for table `appoint` */

DROP TABLE IF EXISTS `appoint`;

CREATE TABLE `appoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `appoint_status` int(11) DEFAULT NULL,
  `appoint_id` bigint(20) DEFAULT NULL,
  `by_appoint_id` bigint(20) DEFAULT NULL,
  `content` text,
  `appoint_time` datetime DEFAULT NULL,
  `message` text,
  `status` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `appoint` */

insert  into `appoint`(`id`,`create_time`,`appoint_status`,`appoint_id`,`by_appoint_id`,`content`,`appoint_time`,`message`,`status`,`price`) values 
(1,'2024-03-05 15:08:04',1,1,2,'音响维修：音响播放声音失真，经诊断为音频线老化，更换音频线后音响播放音质清晰。','2024-03-08 00:00:00',NULL,1,NULL),
(2,'2024-03-05 15:08:06',1,1,2,'灯具维修：灯具不亮，检查发现为灯泡损坏，更换灯泡后灯具恢复正常照明。','2024-03-07 15:08:34',NULL,1,NULL),
(3,'2024-03-01 14:01:50',1,1,2,'电视机维修：针对电视机图像模糊问题，进行了主板和显示屏的连接线检查与更换，现电视机画面清晰，观看体验良好。','2024-03-03 14:02:08',NULL,2,12),
(4,'2024-03-05 13:04:45',1,1,2,'冰箱维修：冰箱制冷效果下降，经检查发现为冷凝器积尘过多，清理后制冷效果恢复正常。','2024-03-07 13:04:58',NULL,2,12),
(5,'2024-03-05 13:05:07',1,1,2,'洗衣机维修：洗衣机在洗涤过程中出现异响，检查后发现为轴承磨损，更换轴承后洗衣机运转平稳，无异响。','2024-03-07 13:05:15',NULL,3,12),
(6,'2024-03-05 13:05:23',1,1,2,'空调维修：空调制冷效果差，经检测为压缩机故障，更换压缩机后，空调制冷效果显著提升。','2024-03-07 13:05:36',NULL,3,12),
(7,'2024-03-05 13:05:42',1,1,2,'微波炉维修：微波炉加热不均匀，检查发现为磁控管老化，更换磁控管后，加热效果均匀。','2024-03-07 13:05:52',NULL,5,23),
(8,'2024-03-05 13:05:59',1,1,2,'电饭煲维修：电饭煲无法加热，经诊断为加热元件损坏，更换加热元件后，电饭煲恢复正常工作。','2024-03-07 13:06:08',NULL,4,23),
(9,'2024-03-05 00:00:00',1,1,NULL,'吸尘器维修：吸尘器吸力减弱，检查发现为滤网堵塞，清理滤网后吸力恢复。','2024-03-08 00:00:00',NULL,0,NULL),
(10,'2024-03-05 17:44:18',1,1,NULL,'热水器维修：热水器无法加热，经检查为加热管损坏，更换加热管后，热水器恢复正常加热功能。','2024-03-07 17:27:42',NULL,0,NULL),
(11,'2024-03-06 00:00:00',1,1,NULL,'电磁炉维修：电磁炉工作时有异响，检查发现为散热风扇故障，更换风扇后电磁炉工作正常，无异响。','2024-03-07 00:00:00',NULL,0,NULL),
(12,'2024-03-06 00:00:00',1,1,NULL,'烤箱维修：烤箱温度控制不准确，经诊断为温度传感器故障，更换温度传感器后，烤箱温度控制精准。','2024-03-07 00:00:00',NULL,0,NULL),
(13,'2024-03-06 00:00:00',1,1,NULL,'空气净化器维修：空气净化器无法开机，检查发现为电源插头松动，重新插紧后空气净化器正常工作。','2024-03-07 00:00:00',NULL,0,NULL),
(14,'2024-03-06 00:00:00',1,1,NULL,'咖啡机维修：咖啡机漏水，检查发现为水管老化，更换水管后咖啡机不再漏水。','2024-03-08 00:00:00',NULL,0,NULL),
(15,'2024-03-06 00:00:00',1,1,NULL,'榨汁机维修：榨汁机运转不畅，经诊断为电机故障，更换电机后榨汁机恢复正常运转。','2024-03-07 00:00:00',NULL,0,NULL),
(16,'2024-03-06 00:00:00',1,1,NULL,'电风扇维修：电风扇摇头功能失效，检查发现为摇头机构损坏，更换摇头机构后电风扇摇头功能恢复正常。','2024-03-08 00:00:00',NULL,0,NULL);

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `sort_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `article_status` int(11) DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`id`,`user_id`,`sort_id`,`create_time`,`title`,`article_status`,`content`) values 
(1,1,NULL,'2024-02-27 19:18:12','电视机维修记——告别模糊，还原清晰视界',1,'<p>近日，家中的电视机出现了画面模糊的问题，让人观看时倍感不适。经过仔细检查，发现原来是主板与显示屏之间的连接线出现了松动。我小心翼翼地拆开了电视机，重新连接了这些线路，并确保它们稳固无虞。经过一番努力，电视机终于恢复了往日的清晰画面，让我重新享受到了观影的乐趣。</p>'),
(2,1,1,'2024-02-27 19:18:50','冰箱维修心得——制冷效果大提升',1,'家中的冰箱最近制冷效果越来越差，食物保存效果大打折扣。经过检查，发现冷凝器上积满了灰尘。我利用吸尘器将冷凝器上的灰尘彻底清除，并清理了冰箱内部的冰霜。经过一番整理，冰箱的制冷效果明显提升，食物也能更好地保鲜了。'),
(3,1,2,'2024-02-27 19:19:14','洗衣机维修手记——告别异响，洗涤更舒心',1,'洗衣机在洗涤过程中发出了刺耳的异响，让人十分担心。经过检查，我发现是洗衣机的轴承出现了磨损。于是，我购买了新的轴承，并按照说明书上的步骤进行了更换。经过一番努力，洗衣机终于恢复了宁静，洗涤过程也变得更为舒心。'),
(4,2,3,'2024-02-27 22:07:48','空调维修记——重拾清凉，夏日无忧',1,'炎炎夏日，空调却突然失去了制冷功能，让人倍感烦躁。经过检测，我发现是空调的压缩机出现了故障。在专业人士的指导下，我购买了新的压缩机并进行了更换。经过一番折腾，空调终于恢复了制冷功能，让我重新感受到了夏日的清凉。'),
(5,1,3,'2024-02-27 22:08:15','微波炉维修小记——均匀加热，美食无忧',1,'微波炉在加热食物时总是出现加热不均匀的情况，让人十分头疼。经过检查，我发现是微波炉的磁控管出现了老化。于是，我购买了新的磁控管，并按照说明书上的步骤进行了更换。现在，微波炉加热食物时变得均匀多了，美食也能更好地保留其口感和营养。'),
(7,1,5,'2024-02-27 22:08:59','电饭煲维修之旅——让美食不再等待',1,'电饭煲突然失去了加热功能，让我无法烹饪美味的米饭。经过检查，我发现是电饭煲的加热元件出现了损坏。在朋友的帮助下，我购买了新的加热元件并进行了更换。现在，电饭煲又能正常工作了，我也能继续享受烹饪美食的乐趣了。'),
(8,1,1,'2024-03-05 00:00:00','吸尘器维修小窍门——吸力重现，清洁无忧',1,'吸尘器最近吸力明显减弱，让我在清洁时倍感吃力。经过检查，我发现是吸尘器的滤网被堵塞了。于是，我拆下了滤网进行了彻底清洗。经过一番努力，吸尘器的吸力终于恢复了正常，清洁工作也变得轻松多了。'),
(9,1,5,'2024-03-05 00:00:00','热水器维修心得——温暖如初，沐浴无忧',1,'热水器突然无法加热，让我无法享受舒适的沐浴体验。经过检查，我发现是热水器的加热管出现了故障。在维修人员的指导下，我购买了新的加热管并进行了更换。现在，热水器又能正常加热了，我也能重新享受沐浴的乐趣了。'),
(12,1,5,'2024-03-05 00:00:00','电磁炉维修小记——静音烹饪，享受美食',1,'电磁炉在工作时发出了刺耳的异响，让人十分担心。经过检查，我发现是电磁炉的散热风扇出现了故障。于是，我购买了新的风扇并进行了更换。现在，电磁炉在工作时变得安静多了，我也能更好地享受烹饪美食的乐趣了。'),
(13,1,1,'2024-03-05 00:00:00','烤箱维修经验谈——精准控温，烘焙更完美',1,'空气净化器突然无法开机，让我无法享受清新的空气。经过检查，我发现是空气净化器的电源插头出现了松动。我重新插紧了插头，并确保了电源连接稳定。现在，空气净化器又能正常工作了，我也能继续享受清新的空气了。'),
(14,1,1,'2024-03-05 00:00:00','空气净化器维修记——清新空气，呼吸更畅',1,'烤箱的温度控制突然变得不准确，让我在烘焙时无法掌握火候。经过检测，我发现是烤箱的温度传感器出现了故障。在专业人士的建议下，我购买了新的温度传感器并进行了更换。现在，烤箱的温度控制变得精准多了，我也能烘焙出更完美的美食了。'),
(15,1,1,'2024-03-24 00:00:00','冰箱不制冷怎么办？赶紧学习一下吧！',1,'<p>如果冰箱不制冷，以下是一些常见的故障排除步骤和解决方案：</p>\n<ol>\n<li>\n<p>检查电源和插头：确保冰箱插头插紧，电源连通且正常运作。</p>\n</li>\n<li>\n<p>温度设置：确保冰箱的温度设置正确，通常需要调至适合冷藏和冷冻的温度。</p>\n</li>\n<li>\n<p>冷凝器清洁：清洁冷凝器，它位于冰箱背后或底部，确保无尘或杂物堵塞。</p>\n</li>\n<li>\n<p>冰箱门密封：检查冰箱门密封情况，确保门密封良好，没有漏风现象。</p>\n</li>\n<li>\n<p>风扇运转：检查冷冻室和冷藏室内的风扇是否运转正常，如果不工作，可能需要更换。</p>\n</li>\n<li>\n<p>冰箱排水孔：确保冰箱排水孔无堵塞，以免影响制冷效果。</p>\n</li>\n<li>\n<p>避免过度装载：不要过度放置食物，留出足够的空间让空气流通，以保持制冷效果。</p>\n</li>\n</ol>\n<p>如果以上步骤都已尝试但问题仍未解决，建议咨询专业的维修人员或联系冰箱制造商的客户服务部门进行进一步的故障排查和修复。？</p>'),
(16,1,8,'2024-04-09 00:00:00','森林',0,'<p class=\"\">森林不仅为我们提供了美丽的风景，更是我们生存的重要基石。它为我们提供了丰富的资源，如木材、药材、食物等。同时，森林还是地球生态系统的重要组成部分，它能够净化空气、保持水土、调节气候。因此，保护森林就是保护我们的家园，是我们每个人的责任。</p>\n<p class=\"\">然而，随着人类活动的不断扩张，森林的面积正在逐渐缩小。过度砍伐、森林火灾、环境污染等问题日益严重，给森林带来了前所未有的危机。我们必须意识到，保护森林就是保护我们自己。只有珍惜每一片绿叶，才能让森林永远焕发生机与活力。</p>');

/*Table structure for table `certificate` */

DROP TABLE IF EXISTS `certificate`;

CREATE TABLE `certificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `certificate_status` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `certificate` */

insert  into `certificate`(`id`,`create_time`,`certificate_status`,`user_id`,`content`,`image`) values 
(1,'2024-02-28 14:06:28',1,1,'维修技师证书',NULL),
(2,'2024-02-28 14:07:08',1,1,'软件设计师证书',NULL),
(3,'2024-03-01 17:46:41',0,1,'网络工程师证书',NULL);

/*Table structure for table `consult` */

DROP TABLE IF EXISTS `consult`;

CREATE TABLE `consult` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_send_id` bigint(20) DEFAULT NULL,
  `user_accept_id` bigint(20) DEFAULT NULL,
  `content` text,
  `consult_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `consult` */

insert  into `consult`(`id`,`user_send_id`,`user_accept_id`,`content`,`consult_status`,`create_time`,`status`) values 
(1,2,1,'你好，请问这个怎么修',1,'2024-03-01 16:00:28',1),
(2,2,1,'不干了',1,'2024-03-01 16:01:21',0),
(3,2,1,'你好啊',1,'2024-03-03 00:00:00',0),
(4,1,2,'发给用户',1,'2024-03-03 23:14:58',1),
(5,2,1,'你好',1,'2024-03-03 00:00:00',0),
(6,2,1,'你好啊',1,'2024-03-03 00:00:00',1),
(7,2,1,'你这台机子修不了了。',1,'2024-03-03 00:00:00',0),
(8,1,2,'别来烦我',0,'2024-03-06 00:00:00',0);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `content` text,
  `feedback_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `feedback` */

insert  into `feedback`(`id`,`user_id`,`create_time`,`content`,`feedback_status`) values 
(1,2,'2024-02-29 00:00:00','这系统就是垃圾，哈哈',1),
(2,2,'2024-03-03 00:00:00','阿斯顿',1);

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `report_status` int(11) DEFAULT NULL,
  `report_id` bigint(20) DEFAULT NULL,
  `by_report_id` bigint(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `report` */

insert  into `report`(`id`,`create_time`,`report_status`,`report_id`,`by_report_id`,`content`) values 
(1,'2024-03-01 18:46:58',1,2,1,'这货乱要价'),
(2,'2024-03-05 00:00:00',1,2,1,'这货是假维修师'),
(3,'2024-03-05 00:00:00',1,2,1,'被这个人给骗了'),
(4,'2024-03-05 00:00:00',1,2,1,'他修的东西还是坏的'),
(5,'2024-03-05 00:00:00',1,2,1,'修完后和没修一样'),
(6,'2024-03-05 00:00:00',1,2,1,'虚假的技术标签'),
(7,'2024-03-05 00:00:00',1,2,1,'完全是外行'),
(8,'2024-03-05 00:00:00',0,2,1,'差评');

/*Table structure for table `scope` */

DROP TABLE IF EXISTS `scope`;

CREATE TABLE `scope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `scope_status` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `scope` */

insert  into `scope`(`id`,`create_time`,`scope_status`,`content`,`user_id`) values 
(1,'2024-02-28 14:03:14',1,'北京',1),
(2,'2024-02-28 14:03:30',1,'上海',1),
(3,'2024-02-28 14:03:42',1,'郑州',1),
(4,'2024-03-06 00:00:00',0,'广州',1);

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `score_status` int(11) DEFAULT NULL,
  `score_id` bigint(20) DEFAULT NULL,
  `by_score_id` bigint(20) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `score` */

insert  into `score`(`id`,`create_time`,`score_status`,`score_id`,`by_score_id`,`point`) values 
(2,'2024-02-28 14:05:52',1,1,1,9),
(4,'2024-02-29 00:00:00',1,1,2,8),
(5,'2024-03-05 00:00:00',1,1,2,6),
(6,'2024-03-05 00:00:00',1,1,2,10),
(7,'2024-03-07 00:00:00',0,3,2,10),
(8,'2024-03-24 00:00:00',1,1,2,4);

/*Table structure for table `skill` */

DROP TABLE IF EXISTS `skill`;

CREATE TABLE `skill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `skill_status` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `skill` */

insert  into `skill`(`id`,`create_time`,`skill_status`,`user_id`,`content`) values 
(1,'2024-02-28 14:04:08',1,1,'修冰箱'),
(2,'2024-02-28 14:04:24',1,1,'修洗衣机'),
(3,'2024-02-28 14:04:35',1,1,'修电视'),
(4,'2024-03-05 23:23:33',1,1,'电脑'),
(5,'2024-03-06 00:00:00',1,1,'手表'),
(6,'2024-03-06 00:00:00',1,1,'修发电机'),
(7,'2024-03-06 00:00:00',0,1,'空调'),
(8,'2024-03-06 00:00:00',1,1,'电风扇');

/*Table structure for table `sort` */

DROP TABLE IF EXISTS `sort`;

CREATE TABLE `sort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `sort_status` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `sort` */

insert  into `sort`(`id`,`create_time`,`sort_status`,`content`) values 
(1,'2024-02-27 16:27:07',1,'冰箱'),
(2,'2024-02-27 16:27:18',1,'洗衣机'),
(3,'2024-02-27 16:27:27',1,'手机'),
(4,'2024-02-27 16:27:37',1,'电脑'),
(5,'2024-02-27 16:27:51',1,'油烟机'),
(6,'2024-02-27 16:28:18',1,'空调'),
(7,'2024-02-27 16:28:29',1,'电视'),
(8,'2024-02-27 16:29:04',1,'电饭煲'),
(9,'2024-03-07 00:00:00',0,'汽车'),
(10,'2024-03-07 00:00:00',0,'电磁炉');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `user_account` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',
  `gender` tinyint(4) DEFAULT '2',
  `user_password` varchar(255) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`user_account`,`avatar_url`,`gender`,`user_password`,`user_status`,`create_time`,`user_role`) values 
(1,'维修师','qwe','http://localhost:8081/images/user/16e31f78-672f-4f04-9eab-955aae7c7c71.jpg',1,'3937465f3db51148e54882efd30c1d54',1,'2024-02-21 20:28:14',2),
(2,'王五','oLmdI5WwEwHNpvj2iP3LxdbIOO4o','http://localhost:8081/images/user/6e210286-7c9b-4ab8-95d6-1fa35350dfa7.png',1,'3937465f3db51148e54882efd30c1d54',1,'2024-02-28 00:00:00',0),
(14,'管理员','admin','http://localhost:8081/images/user/6196bddb-82ce-4391-aa29-080b582434c1.jpg',2,'3937465f3db51148e54882efd30c1d54',1,'2024-03-01 19:32:43',1),
(15,'张三','test1','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',2,'3937465f3db51148e54882efd30c1d54',0,'2024-03-07 12:20:51',1),
(16,'李乾坤','test2','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',2,'70c7efa7561e0fc81ba19ac941e19d59',0,'2024-03-07 00:00:00',1),
(17,'赵顺才','test3','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',2,'cc18424915f2edf39f1ae3418a269f17',0,'2024-03-07 00:00:00',2),
(18,'李彩华','test4','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',0,'da295201af6ce03bf7c7ae8b7391d545',0,'2024-03-07 00:00:00',0),
(19,'张三','test5','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',2,'3937465f3db51148e54882efd30c1d54',1,'2024-03-24 00:00:00',0),
(20,'张三','test6','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',2,'3937465f3db51148e54882efd30c1d54',1,'2024-03-24 00:00:00',0),
(21,'张三','test7','https://qiniu-web-assets.dcloud.net.cn/unidoc/zh/unicloudlogo.png',2,'3937465f3db51148e54882efd30c1d54',1,'2024-03-24 00:00:00',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
