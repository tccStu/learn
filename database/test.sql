/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-12-21 14:40:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned zerofill NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` mediumtext,
  `click_num` int(10) unsigned zerofill DEFAULT '0000000009',
  `created_at` int(11) unsigned zerofill NOT NULL,
  `updated_at` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_article` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('0000000001', '0000000001', 'ceshi ceshi', 'asdgasdgasdg', '0000000009', '01430896376', '00000002015');
INSERT INTO `article` VALUES ('0000000002', '0000000001', 'title222', 'hkfgjdgsdf', '0000000008', '01430996376', '01430996376');
INSERT INTO `article` VALUES ('0000000003', '0000000002', 'title333', 'rudtvrs', '0000000007', '01430896376', '01430896376');
INSERT INTO `article` VALUES ('0000000004', '0000000003', 'title4444', 'savzxvasfasf', '0000000006', '01430896376', '01430896376');
INSERT INTO `article` VALUES ('0000000005', '0000000001', 'title55555', 'bvdfsgjn', '0000000005', '01430896376', '01430896376');
INSERT INTO `article` VALUES ('0000000007', '0000000002', 'title new add', 'new test add', '0000000004', '00000002015', '00000002015');
INSERT INTO `article` VALUES ('0000000010', '0000000002', 'title new add', 'new test add', '0000000019', '00000002015', '00000002015');
INSERT INTO `article` VALUES ('0000000012', '0000000003', 'title new add', 'new test add', '0000000004', '00000002015', '00000002015');
INSERT INTO `article` VALUES ('0000000015', '0000000001', 'title new add', 'new test add', '0000000003', '00000002015', '00000002015');
INSERT INTO `article` VALUES ('0000000016', '0000000009', 'reset title', 'new test add', '0000000002', '00000002015', '00000002015');
INSERT INTO `article` VALUES ('0000000017', '0000000009', 'reset title', 'new test add', '0000000001', '00000002015', '00000002015');
INSERT INTO `article` VALUES ('0000000018', '0000000004', 'reset title', 'new test add', '0000000010', '00000002015', '00000002015');

-- ----------------------------
-- Table structure for big_data
-- ----------------------------
DROP TABLE IF EXISTS `big_data`;
CREATE TABLE `big_data` (
  `key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valude` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` char(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of big_data
-- ----------------------------
INSERT INTO `big_data` VALUES ('201505_traffic_1', 'YTozOntpOjA7YTozOntzOjI6ImlkIjtpOjE7czo0OiJuYW1lIjtzOjM6InRjYyI7czozOiJsbmciO2Q6MTA2LjU4MTUxNTt9aToxO2E6Mjp7czoyOiJpZCI7aToxO3M6NDoibmFtZSI7czo5OiLllJDnu7Xnu7UiO31pOjI7YToyOntzOjI6ImlkIjtpOjE7czo0OiJuYW1lIjtzOjM6InRjYyI7fX0=', '2015-06-03 17:40:42', '2015-06-03 17:40:42');
INSERT INTO `big_data` VALUES ('201505_traffic_2', 'YTo0OntpOjA7YTozOntzOjI6ImlkIjtpOjA7czozOiJsbmciO3M6MTA6IjEwNi4yNTYzMjUiO3M6NzoiYWRkcmVzcyI7czoxMzoi56ysMuS4quS9jee9riI7fWk6MTthOjM6e3M6MjoiaWQiO2k6MTtzOjM6ImxuZyI7czoxMDoiMTA2LjI1NjMyNSI7czo3OiJhZGRyZXNzIjtzOjEzOiLnrKwy5Liq5L2N572uIjt9aToyO2E6Mzp7czoyOiJpZCI7aToyO3M6MzoibG5nIjtzOjEwOiIxMDYuMjU2MzI1IjtzOjc6ImFkZHJlc3MiO3M6MTM6IuesrDLkuKrkvY3nva4iO31pOjM7YTozOntzOjI6ImlkIjtpOjM7czozOiJsbmciO3M6MTA6IjEwNi4yNTYzMjUiO3M6NzoiYWRkcmVzcyI7czoxMzoi56ysMuS4quS9jee9riI7fX0=', '2015-06-04 10:36:15', '2015-06-04 10:36:15');

-- ----------------------------
-- Table structure for blade
-- ----------------------------
DROP TABLE IF EXISTS `blade`;
CREATE TABLE `blade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blade
-- ----------------------------

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES ('1', '商家1');
INSERT INTO `business` VALUES ('2', '商家2');
INSERT INTO `business` VALUES ('3', '商家3');
INSERT INTO `business` VALUES ('4', '商家4');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `expiration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for gb_circle_friend
-- ----------------------------
DROP TABLE IF EXISTS `gb_circle_friend`;
CREATE TABLE `gb_circle_friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `reply_uid` int(10) unsigned DEFAULT NULL,
  `path` text NOT NULL COMMENT '图片或视频',
  `thumb` text NOT NULL COMMENT '缩略图路径',
  `msg` varchar(1000) NOT NULL COMMENT '内容',
  `circle_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '圈子 1：私有  2：公有',
  `type` varchar(5) NOT NULL COMMENT '评论类型  img video char',
  `reply_cmtId` bigint(20) NOT NULL DEFAULT '0' COMMENT '回复内容ID',
  `reply_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '回复类型 0发表 1评论 2回复',
  `create_time` varchar(20) NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更改时间',
  `update_by` varchar(20) DEFAULT NULL COMMENT '更改人',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:待审 1:发布',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reply_uid` (`reply_uid`),
  KEY `reply_cmtId` (`reply_cmtId`),
  CONSTRAINT `gb_circle_friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3582 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gb_circle_friend
-- ----------------------------
INSERT INTO `gb_circle_friend` VALUES ('1419', '127', '0', '/upload/sjftp/rainbowfm/127_14435084655610.png,/upload/sjftp/rainbowfm/127_14435084655611.png,/upload/sjftp/rainbowfm/127_14435084655612.png,/upload/sjftp/rainbowfm/127_14435084655613.png,/upload/sjftp/rainbowfm/127_14435084655614.png,/upload/sjftp/rainbowfm/127_14435084655615.png,/upload/sjftp/rainbowfm/127_14435084655616.png,', '', 'DV相互电话', '1', 'img', '0', '0', '1443508473', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1423', '127', '0', '/upload/sjftp/rainbowfm/127_14435085058990.png,', '', '', '1', 'img', '0', '0', '1443508514', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1443', '59', '0', '/upload/sjftp/rainbowfm/59_14435129963990.png,', '', '技术会', '1', 'img', '0', '0', '1443512997', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1447', '127', '0', '', '', '我要UI', '1', 'char', '1419', '1', '1443514487', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1465', '127', '0', '/upload/sjftp/rainbowfm/127_14435181162640.png,', '', '', '1', 'img', '0', '0', '1443518126', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1469', '107', '0', '', '', '吃饭了哟', '1', 'char', '0', '0', '1443519273', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1471', '59', '0', '', '', '今天晚上每个人都要晒美食', '1', 'char', '0', '0', '1443519953', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1473', '59', '0', '/upload/sjftp/rainbowfm/59_14435200763020.png,/upload/sjftp/rainbowfm/59_14435200763031.png,', '', '吃这里', '1', 'img', '0', '0', '1443520344', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1475', '59', '0', '/upload/sjftp/rainbowfm/59_14435207456480.png,/upload/sjftp/rainbowfm/59_14435207456481.png,/upload/sjftp/rainbowfm/59_14435207456482.png,', '', '太好吃', '1', 'img', '0', '0', '1443520798', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1477', '59', '0', '/upload/sjftp/rainbowfm/59_14435211727500.png,', '', '石锅排骨', '1', 'img', '0', '0', '1443521316', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1479', '107', '0', '', '', '看起好安逸', '1', 'char', '1475', '1', '1443521351', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1481', '59', '0', '', '', '点赞噻', '1', 'char', '1477', '1', '1443521431', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1483', '107', '0', '/upload/sjftp/rainbowfm/107_14435216724200.png,', '', '最爱，猜猜它是啥？', '1', 'img', '0', '0', '1443521683', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1495', '107', '0', '/upload/sjftp/rainbowfm/107_14435222179590.png,', '', '【三大运营商10月推“当月流量不清零”】移动、电信、联通将从10月1日开始推出当月流量不清零的举措：①用户当月剩余流量可转到下月继续使用；②下月优先使用上月未用完流量；③剩余流量不能累计到第三个月；④所有手机用户默认开通当月流量不清零服务，无需申请。转发，扩散！', '1', 'img', '0', '0', '1443522225', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1499', '107', '0', '/upload/sjftp/rainbowfm/107_14435226655320.png,', '', ' 世界上最遥远的距离就是，刚发现个很好玩的app，却发现它已经下架了。前几天还一度很火的17app，在今天遭到了苹果官方的无预警下架。而下架的原因很可能跟涉黄问题有关。', '1', 'img', '0', '0', '1443522675', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1501', '107', '0', '/upload/sjftp/rainbowfm/107_14435228361520.png,', '', '读取照片有问题，如果有新照片拷入手机，直接点添加照片找不到新添加的照片，需要退出掌上广播，再登入能读取新照片', '1', 'img', '0', '0', '1443522844', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1503', '59', '0', '', '', '对了对了我也发现有这个问题', '1', 'char', '1501', '1', '1443522871', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1505', '59', '0', '/upload/sjftp/rainbowfm/59_14435229318280.png,/upload/sjftp/rainbowfm/59_14435229318281.png,/upload/sjftp/rainbowfm/59_14435229318282.png,/upload/sjftp/rainbowfm/59_14435229318283.png,', '', '今天的晚餐怎么样', '1', 'img', '0', '0', '1443522943', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1507', '59', '0', '', '', '我这里用起来一点都不乱跳我觉得挺好', '1', 'char', '1505', '1', '1443523018', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1509', '59', '0', '', '', '我已经下载了没有下架', '1', 'char', '1499', '1', '1443523058', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1511', '59', '0', '', '', '他那个内容有点猛', '1', 'char', '1499', '1', '1443523107', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1513', '127', '59', '', '', '你往下面翻页，一直翻,翻到底，刷新好像出错了，要乱跳，里面的刷新逻辑处理太多了', '1', 'char', '1505', '2', '1443523124', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1515', '59', '127', '', '', '你的手机性能太差了你的手机性能太差', '1', 'char', '1505', '2', '1443523213', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1517', '59', '127', '', '', '？你的APP是专为高端手机设计', '1', 'char', '1505', '2', '1443523248', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1519', '59', '0', '/upload/sjftp/rainbowfm/59_14435234383230.png,', '', '互联网有很多好玩的东西啊', '1', 'img', '0', '0', '1443523438', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1521', '59', '0', '', '', '打电话通知车车上线', '1', 'char', '0', '0', '1443523511', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1523', '107', '59', '', '', '深夜的直播内容，画面太美我不敢看', '1', 'char', '1499', '2', '1443523672', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1525', '59', '107', '', '', '假消息假消息', '1', 'char', '1499', '2', '1443524244', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1527', '107', '0', '/upload/sjftp/rainbowfm/107_14435245581620.png,', '', '今晚的新闻联播要延长5分钟', '1', 'img', '0', '0', '1443524565', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1529', '59', '0', '', '', '使用Periscope，人们可以随时随地录制自己的直播视频，并且分享到Twitter等社交平台上，与自己已有的社交关系互动。Periscope志在打造一个“让你通过其他眼睛实时看到世界”的产品，不过由于该公司仍然在应用测试阶段，新应用的细节并没有对外公布。', '1', 'char', '0', '0', '1443524694', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1531', '59', '0', '', '', '这个APP是国外的直播应用有的时候它里面的内容也很', '1', 'char', '1529', '1', '1443524732', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1533', '59', '0', '', '', 'ABB是国外的视频直播应用大家可以安装测试一下', '1', 'char', '1529', '1', '1443524789', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1535', '399', '0', '', '', '我才开始吃饭，给我半个小时，你们先热闹到', '1', 'char', '0', '0', '1443525463', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1537', '399', '0', '', '', '才到家一会啊（', '1', 'char', '1521', '1', '1443525510', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1539', '107', '0', '/upload/sjftp/rainbowfm/107_14435255189310.png,', '', '非法内容举报功能', '1', 'img', '0', '0', '1443525525', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1541', '399', '399', '', '', '(>﹏<)', '1', 'char', '1521', '2', '1443525542', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1543', '161', '0', '/upload/sjftp/rainbowfm/161_14435265315570.png,', '', '', '1', 'img', '0', '0', '1443526524', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1545', '75', '0', '/upload/sjftp/rainbowfm/75_14435268240440.png,', '', '朱砂壶', '1', 'img', '0', '0', '1443526823', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1547', '399', '0', '/upload/sjftp/rainbowfm/399_14435270144790.png,', '', '明天天气最高温26度，最低温20度', '1', 'img', '0', '0', '1443527015', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1549', '161', '0', '/upload/sjftp/rainbowfm/161_14435271158370.png,', '', '', '1', 'img', '0', '0', '1443527112', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1551', '107', '0', '', '', '穿棉袄', '1', 'char', '1547', '1', '1443527215', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1553', '1907', '0', '', '', '你们好  ', '1', 'char', '0', '0', '1443527553', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1555', '399', '107', '', '', '穿秋裤', '1', 'char', '1547', '2', '1443527588', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1557', '399', '0', '', '', '杨杰驾到', '1', 'char', '1553', '1', '1443527625', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1559', '399', '0', '', '', '评论点赞', '1', 'char', '1553', '1', '1443527701', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1561', '399', '399', '', '', '1111', '1', 'char', '1547', '2', '1443527714', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1563', '399', '399', '', '', '222', '1', 'char', '1547', '2', '1443527721', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1565', '399', '399', '', '', '333', '1', 'char', '1547', '2', '1443527732', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1567', '399', '399', '', '', '444', '1', 'char', '1547', '2', '1443527741', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1569', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435277679390.png,/upload/sjftp/rainbowfm/1907_14435277679391.png,', '', '今晚上奢侈点 加了两个蛋', '1', 'img', '0', '0', '1443527764', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1571', '399', '399', '', '', '555', '1', 'char', '1547', '2', '1443527807', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1573', '399', '0', '', '', '555', '1', 'char', '1549', '1', '1443527816', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1575', '399', '0', '', '', '555', '1', 'char', '1545', '1', '1443527824', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1577', '929', '0', '/upload/sjftp/rainbowfm/929_14435286885470.png,', '', '原型，原型', '1', 'img', '0', '0', '1443528054', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1579', '929', '0', '', '', '吃得这么好', '1', 'char', '1483', '1', '1443528202', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1581', '929', '0', '', '', '纳尼，大学也有这个店，都来开连锁了嘛', '1', 'char', '1475', '1', '1443528269', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1583', '399', '0', '', '', '抓贼哟哈哈', '1', 'char', '1577', '1', '1443528365', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1587', '107', '0', '/upload/sjftp/rainbowfm/107_14435283745170.png,', '', '收视率的保障……李伯伯', '1', 'img', '0', '0', '1443528380', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1589', '399', '0', '', '', '在值班哇', '1', 'char', '1587', '1', '1443528503', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1591', '127', '59', '', '', '落伍了，不行了，买不起啊', '1', 'char', '1505', '2', '1443528665', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1593', '107', '399', '', '', '对啊', '1', 'char', '1587', '2', '1443528814', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1595', '1907', '0', '', '', '正宗韩国进口面膜，关爱健康，更关心你，我是小米不得行', '1', 'char', '0', '0', '1443528816', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1597', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435288406520.png,', '', '正宗韩国进口面膜，关爱健康，更关心你，我是小米拍照不得行', '1', 'img', '0', '0', '1443528858', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1599', '1907', '0', '', '', '好好好', '1', 'char', '1545', '1', '1443528932', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1601', '1907', '0', '', '', '画江湖好看', '1', 'char', '1543', '1', '1443528953', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1603', '107', '0', '', '', '全是中文的嘛', '1', 'char', '1597', '1', '1443528970', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1613', '1907', '107', '', '', '评论没得提示诶', '1', 'char', '1597', '2', '1443529171', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1615', '1907', '0', '', '', '我这个发图，好像找不到手机相册里面的相册诶，你们可以吗，  嘿 对面的的朋友，你们好吗', '1', 'char', '0', '0', '1443529259', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1617', '399', '0', '', '', '这个感觉好好吃', '1', 'char', '1477', '1', '1443529301', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1621', '285', '0', '', '', '你是哪个人', '1', 'char', '1615', '1', '1443529399', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1625', '107', '0', '/upload/sjftp/rainbowfm/107_14435294491440.png,/upload/sjftp/rainbowfm/107_14435294491441.png,/upload/sjftp/rainbowfm/107_14435294491442.png,/upload/sjftp/rainbowfm/107_14435294491443.png,/upload/sjftp/rainbowfm/107_14435294491444.png,/upload/sjftp/rainbowfm/107_14435294491445.png,/upload/sjftp/rainbowfm/107_14435294491446.png,/upload/sjftp/rainbowfm/107_14435294491447.png,/upload/sjftp/rainbowfm/107_14435294491448.png,', '', '', '1', 'img', '0', '0', '1443529455', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1629', '1907', '285', '', '', '我是美女卅', '1', 'char', '1615', '2', '1443529695', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1631', '399', '0', '', '', '还是有点变形哈', '1', 'char', '1625', '1', '1443529730', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1633', '399', '0', '', '', '记录', '1', 'char', '1615', '1', '1443529813', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1637', '75', '0', '/upload/sjftp/rainbowfm/75_14435298705750.png,/upload/sjftp/rainbowfm/75_14435298705751.png,/upload/sjftp/rainbowfm/75_14435298705752.png,/upload/sjftp/rainbowfm/75_14435298705753.png,', '', '英语很重要', '1', 'img', '0', '0', '1443529879', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1639', '399', '0', '', '', '是谁的小红鞋', '1', 'char', '1637', '1', '1443529931', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1641', '399', '0', '/upload/sjftp/rainbowfm/399_14435299628330.png,', '', '我要飞', '1', 'img', '0', '0', '1443529960', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1643', '107', '399', '', '', '你看五，六图打开后看不清楚', '1', 'char', '1625', '2', '1443530027', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1645', '75', '399', '', '', '我自己的', '1', 'char', '1637', '2', '1443530131', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1647', '399', '107', '', '', '这个严重，记录', '1', 'char', '1625', '2', '1443530190', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1649', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435302469090.png,/upload/sjftp/rainbowfm/1907_14435302469091.png,/upload/sjftp/rainbowfm/1907_14435302469092.png,/upload/sjftp/rainbowfm/1907_14435302469093.png,/upload/sjftp/rainbowfm/1907_14435302469094.png,/upload/sjftp/rainbowfm/1907_14435302469095.png,/upload/sjftp/rainbowfm/1907_14435302469096.png,/upload/sjftp/rainbowfm/1907_14435302469097.png,/upload/sjftp/rainbowfm/1907_14435302469098.png,', '', '还是发不起呢', '1', 'img', '0', '0', '1443530248', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1651', '283', '0', '', '', '啦啦啦', '1', 'char', '0', '0', '1443530332', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1653', '161', '0', '/upload/sjftp/rainbowfm/161_14435304376590.png,', '', '', '1', 'img', '0', '0', '1443530433', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1655', '283', '0', '', '', '这个大姐姐是谁额', '1', 'char', '1653', '1', '1443530504', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1657', '59', '0', '', '', 'Go on', '1', 'char', '0', '0', '1443530512', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1659', '59', '0', '', '', '是妹子', '1', 'char', '1653', '1', '1443530589', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1661', '399', '0', '', '', '青春', '1', 'char', '1649', '1', '1443530591', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1663', '283', '0', '/upload/sjftp/rainbowfm/283_14435307557080.png,', '', '一大一小', '1', 'img', '0', '0', '1443530768', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1665', '59', '0', '/upload/sjftp/rainbowfm/59_14435308854240.png,', '', '好漂亮', '1', 'img', '0', '0', '1443530881', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1667', '59', '0', '', '', 'http://livestreamsdk.com/', '1', 'char', '1665', '1', '1443531039', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1669', '59', '0', '', '', '要求网页链接可以打开', '1', 'char', '1665', '1', '1443531073', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1671', '107', '0', '', '', '我朗格打不开也', '1', 'char', '1665', '1', '1443531522', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1673', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435315523240.png,', '', '先拍照没打字，要闪退诶。。。爱情公寓番外篇笑屎', '1', 'img', '0', '0', '1443531572', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1675', '59', '0', '', '', '下次设计好以后就可以打开了现在打不开', '1', 'char', '1665', '1', '1443531641', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1677', '107', '0', '', '', '我没有咯', '1', 'char', '1673', '1', '1443531666', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1679', '59', '0', '/upload/sjftp/rainbowfm/59_14435317228120.png,', '', '', '1', 'img', '0', '0', '1443531719', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1681', '59', '0', '', '', '我这里没有闪退', '1', 'char', '1679', '1', '1443531751', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1683', '399', '0', '', '', '咦，这张本身是照的黑图？', '1', 'char', '1679', '1', '1443531769', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1685', '399', '0', '', '', '感觉机子不一样又有很多问题', '1', 'char', '1673', '1', '1443531827', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1687', '59', '0', '', '', '对头在黑暗中拍的图', '1', 'char', '1679', '1', '1443531884', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1689', '399', '0', '', '', '我看不懂', '1', 'char', '1665', '1', '1443531944', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1691', '127', '399', '', '', '这个不严重，你看那个图片相册里本来就是模糊的', '1', 'char', '1625', '2', '1443532057', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1693', '107', '0', '/upload/sjftp/rainbowfm/107_14435320520790.png,', '', '机器不一样，闪退情况不一样？三星暂时还没有闪', '1', 'img', '0', '0', '1443532058', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1695', '59', '0', '', '', '对的三星我也没有遇到任何的闪退', '1', 'char', '1693', '1', '1443532207', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1697', '59', '0', '', '', '王勇有反应说啥这个问题是不是又是内存溢出之类的', '1', 'char', '0', '0', '1443532248', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1699', '399', '0', '', '', '闪退那个？', '1', 'char', '1697', '1', '1443532452', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1701', '399', '0', '', '', '我昨天闪退了的，尝试了两遍第三遍发出来了', '1', 'char', '1693', '1', '1443532503', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1703', '107', '0', '/upload/sjftp/rainbowfm/107_14435327409360.png,/upload/sjftp/rainbowfm/107_14435327409361.png,/upload/sjftp/rainbowfm/107_14435327409362.png,/upload/sjftp/rainbowfm/107_14435327409363.png,/upload/sjftp/rainbowfm/107_14435327409364.png,', '', '拍是竖起拍的，出来确实横着的', '1', 'img', '0', '0', '1443532748', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1705', '59', '0', '', '', '就是这种看起来就很不舒服', '1', 'char', '1703', '1', '1443532871', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1707', '107', '0', '/upload/sjftp/rainbowfm/107_14435329738590.png,', '', '退出客户端重新进来后，现在又好了，没有旋转了', '1', 'img', '0', '0', '1443532978', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1709', '399', '0', '', '', '第一张又是花的', '1', 'char', '1703', '1', '1443533073', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1711', '107', '0', '/upload/sjftp/rainbowfm/107_14435330684000.png,/upload/sjftp/rainbowfm/107_14435330684001.png,', '', '退出客户端重新进来又正常了', '1', 'img', '0', '0', '1443533074', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1713', '107', '399', '', '', '嗯，它是随机花的？', '1', 'char', '1703', '2', '1443533120', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1715', '127', '0', '', '', '内存溢出', '1', 'char', '1697', '1', '1443534325', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1719', '59', '0', '', '', '非常喜欢朋友圈了', '1', 'char', '0', '0', '1443540367', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1721', '59', '0', '/upload/sjftp/rainbowfm/59_14435743184840.png,/upload/sjftp/rainbowfm/59_14435743184841.png,/upload/sjftp/rainbowfm/59_14435743184842.png,', '', '早上好', '1', 'img', '0', '0', '1443574322', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1723', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435746899770.png,', '', '我就是', '1', 'img', '0', '0', '1443574693', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1725', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435748425350.png,', '', '毫无PS痕迹的原装大图', '1', 'img', '0', '0', '1443574843', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1727', '107', '0', '', '', 'Hjiuygh', '1', 'char', '1545', '1', '1443576490', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1729', '107', '0', '', '', 'Pyy', '1', 'char', '1569', '1', '1443576518', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1731', '107', '0', '', '', 'Pyy', '1', 'char', '1553', '1', '1443576544', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1733', '59', '0', '/upload/sjftp/rainbowfm/59_14435765921310.png,', '', '张先生', '1', 'img', '0', '0', '1443576596', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1735', '107', '0', '/upload/sjftp/rainbowfm/107_14435783648370.png,', '', '', '1', 'img', '0', '0', '1443578380', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1737', '127', '0', '', '', 'Note4默认2输出为横屏，我做了旋转的', '1', 'char', '1707', '1', '1443578552', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1749', '59', '0', '', '', '播控安卓机名单发来', '1', 'char', '0', '0', '1443586777', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1751', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435904978200.png,/upload/sjftp/rainbowfm/1907_14435904978201.png,', '', '', '1', 'img', '0', '0', '1443590508', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1753', '1907', '0', '', '', '你好吗', '1', 'char', '1751', '1', '1443590602', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1755', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435906450290.png,', '', '', '1', 'img', '0', '0', '1443590646', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1757', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435907109680.png,/upload/sjftp/rainbowfm/1907_14435907109681.png,/upload/sjftp/rainbowfm/1907_14435907109682.png,/upload/sjftp/rainbowfm/1907_14435907109683.png,', '', '', '1', 'img', '0', '0', '1443590724', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1759', '1907', '0', '/upload/sjftp/rainbowfm/1907_14435908549500.png,/upload/sjftp/rainbowfm/1907_14435908549501.png,/upload/sjftp/rainbowfm/1907_14435908549502.png,/upload/sjftp/rainbowfm/1907_14435908549503.png,/upload/sjftp/rainbowfm/1907_14435908549504.png,/upload/sjftp/rainbowfm/1907_14435908549505.png,/upload/sjftp/rainbowfm/1907_14435908549506.png,/upload/sjftp/rainbowfm/1907_14435908549507.png,/upload/sjftp/rainbowfm/1907_14435908549508.png,', '', '', '1', 'img', '0', '0', '1443590873', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1787', '59', '0', '/upload/sjftp/rainbowfm/59_14436048896370.png,', '', '', '1', 'img', '0', '0', '1443604887', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1789', '59', '0', '/upload/sjftp/rainbowfm/59_14436050743510.png,/upload/sjftp/rainbowfm/59_14436050743511.png,/upload/sjftp/rainbowfm/59_14436050743512.png,', '', '三张', '1', 'img', '0', '0', '1443605073', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1791', '75', '0', '/upload/sjftp/rainbowfm/75_14436130377550.png,', '', '大盘小盘', '1', 'img', '0', '0', '1443613035', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1793', '209', '0', '/upload/sjftp/rainbowfm/209_14436158233300.png,', '', '偏头痛。。', '1', 'img', '0', '0', '1443615815', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1795', '155', '0', '', '', '照片发不出来哇，现拍的', '1', 'char', '0', '0', '1443615905', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1799', '399', '0', '', '', '你们吃的还好呀', '1', 'char', '1791', '1', '1443616473', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1801', '399', '0', '', '', '哇这个图片', '1', 'char', '1755', '1', '1443616551', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1805', '59', '0', '', '', '看来这个饮食是达标了', '1', 'char', '1791', '1', '1443616793', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1807', '59', '0', '/upload/sjftp/rainbowfm/59_14436168252920.png,', '', '', '1', 'img', '0', '0', '1443616822', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1809', '399', '0', '/upload/sjftp/rainbowfm/399_14436168320880.png,', '', '天要下雨天要晴', '1', 'img', '0', '0', '1443616831', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1811', '399', '0', '/upload/sjftp/rainbowfm/399_14436168661740.png,/upload/sjftp/rainbowfm/399_14436168661741.png,', '', '滴滴达达达', '1', 'img', '0', '0', '1443616866', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1813', '59', '0', '/upload/sjftp/rainbowfm/59_14436170636080.png,', '', '展区中喂食大象。 王辰 澎湃资料\n\n今年8月，泰国清迈一头供游客观光的大象突然发狂，用象牙刺死了驯象师后驮着三名中国游客逃往森林深处。游客最终安全获救，大象后来也被带回了收容所。而就2个月前，泰国就曾发生过类似惨案：一头供游客观光的大象在饲养员与他人交谈时杀死了这两个人。惨剧不断发生，我们又能从中吸取哪些血的教训？我们应该严惩肇事的大象，还是转而反思利用大象牟利的旅游业\n\n', '1', 'img', '0', '0', '1443617060', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1815', '59', '0', '', '', '要发实际的新闻或者说实际的事件有一些实际参考价值的东西', '1', 'char', '0', '0', '1443617181', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1817', '399', '0', '', '', '一件事的两面性', '1', 'char', '1813', '1', '1443617342', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1819', '59', '0', '/upload/sjftp/rainbowfm/59_14436175923820.png,', '', '国庆就像这个样子', '1', 'img', '0', '0', '1443617588', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1821', '59', '0', '/upload/sjftp/rainbowfm/59_14436177129830.png,', '', '', '1', 'img', '0', '0', '1443617709', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1823', '59', '0', '', '', 'Sj.cbg.cn', '1', 'char', '1821', '1', '1443617850', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1825', '59', '0', '/upload/sjftp/rainbowfm/59_14436180077780.png,/upload/sjftp/rainbowfm/59_14436180077781.png,/upload/sjftp/rainbowfm/59_14436180077782.png,', '', '', '1', 'img', '0', '0', '1443618004', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1827', '285', '0', '', '', '多少回家的人', '1', 'char', '1819', '1', '1443618056', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1829', '59', '0', '/upload/sjftp/rainbowfm/59_14436182489360.png,', '', '祈祷', '1', 'img', '0', '0', '1443618245', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1837', '399', '0', '', '', '哈哈', '1', 'char', '1829', '1', '1443619241', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1839', '399', '0', '/upload/sjftp/rainbowfm/399_14436195754750.png,', '', '', '1', 'img', '0', '0', '1443619576', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1841', '399', '0', '/upload/sjftp/rainbowfm/399_14436199658840.png,', '', '平均两天我妈都要给我说这句话(￣∇￣)，', '1', 'img', '0', '0', '1443619963', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1851', '59', '0', '/upload/sjftp/rainbowfm/59_14436209652560.png,/upload/sjftp/rainbowfm/59_14436209652561.png,/upload/sjftp/rainbowfm/59_14436209652562.png,/upload/sjftp/rainbowfm/59_14436209652563.png,', '', '发四张图', '1', 'img', '0', '0', '1443620961', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1857', '399', '0', '/upload/sjftp/rainbowfm/399_14436223605080.png,/upload/sjftp/rainbowfm/399_14436223605081.png,/upload/sjftp/rainbowfm/399_14436223605082.png,/upload/sjftp/rainbowfm/399_14436223605083.png,', '', '你看风景的角度和你对人生的态度一样。', '1', 'img', '0', '0', '1443622369', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1859', '399', '0', '', '', '大图不能放大(>﹏<)', '1', 'char', '1839', '1', '1443622444', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1863', '209', '0', '/upload/sjftp/rainbowfm/209_14436233828500.png,/upload/sjftp/rainbowfm/209_14436233828501.png,', '', ' 慢慢的才知道，人这一辈子，要经得起谎言，受得了敷衍，忍得住欺骗，忘得了诺言。坚持未必是胜利，放弃未必是认输。与其华丽撞墙，不如优雅转身。给自己一个迂回的空间，学会思索，学会等待，学会调整。人生，有很多时候，需要的不仅仅是执着，更是回眸一笑的洒脱！', '1', 'img', '0', '0', '1443623377', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1869', '59', '0', '', '', '这才叫鸡汤', '1', 'char', '1863', '1', '1443624145', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1871', '59', '0', '/upload/sjftp/rainbowfm/59_14436243657510.png,/upload/sjftp/rainbowfm/59_14436243657511.png,', '', '\n科技\n\n优化为主提升体验 Android 6.0亮点解析\n\n手机中国2015年9月30日22:41\n\n0\n\n北京时间9月30号凌晨，谷歌在美国旧金山举办了谷歌2015新品发布会，发布会上谷歌发布了两款Nexus新机Nexus 6P（华为代工）、LG Nexus 5X，同时谷歌也发布了全新的Android操作系统——Android Marshmallow（Android 6.0）。\n\n', '1', 'img', '0', '0', '1443624361', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1873', '59', '0', '/upload/sjftp/rainbowfm/59_14436246552830.png,/upload/sjftp/rainbowfm/59_14436246552831.png,', '', '\'人最宝贵的东西是生命.生命对人来说只有一次.因此,人的一生应当这样度过:当一个人回首往事时,不因虚度年华而悔人最宝贵的恨,也不因碌碌无为而羞愧;这样,在他临死的时候,能够说,我把整个生命和全部精力都献给了人生最宝贵的事业——为人类的解放而奋斗。我们必须抓紧时间生活，因为即使是一场暴病或意外都可能终止生命。\n\n', '1', 'img', '0', '0', '1443624651', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1877', '209', '0', '', '', '一下色盲  两下蠢  三下以上是...\n \n   \n     \n    \n全文', '1', 'char', '0', '0', '1443626451', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1879', '209', '0', '/upload/sjftp/rainbowfm/209_14436270437390.png,/upload/sjftp/rainbowfm/209_14436270437391.png,', '', '去龙头寺偶然发现的挺有感触的广告。。', '1', 'img', '0', '0', '1443627037', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1881', '209', '0', '/upload/sjftp/rainbowfm/209_14436271812930.png,', '', '某人的早餐。。。', '1', 'img', '0', '0', '1443627173', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1883', '399', '0', '', '', '一个星期的', '1', 'char', '1881', '1', '1443627433', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1885', '97', '0', '/upload/sjftp/rainbowfm/97_14436320823050.png,', '', '夜太美……', '1', 'img', '0', '0', '1443632078', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1887', '1907', '0', '', '', '国庆节快乐，A. V.  巴  德   碗，吐，丝 瑞， ', '1', 'char', '0', '0', '1443632338', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1889', '97', '0', '', '', '？？？？？', '1', 'char', '1885', '1', '1443634658', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1891', '59', '0', '', '', '国庆节快乐', '1', 'char', '0', '0', '1443654288', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1893', '97', '0', '', '', '雨神来了……', '1', 'char', '0', '0', '1443656717', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1895', '1927', '0', '', '', '发朋友圈', '1', 'char', '0', '0', '1443661658', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1897', '1907', '0', '', '', '天苍苍，野茫茫，夏去秋来天气凉，丰收季节落叶黄，就算工作再繁忙，千万别做工作狂，天冷别忘添衣裳，保重身体要健康。国庆来到，祝你幸福万年长。', '1', 'char', '0', '0', '1443662813', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1899', '399', '0', '/upload/sjftp/rainbowfm/399_14436653743040.png,', '', '大家国庆快乐！', '1', 'img', '0', '0', '1443665376', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1903', '59', '0', '', '', '有一个升级的地方。就是朋友圈里边的内容不可以被复制出来。', '1', 'char', '0', '0', '1443666361', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1905', '1927', '0', '', '', '马上一点。', '1', 'char', '0', '0', '1443675384', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1907', '1907', '0', '', '', '今天堵车了吗', '1', 'char', '0', '0', '1443677392', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1913', '1911', '0', '', '', '不能调用图库的照片………', '1', 'char', '0', '0', '1443679387', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1915', '1927', '0', '', '', '好好的上班，学习', '1', 'char', '0', '0', '1443680183', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1917', '155', '0', '', '', '生活从来都是波澜起伏的，有些东西失去了，就不能再回来；有些感情错过了，就无法再遇见。每一个对你好的人，他们本可以不这么做，因为没这义务；每一个装在心上的人，不是对谁都如此重视，因为谁都有忙碌。', '1', 'char', '0', '0', '1443687317', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1919', '209', '0', '/upload/sjftp/rainbowfm/209_14437015107750.png,', '', '三年了，你们好吗。。。', '1', 'img', '0', '0', '1443701509', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1921', '209', '0', '/upload/sjftp/rainbowfm/209_14437036360990.png,', '', '知秋', '1', 'img', '0', '0', '1443703634', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1923', '155', '0', '', '', '几分钟没盯着他，这倒霉孩子就把老婆昂贵的护肤水挤出来大半，为了保全爷俩小命，倒入矿泉水。晚上洗过澡，在被窝里惴惴不安的看着老婆拍脸，老婆嘴里吐出几个字“这东西就是好，吸收越来越快了！”\n', '1', 'char', '0', '0', '1443703770', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1925', '155', '0', '', '', '下公车站时一女生被一色狼摸了一下，旁边有一大姐见义勇为的踹了一脚！于是发生了争斗，男的被大姐双手扎在地上，大姐对小女生说:快踢他弟弟，踢他弟弟！小女生慌忙在人群中，左右寻找:他弟弟在哪里？他弟弟在哪里？\n', '1', 'char', '0', '0', '1443703813', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1927', '155', '0', '', '', '悟空化缘回来发现师父不见了，沙僧和八戒在地上哭。悟空问：“师父呢？”八戒说：“丢了。”悟空说：“找去呀！”沙僧说：“到处找遍了，没有。”悟空又找了一圈，也没有找到。三个人正发愁，忽然悟空问：“师父这个月房贷交了吗？”沙僧说：“没有。”“养路费交了吗？”“也没有。”悟空说：“都洗洗睡吧，师父跑不了，有银行跟交警看着呢！”\n', '1', 'char', '0', '0', '1443703855', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1929', '155', '0', '', '', '让小女儿给我倒半杯牛奶，倒多了，只见她拿起杯子喝了起来，刚好喝到半杯，就给我端过来了。。。\n女儿真是听话啊。。', '1', 'char', '0', '0', '1443703938', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1931', '1927', '0', '', '', '这几天胃疼的厉害，吃东西都吃不了多少了', '1', 'char', '0', '0', '1443704724', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1933', '1927', '0', '', '', '做好每一天的事情，认真做事。', '1', 'char', '0', '0', '1443704782', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1935', '209', '0', '/upload/sjftp/rainbowfm/209_14437077981230.png,', '', '这。。叫什么名字呐。。', '1', 'img', '0', '0', '1443707796', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1937', '209', '0', '', '', '喝个汤吧:世上没有完全相同的两片叶子，你也有不一样的人生，不用艳羡他人！', '1', 'char', '0', '0', '1443712229', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1941', '211', '0', '', '', '00:10', '1', 'char', '0', '0', '1443715817', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1943', '211', '0', '', '', '螃蟹', '1', 'char', '0', '0', '1443715861', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1945', '211', '0', '/upload/sjftp/rainbowfm/211_14437159009200.png,', '', '港囧', '1', 'img', '0', '0', '1443715898', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1947', '211', '0', '/upload/sjftp/rainbowfm/211_14437159934800.png,', '', '好吃。。', '1', 'img', '0', '0', '1443715990', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1949', '211', '0', '/upload/sjftp/rainbowfm/211_14437160465310.png,', '', '看看这是什么', '1', 'img', '0', '0', '1443716044', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1951', '59', '0', '/upload/sjftp/rainbowfm/59_14437410360620.png,', '', '重庆好天气', '1', 'img', '0', '0', '1443741037', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1953', '97', '0', '', '', '有点小冷', '1', 'char', '0', '0', '1443742363', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1955', '59', '0', '', '', '哈哈 是的', '1', 'char', '1953', '1', '1443743624', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1957', '209', '0', '', '', '平时1小时的车程，今天只需要半小时。', '1', 'char', '0', '0', '1443750201', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1959', '1907', '0', '', '', '到四川了。。坐了五个小时', '1', 'char', '0', '0', '1443763757', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1961', '1907', '0', '', '', '光能使者！！！！  ', '1', 'char', '1935', '1', '1443764125', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1965', '1927', '0', '', '', '今天看了半天书', '1', 'char', '0', '0', '1443778202', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1967', '97', '0', '/upload/sjftp/rainbowfm/97_14437787899900.png,', '', '十一黄金周，你遭堵了吗？', '1', 'img', '0', '0', '1443778788', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1969', '97', '0', '/upload/sjftp/rainbowfm/97_14437788343740.png,', '', '嗨翻全场……', '1', 'img', '0', '0', '1443778831', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1971', '399', '0', '/upload/sjftp/rainbowfm/399_14437803093620.png,/upload/sjftp/rainbowfm/399_14437803093621.png,', '', '沙区书店新装修后，环境简直可以。', '1', 'img', '0', '0', '1443780313', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1973', '1927', '0', '', '', '傍晚还是有点凉嗖嗖的', '1', 'char', '0', '0', '1443781977', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1975', '167', '0', '', '', '良辰,必当重谢', '1', 'char', '0', '0', '1443787442', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1977', '167', '0', '/upload/sjftp/rainbowfm/167_14437875690850.png,', '', '金叫焕的人生感言', '1', 'img', '0', '0', '1443787566', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1979', '167', '0', '', '', '你就该早点出发', '1', 'char', '1957', '1', '1443787627', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1981', '167', '0', '', '', '魔动王', '1', 'char', '1935', '1', '1443787672', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1983', '1927', '0', '', '', '天气转凉，注意加衣服', '1', 'char', '0', '0', '1443789847', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1985', '97', '0', '/upload/sjftp/rainbowfm/97_14437902441070.png,', '', '看这货，那迷人的眼神……', '1', 'img', '0', '0', '1443790239', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1987', '1927', '0', '', '', '知道为什么到厨房是叫下厨房，到厕所是叫上厕所？', '1', 'char', '0', '0', '1443791401', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1989', '1907', '0', '/upload/sjftp/rainbowfm/1907_14437921955430.png,', '', '几个大人陪着一个小屁孩看洛克王国也是醉了', '1', 'img', '0', '0', '1443792190', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1991', '1907', '0', '/upload/sjftp/rainbowfm/1907_14437923238460.png,/upload/sjftp/rainbowfm/1907_14437923238461.png,/upload/sjftp/rainbowfm/1907_14437923238462.png,/upload/sjftp/rainbowfm/1907_14437923238463.png,/upload/sjftp/rainbowfm/1907_14437923238464.png,', '', '四川广元苍溪红军渡。。。红色抗战', '1', 'img', '0', '0', '1443792321', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1993', '1907', '0', '/upload/sjftp/rainbowfm/1907_14437923272970.png,/upload/sjftp/rainbowfm/1907_14437923272971.png,/upload/sjftp/rainbowfm/1907_14437923272972.png,/upload/sjftp/rainbowfm/1907_14437923272973.png,/upload/sjftp/rainbowfm/1907_14437923272974.png,', '', '四川广元苍溪红军渡。。。红色抗战', '1', 'img', '0', '0', '1443792326', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1995', '1927', '0', '', '', '天天向上，励志', '1', 'char', '0', '0', '1443792482', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1997', '59', '0', '', '', '这就是传说中的自high', '1', 'char', '1969', '1', '1443792501', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('1999', '59', '0', '', '', '\n今天晚上去看看了港囧电影', '1', 'char', '0', '0', '1443792547', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2001', '167', '0', '', '', '秋季昼夜温差大，注意保暖\n', '1', 'char', '0', '0', '1443792858', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2003', '167', '0', '', '', '朋友圈杯摄影大赛已结束第二日赛程，参赛作品分为风景、人物、静物三类。', '1', 'char', '0', '0', '1443793202', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2005', '167', '0', '', '', '而我选择狗带', '1', 'char', '0', '0', '1443793241', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2007', '59', '0', '', '', '我们也搞一个摄影大赛', '1', 'char', '2003', '1', '1443793375', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2009', '59', '0', '', '', '', '1', 'char', '1999', '1', '1443793392', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2011', '1927', '0', '', '', '洗衣服去了', '1', 'char', '0', '0', '1443794153', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2013', '399', '0', '', '', '我老家！住滨江路，那点叫武当山', '1', 'char', '1991', '1', '1443795225', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2015', '1927', '0', '', '', '晚安，对自己，对大家', '1', 'char', '0', '0', '1443798938', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2017', '97', '0', '', '', '夜深了，洗洗睡了，晚安……', '1', 'char', '0', '0', '1443801431', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2019', '211', '0', '/upload/sjftp/rainbowfm/211_14438034972280.png,', '', '半夜三更发朋友圈', '1', 'img', '0', '0', '1443803493', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2021', '211', '0', '/upload/sjftp/rainbowfm/211_14438066663310.png,', '', '半夜饿了饿了', '1', 'img', '0', '0', '1443806663', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2023', '211', '0', '/upload/sjftp/rainbowfm/211_14438067405870.png,', '', '今天中国男篮赢了', '1', 'img', '0', '0', '1443806738', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2025', '211', '0', '', '', '深夜放点吃的放毒', '1', 'char', '0', '0', '1443806845', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2027', '1927', '0', '', '', '现在这个点是要吃早饭还是午饭', '1', 'char', '0', '0', '1443838784', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2029', '1927', '0', '', '', '中国好声音，回看以前的感觉还是不错的', '1', 'char', '0', '0', '1443847340', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2031', '1927', '0', '', '', '今天天气有点冷', '1', 'char', '0', '0', '1443849856', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2033', '1927', '0', '', '', '睡觉先，晚上上班', '1', 'char', '0', '0', '1443856260', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2035', '209', '0', '', '', '终于感受到重庆的秋天了！', '1', 'char', '0', '0', '1443862880', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2037', '97', '0', '', '', '开工……', '1', 'char', '0', '0', '1443863012', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2039', '209', '0', '/upload/sjftp/rainbowfm/209_14438631162980.png,', '', '好庆幸上上周去的那一次，几乎没人。ps:如果要去坐索道，记得带公交卡，不然就是10元一趟了～', '1', 'img', '0', '0', '1443863110', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2041', '97', '0', '/upload/sjftp/rainbowfm/97_14438632911640.png,', '', '唉呀妈呀，好复杂的家庭关系……', '1', 'img', '0', '0', '1443863288', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2043', '97', '0', '', '', '？？？？，，，，', '1', 'char', '2041', '1', '1443863721', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2045', '97', '97', '', '', '111111', '1', 'char', '2041', '2', '1443863774', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2047', '97', '97', '', '', '+++++++++', '1', 'char', '2041', '2', '1443863886', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2049', '167', '0', '', '', '秋天要穿棉毛裤', '1', 'char', '2035', '1', '1443865633', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2051', '167', '0', '', '', '重庆只有夏天和冬天', '1', 'char', '0', '0', '1443865712', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2053', '167', '0', '', '', '每次看音乐风云榜都有一种中學情怀', '1', 'char', '0', '0', '1443869370', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2055', '1927', '0', '', '', '上班去了', '1', 'char', '0', '0', '1443882885', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2057', '97', '0', '', '', '高手在民间……', '1', 'char', '0', '0', '1443883734', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2059', '97', '0', '', '', '？？？？！！！！！，，', '1', 'char', '2057', '1', '1443883756', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2061', '399', '0', '/upload/sjftp/rainbowfm/399_14438838071840.png,/upload/sjftp/rainbowfm/399_14438838071841.png,/upload/sjftp/rainbowfm/399_14438838071842.png,/upload/sjftp/rainbowfm/399_14438838071843.png,/upload/sjftp/rainbowfm/399_14438838071844.png,/upload/sjftp/rainbowfm/399_14438838071845.png,/upload/sjftp/rainbowfm/399_14438838071846.png,', '', '', '1', 'img', '0', '0', '1443883811', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2063', '399', '0', '', '', '加字怎么都发不出来，一把字删了就发出来了', '1', 'char', '2061', '1', '1443883844', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2065', '1927', '0', '', '', '认真认真，充实自己，丰富自己，', '1', 'char', '0', '0', '1443897337', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2067', '1927', '0', '', '', '4128', '1', 'char', '0', '0', '1443905072', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2069', '1927', '0', '', '', '回去洗漱一下', '1', 'char', '0', '0', '1443919940', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2071', '1927', '0', '', '', '又要去挤地铁公交了，挤挤更健康', '1', 'char', '0', '0', '1443920020', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2073', '59', '0', '/upload/sjftp/rainbowfm/59_14439230372440.png,', '', '拍电影了', '1', 'img', '0', '0', '1443923039', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2075', '97', '0', '/upload/sjftp/rainbowfm/97_14439249366900.png,/upload/sjftp/rainbowfm/97_14439249366901.png,', '', '笑一笑十年少……', '1', 'img', '0', '0', '1443924937', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2077', '97', '0', '/upload/sjftp/rainbowfm/97_14439249942550.png,/upload/sjftp/rainbowfm/97_14439249942551.png,', '', '浮夸一下……', '1', 'img', '0', '0', '1443924994', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2079', '97', '0', '', '', '冲动是魔鬼，蛋定才是王道……', '1', 'char', '0', '0', '1443933619', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2081', '59', '0', '/upload/sjftp/rainbowfm/59_14439396202820.png,', '', '继续测试', '1', 'img', '0', '0', '1443939622', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2083', '285', '0', '', '', '竹海？', '1', 'char', '2073', '1', '1443955824', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2087', '211', '0', '/upload/sjftp/rainbowfm/211_14439576697730.png,', '', '好样的', '1', 'img', '0', '0', '1443957670', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2089', '211', '0', '', '', '提神醒脑', '1', 'char', '0', '0', '1443957750', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2091', '211', '0', '/upload/sjftp/rainbowfm/211_14439578129400.png,/upload/sjftp/rainbowfm/211_14439578129401.png,', '', '地铁站的墙画', '1', 'img', '0', '0', '1443957811', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2093', '1927', '0', '', '', '相信自己', '1', 'char', '0', '0', '1443982593', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2095', '1927', '0', '', '', '只有自己提高了，进不了才是硬道理', '1', 'char', '0', '0', '1443983817', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2097', '1927', '0', '', '', '建国大业还是很不错的', '1', 'char', '0', '0', '1443987216', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2099', '1927', '0', '', '', '清心明目', '1', 'char', '0', '0', '1444001129', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2101', '1927', '0', '', '', '农夫三拳，有点疼', '1', 'char', '0', '0', '1444003313', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2103', '97', '0', '', '', '没吃早饭，肚子开始打鼓……', '1', 'char', '0', '0', '1444011878', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2105', '97', '0', '', '', '1159', '1', 'char', '0', '0', '1444012210', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2107', '97', '0', '', '', '去次饭……', '1', 'char', '0', '0', '1444019870', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2109', '1907', '0', '', '', '回家了好开森', '1', 'char', '0', '0', '1444045197', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2111', '155', '0', '', '', '上班好饿。。。', '1', 'char', '0', '0', '1444061181', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2113', '155', '0', '/upload/sjftp/rainbowfm/155_14440626162510.png,', '', '很好奇这是谁弄的？', '1', 'img', '0', '0', '1444062613', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2115', '209', '0', '/upload/sjftp/rainbowfm/209_14441021303120.png,', '', '您的假期余额仅剩2天，请及时……哦不，你不能充值。', '1', 'img', '0', '0', '1444102131', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2117', '211', '0', '/upload/sjftp/rainbowfm/211_14441037093780.png,', '', '屠呦呦，中国新骄傲。', '1', 'img', '0', '0', '1444103710', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2119', '211', '0', '/upload/sjftp/rainbowfm/211_14441037865260.png,', '', '看着这种美食流口水了。瞬间想起了世界三大难题之一。中午吃什么？', '1', 'img', '0', '0', '1444103787', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2121', '59', '0', '/upload/sjftp/rainbowfm/59_14441164685190.png,', '', '双山公园 附近有没有熟悉的人呢', '1', 'img', '0', '0', '1444116469', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2123', '1927', '0', '', '', '又有国人获得诺贝尔奖了，国人的骄傲', '1', 'char', '0', '0', '1444131580', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2127', '1927', '0', '', '', '天天', '1', 'char', '0', '0', '1444135791', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2129', '1927', '0', '', '', '例行巡查', '1', 'char', '0', '0', '1444138460', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2131', '1907', '0', '/upload/sjftp/rainbowfm/1907_14441392149390.png,', '', '', '1', 'img', '0', '0', '1444139210', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2133', '1907', '0', '/upload/sjftp/rainbowfm/1907_14441393222000.png,', '', '', '1', 'img', '0', '0', '1444139317', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2135', '1927', '0', '/upload/sjftp/rainbowfm/1927_14441414773340.png,', '', '', '1', 'img', '0', '0', '1444141472', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2137', '399', '0', '/upload/sjftp/rainbowfm/399_14441482243320.png,/upload/sjftp/rainbowfm/399_14441482243321.png,/upload/sjftp/rainbowfm/399_14441482243322.png,/upload/sjftp/rainbowfm/399_14441482243323.png,', '', '每逢佳节胖三斤，深夜来放毒。', '1', 'img', '0', '0', '1444148224', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2139', '399', '0', '', '', '小孩子小孩子', '1', 'char', '2135', '1', '1444148286', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2141', '399', '0', '', '', '都不要把自己留在原地', '1', 'char', '2133', '1', '1444148314', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2143', '399', '0', '', '', '每逢佳节胖三斤', '1', 'char', '2137', '1', '1444148334', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2145', '399', '0', '', '', '胖', '1', 'char', '2137', '1', '1444148342', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2147', '399', '0', '', '', '美食', '1', 'char', '2137', '1', '1444148349', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2149', '399', '399', '', '', '深夜', '1', 'char', '2137', '2', '1444148358', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2151', '399', '0', '', '', '哈士奇', '1', 'char', '2131', '1', '1444148494', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2153', '399', '0', '', '', '蠢', '1', 'char', '2131', '1', '1444148502', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2155', '399', '0', '', '', '萌', '1', 'char', '2131', '1', '1444148510', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2157', '399', '0', '', '', '评论改进后可以自动马上更新', '1', 'char', '2129', '1', '1444148567', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2159', '399', '0', '', '', '评论改进后可以自动马上更新', '1', 'char', '2137', '1', '1444148586', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2163', '399', '0', '', '', '鳗鱼寿司，点评论不是很灵活点击多次半天才跳出来', '1', 'char', '2119', '1', '1444148876', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2165', '399', '0', '', '', '点评论不是很灵活点击多次半天才跳出来', '1', 'char', '2127', '1', '1444148888', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2167', '399', '0', '', '', '骄傲', '1', 'char', '2117', '1', '1444148908', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2169', '399', '0', '', '', '明年充值', '1', 'char', '2115', '1', '1444149012', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2171', '399', '0', '', '', '久强锅', '1', 'char', '2113', '1', '1444149031', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2175', '209', '0', '/upload/sjftp/rainbowfm/209_14441659865800.png,', '', '明知山有虎。这是磁器口。', '1', 'img', '0', '0', '1444165988', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2177', '399', '0', '', '', '最后一天也挤', '1', 'char', '2175', '1', '1444182349', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2179', '399', '0', '/upload/sjftp/rainbowfm/399_14441825026150.png,', '', '最后一天走亲戚', '1', 'img', '0', '0', '1444182503', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2181', '209', '0', '', '', '天气放晴', '1', 'char', '0', '0', '1444187621', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2183', '1911', '0', '', '', '图片半天发不出去', '1', 'char', '2181', '1', '1444191140', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2185', '59', '0', '/upload/sjftp/rainbowfm/59_14441912041040.png,', '', '', '1', 'img', '0', '0', '1444191220', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2187', '59', '0', '', '', '朋友圈基本达到可用状态 大家说呢', '1', 'char', '0', '0', '1444191351', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2189', '59', '0', '/upload/sjftp/rainbowfm/59_14441919271860.png,', '', '猜猜这是哪里猜中有奖', '1', 'img', '0', '0', '1444191928', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2191', '59', '0', '/upload/sjftp/rainbowfm/59_14441920839450.png,/upload/sjftp/rainbowfm/59_14441920839451.png,/upload/sjftp/rainbowfm/59_14441920839452.png,/upload/sjftp/rainbowfm/59_14441920839453.png,', '', '又发生四张图片', '1', 'img', '0', '0', '1444192088', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2193', '59', '0', '/upload/sjftp/rainbowfm/59_14441930693070.png,', '', '背景要优化', '1', 'img', '0', '0', '1444193070', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2195', '59', '0', '/upload/sjftp/rainbowfm/59_14441931701670.png,', '', '就是这种 要改', '1', 'img', '0', '0', '1444193171', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2197', '399', '0', '', '', '是的', '1', 'char', '2187', '1', '1444193227', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2199', '399', '0', '', '', '书店', '1', 'char', '2189', '1', '1444193244', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2201', '1907', '0', '', '', '图书馆', '1', 'char', '2189', '1', '1444201718', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2203', '1907', '0', '/upload/sjftp/rainbowfm/1907_14442018396600.png,/upload/sjftp/rainbowfm/1907_14442018396601.png,/upload/sjftp/rainbowfm/1907_14442018396602.png,/upload/sjftp/rainbowfm/1907_14442018396603.png,/upload/sjftp/rainbowfm/1907_14442018396604.png,/upload/sjftp/rainbowfm/1907_14442018396605.png,', '', '', '1', 'img', '0', '0', '1444201842', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2205', '399', '0', '', '', '嗯', '1', 'char', '2195', '1', '1444203168', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2207', '399', '0', '', '', '记', '1', 'char', '2195', '1', '1444203257', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2209', '399', '0', '/upload/sjftp/rainbowfm/399_14442038124990.png,', '', '', '1', 'img', '0', '0', '1444203811', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2211', '1927', '0', '', '', '诺贝尔奖一般要经过五六十年哦。', '1', 'char', '0', '0', '1444212634', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2213', '399', '0', '/upload/sjftp/rainbowfm/399_14442128920010.png,/upload/sjftp/rainbowfm/399_14442128920011.png,/upload/sjftp/rainbowfm/399_14442128920012.png,', '', '海鲜加条蛇', '1', 'img', '0', '0', '1444212891', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2215', '1927', '0', '', '', '仙桃市的城市文明公约的第一句居然是热爱祖国热爱洛阳，热爱洛阳啊！洛阳啊，千里之外的地方啊，。。。。', '1', 'char', '0', '0', '1444213292', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2217', '1907', '0', '/upload/sjftp/rainbowfm/1907_14442166492240.png,', '', '低调高档奢华手臂一样粗的寿司  还有谁！！！', '1', 'img', '0', '0', '1444216645', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2219', '1927', '0', '', '', '才吃饭，遭饿瘪了。', '1', 'char', '0', '0', '1444219808', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2221', '1927', '0', '', '', '心在哪里，美丽的风景就在哪里。', '1', 'char', '0', '0', '1444222057', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2223', '1927', '0', '', '', '品味视界，感知重庆', '1', 'char', '0', '0', '1444229723', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2225', '97', '0', '', '', '还有没睡的吗？', '1', 'char', '0', '0', '1444236104', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2227', '97', '0', '', '', '太冷了吧', '1', 'char', '0', '0', '1444252843', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2229', '1907', '0', '', '', '起床起床。。。', '1', 'char', '0', '0', '1444259898', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2231', '97', '0', '', '', '早上好', '1', 'char', '0', '0', '1444261401', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2233', '59', '0', '/upload/sjftp/rainbowfm/59_14442627036510.png,', '', 'morning', '1', 'img', '0', '0', '1444262707', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2235', '1927', '0', '', '', '字咋个都写来那么丑呢。', '1', 'char', '0', '0', '1444276138', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2237', '1927', '0', '', '', '马上走开，不要回来。', '1', 'char', '0', '0', '1444281796', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2245', '399', '0', '', '', '我朋友说，有刺青的人一年四季都觉得热。', '1', 'char', '0', '0', '1444306842', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2247', '1907', '0', '/upload/sjftp/rainbowfm/1907_14443463087500.png,/upload/sjftp/rainbowfm/1907_14443463087501.png,', '', '', '1', 'img', '0', '0', '1444346309', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2249', '1907', '0', '/upload/sjftp/rainbowfm/1907_14443464651820.png,', '', '直播吃饭月入百万', '1', 'img', '0', '0', '1444346465', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2251', '59', '0', '/upload/sjftp/rainbowfm/59_14443485879360.png,', '', '', '1', 'img', '0', '0', '1444348590', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2253', '285', '0', '', '', '天气好', '1', 'char', '2251', '1', '1444354212', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2255', '285', '285', '', '', '真不错', '1', 'char', '2251', '2', '1444354227', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2257', '399', '0', '', '', '我也觉得', '1', 'char', '2251', '1', '1444354365', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2259', '399', '285', '', '', '你很不错嘛', '1', 'char', '2251', '2', '1444354380', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2261', '399', '0', '', '', '？high', '1', 'char', '2251', '1', '1444354407', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2263', '127', '0', '', '', 'Djkfh', '1', 'char', '2251', '1', '1444354825', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2265', '929', '0', '', '', '哪个平台，我也去', '1', 'char', '2249', '1', '1444355671', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2269', '1927', '0', '', '', '静', '1', 'char', '0', '0', '1444377687', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2271', '1927', '0', '', '', '认真的人最美........', '1', 'char', '0', '0', '1444377877', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2273', '127', '0', '/upload/sjftp/rainbowfm/127_14443810648010.png,/upload/sjftp/rainbowfm/127_14443810648011.png,', '', '', '1', 'img', '0', '0', '1444381075', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2275', '59', '0', '/upload/sjftp/rainbowfm/59_14443821601390.png,', '', '', '1', 'img', '0', '0', '1444382160', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2281', '399', '0', '/upload/sjftp/rainbowfm/399_14444007452460.png,/upload/sjftp/rainbowfm/399_14444007452461.png,/upload/sjftp/rainbowfm/399_14444007452462.png,/upload/sjftp/rainbowfm/399_14444007452463.png,', '', '夏洛  特烦恼', '1', 'img', '0', '0', '1444400746', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2283', '59', '0', '', '', '发一段纯粹的文字', '1', 'char', '0', '0', '1444401758', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2285', '399', '0', '', '', '（你要干了这碗心灵鸡汤吗？）我们看到的那些鸡汤往往简单直接、目标明确，但往往模糊了事情的因果关系，甚至丢掉必要的推导过程——简化逻辑，直达情感性结果，将个人能量无限放大。比如“你远比你想象的要强大”、“发现真实的自我”等等，高估个人对外界的影响。作者@马克週 ', '1', 'char', '0', '0', '1444403601', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2287', '399', '0', '', '', '后期如果可以@朋友的功能，更好', '1', 'char', '2285', '1', '1444403658', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2289', '285', '399', '', '', '就是', '1', 'char', '2285', '2', '1444445239', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2293', '127', '285', '', '', ',.................................Gogggggggggghdbsbxjdbdjdndjxbxjxjdjjdbdbdjdjdhxjdj', '1', 'char', '2285', '2', '1444448610', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2295', '1907', '0', '/upload/sjftp/rainbowfm/1907_14444524685920.png,', '', '吃坏了肚子 来点整肠生。。。', '1', 'img', '0', '0', '1444452468', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2299', '127', '127', '', '', 'Vfvbv', '1', 'char', '2285', '2', '1444460240', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2301', '127', '127', '', '', 'Bfxfggf', '1', 'char', '2285', '2', '1444460250', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2303', '127', '0', '', '', 'Cfhcxb', '1', 'char', '2281', '1', '1444460263', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2305', '127', '0', '', '', 'Fhdjdhjijdj', '1', 'char', '2285', '1', '1444461410', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2307', '127', '0', '', '', 'Fjjghjki', '1', 'char', '2217', '1', '1444461809', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2309', '127', '0', '', '', 'Dbsishdhdu', '1', 'char', '2213', '1', '1444462227', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2311', '127', '0', '', '', 'Bjxjdj', '1', 'char', '2213', '1', '1444462242', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2313', '127', '0', '', '', 'Dxnjxhxhxnxjdjdhh', '1', 'char', '2203', '1', '1444462278', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2315', '127', '0', '', '', 'Vjfnjvhh', '1', 'char', '2195', '1', '1444462401', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2317', '127', '0', '', '', 'Bjbjjj', '1', 'char', '2191', '1', '1444462421', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2319', '127', '0', '', '', 'Cbxjdnh', '1', 'char', '2193', '1', '1444462442', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2321', '127', '0', '', '', 'Fhhugjiggjj', '1', 'char', '2203', '1', '1444462469', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2323', '127', '0', '', '', 'Vjfjudg', '1', 'char', '2195', '1', '1444462686', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2325', '59', '0', '', '', '注意别人的肖像☺', '1', 'char', '2295', '1', '1444468420', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2327', '127', '0', '', '', 'Fjughjj', '1', 'char', '2247', '1', '1444469112', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2329', '285', '2297', '0', '', '', '1', 'char', '285', '1', '1444469423', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2335', '127', '0', '', '', 'Dnxjxj', '1', 'char', '2251', '1', '1444469489', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2337', '285', '2297', '0', '', '鸡鸡鸡鸡', '1', 'char', '285', '1', '1444469498', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2339', '127', '0', '', '', 'Xnxj', '1', 'char', '2269', '1', '1444469500', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2341', '127', '0', '', '', 'Xnxjxnjdndj', '1', 'char', '2281', '1', '1444469515', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2343', '127', '0', '', '', 'Xan', '1', 'char', '2251', '1', '1444469815', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2345', '285', '2297', '0', '', '14544466', '1', 'char', '285', '1', '1444470069', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2347', '285', '2297', '0', '', '哦哦哦', '1', 'char', '285', '1', '1444470226', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2357', '97', '0', '/upload/sjftp/rainbowfm/97_14444809228460.png,', '', '悠悠……', '1', 'img', '0', '0', '1444480925', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2359', '97', '0', '/upload/sjftp/rainbowfm/97_14444810065410.png,', '', 'So', '1', 'img', '0', '0', '1444481009', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2361', '97', '0', '/upload/sjftp/rainbowfm/97_14444810792310.png,', '', 'Abc', '1', 'img', '0', '0', '1444481082', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2363', '97', '0', '', '', '怎么老是默认这张图片', '1', 'char', '2359', '1', '1444481138', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2365', '97', '0', '', '', '我明明发的不是这张', '1', 'char', '2359', '1', '1444481163', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2367', '97', '0', '', '', '不管发那张图片，为啥显示的都是这张呢，然后不置顶后，就又变成奶瓶那张了？？？？？', '1', 'char', '2361', '1', '1444481277', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2369', '97', '0', '/upload/sjftp/rainbowfm/97_14444813202760.png,', '', '丰富多彩……', '1', 'img', '0', '0', '1444481322', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2371', '97', '0', '', '', '得分', '1', 'char', '2369', '1', '1444481350', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2373', '97', '0', '', '', '请问已发评论怎么删除？', '1', 'char', '2369', '1', '1444481404', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2375', '97', '0', '', '', '啷个里格朗@？！！！，，？', '1', 'char', '0', '0', '1444481478', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2377', '97', '0', '', '', '为啥发表情显示不出来呢？？？？？？？？？？？？？', '1', 'char', '2375', '1', '1444481523', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2381', '97', '0', '', '', '强！太强了！', '1', 'char', '0', '0', '1444481698', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2383', '97', '0', '', '', '朋友圈里显示不出来的图片，在自己发的说说集里都能显示出来，看我的所有说说，和朋友圈里的说说做对比', '1', 'char', '2381', '1', '1444481827', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2385', '97', '0', '/upload/sjftp/rainbowfm/97_14444819787110.png,', '', '滴滴答，滴滴答……＆@“（）”~^；“，、', '1', 'img', '0', '0', '1444481981', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2387', '97', '0', '/upload/sjftp/rainbowfm/97_14444823048130.png,', '', '点点滴滴……', '1', 'img', '0', '0', '1444482307', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2389', '97', '0', '', '', '', '1', 'char', '0', '0', '1444482393', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2391', '97', '0', '', '', '只发表情就是这个状态', '1', 'char', '2389', '1', '1444482428', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2393', '97', '0', '', '', '', '1', 'char', '2387', '1', '1444482449', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2395', '97', '0', '', '', '评论的表情显示不出来', '1', 'char', '2387', '1', '1444482473', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2397', '97', '0', '', '', '就像第一条评论', '1', 'char', '2387', '1', '1444482506', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2399', '97', '0', '', '', '神马情况？我发的图片会自动变化？我滴个神呀', '1', 'char', '2357', '1', '1444482616', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2401', '97', '0', '/upload/sjftp/rainbowfm/97_14444827025290.png,', '', '', '1', 'img', '0', '0', '1444482704', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2403', '97', '0', '', '', '显示什么图片真的要看心情呀', '1', 'char', '2401', '1', '1444482778', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2405', '97', '0', '', '', '还没有下要么，我的图片去了哪里？？？？？', '1', 'char', '2381', '1', '1444482984', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2407', '97', '0', '', '', '还没有眨眼呢？我的图片就不见了', '1', 'char', '2381', '1', '1444483030', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2409', '59', '0', '/upload/sjftp/rainbowfm/59_14444836243110.png,/upload/sjftp/rainbowfm/59_14444836243111.png,', '', '', '1', 'img', '0', '0', '1444483624', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2411', '167', '0', '', '', '第一房产说嘉州要打造大规模商圈，又是政界汇集又是世界500强林立。让我们这种住郊区的情何以甚?', '1', 'char', '0', '0', '1444488729', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2413', '167', '0', '', '', '每次看大声说出来都是一群奇葩开会，为了一些鸡毛蒜皮的破事蹬鼻子上脸', '1', 'char', '0', '0', '1444489093', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2415', '167', '0', '', '', '音乐风云榜，敢zuo敢言', '1', 'char', '0', '0', '1444489235', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2417', '167', '0', '', '', '不能发meji表情', '1', 'char', '2415', '1', '1444489293', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2423', '285', '0', '0', '', '', '1', 'char', '2421', '1', '1444493084', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2435', '59', '0', '/upload/sjftp/rainbowfm/59_14445196601780.png,/upload/sjftp/rainbowfm/59_14445196601781.png,/upload/sjftp/rainbowfm/59_14445196601782.png,/upload/sjftp/rainbowfm/59_14445196601783.png,', '', '\n\n水煮鱼煮过后肉质口感滑嫩，油而不腻。既去除了鱼的腥味，又保持了鱼的鲜嫩。满目的辣椒红亮养眼，辣而不燥，麻而不苦。“麻上头，辣过瘾”，让水煮鱼在全国流行得一塌糊涂。\n\n', '1', 'img', '0', '0', '1444519661', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2437', '59', '0', '', '', '朋友圈要4-9张图片，要有文字描述', '1', 'char', '2435', '1', '1444519735', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2439', '211', '0', '/upload/sjftp/rainbowfm/211_14445212064670.png,/upload/sjftp/rainbowfm/211_14445212064671.png,/upload/sjftp/rainbowfm/211_14445212064672.png,/upload/sjftp/rainbowfm/211_14445212064673.png,', '', '尚未开发完成的主城旅游景点，排花洞', '1', 'img', '0', '0', '1444521209', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2443', '211', '0', '/upload/sjftp/rainbowfm/211_14445216941790.png,/upload/sjftp/rainbowfm/211_14445216941791.png,/upload/sjftp/rainbowfm/211_14445216941792.png,/upload/sjftp/rainbowfm/211_14445216941793.png,/upload/sjftp/rainbowfm/211_14445216941794.png,/upload/sjftp/rainbowfm/211_14445216941795.png,/upload/sjftp/rainbowfm/211_14445216941796.png,/upload/sjftp/rainbowfm/211_14445216941797.png,/upload/sjftp/rainbowfm/211_14445216941798.png,', '', '这个小哥叫Luca Iaconi-Stewart。用“资深航空迷”这个词都不足以形容他对飞机的爱好，简直是着了魔。2008年的一天他突然有一个想法：既然我研究飞机都研究了那么多了，不如用纸做一架最拟真的飞机怎么样？说做就做！他选中了他的最爱，波音777客机，1:60的比例。 ', '1', 'img', '0', '0', '1444521695', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2445', '211', '0', '/upload/sjftp/rainbowfm/211_14445220960640.png,/upload/sjftp/rainbowfm/211_14445220960641.png,/upload/sjftp/rainbowfm/211_14445220960642.png,/upload/sjftp/rainbowfm/211_14445220960643.png,/upload/sjftp/rainbowfm/211_14445220960644.png,', '', '2015年10月8日消息，湖北省武汉多福路上，数百名汉正街小商品市场的女老板们，在忙完了白天的生意后，在路边的空地上跳起了欢快的广场舞，更有些年轻时尚的老板娘们，跳起了节奏感强烈的恰恰舞，她们50个人一堆，20个人一组，各跳各的舞，在500米长的小商品市场上，形成了10多支舞蹈队', '1', 'img', '0', '0', '1444522096', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2447', '211', '0', '/upload/sjftp/rainbowfm/211_14445223167510.png,/upload/sjftp/rainbowfm/211_14445223167511.png,/upload/sjftp/rainbowfm/211_14445223167512.png,/upload/sjftp/rainbowfm/211_14445223167513.png,', '', '15天10个人10辆单车，10月2日「破峰进藏骑行活动」在大理正式落下帷幕。在结束时，破峰团队在大理举办了一场二维码影展，选手们15天的经历都凝固在相框中，从高处俯视，展架俨然是一个巨大的二维码', '1', 'img', '0', '0', '1444522316', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2449', '211', '0', '/upload/sjftp/rainbowfm/211_14445224706620.png,/upload/sjftp/rainbowfm/211_14445224706621.png,/upload/sjftp/rainbowfm/211_14445224706622.png,/upload/sjftp/rainbowfm/211_14445224706623.png,', '', '日前，世界最大的品牌咨询机构Interbrand公布了2015年的“全球最佳品牌价值排行榜”百强名单，这份名单可以反映出各个品牌的业绩、影响力、持续收入能力等问题，榜单具有很强的权威性，自2001年问世后，一直是大家关注的焦点。\n以苹果为首，谷歌、微软、IBM等基本连续第5年位居前列，本来著名的游戏公司任天堂也是榜单常客的，结果这次竟然意外落选，百强里并没有它的影子，倒是日本的其它几家公司，丰田、本田、佳能、日产、索尼、松下都依旧榜上有名。\n\n', '1', 'img', '0', '0', '1444522474', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2451', '211', '0', '/upload/sjftp/rainbowfm/211_14445227708470.png,/upload/sjftp/rainbowfm/211_14445227708471.png,/upload/sjftp/rainbowfm/211_14445227708472.png,/upload/sjftp/rainbowfm/211_14445227708473.png,/upload/sjftp/rainbowfm/211_14445227708474.png,', '', '北京现代全新途胜1.6T 晋升SUV新黄金动力越野e族\n\n', '1', 'img', '0', '0', '1444522773', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2453', '211', '0', '/upload/sjftp/rainbowfm/211_14445229104740.png,/upload/sjftp/rainbowfm/211_14445229104741.png,/upload/sjftp/rainbowfm/211_14445229104742.png,/upload/sjftp/rainbowfm/211_14445229104743.png,', '', '体操明星的高难度婚纱照', '1', 'img', '0', '0', '1444522915', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2455', '211', '0', '/upload/sjftp/rainbowfm/211_14445230635950.png,/upload/sjftp/rainbowfm/211_14445230635961.png,/upload/sjftp/rainbowfm/211_14445230635962.png,/upload/sjftp/rainbowfm/211_14445230635963.png,', '', '教主大婚', '1', 'img', '0', '0', '1444523066', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2457', '211', '0', '/upload/sjftp/rainbowfm/211_14445232566170.png,/upload/sjftp/rainbowfm/211_14445232566171.png,', '', '团队篮球的最佳代表——GDP', '1', 'img', '0', '0', '1444523260', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2459', '155', '0', '/upload/sjftp/rainbowfm/155_14445253723300.png,', '', '风景', '1', 'img', '0', '0', '1444525372', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2461', '155', '0', '/upload/sjftp/rainbowfm/155_14445256968870.png,', '', '想说刷圈不易，想做死机平常', '1', 'img', '0', '0', '1444525697', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2463', '209', '0', '/upload/sjftp/rainbowfm/209_14445258427020.png,/upload/sjftp/rainbowfm/209_14445258427021.png,/upload/sjftp/rainbowfm/209_14445258427022.png,/upload/sjftp/rainbowfm/209_14445258427033.png,/upload/sjftp/rainbowfm/209_14445258427034.png,/upload/sjftp/rainbowfm/209_14445258427035.png,/upload/sjftp/rainbowfm/209_14445258427036.png,/upload/sjftp/rainbowfm/209_14445258427037.png,', '', '虎溪，十周年快乐！', '1', 'img', '0', '0', '1444525838', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2465', '155', '0', '/upload/sjftp/rainbowfm/155_14445260029120.png,/upload/sjftp/rainbowfm/155_14445260029121.png,/upload/sjftp/rainbowfm/155_14445260029122.png,/upload/sjftp/rainbowfm/155_14445260029123.png,/upload/sjftp/rainbowfm/155_14445260029124.png,/upload/sjftp/rainbowfm/155_14445260029125.png,/upload/sjftp/rainbowfm/155_14445260029126.png,/upload/sjftp/rainbowfm/155_14445260029127.png,/upload/sjftp/rainbowfm/155_14445260029128.png,', '', '一波九连图', '1', 'img', '0', '0', '1444526004', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2467', '399', '0', '/upload/sjftp/rainbowfm/399_14445416229190.png,/upload/sjftp/rainbowfm/399_14445416229191.png,/upload/sjftp/rainbowfm/399_14445416229192.png,/upload/sjftp/rainbowfm/399_14445416229193.png,/upload/sjftp/rainbowfm/399_14445416229194.png,/upload/sjftp/rainbowfm/399_14445416229195.png,/upload/sjftp/rainbowfm/399_14445416229196.png,/upload/sjftp/rainbowfm/399_14445416229197.png,/upload/sjftp/rainbowfm/399_14445416229198.png,', '', '主播圈的靓女帅哥们', '1', 'img', '0', '0', '1444541630', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2469', '209', '0', '/upload/sjftp/rainbowfm/209_14445459225670.png,/upload/sjftp/rainbowfm/209_14445459225671.png,/upload/sjftp/rainbowfm/209_14445459225672.png,/upload/sjftp/rainbowfm/209_14445459225673.png,', '', '这个天要是能出去搞个烧烤多棒！', '1', 'img', '0', '0', '1444545916', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2471', '209', '0', '/upload/sjftp/rainbowfm/209_14445462460410.png,/upload/sjftp/rainbowfm/209_14445462460411.png,/upload/sjftp/rainbowfm/209_14445462460412.png,/upload/sjftp/rainbowfm/209_14445462460413.png,/upload/sjftp/rainbowfm/209_14445462460414.png,/upload/sjftp/rainbowfm/209_14445462460415.png,', '', '《夏洛特烦恼》我以为主角叫夏洛特 是部外国片 原来男一号叫夏洛 。 接下来会不会有 《郭敬明天见》《周立波很大》《吴奇隆胸记》《王宝强奸案》《郭富城会玩》《井柏然并卵》《黄秋生无可恋》《贾乃亮了》《奥巴马上来》《周润发财了》《权志龙虾壳》《金正恩仇录》《苏有朋友圈》《邓紫棋牌室》 ....', '1', 'img', '0', '0', '1444546239', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2473', '167', '0', '', '', '占用应急车道扣6分……怎么不扣12分?', '1', 'char', '0', '0', '1444557981', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2475', '167', '0', '', '', '就晓得吃', '1', 'char', '2469', '1', '1444558035', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2477', '97', '0', '/upload/sjftp/rainbowfm/97_14445662843340.png,', '', '百度进行中……', '1', 'img', '0', '0', '1444566282', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2479', '97', '0', '/upload/sjftp/rainbowfm/97_14445679402280.png,/upload/sjftp/rainbowfm/97_14445679402281.png,/upload/sjftp/rainbowfm/97_14445679402282.png,/upload/sjftp/rainbowfm/97_14445679402283.png,', '', '实力派……', '1', 'img', '0', '0', '1444567937', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2481', '97', '0', '/upload/sjftp/rainbowfm/97_14445728982240.png,', '', '又木有电了……', '1', 'img', '0', '0', '1444572894', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2483', '1907', '0', '/upload/sjftp/rainbowfm/1907_14445747810740.png,', '', '今天回学校拿到了一个好东西', '1', 'img', '0', '0', '1444574776', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2485', '1927', '0', '', '', '安心的温柔', '1', 'char', '0', '0', '1444587114', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2487', '1927', '0', '', '', '大黑牛很温柔的其实，哈哈哈', '1', 'char', '0', '0', '1444591757', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2489', '1927', '0', '', '', '坏人得胜的必备条件只有一个，那就是好人无所作为。', '1', 'char', '0', '0', '1444596380', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2491', '1907', '0', '', '', '上班上班', '1', 'char', '0', '0', '1444606596', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2493', '285', '0', '0', '', '早到', '1', 'char', '2491', '1', '1444611090', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2495', '393', '0', '', '', '666', '1', 'char', '2491', '1', '1444611198', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2497', '1927', '0', '', '', '今天天气不错。', '1', 'char', '0', '0', '1444611207', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2499', '285', '0', '0', '', '6666', '1', 'char', '2491', '2', '1444611241', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2501', '285', '0', '0', '', '农历', '1', 'char', '2491', '2', '1444611282', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2503', '285', '0', '0', '', '拒绝了', '1', 'char', '2491', '2', '1444611488', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2505', '285', '0', '0', '', '不来了', '1', 'char', '2497', '1', '1444611526', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2507', '285', '0', '0', '', '啦啊', '1', 'char', '2497', '1', '1444611650', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2509', '285', '0', '0', '', '拒绝了', '1', 'char', '2491', '2', '1444611680', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2511', '393', '0', '', '', '测试，', '1', 'char', '2497', '1', '1444611694', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2513', '393', '0', '', '', '测试1', '1', 'char', '2497', '1', '1444611704', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2515', '393', '0', '', '', '测试2', '1', 'char', '2497', '1', '1444611710', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2517', '285', '0', '0', '', '2', '1', 'char', '2497', '2', '1444612069', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2519', '285', '393', '0', '', '3', '1', 'char', '2497', '2', '1444615239', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2521', '285', '393', '0', '', '4', '1', 'char', '2497', '2', '1444615245', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2523', '393', '0', '', '', '测试', '1', 'char', '0', '0', '1444617742', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2529', '97', '0', '/upload/sjftp/rainbowfm/97_14446317336540.png,/upload/sjftp/rainbowfm/97_14446317336541.png,/upload/sjftp/rainbowfm/97_14446317336542.png,/upload/sjftp/rainbowfm/97_14446317336543.png,/upload/sjftp/rainbowfm/97_14446317336544.png,/upload/sjftp/rainbowfm/97_14446317336545.png,/upload/sjftp/rainbowfm/97_14446317336546.png,/upload/sjftp/rainbowfm/97_14446317336547.png,/upload/sjftp/rainbowfm/97_14446317336548.png,', '', '人生就像一场旅行，不必在乎目的地，在乎的是沿途的风景以及看风景的心情，让心灵去旅行! ', '1', 'img', '0', '0', '1444631732', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2531', '97', '0', '/upload/sjftp/rainbowfm/97_14446318459960.png,/upload/sjftp/rainbowfm/97_14446318459961.png,/upload/sjftp/rainbowfm/97_14446318459962.png,/upload/sjftp/rainbowfm/97_14446318459973.png,/upload/sjftp/rainbowfm/97_14446318459974.png,/upload/sjftp/rainbowfm/97_14446318459975.png,/upload/sjftp/rainbowfm/97_14446318459976.png,/upload/sjftp/rainbowfm/97_14446318459977.png,/upload/sjftp/rainbowfm/97_14446318459978.png,', '', '旅行就是，即使是同一个世界，你们发现的却是不一样的世界。', '1', 'img', '0', '0', '1444631845', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2533', '97', '0', '/upload/sjftp/rainbowfm/97_14446319979910.png,/upload/sjftp/rainbowfm/97_14446319979911.png,/upload/sjftp/rainbowfm/97_14446319979912.png,/upload/sjftp/rainbowfm/97_14446319979913.png,', '', '在流逝的岁月里发现，日子远不如诗歌那样的浪漫，更没有电影中呈现的精彩。', '1', 'img', '0', '0', '1444631996', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2541', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-12/340_1444638487.png', '', '大风吹', '1', 'img', '0', '0', '1444638484', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2543', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-12/230_1444638859.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-12/461_1444638859.png', '', '小道消息', '1', 'img', '0', '0', '1444638858', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2545', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-12/140_1444639205.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-12/321_1444639205.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-12/722_1444639205.png', '', '放放风风', '1', 'img', '0', '0', '1444639208', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2551', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-12/110_1444639419.png,', '', '发广告', '1', 'img', '0', '0', '1444639417', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2553', '393', '0', '', '', '风格vv', '1', 'char', '0', '0', '1444640825', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2555', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-12/160_1444641239.png,', '', '', '1', 'img', '0', '0', '1444641238', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2565', '59', '0', '/upload/sjftp/rainbowfm/59_14446566246590.png,/upload/sjftp/rainbowfm/59_14446566246591.png,/upload/sjftp/rainbowfm/59_14446566246592.png,/upload/sjftp/rainbowfm/59_14446566246593.png,/upload/sjftp/rainbowfm/59_14446566246594.png,/upload/sjftp/rainbowfm/59_14446566246595.png,', '', '好的音乐软件', '1', 'img', '0', '0', '1444656637', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2567', '59', '0', '/upload/sjftp/rainbowfm/59_14446569280650.png,/upload/sjftp/rainbowfm/59_14446569280651.png,/upload/sjftp/rainbowfm/59_14446569280652.png,/upload/sjftp/rainbowfm/59_14446569280653.png,/upload/sjftp/rainbowfm/59_14446569280654.png,/upload/sjftp/rainbowfm/59_14446569280655.png,', '', '好漂亮的秋天\n', '1', 'img', '0', '0', '1444656928', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2569', '59', '0', '/upload/sjftp/rainbowfm/59_14446569907080.png,', '', '', '1', 'img', '0', '0', '1444656987', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2571', '1927', '0', '', '', '要去提档案了，我的档案到了没哦。', '1', 'char', '0', '0', '1444676733', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2573', '1907', '0', '/upload/sjftp/rainbowfm/1907_14446978043580.png,', '', '地铁站偶遇一男子', '1', 'img', '0', '0', '1444697804', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2577', '127', '0', '/upload/sjftp/rainbowfm/127_14446993447170.png,', '', '', '1', 'img', '0', '0', '1444699344', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2581', '127', '0', '/upload/sjftp/rainbowfm/127_14446995726710.png,', '', '', '1', 'img', '0', '0', '1444699570', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2583', '127', '0', '/upload/sjftp/rainbowfm/127_14446996618200.png,', '', '', '1', 'img', '0', '0', '1444699660', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2593', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/140_1444705796.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/751_1444705796.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/172_1444705796.png,', '', 'Ffkskkdkkdkl', '1', 'img', '0', '0', '1444705795', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2607', '127', '0', '/upload/sjftp/rainbowfm/127_14447172875850.png,/upload/sjftp/rainbowfm/127_14447172875851.png,/upload/sjftp/rainbowfm/127_14447172875852.png,', '', '', '1', 'img', '0', '0', '1444717283', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2609', '127', '0', '/upload/sjftp/rainbowfm/127_14447174138440.png,/upload/sjftp/rainbowfm/127_14447174138441.png,/upload/sjftp/rainbowfm/127_14447174138442.png,/upload/sjftp/rainbowfm/127_14447174138443.png,/upload/sjftp/rainbowfm/127_14447174138444.png,/upload/sjftp/rainbowfm/127_14447174138445.png,/upload/sjftp/rainbowfm/127_14447174138446.png,/upload/sjftp/rainbowfm/127_14447174138447.png,/upload/sjftp/rainbowfm/127_14447174138448.png,', '', '', '1', 'img', '0', '0', '1444717410', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2615', '127', '0', '/upload/sjftp/rainbowfm/127_14447183837050.png,/upload/sjftp/rainbowfm/127_14447183837051.png,/upload/sjftp/rainbowfm/127_14447183837052.png,', '', '', '1', 'img', '0', '0', '1444718379', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2617', '127', '0', '', '', 'Xxnxjj', '1', 'char', '2615', '1', '1444718776', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2619', '127', '0', '', '', 'Dbxjxj', '1', 'char', '2615', '1', '1444718782', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2621', '127', '0', '', '', 'Nddxjji', '1', 'char', '2615', '1', '1444718796', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2625', '127', '0', '', '', 'Fhhhnjk', '1', 'char', '2577', '1', '1444718912', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2627', '127', '0', '', '', 'Fbmkkk', '1', 'char', '2577', '1', '1444719195', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2629', '399', '0', '', '', '图谋我哦', '1', 'char', '2615', '1', '1444719618', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2631', '399', '0', '', '', '特么路口', '1', 'char', '2615', '1', '1444719628', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2633', '399', '0', '', '', '噢粉末我', '1', 'char', '2609', '1', '1444719649', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2667', '393', '0', '', '', 'Djfhj', '1', 'char', '2615', '1', '1444728704', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2669', '393', '0', '', '', 'Fhjghj', '1', 'char', '2565', '1', '1444728726', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2671', '393', '0', '', '', 'Ghjhh', '1', 'char', '2615', '1', '1444728823', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2673', '1907', '0', '', '', '十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字', '1', 'char', '0', '0', '1444728978', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2675', '1907', '0', '', '', '十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字 十五字十五字 十五字十五字 十五 十五字十五字 十五字 十五字十五字 十五字十五字', '1', 'char', '0', '0', '1444729020', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2677', '393', '0', '', '', 'Dbxjsjj', '1', 'char', '2615', '1', '1444729412', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2679', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/70_1444729777.png,', '', 'test花费巨额可恨大家都觉得你的减肥呢身边愤怒的女人对男人女人奶粉奶粉免费开放那个那个免费积分肯德基疯狂的决定能否快点见到你地都觉得肯德基都觉得你的解放军队难得看到你都觉得那附近的不断降低身段记得你的降低身段紧凑的不负恩你觉得记得那年大家都觉得你都觉得今年年内分', '1', 'img', '0', '0', '1444729777', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2681', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/70_1444729777.png,', '', 'test花费巨额可恨大家都觉得你的减肥呢身边愤怒的女人对男人女人奶粉奶粉免费开放那个那个免费积分肯德基疯狂的决定能否快点见到你地都觉得肯德基都觉得你的解放军队难得看到你都觉得那附近的不断降低身段记得你的降低身段紧凑的不负恩你觉得记得那年大家都觉得你都觉得今年年内分', '1', 'img', '0', '0', '1444729777', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2683', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729917', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2685', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729918', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2687', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729919', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2689', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729919', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2691', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729920', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2693', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729921', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2695', '107', '0', '', '', '哈哈哈哈哈', '1', 'char', '0', '0', '1444729921', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2697', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/520_1444730470.png,', '', '问题一：选择本地照片后，再拍摄照片，本地照片会被取消，只留下拍的照片', '1', 'img', '0', '0', '1444730535', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2699', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/260_1444730684.png,', '', '你们每天都是喝的这种矿泉水', '1', 'img', '0', '0', '1444730680', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2701', '59', '0', '0', '', '好', '1', 'char', '2699', '1', '1444730735', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2703', '53', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/510_1444730764.png,', '', '真认真', '1', 'img', '0', '0', '1444730767', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2705', '53', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/510_1444730764.png,', '', '真认真', '1', 'img', '0', '0', '1444730767', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2707', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/250_1444730804.png,', '', '没有网络的时候 没有提示 一直点发布……', '1', 'img', '0', '0', '1444730803', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2709', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/580_1444730911.png,', '', '我自己发布的消息，一直拉去不出来', '1', 'img', '0', '0', '1444730907', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2711', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/200_1444731143.png,', '', '刚刚发的消息，拉去出来了，但是不是置顶显示，在下几页显示', '1', 'img', '0', '0', '1444731141', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2713', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/200_1444731143.png,', '', '刚刚发的消息，拉去出来了，但是不是置顶显示，在下几页显示', '1', 'img', '0', '0', '1444731141', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2715', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/950_1444731278.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/11_1444731278.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/422_1444731278.png,', '', '数据重复显示', '1', 'img', '0', '0', '1444731282', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2717', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/510_1444731322.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/781_1444731322.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/842_1444731322.png,', '', '数据重复显示', '1', 'img', '0', '0', '1444731325', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2719', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/570_1444731403.png,', '', '消息发不出去，或者图片发不出去，只有文字消息', '1', 'img', '0', '0', '1444731403', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2721', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/970_1444733986.png,', '', '点赞 没得显示', '1', 'img', '0', '0', '1444733983', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2723', '59', '0', '0', '', '确实非常认真', '1', 'char', '2703', '1', '1444734355', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2725', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/610_1444734594.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/101_1444734594.png,', '', '两张图片', '1', 'img', '0', '0', '1444734592', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2727', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/610_1444734594.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/101_1444734594.png,', '', '两张图片', '1', 'img', '0', '0', '1444734593', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2729', '75', '0', '/upload/sjftp/rainbowfm/75_14447347250960.png,', '', '2015规划', '1', 'img', '0', '0', '1444734722', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2731', '161', '0', '/upload/sjftp/rainbowfm/161_14447348164870.png,', '', '', '1', 'img', '0', '0', '1444734810', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2733', '161', '0', '/upload/sjftp/rainbowfm/161_14447348387200.png,', '', '', '1', 'img', '0', '0', '1444734831', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2735', '161', '0', '/upload/sjftp/rainbowfm/161_14447348532950.png,', '', '', '1', 'img', '0', '0', '1444734846', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2737', '75', '0', '/upload/sjftp/rainbowfm/75_14447348678550.png,/upload/sjftp/rainbowfm/75_14447348678551.png,', '', '街区示意图', '1', 'img', '0', '0', '1444734866', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2739', '161', '0', '/upload/sjftp/rainbowfm/161_14447348733540.png,', '', '', '1', 'img', '0', '0', '1444734868', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2741', '161', '0', '/upload/sjftp/rainbowfm/161_14447349287260.png,', '', '', '1', 'img', '0', '0', '1444734922', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2743', '75', '0', '/upload/sjftp/rainbowfm/75_14447349638900.png,', '', '', '1', 'img', '0', '0', '1444734960', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2745', '75', '0', '/upload/sjftp/rainbowfm/75_14447350160970.png,/upload/sjftp/rainbowfm/75_14447350160971.png,', '', '图片变形很大', '1', 'img', '0', '0', '1444735014', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2747', '399', '0', '/upload/sjftp/rainbowfm/399_14447351584480.png,/upload/sjftp/rainbowfm/399_14447351584481.png,', '', '到家，大妈们都出来跳坝坝舞了，', '1', 'img', '0', '0', '1444735178', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2749', '399', '0', '', '', '我的两张横图感觉还好', '1', 'char', '2745', '1', '1444735320', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2751', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/990_1444736129.png,', '', '用朋友圈拍照，无法加载后面拍的照片，前面拍的照片会被后面拍的照片修改；每次使用朋友圈拍照功能时，闪光灯都需要手动关闭，不方便；若横向拍照时，照片上面有条黑色的杠杠；我个人是很不喜欢用那个照片选取拖动框的；点开已拍照片是黑屏，看不到照片内容。。。ios。。。煮饭去了。。。', '1', 'img', '0', '0', '1444736125', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2753', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/1000_1444736186.png,', '', '用朋友圈拍照，无法加载后面拍的照片，前面拍的照片会被后面拍的照片修改；每次使用朋友圈拍照功能时，闪光灯都需要手动关闭，不方便；若横向拍照时，照片上面有条黑色的杠杠；我个人是很不喜欢用那个照片选取拖动框的；点开已拍照片是黑屏，看不到照片内容。。。ios。。。煮饭去了。。。', '1', 'img', '0', '0', '1444736181', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2755', '107', '0', '0', '', '出来的照片质量不高', '1', 'char', '2751', '1', '1444736212', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2757', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/380_1444736369.png,', '', '时间顺序貌似不对，我刚刚发的那条在列表中间去了，13分钟那条还在我上面', '1', 'img', '0', '0', '1444736365', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2759', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/140_1444736555.png,', '', '内容发表后，会重复显示，有可能是我点发布点多了。发表后显示的时间顺序不对，13分钟前的在刚刚的前面', '1', 'img', '0', '0', '1444736551', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2761', '773', '0', '', '', '加图片发不起哟', '1', 'char', '0', '0', '1444736565', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2763', '773', '0', '', '', '苹果机器好像完全用不起，图片', '1', 'char', '0', '0', '1444736665', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2765', '773', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/200_1444736639.png,', '', '一张图片发得起不', '1', 'img', '0', '0', '1444736833', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2767', '929', '0', '/upload/sjftp/rainbowfm/929_14447381819090.png,/upload/sjftp/rainbowfm/929_14447381819091.png,', '', '可爱的小动物╮(╯▽╰)╭', '1', 'img', '0', '0', '1444737527', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2769', '929', '0', '/upload/sjftp/rainbowfm/929_14447382348530.png,', '', '一张图', '1', 'img', '0', '0', '1444737580', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2771', '107', '0', '/upload/sjftp/rainbowfm/107_14447389616140.png,/upload/sjftp/rainbowfm/107_14447389616141.png,/upload/sjftp/rainbowfm/107_14447389616142.png,/upload/sjftp/rainbowfm/107_14447389616143.png,/upload/sjftp/rainbowfm/107_14447389616144.png,', '', '这是三星手机拍的，感觉还不错，苹果的只能拍一张', '1', 'img', '0', '0', '1444738957', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2773', '107', '0', '', '', '照片质量不高，小图的时候图片变形了', '1', 'char', '2771', '1', '1444739005', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2775', '75', '0', '', '', '选择几张图片后，点击发送，转半个小时的圈，正在提交，提交不成功', '1', 'char', '0', '0', '1444739141', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2777', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/740_1444739266.png,', '', '帅哥们，只有这个发型才是真的适合你…^_^', '1', 'img', '0', '0', '1444739265', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2779', '75', '0', '', '', '服务器还是慢啊', '1', 'char', '2775', '1', '1444739275', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2781', '393', '107', '0', '', '好像一张图片就是不显示唉', '1', 'char', '2771', '2', '1444739355', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2783', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/760_1444739371.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/811_1444739371.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/262_1444739371.png,', '', '', '1', 'img', '0', '0', '1444739366', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2785', '393', '0', '0', '', '我刚测了，自己这边没显示，但应该是传到FTP上了的', '1', 'char', '2765', '1', '1444739419', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2787', '399', '0', '/upload/sjftp/rainbowfm/399_14447394425910.png,', '', '测试\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1\n\n\n\n\n\n\n\n\n\n\n\n', '1', 'img', '0', '0', '1444739440', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2789', '107', '393', '0', '', '我这边有显示', '1', 'char', '2771', '2', '1444739471', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2791', '107', '0', '0', '', '这是苹果手机发的，要选择多张图片，这个选项不是很方便', '1', 'char', '2783', '1', '1444739521', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2793', '399', '0', '', '', '是', '1', 'char', '2775', '1', '1444739528', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2795', '393', '0', '0', '', '你发的内容全是打的空格么，这样子界面很难看，我想想怎么优化', '1', 'char', '2787', '1', '1444739564', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2797', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/820_1444739674.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/461_1444739674.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/722_1444739674.png,', '', '选择多张后点击图片查看，还是黑屏', '1', 'img', '0', '0', '1444739669', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2799', '75', '0', '/upload/sjftp/rainbowfm/75_14447396826250.png,', '', '', '1', 'img', '0', '0', '1444739682', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2801', '393', '0', '', '', '请大家把使用朋友圈，觉得不好的都记录下来，最好提出优化建议，简单列出一二三，发给我汇总', '1', 'char', '0', '0', '1444739771', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2803', '393', '0', '0', '', '请保留使用截图噢，iOS的测试和android的测试结果区分开', '1', 'char', '2801', '1', '1444740008', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2805', '399', '0', '/upload/sjftp/rainbowfm/399_14447399939470.png,/upload/sjftp/rainbowfm/399_14447399939471.png,/upload/sjftp/rainbowfm/399_14447399939472.png,/upload/sjftp/rainbowfm/399_14447399939473.png,/upload/sjftp/rainbowfm/399_14447399939474.png,/upload/sjftp/rainbowfm/399_14447399939475.png,/upload/sjftp/rainbowfm/399_14447399939476.png,/upload/sjftp/rainbowfm/399_14447399939477.png,', '', '尝试不同的拍摄方式', '1', 'img', '0', '0', '1444740018', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2807', '399', '0', '', '', '故意发8张，比9张变形要严重的多啊', '1', 'char', '2805', '1', '1444740056', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2809', '393', '0', '0', '', '多次点击发布按钮，还没有规避点击次数，也缺少界面响应提示', '1', 'char', '2759', '1', '1444740150', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2811', '393', '0', '0', '', '整理测试结果', '1', 'char', '2751', '1', '1444740197', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2813', '393', '0', '0', '', '评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况评论加满一百字，查看显示情况', '1', 'char', '2747', '1', '1444740280', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2815', '393', '399', '0', '', '整理android的测试结果、', '1', 'char', '2805', '2', '1444740434', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2817', '393', '0', '0', '', '保留截屏，和记录操作过程', '1', 'char', '2797', '1', '1444740519', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2823', '127', '0', '', '', '多张图片上传Ftp,服务器缓慢', '1', 'char', '2775', '1', '1444741622', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2831', '59', '0', '0', '', '不评论还不行', '1', 'char', '2805', '1', '1444742721', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2835', '53', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/560_1444742825.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/1001_1444742825.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/862_1444742825.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/303_1444742825.png,', '', '美丽围洲', '1', 'img', '0', '0', '1444742822', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2837', '53', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/560_1444742825.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/1001_1444742825.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/862_1444742825.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-13/303_1444742825.png,', '', '美丽围洲', '1', 'img', '0', '0', '1444742822', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2841', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-13/570_1444743245.png,', '', '夜太美', '1', 'img', '0', '0', '1444743240', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2843', '1907', '0', '', '', '鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣摸你 鼓捣 鼓捣摸你 你 鼓捣摸你 鼓捣摸你', '1', 'char', '0', '0', '1444779135', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2845', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/440_1444780581.png,', '', '堵车', '1', 'img', '0', '0', '1444780580', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2849', '1907', '0', '', '', '地铁前面一女生，对着镜子 左看看右看看，前照照后照照， 我真想吼她 照你妹啊 你不知道我在后面吗，挡着我照镜子了 好吗', '1', 'char', '0', '0', '1444781997', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2851', '127', '0', '', '', 'Vjhj', '1', 'char', '2805', '1', '1444785986', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2869', '127', '0', '', '', 'Fjkcvhjw', '1', 'char', '0', '0', '1444787544', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2871', '127', '0', '/upload/sjftp/rainbowfm/127_14447875688550.png,/upload/sjftp/rainbowfm/127_14447875688551.png,/upload/sjftp/rainbowfm/127_14447875688552.png,/upload/sjftp/rainbowfm/127_14447875688553.png,/upload/sjftp/rainbowfm/127_14447875688554.png,/upload/sjftp/rainbowfm/127_14447875688555.png,', '', '', '1', 'img', '0', '0', '1444787567', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2873', '127', '0', '/upload/sjftp/rainbowfm/127_14447880708210.png,/upload/sjftp/rainbowfm/127_14447880708211.png,/upload/sjftp/rainbowfm/127_14447880708212.png,/upload/sjftp/rainbowfm/127_14447880708213.png,/upload/sjftp/rainbowfm/127_14447880708214.png,/upload/sjftp/rainbowfm/127_14447880708215.png,', '', '', '1', 'img', '0', '0', '1444788070', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2879', '127', '0', '/upload/sjftp/rainbowfm/127_14447884722910.png,/upload/sjftp/rainbowfm/127_14447884722911.png,/upload/sjftp/rainbowfm/127_14447884722912.png,/upload/sjftp/rainbowfm/127_14447884722913.png,/upload/sjftp/rainbowfm/127_14447884722914.png,/upload/sjftp/rainbowfm/127_14447884722915.png,', '', '', '1', 'img', '0', '0', '1444788475', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2881', '127', '0', '/upload/sjftp/rainbowfm/127_14447887209990.png,/upload/sjftp/rainbowfm/127_14447887210001.png,/upload/sjftp/rainbowfm/127_14447887210002.png,/upload/sjftp/rainbowfm/127_14447887210003.png,/upload/sjftp/rainbowfm/127_14447887210004.png,/upload/sjftp/rainbowfm/127_14447887210015.png,/upload/sjftp/rainbowfm/127_14447887210016.png,/upload/sjftp/rainbowfm/127_14447887210017.png,/upload/sjftp/rainbowfm/127_14447887210018.png,', '', '', '1', 'img', '0', '0', '1444788722', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2883', '127', '0', '', '', 'Futgi', '1', 'char', '0', '0', '1444788735', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2917', '1907', '0', '/upload/sjftp/rainbowfm/1907_14447909329400.png,', '', '传了一个50m 几万条的数据，于是电脑就卡了= =', '1', 'img', '0', '0', '1444790932', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2919', '127', '0', '/upload/sjftp/rainbowfm/127_14447909362210.png,/upload/sjftp/rainbowfm/127_14447909362211.png,/upload/sjftp/rainbowfm/127_14447909362212.png,/upload/sjftp/rainbowfm/127_14447909362213.png,/upload/sjftp/rainbowfm/127_14447909362214.png,/upload/sjftp/rainbowfm/127_14447909362215.png,', '', '', '1', 'img', '0', '0', '1444790933', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2925', '127', '0', '/upload/sjftp/rainbowfm/127_14447911401640.png,/upload/sjftp/rainbowfm/127_14447911401641.png,/upload/sjftp/rainbowfm/127_14447911401642.png,/upload/sjftp/rainbowfm/127_14447911401643.png,/upload/sjftp/rainbowfm/127_14447911401644.png,/upload/sjftp/rainbowfm/127_14447911401655.png,/upload/sjftp/rainbowfm/127_14447911401656.png,/upload/sjftp/rainbowfm/127_14447911401657.png,/upload/sjftp/rainbowfm/127_14447911401658.png,', '', '', '1', 'img', '0', '0', '1444791137', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2941', '59', '0', '', '', '好 处理一下', '1', 'char', '2917', '1', '1444795552', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2943', '59', '0', '', '', '哈哈哈哈哈哈哈哈', '1', 'char', '0', '0', '1444795783', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2945', '59', '0', '/upload/sjftp/rainbowfm/59_14447959490840.png,', '', '好漂亮', '1', 'img', '0', '0', '1444795950', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2947', '59', '0', '/upload/sjftp/rainbowfm/59_14447966740650.png,', '', '重庆三网融合大会', '1', 'img', '0', '0', '1444796674', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2957', '393', '0', '', '', '具体来讲', '1', 'char', '2885', '1', '1444806784', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2979', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/610_1444810971.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/141_1444810971.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/852_1444810971.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/603_1444810972.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/714_1444810972.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/65_1444810972.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/776_1444810972.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/907_1444810972.png,/upload/sjftp', '', '就随便说点什么吧', '1', 'img', '0', '0', '1444810971', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('2997', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/100_1444812012.png,', '', '当地的点点滴滴', '1', 'img', '0', '0', '1444812010', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3059', '773', '127', '0', '', '帅锅骨头', '1', 'char', '2979', '2', '1444815827', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3061', '393', '127', '0', '', '常常出现', '1', 'char', '2979', '2', '1444815869', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3065', '393', '773', '0', '', '大猩猩', '1', 'char', '2979', '2', '1444815919', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3069', '127', '0', '', '', 'Chdudhh', '1', 'char', '2873', '1', '1444816090', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3077', '127', '0', '0', '', '咖喱鸡块', '1', 'char', '2979', '1', '1444816411', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3079', '127', '393', '0', '', '国家科技奖', '1', 'char', '2979', '2', '1444816420', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3085', '393', '773', '0', '', '童年年内', '1', 'char', '2979', '2', '1444816480', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3103', '127', '0', '/upload/sjftp/rainbowfm/127_14448167268750.png,/upload/sjftp/rainbowfm/127_14448167268751.png,/upload/sjftp/rainbowfm/127_14448167268752.png,/upload/sjftp/rainbowfm/127_14448167268753.png,/upload/sjftp/rainbowfm/127_14448167268764.png,/upload/sjftp/rainbowfm/127_14448167268765.png,/upload/sjftp/rainbowfm/127_14448167268766.png,/upload/sjftp/rainbowfm/127_14448167268767.png,/upload/sjftp/rainbowfm/127_14448167268768.png,', '', '', '1', 'img', '0', '0', '1444816724', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3113', '393', '127', '0', '', '江河湖海', '1', 'char', '2979', '2', '1444816866', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3131', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/230_1444818188.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/281_1444818188.png,', '', '', '1', 'img', '0', '0', '1444818185', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3133', '59', '0', '/upload/sjftp/rainbowfm/59_14448192555800.png,', '', '', '1', 'img', '0', '0', '1444819253', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3137', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/440_1444819792.png,', '', '时间刚刚好，刚到，车就来了。哈哈', '1', 'img', '0', '0', '1444819789', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3139', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/440_1444819792.png,', '', '时间刚刚好，刚到，车就来了。哈哈', '1', 'img', '0', '0', '1444819790', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3141', '107', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/310_1444819962.png,', '', '文字上面有一条空白，有强迫症的表示看起不舒胡', '1', 'img', '0', '0', '1444819958', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3143', '107', '0', '0', '', 'ios的表情没出来', '1', 'char', '3141', '1', '1444820017', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3145', '59', '0', '0', '', 'ok', '1', 'char', '3141', '1', '1444821963', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3147', '393', '0', '0', '', '你的还不是新版本哈，关于那段留白的问题会尽快解决，期待你多多的优化建议哟', '1', 'char', '3141', '1', '1444822810', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3149', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/620_1444823051.png,', '', '如果只是点赞没有评论，那么点赞的这块视图区域没有添加背景区分，有朋友发现了这个问题嚒、', '1', 'img', '0', '0', '1444823047', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3151', '393', '107', '0', '', '发表的文字信息中添加表情么？', '1', 'char', '3141', '2', '1444823134', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3153', '393', '0', '', '', '', '1', 'char', '0', '0', '1444823237', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3155', '393', '0', '0', '', 'iPhone的看不了', '1', 'char', '3153', '1', '1444823379', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3157', '773', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/890_1444823710.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/851_1444823710.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/472_1444823710.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-14/333_1444823710.png,', '', '', '1', 'img', '0', '0', '1444823707', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3159', '773', '0', '', '', '“：……！…～——～？？，！：”～～？？，！：“—ˊ_>ˋ，，，+_++_+～～“Y(^_^)Y凸^-^凸凸^-^凸:-D”””', '1', 'char', '0', '0', '1444823760', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3161', '773', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/760_1444823848.png,', '', '这儿图片库跟多选不能霍起？', '1', 'img', '0', '0', '1444823844', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3163', '161', '0', '/upload/sjftp/rainbowfm/161_14448253381300.png,', '', '', '1', 'img', '0', '0', '1444825336', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3165', '1927', '0', '', '', '明天进步一点', '1', 'char', '0', '0', '1444825549', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3167', '399', '0', '/upload/sjftp/rainbowfm/399_14448257181740.png,', '', '我又来了(￣∇￣)。看图，昨天发的内容今天一点发表打开，还在，而且拍的照片手机相册里没有保存。', '1', 'img', '0', '0', '1444825717', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3169', '399', '0', '', '', '从其他地方复制的文字内容，在这里无法粘贴！', '1', 'char', '0', '0', '1444825772', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3171', '59', '0', '0', '', '评论可以粘贴', '1', 'char', '3169', '1', '1444826343', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3173', '75', '0', '/upload/sjftp/rainbowfm/75_14448264214670.png,', '', '', '1', 'img', '0', '0', '1444826419', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3175', '75', '0', '/upload/sjftp/rainbowfm/75_14448264750250.png,', '', '', '1', 'img', '0', '0', '1444826472', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3177', '75', '0', '/upload/sjftp/rainbowfm/75_14448268909410.png,', '', '有赞，微商城 微小店，服务商平台', '1', 'img', '0', '0', '1444826887', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3179', '393', '0', '', '', '霍起？？？', '1', 'char', '3161', '1', '1444827517', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3181', '59', '0', '0', '', '继续', '1', 'char', '3177', '1', '1444828209', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3183', '59', '0', '', '', '文字可以粘贴', '1', 'char', '0', '0', '1444828245', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3185', '59', '0', '', '', '小学课本里到处都是小明，\n大学课本里就没有小明了。\n·\n·\n·\n·\n·\n·\n·\n·\n·\n我就知道这sb考不上大学!\n', '1', 'char', '0', '0', '1444828526', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3187', '59', '0', '0', '', '哈哈哈哈', '1', 'char', '3185', '1', '1444828567', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3189', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/460_1444828778.png,', '', '你的车呢？', '1', 'img', '0', '0', '1444828774', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3191', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-14/540_1444829371.png,', '', '这个真bug了，看别人朋友圈，居然可以删除，真是醉死在这儿啦，这个测试结果来给我打点分呗.哈哈，明儿更改@', '1', 'img', '0', '0', '1444829369', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3193', '393', '0', '', '', '哎呀，卧槽，这个没注意，只看功能去了，必须改', '1', 'char', '3191', '1', '1444830979', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3195', '399', '0', '/upload/sjftp/rainbowfm/399_14448315620780.png,', '', '。\n。\n。 \n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。\n。', '1', 'img', '0', '0', '1444831560', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3197', '399', '0', '', '', '句号后面那个省略号是系统对句号后面内容做的隐藏，但只做了隐藏没有查看“全文”的功能', '1', 'char', '3195', '1', '1444831767', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3199', '1927', '0', '', '', '做事还是要分清主次', '1', 'char', '0', '0', '1444835743', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3211', '127', '0', '0', '', '从其他地方复制的文字内容，在这里无法粘贴！', '1', 'char', '3169', '1', '1444870697', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3215', '127', '0', '', '', '联合主办：重庆经济广播 新女报 重庆有线\n活动指定婴童机构及用品：登康好儿尚、飞利浦新安怡\n活动指定亲子教育机构：新东方｜解放碑青少旗舰学习中心\n活动指定摄影机构：斐斯视觉摄影\n活动指定美发造型机构：重庆简盖美容美发有限公司\n活动指定美丽机构：凤冠直属品牌——美圣美邦抗衰整形\n活动指定美甲机构：悦·指间美甲', '1', 'char', '0', '0', '1444871862', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3217', '127', '0', '', '', '  \n\n\n\n\n\n\n\n\n\nQ', '1', 'char', '0', '0', '1444871893', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3229', '393', '0', '/upload/sjftp/rainbowfm/393_14448791359140.png,', '', '', '1', 'img', '0', '0', '1444879138', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3231', '127', '0', '', '', '\n\n\n\n\n\n\n\n\nQqq', '1', 'char', '0', '0', '1444879306', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3233', '127', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/410_1444879734.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/391_1444879734.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/152_1444879734.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/413_1444879734.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/104_1444879735.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/935_1444879735.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/806_1444879735.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/167_1444879735.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/198_1444879735.png,', '', '', '1', 'img', '0', '0', '1444879659', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3235', '127', '0', '0', '', '米开朗基罗', '1', 'char', '3233', '1', '1444879669', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3237', '127', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/100_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/121_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/492_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/553_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/624_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/45_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/506_1444879792.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/27_1444879793.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/198_1444879793.png,', '', '联合主办：重庆经济广播 新女报 重庆有线\n活动指定婴童机构及用品：登康好儿尚、飞利浦新安怡\n活动指定亲子教育机构：新东方｜解放碑青少旗舰学习中心\n活动指定摄影机构：斐斯视觉摄影\n活动指定美发造型机构：重庆简盖美容美发有限公司\n活动指定美丽机构：凤冠直属品牌——美圣美邦抗衰整形\n活动指定美甲机构：悦·指间美甲', '1', 'img', '0', '0', '1444879722', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3243', '127', '0', '', '', '                  Rigbjj\n   \n                  Cnjk\n\n\nCbjj    \nBnjmnn\nBjk', '1', 'char', '0', '0', '1444880154', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3245', '127', '0', '0', '', '补邋遢', '1', 'char', '3237', '1', '1444880724', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3257', '127', '0', '/upload/sjftp/rainbowfm/127_14448818707670.png,/upload/sjftp/rainbowfm/127_14448818707671.png,/upload/sjftp/rainbowfm/127_14448818707672.png,/upload/sjftp/rainbowfm/127_14448818707673.png,/upload/sjftp/rainbowfm/127_14448818707674.png,/upload/sjftp/rainbowfm/127_14448818707675.png,/upload/sjftp/rainbowfm/127_14448818707686.png,/upload/sjftp/rainbowfm/127_14448818707687.png,/upload/sjftp/rainbowfm/127_14448818707688.png,', '', '', '1', 'img', '0', '0', '1444881872', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3263', '127', '0', '', '', '何国荣摩托罗拉', '1', 'char', '0', '0', '1444884138', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3277', '393', '0', '', '', '文职', '1', 'char', '0', '0', '1444889851', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3279', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/840_1444889951.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/181_1444889951.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/692_1444889951.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/963_1444889951.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/394_1444889951.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/165_1444889952.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/466_1444889952.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/957_1444889952.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/138_1444889952.png,', '', '', '1', 'img', '0', '0', '1444889872', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3281', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/40_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/101_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/782_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/783_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/384_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/515_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/396_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/1007_1444889992.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/588_1444889992.png,', '', '联合主办：重庆经济广播 新女报 重庆有线\n活动指定婴童机构及用品：登康好儿尚、飞利浦新安怡\n活动指定亲子教育机构：新东方｜解放碑青少旗舰学习中心\n活动指定摄影机构：斐斯视觉摄影\n活动指定美发造型机构：重庆简盖美容美发有限公司\n活动指定美丽机构：凤冠直属品牌——美圣美邦抗衰整形\n活动指定美甲机构：悦·指间美甲', '1', 'img', '0', '0', '1444889912', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3283', '393', '0', '', '', '联合主办：重庆经济广播 新女报 重庆有线\n活动指定婴童机构及用品：登康好儿尚、飞利浦新安怡\n活动指定亲子教育机构：新东方｜解放碑青少旗舰学习中心\n活动指定摄影机构：斐斯视觉摄影\n活动指定美发造型机构：重庆简盖美容美发有限公司\n活动指定美丽机构：凤冠直属品牌——美圣美邦抗衰整形\n活动指定美甲机构：悦·指间美甲', '1', 'char', '0', '0', '1444889965', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3287', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/930_1444892223.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/981_1444892223.png,', '', '技术高峰论坛 hadoop', '1', 'img', '0', '0', '1444892250', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3289', '127', '0', '/upload/sjftp/rainbowfm/127_14448988141290.png,', '', '其实表白也不一定是好事\n\n\n\n\n\n\n\n\n                 因为这样显得手黑。', '1', 'img', '0', '0', '1444898811', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3293', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/220_1444899525.png,', '', '', '1', 'img', '0', '0', '1444899442', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3299', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/200_1444899588.png,', '', '', '1', 'img', '0', '0', '1444899506', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3301', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/700_1444899635.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/741_1444899635.png,', '', '', '1', 'img', '0', '0', '1444899553', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3303', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/960_1444899683.png,', '', '', '1', 'img', '0', '0', '1444899600', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3305', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/740_1444899748.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/521_1444899748.png,', '', '', '1', 'img', '0', '0', '1444899666', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3307', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/10_1444900340.png,', '', '', '1', 'img', '0', '0', '1444900258', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3319', '393', '0', '', '', '感觉自己洗脸洗脚新建文件夹你可以叫我荔枝荔枝阿霞我阿姨', '1', 'char', '0', '0', '1444902632', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3327', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/380_1444903010.png,', '', '', '1', 'img', '0', '0', '1444903006', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3333', '393', '0', '0', '', '拒绝了', '1', 'char', '3327', '1', '1444903231', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3335', '393', '0', '0', '', '不考虑考虑', '1', 'char', '3327', '1', '1444903261', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3339', '127', '393', '', '', 'DOG', '1', 'char', '3327', '2', '1444903379', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3341', '393', '0', '0', '', '你定', '1', 'char', '3289', '1', '1444903747', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3343', '59', '0', '/upload/sjftp/rainbowfm/59_14449038037190.png,', '', '好', '1', 'img', '0', '0', '1444903802', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3345', '59', '393', '', '', '好', '1', 'char', '3327', '2', '1444903872', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3357', '393', '0', '0', '', '拒绝了', '1', 'char', '3327', '1', '1444904166', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3367', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/370_1444904484.png,', '', '', '1', 'img', '0', '0', '1444904481', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3371', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-15/320_1444904533.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/31_1444904533.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/552_1444904533.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/623_1444904533.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-15/934_1444904534.png,', '', '', '1', 'img', '0', '0', '1444904531', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3375', '75', '0', '/upload/sjftp/rainbowfm/75_14449070227520.png,', '', '', '1', 'img', '0', '0', '1444907019', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3383', '59', '0', '/upload/sjftp/rainbowfm/59_14449097128860.png,/upload/sjftp/rainbowfm/59_14449097128861.png,/upload/sjftp/rainbowfm/59_14449097128862.png,/upload/sjftp/rainbowfm/59_14449097128863.png,', '', '美食', '1', 'img', '0', '0', '1444909712', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3385', '399', '0', '', '', '幸好我吃完才看到，不然又要多吃几碗', '1', 'char', '3383', '1', '1444911340', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3389', '399', '0', '/upload/sjftp/rainbowfm/399_14449114710750.png,', '', '我对不住绵绵。。。。\n\n\n\n\n他应该不会看到！(￣∇￣)', '1', 'img', '0', '0', '1444911469', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3391', '399', '0', '', '', '第一到提示发表失败，第二遍又成功了，这是什么原因呢？网络没得问题', '1', 'char', '0', '0', '1444911552', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3395', '393', '0', '0', '', '这姿势挺销魂', '1', 'char', '3389', '1', '1444911942', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3397', '127', '0', '', '', '没有发表失败啊', '1', 'char', '0', '0', '1444911983', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3401', '127', '399', '', '', '莫弹屏，一会我的菜没了', '1', 'char', '3383', '2', '1444912821', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3403', '393', '0', '', '', 'http://fxt.uodoo.com/10_1hXMZ，发一条链接试试看、', '1', 'char', '0', '0', '1444912888', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3415', '399', '0', '', '', '貌似我手机问题还是有点多哟，哈哈', '1', 'char', '3397', '1', '1444913539', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3417', '399', '393', '', '', '是喔', '1', 'char', '3389', '2', '1444914056', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3425', '127', '0', '', '', '记录', '1', 'char', '3397', '1', '1444917196', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3429', '59', '399', '0', '', '哈哈哈哈', '1', 'char', '3383', '2', '1444945093', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3431', '59', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/320_1444945985.png,', '', '晒晒谁起得早', '1', 'img', '0', '0', '1444945985', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3433', '59', '0', '0', '', '第一个点赞的 得红包哈', '1', 'char', '3431', '1', '1444946392', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3435', '1907', '0', '', '', '记住我 我是小杨', '1', 'char', '3431', '1', '1444951193', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3437', '1907', '0', '', '', '哈哈哈 ', '1', 'char', '3431', '1', '1444951213', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3439', '1907', '0', '/upload/sjftp/rainbowfm/1907_14449513446170.png,', '', '今天下午要回四川给爷爷过生日，又将是一群大哥大姐带着他们的小孩儿谈天说地的，我这个夹在中间的真是又尴尬又无聊。。。下了一部赤道和十万个冷笑话回去看', '1', 'img', '0', '0', '1444951345', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3443', '127', '0', '', '', '我说你是计算机基督教\n\n\n\n说过的觉得舅舅家到家', '1', 'char', '0', '0', '1444958251', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3445', '127', '0', '', '', '想你宿舍死i\n\n\n\n\n\n多喝水计算机', '1', 'char', '0', '0', '1444958280', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3461', '773', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/600_1444959557.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/671_1444959557.png,', '', 'zsg', '1', 'img', '0', '0', '1444959557', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3463', '399', '0', '/upload/sjftp/rainbowfm/399_14449595683750.png,', '', '', '1', 'img', '0', '0', '1444959568', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3465', '399', '0', '/upload/sjftp/rainbowfm/399_14449596214450.png,/upload/sjftp/rainbowfm/399_14449596214461.png,/upload/sjftp/rainbowfm/399_14449596214462.png,/upload/sjftp/rainbowfm/399_14449596214463.png,/upload/sjftp/rainbowfm/399_14449596214464.png,/upload/sjftp/rainbowfm/399_14449596214465.png,/upload/sjftp/rainbowfm/399_14449596214466.png,/upload/sjftp/rainbowfm/399_14449596214467.png,/upload/sjftp/rainbowfm/399_14449596214468.png,', '', '', '1', 'img', '0', '0', '1444959620', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3469', '127', '0', '/upload/sjftp/rainbowfm/127_14449599498990.png,', '', '', '1', 'img', '0', '0', '1444959949', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3475', '393', '0', '0', '', '涪陵', '1', 'char', '2849', '1', '1444960457', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3479', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/1000_1444961238.png,', '', '在哪里呢', '1', 'img', '0', '0', '1444961236', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3481', '127', '59', '', '', 'v回家', '1', 'char', '3327', '2', '1444961520', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3483', '127', '393', '', '', '呵呵健康', '1', 'char', '3327', '2', '1444961534', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3485', '127', '393', '', '', 'hi喔喔哦', '1', 'char', '3327', '2', '1444961544', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3487', '127', '393', '', '', '估计iiii', '1', 'char', '3327', '2', '1444961558', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3495', '127', '0', '/upload/sjftp/rainbowfm/127_14449629796750.png,', '', '', '1', 'img', '0', '0', '1444962979', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3497', '127', '0', '/upload/sjftp/rainbowfm/127_14449631153870.png,', '', '', '1', 'img', '0', '0', '1444963115', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3501', '127', '0', '/upload/sjftp/rainbowfm/127_14449632545720.png,', '', '', '1', 'img', '0', '0', '1444963252', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3507', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/240_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/571_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/122_1444964334.png,', '', '测试 test', '1', 'img', '0', '0', '1444964332', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3511', '1065', '0', '\'/upload/sjftp/rainbowfm/LiuYan/2015-10-16/240_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/571_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/122_1444964334.png,\'', '', '\'test 测试\'', '1', '\'img\'', '0', '0', '1444965108', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3513', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/240_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/571_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/122_1444964334.png,', '', 'test 测试', '1', 'img', '0', '0', '1444965187', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3517', '127', '0', '/upload/sjftp/rainbowfm/127_14449653826320.png,', '', '', '1', 'img', '0', '0', '1444965383', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3521', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665542085/src1444966554.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665543268/src1444966554.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665544553/src1444966554.jpeg', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665542085/200-300.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665543268/200-300.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665544553/200-267.jpeg', 'test 测试', '1', 'img', '0', '0', '1444966554', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3525', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665940937/src1444966594.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665941822/src1444966594.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665942735/src1444966594.jpeg', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665940937/200-300.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665941822/200-300.jpeg,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/14449665942735/200-267.jpeg', 'test 测试', '1', 'img', '0', '0', '1444966594', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3533', '127', '0', '', '', '13594341848', '1', 'char', '0', '0', '1444975024', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3537', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/190_1444975085.png,', '', '目录', '1', 'img', '0', '0', '1444975111', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3539', '393', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/110_1444975131.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/771_1444975131.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/842_1444975131.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/303_1444975131.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/244_1444975131.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/935_1444975131.png,', '', '', '1', 'img', '0', '0', '1444975129', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3541', '127', '0', '/upload/sjftp/rainbowfm/127_14449751536460.png,/upload/sjftp/rainbowfm/127_14449751536461.png,/upload/sjftp/rainbowfm/127_14449751536462.png,/upload/sjftp/rainbowfm/127_14449751536463.png,/upload/sjftp/rainbowfm/127_14449751536464.png,/upload/sjftp/rainbowfm/127_14449751536475.png,', '', '', '1', 'img', '0', '0', '1444975156', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3547', '393', '0', '', '', '拒绝了', '1', 'char', '0', '0', '1444975404', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3553', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/240_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/571_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/122_1444964334.png,', '', 'test 测试', '1', 'img', '0', '0', '1444975930', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3555', '1065', '0', '/upload/sjftp/rainbowfm/LiuYan/2015-10-16/240_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/571_1444964334.png,/upload/sjftp/rainbowfm/LiuYan/2015-10-16/122_1444964334.png,', '', 'test 测试', '1', 'img', '0', '0', '1444975933', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3557', '127', '0', '', '', 'http', '1', 'char', '0', '0', '1444976146', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3559', '393', '0', '0', '', '致命', '1', 'char', '3283', '1', '1444976186', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3561', '393', '0', '0', '', '你公公', '1', 'char', '3283', '1', '1444976200', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3563', '393', '0', '0', '', '吉林', '1', 'char', '3283', '1', '1444976214', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3565', '1065', '0', '/upload/friend/2015-10-16/14449763039495/src1444976303.jpeg,/upload/friend/2015-10-16/14449763040931/src1444976304.jpeg,/upload/friend/2015-10-16/14449763042031/src1444976304.jpeg', '/upload/friend/2015-10-16/14449763039495/200-300.jpeg,/upload/friend/2015-10-16/14449763040931/200-300.jpeg,/upload/friend/2015-10-16/14449763042031/200-267.jpeg', 'test 测试', '1', 'img', '0', '0', '1444976304', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3567', '127', '0', '', '', 'http://', '1', 'char', '0', '0', '1444976335', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3569', '1065', '0', '', '', '觉得就算是结束', '1', 'char', '0', '0', '1444976406', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3571', '1065', '0', '/upload/friend/2015-10-16/14449768355887/src1444976835.jpeg', '/upload/friend/2015-10-16/14449768355887/200-267.jpeg', 'cggt', '1', 'img', '0', '0', '1444976835', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3573', '1065', '0', '/upload/friend/2015-10-16/14449770510678/src1444977051.jpeg,/upload/friend/2015-10-16/14449770511836/src1444977051.jpeg,/upload/friend/2015-10-16/14449770513155/src1444977051.jpeg', '/upload/friend/2015-10-16/14449770510678/200-300.jpeg,/upload/friend/2015-10-16/14449770511836/200-300.jpeg,/upload/friend/2015-10-16/14449770513155/200-267.jpeg', '忽然坚忍不拔', '1', 'img', '0', '0', '1444977051', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3575', '1065', '0', '/upload/friend/2015-10-16/14449773128273/src1444977312.jpeg,/upload/friend/2015-10-16/14449773129204/src1444977312.jpeg,/upload/friend/2015-10-16/14449773130348/src1444977313.jpeg,', '/upload/friend/2015-10-16/14449773128273/200-300.jpeg,/upload/friend/2015-10-16/14449773129204/200-300.jpeg,/upload/friend/2015-10-16/14449773130348/200-267.jpeg,', '觉得记得你', '1', 'img', '0', '0', '1444977313', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3577', '1065', '0', '/upload/friend/2015-10-16/14449774837416/src1444977483.jpeg,/upload/friend/2015-10-16/14449774838325/src1444977483.jpeg,/upload/friend/2015-10-16/14449774839250/src1444977483.jpeg,/upload/friend/2015-10-16/14449774840189/src1444977484.jpeg,/upload/friend/2015-10-16/14449774841046/src1444977484.jpeg,', '/upload/friend/2015-10-16/14449774837416/200-300.jpeg,/upload/friend/2015-10-16/14449774838325/200-300.jpeg,/upload/friend/2015-10-16/14449774839250/200-267.jpeg,/upload/friend/2015-10-16/14449774840189/200-300.jpeg,/upload/friend/2015-10-16/14449774841046/200-300.jpeg,', 'test', '1', 'img', '0', '0', '1444977484', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3579', '127', '0', '/upload/friend/2015-10-16/14449778958647/src1444977895.jpeg,', '/upload/friend/2015-10-16/14449778958647/200-267.jpeg,', '', '1', 'img', '0', '0', '1444977895', null, null, '1');
INSERT INTO `gb_circle_friend` VALUES ('3581', '127', '0', '/upload/friend/2015-10-16/14449795362012/src1444979536.jpeg,', '/upload/friend/2015-10-16/14449795362012/200-150.jpeg,', '', '1', 'img', '0', '0', '1444979536', null, null, '1');

-- ----------------------------
-- Table structure for gb_dingdan_detail
-- ----------------------------
DROP TABLE IF EXISTS `gb_dingdan_detail`;
CREATE TABLE `gb_dingdan_detail` (
  `uid_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `order_sn` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '站内订单号（唯一） GD开头',
  `delivery_id` int(11) DEFAULT NULL COMMENT '商家id值',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '客户端订单状态  1:待支付 2:待支付,已过期 3:支付失败 4:支付成功,待发货 5:支付成功,已发货 6:支付成功,发货失败 7:支付成功,交易成功 8:支付成功,已退款',
  `shipping_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品配送状态 1:未发货 2:已发货 3:未收货 4:已收货',
  `pay_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付状态  1:未支付 2:已支付',
  `consignee_id` int(11) DEFAULT NULL COMMENT '收货地址信息id值',
  `shipping_id` tinyint(4) DEFAULT NULL COMMENT '配送方式的id',
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配送方式的名称',
  `pay_id` tinyint(4) DEFAULT '1' COMMENT '支付方式的id',
  `pay_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支付方式的名称',
  `goods_amount` int(11) DEFAULT NULL COMMENT '购买的商品数量',
  `money_paid` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '该次订单总花费',
  `trade_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支付宝交易号',
  `add_time` datetime DEFAULT NULL COMMENT '下单时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `return_time` datetime DEFAULT NULL COMMENT '退货时间',
  `refund_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '退货状态 1:无请求 2:有请求 3:同意请求 4:拒绝请求',
  `refund_reason` text COLLATE utf8_unicode_ci COMMENT '退货原因',
  `refund_req_time` datetime DEFAULT NULL COMMENT '退货请求时间',
  `refund_agree_time` datetime DEFAULT NULL COMMENT '退货同意时间',
  `delay_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '延迟状态 1:无请求 2:有请求 3:同意请求 4:拒绝请求',
  `delay_time` datetime DEFAULT NULL COMMENT '延迟时间',
  `refund_refuse_reason` text COLLATE utf8_unicode_ci COMMENT '拒绝退货的原因',
  `refund_merchant_receipt_time` datetime DEFAULT NULL COMMENT '商家确认收到退货的时间',
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发货单号',
  `goods_id` mediumint(8) DEFAULT NULL COMMENT '商品id查询商品信息',
  `order_checks` mediumint(8) NOT NULL DEFAULT '0' COMMENT '订单审核状态 0:未审核 1:已审核 2:审核不通过 3:过期 4:撤销 5:已删除',
  `result` text COLLATE utf8_unicode_ci COMMENT '审核结果',
  `delay_result` text COLLATE utf8_unicode_ci COMMENT '延迟备注',
  `pay_back_status` mediumint(8) NOT NULL DEFAULT '1' COMMENT '客户端退款状态 1:无 2:申请退款 3:拒绝退款 4:退款中,待退货　5:退款中,退货中 6:退款中,已退货 7:退款中,已退款　8:退款成功 9:退款失败',
  `shipping_back_status` mediumint(8) NOT NULL DEFAULT '1' COMMENT '退货收货状态 1:无 2:未收货 3:已收货',
  `refund_address` text COLLATE utf8_unicode_ci COMMENT '退货地址',
  `delay_refuse_reason` text COLLATE utf8_unicode_ci COMMENT '拒绝延迟的原因',
  `delay_req_time` datetime DEFAULT NULL COMMENT '延迟请求时间',
  `buyer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '买家支付宝用户名',
  `buyer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '买家支付宝账号',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  `remind_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否提醒发货  0:无提醒 1:提醒',
  `remind_time` datetime DEFAULT NULL COMMENT '提醒发货的时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单是否被用户删除  0:未删除 1:删除 2:撤销',
  `pay_back_status_h` tinyint(4) NOT NULL DEFAULT '1' COMMENT '后台退款状态 呈现 1:无 2:未退款  3:已退款 4:退款失败 5:已收款',
  `goods_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `goods_thumb` text COLLATE utf8_unicode_ci COMMENT '商品缩略图',
  `shop_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `business_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商家名称',
  `business_tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商家电话',
  `buyer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人姓名',
  `buyer_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收货人电话',
  `buyer_address` text COLLATE utf8_unicode_ci COMMENT '详细收货地址',
  `business_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商家地址',
  `whether_change_price` tinyint(2) NOT NULL DEFAULT '0' COMMENT '价格是否 默认未变动 0   1变动',
  `change_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '变动后的金额',
  `change_price_time` datetime DEFAULT NULL COMMENT '价格变动时间',
  `whether_change_number` tinyint(2) DEFAULT '0' COMMENT '数量是否变动 默认 0 1变动',
  `change_number` int(11) DEFAULT '0' COMMENT '变动数量',
  `change_number_time` datetime DEFAULT NULL COMMENT '数量变动时间',
  `des_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述名称',
  `des_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述内容',
  `des_note` text COLLATE utf8_unicode_ci COMMENT '备注内容',
  `settlement` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已结算 0:无 1:未结算 2:已经结算',
  `cart_order_sn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '多订单支付时候，记录请求号',
  `source_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT '客户端' COMMENT '订单来源',
  `scope` tinyint(4) NOT NULL DEFAULT '1' COMMENT '所属范围 1:gbapp 2:区县商城',
  PRIMARY KEY (`uid_id`),
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE,
  KEY `user_id` (`user_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=1864 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gb_dingdan_detail
-- ----------------------------
INSERT INTO `gb_dingdan_detail` VALUES ('1853', 'GD39314399746727797', '149', '393', '2', '1', '1', '459', '0', null, '1', null, '1', '160.00', '0', '2015-08-19 16:57:52', null, null, null, '1', null, null, null, '1', null, null, null, null, '37383', '4', null, null, '1', '1', null, null, null, null, null, null, '2015-08-21 10:40:57', '0', null, '2', '1', '顶级西班牙进口力豹士专业赛车特润润滑油', '/upload/goods/2015-08-13/14394479657285.jpg', '160.00', '重庆联佳汽车配件有限公司', '13896118175', '吐槽缝纫机', '13825261567', '复古风放个假哦哦哦哦哦哦哦哦哦哦哦哦哦哦哦', '重庆市九龙坡区兰美路11号附27号', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '0', null, '客户端', '2');
INSERT INTO `gb_dingdan_detail` VALUES ('1855', 'GD39314399746973073', '149', '393', '2', '1', '1', '459', '0', null, '1', null, '1', '120.00', '0', '2015-08-19 16:58:17', null, null, null, '1', null, null, null, '1', null, null, null, null, '37385', '3', null, null, '1', '1', null, null, null, null, null, null, '2015-08-21 10:41:00', '0', null, '0', '1', '国际大牌进口力豹士专业赛车级特润润滑油', '/upload/goods/2015-08-13/14394487096566.jpg', '120.00', '重庆联佳汽车配件有限公司', '13896118175', '吐槽缝纫机', '13825261567', '复古风放个假哦哦哦哦哦哦哦哦哦哦哦哦哦哦哦', '重庆市九龙坡区兰美路11号附27号', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '0', null, '客户端', '2');
INSERT INTO `gb_dingdan_detail` VALUES ('1857', 'GD92914400400677067', '149', '929', '2', '1', '1', '523', '0', null, '1', null, '1', '160.00', '0', '2015-08-20 11:07:47', null, null, null, '1', null, null, null, '1', null, null, null, null, '37383', '3', null, null, '1', '1', null, null, null, null, null, null, '2015-08-21 10:40:53', '0', null, '0', '1', '顶级西班牙进口力豹士专业赛车特润润滑油', '/upload/goods/2015-08-13/14394479657285.jpg', '160.00', '重庆联佳汽车配件有限公司', '13896118175', '刚刚', '18716666263', '法国v不', '重庆市九龙坡区兰美路11号附27号', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '0', null, '客户端', '2');
INSERT INTO `gb_dingdan_detail` VALUES ('1859', 'GD12714400610571274', '159', '127', '2', '1', '1', '563', '0', null, '1', null, '6', '60.00', '0', '2015-08-20 16:57:37', null, null, null, '1', null, null, null, '1', null, null, null, null, '37359', '3', null, null, '1', '1', null, null, null, null, null, null, '2015-08-20 17:28:22', '0', null, '0', '1', 'quxian(2)', '/upload/goods/2015-08-18/14398611161271.jpg', '10.00', 'quxian', 'quxian', '邓莉', '18523523225', '江北区', 'quxian', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '0', null, '区县商城客户端', '2');
INSERT INTO `gb_dingdan_detail` VALUES ('1861', 'GD12714400610577460', '169', '127', '2', '1', '1', '563', '0', null, '1', null, '2', '20.00', '0', '2015-08-20 16:57:37', null, null, null, '1', null, null, null, '1', null, null, null, null, '37351', '3', null, null, '1', '1', null, null, null, null, null, null, '2015-08-20 17:28:22', '0', null, '0', '1', '特', '/upload/goods/2015-08-18/14398611596202.jpg', '10.00', 'quxian3', '33', '邓莉', '18523523225', '江北区', '33', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '0', null, '区县商城客户端', '2');
INSERT INTO `gb_dingdan_detail` VALUES ('1863', 'GD12714400610574665', '167', '127', '2', '1', '1', '563', '0', null, '1', null, '7', '56.00', '0', '2015-08-20 16:57:37', null, null, null, '1', null, null, null, '1', null, null, null, null, '37457', '3', null, null, '1', '1', null, null, null, null, null, null, '2015-08-20 17:28:22', '0', null, '0', '1', 'twet', '/upload/goods/2015-08-17/14398034285546.jpg', '8.00', 'quxian2', 'QUXIAN2', '邓莉', '18523523225', '江北区', 'quxian2', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '0', null, '区县商城客户端', '2');

-- ----------------------------
-- Table structure for gb_dingdan_detail_slave
-- ----------------------------
DROP TABLE IF EXISTS `gb_dingdan_detail_slave`;
CREATE TABLE `gb_dingdan_detail_slave` (
  `uid_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `order_sn` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '站内订单号（唯一） GD开头',
  `goods_amount` int(11) DEFAULT NULL COMMENT '购买的商品数量',
  `money_paid` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '该次订单总花费',
  `goods_id` mediumint(8) DEFAULT NULL COMMENT '商品id查询商品信息',
  `goods_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `goods_thumb` text COLLATE utf8_unicode_ci COMMENT '商品缩略图',
  `shop_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `whether_change_price` tinyint(2) NOT NULL DEFAULT '0' COMMENT '价格是否 默认未变动 0   1变动',
  `change_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '变动后的金额',
  `change_price_time` datetime DEFAULT NULL COMMENT '价格变动时间',
  `whether_change_number` tinyint(2) DEFAULT '0' COMMENT '数量是否变动 默认 0 1变动',
  `change_number` int(11) DEFAULT '0' COMMENT '变动数量',
  `change_number_time` datetime DEFAULT NULL COMMENT '数量变动时间',
  `des_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述名称',
  `des_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述内容',
  `des_note` text COLLATE utf8_unicode_ci COMMENT '备注内容',
  `scope` tinyint(4) DEFAULT '1' COMMENT '所属范围 1:gbapp 2:区县商城',
  PRIMARY KEY (`uid_id`),
  KEY `order_sn` (`order_sn`) USING BTREE,
  CONSTRAINT `gb_dingdan_detail_slave_ibfk_1` FOREIGN KEY (`order_sn`) REFERENCES `gb_dingdan_detail` (`order_sn`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1928 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gb_dingdan_detail_slave
-- ----------------------------
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1915', 'GD39314399746727797', '1', '160.00', '37383', '顶级西班牙进口力豹士专业赛车特润润滑油', '/upload/goods/2015-08-13/14394479657285.jpg', '160.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1917', 'GD39314399746973073', '1', '120.00', '37385', '国际大牌进口力豹士专业赛车级特润润滑油', '/upload/goods/2015-08-13/14394487096566.jpg', '120.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1919', 'GD12714400610577460', '1', '160.00', '37383', '顶级西班牙进口力豹士专业赛车特润润滑油', '/upload/goods/2015-08-13/14394479657285.jpg', '160.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1921', 'GD12714400610571274', '2', '20.00', '37359', 'test', '/upload/goods/2015-08-18/14398611161271.jpg', '10.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1923', 'GD12714400610571274', '4', '40.00', '37455', 'meishi', '/upload/goods/2015-08-17/14398034554784.jpg', '10.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1925', 'GD12714400610574665', '2', '20.00', '37351', '特', '/upload/goods/2015-08-18/14398611596202.jpg', '10.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');
INSERT INTO `gb_dingdan_detail_slave` VALUES ('1927', 'GD12714400610574665', '7', '56.00', '37457', 'twet', '/upload/goods/2015-08-17/14398034285546.jpg', '8.00', '0', '0.00', null, '0', '0', null, '物流公司：', '物流单号：', null, '1');

-- ----------------------------
-- Table structure for gb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `gb_goods_category`;
CREATE TABLE `gb_goods_category` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '类目名称',
  `parentid` int(20) DEFAULT '0' COMMENT '父id',
  `is_parentid` tinyint(4) DEFAULT '0' COMMENT '是否为父级id 0:不是 1:是',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序id',
  `image_url` text COMMENT '图标地址',
  `base_attribute_name_id` text COMMENT '基本属性名id',
  `sale_attribute_name_id` text COMMENT '销售属性名id',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否可用 0:不可用 1:可用',
  `category_status` tinyint(4) DEFAULT '0' COMMENT '该分类展示具体商品是否可用 0:否 1:是',
  `business_status` tinyint(4) DEFAULT '0' COMMENT '商家是否可用  0:不可用 1:可用',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `scope` tinyint(4) DEFAULT '1' COMMENT '作用范围  1:全部  2:广播APP  3:区县',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gb_goods_category
-- ----------------------------
INSERT INTO `gb_goods_category` VALUES ('1', '服装', '0', '1', '1', null, null, null, '1', '1', '0', '2015-07-29 10:46:35', '1');
INSERT INTO `gb_goods_category` VALUES ('47', '户外', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:11:56', '1');
INSERT INTO `gb_goods_category` VALUES ('39', '家电', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:07:53', '1');
INSERT INTO `gb_goods_category` VALUES ('4', '食品', '0', '1', '4', null, null, null, '1', '1', '0', '2015-07-29 16:44:19', '1');
INSERT INTO `gb_goods_category` VALUES ('5', '零食', '4', '0', '5', null, null, null, '1', '1', '0', '2015-07-29 16:44:57', '1');
INSERT INTO `gb_goods_category` VALUES ('69', '珠宝', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:49:56', '1');
INSERT INTO `gb_goods_category` VALUES ('7', '美妆', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 11:14:53', '1');
INSERT INTO `gb_goods_category` VALUES ('9', '家居', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 11:24:33', '1');
INSERT INTO `gb_goods_category` VALUES ('31', '男装', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:04:24', '1');
INSERT INTO `gb_goods_category` VALUES ('35', '女装', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:05:08', '1');
INSERT INTO `gb_goods_category` VALUES ('13', '数码', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 13:35:42', '1');
INSERT INTO `gb_goods_category` VALUES ('43', '游戏', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:10:18', '1');
INSERT INTO `gb_goods_category` VALUES ('53', '运动', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:16:37', '1');
INSERT INTO `gb_goods_category` VALUES ('75', 'T恤', '31', '0', '0', '/upload/goods/2015-11-09/14470612123090/src1447061212.jpeg', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:2:\"11\";}', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', '0', '0', '0', '2015-10-14 16:06:50', '1');
INSERT INTO `gb_goods_category` VALUES ('65', '娱乐', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 16:47:50', '1');
INSERT INTO `gb_goods_category` VALUES ('77', '连衣裙', '35', '0', '0', null, 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"11\";}', 'a:0:{}', '1', '1', '0', '2015-10-15 13:58:35', '1');
INSERT INTO `gb_goods_category` VALUES ('79', '婴童', '0', '1', '0', null, '', '', '1', '1', '0', '2015-07-30 17:25:42', '1');
INSERT INTO `gb_goods_category` VALUES ('83', '特产', '0', '1', '2', '/upload/icon/home_shopping2x.png', '', '', '1', '1', '1', '2015-08-05 09:22:25', '4');
INSERT INTO `gb_goods_category` VALUES ('85', '旅游', '0', '1', '4', '/upload/icon/home_travel2x.png', '', '', '1', '1', '1', '2015-08-08 08:31:32', '4');
INSERT INTO `gb_goods_category` VALUES ('87', '水果', '83', '0', '0', null, 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '0', '0', '0', '2015-08-08 08:32:36', '4');
INSERT INTO `gb_goods_category` VALUES ('89', '桃片', '83', '0', '0', null, 'a:2:{i:0;s:2:\"17\";i:1;s:2:\"19\";}', 'a:1:{i:0;s:2:\"19\";}', '0', '0', '0', '2015-08-08 08:38:13', '4');
INSERT INTO `gb_goods_category` VALUES ('99', '旅游', '85', '0', '3', null, 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '1', '2015-08-11 15:22:30', '4');
INSERT INTO `gb_goods_category` VALUES ('93', '美食', '0', '1', '3', '/upload/icon/home_eatting2x.png', '', '', '1', '1', '1', '2015-08-11 14:32:35', '4');
INSERT INTO `gb_goods_category` VALUES ('95', '特价', '0', '1', '1', '/upload/icon/tejia.png', '', '', '0', '0', '0', '2015-10-16 14:26:07', '4');
INSERT INTO `gb_goods_category` VALUES ('97', '酒店', '0', '1', '5', '/upload/icon/home_hotel2x.png', '', '', '1', '1', '1', '2015-10-16 14:26:25', '4');
INSERT INTO `gb_goods_category` VALUES ('101', '美食', '93', '0', '4', null, 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '1', '2015-08-11 15:23:06', '4');
INSERT INTO `gb_goods_category` VALUES ('103', '精品', '95', '0', '1', null, 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '0', '2015-10-16 17:40:50', '4');
INSERT INTO `gb_goods_category` VALUES ('105', '酒店', '97', '0', '0', '/upload/goods/2015-11-09/14470610184643/src1447061018.jpeg', 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '1', '2015-10-16 17:41:10', '4');
INSERT INTO `gb_goods_category` VALUES ('107', '特产', '83', '0', '2', '/upload/goods/2015-11-09/14470611267270/src1447061126.jpeg', 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '1', '2015-08-18 10:09:30', '4');
INSERT INTO `gb_goods_category` VALUES ('109', '电影票', '97', '0', '99', null, 'a:3:{i:0;s:1:\"9\";i:1;s:2:\"11\";i:2;s:2:\"17\";}', 'a:0:{}', '0', '0', '0', '2015-12-08 17:33:19', '4');
INSERT INTO `gb_goods_category` VALUES ('111', '娱乐', '95', '0', '0', null, 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '0', '2015-10-23 14:22:58', '4');
INSERT INTO `gb_goods_category` VALUES ('113', '电影票', '95', '0', '0', null, 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '0', '2015-10-23 15:41:37', '4');
INSERT INTO `gb_goods_category` VALUES ('119', '跨境汇', '0', '1', '2', '/upload/icon/tejia.png', '', '', '1', '1', '0', '2015-11-10 17:33:40', '4');
INSERT INTO `gb_goods_category` VALUES ('121', '箱包', '119', '0', '0', '/upload/icon/kjh/home_travel@2x.png', 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '0', '2015-11-13 17:52:45', '4');
INSERT INTO `gb_goods_category` VALUES ('123', '食品', '119', '0', '0', '/upload/icon/kjh/home_eatting@2x.png', 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '0', '2015-11-13 17:53:13', '4');
INSERT INTO `gb_goods_category` VALUES ('125', '保健品', '119', '0', '0', '/upload/icon/kjh/home_baojian@2x.png', 'a:1:{i:0;s:2:\"17\";}', 'a:0:{}', '1', '1', '0', '2015-11-13 17:53:33', '4');

-- ----------------------------
-- Table structure for gb_weather
-- ----------------------------
DROP TABLE IF EXISTS `gb_weather`;
CREATE TABLE `gb_weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `wind` varchar(20) DEFAULT NULL,
  `temperature` varchar(10) DEFAULT NULL,
  `chy` varchar(100) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `dayPictureUrl` varchar(100) NOT NULL,
  `nightPictureUrl` varchar(100) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `publish` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gb_weather
-- ----------------------------
INSERT INTO `gb_weather` VALUES ('1', '重庆', '小雨转阴', '微风', '23 ~ 17℃', '43---穿衣---较舒适---穿衣指数---建议着薄外套、开衫牛仔衫裤等服装。年老体弱者应适当添加衣物，宜着夹克衫、薄毛衣等。---洗车---不宜---洗车指数---不宜洗车，未来24小时内有雨，如', '周二 05月05日 (实时：17℃)', 'http://api.map.baidu.com/images/weather/day/xiaoyu.png', 'http://api.map.baidu.com/images/weather/night/yin.png', '0', '1430789640');
INSERT INTO `gb_weather` VALUES ('2', '重庆', '多云转晴', '微风', '28 ~ 20℃', '43---穿衣---较舒适---穿衣指数---建议着薄外套、开衫牛仔衫裤等服装。年老体弱者应适当添加衣物，宜着夹克衫、薄毛衣等。---洗车---不宜---洗车指数---不宜洗车，未来24小时内有雨，如', '周三', 'http://api.map.baidu.com/images/weather/day/duoyun.png', 'http://api.map.baidu.com/images/weather/night/qing.png', '1', '1430789640');
INSERT INTO `gb_weather` VALUES ('3', '重庆', '晴', '微风', '29 ~ 20℃', '43---穿衣---较舒适---穿衣指数---建议着薄外套、开衫牛仔衫裤等服装。年老体弱者应适当添加衣物，宜着夹克衫、薄毛衣等。---洗车---不宜---洗车指数---不宜洗车，未来24小时内有雨，如', '周四', 'http://api.map.baidu.com/images/weather/day/qing.png', 'http://api.map.baidu.com/images/weather/night/qing.png', '2', '1430789640');
INSERT INTO `gb_weather` VALUES ('4', '重庆', '阴转多云', '微风', '29 ~ 19℃', '43---穿衣---较舒适---穿衣指数---建议着薄外套、开衫牛仔衫裤等服装。年老体弱者应适当添加衣物，宜着夹克衫、薄毛衣等。---洗车---不宜---洗车指数---不宜洗车，未来24小时内有雨，如', '周五', 'http://api.map.baidu.com/images/weather/day/yin.png', 'http://api.map.baidu.com/images/weather/night/duoyun.png', '3', '1430789641');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `bussiness_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('00000000001', '商品1', '1');
INSERT INTO `goods` VALUES ('00000000002', '商品2', '1');
INSERT INTO `goods` VALUES ('00000000003', '商品3', '1');
INSERT INTO `goods` VALUES ('00000000004', '商品4', '2');
INSERT INTO `goods` VALUES ('00000000005', '商品5', '2');
INSERT INTO `goods` VALUES ('00000000006', '商品6', '3');
INSERT INTO `goods` VALUES ('00000000007', '商品7', '4');

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order` (
  `goods_id` int(11) unsigned zerofill DEFAULT NULL,
  `order_sn` varchar(50) DEFAULT NULL,
  KEY `goods_order_f1` (`goods_id`),
  CONSTRAINT `goods_order_f1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='goods  order 多对多关联表';

-- ----------------------------
-- Records of goods_order
-- ----------------------------
INSERT INTO `goods_order` VALUES ('00000000001', '订单号1');
INSERT INTO `goods_order` VALUES ('00000000001', '2');
INSERT INTO `goods_order` VALUES ('00000000002', '00000000003');
INSERT INTO `goods_order` VALUES ('00000000003', '00000000004');
INSERT INTO `goods_order` VALUES ('00000000004', '00000000005');
INSERT INTO `goods_order` VALUES ('00000000004', '00000000006');
INSERT INTO `goods_order` VALUES ('00000000005', '00000000002');
INSERT INTO `goods_order` VALUES ('00000000006', '00000000002');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `relation_id` int(11) unsigned zerofill DEFAULT NULL,
  `relation_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '/test/image1', '00000000001', 'App\\Models\\User');
INSERT INTO `image` VALUES ('2', '/test/image2', '00000000002', 'App\\Models\\User');
INSERT INTO `image` VALUES ('3', '/test/image3', '00000000001', 'App\\Models\\Goods');
INSERT INTO `image` VALUES ('4', '/test/image4', '00000000002', 'App\\Models\\Goods');
INSERT INTO `image` VALUES ('5', '/test/image5', '00000000001', 'App\\Models\\User');

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword` (
  `id` int(11) NOT NULL,
  `keyword` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keyword
-- ----------------------------
INSERT INTO `keyword` VALUES ('1', 'a:6:{s:6:\"张三\";s:2:\"**\";s:6:\"李四\";s:2:\"**\";s:2:\"tm\";s:2:\"**\";s:3:\"tmd\";s:3:\"***\";s:6:\"鬼子\";s:2:\"**\";s:9:\"打日本\";s:3:\"***\";}');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `labelName` varchar(255) NOT NULL COMMENT '标签名 text select radio ...',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('0000000001', '文本框', '0');
INSERT INTO `label` VALUES ('0000000002', '按钮', '0');
INSERT INTO `label` VALUES ('0000000003', '多选按钮', '0');
INSERT INTO `label` VALUES ('0000000004', '单选按钮', '0');
INSERT INTO `label` VALUES ('0000000005', '密码', '0');
INSERT INTO `label` VALUES ('0000000006', '文件类型', '0');
INSERT INTO `label` VALUES ('0000000007', '隐藏域', '0');
INSERT INTO `label` VALUES ('0000000008', '下拉菜单', '0');
INSERT INTO `label` VALUES ('0000000009', '文本编辑器', '0');

-- ----------------------------
-- Table structure for lbsmsg
-- ----------------------------
DROP TABLE IF EXISTS `lbsmsg`;
CREATE TABLE `lbsmsg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '节目ID',
  `userId` int(10) unsigned NOT NULL COMMENT '用户ID',
  `msg` varchar(255) NOT NULL COMMENT '留言',
  `type` varchar(5) NOT NULL COMMENT '类型 char img mp3',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `cmtType` tinyint(4) NOT NULL COMMENT '1：主持人留言 2：观看直播留言 3：我的意见 4：注册用户路况 5：主播路况 6：超级主播路况',
  `replyCmtId` bigint(20) NOT NULL DEFAULT '0' COMMENT '回复留言ID',
  `create_time` varchar(20) NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更改时间',
  `update_by` varchar(20) DEFAULT NULL COMMENT '更改人',
  `status` tinyint(4) NOT NULL COMMENT '0:待审 1:发布 2：删除',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5404 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbsmsg
-- ----------------------------
INSERT INTO `lbsmsg` VALUES ('1041', '23', '53', '/upload/sjftp/rainbowfm/53_1427860163747.aac', 'mp3', '106.4866', '29.51234', '5', '0', '1431073818', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1043', '23', '53', '/upload/sjftp/rainbowfm/53_1427860310342.aac', 'mp3', '106.486', '29.51', '2', '0', '1427860289', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1045', '23', '2', '/upload/sjftp/rainbowfm/53_1427860372537.aac', 'mp3', '106.487', '29.534', '2', '0', '1427860355', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1047', '29', '2', 'Jsnd', 'char', '106.487', '29.52', '2', '0', '1427868679', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1049', '29', '2', 'Jdjd', 'char', '106.48', '29.521', '2', '0', '1427868695', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1051', '29', '3', '/upload/sjftp/rainbowfm/53_1427868722373.aac', 'mp3', '106.46', '29.5', '2', '0', '1427868719', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1053', '29', '4', '/upload/sjftp/rainbowfm/53_1427868760553.aac', 'mp3', '106.8466', '29.5', '2', '0', '1427868761', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1055', '29', '3', '/upload/sjftp/rainbowfm/53_1427868843462.aac', 'mp3', '106.3866', '29.234', '2', '0', '1427868844', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1057', '29', '5', '/upload/sjftp/rainbowfm/53_1427869022652.png', 'img', '107.4866', '29.56', '2', '0', '1427869025', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1059', '29', '5', '/upload/sjftp/rainbowfm/53_1427869057520.aac', 'mp3', '106.8866', '29.98', '2', '0', '1427869054', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1061', '29', '6', '/upload/sjftp/rainbowfm/53_1427869221907.aac', 'mp3', '106.1866', '29.74', '2', '0', '1427869222', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1063', '29', '3', '/upload/sjftp/rainbowfm/53_1427869944825.aac', 'mp3', '106.2866', '29.4', '2', '0', '1427869945', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1065', '29', '7', '/upload/sjftp/rainbowfm/53_1427870068466.aac', 'mp3', '106.5', '29.934', '2', '0', '1427870070', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1067', '29', '53', '/upload/sjftp/rainbowfm/53_1427870079380.aac', 'mp3', '', '', '2', '0', '1427870081', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1069', '29', '53', '/upload/sjftp/rainbowfm/53_1427870097847.aac', 'mp3', '', '', '2', '0', '1427870100', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1071', '11', '73', '/upload/sjftp/rainbowfm/73_1427870189753.aac', 'mp3', '', '', '1', '0', '1427870187', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1073', '11', '73', '/upload/sjftp/rainbowfm/73_1427870199345.png', 'img', '', '', '1', '0', '1427870198', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1075', '11', '73', 'Ncjxd', 'char', '', '', '1', '0', '1427870213', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1077', '29', '73', '/upload/sjftp/rainbowfm/73_1427870335878.aac', 'mp3', '', '', '2', '0', '1427870332', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1079', '29', '73', '/upload/sjftp/rainbowfm/73_1427870348453.png', 'img', '', '', '2', '0', '1427870345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1081', '29', '73', 'Bhrv', 'char', '', '', '2', '0', '1427870353', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1083', '29', '53', '/upload/sjftp/rainbowfm/53_1427870390944.aac', 'mp3', '', '', '2', '0', '1427870392', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1085', '30', '53', '/upload/sjftp/rainbowfm/53_1427873531959.aac', 'mp3', '', '', '2', '0', '1427873533', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1087', '30', '53', '/upload/sjftp/rainbowfm/53_1427873596778.aac', 'mp3', '', '', '2', '0', '1427873598', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1089', '30', '53', '/upload/sjftp/rainbowfm/53_1427873617374.aac', 'mp3', '', '', '2', '0', '1427873618', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1091', '30', '53', '/upload/sjftp/rainbowfm/53_1427873734816.aac', 'mp3', '', '', '2', '0', '1427873736', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1093', '30', '53', '/upload/sjftp/rainbowfm/53_1427873943666.aac', 'mp3', '', '', '2', '0', '1427873944', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1095', '30', '53', '很不错哟', 'char', '', '', '2', '0', '1427873987', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1097', '30', '53', '/upload/sjftp/rainbowfm/53_1427874015446.aac', 'mp3', '', '', '2', '0', '1427874016', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1099', '30', '53', '/upload/sjftp/rainbowfm/53_1427874051095.aac', 'mp3', '', '', '2', '0', '1427874052', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1101', '30', '53', '/upload/sjftp/rainbowfm/53_1427874078388.aac', 'mp3', '', '', '2', '0', '1427874079', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1103', '30', '53', '/upload/sjftp/rainbowfm/53_1427874116089.png', 'img', '', '', '2', '0', '1427874117', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1105', '30', '53', '/upload/sjftp/rainbowfm/53_1427874604532.amr', 'mp3', '', '', '2', '0', '1427874606', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1107', '0', '101', '111', 'char', '', '', '3', '0', '1427874839', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1109', '43', '53', '/upload/sjftp/rainbowfm/53_1427875224174.aac', 'mp3', '', '', '2', '0', '1427875225', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1111', '43', '53', '/upload/sjftp/rainbowfm/53_1427875247935.amr', 'mp3', '', '', '2', '0', '1427875249', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1113', '43', '53', '/upload/sjftp/rainbowfm/53_1427875571451.aac', 'mp3', '', '', '2', '0', '1427875567', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1115', '43', '87', 'hi', 'char', '', '', '2', '0', '1427878447', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1119', '44', '87', '好像我们都会', 'char', '', '', '2', '0', '1427879220', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1121', '44', '53', '好的不对不对', 'char', '', '', '2', '0', '1427880154', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1123', '44', '53', '/upload/sjftp/rainbowfm/53_1427880197219.aac', 'mp3', '', '', '2', '0', '1427880199', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1125', '44', '53', '/upload/sjftp/rainbowfm/53_1427880256728.aac', 'mp3', '', '', '2', '0', '1427880258', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1127', '44', '53', '发vv', 'char', '', '', '2', '0', '1427880291', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1131', '0', '95', '啦啦啦', 'char', '', '', '3', '0', '1427881490', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1133', '44', '95', '浪打的娃哟', 'char', '', '', '2', '0', '1427881915', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1135', '44', '53', 'Hi', 'char', '', '', '2', '0', '1427881935', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1137', '44', '95', '为什么这个是手机号不是显示昵称？', 'char', '', '', '2', '0', '1427881958', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1139', '44', '53', '/upload/sjftp/rainbowfm/53_1427882037480.png', 'img', '', '', '2', '0', '1427882034', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1141', '44', '53', '/upload/sjftp/rainbowfm/53_1427882059020.png', 'img', '', '', '2', '0', '1427882059', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1143', '44', '53', '/upload/sjftp/rainbowfm/53_1427882094068.aac', 'mp3', '', '', '2', '0', '1427882096', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1145', '45', '59', '还', 'char', '', '', '2', '0', '1427882991', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1149', '45', '59', '还好', 'char', '', '', '2', '0', '1427883048', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1151', '45', '53', '/upload/sjftp/rainbowfm/53_1427883251291.aac', 'mp3', '', '', '2', '0', '1427883233', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1153', '45', '53', '/upload/sjftp/rainbowfm/53_1427883715520.png', 'img', '', '', '2', '0', '1427883698', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1155', '0', '93', '嗯嗯额', 'char', '', '', '3', '0', '1427906992', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1159', '11', '107', '哈哈哈', 'char', '', '', '1', '0', '1427908359', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1161', '11', '107', '哈哈哈哈好', 'char', '', '', '1', '0', '1427908372', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1165', '11', '107', '哈哈哈', 'char', '', '', '1', '0', '1427908387', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1169', '11', '107', '哈哈哈', 'char', '', '', '1', '0', '1427908552', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1171', '13', '107', '哈哈哈', 'char', '', '', '1', '0', '1427908854', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1173', '0', '107', '红红火火', 'char', '', '', '3', '0', '1427909155', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1179', '21', '53', '/upload/sjftp/rainbowfm/53_1427939010757.aac', 'mp3', '', '', '2', '0', '1427939013', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1181', '11', '53', '/upload/sjftp/rainbowfm/53_1427939047888.aac', 'mp3', '', '', '1', '0', '1427939048', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1183', '11', '59', '/upload/sjftp/rainbowfm/1427939579.jpg', 'img', '', '', '1', '0', '1427939583', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1185', '11', '59', '/upload/sjftp/rainbowfm/1427939738.jpg', 'img', '', '', '1', '0', '1427939743', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1187', '21', '53', '在吧', 'char', '', '', '2', '0', '1427939969', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1189', '11', '59', '/upload/sjftp/rainbowfm/1427939990.jpg', 'img', '', '', '1', '0', '1427939991', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1191', '11', '59', '/upload/sjftp/rainbowfm/1427940462.aac', 'img', '', '', '1', '0', '1427940463', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1193', '11', '59', '/upload/sjftp/rainbowfm/1427940529.aac', 'mp3', '', '', '1', '0', '1427940531', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1195', '11', '59', '/upload/sjftp/rainbowfm/1427940641.aac', 'mp3', '', '', '1', '0', '1427940645', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1197', '11', '59', '/upload/sjftp/rainbowfm/1427940701.aac', 'mp3', '', '', '1', '0', '1427940703', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1199', '11', '59', '/upload/sjftp/rainbowfm/1427940859.aac', 'mp3', '', '', '1', '0', '1427940860', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1201', '11', '59', '/upload/sjftp/rainbowfm/1427940989.aac', 'mp3', '', '', '1', '0', '1427940990', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1203', '11', '59', '/upload/sjftp/rainbowfm/1427941604.aac', 'mp3', '', '', '1', '0', '1427941606', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1205', '11', '59', '/upload/sjftp/rainbowfm/1427942193.aac', 'mp3', '', '', '1', '0', '1427942194', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1207', '11', '59', '/upload/sjftp/rainbowfm/1427942727.aac', 'mp3', '', '', '1', '0', '1427942729', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1209', '11', '59', '/upload/sjftp/rainbowfm/1427942750.aac', 'mp3', '', '', '1', '0', '1427942750', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1211', '11', '59', '/upload/sjftp/rainbowfm/1427942843.aac', 'mp3', '', '', '1', '0', '1427942845', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1213', '11', '59', '/upload/sjftp/rainbowfm/1427943267.aac', 'img', '', '', '1', '0', '1427943269', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1215', '11', '59', '/upload/sjftp/rainbowfm/1427943882.aac', 'mp3', '', '', '1', '0', '1427943883', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1217', '11', '59', '/upload/sjftp/rainbowfm/1427944005.aac', 'mp3', '', '', '1', '0', '1427944006', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1219', '11', '59', '/upload/sjftp/rainbowfm/1427944169.aac', 'mp3', '', '', '1', '0', '1427944170', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1221', '11', '59', '/upload/sjftp/rainbowfm/1427944843.caf', 'mp3', '', '', '1', '0', '1427944845', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1223', '11', '59', '/upload/sjftp/rainbowfm/1427944864.caf', 'mp3', '', '', '1', '0', '1427944865', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1225', '11', '59', '/upload/sjftp/rainbowfm/1427944940.caf', 'mp3', '', '', '1', '0', '1427944942', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1227', '11', '59', '/upload/sjftp/rainbowfm/1427945010.caf', 'mp3', '', '', '1', '0', '1427945010', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1229', '23', '53', '/upload/sjftp/rainbowfm/53_1427946002160.aac', 'mp3', '', '', '2', '0', '1427945979', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1231', '28', '87', '/upload/sjftp/rainbowfm/1427952179.jpg', 'img', '', '', '2', '0', '1427952182', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1233', '28', '87', 'hi', 'char', '', '', '2', '0', '1427952240', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1235', '28', '87', '中国', 'char', '', '', '2', '0', '1427952257', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1237', '28', '87', '/upload/sjftp/rainbowfm/1427952285.caf', 'mp3', '', '', '2', '0', '1427952286', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1239', '11', '59', '/upload/sjftp/rainbowfm/1427952893.aac', 'mp3', '', '', '1', '0', '1427952895', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1241', '11', '59', '/upload/sjftp/rainbowfm/1427952971.aac', 'mp3', '', '', '1', '0', '1427952971', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1243', '11', '59', '/upload/sjftp/rainbowfm/1427953037.aac', 'mp3', '', '', '1', '0', '1427953037', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1245', '11', '59', '/upload/sjftp/rainbowfm/1427953427.aac', 'mp3', '', '', '1', '0', '1427953429', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1247', '11', '59', '/upload/sjftp/rainbowfm/1427953452.aac', 'mp3', '', '', '1', '0', '1427953452', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1249', '11', '59', '/upload/sjftp/rainbowfm/1427955280.aac', 'mp3', '', '', '1', '0', '1427955281', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1251', '11', '59', '/upload/sjftp/rainbowfm/1427956801.aac', 'mp3', '', '', '1', '0', '1427956782', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1253', '11', '59', '/upload/sjftp/rainbowfm/1427956849.aac', 'mp3', '', '', '1', '0', '1427956831', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1255', '11', '59', '/upload/sjftp/rainbowfm/1427956945.aac', 'mp3', '', '', '1', '0', '1427956926', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1257', '11', '59', '/upload/sjftp/rainbowfm/1427956968.jpg', 'img', '', '', '1', '0', '1427956949', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1259', '11', '59', '/upload/sjftp/rainbowfm/1427957276.jpg', 'img', '', '', '1', '0', '1427957257', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1261', '11', '59', '/upload/sjftp/rainbowfm/1427957355.jpg', 'img', '', '', '1', '0', '1427957337', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1263', '11', '59', '/upload/sjftp/rainbowfm/1427957380.jpg', 'img', '', '', '1', '0', '1427957361', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1265', '11', '59', '/upload/sjftp/rainbowfm/1427957427.jpg', 'img', '', '', '1', '0', '1427957408', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1267', '11', '59', '果然分', 'char', '', '', '1', '0', '1427957462', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1269', '11', '59', '/upload/sjftp/rainbowfm/1427957492.jpg', 'img', '', '', '1', '0', '1427957474', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1271', '11', '59', '/upload/sjftp/rainbowfm/1427958143.jpg', 'img', '', '', '1', '0', '1427958125', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1273', '11', '59', '/upload/sjftp/rainbowfm/1427958221.aac', 'mp3', '', '', '1', '0', '1427958202', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1275', '11', '59', '/upload/sjftp/rainbowfm/1427958261.aac', 'mp3', '', '', '1', '0', '1427958242', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1277', '30', '59', '/upload/sjftp/rainbowfm/1427958411.jpg', 'img', '', '', '2', '0', '1427958391', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1279', '30', '59', '/upload/sjftp/rainbowfm/1427958425.aac', 'mp3', '', '', '2', '0', '1427958406', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1281', '30', '59', '好', 'char', '', '', '2', '0', '1427958414', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1283', '30', '59', '你', 'char', '', '', '2', '0', '1427958437', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1285', '0', '59', '好', 'char', '', '', '3', '0', '1427958562', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1287', '30', '59', '/upload/sjftp/rainbowfm/1427958606.jpg', 'img', '', '', '2', '0', '1427958587', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1289', '12', '59', '/upload/sjftp/rainbowfm/1427958673.jpg', 'img', '', '', '1', '0', '1427958654', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1291', '12', '59', '/upload/sjftp/rainbowfm/1427959245.jpg', 'img', '', '', '1', '0', '1427959229', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1293', '1', '1', '/upload/attachment/2015-04-02/14279599223092.png', 'char', '', '', '2', '737', '1427959923', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1295', '30', '53', '/upload/sjftp/rainbowfm/53_1427961122668.aac', 'mp3', '', '', '2', '0', '1427961124', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1297', '0', '113', '啦啦啦', 'char', '', '', '3', '0', '1427967968', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1299', '0', '113', 'b b b b', 'char', '', '', '3', '0', '1427968056', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1301', '20', '113', 'SX', 'char', '', '', '1', '0', '1427968317', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1303', '44', '113', '/upload/sjftp/rainbowfm/1427968363.aac', 'mp3', '', '', '2', '0', '1427968364', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1305', '44', '113', '/upload/sjftp/rainbowfm/1427968628.aac', 'mp3', '', '', '2', '0', '1427968609', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1307', '44', '113', '黎嘎嘎嘎', 'char', '', '', '2', '0', '1427968631', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1309', '13', '113', '哈哈哈', 'char', '', '', '1', '0', '1427968880', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1311', '1', '1', '久强大帅哥', 'char', '', '', '2', '737', '1427968909', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1313', '1', '1', '哈哈', 'char', '', '', '1', '767', '1427970828', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1315', '0', '66', '这是什么', 'char', '', '', '3', '0', '1427971131', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1317', '11', '59', '好', 'char', '', '', '1', '0', '1427971192', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1319', '0', '66', '', 'char', '', '', '3', '0', '1427971442', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1321', '0', '66', '', 'char', '', '', '3', '0', '1427971455', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1323', '0', '66', '⬇️', 'char', '', '', '3', '0', '1427971464', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1325', '0', '66', 'good', 'char', '', '', '3', '0', '1427971479', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1327', '0', '66', '', 'char', '', '', '3', '0', '1427971485', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1329', '0', '66', 'cry', 'char', '', '', '3', '0', '1427971491', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1331', '45', '87', '/upload/sjftp/rainbowfm/1427971672.aac', 'mp3', '', '', '2', '0', '1427971654', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1333', '45', '87', '/upload/sjftp/rainbowfm/1427971679.aac', 'mp3', '', '', '2', '0', '1427971660', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1335', '45', '87', '/upload/sjftp/rainbowfm/1427971721.aac', 'mp3', '', '', '2', '0', '1427971702', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1337', '45', '87', '/upload/sjftp/rainbowfm/1427971767.aac', 'mp3', '', '', '2', '0', '1427971748', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1339', '45', '87', '/upload/sjftp/rainbowfm/1427971800.jpg', 'img', '', '', '2', '0', '1427971784', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1341', '46', '87', '/upload/sjftp/rainbowfm/1427972902.jpg', 'img', '', '', '2', '0', '1427972883', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1343', '12', '113', 'h h h', 'char', '', '', '1', '0', '1427974759', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1345', '46', '113', 'uuu', 'char', '', '', '2', '0', '1427975620', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1347', '46', '113', '呃呃', 'char', '', '', '2', '0', '1427975638', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1349', '46', '113', '呀呀呀', 'char', '', '', '2', '0', '1427975644', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1351', '46', '87', 'hi', 'char', '', '', '2', '0', '1427975664', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1353', '46', '87', 'hiiiiii', 'char', '', '', '2', '0', '1427975683', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1355', '47', '105', 'hi', 'char', '', '', '2', '0', '1427976329', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1357', '47', '105', '1', 'char', '', '', '2', '0', '1427976484', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1359', '47', '105', 'w', 'char', '', '', '2', '0', '1427976488', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1361', '47', '105', 'r', 'char', '', '', '2', '0', '1427976492', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1363', '47', '105', 't', 'char', '', '', '2', '0', '1427976495', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1365', '47', '105', 'h', 'char', '', '', '2', '0', '1427976498', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1367', '47', '105', 'u', 'char', '', '', '2', '0', '1427976501', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1369', '47', '105', 'yyy', 'char', '', '', '2', '0', '1427976505', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1371', '47', '105', 'uuuu', 'char', '', '', '2', '0', '1427976510', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1373', '47', '105', 'bbbb', 'char', '', '', '2', '0', '1427976515', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1375', '11', '87', '好', 'char', '', '', '1', '0', '1427978853', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1377', '48', '87', '重庆', 'char', '', '', '2', '0', '1427982376', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1379', '48', '87', '/upload/sjftp/rainbowfm/1427982405.jpg', 'img', '', '', '2', '0', '1427982409', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1381', '12', '87', '不错', 'char', '', '', '1', '0', '1427982477', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1383', '49', '53', '/upload/sjftp/rainbowfm/53_1427983912755.aac', 'mp3', '', '', '2', '0', '1427983915', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1385', '49', '53', '/upload/sjftp/rainbowfm/53_1427983932659.aac', 'mp3', '', '', '2', '0', '1427983935', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1387', '22', '53', '/upload/sjftp/rainbowfm/53_1428029341489.aac', 'mp3', '', '', '2', '0', '1428029322', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1389', '22', '53', '/upload/sjftp/rainbowfm/53_1428029515823.aac', 'mp3', '', '', '2', '0', '1428029497', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1391', '14', '87', '/upload/sjftp/rainbowfm/1428029896.aac', 'mp3', '', '', '1', '0', '1428029899', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1393', '11', '59', '/upload/sjftp/rainbowfm/1428030354.m4a', 'mp3', '', '', '1', '0', '1428030341', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1395', '11', '59', '/upload/sjftp/rainbowfm/1428030689.m4a', 'mp3', '', '', '1', '0', '1428030670', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1397', '27', '53', '/upload/sjftp/rainbowfm/53_1428033673280.m4a', 'mp3', '', '', '2', '0', '1428033656', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1399', '27', '53', '/upload/sjftp/rainbowfm/53_1428033947774.aac', 'mp3', '', '', '2', '0', '1428033928', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1401', '28', '53', '/upload/sjftp/rainbowfm/53_1428037310241.aac', 'mp3', '', '', '2', '0', '1428037290', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1403', '29', '53', '/upload/sjftp/rainbowfm/53_1428041633041.aac', 'mp3', '', '', '2', '0', '1428041614', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1405', '29', '53', '/upload/sjftp/rainbowfm/53_1428041937179.aac', 'mp3', '', '', '2', '0', '1428041918', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1407', '29', '53', '/upload/sjftp/rainbowfm/53_1428043349658.aac', 'mp3', '', '', '2', '0', '1428043346', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1409', '29', '53', '/upload/sjftp/rainbowfm/53_1428043435056.aac', 'mp3', '', '', '2', '0', '1428043437', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1411', '29', '53', '/upload/sjftp/rainbowfm/53_1428043719946.aac', 'mp3', '', '', '2', '0', '1428043721', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1413', '29', '53', '/upload/sjftp/rainbowfm/53_1428043837121.aac', 'mp3', '', '', '2', '0', '1428043832', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1415', '29', '53', '/upload/sjftp/rainbowfm/53_1428044368203.aac', 'mp3', '', '', '2', '0', '1428044369', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1417', '30', '53', '/upload/sjftp/rainbowfm/53_1428045015127.aac', 'mp3', '', '', '2', '0', '1428045016', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1419', '30', '53', '/upload/sjftp/rainbowfm/53_1428045023951.aac', 'mp3', '', '', '2', '0', '1428045024', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1421', '30', '53', '/upload/sjftp/rainbowfm/53_1428047989344.aac', 'mp3', '', '', '2', '0', '1428047992', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1423', '43', '53', '/upload/sjftp/rainbowfm/53_1428049156088.aac', 'mp3', '', '', '2', '0', '1428049137', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1425', '43', '53', '/upload/sjftp/rainbowfm/53_1428049355564.aac', 'mp3', '', '', '2', '0', '1428049351', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1427', '43', '53', '/upload/sjftp/rainbowfm/53_1428049455896.aac', 'mp3', '', '', '2', '0', '1428049452', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1429', '43', '53', '/upload/sjftp/rainbowfm/53_1428049661778.aac', 'mp3', '', '', '2', '0', '1428049657', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1431', '43', '53', '/upload/sjftp/rainbowfm/53_1428049678482.aac', 'mp3', '', '', '2', '0', '1428049674', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1433', '43', '53', '/upload/sjftp/rainbowfm/53_1428049685440.aac', 'mp3', '', '', '2', '0', '1428049681', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1435', '43', '53', '/upload/sjftp/rainbowfm/53_1428049767078.aac', 'mp3', '', '', '2', '0', '1428049742', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1437', '43', '53', '/upload/sjftp/rainbowfm/53_1428050081452.aac', 'mp3', '', '', '2', '0', '1428050057', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1439', '43', '53', '/upload/sjftp/rainbowfm/53_1428050198127.aac', 'mp3', '', '', '2', '0', '1428050174', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1441', '43', '53', '/upload/sjftp/rainbowfm/53_1428050202184.aac', 'mp3', '', '', '2', '0', '1428050177', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1443', '43', '53', '/upload/sjftp/rainbowfm/53_1428050220588.aac', 'mp3', '', '', '2', '0', '1428050196', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1445', '43', '53', '/upload/sjftp/rainbowfm/53_1428050228357.aac', 'mp3', '', '', '2', '0', '1428050203', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1447', '44', '53', '/upload/sjftp/rainbowfm/53_1428052654567.aac', 'mp3', '', '', '2', '0', '1428052629', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1449', '44', '53', '/upload/sjftp/rainbowfm/53_1428052724480.aac', 'mp3', '', '', '2', '0', '1428052700', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1451', '44', '53', '/upload/sjftp/rainbowfm/53_1428052739933.aac', 'mp3', '', '', '2', '0', '1428052715', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1453', '44', '53', '/upload/sjftp/rainbowfm/53_1428053893625.aac', 'mp3', '', '', '2', '0', '1428053868', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1455', '44', '53', '/upload/sjftp/rainbowfm/53_1428054030834.aac', 'mp3', '', '', '2', '0', '1428054005', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1457', '44', '53', '/upload/sjftp/rainbowfm/53_1428054093717.aac', 'mp3', '', '', '2', '0', '1428054068', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1459', '44', '53', '/upload/sjftp/rainbowfm/53_1428054237880.aac', 'mp3', '', '', '2', '0', '1428054213', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1461', '44', '87', '/upload/sjftp/rainbowfm/1428054604.jpg', 'img', '', '', '2', '0', '1428054613', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1463', '45', '53', '/upload/sjftp/rainbowfm/53_1428058487852.png', 'img', '', '', '2', '0', '1428058472', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1465', '46', '87', '在吗', 'char', '', '', '2', '0', '1428059390', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1467', '46', '53', '/upload/sjftp/rainbowfm/53_1428060080359.aac', 'mp3', '', '', '2', '0', '1428060060', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1469', '46', '53', '/upload/sjftp/rainbowfm/53_1428060627999.png', 'img', '', '', '2', '0', '1428060608', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1471', '48', '107', '哈哈', 'char', '', '', '2', '0', '1428068938', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1473', '48', '107', '/upload/sjftp/rainbowfm/1428069046.jpg', 'img', '', '', '2', '0', '1428069028', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1475', '48', '107', '/upload/sjftp/rainbowfm/1428069054.jpg', 'img', '', '', '2', '0', '1428069034', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1477', '48', '107', '/upload/sjftp/rainbowfm/1428069060.jpg', 'img', '', '', '2', '0', '1428069041', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1479', '48', '107', '/upload/sjftp/rainbowfm/1428069078.jpg', 'img', '', '', '2', '0', '1428069058', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1481', '48', '107', '哈哈', 'char', '', '', '2', '0', '1428069173', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1483', '17', '87', '在？', 'char', '', '', '2', '0', '1428098992', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1485', '17', '87', '/upload/sjftp/rainbowfm/1428099078.jpg', 'img', '', '', '2', '0', '1428099062', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1487', '23', '87', '哇哈哈', 'char', '', '', '1', '0', '1428101522', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1489', '23', '115', 'good', 'char', '', '', '1', '0', '1428101590', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1491', '23', '115', '/upload/sjftp/rainbowfm/115_1428101656992.png', 'img', '', '', '1', '0', '1428101637', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1493', '23', '87', '/upload/sjftp/rainbowfm/1428101764.jpg', 'img', '', '', '1', '0', '1428101750', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1495', '23', '115', '/upload/sjftp/rainbowfm/115_1428101815806.aac', 'mp3', '', '', '1', '0', '1428101805', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1497', '23', '87', '/upload/sjftp/rainbowfm/1428101877.aac', 'mp3', '', '', '1', '0', '1428101858', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1499', '23', '87', '/upload/sjftp/rainbowfm/1428101933.aac', 'mp3', '', '', '1', '0', '1428101914', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1501', '23', '115', 'hi', 'char', '', '', '1', '0', '1428101945', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1503', '23', '115', '/upload/sjftp/rainbowfm/115_1428101987055.aac', 'mp3', '', '', '1', '0', '1428101967', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1505', '19', '115', '/upload/sjftp/rainbowfm/115_1428103098070.png', 'img', '', '', '2', '0', '1428103079', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1507', '19', '115', '/upload/sjftp/rainbowfm/115_1428103108514.png', 'img', '', '', '2', '0', '1428103089', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1509', '19', '115', '/upload/sjftp/rainbowfm/115_1428103125630.png', 'img', '', '', '2', '0', '1428103116', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1511', '19', '115', '/upload/sjftp/rainbowfm/115_1428103199792.png', 'img', '', '', '2', '0', '1428103185', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1513', '19', '115', '/upload/sjftp/rainbowfm/115_1428103597946.png', 'img', '', '', '2', '0', '1428103578', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1515', '19', '115', '还好还好还好还好还好还好哈', 'char', '', '', '2', '0', '1428104009', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1517', '19', '115', '左手 右手', 'char', '', '', '2', '0', '1428104033', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1519', '21', '115', '吐槽', 'char', '', '', '2', '0', '1428110044', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1521', '21', '115', '/upload/sjftp/rainbowfm/115_1428110120650.png', 'img', '', '', '2', '0', '1428110101', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1523', '23', '107', 'ryryrgdtwdu', 'char', '', '', '2', '0', '1428116837', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1525', '0', '87', 'hi hi hi起来了', 'char', '', '', '3', '0', '1428132536', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1527', '23', '115', '喜爱', 'char', '', '', '1', '0', '1428133938', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1529', '23', '115', '/upload/sjftp/rainbowfm/1428134017.jpg', 'img', '', '', '1', '0', '1428134020', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1531', '23', '115', '/upload/sjftp/rainbowfm/1428134081.jpg', 'img', '', '', '1', '0', '1428134082', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1533', '43', '115', 'hi', 'char', '', '', '2', '0', '1428134504', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1535', '0', '115', 'go', 'char', '', '', '3', '0', '1428135544', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1537', '23', '115', '爱是一颗', 'char', '', '', '1', '0', '1428137143', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1539', '23', '115', '人', 'char', '', '', '1', '0', '1428137264', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1541', '23', '115', '/upload/sjftp/rainbowfm/115_1428137272437.png', 'img', '', '', '1', '0', '1428137275', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1543', '23', '115', '/upload/sjftp/rainbowfm/115_1428137344755.aac', 'mp3', '', '', '1', '0', '1428137345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1545', '23', '115', '好的不对不对', 'char', '', '', '1', '0', '1428137396', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1547', '43', '115', 'good', 'char', '', '', '2', '0', '1428137475', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1549', '44', '115', '购物卡号是', 'char', '', '', '2', '0', '1428138833', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1551', '44', '115', '好吃', 'char', '', '', '2', '0', '1428140059', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1553', '25', '115', 'hi去', 'char', '', '', '1', '0', '1428191995', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1555', '20', '115', '好i', 'char', '', '', '2', '0', '1428192175', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1557', '21', '115', ' 物理概念 简单', 'char', '', '', '2', '0', '1428207708', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1559', '21', '115', '领导力和梦', 'char', '', '', '2', '0', '1428207727', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1561', '23', '53', '/upload/sjftp/rainbowfm/53_1428376782451.aac', 'mp3', '', '', '2', '0', '1428376784', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1563', '23', '53', '/upload/sjftp/rainbowfm/53_1428377557066.aac', 'mp3', '', '', '2', '0', '1428377557', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1565', '23', '53', '/upload/sjftp/rainbowfm/53_1428377651755.aac', 'mp3', '', '', '2', '0', '1428377652', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1567', '29', '53', '/upload/sjftp/rainbowfm/53_1428389102888.aac', 'mp3', '', '', '2', '0', '1428389080', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1569', '43', '73', '/upload/sjftp/rainbowfm/73_1428394116430.aac', 'mp3', '', '', '2', '0', '1428394123', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1571', '43', '73', '/upload/sjftp/rainbowfm/73_1428394133120.png', 'img', '', '', '2', '0', '1428394134', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1573', '147', '73', '/upload/sjftp/rainbowfm/73_1428394256308.png', 'img', '', '', '1', '0', '1428394258', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1575', '147', '73', '/upload/sjftp/rainbowfm/73_1428394481193.png', 'img', '', '', '1', '0', '1428394482', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1577', '0', '73', 'V5看见了', 'char', '', '', '3', '0', '1428394566', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1579', '141', '73', '/upload/sjftp/rainbowfm/73_1428396069829.aac', 'mp3', '', '', '1', '0', '1428396047', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1581', '141', '73', '/upload/sjftp/rainbowfm/73_1428398453513.png', 'img', '', '', '1', '0', '1428398455', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1583', '141', '73', '/upload/sjftp/rainbowfm/73_1428398537029.png', 'img', '', '', '1', '0', '1428398538', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1585', '141', '73', '兔子', 'char', '', '', '1', '1583', '1428398893', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1587', '141', '73', '/upload/sjftp/rainbowfm/73_1428398900188.png', 'img', '', '', '1', '0', '1428398900', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1589', '141', '73', '/upload/sjftp/rainbowfm/73_1428399658763.png', 'img', '', '', '1', '0', '1428399664', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1591', '44', '73', '/upload/sjftp/rainbowfm/73_1428399678424.png', 'img', '', '', '2', '0', '1428399679', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1593', '44', '73', '/upload/sjftp/rainbowfm/73_1428399686676.png', 'img', '', '', '2', '0', '1428399688', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1595', '141', '73', '/upload/sjftp/rainbowfm/73_1428400639562.png', 'img', '', '', '1', '0', '1428400639', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1597', '141', '73', 'Effv', 'char', '', '', '1', '0', '1428400649', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1599', '141', '73', '/upload/sjftp/rainbowfm/73_1428400656453.aac', 'mp3', '', '', '1', '0', '1428400656', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1601', '0', '73', 'Jcndnd', 'char', '', '', '3', '0', '1428400833', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1603', '59', '59', 'Jjn', 'char', '', '', '3', '0', '1428403810', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1605', '59', '59', '/upload/sjftp/rainbowfm/59_1428403841334.aac', 'mp3', '', '', '3', '0', '1428403841', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1607', '59', '59', '/upload/sjftp/rainbowfm/59_1428404191732.png', 'img', '', '', '3', '0', '1428404193', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1609', '59', '59', '/upload/sjftp/rainbowfm/59_1428404200582.aac', 'mp3', '', '', '3', '0', '1428404201', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1611', '59', '59', '/upload/sjftp/rainbowfm/59_1428404244832.png', 'img', '', '', '3', '0', '1428404245', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1613', '59', '59', 'Bntdcv ', 'char', '', '', '3', '0', '1428404253', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1615', '45', '53', '123', 'char', '', '', '2', '0', '1428404343', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1617', '73', '73', '/upload/sjftp/rainbowfm/73_1428404695171.aac', 'mp3', '', '', '3', '0', '1428404695', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1619', '73', '73', ' Bff', 'char', '', '', '3', '0', '1428404735', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1621', '47', '115', 'hi', 'char', '', '', '2', '0', '1428410230', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1623', '47', '53', '/upload/sjftp/rainbowfm/53_1428410402291.png', 'img', '', '', '2', '0', '1428410402', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1625', '47', '53', '/upload/sjftp/rainbowfm/53_1428410439208.png', 'img', '', '', '2', '0', '1428410439', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1627', '47', '53', '/upload/sjftp/rainbowfm/53_1428410522641.png', 'img', '', '', '2', '0', '1428410523', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1629', '47', '53', '哈哈', 'char', '', '', '2', '0', '1428410561', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1631', '47', '107', '/upload/sjftp/rainbowfm/1428410708.jpg', 'img', '', '', '2', '0', '1428410709', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1633', '47', '107', '/upload/sjftp/rainbowfm/1428410718.jpg', 'img', '', '', '2', '0', '1428410717', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1635', '47', '107', '/upload/sjftp/rainbowfm/1428410731.jpg', 'img', '', '', '2', '0', '1428410730', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1637', '47', '107', '复古个图好', 'char', '', '', '2', '0', '1428410759', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1639', '47', '107', '/upload/sjftp/rainbowfm/1428410772.aac', 'mp3', '', '', '2', '0', '1428410771', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1641', '47', '107', '合肥热线人行道', 'char', '', '', '2', '0', '1428410794', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1643', '145', '107', '格式化d', 'char', '', '', '1', '0', '1428410853', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1645', '0', '107', '地方解决就学', 'char', '', '', '3', '0', '1428411073', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1647', '48', '115', '/upload/sjftp/rainbowfm/1428412806.jpg', 'img', '', '', '2', '0', '1428412788', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1649', '48', '53', '/upload/sjftp/rainbowfm/53_1428414380986.aac', 'mp3', '', '', '2', '0', '1428414384', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1651', '48', '53', '/upload/sjftp/rainbowfm/53_1428414391987.aac', 'mp3', '', '', '2', '0', '1428414394', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1653', '48', '115', '/upload/sjftp/rainbowfm/1428414489.aac', 'mp3', '', '', '2', '0', '1428414493', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1655', '49', '107', '/upload/sjftp/rainbowfm/1428415323.aac', 'mp3', '', '', '2', '0', '1428415323', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1657', '49', '53', '/upload/sjftp/rainbowfm/53_1428416162577.aac', 'mp3', '', '', '2', '0', '1428416162', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1659', '141', '66', '', 'char', '', '', '1', '0', '1428456253', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1661', '141', '105', '', 'char', '', '', '1', '0', '1428456263', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1663', '141', '66', '哈哈哈', 'char', '', '', '1', '0', '1428456305', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1665', '141', '105', '好赞', 'char', '', '', '1', '0', '1428456321', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1667', '141', '105', '', 'char', '', '', '1', '0', '1428456346', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1669', '22', '115', '好', 'char', '', '', '2', '0', '1428461225', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1671', '22', '115', '/upload/sjftp/rainbowfm/1428461444.aac', 'mp3', '', '', '2', '0', '1428461446', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1673', '27', '115', '/upload/sjftp/rainbowfm/1428469210.aac', 'mp3', '', '', '2', '0', '1428469187', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1675', '44', '115', 'hi', 'char', '', '', '2', '0', '1428486670', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1677', '143', '59', '/upload/sjftp/rainbowfm/1428487001.jpg', 'img', '', '', '1', '0', '1428486978', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1679', '143', '59', '/upload/sjftp/rainbowfm/1428487018.aac', 'mp3', '', '', '1', '0', '1428486994', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1681', '45', '59', '', 'char', '', '', '2', '0', '1428487812', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1683', '45', '115', '/upload/sjftp/rainbowfm/1428490306.aac', 'mp3', '', '', '2', '0', '1428490284', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1685', '45', '115', '/upload/sjftp/rainbowfm/1428490402.aac', 'mp3', '', '', '2', '0', '1428490378', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1687', '45', '66', '/upload/sjftp/rainbowfm/1428490451.aac', 'mp3', '', '', '2', '0', '1428490427', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1689', '45', '59', '/upload/sjftp/rainbowfm/1428490541.aac', 'mp3', '', '', '2', '0', '1428490518', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1691', '141', '59', '/upload/sjftp/rainbowfm/1428490546.aac', 'mp3', '', '', '1', '0', '1428490524', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1693', '46', '105', '/upload/sjftp/rainbowfm/1428491574.jpg', 'img', '', '', '2', '0', '1428491550', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1695', '46', '105', '/upload/sjftp/rainbowfm/1428491587.jpg', 'img', '', '', '2', '0', '1428491563', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1697', '46', '105', '/upload/sjftp/rainbowfm/1428491656.jpg', 'img', '', '', '2', '0', '1428491633', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1699', '151', '115', 'hi', 'char', '', '', '1', '0', '1428521893', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1701', '147', '115', '/upload/sjftp/rainbowfm/1428493276.aac', 'mp3', '', '', '1', '0', '1428522077', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1703', '147', '115', '/upload/sjftp/rainbowfm/1428493318.jpg', 'img', '', '', '1', '0', '1428522118', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1705', '0', '115', 'hi', 'char', '', '', '3', '0', '1428494047', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1707', '46', '115', 'hi', 'char', '', '', '2', '0', '1428494133', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1709', '149', '115', 'hi', 'char', '', '', '1', '0', '1428497347', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1711', '149', '115', '有什么话', 'char', '', '', '1', '0', '1428497813', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1713', '20', '105', '好阿', 'char', '', '', '2', '0', '1428539503', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1715', '20', '105', '/upload/sjftp/rainbowfm/1428510721.jpg', 'img', '', '', '2', '0', '1428539523', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1717', '20', '105', '一样的天空', 'char', '', '', '2', '0', '1428539539', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1719', '20', '105', '/upload/sjftp/rainbowfm/1428511469.jpg', 'img', '', '', '2', '0', '1428540269', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1721', '20', '105', '哈哈', 'char', '', '', '2', '0', '1428540304', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1723', '21', '115', 'i 好', 'char', '', '', '2', '0', '1428543779', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1725', '0', '59', '好', 'char', '', '', '3', '0', '1428546742', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1727', '22', '59', '啊', 'char', '', '', '2', '0', '1428546761', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1729', '143', '66', '很好的', 'char', '', '', '1', '0', '1428602205', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1731', '141', '59', '/upload/sjftp/rainbowfm/1428574580.aac', 'mp3', '', '', '1', '0', '1428603377', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1733', '141', '59', '/upload/sjftp/rainbowfm/1428574612.jpg', 'img', '', '', '1', '0', '1428603411', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1735', '141', '66', '/upload/sjftp/rainbowfm/1428574628.aac', 'mp3', '', '', '1', '0', '1428603426', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1737', '147', '66', '/upload/sjftp/rainbowfm/1428574759.aac', 'mp3', '', '', '1', '0', '1428603556', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1739', '147', '66', '/upload/sjftp/rainbowfm/1428574769.jpg', 'img', '', '', '1', '0', '1428603566', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1741', '10', '66', '哇哦t', 'char', '', '', '2', '0', '1428603637', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1743', '143', '66', '/upload/sjftp/rainbowfm/1428574873.aac', 'mp3', '', '', '1', '0', '1428603671', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1745', '143', '66', '紊乱', 'char', '', '', '1', '0', '1428603684', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1747', '141', '59', '/upload/sjftp/rainbowfm/1428574937.aac', 'mp3', '', '', '1', '0', '1428603734', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1749', '141', '66', '好', 'char', '', '', '1', '0', '1428603752', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1751', '141', '66', '怎么时间是乱的', 'char', '', '', '1', '0', '1428603760', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1753', '141', '66', '/upload/sjftp/rainbowfm/1428574971.aac', 'mp3', '', '', '1', '0', '1428603769', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1755', '141', '66', '/upload/sjftp/rainbowfm/1428575219.aac', 'mp3', '', '', '1', '0', '1428604017', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1757', '141', '66', '/upload/sjftp/rainbowfm/1428575235.aac', 'mp3', '', '', '1', '0', '1428604033', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1759', '10', '115', '重庆', 'char', '', '', '2', '0', '1428604037', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1761', '141', '59', '/upload/sjftp/rainbowfm/1428575338.aac', 'mp3', '', '', '1', '0', '1428604136', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1763', '141', '59', '/upload/sjftp/rainbowfm/1428575434.aac', 'mp3', '', '', '1', '0', '1428604232', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1765', '141', '73', '/upload/sjftp/rainbowfm/73_1428575547960.aac', 'mp3', '', '', '1', '0', '1428604345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1767', '141', '73', '/upload/sjftp/rainbowfm/73_1428575652384.aac', 'mp3', '', '', '1', '0', '1428604450', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1769', '141', '73', '/upload/sjftp/rainbowfm/73_1428575672300.aac', 'mp3', '', '', '1', '0', '1428604470', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1771', '141', '59', '/upload/sjftp/rainbowfm/1428576122.aac', 'mp3', '', '', '1', '0', '1428604919', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1773', '141', '59', '/upload/sjftp/rainbowfm/1428576126.aac', 'mp3', '', '', '1', '0', '1428604924', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1775', '141', '59', '/upload/sjftp/rainbowfm/1428576217.aac', 'mp3', '', '', '1', '0', '1428605014', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1777', '141', '59', '/upload/sjftp/rainbowfm/1428576556.aac', 'mp3', '', '', '1', '0', '1428605354', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1779', '141', '59', '/upload/sjftp/rainbowfm/1428576597.aac', 'mp3', '', '', '1', '0', '1428605395', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1781', '141', '59', '/upload/sjftp/rainbowfm/1428576641.aac', 'mp3', '', '', '1', '0', '1428605439', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1783', '141', '59', '/upload/sjftp/rainbowfm/1428577216.aac', 'mp3', '', '', '1', '0', '1428577192', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1785', '46', '105', '/upload/sjftp/rainbowfm/1428580248.aac', 'mp3', '', '', '2', '0', '1428580227', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1787', '0', '105', '这撒上', 'char', '', '', '3', '0', '1428580651', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1789', '0', '105', '/upload/sjftp/rainbowfm/1428580699.jpg', 'img', '', '', '3', '0', '1428580672', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1791', '0', '105', '/upload/sjftp/rainbowfm/1428580719.aac', 'mp3', '', '', '3', '0', '1428580691', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1793', '47', '105', 'ghhhp', 'char', '', '', '2', '0', '1428581073', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1795', '47', '105', '根本解决h', 'char', '', '', '2', '0', '1428581080', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1797', '13', '115', '/upload/sjftp/rainbowfm/1428583508.aac', 'mp3', '', '', '2', '0', '1428612315', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1799', '13', '115', '/upload/sjftp/rainbowfm/1428583560.jpg', 'img', '', '', '2', '0', '1428612358', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1801', '141', '59', '/upload/sjftp/rainbowfm/1428629071.aac', 'mp3', '', '', '1', '0', '1428657869', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1803', '141', '59', '/upload/sjftp/rainbowfm/1428629111.aac', 'mp3', '', '', '1', '0', '1428657907', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1805', '141', '59', '/upload/sjftp/rainbowfm/1428629189.aac', 'mp3', '', '', '1', '0', '1428657985', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1807', '141', '59', '/upload/sjftp/rainbowfm/1428629224.aac', 'mp3', '', '', '1', '0', '1428658020', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1809', '141', '59', '/upload/sjftp/rainbowfm/1428629261.aac', 'mp3', '', '', '1', '0', '1428658057', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1811', '141', '59', '/upload/sjftp/rainbowfm/1428629292.aac', 'mp3', '', '', '1', '0', '1428658088', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1813', '141', '59', '/upload/sjftp/rainbowfm/1428630527.aac', 'mp3', '', '', '1', '0', '1428659323', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1815', '141', '59', '/upload/sjftp/rainbowfm/1428630623.aac', 'mp3', '', '', '1', '0', '1428659419', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1817', '141', '59', '/upload/sjftp/rainbowfm/1428630755.aac', 'mp3', '', '', '1', '0', '1428659552', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1819', '141', '59', '/upload/sjftp/rainbowfm/1428636184.aac', 'mp3', '', '', '1', '0', '1428636160', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1821', '23', '53', '/upload/sjftp/rainbowfm/53_1428637276958.png', 'img', '', '', '2', '0', '1428637251', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1823', '23', '53', '/upload/sjftp/rainbowfm/53_1428637286946.aac', 'mp3', '', '', '2', '0', '1428637261', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1825', '23', '73', '/upload/sjftp/rainbowfm/73_1428637504365.png', 'img', '', '', '2', '0', '1428637483', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1827', '23', '73', '/upload/sjftp/rainbowfm/73_1428637648996.png', 'img', '', '', '2', '0', '1428637624', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1829', '23', '73', '/upload/sjftp/rainbowfm/73_1428637660163.png', 'img', '', '', '2', '0', '1428637662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1831', '23', '73', '/upload/sjftp/rainbowfm/73_1428638306071.png', 'img', '', '', '2', '0', '1428638305', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1833', '147', '59', '/upload/sjftp/rainbowfm/1428638515.aac', 'mp3', '', '', '1', '0', '1428638490', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1835', '145', '59', '/upload/sjftp/rainbowfm/1428638528.aac', 'mp3', '', '', '1', '0', '1428638503', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1837', '141', '59', '/upload/sjftp/rainbowfm/1428638581.aac', 'mp3', '', '', '1', '0', '1428638555', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1839', '73', '73', '/upload/sjftp/rainbowfm/73_1428650434038.aac', 'mp3', '', '', '3', '0', '1428679229', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1841', '73', '73', 'Buff', 'char', '', '', '3', '0', '1428679249', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1843', '44', '105', 'hi hi hi hi', 'char', '', '', '2', '0', '1428657257', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1845', '0', '105', 'hello', 'char', '', '', '3', '0', '1428657471', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1847', '145', '105', 'hi，de ma ci a', 'char', '', '', '1', '0', '1428657689', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1849', '145', '105', '路路路路路', 'char', '', '', '1', '0', '1428657706', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1851', '46', '105', '噜路路路路路', 'char', '', '', '2', '0', '1428665435', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1853', '163', '125', '/upload/sjftp/rainbowfm/1428665666.aac', 'mp3', '', '', '1', '0', '1428665670', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1855', '163', '125', '/upload/sjftp/rainbowfm/1428665672.aac', 'mp3', '', '', '1', '0', '1428665676', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1857', '0', '125', '好', 'char', '', '', '3', '0', '1428666399', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1859', '46', '105', 'bigbang', 'char', '', '', '2', '0', '1428666757', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1861', '145', '105', 'ganbade', 'char', '', '', '1', '0', '1428666875', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1863', '47', '105', 'hi', 'char', '', '', '2', '0', '1428667472', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1865', '47', '125', '好', 'char', '', '', '2', '0', '1428670753', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1867', '47', '125', '苹果在近日正式发布了iOS 8.3系统，此次更新主要增加了更多表情符号，对Siri进行了升级，并支持无线CarPlay，同时新系统版本修复了不少系统漏洞，兼容性和稳定性也得到了一定的提高。此外，该版本另一个值得注意的是，中国银联成功入驻Apple Pay。  ', 'char', '', '', '2', '0', '1428670841', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1869', '47', '125', '/upload/sjftp/rainbowfm/1428670917.aac', 'mp3', '', '', '2', '0', '1428670923', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1871', '0', '105', '点点滴滴', 'char', '', '', '3', '0', '1428688374', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1873', '0', '105', '天天天', 'char', '', '', '3', '0', '1428688458', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1875', '143', '105', 'yes', 'char', '', '', '1', '0', '1428688768', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1877', '145', '105', '哟', 'char', '', '', '1', '0', '1428688808', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1879', '28', '125', '/upload/sjftp/rainbowfm/1428730313.jpg', 'img', '', '', '2', '0', '1428730315', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1881', '45', '53', '/upload/sjftp/rainbowfm/53_1428746778586.png', 'img', '', '', '2', '0', '1428746752', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1883', '45', '53', '/upload/sjftp/rainbowfm/53_1428746825335.aac', 'mp3', '', '', '2', '0', '1428746799', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1885', '45', '53', '/upload/sjftp/rainbowfm/53_1428746871309.aac', 'mp3', '', '', '2', '0', '1428746844', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1887', '45', '125', '/upload/sjftp/rainbowfm/1428746914.aac', 'mp3', '', '', '2', '0', '1428746889', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1889', '53', '53', '如', 'char', '', '', '3', '0', '1428748236', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1891', '143', '53', '心情', 'char', '', '', '1', '0', '1428748522', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1893', '143', '125', 'ios', 'char', '', '', '1', '0', '1428748562', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1895', '45', '53', '/upload/sjftp/rainbowfm/53_1428749611222.png', 'img', '', '', '2', '0', '1428749591', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1897', '45', '53', '/upload/sjftp/rainbowfm/53_1428749648352.png', 'img', '', '', '2', '0', '1428749622', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1899', '45', '53', '我', 'char', '', '', '2', '0', '1428749795', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1901', '46', '53', '红红火火', 'char', '', '', '2', '0', '1428750220', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1903', '141', '53', '放', 'char', '', '', '1', '0', '1428750671', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1905', '46', '53', '黑乎乎', 'char', '', '', '2', '0', '1428750713', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1907', '53', '53', '空间哼哼唧唧', 'char', '', '', '3', '0', '1428769101', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1909', '17', '53', '∽', 'char', '', '', '2', '0', '1428790546', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1911', '141', '53', '123', 'char', '', '', '1', '0', '1428790606', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1913', '147', '125', '好好好', 'char', '', '', '1', '0', '1428790785', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1915', '53', '53', '红红火火', 'char', '', '', '3', '0', '1428798827', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1917', '20', '53', '方法', 'char', '', '', '2', '0', '1428799053', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1919', '20', '53', '黑乎乎合', 'char', '', '', '2', '0', '1428799082', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1921', '21', '115', '你好', 'char', '', '', '2', '0', '1428802847', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1923', '28', '115', 'good', 'char', '', '', '2', '0', '1428815584', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1925', '163', '53', '留言试试', 'char', '', '', '1', '0', '1428842909', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1927', '47', '115', '人', 'char', '', '', '2', '0', '1428843481', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1929', '47', '73', '/upload/sjftp/rainbowfm/1428843768.jpg', 'img', '', '', '2', '0', '1428843766', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1931', '141', '115', '/upload/sjftp/rainbowfm/1428852709.aac', 'mp3', '', '', '1', '0', '1428852683', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1933', '21', '53', '呵呵', 'char', '', '', '2', '0', '1428887614', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1935', '21', '66', '/upload/sjftp/rainbowfm/66_1428889535417.aac', 'mp3', '', '', '2', '0', '1428889510', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1937', '21', '66', '/upload/sjftp/rainbowfm/66_1428889585704.png', 'img', '', '', '2', '0', '1428889557', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1939', '28', '115', 'hi', 'char', '', '', '2', '0', '1428901321', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1941', '44', '66', '', 'char', '', '', '2', '0', '1428916810', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1943', '44', '66', '哦', 'char', '', '', '2', '0', '1428916815', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1945', '45', '115', '/upload/sjftp/rainbowfm/1428920800.jpg', 'img', '', '', '2', '0', '1428920773', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1947', '66', '66', '刚刚', 'char', '', '', '3', '0', '1428927815', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1949', '165', '66', '图', 'char', '', '', '1', '0', '1428928350', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1951', '165', '66', '看', 'char', '', '', '1', '0', '1428928366', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1953', '165', '66', '也是', 'char', '', '', '1', '0', '1428928380', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1955', '145', '66', '语音', 'char', '', '', '1', '0', '1428928422', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1957', '143', '66', '恩', 'char', '', '', '1', '0', '1428928481', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1959', '47', '66', '哈哈', 'char', '', '', '2', '0', '1428928900', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1961', '147', '66', 'enfg', 'char', '', '', '1', '0', '1428929460', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1963', '48', '73', '/upload/sjftp/rainbowfm/73_1428931367513.aac', 'mp3', '', '', '2', '0', '1428930897', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1965', '48', '115', '/upload/sjftp/rainbowfm/1428931951.aac', 'mp3', '', '', '2', '0', '1428931925', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1967', '48', '115', '/upload/sjftp/rainbowfm/1428932636.jpg', 'img', '', '', '2', '0', '1428932612', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1969', '52', '115', 'hi', 'char', '', '', '2', '0', '1428938311', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1971', '53', '115', 'hi', 'char', '', '', '2', '0', '1428938614', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1973', '141', '66', '对方的等待', 'char', '', '', '1', '0', '1428974803', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1975', '22', '73', '兔兔路YY哦', 'char', '', '', '2', '0', '1428978005', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1977', '22', '73', '4899', 'char', '', '', '2', '0', '1428978024', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1979', '22', '73', '太可怜了', 'char', '', '', '2', '0', '1428978247', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1981', '22', '73', '模棱两可', 'char', '', '', '2', '0', '1428978360', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1983', '22', '115', 'hi', 'char', '', '', '2', '0', '1428978483', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1985', '22', '73', '挺有', 'char', '', '', '2', '0', '1428978891', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1987', '22', '73', '旅进旅退', 'char', '', '', '2', '0', '1428978899', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1989', '22', '73', '哦扇子舞', 'char', '', '', '2', '0', '1428978972', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1991', '22', '73', 'UNO哦', 'char', '', '', '2', '0', '1428979029', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1993', '73', '73', '节快乐', 'char', '', '', '3', '0', '1428979179', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1995', '22', '73', 'UNO哦', 'char', '', '', '2', '0', '1428979208', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1997', '22', '73', '心理', 'char', '', '', '2', '0', '1428979253', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('1999', '141', '73', '他那里', 'char', '', '', '1', '0', '1428979312', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2001', '22', '66', '你好', 'char', '', '', '2', '0', '1428979706', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2003', '27', '73', '替我', 'char', '', '', '2', '0', '1428984298', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2005', '27', '115', '/upload/sjftp/rainbowfm/1428984363.aac', 'mp3', '', '', '2', '0', '1428984335', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2007', '28', '115', '好', 'char', '', '', '2', '0', '1428988921', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2009', '141', '115', '/upload/sjftp/rainbowfm/1428994892.aac', 'mp3', '', '', '1', '0', '1428994867', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2011', '165', '115', '/upload/sjftp/rainbowfm/1428995128.jpg', 'img', '', '', '1', '0', '1428995101', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2013', '165', '115', '/upload/sjftp/rainbowfm/1428995167.jpg', 'img', '', '', '1', '0', '1428995139', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2015', '30', '115', '/upload/sjftp/rainbowfm/1428995193.jpg', 'img', '', '', '2', '0', '1428995166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2017', '141', '115', 'hi', 'char', '', '', '1', '0', '1428995191', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2019', '141', '66', '/upload/sjftp/rainbowfm/1428995589.jpg', 'img', '', '', '1', '0', '1428995561', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2021', '141', '66', '/upload/sjftp/rainbowfm/1428995609.jpg', 'img', '', '', '1', '0', '1428995580', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2023', '141', '66', '/upload/sjftp/rainbowfm/1429008721.jpg', 'img', '', '', '1', '0', '1429008693', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2025', '141', '66', '/upload/sjftp/rainbowfm/1429008763.aac', 'mp3', '', '', '1', '0', '1429008734', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2027', '141', '66', '时间对吗', 'char', '', '', '1', '0', '1429008751', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2029', '141', '66', '', 'char', '', '', '1', '0', '1429008773', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2031', '45', '66', '/upload/sjftp/rainbowfm/1429008875.jpg', 'img', '', '', '2', '0', '1429008846', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2033', '45', '66', '/upload/sjftp/rainbowfm/1429009045.jpg', 'img', '', '', '2', '0', '1429009014', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2035', '45', '66', '/upload/sjftp/rainbowfm/1429009065.jpg', 'img', '', '', '2', '0', '1429009034', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2037', '46', '115', '/upload/sjftp/rainbowfm/1429011319.jpg', 'img', '', '', '2', '0', '1429011290', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2039', '12', '115', '/upload/sjftp/rainbowfm/115_1429012096482.aac', 'mp3', '', '', '2', '0', '1429040887', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2041', '12', '115', '/upload/sjftp/rainbowfm/1429012128.aac', 'mp3', '', '', '2', '0', '1429040921', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2043', '12', '115', '/upload/sjftp/rainbowfm/115_1429012196183.aac', 'mp3', '', '', '2', '0', '1429040988', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2045', '12', '115', '/upload/sjftp/rainbowfm/115_1429012385016.aac', 'mp3', '', '', '2', '0', '1429041175', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2047', '141', '115', '/upload/sjftp/rainbowfm/115_1429012483367.aac', 'mp3', '', '', '1', '0', '1429041274', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2049', '141', '115', '/upload/sjftp/rainbowfm/115_1429012530119.aac', 'mp3', '', '', '1', '0', '1429041321', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2051', '141', '115', '/upload/sjftp/rainbowfm/1429012576.aac', 'mp3', '', '', '1', '0', '1429041368', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2053', '12', '115', '/upload/sjftp/rainbowfm/115_1429012698439.png', 'img', '', '', '2', '0', '1429041489', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2055', '13', '133', '/upload/sjftp/rainbowfm/1429012871.jpg', 'img', '', '', '2', '0', '1429041662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2057', '13', '115', '/upload/sjftp/rainbowfm/115_1429012914243.png', 'img', '', '', '2', '0', '1429041705', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2059', '13', '133', '你发的图片很漂亮', 'char', '', '', '2', '0', '1429041717', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2061', '13', '115', '过奖过奖。', 'char', '', '', '2', '0', '1429041753', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2063', '13', '133', '哥哥哥哥哥哥哥哥哥哥哥哥哥哥哥哥', 'char', '', '', '2', '0', '1429041814', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2065', '13', '133', '刚刚跟恍恍惚惚恍恍惚惚恍恍惚惚', 'char', '', '', '2', '0', '1429041826', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2067', '0', '135', '哈哈哈', 'char', '', '', '3', '0', '1429045095', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2069', '0', '135', '/upload/sjftp/rainbowfm/1429017989.aac', 'mp3', '', '', '3', '0', '1429046778', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2071', '0', '135', '/upload/sjftp/rainbowfm/1429018004.jpg', 'img', '', '', '3', '0', '1429046792', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2073', '0', '135', '/upload/sjftp/rainbowfm/1429018062.jpg', 'img', '', '', '3', '0', '1429046850', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2075', '0', '135', '/upload/sjftp/rainbowfm/1429018093.jpg', 'img', '', '', '3', '0', '1429046881', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2077', '0', '135', '/upload/sjftp/rainbowfm/1429018102.jpg', 'img', '', '', '3', '0', '1429046890', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2079', '0', '135', '/upload/sjftp/rainbowfm/1429018113.jpg', 'img', '', '', '3', '0', '1429046902', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2081', '48', '135', '不仅仅', 'char', '', '', '2', '0', '1429019576', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2083', '17', '135', '/upload/sjftp/rainbowfm/1429020475.aac', 'mp3', '', '', '2', '0', '1429049264', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2085', '17', '135', '/upload/sjftp/rainbowfm/1429020544.jpg', 'img', '', '', '2', '0', '1429049333', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2087', '17', '135', '哈哈', 'char', '', '', '2', '0', '1429049366', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2089', '17', '135', '留言', 'char', '', '', '2', '0', '1429050141', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2091', '141', '135', '囧锅人气最高诶', 'char', '', '', '1', '0', '1429050428', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2093', '141', '135', '呵呵', 'char', '', '', '1', '0', '1429050440', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2095', '141', '135', '/upload/sjftp/rainbowfm/1429021664.jpg', 'img', '', '', '1', '0', '1429050455', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2097', '141', '135', '/upload/sjftp/rainbowfm/1429021691.aac', 'mp3', '', '', '1', '0', '1429050479', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2099', '141', '135', '/upload/sjftp/rainbowfm/1429021778.jpg', 'img', '', '', '1', '0', '1429050566', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2101', '145', '135', '/upload/sjftp/rainbowfm/1429021904.aac', 'mp3', '', '', '1', '0', '1429050692', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2103', '145', '135', '/upload/sjftp/rainbowfm/1429021920.jpg', 'img', '', '', '1', '0', '1429050710', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2105', '51', '139', '饭否发', 'char', '', '', '2', '0', '1429024396', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2107', '52', '135', '一样', 'char', '', '', '2', '0', '1429024544', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2109', '149', '141', 'sjy', 'char', '', '', '1', '0', '1429075188', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2111', '149', '141', '/upload/sjftp/rainbowfm/1429046414.aac', 'mp3', '', '', '1', '0', '1429075199', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2113', '149', '141', '/upload/sjftp/rainbowfm/1429046427.jpg', 'img', '', '', '1', '0', '1429075213', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2115', '28', '141', 'first', 'char', '', '', '2', '0', '1429075354', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2117', '28', '141', 'second', 'char', '', '', '2', '0', '1429075367', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2119', '0', '141', '我的意见', 'char', '', '', '3', '0', '1429076130', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2121', '45', '143', 'Aaaa', 'char', '', '', '2', '0', '1429093291', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2123', '45', '143', '/upload/sjftp/rainbowfm/143_1429064515980.aac', 'mp3', '', '', '2', '0', '1429093306', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2125', '141', '62', 'Hhaa', 'char', '', '', '1', '0', '1429107825', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2127', '145', '135', 'Hsi ', 'char', '', '', '1', '0', '1429110259', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2129', '145', '135', 'Hh ', 'char', '', '', '1', '0', '1429110391', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2131', '141', '135', '/upload/sjftp/rainbowfm/135_1429081711921.png', 'img', '', '', '1', '0', '1429110503', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2133', '145', '135', '/upload/sjftp/rainbowfm/135_1429081749539.png', 'img', '', '', '1', '0', '1429110536', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2135', '145', '135', '/upload/sjftp/rainbowfm/135_1429081763049.aac', 'mp3', '', '', '1', '0', '1429110549', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2137', '51', '135', '/upload/sjftp/rainbowfm/135_1429082029719.aac', 'mp3', '', '', '2', '0', '1429110816', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2139', '52', '135', '/upload/sjftp/rainbowfm/135_1429082140574.aac', 'mp3', '', '', '2', '0', '1429110928', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2141', '52', '135', '/upload/sjftp/rainbowfm/135_1429082319801.png', 'img', '', '', '2', '0', '1429111108', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2143', '52', '135', '/upload/sjftp/rainbowfm/135_1429082335409.aac', 'mp3', '', '', '2', '0', '1429111123', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2145', '52', '135', '/upload/sjftp/rainbowfm/135_1429082362029.aac', 'mp3', '', '', '2', '0', '1429111149', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2147', '53', '135', '/upload/sjftp/rainbowfm/135_1429082478142.aac', 'mp3', '', '', '2', '0', '1429111265', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2149', '53', '135', 'Hh ', 'char', '', '', '2', '0', '1429111512', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2151', '53', '135', '/upload/sjftp/rainbowfm/135_1429082733060.png', 'img', '', '', '2', '0', '1429111519', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2153', '53', '135', '/upload/sjftp/rainbowfm/135_1429082799366.aac', 'mp3', '', '', '2', '0', '1429111586', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2155', '54', '135', 'Hh ', 'char', '', '', '2', '0', '1429111671', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2157', '171', '62', '', 'char', '', '', '1', '0', '1429085385', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2159', '171', '62', '持续性', 'char', '', '', '1', '0', '1429085415', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2161', '43', '133', '/upload/sjftp/rainbowfm/1429085816.jpg', 'img', '', '', '2', '0', '1429085788', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2163', '44', '133', '播控', 'char', '', '', '2', '0', '1429089564', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2165', '44', '133', 'hi', 'char', '', '', '2', '0', '1429089593', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2167', '46', '133', '我', 'char', '', '', '2', '0', '1429097088', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2169', '46', '133', '/upload/sjftp/rainbowfm/1429097155.jpg', 'img', '', '', '2', '0', '1429097126', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2171', '141', '133', '/upload/sjftp/rainbowfm/1429101018.jpg', 'img', '', '', '1', '0', '1429100991', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2173', '163', '133', '15日18时，北京三里屯附近黄沙漫天，交通拥堵。（图/张萌） 中国天气网讯 今天(15日)傍晚，北京迎来今年以来最强的一次沙尘天气。黄沙漫天导致能见度明显下降，交通陷入严重拥堵。同时PM10也急剧上升。 今天17时前后，北京西北部的延庆和昌平先后出现了浮尘天气，并逐渐向城区和全市蔓延。北京市气象台于17时40分升级发布沙尘暴黄色预警，预计傍晚到夜间，本市将出现沙尘暴天气，能见度小于1000米。这是北京今年首次发布沙尘暴黄色预警。', 'char', '', '', '1', '0', '1429103260', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2175', '163', '133', '15日18时，北京三里屯附近黄沙漫天，交通拥堵。（图/张萌） 中国天气网讯 今天(15日)傍晚，北京迎来今年以来最强的一次沙尘天气。黄沙漫天导致能见度明显下降，交通陷入严重拥堵。同时PM10也急剧上升。 今天17时前后，北京西北部的延庆和昌平先后出现了浮尘天气，并逐渐向城区和全市蔓延。北京市气象台于17时40分升级发布沙尘暴黄色预警，预计傍晚到夜间，本市将出现沙尘暴天气，能见度小于1000米。这是北京今年首次发布沙尘暴黄色预警。 18时15分，北京黄沙漫天，部分路段能见度小于1公里。全路网处于严重拥堵状态', 'char', '', '', '1', '0', '1429103292', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2177', '46', '153', '/upload/sjftp/rainbowfm/153_1429156555329.png', 'img', '', '', '2', '0', '1429185343', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2179', '161', '153', '/upload/sjftp/rainbowfm/153_1429160521238.png', 'img', '', '', '1', '0', '1429160498', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2181', '163', '153', '/upload/sjftp/rainbowfm/153_1429160717079.png', 'img', '', '', '1', '0', '1429160689', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2183', '12', '133', '/upload/sjftp/rainbowfm/1429183745.jpg', 'img', '', '', '2', '0', '1429212528', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2185', '15', '133', '/upload/sjftp/rainbowfm/1429190881.aac', 'mp3', '', '', '2', '0', '1429219677', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2187', '15', '133', '/upload/sjftp/rainbowfm/1429190918.aac', 'mp3', '', '', '2', '0', '1429219699', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2189', '49', '133', '/upload/sjftp/rainbowfm/1429194633.aac', 'mp3', '', '', '2', '0', '1429194605', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2191', '49', '133', '/upload/sjftp/rainbowfm/1429194674.jpg', 'img', '', '', '2', '0', '1429194645', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2193', '49', '133', '/upload/sjftp/rainbowfm/1429194708.jpg', 'img', '', '', '2', '0', '1429194678', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2195', '0', '133', '我的意见在这里测试', 'char', '', '', '3', '0', '1429195010', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2197', '157', '133', '好', 'char', '', '', '1', '0', '1429222457', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2199', '22', '53', '/upload/sjftp/rainbowfm/53_1429236698852.png', 'img', '', '', '2', '0', '1429236671', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2201', '22', '53', '/upload/sjftp/rainbowfm/53_1429236741394.png', 'img', '', '', '2', '0', '1429236715', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2203', '22', '53', '/upload/sjftp/rainbowfm/53_1429238640461.png', 'img', '', '', '2', '0', '1429238611', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2205', '117', '73', '兔兔', 'char', '', '', '2', '0', '1429254539', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2207', '151', '73', '/upload/sjftp/rainbowfm/1429260073.aac', 'mp3', '', '', '1', '0', '1429260043', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2209', '119', '73', '/upload/sjftp/rainbowfm/1429260108.aac', 'mp3', '', '', '2', '0', '1429260076', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2211', '119', '73', '/upload/sjftp/rainbowfm/1429260132.jpg', 'img', '', '', '2', '0', '1429260101', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2213', '119', '73', '/upload/sjftp/rainbowfm/1429260176.jpg', 'img', '', '', '2', '0', '1429260145', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2215', '107', '133', '如何', 'char', '', '', '2', '0', '1429323896', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2217', '107', '133', '在', 'char', '', '', '2', '0', '1429323922', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2219', '107', '133', '/upload/sjftp/rainbowfm/133_1429323979200.png', 'img', '', '', '2', '0', '1429323950', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2221', '151', '133', '好', 'char', '', '', '1', '0', '1429519582', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2223', '123', '73', 'Gbn', 'char', '', '', '2', '0', '1429526626', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2225', '123', '73', 'Bbb', 'char', '', '', '2', '0', '1429526642', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2227', '123', '73', 'Hhd', 'char', '', '', '2', '0', '1429527052', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2229', '123', '73', '/upload/sjftp/rainbowfm/73_1429498311745.png', 'img', '', '', '2', '0', '1429527078', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2231', '73', '73', 'Bgf', 'char', '', '', '3', '0', '1429527582', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2233', '73', '73', 'Jjj', 'char', '', '', '3', '0', '1429527589', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2235', '123', '73', 'Vv', 'char', '', '', '2', '0', '1429527671', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2237', '153', '141', '???', 'char', '', '', '1', '0', '1429528610', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2239', '107', '133', '/upload/sjftp/rainbowfm/133_1429500119954.aac', 'mp3', '', '', '2', '0', '1429500095', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2241', '107', '133', '/upload/sjftp/rainbowfm/133_1429500295232.aac', 'mp3', '', '', '2', '0', '1429500271', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2243', '107', '133', '/upload/sjftp/rainbowfm/133_1429500518928.aac', 'mp3', '', '', '2', '0', '1429500495', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2245', '107', '133', '/upload/sjftp/rainbowfm/133_1429500539502.aac', 'mp3', '', '', '2', '0', '1429500515', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2247', '151', '133', '/upload/sjftp/rainbowfm/1429501692.aac', 'mp3', '', '', '1', '0', '1429501659', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2249', '151', '133', '/upload/sjftp/rainbowfm/1429501855.aac', 'mp3', '', '', '1', '0', '1429501822', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2251', '165', '133', '/upload/sjftp/rainbowfm/1429502145.aac', 'mp3', '', '', '1', '0', '1429502112', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2253', '163', '133', '/upload/sjftp/rainbowfm/1429502326.aac', 'mp3', '', '', '1', '0', '1429502293', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2255', '163', '133', '/upload/sjftp/rainbowfm/1429502352.aac', 'mp3', '', '', '1', '0', '1429502319', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2257', '163', '133', '/upload/sjftp/rainbowfm/1429502368.aac', 'mp3', '', '', '1', '0', '1429502335', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2259', '107', '133', '/upload/sjftp/rainbowfm/133_1429502408744.aac', 'mp3', '', '', '2', '0', '1429502374', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2261', '107', '133', '/upload/sjftp/rainbowfm/133_1429502416521.aac', 'mp3', '', '', '2', '0', '1429502382', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2263', '111', '133', '/upload/sjftp/rainbowfm/133_1429502456506.aac', 'mp3', '', '', '2', '0', '1429502422', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2265', '177', '133', '/upload/sjftp/rainbowfm/1429502632.aac', 'mp3', '', '', '1', '0', '1429502599', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2267', '177', '133', '/upload/sjftp/rainbowfm/1429502651.aac', 'mp3', '', '', '1', '0', '1429502618', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2269', '177', '133', '/upload/sjftp/rainbowfm/1429502803.aac', 'mp3', '', '', '1', '0', '1429502770', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2271', '177', '133', '/upload/sjftp/rainbowfm/1429502923.aac', 'mp3', '', '', '1', '0', '1429502890', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2273', '177', '133', '/upload/sjftp/rainbowfm/1429514297.jpg', 'img', '', '', '1', '0', '1429543056', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2275', '177', '133', '/upload/sjftp/rainbowfm/1429514424.jpg', 'img', '', '', '1', '0', '1429543182', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2277', '177', '133', '/upload/sjftp/rainbowfm/133_1429522313494.aac', 'mp3', '', '', '1', '0', '1429551069', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2279', '177', '133', '/upload/sjftp/rainbowfm/133_1429529280123.aac', 'mp3', '', '', '1', '0', '1429558036', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2281', '177', '133', '沙坪坝全线畅通', 'char', '', '', '1', '0', '1429558831', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2283', '177', '115', '/upload/sjftp/rainbowfm/115_1429531668150.aac', 'mp3', '', '', '1', '0', '1429560423', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2285', '177', '133', '/upload/sjftp/rainbowfm/1429531739.aac', 'mp3', '', '', '1', '0', '1429560496', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2287', '177', '115', '/upload/sjftp/rainbowfm/115_1429531785674.aac', 'mp3', '', '', '1', '0', '1429560540', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2289', '95', '115', '/upload/sjftp/rainbowfm/115_1429531825943.aac', 'mp3', '', '', '2', '0', '1429560581', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2291', '95', '115', '/upload/sjftp/rainbowfm/115_1429531851825.aac', 'mp3', '', '', '2', '0', '1429560607', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2293', '95', '133', '/upload/sjftp/rainbowfm/1429531897.aac', 'mp3', '', '', '2', '0', '1429560654', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2295', '177', '133', '/upload/sjftp/rainbowfm/1429541471.aac', 'mp3', '', '', '1', '0', '1429570228', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2297', '177', '133', '/upload/sjftp/rainbowfm/1429541538.aac', 'mp3', '', '', '1', '0', '1429570295', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2299', '101', '133', 'hi', 'char', '', '', '2', '0', '1429570382', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2301', '177', '133', '/upload/sjftp/rainbowfm/1429576633.aac', 'mp3', '', '', '1', '0', '1429605389', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2303', '177', '133', '/upload/sjftp/rainbowfm/1429576677.aac', 'mp3', '', '', '1', '0', '1429605432', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2305', '177', '133', '/upload/sjftp/rainbowfm/1429576790.jpg', 'img', '', '', '1', '0', '1429605547', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2307', '177', '133', '/upload/sjftp/rainbowfm/1429579180.aac', 'mp3', '', '', '1', '0', '1429607934', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2309', '177', '133', '/upload/sjftp/rainbowfm/1429579373.jpg', 'img', '', '', '1', '0', '1429608129', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2311', '151', '73', '/upload/sjftp/rainbowfm/1429579616.jpg', 'img', '', '', '1', '0', '1429608370', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2313', '177', '115', '/upload/sjftp/rainbowfm/1429580083.aac', 'mp3', '', '', '1', '0', '1429608837', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2315', '177', '62', '/upload/sjftp/rainbowfm/62_1429580080291.aac', 'mp3', '', '', '1', '0', '1429608840', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2317', '177', '115', '/upload/sjftp/rainbowfm/115_1429580250102.aac', 'mp3', '', '', '1', '0', '1429609002', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2319', '177', '127', '/upload/sjftp/rainbowfm/127_1429580297251.aac', 'mp3', '', '', '1', '0', '1429609050', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2321', '177', '127', '/upload/sjftp/rainbowfm/127_1429580332062.aac', 'mp3', '', '', '1', '0', '1429609085', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2323', '177', '115', '/upload/sjftp/rainbowfm/115_1429580383227.aac', 'mp3', '', '', '1', '0', '1429609137', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2325', '177', '115', '/upload/sjftp/rainbowfm/115_1429580466148.aac', 'mp3', '', '', '1', '0', '1429609218', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2327', '177', '115', '/upload/sjftp/rainbowfm/115_1429580538216.aac', 'mp3', '', '', '1', '0', '1429609291', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2329', '177', '115', '/upload/sjftp/rainbowfm/115_1429580671804.aac', 'mp3', '', '', '1', '0', '1429609424', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2331', '177', '115', '/upload/sjftp/rainbowfm/115_1429580917089.aac', 'mp3', '', '', '1', '0', '1429609669', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2333', '177', '153', '/upload/sjftp/rainbowfm/153_1429581081710.aac', 'mp3', '', '', '1', '0', '1429609841', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2335', '177', '153', '/upload/sjftp/rainbowfm/153_1429581319375.aac', 'mp3', '', '', '1', '0', '1429610073', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2337', '177', '153', '/upload/sjftp/rainbowfm/153_1429581507998.aac', 'mp3', '', '', '1', '0', '1429610261', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2339', '177', '127', '/upload/sjftp/rainbowfm/127_1429584150938.aac', 'mp3', '', '', '1', '0', '1429612904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2341', '177', '127', 'Djc', 'char', '', '', '1', '0', '1429614846', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2343', '177', '127', '好', 'char', '', '', '1', '0', '1429627244', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2345', '177', '127', 'B', 'char', '', '', '1', '0', '1429627283', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2347', '177', '127', 'N', 'char', '', '', '1', '0', '1429627315', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2349', '177', '127', 'Dgg', 'char', '', '', '1', '0', '1429627653', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2351', '177', '127', '/upload/sjftp/rainbowfm/127_1429599050922.png', 'img', '', '', '1', '0', '1429627803', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2353', '185', '115', '/upload/sjftp/rainbowfm/1429599260.aac', 'mp3', '', '', '1', '0', '1429628015', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2355', '185', '115', '/upload/sjftp/rainbowfm/1429599311.jpg', 'img', '', '', '1', '0', '1429628065', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2357', '177', '115', '/upload/sjftp/rainbowfm/1429599902.aac', 'mp3', '', '', '1', '0', '1429628655', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2359', '135', '127', '好', 'char', '', '', '2', '0', '1429628918', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2361', '177', '115', '/upload/sjftp/rainbowfm/1429603678.aac', 'mp3', '', '', '1', '0', '1429632430', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2363', '177', '115', '/upload/sjftp/rainbowfm/1429609697.aac', 'mp3', '', '', '1', '0', '1429638449', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2365', '177', '73', '/upload/sjftp/rainbowfm/73_1429612378287.aac', 'mp3', '', '', '1', '0', '1429640677', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2367', '177', '115', '/upload/sjftp/rainbowfm/1429662766.aac', 'mp3', '', '', '1', '0', '1429691516', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2369', '121', '127', '/upload/sjftp/rainbowfm/127_1429665662743.aac', 'mp3', '', '', '2', '0', '1429694410', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2371', '121', '73', '/upload/sjftp/rainbowfm/73_1429666200796.aac', 'mp3', '', '', '2', '0', '1429694495', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2373', '121', '73', '/upload/sjftp/rainbowfm/73_1429665825726.aac', 'mp3', '', '', '2', '0', '1429694572', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2375', '177', '73', '/upload/sjftp/rainbowfm/73_1429666772618.aac', 'mp3', '', '', '1', '0', '1429695519', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2377', '177', '127', '/upload/sjftp/rainbowfm/127_1429666939820.aac', 'mp3', '', '', '1', '0', '1429695687', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2379', '177', '73', '/upload/sjftp/rainbowfm/73_1429667781216.aac', 'mp3', '', '', '1', '0', '1429696527', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2381', '177', '73', '/upload/sjftp/rainbowfm/73_1429667815604.aac', 'mp3', '', '', '1', '0', '1429696562', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2383', '177', '73', '/upload/sjftp/rainbowfm/73_1429667989819.aac', 'mp3', '', '', '1', '0', '1429696736', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2385', '177', '153', '/upload/sjftp/rainbowfm/153_1429668359529.aac', 'mp3', '', '', '1', '0', '1429697114', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2387', '177', '73', '/upload/sjftp/rainbowfm/73_1429668436348.aac', 'mp3', '', '', '1', '0', '1429697183', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2389', '177', '73', '/upload/sjftp/rainbowfm/73_1429668630177.aac', 'mp3', '', '', '1', '0', '1429697376', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2391', '177', '127', '/upload/sjftp/rainbowfm/127_1429670639182.aac', 'mp3', '', '', '1', '0', '1429699386', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2393', '123', '73', '/upload/sjftp/rainbowfm/73_1429671264818.aac', 'mp3', '', '', '2', '0', '1429700011', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2395', '177', '73', '/upload/sjftp/rainbowfm/73_1429672364126.aac', 'mp3', '', '', '1', '0', '1429700659', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2397', '177', '73', '/upload/sjftp/rainbowfm/73_1429672405148.aac', 'mp3', '', '', '1', '0', '1429700700', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2399', '177', '73', '/upload/sjftp/rainbowfm/73_1429672125265.aac', 'mp3', '', '', '1', '0', '1429700871', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2401', '123', '73', '/upload/sjftp/rainbowfm/73_1429672772978.aac', 'mp3', '', '', '2', '0', '1429701519', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2403', '177', '73', '/upload/sjftp/rainbowfm/73_1429673285985.aac', 'mp3', '', '', '1', '0', '1429701580', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2405', '177', '73', '/upload/sjftp/rainbowfm/73_1429673325371.aac', 'mp3', '', '', '1', '0', '1429701619', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2407', '177', '73', '/upload/sjftp/rainbowfm/73_1429673689728.aac', 'mp3', '', '', '1', '0', '1429702435', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2409', '125', '127', '‘统计', 'char', '', '', '2', '0', '1429703016', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2411', '125', '73', '/upload/sjftp/rainbowfm/73_1429674875320.aac', 'mp3', '', '', '2', '0', '1429703621', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2413', '177', '73', '/upload/sjftp/rainbowfm/73_1429675088689.aac', 'mp3', '', '', '1', '0', '1429703835', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2415', '177', '73', '/upload/sjftp/rainbowfm/73_1429675116686.aac', 'mp3', '', '', '1', '0', '1429703863', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2417', '125', '73', '/upload/sjftp/rainbowfm/73_1429675262628.aac', 'mp3', '', '', '2', '0', '1429704009', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2419', '127', '73', '/upload/sjftp/rainbowfm/73_1429675297025.aac', 'mp3', '', '', '2', '0', '1429704043', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2421', '127', '73', '/upload/sjftp/rainbowfm/73_1429675329642.aac', 'mp3', '', '', '2', '0', '1429704076', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2423', '127', '73', '/upload/sjftp/rainbowfm/73_1429675621371.aac', 'mp3', '', '', '2', '0', '1429704367', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2425', '177', '73', '/upload/sjftp/rainbowfm/73_1429675626123.aac', 'mp3', '', '', '1', '0', '1429704372', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2427', '177', '115', '/upload/sjftp/rainbowfm/1429680857.aac', 'mp3', '', '', '1', '0', '1429709605', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2429', '177', '115', '/upload/sjftp/rainbowfm/1429680987.aac', 'mp3', '', '', '1', '0', '1429709734', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2431', '177', '115', '/upload/sjftp/rainbowfm/1429681008.aac', 'mp3', '', '', '1', '0', '1429709755', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2433', '133', '115', '寸步难行', 'char', '', '', '2', '0', '1429713707', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2435', '133', '115', '/upload/sjftp/rainbowfm/115_1429684969136.aac', 'mp3', '', '', '2', '0', '1429713714', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2437', '0', '66', '意见', 'char', '', '', '3', '0', '1429714167', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2439', '163', '66', '/upload/sjftp/rainbowfm/1429685849.aac', 'mp3', '', '', '1', '0', '1429714595', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2441', '163', '66', '/upload/sjftp/rainbowfm/1429685929.jpg', 'img', '', '', '1', '0', '1429714675', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2443', '163', '66', '/upload/sjftp/rainbowfm/1429685946.jpg', 'img', '', '', '1', '0', '1429714692', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2445', '135', '141', '呵呵', 'char', '', '', '2', '0', '1429716798', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2447', '135', '141', 'hello', 'char', '', '', '2', '0', '1429716859', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2449', '0', '66', '好', 'char', '', '', '3', '0', '1429716968', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2451', '87', '73', '/upload/sjftp/rainbowfm/73_1429689949131.png', 'img', '', '', '2', '0', '1429718694', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2453', '87', '73', '/upload/sjftp/rainbowfm/73_1429689959781.aac', 'mp3', '', '', '2', '0', '1429718705', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2455', '87', '73', '/upload/sjftp/rainbowfm/73_1429690482364.aac', 'mp3', '', '', '2', '0', '1429718775', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2457', '87', '73', '/upload/sjftp/rainbowfm/73_1429690536747.aac', 'mp3', '', '', '2', '0', '1429718830', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2459', '87', '73', '/upload/sjftp/rainbowfm/73_1429690673872.aac', 'mp3', '', '', '2', '0', '1429718967', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2461', '155', '115', 'En', 'char', '', '', '1', '0', '1429719047', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2463', '155', '115', 'En', 'char', '', '', '1', '0', '1429719053', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2465', '87', '73', '/upload/sjftp/rainbowfm/73_1429690536875.aac', 'mp3', '', '', '2', '0', '1429719281', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2467', '115', '115', '意见意见', 'char', '', '', '3', '0', '1429719306', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2469', '151', '141', '爱你', 'char', '', '', '1', '0', '1429719402', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2471', '87', '115', '/upload/sjftp/rainbowfm/115_1429690819732.aac', 'mp3', '', '', '2', '0', '1429719565', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2473', '87', '115', '/upload/sjftp/rainbowfm/115_1429690845415.aac', 'mp3', '', '', '2', '0', '1429719590', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2475', '87', '115', '/upload/sjftp/rainbowfm/115_1429690882351.aac', 'mp3', '', '', '2', '0', '1429719627', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2477', '87', '73', '/upload/sjftp/rainbowfm/73_1429690913976.aac', 'mp3', '', '', '2', '0', '1429719659', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2479', '0', '141', '能', 'char', '', '', '3', '0', '1429719673', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2481', '177', '73', '资料', 'char', '', '', '1', '0', '1429720030', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2483', '87', '73', '/upload/sjftp/rainbowfm/73_1429691569967.aac', 'mp3', '', '', '2', '0', '1429720315', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2485', '87', '115', '/upload/sjftp/rainbowfm/115_1429691905281.aac', 'mp3', '', '', '2', '0', '1429720650', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2487', '73', '73', '资料资料', 'char', '', '', '3', '0', '1429720654', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2489', '73', '73', '/upload/sjftp/rainbowfm/73_1429692369359.aac', 'mp3', '', '', '3', '0', '1429720662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2491', '73', '73', '/upload/sjftp/rainbowfm/73_1429692411331.aac', 'mp3', '', '', '3', '0', '1429720704', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2493', '87', '115', '/upload/sjftp/rainbowfm/115_1429692025555.aac', 'mp3', '', '', '2', '0', '1429720770', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2495', '151', '73', '第', 'char', '', '', '1', '0', '1429721369', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2497', '177', '133', '/upload/sjftp/rainbowfm/1429693727.aac', 'mp3', '', '', '1', '0', '1429722473', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2499', '177', '133', '/upload/sjftp/rainbowfm/1429693732.aac', 'mp3', '', '', '1', '0', '1429722477', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2501', '177', '133', '/upload/sjftp/rainbowfm/1429693737.aac', 'mp3', '', '', '1', '0', '1429722482', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2503', '177', '133', '/upload/sjftp/rainbowfm/1429693745.aac', 'mp3', '', '', '1', '0', '1429722490', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2505', '177', '133', '/upload/sjftp/rainbowfm/1429693757.aac', 'mp3', '', '', '1', '0', '1429722503', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2507', '177', '133', '/upload/sjftp/rainbowfm/1429693777.jpg', 'img', '', '', '1', '0', '1429722523', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2509', '177', '133', 'hi', 'char', '', '', '1', '0', '1429722555', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2511', '177', '133', '/upload/sjftp/rainbowfm/1429694264.aac', 'mp3', '', '', '1', '0', '1429723010', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2513', '177', '115', '/upload/sjftp/rainbowfm/115_1429695689794.aac', 'mp3', '', '', '1', '0', '1429695694', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2515', '177', '115', '/upload/sjftp/rainbowfm/115_1429695710614.aac', 'mp3', '', '', '1', '0', '1429695710', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2517', '177', '115', '/upload/sjftp/rainbowfm/115_1429695720566.aac', 'mp3', '', '', '1', '0', '1429695720', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2519', '151', '59', '/upload/sjftp/rainbowfm/1429695745.aac', 'mp3', '', '', '1', '0', '1429695746', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2521', '177', '115', '/upload/sjftp/rainbowfm/115_1429695755235.aac', 'mp3', '', '', '1', '0', '1429695754', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2523', '177', '115', '/upload/sjftp/rainbowfm/115_1429695769161.aac', 'mp3', '', '', '1', '0', '1429695768', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2525', '121', '59', 'hi', 'char', '', '', '2', '0', '1429696550', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2527', '121', '59', '好的', 'char', '', '', '2', '0', '1429696562', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2529', '121', '115', '把你们', 'char', '', '', '2', '0', '1429696702', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2531', '121', '115', '/upload/sjftp/rainbowfm/115_1429696714679.png', 'img', '', '', '2', '0', '1429696714', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2533', '121', '59', '/upload/sjftp/rainbowfm/1429696769.aac', 'mp3', '', '', '2', '0', '1429696770', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2535', '121', '59', '/upload/sjftp/rainbowfm/1429696787.aac', 'mp3', '', '', '2', '0', '1429696788', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2537', '121', '59', 'hi', 'char', '', '', '2', '0', '1429696818', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2539', '121', '59', '哈哈哈哈哈哈哈', 'char', '', '', '2', '0', '1429696849', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2541', '121', '115', '哈哈哈哈哈', 'char', '', '', '2', '0', '1429696870', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2543', '121', '59', '哈哈哈哈哈哈哈', 'char', '', '', '2', '0', '1429696874', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2545', '121', '59', 'hi', 'char', '', '', '2', '0', '1429696890', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2547', '121', '115', '喝的', 'char', '', '', '2', '0', '1429696910', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2549', '121', '115', '/upload/sjftp/rainbowfm/115_1429696928777.png', 'img', '', '', '2', '0', '1429696928', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2551', '121', '115', '可口可乐了路', 'char', '', '', '2', '0', '1429696985', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2553', '121', '59', '哥哥哥哥红红火火', 'char', '', '', '2', '0', '1429697020', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2555', '177', '59', '/upload/sjftp/rainbowfm/1429700828.aac', 'mp3', '', '', '1', '0', '1429700830', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2557', '151', '141', '可是可是老师了', 'char', '', '', '1', '0', '1429702900', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2559', '0', '141', '/upload/sjftp/rainbowfm/1429702960.aac', 'mp3', '', '', '3', '0', '1429702960', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2561', '177', '59', '/upload/sjftp/rainbowfm/1429703089.aac', 'mp3', '', '', '1', '0', '1429703090', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2563', '0', '141', '和 v 规划', 'char', '', '', '3', '0', '1429703397', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2565', '0', '141', '/upload/sjftp/rainbowfm/1429703417.jpg', 'img', '', '', '3', '0', '1429703417', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2567', '0', '59', '/upload/sjftp/rainbowfm/1429704718.aac', 'mp3', '', '', '3', '0', '1429704719', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2569', '0', '59', 'hi', 'char', '', '', '3', '0', '1429704739', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2571', '0', '59', '这是什么意思', 'char', '', '', '3', '0', '1429704756', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2573', '0', '59', 'hi', 'char', '', '', '3', '0', '1429705079', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2575', '159', '59', '/upload/sjftp/rainbowfm/1429705506.aac', 'mp3', '', '', '1', '0', '1429705507', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2577', '177', '59', '/upload/sjftp/rainbowfm/1429705535.aac', 'mp3', '', '', '1', '0', '1429705536', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2579', '0', '141', '/upload/sjftp/rainbowfm/1429706167.aac', 'mp3', '', '', '3', '0', '1429706166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2581', '177', '73', '/upload/sjftp/rainbowfm/73_1429706622712.aac', 'mp3', '', '', '1', '0', '1429706170', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2583', '151', '141', '/upload/sjftp/rainbowfm/1429706460.aac', 'mp3', '', '', '1', '0', '1429706460', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2585', '151', '141', '/upload/sjftp/rainbowfm/1429706480.jpg', 'img', '', '', '1', '0', '1429706480', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2587', '153', '141', '呵呵', 'char', '', '', '1', '0', '1429706878', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2589', '177', '73', '/upload/sjftp/rainbowfm/73_1429706916438.aac', 'mp3', '', '', '1', '0', '1429706914', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2591', '177', '73', '/upload/sjftp/rainbowfm/73_1429706987926.aac', 'mp3', '', '', '1', '0', '1429706986', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2593', '177', '73', '/upload/sjftp/rainbowfm/73_1429707409671.aac', 'mp3', '', '', '1', '0', '1429707408', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2595', '177', '73', '/upload/sjftp/rainbowfm/73_1429707536258.aac', 'mp3', '', '', '1', '0', '1429707534', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2597', '177', '73', '/upload/sjftp/rainbowfm/73_1429707858950.aac', 'mp3', '', '', '1', '0', '1429707857', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2599', '115', '115', '来看一看我发了一件呢。∞', 'char', '', '', '3', '0', '1429708197', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2601', '177', '115', '/upload/sjftp/rainbowfm/115_1429708377559.aac', 'mp3', '', '', '1', '0', '1429708376', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2603', '59', '59', '我要提个意见，我要看，安卓我的意见能发吗？', 'char', '', '', '3', '0', '1429709133', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2605', '177', '59', '/upload/sjftp/rainbowfm/59_1429709300187.aac', 'mp3', '', '', '1', '0', '1429709299', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2607', '177', '59', '/upload/sjftp/rainbowfm/59_1429709793756.aac', 'mp3', '', '', '1', '0', '1429709793', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2609', '129', '59', '/upload/sjftp/rainbowfm/1429709982.aac', 'mp3', '', '', '2', '0', '1429709983', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2611', '157', '141', '刚刚', 'char', '', '', '1', '0', '1429710009', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2613', '157', '141', '/upload/sjftp/rainbowfm/1429710030.aac', 'mp3', '', '', '1', '0', '1429710029', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2615', '157', '141', '/upload/sjftp/rainbowfm/1429710087.aac', 'mp3', '', '', '1', '0', '1429710086', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2617', '157', '141', '/upload/sjftp/rainbowfm/1429710097.aac', 'mp3', '', '', '1', '0', '1429710095', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2619', '157', '141', '/upload/sjftp/rainbowfm/1429710111.aac', 'mp3', '', '', '1', '0', '1429710110', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2621', '177', '59', '/upload/sjftp/rainbowfm/1429710161.aac', 'mp3', '', '', '1', '0', '1429710161', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2623', '129', '141', '刚刚过', 'char', '', '', '2', '0', '1429710178', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2625', '129', '141', '呵呵', 'char', '', '', '2', '0', '1429710191', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2627', '129', '141', '/upload/sjftp/rainbowfm/1429710208.aac', 'mp3', '', '', '2', '0', '1429710206', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2629', '129', '141', '噶', 'char', '', '', '2', '0', '1429710252', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2631', '129', '141', '/upload/sjftp/rainbowfm/1429710500.jpg', 'img', '', '', '2', '0', '1429710500', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2633', '129', '141', '/upload/sjftp/rainbowfm/1429710568.aac', 'mp3', '', '', '2', '0', '1429710567', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2635', '153', '141', '/upload/sjftp/rainbowfm/1429710824.aac', 'mp3', '', '', '1', '0', '1429710822', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2637', '153', '141', '/upload/sjftp/rainbowfm/1429710858.jpg', 'img', '', '', '1', '0', '1429710857', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2639', '177', '59', '/upload/sjftp/rainbowfm/1429711145.aac', 'mp3', '', '', '1', '0', '1429711146', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2641', '177', '59', '/upload/sjftp/rainbowfm/1429711176.aac', 'mp3', '', '', '1', '0', '1429711176', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2643', '177', '59', '/upload/sjftp/rainbowfm/1429711208.aac', 'mp3', '', '', '1', '0', '1429711208', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2645', '177', '59', '/upload/sjftp/rainbowfm/1429711239.aac', 'mp3', '', '', '1', '0', '1429711239', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2647', '177', '127', '/upload/sjftp/rainbowfm/127_1429711459601.aac', 'mp3', '', '', '1', '0', '1429711458', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2649', '177', '127', '/upload/sjftp/rainbowfm/127_1429711587285.aac', 'mp3', '', '', '1', '0', '1429711586', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2651', '177', '127', '/upload/sjftp/rainbowfm/127_1429711664494.aac', 'mp3', '', '', '1', '0', '1429711662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2653', '0', '155', '呵呵', 'char', '', '', '3', '0', '1429711762', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2655', '177', '127', '/upload/sjftp/rainbowfm/127_1429711955725.aac', 'mp3', '', '', '1', '0', '1429711954', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2657', '177', '127', '/upload/sjftp/rainbowfm/127_1429712058740.aac', 'mp3', '', '', '1', '0', '1429712057', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2659', '177', '127', '/upload/sjftp/rainbowfm/127_1429712222381.aac', 'mp3', '', '', '1', '0', '1429712221', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2661', '177', '127', '/upload/sjftp/rainbowfm/127_1429712234762.aac', 'mp3', '', '', '1', '0', '1429712232', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2663', '177', '127', '/upload/sjftp/rainbowfm/127_1429712275088.aac', 'mp3', '', '', '1', '0', '1429712273', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2665', '177', '127', '/upload/sjftp/rainbowfm/127_1429712464045.aac', 'mp3', '', '', '1', '0', '1429712462', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2667', '177', '127', '/upload/sjftp/rainbowfm/127_1429712772778.aac', 'mp3', '', '', '1', '0', '1429712770', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2669', '177', '127', '/upload/sjftp/rainbowfm/127_1429712791328.aac', 'mp3', '', '', '1', '0', '1429712789', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2671', '177', '127', '/upload/sjftp/rainbowfm/127_1429712840345.aac', 'mp3', '', '', '1', '0', '1429712841', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2673', '177', '127', '/upload/sjftp/rainbowfm/127_1429712866098.aac', 'mp3', '', '', '1', '0', '1429712863', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2675', '177', '59', '/upload/sjftp/rainbowfm/59_1429713331469.aac', 'mp3', '', '', '1', '0', '1429713334', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2677', '177', '127', '/upload/sjftp/rainbowfm/127_1429714292871.aac', 'mp3', '', '', '1', '0', '1429714290', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2679', '177', '127', '/upload/sjftp/rainbowfm/127_1429714305774.aac', 'mp3', '', '', '1', '0', '1429714303', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2681', '177', '127', '/upload/sjftp/rainbowfm/127_1429714323025.aac', 'mp3', '', '', '1', '0', '1429714320', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2683', '177', '127', '/upload/sjftp/rainbowfm/127_1429714349365.aac', 'mp3', '', '', '1', '0', '1429714347', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2685', '177', '127', '/upload/sjftp/rainbowfm/127_1429714374170.aac', 'mp3', '', '', '1', '0', '1429714371', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2687', '177', '59', '/upload/sjftp/rainbowfm/1429715233.aac', 'mp3', '', '', '1', '0', '1429715233', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2689', '177', '59', '/upload/sjftp/rainbowfm/1429715252.aac', 'mp3', '', '', '1', '0', '1429715251', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2691', '177', '59', '/upload/sjftp/rainbowfm/1429715347.aac', 'mp3', '', '', '1', '0', '1429715347', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2693', '177', '59', '/upload/sjftp/rainbowfm/1429715415.aac', 'mp3', '', '', '1', '0', '1429715415', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2695', '177', '59', '/upload/sjftp/rainbowfm/1429715519.aac', 'mp3', '', '', '1', '0', '1429715519', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2697', '177', '59', '/upload/sjftp/rainbowfm/1429715528.aac', 'mp3', '', '', '1', '0', '1429715528', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2699', '177', '59', '/upload/sjftp/rainbowfm/1429715536.aac', 'mp3', '', '', '1', '0', '1429715536', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2701', '177', '59', '/upload/sjftp/rainbowfm/1429715552.aac', 'mp3', '', '', '1', '0', '1429715552', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2703', '177', '59', '/upload/sjftp/rainbowfm/1429715662.aac', 'mp3', '', '', '1', '0', '1429715662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2705', '177', '59', '/upload/sjftp/rainbowfm/1429715889.aac', 'mp3', '', '', '1', '0', '1429715889', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2707', '177', '59', '/upload/sjftp/rainbowfm/59_1429715979231.aac', 'mp3', '', '', '1', '0', '1429715978', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2709', '177', '59', '/upload/sjftp/rainbowfm/1429741904.aac', 'mp3', '', '', '1', '0', '1429741904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2711', '177', '59', '/upload/sjftp/rainbowfm/1429743236.aac', 'mp3', '', '', '1', '0', '1429743236', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2713', '177', '59', '/upload/sjftp/rainbowfm/1429743309.aac', 'mp3', '', '', '1', '0', '1429743309', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2715', '177', '59', '/upload/sjftp/rainbowfm/1429743431.aac', 'mp3', '', '', '1', '0', '1429743430', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2717', '177', '59', '/upload/sjftp/rainbowfm/1429743662.aac', 'mp3', '', '', '1', '0', '1429743662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2719', '177', '59', '/upload/sjftp/rainbowfm/1429748675.aac', 'mp3', '', '', '1', '0', '1429748677', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2721', '177', '59', '/upload/sjftp/rainbowfm/1429751080.aac', 'mp3', '', '', '1', '0', '1429751079', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2723', '177', '153', '/upload/sjftp/rainbowfm/153_1429752042075.aac', 'mp3', '', '', '1', '0', '1429752048', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2725', '177', '153', '/upload/sjftp/rainbowfm/153_1429752108705.aac', 'mp3', '', '', '1', '0', '1429752109', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2727', '177', '59', '/upload/sjftp/rainbowfm/1429752110.aac', 'mp3', '', '', '1', '0', '1429752110', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2729', '177', '59', '/upload/sjftp/rainbowfm/1429752123.aac', 'mp3', '', '', '1', '0', '1429752122', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2731', '177', '153', '/upload/sjftp/rainbowfm/153_1429752161003.aac', 'mp3', '', '', '1', '0', '1429752161', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2733', '177', '59', '/upload/sjftp/rainbowfm/1429752208.aac', 'mp3', '', '', '1', '0', '1429752207', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2735', '177', '153', '/upload/sjftp/rainbowfm/153_1429752265378.aac', 'mp3', '', '', '1', '0', '1429752267', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2737', '177', '153', '/upload/sjftp/rainbowfm/153_1429752324276.aac', 'mp3', '', '', '1', '0', '1429752324', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2739', '177', '59', '/upload/sjftp/rainbowfm/1429752423.aac', 'mp3', '', '', '1', '0', '1429752422', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2741', '177', '59', '多录一点', 'char', '', '', '1', '0', '1429752461', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2743', '177', '59', '/upload/sjftp/rainbowfm/1429752567.aac', 'mp3', '', '', '1', '0', '1429752567', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2745', '151', '73', '兔兔', 'char', '', '', '1', '0', '1429752577', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2747', '151', '66', 'vvv', 'char', '', '', '1', '0', '1429752619', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2749', '151', '73', '我要用', 'char', '', '', '1', '0', '1429752635', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2751', '177', '59', '34525 你继续录起', 'char', '', '', '1', '0', '1429752652', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2753', '177', '153', '/upload/sjftp/rainbowfm/153_1429752809496.aac', 'mp3', '', '', '1', '0', '1429752839', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2755', '177', '153', '/upload/sjftp/rainbowfm/153_1429752905202.aac', 'mp3', '', '', '1', '0', '1429752914', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2757', '177', '153', '/upload/sjftp/rainbowfm/153_1429752989465.aac', 'mp3', '', '', '1', '0', '1429752990', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2759', '73', '73', '某些', 'char', '', '', '3', '0', '1429753029', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2761', '107', '73', '噢耶', 'char', '', '', '2', '0', '1429753051', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2763', '177', '153', '/upload/sjftp/rainbowfm/153_1429753146838.aac', 'mp3', '', '', '1', '0', '1429753160', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2765', '151', '73', '/upload/sjftp/rainbowfm/73_1429753628512.aac', 'mp3', '', '', '1', '0', '1429753174', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2767', '177', '66', '/upload/sjftp/rainbowfm/1429753329.aac', 'mp3', '', '', '1', '0', '1429753328', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2769', '177', '153', '/upload/sjftp/rainbowfm/153_1429753328462.aac', 'mp3', '', '', '1', '0', '1429753329', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2771', '177', '66', '/upload/sjftp/rainbowfm/1429753402.aac', 'mp3', '', '', '1', '0', '1429753401', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2773', '177', '66', '/upload/sjftp/rainbowfm/1429753580.aac', 'mp3', '', '', '1', '0', '1429753578', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2775', '177', '153', '/upload/sjftp/rainbowfm/153_1429753686245.aac', 'mp3', '', '', '1', '0', '1429753687', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2777', '177', '66', '/upload/sjftp/rainbowfm/1429753718.aac', 'mp3', '', '', '1', '0', '1429753717', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2779', '177', '66', '/upload/sjftp/rainbowfm/1429753749.aac', 'mp3', '', '', '1', '0', '1429753748', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2781', '177', '66', '/upload/sjftp/rainbowfm/1429753785.aac', 'mp3', '', '', '1', '0', '1429753783', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2783', '177', '153', '/upload/sjftp/rainbowfm/153_1429753794037.aac', 'mp3', '', '', '1', '0', '1429753794', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2785', '151', '73', '他是谁', 'char', '', '', '1', '0', '1429753800', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2787', '151', '73', 'qq', 'char', '', '', '1', '0', '1429753812', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2789', '177', '153', '/upload/sjftp/rainbowfm/153_1429753847675.aac', 'mp3', '', '', '1', '0', '1429753848', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2791', '177', '66', '/upload/sjftp/rainbowfm/1429753878.aac', 'mp3', '', '', '1', '0', '1429753877', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2793', '177', '66', '/upload/sjftp/rainbowfm/1429753906.aac', 'mp3', '', '', '1', '0', '1429753905', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2795', '177', '153', '/upload/sjftp/rainbowfm/153_1429753924086.aac', 'mp3', '', '', '1', '0', '1429753924', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2797', '177', '153', '/upload/sjftp/rainbowfm/153_1429753965549.aac', 'mp3', '', '', '1', '0', '1429753966', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2799', '177', '127', '/upload/sjftp/rainbowfm/127_1429754005293.aac', 'mp3', '', '', '1', '0', '1429754004', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2801', '177', '66', '/upload/sjftp/rainbowfm/1429754007.aac', 'mp3', '', '', '1', '0', '1429754005', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2803', '177', '66', '/upload/sjftp/rainbowfm/1429754027.aac', 'mp3', '', '', '1', '0', '1429754025', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2805', '177', '66', '/upload/sjftp/rainbowfm/1429754057.aac', 'mp3', '', '', '1', '0', '1429754055', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2807', '177', '153', '/upload/sjftp/rainbowfm/153_1429754233694.aac', 'mp3', '', '', '1', '0', '1429754234', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2809', '177', '66', '/upload/sjftp/rainbowfm/1429754311.aac', 'mp3', '', '', '1', '0', '1429754310', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2811', '177', '66', '/upload/sjftp/rainbowfm/1429754403.aac', 'mp3', '', '', '1', '0', '1429754402', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2813', '177', '59', '/upload/sjftp/rainbowfm/1429754403.aac', 'mp3', '', '', '1', '0', '1429754403', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2815', '151', '73', 'www', 'char', '', '', '1', '0', '1429754429', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2817', '177', '66', '/upload/sjftp/rainbowfm/1429754444.aac', 'mp3', '', '', '1', '0', '1429754442', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2819', '177', '66', '/upload/sjftp/rainbowfm/1429754457.aac', 'mp3', '', '', '1', '0', '1429754456', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2821', '177', '66', '/upload/sjftp/rainbowfm/1429754475.aac', 'mp3', '', '', '1', '0', '1429754473', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2823', '177', '66', '/upload/sjftp/rainbowfm/1429754494.aac', 'mp3', '', '', '1', '0', '1429754493', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2825', '177', '66', '/upload/sjftp/rainbowfm/1429754509.aac', 'mp3', '', '', '1', '0', '1429754508', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2827', '177', '66', '/upload/sjftp/rainbowfm/1429754566.aac', 'mp3', '', '', '1', '0', '1429754565', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2829', '151', '73', 'www噢', 'char', '', '', '1', '0', '1429754680', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2831', '151', '73', '哦', 'char', '', '', '1', '0', '1429754702', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2833', '151', '73', '呃', 'char', '', '', '1', '0', '1429754723', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2835', '177', '66', '/upload/sjftp/rainbowfm/1429754740.aac', 'mp3', '', '', '1', '0', '1429754739', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2837', '177', '153', '/upload/sjftp/rainbowfm/153_1429754875575.aac', 'mp3', '', '', '1', '0', '1429754875', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2839', '151', '73', '1', 'char', '', '', '1', '0', '1429754911', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2841', '151', '73', '2', 'char', '', '', '1', '0', '1429755057', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2843', '177', '153', '/upload/sjftp/rainbowfm/153_1429755059139.aac', 'mp3', '', '', '1', '0', '1429755059', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2845', '151', '73', '/upload/sjftp/rainbowfm/73_1429755523081.aac', 'mp3', '', '', '1', '0', '1429755069', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2847', '73', '73', '太阳园', 'char', '', '', '3', '0', '1429755238', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2849', '177', '153', '/upload/sjftp/rainbowfm/153_1429755234529.aac', 'mp3', '', '', '1', '0', '1429755245', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2851', '177', '59', '/upload/sjftp/rainbowfm/1429755261.aac', 'mp3', '', '', '1', '0', '1429755261', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2853', '177', '153', '/upload/sjftp/rainbowfm/153_1429755384019.aac', 'mp3', '', '', '1', '0', '1429755383', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2855', '177', '153', '/upload/sjftp/rainbowfm/153_1429755496116.aac', 'mp3', '', '', '1', '0', '1429755495', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2857', '177', '153', '/upload/sjftp/rainbowfm/153_1429756030894.aac', 'mp3', '', '', '1', '0', '1429756033', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2859', '127', '127', '默默', 'char', '', '', '3', '0', '1429756253', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2861', '73', '73', 'zz', 'char', '', '', '3', '0', '1429756809', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2863', '107', '73', '我', 'char', '', '', '2', '0', '1429756835', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2865', '107', '73', '我想问一下', 'char', '', '', '2', '0', '1429756856', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2867', '73', '73', 'qq', 'char', '', '', '3', '0', '1429756873', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2869', '151', '73', 'www', 'char', '', '', '1', '0', '1429756898', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2871', '73', '73', '我要用', 'char', '', '', '3', '0', '1429758857', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2873', '177', '155', '/upload/sjftp/rainbowfm/155_1429759617685.aac', 'mp3', '', '', '1', '0', '1429759616', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2875', '177', '153', '/upload/sjftp/rainbowfm/153_1429760936175.aac', 'mp3', '', '', '1', '0', '1429760938', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2877', '177', '153', '/upload/sjftp/rainbowfm/153_1429760977872.aac', 'mp3', '', '', '1', '0', '1429760982', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2879', '177', '153', '/upload/sjftp/rainbowfm/153_1429761323792.aac', 'mp3', '', '', '1', '0', '1429761332', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2881', '177', '59', '/upload/sjftp/rainbowfm/1429761384.aac', 'mp3', '', '', '1', '0', '1429761383', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2883', '177', '59', '/upload/sjftp/rainbowfm/1429764353.aac', 'mp3', '', '', '1', '0', '1429764352', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2885', '177', '62', '/upload/sjftp/rainbowfm/62_1429767685929.aac', 'mp3', '', '', '1', '0', '1429767688', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2887', '177', '155', '/upload/sjftp/rainbowfm/155_1429770044812.aac', 'mp3', '', '', '1', '0', '1429770042', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2889', '177', '155', '观音桥到红旗河沟', 'char', '', '', '1', '0', '1429770181', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2891', '0', '66', '到底', 'char', '', '', '3', '0', '1429771021', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2893', '0', '66', '到底', 'char', '', '', '3', '0', '1429771031', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2895', '0', '66', '发', 'char', '', '', '3', '0', '1429771051', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2897', '151', '66', '/upload/sjftp/rainbowfm/1429771928.jpg', 'img', '', '', '1', '0', '1429771926', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2899', '151', '66', '/upload/sjftp/rainbowfm/1429772047.jpg', 'img', '', '', '1', '0', '1429772045', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2901', '151', '66', '/upload/sjftp/rainbowfm/1429772064.jpg', 'img', '', '', '1', '0', '1429772062', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2903', '151', '66', '/upload/sjftp/rainbowfm/1429772092.jpg', 'img', '', '', '1', '0', '1429772090', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2905', '151', '66', '好', 'char', '', '', '1', '0', '1429772209', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2907', '151', '66', '好', 'char', '', '', '1', '0', '1429772226', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2909', '153', '66', '好', 'char', '', '', '1', '0', '1429772241', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2911', '115', '66', '好', 'char', '', '', '2', '0', '1429772255', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2913', '177', '59', 'hi', 'char', '', '', '1', '0', '1429772449', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2915', '177', '59', 'hi', 'char', '', '', '1', '0', '1429772456', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2917', '117', '59', 'hi', 'char', '', '', '2', '0', '1429772470', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2919', '117', '59', 'a', 'char', '', '', '2', '0', '1429772475', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2921', '117', '59', 'a', 'char', '', '', '2', '0', '1429772482', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2923', '117', '59', 'a', 'char', '', '', '2', '0', '1429772487', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2925', '117', '59', 'w', 'char', '', '', '2', '0', '1429772494', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2927', '117', '59', 'a', 'char', '', '', '2', '0', '1429772498', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2929', '117', '59', 'e', 'char', '', '', '2', '0', '1429772502', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2931', '117', '59', 'o', 'char', '', '', '2', '0', '1429772507', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2933', '117', '59', '清清浅浅', 'char', '', '', '2', '0', '1429772516', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2935', '117', '66', '好', 'char', '', '', '2', '0', '1429772565', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2937', '117', '66', '/upload/sjftp/rainbowfm/66_1429772799946.aac', 'mp3', '', '', '2', '0', '1429772797', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2939', '117', '66', '好', 'char', '', '', '2', '0', '1429772857', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2941', '151', '66', '哈', 'char', '', '', '1', '0', '1429772882', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2943', '117', '127', '/upload/sjftp/rainbowfm/127_1429772900510.aac', 'mp3', '', '', '2', '0', '1429772896', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2945', '151', '66', '好', 'char', '', '', '1', '0', '1429772900', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2947', '117', '66', '好', 'char', '', '', '2', '0', '1429772915', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2949', '151', '66', 'hao', 'char', '', '', '1', '0', '1429772982', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2951', '117', '127', '/upload/sjftp/rainbowfm/127_1429773157178.png', 'img', '', '', '2', '0', '1429773153', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2953', '151', '66', '好', 'char', '', '', '1', '0', '1429773174', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2955', '117', '66', '哦', 'char', '', '', '2', '0', '1429773239', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2957', '117', '66', '/upload/sjftp/rainbowfm/66_1429773488360.aac', 'mp3', '', '', '2', '0', '1429773485', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2959', '117', '66', '/upload/sjftp/rainbowfm/1429773515.aac', 'mp3', '', '', '2', '0', '1429773513', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2961', '177', '62', '....', 'char', '', '', '1', '0', '1429773517', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2963', '117', '66', '/upload/sjftp/rainbowfm/1429773545.aac', 'mp3', '', '', '2', '0', '1429773542', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2965', '117', '127', '/upload/sjftp/rainbowfm/127_1429773854569.aac', 'mp3', '', '', '2', '0', '1429773850', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2967', '151', '66', '/upload/sjftp/rainbowfm/1429774190.aac', 'mp3', '', '', '1', '0', '1429774188', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2969', '151', '66', '/upload/sjftp/rainbowfm/1429774297.aac', 'mp3', '', '', '1', '0', '1429774294', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2971', '151', '66', '/upload/sjftp/rainbowfm/1429774331.aac', 'mp3', '', '', '1', '0', '1429774329', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2973', '151', '66', '/upload/sjftp/rainbowfm/1429774339.aac', 'mp3', '', '', '1', '0', '1429774336', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2975', '151', '66', '/upload/sjftp/rainbowfm/1429774342.aac', 'mp3', '', '', '1', '0', '1429774339', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2977', '151', '66', '/upload/sjftp/rainbowfm/1429774359.aac', 'mp3', '', '', '1', '0', '1429774357', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2979', '151', '66', '/upload/sjftp/rainbowfm/1429774369.aac', 'mp3', '', '', '1', '0', '1429774367', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2981', '151', '66', '/upload/sjftp/rainbowfm/1429774776.aac', 'mp3', '', '', '1', '0', '1429774775', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2983', '151', '66', '/upload/sjftp/rainbowfm/1429774906.aac', 'mp3', '', '', '1', '0', '1429774904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2985', '151', '66', '/upload/sjftp/rainbowfm/1429775868.aac', 'mp3', '', '', '1', '0', '1429775866', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2987', '151', '66', '/upload/sjftp/rainbowfm/1429775884.aac', 'mp3', '', '', '1', '0', '1429775881', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2989', '117', '127', '/upload/sjftp/rainbowfm/127_1429775975794.aac', 'mp3', '', '', '2', '0', '1429775971', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2991', '151', '66', '/upload/sjftp/rainbowfm/1429775980.aac', 'mp3', '', '', '1', '0', '1429775977', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2993', '117', '127', '/upload/sjftp/rainbowfm/127_1429776002521.aac', 'mp3', '', '', '2', '0', '1429775998', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2995', '119', '127', '/upload/sjftp/rainbowfm/127_1429776050396.aac', 'mp3', '', '', '2', '0', '1429776049', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2997', '151', '127', '/upload/sjftp/rainbowfm/127_1429776262200.aac', 'mp3', '', '', '1', '0', '1429776257', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('2999', '151', '127', '/upload/sjftp/rainbowfm/127_1429776406693.png', 'img', '', '', '1', '0', '1429776402', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3001', '177', '127', '/upload/sjftp/rainbowfm/127_1429776549625.png', 'img', '', '', '1', '0', '1429776545', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3003', '177', '127', '/upload/sjftp/rainbowfm/127_1429776555382.aac', 'mp3', '', '', '1', '0', '1429776558', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3005', '177', '127', 'Bi', 'char', '', '', '1', '0', '1429776572', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3007', '177', '127', 'Bi', 'char', '', '', '1', '0', '1429776572', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3009', '177', '127', 'Bi', 'char', '', '', '1', '0', '1429776572', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3011', '177', '127', 'Ji', 'char', '', '', '1', '0', '1429776579', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3013', '177', '59', '/upload/sjftp/rainbowfm/1429778153.aac', 'mp3', '', '', '1', '0', '1429778152', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3015', '151', '59', '好', 'char', '', '', '1', '0', '1429781316', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3017', '121', '93', '/upload/sjftp/rainbowfm/1429781418.jpg', 'img', '', '', '2', '0', '1429781413', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3019', '121', '59', '/upload/sjftp/rainbowfm/1429783614.jpg', 'img', '', '', '2', '0', '1429783614', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3021', '121', '59', '/upload/sjftp/rainbowfm/1429783692.jpg', 'img', '', '', '2', '0', '1429783695', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3023', '121', '59', 'hi', 'char', '', '', '2', '0', '1429783727', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3025', '121', '59', '/upload/sjftp/rainbowfm/1429784136.jpg', 'img', '', '', '2', '0', '1429784145', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3027', '121', '59', '/upload/sjftp/rainbowfm/1429784311.aac', 'mp3', '', '', '2', '0', '1429784308', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3029', '177', '73', 'Vvv', 'char', '', '', '1', '0', '1429785893', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3031', '177', '73', '/upload/sjftp/rainbowfm/73_1429785907912.aac', 'mp3', '', '', '1', '0', '1429785903', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3033', '177', '59', '/upload/sjftp/rainbowfm/59_1429826143810.aac', 'mp3', '', '', '1', '0', '1429826143', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3035', '177', '59', 'Happy', 'char', '', '', '1', '0', '1429826166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3037', '177', '59', '/upload/sjftp/rainbowfm/59_1429826180764.png', 'img', '', '', '1', '0', '1429826179', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3039', '177', '59', 'Hello', 'char', '', '', '1', '0', '1429826191', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3041', '177', '59', '/upload/sjftp/rainbowfm/59_1429826206044.aac', 'mp3', '', '', '1', '0', '1429826205', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3043', '177', '59', '/upload/sjftp/rainbowfm/1429826336.aac', 'mp3', '', '', '1', '0', '1429826336', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3045', '177', '59', '/upload/sjftp/rainbowfm/1429826389.aac', 'mp3', '', '', '1', '0', '1429826389', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3047', '177', '59', '/upload/sjftp/rainbowfm/1429828239.aac', 'mp3', '', '', '1', '0', '1429828239', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3049', '177', '59', '/upload/sjftp/rainbowfm/1429828536.aac', 'mp3', '', '', '1', '0', '1429828538', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3051', '177', '59', '/upload/sjftp/rainbowfm/1429828566.aac', 'mp3', '', '', '1', '0', '1429828565', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3053', '177', '59', '/upload/sjftp/rainbowfm/1429828616.aac', 'mp3', '', '', '1', '0', '1429828615', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3055', '177', '93', '/upload/sjftp/rainbowfm/1429828808.aac', 'mp3', '', '', '1', '0', '1429828807', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3057', '177', '93', '/upload/sjftp/rainbowfm/1429828824.aac', 'mp3', '', '', '1', '0', '1429828823', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3059', '177', '93', '/upload/sjftp/rainbowfm/1429828834.aac', 'mp3', '', '', '1', '0', '1429828833', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3061', '177', '93', '/upload/sjftp/rainbowfm/1429828841.aac', 'mp3', '', '', '1', '0', '1429828840', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3063', '177', '93', '/upload/sjftp/rainbowfm/1429828852.aac', 'mp3', '', '', '1', '0', '1429828851', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3065', '177', '93', '/upload/sjftp/rainbowfm/1429828861.aac', 'mp3', '', '', '1', '0', '1429828860', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3067', '177', '93', '/upload/sjftp/rainbowfm/1429828870.aac', 'mp3', '', '', '1', '0', '1429828869', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3069', '177', '93', '/upload/sjftp/rainbowfm/1429828881.aac', 'mp3', '', '', '1', '0', '1429828880', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3071', '177', '93', '/upload/sjftp/rainbowfm/1429828890.aac', 'mp3', '', '', '1', '0', '1429828889', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3073', '177', '93', '/upload/sjftp/rainbowfm/1429828899.aac', 'mp3', '', '', '1', '0', '1429828898', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3075', '177', '59', '/upload/sjftp/rainbowfm/59_1429828910232.aac', 'mp3', '', '', '1', '0', '1429828909', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3077', '177', '93', '/upload/sjftp/rainbowfm/1429828911.aac', 'mp3', '', '', '1', '0', '1429828910', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3079', '177', '93', '/upload/sjftp/rainbowfm/1429828921.aac', 'mp3', '', '', '1', '0', '1429828920', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3081', '177', '59', '/upload/sjftp/rainbowfm/59_1429828921992.aac', 'mp3', '', '', '1', '0', '1429828928', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3083', '177', '59', '/upload/sjftp/rainbowfm/59_1429828924371.aac', 'mp3', '', '', '1', '0', '1429828929', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3085', '177', '93', '/upload/sjftp/rainbowfm/1429828982.aac', 'mp3', '', '', '1', '0', '1429828981', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3087', '177', '93', '/upload/sjftp/rainbowfm/1429828990.aac', 'mp3', '', '', '1', '0', '1429828989', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3089', '177', '93', '/upload/sjftp/rainbowfm/1429829001.aac', 'mp3', '', '', '1', '0', '1429829000', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3091', '177', '93', '/upload/sjftp/rainbowfm/1429829011.aac', 'mp3', '', '', '1', '0', '1429829010', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3093', '177', '93', '/upload/sjftp/rainbowfm/1429829027.aac', 'mp3', '', '', '1', '0', '1429829027', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3095', '177', '93', '/upload/sjftp/rainbowfm/1429829034.aac', 'mp3', '', '', '1', '0', '1429829033', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3097', '177', '93', '/upload/sjftp/rainbowfm/1429829039.aac', 'mp3', '', '', '1', '0', '1429829038', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3099', '177', '93', '/upload/sjftp/rainbowfm/1429829045.aac', 'mp3', '', '', '1', '0', '1429829045', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3101', '177', '93', '/upload/sjftp/rainbowfm/1429829053.aac', 'mp3', '', '', '1', '0', '1429829052', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3103', '177', '93', '/upload/sjftp/rainbowfm/1429829059.aac', 'mp3', '', '', '1', '0', '1429829058', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3105', '177', '93', '/upload/sjftp/rainbowfm/1429829064.aac', 'mp3', '', '', '1', '0', '1429829063', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3107', '177', '93', '/upload/sjftp/rainbowfm/1429829076.aac', 'mp3', '', '', '1', '0', '1429829075', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3109', '177', '93', '/upload/sjftp/rainbowfm/1429829082.aac', 'mp3', '', '', '1', '0', '1429829082', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3111', '177', '93', '/upload/sjftp/rainbowfm/1429829091.aac', 'mp3', '', '', '1', '0', '1429829090', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3113', '177', '93', '/upload/sjftp/rainbowfm/1429829103.aac', 'mp3', '', '', '1', '0', '1429829102', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3115', '177', '93', '/upload/sjftp/rainbowfm/1429829427.aac', 'mp3', '', '', '1', '0', '1429829426', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3117', '177', '93', '/upload/sjftp/rainbowfm/1429829465.aac', 'mp3', '', '', '1', '0', '1429829464', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3119', '177', '93', '/upload/sjftp/rainbowfm/1429829487.aac', 'mp3', '', '', '1', '0', '1429829487', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3121', '177', '93', '/upload/sjftp/rainbowfm/1429829515.aac', 'mp3', '', '', '1', '0', '1429829514', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3123', '177', '93', '/upload/sjftp/rainbowfm/1429829555.aac', 'mp3', '', '', '1', '0', '1429829554', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3125', '177', '93', '/upload/sjftp/rainbowfm/1429829604.aac', 'mp3', '', '', '1', '0', '1429829603', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3127', '177', '93', '/upload/sjftp/rainbowfm/1429829662.aac', 'mp3', '', '', '1', '0', '1429829661', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3129', '177', '93', '/upload/sjftp/rainbowfm/1429829707.aac', 'mp3', '', '', '1', '0', '1429829706', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3131', '177', '93', '/upload/sjftp/rainbowfm/1429829718.aac', 'mp3', '', '', '1', '0', '1429829717', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3133', '177', '93', '/upload/sjftp/rainbowfm/1429831576.aac', 'mp3', '', '', '1', '0', '1429831575', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3135', '177', '93', '/upload/sjftp/rainbowfm/1429831660.aac', 'mp3', '', '', '1', '0', '1429831659', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3137', '177', '93', '/upload/sjftp/rainbowfm/1429831753.aac', 'mp3', '', '', '1', '0', '1429831753', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3139', '177', '93', '/upload/sjftp/rainbowfm/1429831898.aac', 'mp3', '', '', '1', '0', '1429831897', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3141', '177', '93', '/upload/sjftp/rainbowfm/1429831963.aac', 'mp3', '', '', '1', '0', '1429831962', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3143', '177', '93', '/upload/sjftp/rainbowfm/1429831969.aac', 'mp3', '', '', '1', '0', '1429831968', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3145', '177', '93', '/upload/sjftp/rainbowfm/1429832020.aac', 'mp3', '', '', '1', '0', '1429832020', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3147', '177', '93', '/upload/sjftp/rainbowfm/1429832074.aac', 'mp3', '', '', '1', '0', '1429832073', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3149', '177', '93', '/upload/sjftp/rainbowfm/1429832114.aac', 'mp3', '', '', '1', '0', '1429832113', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3151', '177', '93', '/upload/sjftp/rainbowfm/1429832572.aac', 'mp3', '', '', '1', '0', '1429832572', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3153', '177', '93', '/upload/sjftp/rainbowfm/1429832689.aac', 'mp3', '', '', '1', '0', '1429832689', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3155', '177', '93', '/upload/sjftp/rainbowfm/1429832743.aac', 'mp3', '', '', '1', '0', '1429832743', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3157', '177', '93', '/upload/sjftp/rainbowfm/1429832747.aac', 'mp3', '', '', '1', '0', '1429832746', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3159', '177', '93', '/upload/sjftp/rainbowfm/1429832799.aac', 'mp3', '', '', '1', '0', '1429832798', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3161', '177', '93', '/upload/sjftp/rainbowfm/1429832862.aac', 'mp3', '', '', '1', '0', '1429832862', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3163', '177', '93', '/upload/sjftp/rainbowfm/1429832916.aac', 'mp3', '', '', '1', '0', '1429832915', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3165', '177', '93', '/upload/sjftp/rainbowfm/1429832969.aac', 'mp3', '', '', '1', '0', '1429832968', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3167', '177', '93', '/upload/sjftp/rainbowfm/1429833022.aac', 'mp3', '', '', '1', '0', '1429833021', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3169', '177', '93', '/upload/sjftp/rainbowfm/1429833077.aac', 'mp3', '', '', '1', '0', '1429833076', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3171', '177', '93', '/upload/sjftp/rainbowfm/1429833130.aac', 'mp3', '', '', '1', '0', '1429833129', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3173', '177', '93', '/upload/sjftp/rainbowfm/1429833218.aac', 'mp3', '', '', '1', '0', '1429833217', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3175', '177', '93', '/upload/sjftp/rainbowfm/1429833270.aac', 'mp3', '', '', '1', '0', '1429833270', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3177', '177', '93', '/upload/sjftp/rainbowfm/1429833323.aac', 'mp3', '', '', '1', '0', '1429833322', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3179', '177', '93', '/upload/sjftp/rainbowfm/1429833356.aac', 'mp3', '', '', '1', '0', '1429833355', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3181', '73', '73', 'Jnn', 'char', '', '', '3', '0', '1429838258', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3183', '73', '73', '/upload/sjftp/rainbowfm/73_1429838265702.aac', 'mp3', '', '', '3', '0', '1429838262', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3185', '73', '73', '/upload/sjftp/rainbowfm/73_1429838280884.png', 'img', '', '', '3', '0', '1429838277', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3187', '151', '59', '好', 'char', '', '', '1', '0', '1429840167', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3189', '151', '59', '好啊', 'char', '', '', '1', '0', '1429840184', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3191', '151', '59', '好咯好', 'char', '', '', '1', '0', '1429840194', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3193', '177', '153', '/upload/sjftp/rainbowfm/153_1429840485779.aac', 'mp3', '', '', '1', '0', '1429840495', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3195', '151', '66', '/upload/sjftp/rainbowfm/1429840528.aac', 'mp3', '', '', '1', '0', '1429840528', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3197', '177', '153', '/upload/sjftp/rainbowfm/153_1429840539066.aac', 'mp3', '', '', '1', '0', '1429840539', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3199', '151', '59', '/upload/sjftp/rainbowfm/1429840575.aac', 'mp3', '', '', '1', '0', '1429840575', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3201', '177', '153', '/upload/sjftp/rainbowfm/153_1429840602363.aac', 'mp3', '', '', '1', '0', '1429840602', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3203', '151', '59', '/upload/sjftp/rainbowfm/1429840622.aac', 'mp3', '', '', '1', '0', '1429840622', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3205', '107', '59', '/upload/sjftp/rainbowfm/1429840697.aac', 'mp3', '', '', '2', '0', '1429840696', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3207', '177', '153', '/upload/sjftp/rainbowfm/153_1429840661957.aac', 'mp3', '', '', '1', '0', '1429840704', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3209', '107', '59', '/upload/sjftp/rainbowfm/1429840708.aac', 'mp3', '', '', '2', '0', '1429840706', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3211', '107', '59', '/upload/sjftp/rainbowfm/1429840728.aac', 'mp3', '', '', '2', '0', '1429840727', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3213', '177', '153', '/upload/sjftp/rainbowfm/153_1429840742651.aac', 'mp3', '', '', '1', '0', '1429840743', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3215', '107', '59', '/upload/sjftp/rainbowfm/1429840757.aac', 'mp3', '', '', '2', '0', '1429840756', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3217', '107', '59', '/upload/sjftp/rainbowfm/1429840776.aac', 'mp3', '', '', '2', '0', '1429840775', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3219', '107', '59', '/upload/sjftp/rainbowfm/1429840799.aac', 'mp3', '', '', '2', '0', '1429840797', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3221', '177', '153', '/upload/sjftp/rainbowfm/153_1429840801603.aac', 'mp3', '', '', '1', '0', '1429840809', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3223', '107', '59', '/upload/sjftp/rainbowfm/1429840839.aac', 'mp3', '', '', '2', '0', '1429840838', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3225', '107', '59', '/upload/sjftp/rainbowfm/1429840886.aac', 'mp3', '', '', '2', '0', '1429840885', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3227', '107', '59', '/upload/sjftp/rainbowfm/1429840910.aac', 'mp3', '', '', '2', '0', '1429840909', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3229', '107', '59', '/upload/sjftp/rainbowfm/1429840933.aac', 'mp3', '', '', '2', '0', '1429840932', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3231', '107', '59', '/upload/sjftp/rainbowfm/1429840954.aac', 'mp3', '', '', '2', '0', '1429840953', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3233', '107', '59', '/upload/sjftp/rainbowfm/1429840974.aac', 'mp3', '', '', '2', '0', '1429840973', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3235', '177', '153', '/upload/sjftp/rainbowfm/153_1429841000508.aac', 'mp3', '', '', '1', '0', '1429841005', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3237', '107', '59', '/upload/sjftp/rainbowfm/1429841008.aac', 'mp3', '', '', '2', '0', '1429841007', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3239', '107', '59', '/upload/sjftp/rainbowfm/1429841038.aac', 'mp3', '', '', '2', '0', '1429841037', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3241', '177', '153', '/upload/sjftp/rainbowfm/153_1429841062667.aac', 'mp3', '', '', '1', '0', '1429841063', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3243', '107', '59', '/upload/sjftp/rainbowfm/1429841068.aac', 'mp3', '', '', '2', '0', '1429841067', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3245', '107', '59', '/upload/sjftp/rainbowfm/1429841101.aac', 'mp3', '', '', '2', '0', '1429841100', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3247', '177', '59', '/upload/sjftp/rainbowfm/1429841146.aac', 'mp3', '', '', '1', '0', '1429841146', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3249', '177', '59', '/upload/sjftp/rainbowfm/1429841172.aac', 'mp3', '', '', '1', '0', '1429841171', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3251', '177', '153', '/upload/sjftp/rainbowfm/153_1429841199834.aac', 'mp3', '', '', '1', '0', '1429841204', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3253', '177', '59', '/upload/sjftp/rainbowfm/1429841206.aac', 'mp3', '', '', '1', '0', '1429841205', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3255', '177', '59', '/upload/sjftp/rainbowfm/1429841243.aac', 'mp3', '', '', '1', '0', '1429841243', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3257', '177', '59', '/upload/sjftp/rainbowfm/1429841280.aac', 'mp3', '', '', '1', '0', '1429841279', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3259', '177', '59', '/upload/sjftp/rainbowfm/1429841309.aac', 'mp3', '', '', '1', '0', '1429841308', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3261', '177', '59', '/upload/sjftp/rainbowfm/1429841346.aac', 'mp3', '', '', '1', '0', '1429841345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3263', '177', '59', '/upload/sjftp/rainbowfm/1429841360.aac', 'mp3', '', '', '1', '0', '1429841360', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3265', '177', '59', '/upload/sjftp/rainbowfm/1429841371.aac', 'mp3', '', '', '1', '0', '1429841370', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3267', '177', '59', '/upload/sjftp/rainbowfm/1429841387.aac', 'mp3', '', '', '1', '0', '1429841387', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3269', '177', '59', '/upload/sjftp/rainbowfm/1429841395.aac', 'mp3', '', '', '1', '0', '1429841395', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3271', '177', '59', '/upload/sjftp/rainbowfm/1429841412.aac', 'mp3', '', '', '1', '0', '1429841412', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3273', '59', '59', '看', 'char', '', '', '3', '0', '1429841423', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3275', '177', '59', '/upload/sjftp/rainbowfm/1429841423.aac', 'mp3', '', '', '1', '0', '1429841423', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3277', '177', '59', '/upload/sjftp/rainbowfm/1429841433.aac', 'mp3', '', '', '1', '0', '1429841432', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3279', '59', '59', '/upload/sjftp/rainbowfm/59_1429841435625.png', 'img', '', '', '3', '0', '1429841434', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3281', '59', '59', '/upload/sjftp/rainbowfm/59_1429841446860.aac', 'mp3', '', '', '3', '0', '1429841444', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3283', '177', '59', '/upload/sjftp/rainbowfm/1429841447.aac', 'mp3', '', '', '1', '0', '1429841446', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3285', '177', '59', '/upload/sjftp/rainbowfm/1429841465.aac', 'mp3', '', '', '1', '0', '1429841464', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3287', '177', '59', '/upload/sjftp/rainbowfm/1429841480.aac', 'mp3', '', '', '1', '0', '1429841479', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3289', '177', '59', '/upload/sjftp/rainbowfm/1429841497.aac', 'mp3', '', '', '1', '0', '1429841498', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3291', '177', '59', '/upload/sjftp/rainbowfm/1429841508.aac', 'mp3', '', '', '1', '0', '1429841508', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3293', '151', '66', '/upload/sjftp/rainbowfm/1429841640.aac', 'mp3', '', '', '1', '0', '1429841639', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3295', '177', '153', '/upload/sjftp/rainbowfm/153_1429841731816.aac', 'mp3', '', '', '1', '0', '1429841739', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3297', '151', '59', '/upload/sjftp/rainbowfm/1429841880.aac', 'mp3', '', '', '1', '0', '1429841881', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3299', '151', '59', '/upload/sjftp/rainbowfm/1429841894.aac', 'mp3', '', '', '1', '0', '1429841894', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3301', '151', '59', '/upload/sjftp/rainbowfm/1429841904.aac', 'mp3', '', '', '1', '0', '1429841903', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3303', '151', '59', '/upload/sjftp/rainbowfm/1429841914.aac', 'mp3', '', '', '1', '0', '1429841913', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3305', '151', '59', '/upload/sjftp/rainbowfm/1429841924.aac', 'mp3', '', '', '1', '0', '1429841923', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3307', '107', '59', '/upload/sjftp/rainbowfm/1429842875.aac', 'mp3', '', '', '2', '0', '1429842875', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3309', '107', '59', '嗯嗯', 'char', '', '', '2', '0', '1429843172', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3311', '151', '66', '/upload/sjftp/rainbowfm/1429843245.aac', 'mp3', '', '', '1', '0', '1429843244', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3313', '107', '59', '/upload/sjftp/rainbowfm/59_1429843255568.png', 'img', '', '', '2', '0', '1429843253', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3315', '151', '66', '/upload/sjftp/rainbowfm/1429843267.aac', 'mp3', '', '', '1', '0', '1429843267', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3317', '151', '66', '/upload/sjftp/rainbowfm/1429843279.aac', 'mp3', '', '', '1', '0', '1429843278', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3319', '151', '66', '/upload/sjftp/rainbowfm/1429843285.aac', 'mp3', '', '', '1', '0', '1429843284', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3321', '151', '66', '/upload/sjftp/rainbowfm/1429843290.aac', 'mp3', '', '', '1', '0', '1429843288', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3323', '151', '66', '/upload/sjftp/rainbowfm/1429843427.aac', 'mp3', '', '', '1', '0', '1429843427', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3325', '151', '66', '/upload/sjftp/rainbowfm/1429843492.aac', 'mp3', '', '', '1', '0', '1429843491', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3327', '151', '66', '/upload/sjftp/rainbowfm/1429843531.aac', 'mp3', '', '', '1', '0', '1429843530', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3329', '151', '66', '/upload/sjftp/rainbowfm/1429843544.aac', 'mp3', '', '', '1', '0', '1429843543', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3331', '151', '66', '/upload/sjftp/rainbowfm/1429843587.aac', 'mp3', '', '', '1', '0', '1429843588', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3333', '177', '59', '/upload/sjftp/rainbowfm/1429843671.aac', 'mp3', '', '', '1', '0', '1429843671', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3335', '177', '59', '/upload/sjftp/rainbowfm/1429843971.aac', 'mp3', '', '', '1', '0', '1429843971', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3337', '151', '66', '/upload/sjftp/rainbowfm/1429844369.aac', 'mp3', '', '', '1', '0', '1429844368', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3339', '151', '66', '/upload/sjftp/rainbowfm/1429844380.aac', 'mp3', '', '', '1', '0', '1429844379', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3341', '151', '66', '/upload/sjftp/rainbowfm/1429844388.aac', 'mp3', '', '', '1', '0', '1429844386', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3343', '151', '66', '/upload/sjftp/rainbowfm/1429844458.aac', 'mp3', '', '', '1', '0', '1429844466', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3345', '151', '66', '/upload/sjftp/rainbowfm/1429844552.jpg', 'img', '', '', '1', '0', '1429844556', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3347', '151', '66', '/upload/sjftp/rainbowfm/1429844583.aac', 'mp3', '', '', '1', '0', '1429844588', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3349', '151', '66', '/upload/sjftp/rainbowfm/1429844623.aac', 'mp3', '', '', '1', '0', '1429844641', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3351', '151', '66', '/upload/sjftp/rainbowfm/1429844673.aac', 'mp3', '', '', '1', '0', '1429844688', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3353', '151', '66', '/upload/sjftp/rainbowfm/1429844703.aac', 'mp3', '', '', '1', '0', '1429844703', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3355', '151', '66', '/upload/sjftp/rainbowfm/1429844712.aac', 'mp3', '', '', '1', '0', '1429844710', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3357', '151', '66', '/upload/sjftp/rainbowfm/1429844718.aac', 'mp3', '', '', '1', '0', '1429844718', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3359', '151', '66', '/upload/sjftp/rainbowfm/1429844727.aac', 'mp3', '', '', '1', '0', '1429844725', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3361', '151', '66', '/upload/sjftp/rainbowfm/1429844732.aac', 'mp3', '', '', '1', '0', '1429844731', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3363', '177', '59', '/upload/sjftp/rainbowfm/1429844781.aac', 'mp3', '', '', '1', '0', '1429844781', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3365', '151', '66', '/upload/sjftp/rainbowfm/1429844845.aac', 'mp3', '', '', '1', '0', '1429844844', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3367', '151', '66', '/upload/sjftp/rainbowfm/1429844864.aac', 'mp3', '', '', '1', '0', '1429844862', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3369', '151', '66', '/upload/sjftp/rainbowfm/1429844877.aac', 'mp3', '', '', '1', '0', '1429844884', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3371', '151', '66', '/upload/sjftp/rainbowfm/1429844901.aac', 'mp3', '', '', '1', '0', '1429844903', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3373', '177', '62', '/upload/sjftp/rainbowfm/62_1429844967411.aac', 'mp3', '', '', '1', '0', '1429844971', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3375', '151', '66', '/upload/sjftp/rainbowfm/1429844994.aac', 'mp3', '', '', '1', '0', '1429845001', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3377', '151', '66', '/upload/sjftp/rainbowfm/1429845057.aac', 'mp3', '', '', '1', '0', '1429845063', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3379', '177', '59', '/upload/sjftp/rainbowfm/1429845071.aac', 'mp3', '', '', '1', '0', '1429845071', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3381', '151', '66', '/upload/sjftp/rainbowfm/1429845099.aac', 'mp3', '', '', '1', '0', '1429845099', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3383', '177', '59', '/upload/sjftp/rainbowfm/1429845124.aac', 'mp3', '', '', '1', '0', '1429845124', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3385', '151', '66', '/upload/sjftp/rainbowfm/1429845316.jpg', 'img', '', '', '1', '0', '1429845346', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3387', '151', '66', '/upload/sjftp/rainbowfm/1429845729.aac', 'mp3', '', '', '1', '0', '1429845734', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3389', '151', '66', '/upload/sjftp/rainbowfm/1429845763.aac', 'mp3', '', '', '1', '0', '1429845766', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3391', '151', '66', '/upload/sjftp/rainbowfm/1429846102.aac', 'mp3', '', '', '1', '0', '1429846116', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3393', '151', '66', '/upload/sjftp/rainbowfm/1429846125.aac', 'mp3', '', '', '1', '0', '1429846127', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3395', '151', '66', '/upload/sjftp/rainbowfm/1429846183.aac', 'mp3', '', '', '1', '0', '1429846183', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3397', '151', '66', '/upload/sjftp/rainbowfm/1429846193.aac', 'mp3', '', '', '1', '0', '1429846192', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3399', '151', '66', '/upload/sjftp/rainbowfm/1429846255.aac', 'mp3', '', '', '1', '0', '1429846271', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3401', '151', '66', '/upload/sjftp/rainbowfm/1429846321.aac', 'mp3', '', '', '1', '0', '1429846329', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3403', '151', '66', '/upload/sjftp/rainbowfm/1429846348.aac', 'mp3', '', '', '1', '0', '1429846387', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3405', '151', '66', '/upload/sjftp/rainbowfm/1429846433.aac', 'mp3', '', '', '1', '0', '1429846437', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3407', '151', '66', '/upload/sjftp/rainbowfm/1429846506.jpg', 'img', '', '', '1', '0', '1429846541', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3409', '151', '66', '/upload/sjftp/rainbowfm/1429846591.aac', 'mp3', '', '', '1', '0', '1429846597', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3411', '151', '66', '/upload/sjftp/rainbowfm/1429846628.jpg', 'img', '', '', '1', '0', '1429846673', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3413', '151', '66', '/upload/sjftp/rainbowfm/1429846837.aac', 'mp3', '', '', '1', '0', '1429846838', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3415', '151', '66', '/upload/sjftp/rainbowfm/1429847315.aac', 'mp3', '', '', '1', '0', '1429847314', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3417', '151', '66', '/upload/sjftp/rainbowfm/1429847341.aac', 'mp3', '', '', '1', '0', '1429847340', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3419', '151', '66', '/upload/sjftp/rainbowfm/1429847428.aac', 'mp3', '', '', '1', '0', '1429847442', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3421', '151', '66', '/upload/sjftp/rainbowfm/1429847901.aac', 'mp3', '', '', '1', '0', '1429847903', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3423', '151', '66', '/upload/sjftp/rainbowfm/1429848214.aac', 'mp3', '', '', '1', '0', '1429848218', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3425', '151', '66', '/upload/sjftp/rainbowfm/1429848229.aac', 'mp3', '', '', '1', '0', '1429848229', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3427', '151', '66', '/upload/sjftp/rainbowfm/1429848238.aac', 'mp3', '', '', '1', '0', '1429848243', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3429', '151', '66', '/upload/sjftp/rainbowfm/1429848262.aac', 'mp3', '', '', '1', '0', '1429848263', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3431', '151', '66', '/upload/sjftp/rainbowfm/1429848362.aac', 'mp3', '', '', '1', '0', '1429848367', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3433', '177', '59', '/upload/sjftp/rainbowfm/1429848512.aac', 'mp3', '', '', '1', '0', '1429848512', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3435', '177', '59', '/upload/sjftp/rainbowfm/1429850203.aac', 'mp3', '', '', '1', '0', '1429850202', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3437', '177', '59', '/upload/sjftp/rainbowfm/1429850698.aac', 'mp3', '', '', '1', '0', '1429850698', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3439', '177', '59', '/upload/sjftp/rainbowfm/1429850720.aac', 'mp3', '', '', '1', '0', '1429850719', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3441', '113', '59', '/upload/sjftp/rainbowfm/1429851069.aac', 'mp3', '', '', '2', '0', '1429851071', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3443', '113', '59', '/upload/sjftp/rainbowfm/1429851093.aac', 'mp3', '', '', '2', '0', '1429851095', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3445', '113', '59', '/upload/sjftp/rainbowfm/1429851266.aac', 'mp3', '', '', '2', '0', '1429851271', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3447', '115', '59', '/upload/sjftp/rainbowfm/59_1429853407572.aac', 'mp3', '', '', '2', '0', '1429853405', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3449', '177', '59', '/upload/sjftp/rainbowfm/59_1429853546030.aac', 'mp3', '', '', '1', '0', '1429853543', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3451', '177', '59', '/upload/sjftp/rainbowfm/59_1429853558259.aac', 'mp3', '', '', '1', '0', '1429853559', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3453', '177', '59', '/upload/sjftp/rainbowfm/59_1429853588758.png', 'img', '', '', '1', '0', '1429853586', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3455', '177', '59', '/upload/sjftp/rainbowfm/59_1429853606875.aac', 'mp3', '', '', '1', '0', '1429853604', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3457', '177', '59', '/upload/sjftp/rainbowfm/1429855126.aac', 'mp3', '', '', '1', '0', '1429855125', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3459', '177', '133', '/upload/sjftp/rainbowfm/1429855214.aac', 'mp3', '', '', '1', '0', '1429855213', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3461', '177', '133', '/upload/sjftp/rainbowfm/1429855220.aac', 'mp3', '', '', '1', '0', '1429855218', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3463', '177', '133', '/upload/sjftp/rainbowfm/1429855425.aac', 'mp3', '', '', '1', '0', '1429855423', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3465', '151', '66', '/upload/sjftp/rainbowfm/1429855640.aac', 'mp3', '', '', '1', '0', '1429855638', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3467', '151', '66', '/upload/sjftp/rainbowfm/1429856219.aac', 'mp3', '', '', '1', '0', '1429856217', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3469', '151', '66', '还是', 'char', '', '', '1', '0', '1429856895', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3471', '151', '66', '话', 'char', '', '', '1', '0', '1429856902', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3473', '151', '66', '/upload/sjftp/rainbowfm/1429856915.aac', 'mp3', '', '', '1', '0', '1429856913', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3475', '151', '66', '/upload/sjftp/rainbowfm/1429856929.aac', 'mp3', '', '', '1', '0', '1429856926', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3477', '151', '66', '/upload/sjftp/rainbowfm/1429856968.aac', 'mp3', '', '', '1', '0', '1429856967', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3479', '151', '66', '/upload/sjftp/rainbowfm/1429856988.aac', 'mp3', '', '', '1', '0', '1429856986', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3481', '151', '66', '/upload/sjftp/rainbowfm/1429857016.aac', 'mp3', '', '', '1', '0', '1429857014', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3483', '151', '66', '/upload/sjftp/rainbowfm/1429858569.aac', 'mp3', '', '', '1', '0', '1429858567', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3485', '151', '66', '/upload/sjftp/rainbowfm/1429858583.aac', 'mp3', '', '', '1', '0', '1429858580', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3487', '177', '133', '/upload/sjftp/rainbowfm/1429858875.aac', 'mp3', '', '', '1', '0', '1429858872', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3489', '151', '66', '/upload/sjftp/rainbowfm/1429858908.aac', 'mp3', '', '', '1', '0', '1429858907', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3491', '151', '66', '/upload/sjftp/rainbowfm/1429860170.aac', 'mp3', '', '', '1', '0', '1429860168', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3493', '177', '59', 'hi', 'char', '', '', '1', '0', '1429860345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3495', '151', '66', '/upload/sjftp/rainbowfm/1429860830.aac', 'mp3', '', '', '1', '0', '1429860830', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3497', '177', '133', '/upload/sjftp/rainbowfm/1429861891.aac', 'mp3', '', '', '1', '0', '1429861889', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3499', '151', '66', '/upload/sjftp/rainbowfm/1429862031.aac', 'mp3', '', '', '1', '0', '1429862049', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3501', '151', '66', '/upload/sjftp/rainbowfm/1429863096.aac', 'mp3', '', '', '1', '0', '1429863140', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3503', '151', '66', '/upload/sjftp/rainbowfm/1429863431.aac', 'mp3', '', '', '1', '0', '1429863430', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3505', '177', '59', '/upload/sjftp/rainbowfm/1429863691.aac', 'mp3', '', '', '1', '0', '1429863689', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3507', '151', '66', '/upload/sjftp/rainbowfm/1429863898.aac', 'mp3', '', '', '1', '0', '1429863897', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3509', '151', '66', '/upload/sjftp/rainbowfm/1429863904.aac', 'mp3', '', '', '1', '0', '1429863903', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3511', '151', '66', '/upload/sjftp/rainbowfm/1429864057.aac', 'mp3', '', '', '1', '0', '1429864058', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3513', '151', '66', '/upload/sjftp/rainbowfm/1429864849.aac', 'mp3', '', '', '1', '0', '1429864847', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3515', '151', '66', '/upload/sjftp/rainbowfm/1429864870.aac', 'mp3', '', '', '1', '0', '1429864868', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3517', '151', '66', '/upload/sjftp/rainbowfm/1429865347.aac', 'mp3', '', '', '1', '0', '1429865345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3519', '177', '163', '/upload/sjftp/rainbowfm/163_1429865361503.aac', 'mp3', '', '', '4', '0', '1429865364', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3521', '177', '163', '/upload/sjftp/rainbowfm/163_1429865395332.aac', 'mp3', '', '', '5', '0', '1429865392', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3523', '177', '163', '/upload/sjftp/rainbowfm/163_1429865436537.aac', 'mp3', '', '', '5', '0', '1429865434', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3525', '119', '73', '/upload/sjftp/rainbowfm/73_1429865530901.aac', 'mp3', '', '', '2', '0', '1429865526', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3527', '119', '73', '/upload/sjftp/rainbowfm/73_1429865539566.aac', 'mp3', '', '', '2', '0', '1429865534', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3529', '177', '163', '/upload/sjftp/rainbowfm/163_1429865550400.aac', 'mp3', '', '', '5', '0', '1429865548', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3531', '151', '66', '/upload/sjftp/rainbowfm/1429865578.aac', 'mp3', '', '', '1', '0', '1429865575', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3533', '177', '165', '/upload/sjftp/rainbowfm/165_1429865633722.aac', 'mp3', '', '', '6', '0', '1429865632', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3535', '177', '165', '/upload/sjftp/rainbowfm/165_1429866008569.aac', 'mp3', '', '', '6', '0', '1429866004', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3537', '177', '165', '/upload/sjftp/rainbowfm/165_1429866010422.aac', 'mp3', '', '', '6', '0', '1429866006', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3539', '151', '66', '/upload/sjftp/rainbowfm/1429866125.aac', 'mp3', '', '', '1', '0', '1429866122', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3541', '151', '66', '/upload/sjftp/rainbowfm/1429866307.aac', 'mp3', '', '', '1', '0', '1429866304', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3543', '151', '66', '/upload/sjftp/rainbowfm/1429866363.aac', 'mp3', '', '', '1', '0', '1429866360', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3545', '177', '59', '/upload/sjftp/rainbowfm/1429867101.aac', 'mp3', '', '', '1', '0', '1429867099', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3547', '151', '66', '/upload/sjftp/rainbowfm/1429867138.aac', 'mp3', '', '', '1', '0', '1429867135', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3549', '153', '163', '/upload/sjftp/rainbowfm/163_1429867295646.aac', 'mp3', '', '', '1', '0', '1429867290', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3551', '177', '163', '/upload/sjftp/rainbowfm/163_1429867308292.aac', 'mp3', '', '', '5', '0', '1429867303', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3553', '177', '59', '/upload/sjftp/rainbowfm/1429867349.aac', 'mp3', '', '', '1', '0', '1429867353', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3555', '177', '163', '/upload/sjftp/rainbowfm/163_1429867415075.aac', 'mp3', '', '', '5', '0', '1429867410', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3557', '177', '127', '/upload/sjftp/rainbowfm/127_1429867641945.aac', 'mp3', '', '', '4', '0', '1429867642', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3559', '177', '163', '/upload/sjftp/rainbowfm/163_1429867904041.aac', 'mp3', '', '', '4', '0', '1429867903', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3561', '177', '163', '/upload/sjftp/rainbowfm/163_1429867923152.aac', 'mp3', '', '', '5', '0', '1429867926', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3563', '177', '163', '/upload/sjftp/rainbowfm/163_1429867929104.aac', 'mp3', '', '', '5', '0', '1429867926', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3565', '177', '163', '/upload/sjftp/rainbowfm/163_1429867934928.aac', 'mp3', '', '', '5', '0', '1429867931', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3567', '177', '163', '/upload/sjftp/rainbowfm/163_1429868017997.aac', 'mp3', '', '', '5', '0', '1429868013', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3569', '177', '163', '.hi', 'char', '', '', '5', '0', '1429868043', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3571', '177', '163', '.hi hii', 'char', '', '', '5', '0', '1429868043', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3573', '177', '163', '/upload/sjftp/rainbowfm/163_1429868076113.aac', 'mp3', '', '', '5', '0', '1429868070', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3575', '177', '163', '/upload/sjftp/rainbowfm/163_1429868115621.aac', 'mp3', '', '', '5', '0', '1429868110', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3577', '177', '163', '/upload/sjftp/rainbowfm/163_1429868173228.aac', 'mp3', '', '', '5', '0', '1429868168', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3579', '177', '163', '/upload/sjftp/rainbowfm/163_1429868247583.aac', 'mp3', '', '', '5', '0', '1429868243', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3581', '177', '163', '/upload/sjftp/rainbowfm/163_1429868280072.aac', 'mp3', '', '', '5', '0', '1429868275', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3583', '177', '165', '/upload/sjftp/rainbowfm/165_1429868305146.aac', 'mp3', '', '', '6', '0', '1429868300', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3585', '151', '66', '/upload/sjftp/rainbowfm/1429868329.aac', 'mp3', '', '', '1', '0', '1429868327', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3587', '177', '59', '/upload/sjftp/rainbowfm/1429868652.aac', 'mp3', '', '', '1', '0', '1429868650', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3589', '177', '59', '/upload/sjftp/rainbowfm/1429868757.aac', 'mp3', '', '', '1', '0', '1429868755', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3591', '177', '59', '/upload/sjftp/rainbowfm/1429868786.aac', 'mp3', '', '', '1', '0', '1429868784', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3593', '121', '59', '/upload/sjftp/rainbowfm/1429868816.aac', 'mp3', '', '', '2', '0', '1429868814', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3595', '121', '59', '/upload/sjftp/rainbowfm/1429868840.aac', 'mp3', '', '', '2', '0', '1429868838', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3597', '177', '163', '/upload/sjftp/rainbowfm/163_1429869039076.aac', 'mp3', '', '', '4', '0', '1429869034', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3599', '177', '163', '/upload/sjftp/rainbowfm/163_1429869057413.aac', 'mp3', '', '', '4', '0', '1429869053', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3601', '177', '163', '/upload/sjftp/rainbowfm/163_1429869088926.aac', 'mp3', '', '', '4', '0', '1429869084', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3603', '177', '59', '/upload/sjftp/rainbowfm/1429869188.aac', 'mp3', '', '', '1', '0', '1429869186', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3605', '177', '165', '/upload/sjftp/rainbowfm/165_1429869327076.aac', 'mp3', '', '', '4', '0', '1429869321', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3607', '177', '165', '/upload/sjftp/rainbowfm/165_1429869351661.aac', 'mp3', '', '', '5', '0', '1429869345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3609', '121', '59', '/upload/sjftp/rainbowfm/1429869506.aac', 'mp3', '', '', '2', '0', '1429869504', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3611', '177', '59', '/upload/sjftp/rainbowfm/1429869617.aac', 'mp3', '', '', '1', '0', '1429869615', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3613', '151', '66', '/upload/sjftp/rainbowfm/1429869888.aac', 'mp3', '', '', '1', '0', '1429869885', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3615', '123', '66', '/upload/sjftp/rainbowfm/66_1429872546571.png', 'img', '', '', '2', '0', '1429872543', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3617', '123', '66', '古发达国家', 'char', '', '', '2', '0', '1429872579', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3619', '123', '66', '/upload/sjftp/rainbowfm/66_1429872599122.aac', 'mp3', '', '', '2', '0', '1429872595', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3621', '177', '59', '/upload/sjftp/rainbowfm/1429873176.aac', 'mp3', '', '', '1', '0', '1429873175', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3623', '123', '59', '/upload/sjftp/rainbowfm/1429874694.aac', 'mp3', '', '', '2', '0', '1429874693', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3625', '123', '59', '/upload/sjftp/rainbowfm/1429874826.aac', 'mp3', '', '', '2', '0', '1429874824', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3627', '151', '163', '/upload/sjftp/rainbowfm/163_1429875343973.aac', 'mp3', '', '', '1', '0', '1429875339', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3629', '151', '163', '/upload/sjftp/rainbowfm/163_1429875395848.aac', 'mp3', '', '', '1', '0', '1429875391', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3631', '187', '59', 'hello', 'char', '', '', '1', '0', '1429876971', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3633', '177', '163', '开讲啦', 'char', '', '', '5', '0', '1429878576', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3635', '129', '59', '/upload/sjftp/rainbowfm/1429881971.aac', 'mp3', '', '', '2', '0', '1429881968', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3637', '129', '59', '/upload/sjftp/rainbowfm/1429881990.jpg', 'img', '', '', '2', '0', '1429881987', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3639', '177', '59', '/upload/sjftp/rainbowfm/1429912035.aac', 'mp3', '', '', '1', '0', '1429912036', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3641', '99', '59', 'RTSP协议也是广泛使用的直播/点播流媒体协议，最近实现了一个RTSP协议转换RTMP直播协议的程序，为的是可以接收远端设备或服务器的多路RTSP直播数据，实时转换为RTMP直播协议，推送到FMS、Red5、wowza server等RTMP服务器，以实现flash观看RTSP直播源的需求。程序同时也具备从FLV文件获取输入数据并转换RTMP直播。实现的思路分享如下。 要点分析 首先，程序的主要目的，是从多路RTSP输入源中提取AAC编码的音频和H.264编码视频数据，并生成RTMP数据包，然后组装RTM', 'char', '', '', '2', '0', '1429912866', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3643', '99', '59', '字体小', 'char', '', '', '2', '0', '1429913062', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3645', '101', '59', '哈哈', 'char', '', '', '2', '0', '1429913405', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3647', '199', '59', 'hi', 'char', '', '', '1', '0', '1429914539', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3649', '177', '59', '/upload/sjftp/rainbowfm/1429914975.aac', 'mp3', '', '', '1', '0', '1429914976', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3651', '177', '59', '/upload/sjftp/rainbowfm/1429916125.aac', 'mp3', '', '', '1', '0', '1429916126', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3653', '177', '59', '/upload/sjftp/rainbowfm/1429916153.aac', 'mp3', '', '', '1', '0', '1429916153', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3655', '177', '59', '/upload/sjftp/rainbowfm/1429916173.aac', 'mp3', '', '', '1', '0', '1429916173', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3657', '177', '59', '/upload/sjftp/rainbowfm/1429916196.aac', 'mp3', '', '', '1', '0', '1429916196', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3659', '177', '59', '/upload/sjftp/rainbowfm/1429916213.aac', 'mp3', '', '', '1', '0', '1429916213', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3661', '177', '133', '/upload/sjftp/rainbowfm/1429917376.aac', 'mp3', '', '', '1', '0', '1429917376', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3663', '107', '133', '/upload/sjftp/rainbowfm/1429927581.jpg', 'img', '', '', '2', '0', '1429927580', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3665', '115', '133', '好', 'char', '', '', '2', '0', '1429942295', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3667', '115', '133', 'good', 'char', '', '', '2', '0', '1429942303', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3669', '177', '165', '/upload/sjftp/rainbowfm/165_1429946268947.png', 'img', '', '', '4', '0', '1429946265', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3671', '177', '165', '/upload/sjftp/rainbowfm/165_1429946278703.png', 'img', '', '', '4', '0', '1429946275', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3673', '177', '165', '/upload/sjftp/rainbowfm/165_1429946841608.aac', 'mp3', '', '', '6', '0', '1429946838', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3675', '177', '165', '/upload/sjftp/rainbowfm/165_1429947003554.aac', 'mp3', '', '', '6', '0', '1429946997', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3677', '177', '165', '/upload/sjftp/rainbowfm/165_1429947027232.aac', 'mp3', '', '', '5', '0', '1429947021', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3679', '177', '165', '/upload/sjftp/rainbowfm/165_1429947043685.aac', 'mp3', '', '', '6', '0', '1429947037', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3681', '177', '165', '/upload/sjftp/rainbowfm/165_1429947125647.aac', 'mp3', '', '', '5', '0', '1429947119', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3683', '177', '165', '/upload/sjftp/rainbowfm/165_1429947643306.aac', 'mp3', '', '', '6', '0', '1429947637', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3685', '177', '165', '/upload/sjftp/rainbowfm/165_1429947707090.aac', 'mp3', '', '', '5', '0', '1429947701', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3687', '177', '165', '/upload/sjftp/rainbowfm/165_1429947713409.aac', 'mp3', '', '', '6', '0', '1429947707', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3689', '117', '165', '/upload/sjftp/rainbowfm/165_1429947792376.aac', 'mp3', '', '', '2', '0', '1429947786', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3691', '177', '165', '/upload/sjftp/rainbowfm/165_1429947868437.aac', 'mp3', '', '', '6', '0', '1429947865', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3693', '177', '165', '/upload/sjftp/rainbowfm/165_1429947872920.aac', 'mp3', '', '', '5', '0', '1429947869', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3695', '177', '165', '/upload/sjftp/rainbowfm/165_1429947893698.aac', 'mp3', '', '', '6', '0', '1429947888', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3697', '177', '165', '/upload/sjftp/rainbowfm/165_1429947901528.aac', 'mp3', '', '', '5', '0', '1429947895', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3699', '177', '165', '/upload/sjftp/rainbowfm/165_1429949301758.aac', 'mp3', '', '', '6', '0', '1429949296', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3701', '177', '165', '/upload/sjftp/rainbowfm/165_1429950141133.aac', 'mp3', '', '', '5', '0', '1429950135', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3703', '177', '165', '/upload/sjftp/rainbowfm/165_1429950618973.aac', 'mp3', '', '', '6', '0', '1429950613', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3705', '177', '165', '/upload/sjftp/rainbowfm/165_1429951883336.aac', 'mp3', '', '', '6', '0', '1429951877', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3707', '177', '165', '/upload/sjftp/rainbowfm/165_1429951912007.aac', 'mp3', '', '', '5', '0', '1429951905', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3709', '177', '163', '/upload/sjftp/rainbowfm/163_1429952767104.aac', 'mp3', '', '', '5', '0', '1429952764', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3711', '177', '163', '/upload/sjftp/rainbowfm/163_1429953650887.aac', 'mp3', '', '', '5', '0', '1429953647', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3713', '177', '165', '/upload/sjftp/rainbowfm/165_1429955019581.aac', 'mp3', '', '', '6', '0', '1429955013', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3715', '177', '163', '/upload/sjftp/rainbowfm/163_1429955757404.aac', 'mp3', '', '', '5', '0', '1429955754', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3717', '177', '165', '/upload/sjftp/rainbowfm/165_1429955812856.aac', 'mp3', '', '', '6', '0', '1429955806', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3719', '177', '165', '/upload/sjftp/rainbowfm/165_1429955823219.aac', 'mp3', '', '', '6', '0', '1429955816', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3721', '177', '165', '/upload/sjftp/rainbowfm/165_1429955853829.aac', 'mp3', '', '', '5', '0', '1429955847', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3723', '177', '165', '/upload/sjftp/rainbowfm/165_1429955920836.aac', 'mp3', '', '', '6', '0', '1429955914', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3725', '177', '165', '/upload/sjftp/rainbowfm/165_1429956234206.aac', 'mp3', '', '', '5', '0', '1429956227', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3727', '129', '167', '/upload/sjftp/rainbowfm/1429969127.jpg', 'img', '', '', '2', '0', '1429969126', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3729', '129', '167', '/upload/sjftp/rainbowfm/1429969185.aac', 'mp3', '', '', '2', '0', '1429969182', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3731', '177', '165', '/upload/sjftp/rainbowfm/165_1429973276802.aac', 'mp3', '', '', '5', '0', '1429973271', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3733', '177', '165', '/upload/sjftp/rainbowfm/165_1429973330938.aac', 'mp3', '', '', '5', '0', '1429973325', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3735', '177', '165', '/upload/sjftp/rainbowfm/165_1429973352362.aac', 'mp3', '', '', '5', '0', '1429973347', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3737', '177', '165', '/upload/sjftp/rainbowfm/165_1429973516476.aac', 'mp3', '', '', '5', '0', '1429973511', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3739', '177', '165', '/upload/sjftp/rainbowfm/165_1429973668775.aac', 'mp3', '', '', '5', '0', '1429973663', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3741', '177', '163', '/upload/sjftp/rainbowfm/163_1429974015755.aac', 'mp3', '', '', '1', '0', '1429974010', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3743', '177', '165', '/upload/sjftp/rainbowfm/165_1429974224033.aac', 'mp3', '', '', '5', '0', '1429974218', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3745', '177', '165', '/upload/sjftp/rainbowfm/165_1429974247409.aac', 'mp3', '', '', '5', '0', '1429974245', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3747', '177', '165', '/upload/sjftp/rainbowfm/165_1429974282832.aac', 'mp3', '', '', '5', '0', '1429974277', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3749', '177', '165', '/upload/sjftp/rainbowfm/165_1429974316082.aac', 'mp3', '', '', '5', '0', '1429974311', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3751', '177', '165', '/upload/sjftp/rainbowfm/165_1429974470882.aac', 'mp3', '', '', '1', '0', '1429974465', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3753', '177', '165', '/upload/sjftp/rainbowfm/165_1429974524640.aac', 'mp3', '', '', '1', '0', '1429974519', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3755', '177', '165', '/upload/sjftp/rainbowfm/165_1429974643064.aac', 'mp3', '', '', '1', '0', '1429974640', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3757', '177', '165', '/upload/sjftp/rainbowfm/165_1429974728545.aac', 'mp3', '', '', '5', '0', '1429974726', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3759', '177', '165', '/upload/sjftp/rainbowfm/165_1429975018307.aac', 'mp3', '', '', '5', '0', '1429975016', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3761', '177', '165', '/upload/sjftp/rainbowfm/165_1429975152545.aac', 'mp3', '', '', '5', '0', '1429975147', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3763', '177', '163', '/upload/sjftp/rainbowfm/163_1429975229089.aac', 'mp3', '', '', '1', '0', '1429975223', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3765', '177', '163', '/upload/sjftp/rainbowfm/163_1429975316730.aac', 'mp3', '', '', '1', '0', '1429975311', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3767', '177', '165', '/upload/sjftp/rainbowfm/165_1429975443172.aac', 'mp3', '', '', '5', '0', '1429975445', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3769', '177', '165', '/upload/sjftp/rainbowfm/165_1429975472640.aac', 'mp3', '', '', '1', '0', '1429975467', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3771', '177', '165', '/upload/sjftp/rainbowfm/165_1429975531947.aac', 'mp3', '', '', '1', '0', '1429975526', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3773', '177', '165', '/upload/sjftp/rainbowfm/165_1429975570569.aac', 'mp3', '', '', '6', '0', '1429975570', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3775', '177', '165', '/upload/sjftp/rainbowfm/165_1429975682092.aac', 'mp3', '', '', '5', '0', '1429975676', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3777', '177', '165', '/upload/sjftp/rainbowfm/165_1429975714813.aac', 'mp3', '', '', '4', '0', '1429975709', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3779', '177', '165', '/upload/sjftp/rainbowfm/165_1429975770245.aac', 'mp3', '', '', '6', '0', '1429975765', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3781', '177', '165', '还可以', 'char', '', '', '6', '0', '1429975798', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3783', '177', '165', '/upload/sjftp/rainbowfm/165_1429975816110.png', 'img', '', '', '6', '0', '1429975812', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3785', '177', '165', '/upload/sjftp/rainbowfm/165_1429975855388.aac', 'mp3', '', '', '6', '0', '1429975853', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3787', '177', '165', '/upload/sjftp/rainbowfm/165_1429975889903.aac', 'mp3', '', '', '6', '0', '1429975884', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3789', '177', '165', '/upload/sjftp/rainbowfm/165_1429975927521.aac', 'mp3', '', '', '6', '0', '1429975925', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3791', '177', '165', '/upload/sjftp/rainbowfm/165_1429975987657.aac', 'mp3', '', '', '6', '0', '1429975982', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3793', '177', '165', '/upload/sjftp/rainbowfm/165_1429975994626.aac', 'mp3', '', '', '6', '0', '1429975989', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3795', '177', '165', '/upload/sjftp/rainbowfm/165_1429976006616.aac', 'mp3', '', '', '6', '0', '1429976001', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3797', '177', '165', '/upload/sjftp/rainbowfm/165_1429976012664.aac', 'mp3', '', '', '6', '0', '1429976007', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3799', '177', '165', '/upload/sjftp/rainbowfm/165_1429976042435.aac', 'mp3', '', '', '6', '0', '1429976037', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3801', '177', '165', '/upload/sjftp/rainbowfm/165_1429976064505.aac', 'mp3', '', '', '6', '0', '1429976058', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3803', '177', '165', '/upload/sjftp/rainbowfm/165_1429976091699.aac', 'mp3', '', '', '6', '0', '1429976086', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3805', '177', '165', '/upload/sjftp/rainbowfm/165_1429976117711.aac', 'mp3', '', '', '6', '0', '1429976112', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3807', '177', '165', '/upload/sjftp/rainbowfm/165_1429976144052.aac', 'mp3', '', '', '6', '0', '1429976140', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3809', '177', '165', '/upload/sjftp/rainbowfm/165_1429976161801.aac', 'mp3', '', '', '6', '0', '1429976156', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3811', '177', '165', '/upload/sjftp/rainbowfm/165_1429976204761.aac', 'mp3', '', '', '6', '0', '1429976199', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3813', '177', '165', '/upload/sjftp/rainbowfm/165_1429976233505.aac', 'mp3', '', '', '6', '0', '1429976227', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3815', '177', '165', '/upload/sjftp/rainbowfm/165_1429976267780.aac', 'mp3', '', '', '6', '0', '1429976262', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3817', '177', '165', '/upload/sjftp/rainbowfm/165_1429976299635.aac', 'mp3', '', '', '6', '0', '1429976294', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3819', '177', '165', '/upload/sjftp/rainbowfm/165_1429976365654.aac', 'mp3', '', '', '6', '0', '1429976360', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3821', '177', '165', '/upload/sjftp/rainbowfm/165_1429976388310.aac', 'mp3', '', '', '6', '0', '1429976382', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3823', '177', '165', '/upload/sjftp/rainbowfm/165_1429976416586.aac', 'mp3', '', '', '6', '0', '1429976411', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3825', '177', '165', '/upload/sjftp/rainbowfm/165_1429976434458.aac', 'mp3', '', '', '6', '0', '1429976428', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3827', '177', '165', '/upload/sjftp/rainbowfm/165_1429976458168.aac', 'mp3', '', '', '6', '0', '1429976454', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3829', '177', '165', '/upload/sjftp/rainbowfm/165_1429976485092.aac', 'mp3', '', '', '6', '0', '1429976479', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3831', '177', '165', '/upload/sjftp/rainbowfm/165_1429976533299.aac', 'mp3', '', '', '6', '0', '1429976527', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3833', '177', '165', '/upload/sjftp/rainbowfm/165_1429976688100.aac', 'mp3', '', '', '4', '0', '1429976683', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3835', '177', '165', '/upload/sjftp/rainbowfm/165_1429976798930.aac', 'mp3', '', '', '5', '0', '1429976793', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3837', '177', '165', '/upload/sjftp/rainbowfm/165_1429976902481.aac', 'mp3', '', '', '5', '0', '1429976897', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3839', '177', '165', '/upload/sjftp/rainbowfm/165_1429977063504.aac', 'mp3', '', '', '4', '0', '1429977057', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3841', '177', '165', '/upload/sjftp/rainbowfm/165_1429977185741.aac', 'mp3', '', '', '6', '0', '1429977180', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3843', '177', '165', '/upload/sjftp/rainbowfm/165_1429977193776.aac', 'mp3', '', '', '4', '0', '1429977190', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3845', '177', '165', '文殊菩萨之前', 'char', '', '', '4', '0', '1429977294', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3847', '177', '165', '文字', 'char', '', '', '5', '0', '1429977343', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3849', '177', '163', '你在的话就回复我用文字用文字回复。', 'char', '', '', '4', '0', '1429977480', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3851', '177', '163', '我们现在测试用文字进行交流用文字。', 'char', '', '', '5', '0', '1429977502', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3853', '177', '163', '/upload/sjftp/rainbowfm/163_1429977526485.aac', 'mp3', '', '', '5', '0', '1429977521', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3855', '177', '165', '刚刚死机，现在登陆成功', 'char', '', '', '4', '0', '1429977541', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3857', '177', '163', '/upload/sjftp/rainbowfm/163_1429977585445.aac', 'mp3', '', '', '4', '0', '1429977580', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3859', '177', '163', '/upload/sjftp/rainbowfm/163_1429977596536.aac', 'mp3', '', '', '5', '0', '1429977591', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3861', '177', '165', '第二条，是否收到', 'char', '', '', '4', '0', '1429977641', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3863', '177', '163', '嘿嘿软件才可以我就在刷街多好耍。这个软件非常好很好玩。', 'char', '', '', '5', '0', '1429977642', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3865', '177', '163', '你的文字消息我是收到了，你再说一个语音消息呢用，普通用普通来跟我对讲。', 'char', '', '', '5', '0', '1429977675', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3867', '177', '165', '是否收到？', 'char', '', '', '6', '0', '1429977700', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3869', '177', '165', '2是否收到，普通', 'char', '', '', '6', '0', '1429977726', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3871', '177', '163', '你换成全局是一下。', 'char', '', '', '4', '0', '1429977763', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3873', '177', '163', '我，从你从起来我就没有收到过你的语音消息。iPhone', 'char', '', '', '4', '0', '1429977802', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3875', '177', '163', '你换成全局来发送语音消息测试一下。', 'char', '', '', '4', '0', '1429977841', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3877', '177', '163', '/upload/sjftp/rainbowfm/163_1429977876725.aac', 'mp3', '', '', '5', '0', '1429977871', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3879', '177', '165', '/upload/sjftp/rainbowfm/165_1429978206565.aac', 'mp3', '', '', '6', '0', '1429978204', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3881', '177', '165', '/upload/sjftp/rainbowfm/165_1429978254048.aac', 'mp3', '', '', '5', '0', '1429978248', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3883', '177', '165', '/upload/sjftp/rainbowfm/165_1429978280327.aac', 'mp3', '', '', '4', '0', '1429978275', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3885', '177', '163', '/upload/sjftp/rainbowfm/163_1429979758020.aac', 'mp3', '', '', '4', '0', '1429979753', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3887', '177', '163', '/upload/sjftp/rainbowfm/163_1429979778701.aac', 'mp3', '', '', '5', '0', '1429979774', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3889', '177', '107', '/upload/sjftp/rainbowfm/107_1429979902322.aac', 'mp3', '', '', '4', '0', '1429979897', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3891', '177', '107', '/upload/sjftp/rainbowfm/107_1429980097232.aac', 'mp3', '', '', '4', '0', '1429980092', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3893', '177', '163', '/upload/sjftp/rainbowfm/163_1429986860403.aac', 'mp3', '', '', '4', '0', '1429986860', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3895', '177', '163', '/upload/sjftp/rainbowfm/163_1429986897068.aac', 'mp3', '', '', '4', '0', '1429986896', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3897', '177', '163', '/upload/sjftp/rainbowfm/163_1429986919083.aac', 'mp3', '', '', '4', '0', '1429986918', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3899', '177', '163', '/upload/sjftp/rainbowfm/163_1429986955160.aac', 'mp3', '', '', '4', '0', '1429986954', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3901', '177', '163', '/upload/sjftp/rainbowfm/163_1429986977884.aac', 'mp3', '', '', '4', '0', '1429986977', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3903', '177', '165', '/upload/sjftp/rainbowfm/165_1430000560506.aac', 'mp3', '', '', '6', '0', '1430000562', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3905', '177', '163', '/upload/sjftp/rainbowfm/163_1430002431915.aac', 'mp3', '', '', '4', '0', '1430002430', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3907', '177', '165', '/upload/sjftp/rainbowfm/165_1430006759749.aac', 'mp3', '', '', '4', '0', '1430006757', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3909', '177', '163', '说', 'char', '', '', '4', '0', '1430006794', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3911', '177', '165', '/upload/sjftp/rainbowfm/165_1430006805237.aac', 'mp3', '', '', '4', '0', '1430006802', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3913', '177', '163', '/upload/sjftp/rainbowfm/163_1430006866482.aac', 'mp3', '', '', '5', '0', '1430006865', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3915', '177', '165', '/upload/sjftp/rainbowfm/165_1430006879989.aac', 'mp3', '', '', '4', '0', '1430006877', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3917', '177', '165', '/upload/sjftp/rainbowfm/165_1430006923353.aac', 'mp3', '', '', '6', '0', '1430006920', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3919', '177', '163', '普通和全局，只能选一样，而且必须选一样。', 'char', '', '', '5', '0', '1430006931', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3921', '177', '163', '/upload/sjftp/rainbowfm/163_1430006951100.aac', 'mp3', '', '', '5', '0', '1430006949', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3923', '177', '165', '嗯', 'char', '', '', '4', '0', '1430006967', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3925', '177', '165', '/upload/sjftp/rainbowfm/165_1430007019196.aac', 'mp3', '', '', '6', '0', '1430007016', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3927', '177', '163', '，继续，继续继续。', 'char', '', '', '5', '0', '1430007072', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3929', '177', '163', '/upload/sjftp/rainbowfm/163_1430007128312.png', 'img', '', '', '4', '0', '1430007126', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3931', '177', '163', '/upload/sjftp/rainbowfm/163_1430007155754.aac', 'mp3', '', '', '4', '0', '1430007154', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3933', '177', '163', '/upload/sjftp/rainbowfm/163_1430007194203.aac', 'mp3', '', '', '5', '0', '1430007192', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3935', '177', '165', '/upload/sjftp/rainbowfm/165_1430007369940.aac', 'mp3', '', '', '6', '0', '1430007367', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3937', '177', '165', '/upload/sjftp/rainbowfm/165_1430007402750.aac', 'mp3', '', '', '6', '0', '1430007400', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3939', '177', '165', '/upload/sjftp/rainbowfm/165_1430007450677.aac', 'mp3', '', '', '6', '0', '1430007447', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3941', '177', '165', '/upload/sjftp/rainbowfm/165_1430007505915.aac', 'mp3', '', '', '6', '0', '1430007503', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3943', '177', '165', '/upload/sjftp/rainbowfm/165_1430007544694.aac', 'mp3', '', '', '6', '0', '1430007542', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3945', '177', '165', '/upload/sjftp/rainbowfm/165_1430007596811.aac', 'mp3', '', '', '6', '0', '1430007594', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3947', '177', '165', '/upload/sjftp/rainbowfm/165_1430007652965.aac', 'mp3', '', '', '6', '0', '1430007650', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3949', '177', '163', '好', 'char', '', '', '4', '0', '1430007687', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3951', '177', '165', '/upload/sjftp/rainbowfm/165_1430007690164.aac', 'mp3', '', '', '6', '0', '1430007687', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3953', '177', '165', '/upload/sjftp/rainbowfm/165_1430007730962.aac', 'mp3', '', '', '6', '0', '1430007728', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3955', '177', '165', '/upload/sjftp/rainbowfm/165_1430007771798.aac', 'mp3', '', '', '6', '0', '1430007769', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3957', '177', '165', '/upload/sjftp/rainbowfm/165_1430007819870.aac', 'mp3', '', '', '6', '0', '1430007817', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3959', '177', '163', '亲继续。', 'char', '', '', '4', '0', '1430007842', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3961', '177', '165', '/upload/sjftp/rainbowfm/165_1430007871495.aac', 'mp3', '', '', '6', '0', '1430007868', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3963', '177', '163', '/upload/sjftp/rainbowfm/163_1430008079808.aac', 'mp3', '', '', '4', '0', '1430008078', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3965', '177', '163', '/upload/sjftp/rainbowfm/163_1430008110546.aac', 'mp3', '', '', '5', '0', '1430008109', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3967', '177', '165', '/upload/sjftp/rainbowfm/165_1430008253861.aac', 'mp3', '', '', '4', '0', '1430008250', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3969', '177', '165', '/upload/sjftp/rainbowfm/165_1430008264756.aac', 'mp3', '', '', '6', '0', '1430008262', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3971', '177', '165', '/upload/sjftp/rainbowfm/165_1430008280123.aac', 'mp3', '', '', '6', '0', '1430008277', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3973', '177', '165', '/upload/sjftp/rainbowfm/165_1430008303151.aac', 'mp3', '', '', '6', '0', '1430008300', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3975', '177', '165', '/upload/sjftp/rainbowfm/165_1430008319485.aac', 'mp3', '', '', '6', '0', '1430008316', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3977', '177', '163', '不要停一直发', 'char', '', '', '4', '0', '1430008336', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3979', '177', '165', '/upload/sjftp/rainbowfm/165_1430008348390.aac', 'mp3', '', '', '6', '0', '1430008345', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3981', '177', '165', '/upload/sjftp/rainbowfm/165_1430008377518.aac', 'mp3', '', '', '6', '0', '1430008374', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3983', '177', '165', '/upload/sjftp/rainbowfm/165_1430008401761.aac', 'mp3', '', '', '6', '0', '1430008398', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3985', '177', '165', '/upload/sjftp/rainbowfm/165_1430008431077.aac', 'mp3', '', '', '6', '0', '1430008428', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3987', '177', '165', '/upload/sjftp/rainbowfm/165_1430008462460.aac', 'mp3', '', '', '6', '0', '1430008459', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3989', '177', '165', '/upload/sjftp/rainbowfm/165_1430008518225.aac', 'mp3', '', '', '6', '0', '1430008515', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3991', '177', '163', '收到', 'char', '', '', '4', '0', '1430008547', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3993', '177', '165', '/upload/sjftp/rainbowfm/165_1430008558611.aac', 'mp3', '', '', '6', '0', '1430008555', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3995', '177', '165', '/upload/sjftp/rainbowfm/165_1430008600798.aac', 'mp3', '', '', '6', '0', '1430008598', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3997', '177', '163', '继续', 'char', '', '', '4', '0', '1430008610', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('3999', '177', '165', '/upload/sjftp/rainbowfm/165_1430008639896.aac', 'mp3', '', '', '6', '0', '1430008637', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4001', '177', '163', '/upload/sjftp/rainbowfm/163_1430008650972.aac', 'mp3', '', '', '4', '0', '1430008650', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4003', '177', '165', '/upload/sjftp/rainbowfm/165_1430008672351.aac', 'mp3', '', '', '6', '0', '1430008669', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4005', '177', '165', '/upload/sjftp/rainbowfm/165_1430008714411.aac', 'mp3', '', '', '6', '0', '1430008711', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4007', '177', '165', '/upload/sjftp/rainbowfm/165_1430008747583.aac', 'mp3', '', '', '6', '0', '1430008744', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4009', '177', '165', '/upload/sjftp/rainbowfm/165_1430008777575.aac', 'mp3', '', '', '6', '0', '1430008774', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4011', '177', '163', '/upload/sjftp/rainbowfm/163_1430008820392.aac', 'mp3', '', '', '4', '0', '1430008818', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4013', '177', '165', '/upload/sjftp/rainbowfm/165_1430008832429.aac', 'mp3', '', '', '6', '0', '1430008830', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4015', '177', '163', '/upload/sjftp/rainbowfm/163_1430008870781.aac', 'mp3', '', '', '5', '0', '1430008868', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4017', '177', '165', '/upload/sjftp/rainbowfm/165_1430008883383.aac', 'mp3', '', '', '6', '0', '1430008880', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4019', '177', '165', '/upload/sjftp/rainbowfm/165_1430008912946.aac', 'mp3', '', '', '6', '0', '1430008909', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4021', '177', '163', '/upload/sjftp/rainbowfm/163_1430008934892.aac', 'mp3', '', '', '5', '0', '1430008932', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4023', '177', '165', '/upload/sjftp/rainbowfm/165_1430008967350.aac', 'mp3', '', '', '6', '0', '1430008964', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4025', '177', '163', '/upload/sjftp/rainbowfm/163_1430009000180.aac', 'mp3', '', '', '5', '0', '1430008997', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4027', '177', '165', '/upload/sjftp/rainbowfm/165_1430009061653.aac', 'mp3', '', '', '6', '0', '1430009058', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4029', '177', '165', '/upload/sjftp/rainbowfm/165_1430009084071.aac', 'mp3', '', '', '6', '0', '1430009081', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4031', '177', '165', '/upload/sjftp/rainbowfm/165_1430009122622.aac', 'mp3', '', '', '6', '0', '1430009119', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4033', '177', '165', '/upload/sjftp/rainbowfm/165_1430009164369.aac', 'mp3', '', '', '6', '0', '1430009161', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4035', '177', '165', '/upload/sjftp/rainbowfm/165_1430009272954.aac', 'mp3', '', '', '6', '0', '1430009269', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4037', '177', '165', '/upload/sjftp/rainbowfm/165_1430009801817.aac', 'mp3', '', '', '6', '0', '1430009799', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4039', '177', '165', '/upload/sjftp/rainbowfm/165_1430010039955.aac', 'mp3', '', '', '6', '0', '1430010037', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4041', '177', '163', '/upload/sjftp/rainbowfm/163_1430010176565.aac', 'mp3', '', '', '4', '0', '1430010174', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4043', '177', '163', '/upload/sjftp/rainbowfm/163_1430010190073.aac', 'mp3', '', '', '5', '0', '1430010187', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4045', '177', '165', '/upload/sjftp/rainbowfm/165_1430010568970.aac', 'mp3', '', '', '6', '0', '1430010565', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4047', '177', '165', '/upload/sjftp/rainbowfm/165_1430010598655.aac', 'mp3', '', '', '6', '0', '1430010595', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4049', '177', '163', '/upload/sjftp/rainbowfm/163_1430010643521.aac', 'mp3', '', '', '5', '0', '1430010642', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4051', '177', '165', '/upload/sjftp/rainbowfm/165_1430010694799.aac', 'mp3', '', '', '6', '0', '1430010691', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4053', '177', '165', '/upload/sjftp/rainbowfm/165_1430010776899.aac', 'mp3', '', '', '6', '0', '1430010773', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4055', '177', '163', '/upload/sjftp/rainbowfm/163_1430011246471.aac', 'mp3', '', '', '5', '0', '1430011244', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4057', '177', '165', '/upload/sjftp/rainbowfm/165_1430011298987.aac', 'mp3', '', '', '6', '0', '1430011296', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4059', '177', '165', '/upload/sjftp/rainbowfm/165_1430011359989.aac', 'mp3', '', '', '6', '0', '1430011357', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4061', '177', '165', '/upload/sjftp/rainbowfm/165_1430011486705.aac', 'mp3', '', '', '6', '0', '1430011483', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4063', '177', '165', '/upload/sjftp/rainbowfm/165_1430011962312.aac', 'mp3', '', '', '6', '0', '1430011959', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4065', '177', '165', '/upload/sjftp/rainbowfm/165_1430011983510.aac', 'mp3', '', '', '6', '0', '1430011980', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4067', '177', '165', '/upload/sjftp/rainbowfm/165_1430012016195.aac', 'mp3', '', '', '6', '0', '1430012013', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4069', '177', '165', '/upload/sjftp/rainbowfm/165_1430012094094.aac', 'mp3', '', '', '6', '0', '1430012090', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4071', '177', '165', '/upload/sjftp/rainbowfm/165_1430012138890.aac', 'mp3', '', '', '6', '0', '1430012136', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4073', '177', '165', '/upload/sjftp/rainbowfm/165_1430012194972.aac', 'mp3', '', '', '6', '0', '1430012191', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4075', '177', '165', '/upload/sjftp/rainbowfm/165_1430012618073.aac', 'mp3', '', '', '4', '0', '1430012615', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4077', '177', '165', '/upload/sjftp/rainbowfm/165_1430012634699.aac', 'mp3', '', '', '4', '0', '1430012631', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4079', '177', '165', '/upload/sjftp/rainbowfm/165_1430012666085.aac', 'mp3', '', '', '4', '0', '1430012662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4081', '177', '165', '/upload/sjftp/rainbowfm/165_1430012704033.aac', 'mp3', '', '', '6', '0', '1430012700', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4083', '177', '165', '/upload/sjftp/rainbowfm/165_1430012773170.aac', 'mp3', '', '', '6', '0', '1430012769', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4085', '177', '165', '/upload/sjftp/rainbowfm/165_1430012805525.aac', 'mp3', '', '', '6', '0', '1430012802', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4087', '177', '165', '/upload/sjftp/rainbowfm/165_1430012829175.aac', 'mp3', '', '', '6', '0', '1430012825', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4089', '177', '165', '/upload/sjftp/rainbowfm/165_1430012870202.aac', 'mp3', '', '', '6', '0', '1430012867', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4091', '177', '165', '/upload/sjftp/rainbowfm/165_1430013405310.aac', 'mp3', '', '', '6', '0', '1430013402', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4093', '177', '165', '/upload/sjftp/rainbowfm/165_1430013445376.aac', 'mp3', '', '', '6', '0', '1430013442', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4095', '177', '165', '/upload/sjftp/rainbowfm/165_1430013473620.aac', 'mp3', '', '', '6', '0', '1430013470', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4097', '177', '165', '/upload/sjftp/rainbowfm/165_1430013529550.aac', 'mp3', '', '', '6', '0', '1430013526', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4099', '177', '165', '/upload/sjftp/rainbowfm/165_1430013961998.aac', 'mp3', '', '', '4', '0', '1430013958', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4101', '177', '165', '/upload/sjftp/rainbowfm/165_1430013980789.aac', 'mp3', '', '', '4', '0', '1430013977', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4103', '177', '165', '/upload/sjftp/rainbowfm/165_1430014031350.aac', 'mp3', '', '', '4', '0', '1430014028', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4105', '177', '165', '/upload/sjftp/rainbowfm/165_1430014344304.aac', 'mp3', '', '', '4', '0', '1430014344', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4107', '177', '165', '/upload/sjftp/rainbowfm/165_1430014368713.aac', 'mp3', '', '', '4', '0', '1430014365', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4109', '177', '165', '/upload/sjftp/rainbowfm/165_1430014437062.aac', 'mp3', '', '', '4', '0', '1430014433', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4111', '177', '165', '/upload/sjftp/rainbowfm/165_1430014488454.aac', 'mp3', '', '', '4', '0', '1430014487', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4113', '177', '165', '/upload/sjftp/rainbowfm/165_1430014509754.aac', 'mp3', '', '', '6', '0', '1430014506', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4115', '177', '165', '/upload/sjftp/rainbowfm/165_1430014537791.aac', 'mp3', '', '', '6', '0', '1430014534', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4117', '177', '165', '/upload/sjftp/rainbowfm/165_1430014589229.aac', 'mp3', '', '', '6', '0', '1430014586', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4119', '177', '165', '/upload/sjftp/rainbowfm/165_1430014642160.aac', 'mp3', '', '', '6', '0', '1430014639', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4121', '177', '165', '/upload/sjftp/rainbowfm/165_1430014676346.aac', 'mp3', '', '', '6', '0', '1430014673', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4123', '177', '165', '/upload/sjftp/rainbowfm/165_1430014725999.aac', 'mp3', '', '', '6', '0', '1430014722', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4125', '177', '165', '/upload/sjftp/rainbowfm/165_1430014793580.aac', 'mp3', '', '', '6', '0', '1430014790', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4127', '177', '165', '/upload/sjftp/rainbowfm/165_1430014849052.aac', 'mp3', '', '', '6', '0', '1430014845', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4129', '177', '165', '/upload/sjftp/rainbowfm/165_1430015333491.aac', 'mp3', '', '', '6', '0', '1430015330', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4131', '177', '165', '/upload/sjftp/rainbowfm/165_1430015372199.aac', 'mp3', '', '', '6', '0', '1430015369', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4133', '177', '165', '/upload/sjftp/rainbowfm/165_1430015429201.aac', 'mp3', '', '', '6', '0', '1430015425', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4135', '177', '165', '/upload/sjftp/rainbowfm/165_1430015488997.aac', 'mp3', '', '', '6', '0', '1430015485', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4137', '177', '165', '/upload/sjftp/rainbowfm/165_1430015548670.aac', 'mp3', '', '', '6', '0', '1430015545', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4139', '177', '165', '/upload/sjftp/rainbowfm/165_1430015622036.aac', 'mp3', '', '', '6', '0', '1430015618', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4141', '177', '165', '/upload/sjftp/rainbowfm/165_1430015718647.aac', 'mp3', '', '', '6', '0', '1430015715', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4143', '177', '165', '/upload/sjftp/rainbowfm/165_1430015768432.aac', 'mp3', '', '', '6', '0', '1430015765', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4145', '177', '165', '/upload/sjftp/rainbowfm/165_1430015833171.aac', 'mp3', '', '', '6', '0', '1430015830', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4147', '177', '165', '/upload/sjftp/rainbowfm/165_1430016339753.aac', 'mp3', '', '', '6', '0', '1430016336', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4149', '177', '165', '/upload/sjftp/rainbowfm/165_1430016390426.aac', 'mp3', '', '', '6', '0', '1430016386', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4151', '177', '165', '/upload/sjftp/rainbowfm/165_1430016427596.aac', 'mp3', '', '', '6', '0', '1430016424', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4153', '177', '165', '/upload/sjftp/rainbowfm/165_1430016483713.aac', 'mp3', '', '', '6', '0', '1430016480', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4155', '177', '165', '/upload/sjftp/rainbowfm/165_1430016533352.aac', 'mp3', '', '', '6', '0', '1430016529', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4157', '177', '165', '/upload/sjftp/rainbowfm/165_1430016648536.aac', 'mp3', '', '', '6', '0', '1430016645', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4159', '177', '165', '/upload/sjftp/rainbowfm/165_1430017543377.aac', 'mp3', '', '', '6', '0', '1430017543', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4161', '177', '165', '/upload/sjftp/rainbowfm/165_1430017559616.aac', 'mp3', '', '', '6', '0', '1430017556', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4163', '177', '165', '/upload/sjftp/rainbowfm/165_1430017713689.aac', 'mp3', '', '', '6', '0', '1430017710', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4165', '177', '165', '/upload/sjftp/rainbowfm/165_1430018593257.aac', 'mp3', '', '', '6', '0', '1430018592', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4167', '177', '165', '/upload/sjftp/rainbowfm/165_1430018663332.aac', 'mp3', '', '', '6', '0', '1430018659', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4169', '177', '165', '/upload/sjftp/rainbowfm/165_1430018711525.aac', 'mp3', '', '', '6', '0', '1430018707', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4171', '177', '165', '/upload/sjftp/rainbowfm/165_1430019173465.aac', 'mp3', '', '', '6', '0', '1430019171', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4173', '177', '165', '/upload/sjftp/rainbowfm/165_1430019207871.aac', 'mp3', '', '', '6', '0', '1430019204', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4175', '177', '165', '/upload/sjftp/rainbowfm/165_1430019248594.aac', 'mp3', '', '', '6', '0', '1430019245', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4177', '177', '165', '/upload/sjftp/rainbowfm/165_1430019295873.aac', 'mp3', '', '', '6', '0', '1430019292', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4179', '177', '165', '/upload/sjftp/rainbowfm/165_1430019348222.aac', 'mp3', '', '', '6', '0', '1430019344', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4181', '177', '165', '/upload/sjftp/rainbowfm/165_1430019799643.aac', 'mp3', '', '', '6', '0', '1430019796', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4183', '177', '165', '/upload/sjftp/rainbowfm/165_1430020377299.aac', 'mp3', '', '', '6', '0', '1430020373', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4185', '177', '165', '/upload/sjftp/rainbowfm/165_1430020401201.aac', 'mp3', '', '', '6', '0', '1430020397', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4187', '177', '165', '/upload/sjftp/rainbowfm/165_1430020430967.aac', 'mp3', '', '', '6', '0', '1430020427', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4189', '177', '165', '/upload/sjftp/rainbowfm/165_1430020451913.aac', 'mp3', '', '', '6', '0', '1430020449', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4191', '177', '165', '/upload/sjftp/rainbowfm/165_1430021262112.aac', 'mp3', '', '', '6', '0', '1430021258', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4193', '177', '165', '/upload/sjftp/rainbowfm/165_1430021296030.aac', 'mp3', '', '', '6', '0', '1430021292', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4195', '177', '165', '/upload/sjftp/rainbowfm/165_1430021315068.aac', 'mp3', '', '', '6', '0', '1430021311', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4197', '177', '165', '/upload/sjftp/rainbowfm/165_1430021763776.aac', 'mp3', '', '', '6', '0', '1430021760', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4199', '177', '165', '/upload/sjftp/rainbowfm/165_1430021842033.aac', 'mp3', '', '', '6', '0', '1430021838', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4201', '177', '165', '/upload/sjftp/rainbowfm/165_1430023431594.aac', 'mp3', '', '', '6', '0', '1430023427', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4203', '177', '165', '/upload/sjftp/rainbowfm/165_1430023446146.aac', 'mp3', '', '', '6', '0', '1430023442', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4205', '177', '165', '/upload/sjftp/rainbowfm/165_1430023481406.aac', 'mp3', '', '', '6', '0', '1430023477', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4207', '177', '165', '/upload/sjftp/rainbowfm/165_1430023552646.aac', 'mp3', '', '', '6', '0', '1430023548', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4209', '177', '165', '/upload/sjftp/rainbowfm/165_1430024039024.aac', 'mp3', '', '', '6', '0', '1430024034', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4211', '177', '165', '/upload/sjftp/rainbowfm/165_1430024056072.aac', 'mp3', '', '', '6', '0', '1430024051', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4213', '177', '165', '/upload/sjftp/rainbowfm/165_1430024083274.aac', 'mp3', '', '', '6', '0', '1430024079', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4215', '177', '165', '/upload/sjftp/rainbowfm/165_1430024137719.aac', 'mp3', '', '', '6', '0', '1430024133', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4217', '177', '165', '/upload/sjftp/rainbowfm/165_1430024163711.aac', 'mp3', '', '', '6', '0', '1430024159', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4219', '177', '165', '/upload/sjftp/rainbowfm/165_1430024204459.aac', 'mp3', '', '', '6', '0', '1430024200', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4221', '177', '165', '/upload/sjftp/rainbowfm/165_1430024254176.aac', 'mp3', '', '', '6', '0', '1430024250', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4223', '177', '165', '/upload/sjftp/rainbowfm/165_1430024344860.aac', 'mp3', '', '', '6', '0', '1430024341', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4225', '177', '165', '/upload/sjftp/rainbowfm/165_1430024465220.aac', 'mp3', '', '', '6', '0', '1430024461', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4227', '177', '165', '/upload/sjftp/rainbowfm/165_1430024488026.aac', 'mp3', '', '', '6', '0', '1430024484', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4229', '177', '165', '/upload/sjftp/rainbowfm/165_1430024606697.aac', 'mp3', '', '', '6', '0', '1430024603', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4231', '177', '165', '/upload/sjftp/rainbowfm/165_1430024621737.aac', 'mp3', '', '', '6', '0', '1430024617', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4233', '177', '165', '/upload/sjftp/rainbowfm/165_1430024648753.aac', 'mp3', '', '', '6', '0', '1430024644', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4235', '0', '59', '好', 'char', '', '', '3', '0', '1430025332', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4237', '0', '59', '好像', 'char', '', '', '3', '0', '1430025349', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4239', '0', '59', '不知道', 'char', '', '', '3', '0', '1430025357', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4241', '199', '59', 'hello', 'char', '', '', '1', '0', '1430025517', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4243', '177', '165', '/upload/sjftp/rainbowfm/165_1430025562553.aac', 'mp3', '', '', '6', '0', '1430025558', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4245', '199', '59', '/upload/sjftp/rainbowfm/1430026590.aac', 'mp3', '', '', '1', '0', '1430026589', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4247', '199', '59', '/upload/sjftp/rainbowfm/1430026676.jpg', 'img', '', '', '1', '0', '1430026675', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4249', '115', '59', 'hi', 'char', '', '', '2', '0', '1430026863', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4251', '115', '59', '山山水水', 'char', '', '', '2', '0', '1430026992', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4253', '177', '165', '/upload/sjftp/rainbowfm/165_1430028015082.aac', 'mp3', '', '', '6', '0', '1430028011', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4255', '177', '165', '/upload/sjftp/rainbowfm/165_1430028051966.aac', 'mp3', '', '', '6', '0', '1430028047', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4257', '177', '165', '/upload/sjftp/rainbowfm/165_1430028079150.aac', 'mp3', '', '', '6', '0', '1430028074', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4259', '177', '59', '/upload/sjftp/rainbowfm/1430028104.aac', 'mp3', '', '', '1', '0', '1430028103', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4261', '177', '59', '/upload/sjftp/rainbowfm/1430028111.aac', 'mp3', '', '', '1', '0', '1430028109', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4263', '177', '59', '/upload/sjftp/rainbowfm/1430028124.aac', 'mp3', '', '', '1', '0', '1430028122', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4265', '151', '167', 'hu sh h sh', 'char', '', '', '1', '0', '1430033396', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4267', '189', '167', '获得更好的 v', 'char', '', '', '1', '0', '1430033414', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4269', '177', '59', '/upload/sjftp/rainbowfm/1430091921.aac', 'mp3', '', '', '1', '0', '1430091922', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4271', '177', '163', '/upload/sjftp/rainbowfm/163_1430097733157.aac', 'mp3', '', '', '5', '0', '1430097733', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4273', '177', '163', '/upload/sjftp/rainbowfm/163_1430097775926.aac', 'mp3', '', '', '5', '0', '1430097779', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4275', '177', '163', '/upload/sjftp/rainbowfm/163_1430097818126.aac', 'mp3', '', '', '5', '0', '1430097821', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4277', '177', '163', '/upload/sjftp/rainbowfm/163_1430097839107.aac', 'mp3', '', '', '5', '0', '1430097839', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4279', '177', '163', '/upload/sjftp/rainbowfm/163_1430097875381.aac', 'mp3', '', '', '5', '0', '1430097875', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4281', '177', '165', '/upload/sjftp/rainbowfm/165_1430098183726.aac', 'mp3', '', '', '6', '0', '1430098180', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4283', '177', '163', '/upload/sjftp/rainbowfm/163_1430098914555.aac', 'mp3', '', '', '5', '0', '1430098914', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4285', '177', '163', '/upload/sjftp/rainbowfm/163_1430098945304.aac', 'mp3', '', '', '5', '0', '1430098945', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4287', '177', '73', '/upload/sjftp/rainbowfm/73_1430098995702.aac', 'mp3', '', '', '4', '0', '1430098993', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4289', '177', '59', '/upload/sjftp/rainbowfm/1430100201.aac', 'mp3', '', '', '1', '0', '1430100203', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4291', '177', '165', '/upload/sjftp/rainbowfm/165_1430100403212.aac', 'mp3', '', '', '6', '0', '1430100401', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4293', '177', '165', '/upload/sjftp/rainbowfm/165_1430100428078.aac', 'mp3', '', '', '5', '0', '1430100426', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4295', '177', '165', '/upload/sjftp/rainbowfm/165_1430100801312.aac', 'mp3', '', '', '6', '0', '1430100799', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4297', '177', '165', '/upload/sjftp/rainbowfm/165_1430100837164.aac', 'mp3', '', '', '5', '0', '1430100835', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4299', '177', '165', '/upload/sjftp/rainbowfm/165_1430100905273.aac', 'mp3', '', '', '5', '0', '1430100904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4301', '177', '165', '/upload/sjftp/rainbowfm/165_1430100931639.aac', 'mp3', '', '', '5', '0', '1430100929', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4303', '151', '66', '号', 'char', '', '', '1', '0', '1430115505', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4305', '151', '66', '真的', 'char', '', '', '1', '0', '1430115516', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4307', '151', '66', '很好了', 'char', '', '', '1', '0', '1430115522', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4309', '151', '66', '/upload/sjftp/rainbowfm/1430115557.aac', 'mp3', '', '', '1', '0', '1430115555', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4311', '151', '66', '好尴尬', 'char', '', '', '1', '0', '1430115567', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4313', '151', '66', '/upload/sjftp/rainbowfm/1430115586.aac', 'mp3', '', '', '1', '0', '1430115584', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4315', '151', '66', '号', 'char', '', '', '1', '0', '1430115639', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4317', '151', '66', '什么', 'char', '', '', '1', '0', '1430115643', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4319', '151', '66', '是什么', 'char', '', '', '1', '0', '1430115647', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4321', '151', '66', '/upload/sjftp/rainbowfm/1430115665.aac', 'mp3', '', '', '1', '0', '1430115663', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4323', '151', '66', '/upload/sjftp/rainbowfm/1430115679.aac', 'mp3', '', '', '1', '0', '1430115677', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4325', '151', '66', '号', 'char', '', '', '1', '0', '1430115695', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4327', '151', '66', '/upload/sjftp/rainbowfm/1430115708.aac', 'mp3', '', '', '1', '0', '1430115706', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4329', '151', '66', '/upload/sjftp/rainbowfm/1430115758.aac', 'mp3', '', '', '1', '0', '1430115756', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4331', '151', '66', '/upload/sjftp/rainbowfm/1430115771.aac', 'mp3', '', '', '1', '0', '1430115769', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4333', '151', '66', '/upload/sjftp/rainbowfm/1430115776.aac', 'mp3', '', '', '1', '0', '1430115774', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4335', '151', '66', '/upload/sjftp/rainbowfm/1430115780.aac', 'mp3', '', '', '1', '0', '1430115777', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4337', '0', '66', '我说什么', 'char', '', '', '3', '0', '1430115865', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4339', '53', '53', '工程', 'char', '', '', '3', '0', '1430117385', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4341', '0', '66', '郭', 'char', '', '', '3', '0', '1430117853', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4343', '0', '66', '好丰富', 'char', '', '', '3', '0', '1430117865', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4345', '0', '66', '还', 'char', '', '', '3', '0', '1430119207', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4347', '0', '66', '还', 'char', '', '', '3', '0', '1430119263', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4349', '0', '66', '好呀', 'char', '', '', '3', '0', '1430119273', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4351', '0', '66', '好好', 'char', '', '', '3', '0', '1430119281', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4353', '0', '66', '很好', 'char', '', '', '3', '0', '1430119288', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4355', '0', '66', '你就是', 'char', '', '', '3', '0', '1430119361', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4357', '0', '66', '意见', 'char', '', '', '3', '0', '1430119366', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4359', '53', '53', '加', 'char', '', '', '3', '0', '1430120166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4361', '0', '53', '哈', 'char', '', '', '3', '0', '1430120253', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4363', '53', '53', '魔力', 'char', '', '', '3', '0', '1430120424', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4365', '0', '53', '还有很多', 'char', '', '', '3', '0', '1430120514', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4367', '0', '53', '真的很多', 'char', '', '', '3', '0', '1430120545', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4369', '0', '53', '确实很多', 'char', '', '', '3', '0', '1430120554', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4371', '177', '59', '红红火火', 'char', '', '', '1', '0', '1430123514', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4373', '177', '59', '/upload/sjftp/rainbowfm/1430123534.aac', 'mp3', '', '', '1', '0', '1430123532', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4375', '177', '165', '/upload/sjftp/rainbowfm/165_1430127743407.aac', 'mp3', '', '', '6', '0', '1430127741', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4377', '177', '165', '/upload/sjftp/rainbowfm/165_1430127846742.aac', 'mp3', '', '', '6', '0', '1430127844', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4379', '177', '165', '/upload/sjftp/rainbowfm/165_1430127887691.aac', 'mp3', '', '', '6', '0', '1430127885', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4381', '177', '165', '/upload/sjftp/rainbowfm/165_1430127926981.aac', 'mp3', '', '', '5', '0', '1430127924', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4383', '177', '165', '/upload/sjftp/rainbowfm/165_1430127955472.aac', 'mp3', '', '', '5', '0', '1430127952', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4385', '177', '165', '好', 'char', '', '', '4', '0', '1430128060', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4387', '151', '66', '/upload/sjftp/rainbowfm/1430128278.aac', 'mp3', '', '', '1', '0', '1430128275', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4389', '151', '66', '倒计时你', 'char', '', '', '1', '0', '1430128282', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4391', '151', '66', '/upload/sjftp/rainbowfm/1430128518.aac', 'mp3', '', '', '1', '0', '1430128515', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4393', '177', '163', '/upload/sjftp/rainbowfm/163_1430129325787.aac', 'mp3', '', '', '4', '0', '1430129324', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4395', '177', '163', '/upload/sjftp/rainbowfm/163_1430129348245.aac', 'mp3', '', '', '4', '0', '1430129346', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4397', '177', '163', '/upload/sjftp/rainbowfm/163_1430129356042.aac', 'mp3', '', '', '4', '0', '1430129354', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4399', '177', '163', '/upload/sjftp/rainbowfm/163_1430129448731.aac', 'mp3', '', '', '5', '0', '1430129447', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4401', '177', '163', '/upload/sjftp/rainbowfm/163_1430129493490.aac', 'mp3', '', '', '4', '0', '1430129491', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4403', '151', '59', '骂人', 'char', '', '', '1', '0', '1430129866', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4405', '177', '107', '/upload/sjftp/rainbowfm/107_1430130204174.aac', 'mp3', '', '', '1', '0', '1430130199', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4407', '177', '107', '/upload/sjftp/rainbowfm/107_1430130233297.aac', 'mp3', '', '', '1', '0', '1430130228', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4409', '151', '66', '郭', 'char', '', '', '1', '0', '1430130310', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4411', '151', '66', '举办', 'char', '', '', '1', '0', '1430130324', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4413', '177', '165', '/upload/sjftp/rainbowfm/165_1430131018259.aac', 'mp3', '', '', '4', '0', '1430131015', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4415', '177', '165', '/upload/sjftp/rainbowfm/165_1430131225076.aac', 'mp3', '', '', '1', '0', '1430131220', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4417', '177', '165', '/upload/sjftp/rainbowfm/165_1430131286260.aac', 'mp3', '', '', '1', '0', '1430131284', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4419', '177', '165', '/upload/sjftp/rainbowfm/165_1430131395535.aac', 'mp3', '', '', '1', '0', '1430131390', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4421', '177', '165', '/upload/sjftp/rainbowfm/165_1430131544393.aac', 'mp3', '', '', '1', '0', '1430131539', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4423', '177', '165', '/upload/sjftp/rainbowfm/165_1430131617908.aac', 'mp3', '', '', '1', '0', '1430131612', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4425', '177', '165', '/upload/sjftp/rainbowfm/165_1430131766893.aac', 'mp3', '', '', '1', '0', '1430131761', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4427', '177', '165', '/upload/sjftp/rainbowfm/165_1430135408003.aac', 'mp3', '', '', '1', '0', '1430135403', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4429', '177', '165', '/upload/sjftp/rainbowfm/165_1430135906834.aac', 'mp3', '', '', '6', '0', '1430135904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4431', '177', '165', '/upload/sjftp/rainbowfm/165_1430137594616.aac', 'mp3', '', '', '6', '0', '1430137591', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4433', '177', '165', '/upload/sjftp/rainbowfm/165_1430137612947.aac', 'mp3', '', '', '5', '0', '1430137611', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4435', '177', '165', '/upload/sjftp/rainbowfm/165_1430137638608.aac', 'mp3', '', '', '5', '0', '1430137635', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4437', '177', '165', '/upload/sjftp/rainbowfm/165_1430137711870.aac', 'mp3', '', '', '5', '0', '1430137708', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4439', '177', '165', '/upload/sjftp/rainbowfm/165_1430137744731.aac', 'mp3', '', '', '5', '0', '1430137742', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4441', '177', '165', '/upload/sjftp/rainbowfm/165_1430137850627.aac', 'mp3', '', '', '4', '0', '1430137850', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4443', '177', '165', '/upload/sjftp/rainbowfm/165_1430137884628.aac', 'mp3', '', '', '4', '0', '1430137883', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4445', '177', '165', '/upload/sjftp/rainbowfm/165_1430137941865.aac', 'mp3', '', '', '5', '0', '1430137938', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4447', '177', '165', '/upload/sjftp/rainbowfm/165_1430138042710.aac', 'mp3', '', '', '5', '0', '1430138041', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4449', '177', '165', '/upload/sjftp/rainbowfm/165_1430138094990.aac', 'mp3', '', '', '5', '0', '1430138091', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4451', '177', '165', '/upload/sjftp/rainbowfm/165_1430138167819.aac', 'mp3', '', '', '5', '0', '1430138166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4453', '177', '165', '/upload/sjftp/rainbowfm/165_1430138279800.aac', 'mp3', '', '', '5', '0', '1430138276', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4455', '177', '59', '收到', 'char', '', '', '4', '0', '1430138350', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4457', '177', '59', '继续', 'char', '', '', '4', '0', '1430138379', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4459', '177', '165', '/upload/sjftp/rainbowfm/165_1430138431445.aac', 'mp3', '', '', '5', '0', '1430138427', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4461', '177', '165', '/upload/sjftp/rainbowfm/165_1430138474086.aac', 'mp3', '', '', '5', '0', '1430138473', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4463', '177', '165', '/upload/sjftp/rainbowfm/165_1430138534754.aac', 'mp3', '', '', '5', '0', '1430138534', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4465', '177', '165', '/upload/sjftp/rainbowfm/165_1430138568680.aac', 'mp3', '', '', '5', '0', '1430138564', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4467', '177', '165', '/upload/sjftp/rainbowfm/165_1430138588632.aac', 'mp3', '', '', '5', '0', '1430138584', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4469', '177', '165', '/upload/sjftp/rainbowfm/165_1430138631089.aac', 'mp3', '', '', '5', '0', '1430138627', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4471', '177', '165', '/upload/sjftp/rainbowfm/165_1430138683773.aac', 'mp3', '', '', '5', '0', '1430138680', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4473', '177', '165', '/upload/sjftp/rainbowfm/165_1430138781091.aac', 'mp3', '', '', '5', '0', '1430138779', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4475', '177', '165', '/upload/sjftp/rainbowfm/165_1430138817290.aac', 'mp3', '', '', '5', '0', '1430138817', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4477', '177', '165', '/upload/sjftp/rainbowfm/165_1430138848281.aac', 'mp3', '', '', '5', '0', '1430138847', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4479', '177', '165', '/upload/sjftp/rainbowfm/165_1430138879492.aac', 'mp3', '', '', '5', '0', '1430138880', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4481', '177', '165', '/upload/sjftp/rainbowfm/165_1430138909391.aac', 'mp3', '', '', '5', '0', '1430138908', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4483', '177', '165', '/upload/sjftp/rainbowfm/165_1430138959596.aac', 'mp3', '', '', '5', '0', '1430138956', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4485', '177', '165', '/upload/sjftp/rainbowfm/165_1430139033425.aac', 'mp3', '', '', '5', '0', '1430139030', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4487', '177', '165', '/upload/sjftp/rainbowfm/165_1430139065100.aac', 'mp3', '', '', '5', '0', '1430139063', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4489', '177', '165', '/upload/sjftp/rainbowfm/165_1430139124443.aac', 'mp3', '', '', '5', '0', '1430139120', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4491', '177', '165', '/upload/sjftp/rainbowfm/165_1430139191941.aac', 'mp3', '', '', '5', '0', '1430139193', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4493', '177', '165', '/upload/sjftp/rainbowfm/165_1430139238691.aac', 'mp3', '', '', '5', '0', '1430139237', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4495', '177', '165', '/upload/sjftp/rainbowfm/165_1430139266158.aac', 'mp3', '', '', '5', '0', '1430139266', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4497', '177', '165', '/upload/sjftp/rainbowfm/165_1430139298933.aac', 'mp3', '', '', '5', '0', '1430139295', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4499', '177', '165', '/upload/sjftp/rainbowfm/165_1430139334682.aac', 'mp3', '', '', '5', '0', '1430139333', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4501', '177', '165', '/upload/sjftp/rainbowfm/165_1430139360980.aac', 'mp3', '', '', '4', '0', '1430139357', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4503', '177', '165', '/upload/sjftp/rainbowfm/165_1430139373492.aac', 'mp3', '', '', '5', '0', '1430139370', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4505', '177', '165', '/upload/sjftp/rainbowfm/165_1430139417943.aac', 'mp3', '', '', '5', '0', '1430139414', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4507', '177', '165', '/upload/sjftp/rainbowfm/165_1430139440108.aac', 'mp3', '', '', '5', '0', '1430139436', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4509', '177', '165', '/upload/sjftp/rainbowfm/165_1430139488618.aac', 'mp3', '', '', '5', '0', '1430139484', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4511', '177', '165', '/upload/sjftp/rainbowfm/165_1430139550032.aac', 'mp3', '', '', '5', '0', '1430139548', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4513', '177', '165', '/upload/sjftp/rainbowfm/165_1430139574839.aac', 'mp3', '', '', '5', '0', '1430139573', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4515', '177', '165', '/upload/sjftp/rainbowfm/165_1430139668247.aac', 'mp3', '', '', '5', '0', '1430139665', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4517', '177', '165', '/upload/sjftp/rainbowfm/165_1430139692951.aac', 'mp3', '', '', '5', '0', '1430139689', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4519', '177', '165', '/upload/sjftp/rainbowfm/165_1430139724066.aac', 'mp3', '', '', '5', '0', '1430139723', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4521', '177', '165', '/upload/sjftp/rainbowfm/165_1430139778242.aac', 'mp3', '', '', '5', '0', '1430139774', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4523', '177', '165', '/upload/sjftp/rainbowfm/165_1430139798593.aac', 'mp3', '', '', '5', '0', '1430139796', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4525', '177', '165', '/upload/sjftp/rainbowfm/165_1430139816538.aac', 'mp3', '', '', '5', '0', '1430139814', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4527', '177', '165', '/upload/sjftp/rainbowfm/165_1430139869248.aac', 'mp3', '', '', '5', '0', '1430139865', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4529', '177', '165', '/upload/sjftp/rainbowfm/165_1430139889374.aac', 'mp3', '', '', '5', '0', '1430139885', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4531', '177', '165', '/upload/sjftp/rainbowfm/165_1430139908504.aac', 'mp3', '', '', '5', '0', '1430139904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4533', '177', '165', '/upload/sjftp/rainbowfm/165_1430139942806.aac', 'mp3', '', '', '5', '0', '1430139938', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4535', '177', '165', '/upload/sjftp/rainbowfm/165_1430139999931.aac', 'mp3', '', '', '5', '0', '1430139996', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4537', '177', '165', '/upload/sjftp/rainbowfm/165_1430140022740.aac', 'mp3', '', '', '5', '0', '1430140018', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4539', '177', '165', '/upload/sjftp/rainbowfm/165_1430140079822.aac', 'mp3', '', '', '5', '0', '1430140080', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4541', '177', '165', '/upload/sjftp/rainbowfm/165_1430140102484.aac', 'mp3', '', '', '5', '0', '1430140098', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4543', '177', '165', '/upload/sjftp/rainbowfm/165_1430140123899.aac', 'mp3', '', '', '5', '0', '1430140120', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4545', '177', '165', '/upload/sjftp/rainbowfm/165_1430140147434.aac', 'mp3', '', '', '5', '0', '1430140143', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4547', '177', '165', '/upload/sjftp/rainbowfm/165_1430140207367.aac', 'mp3', '', '', '5', '0', '1430140204', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4549', '177', '165', '/upload/sjftp/rainbowfm/165_1430140264561.aac', 'mp3', '', '', '5', '0', '1430140261', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4551', '177', '165', '/upload/sjftp/rainbowfm/165_1430140313879.aac', 'mp3', '', '', '5', '0', '1430140313', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4553', '177', '165', '/upload/sjftp/rainbowfm/165_1430140364809.aac', 'mp3', '', '', '5', '0', '1430140361', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4555', '177', '165', '/upload/sjftp/rainbowfm/165_1430140401001.aac', 'mp3', '', '', '5', '0', '1430140398', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4557', '177', '165', '/upload/sjftp/rainbowfm/165_1430140426622.aac', 'mp3', '', '', '5', '0', '1430140423', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4559', '177', '165', '/upload/sjftp/rainbowfm/165_1430140448214.aac', 'mp3', '', '', '5', '0', '1430140444', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4561', '177', '165', '留言成功提示多了个成功', 'char', '', '', '5', '0', '1430140503', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4563', '177', '165', '/upload/sjftp/rainbowfm/165_1430140533695.aac', 'mp3', '', '', '5', '0', '1430140529', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4565', '177', '165', '/upload/sjftp/rainbowfm/165_1430140553028.aac', 'mp3', '', '', '5', '0', '1430140550', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4567', '177', '165', '/upload/sjftp/rainbowfm/165_1430140579943.aac', 'mp3', '', '', '5', '0', '1430140576', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4569', '177', '165', '/upload/sjftp/rainbowfm/165_1430140600097.aac', 'mp3', '', '', '5', '0', '1430140596', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4571', '177', '165', '/upload/sjftp/rainbowfm/165_1430140643987.aac', 'mp3', '', '', '5', '0', '1430140641', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4573', '177', '165', '/upload/sjftp/rainbowfm/165_1430140695560.aac', 'mp3', '', '', '5', '0', '1430140691', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4575', '177', '165', '/upload/sjftp/rainbowfm/165_1430140748124.aac', 'mp3', '', '', '5', '0', '1430140744', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4577', '177', '165', '/upload/sjftp/rainbowfm/165_1430140806662.aac', 'mp3', '', '', '5', '0', '1430140803', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4579', '177', '165', '/upload/sjftp/rainbowfm/165_1430140847787.aac', 'mp3', '', '', '5', '0', '1430140846', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4581', '177', '165', '/upload/sjftp/rainbowfm/165_1430140901040.aac', 'mp3', '', '', '5', '0', '1430140897', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4583', '177', '165', '/upload/sjftp/rainbowfm/165_1430140947697.aac', 'mp3', '', '', '5', '0', '1430140944', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4585', '177', '165', '/upload/sjftp/rainbowfm/165_1430141056662.aac', 'mp3', '', '', '5', '0', '1430141052', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4587', '177', '165', '/upload/sjftp/rainbowfm/165_1430141099255.aac', 'mp3', '', '', '5', '0', '1430141095', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4589', '177', '165', '/upload/sjftp/rainbowfm/165_1430141187448.aac', 'mp3', '', '', '5', '0', '1430141183', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4591', '177', '165', '/upload/sjftp/rainbowfm/165_1430141240788.aac', 'mp3', '', '', '5', '0', '1430141238', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4593', '177', '165', '/upload/sjftp/rainbowfm/165_1430141306207.aac', 'mp3', '', '', '5', '0', '1430141304', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4595', '177', '165', '/upload/sjftp/rainbowfm/165_1430141378880.aac', 'mp3', '', '', '5', '0', '1430141377', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4597', '177', '165', '/upload/sjftp/rainbowfm/165_1430141434565.aac', 'mp3', '', '', '5', '0', '1430141434', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4599', '177', '165', '/upload/sjftp/rainbowfm/165_1430141472966.aac', 'mp3', '', '', '5', '0', '1430141471', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4601', '177', '165', '/upload/sjftp/rainbowfm/165_1430141511999.aac', 'mp3', '', '', '5', '0', '1430141508', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4603', '177', '165', '/upload/sjftp/rainbowfm/165_1430141560671.aac', 'mp3', '', '', '5', '0', '1430141556', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4605', '177', '165', '/upload/sjftp/rainbowfm/165_1430141604992.aac', 'mp3', '', '', '5', '0', '1430141601', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4607', '177', '165', '/upload/sjftp/rainbowfm/165_1430141665457.aac', 'mp3', '', '', '5', '0', '1430141663', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4609', '177', '165', '/upload/sjftp/rainbowfm/165_1430141773566.aac', 'mp3', '', '', '5', '0', '1430141769', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4611', '177', '165', '/upload/sjftp/rainbowfm/165_1430141834447.aac', 'mp3', '', '', '5', '0', '1430141831', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4613', '177', '165', '/upload/sjftp/rainbowfm/165_1430141904906.aac', 'mp3', '', '', '5', '0', '1430141904', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4615', '177', '165', '/upload/sjftp/rainbowfm/165_1430141957606.aac', 'mp3', '', '', '5', '0', '1430141953', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4617', '177', '165', '/upload/sjftp/rainbowfm/165_1430142005532.aac', 'mp3', '', '', '5', '0', '1430142005', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4619', '177', '165', '/upload/sjftp/rainbowfm/165_1430142064576.aac', 'mp3', '', '', '5', '0', '1430142062', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4621', '177', '165', '/upload/sjftp/rainbowfm/165_1430142105770.aac', 'mp3', '', '', '5', '0', '1430142102', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4623', '177', '165', '/upload/sjftp/rainbowfm/165_1430142141050.aac', 'mp3', '', '', '5', '0', '1430142137', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4625', '177', '165', '/upload/sjftp/rainbowfm/165_1430142244841.aac', 'mp3', '', '', '5', '0', '1430142243', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4627', '177', '165', '/upload/sjftp/rainbowfm/165_1430142326299.aac', 'mp3', '', '', '5', '0', '1430142325', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4629', '177', '165', '/upload/sjftp/rainbowfm/165_1430142412640.aac', 'mp3', '', '', '5', '0', '1430142411', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4631', '177', '165', '/upload/sjftp/rainbowfm/165_1430142587679.aac', 'mp3', '', '', '5', '0', '1430142584', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4633', '177', '165', '/upload/sjftp/rainbowfm/165_1430142710655.aac', 'mp3', '', '', '5', '0', '1430142709', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4635', '177', '165', '/upload/sjftp/rainbowfm/165_1430142829766.aac', 'mp3', '', '', '5', '0', '1430142826', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4637', '177', '165', '/upload/sjftp/rainbowfm/165_1430142866036.aac', 'mp3', '', '', '5', '0', '1430142863', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4639', '177', '165', '/upload/sjftp/rainbowfm/165_1430142979042.aac', 'mp3', '', '', '5', '0', '1430142975', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4641', '177', '165', '/upload/sjftp/rainbowfm/165_1430143066829.aac', 'mp3', '', '', '5', '0', '1430143063', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4643', '177', '165', '/upload/sjftp/rainbowfm/165_1430143101688.aac', 'mp3', '', '', '5', '0', '1430143101', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4645', '177', '165', '/upload/sjftp/rainbowfm/165_1430143132434.aac', 'mp3', '', '', '5', '0', '1430143128', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4647', '177', '165', '/upload/sjftp/rainbowfm/165_1430143181826.aac', 'mp3', '', '', '5', '0', '1430143180', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4649', '177', '165', '/upload/sjftp/rainbowfm/165_1430143241611.aac', 'mp3', '', '', '5', '0', '1430143243', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4651', '177', '165', '/upload/sjftp/rainbowfm/165_1430143290304.aac', 'mp3', '', '', '5', '0', '1430143289', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4653', '177', '165', '/upload/sjftp/rainbowfm/165_1430143385545.aac', 'mp3', '', '', '5', '0', '1430143384', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4655', '177', '165', '/upload/sjftp/rainbowfm/165_1430143447329.aac', 'mp3', '', '', '5', '0', '1430143447', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4657', '177', '165', '/upload/sjftp/rainbowfm/165_1430143521019.aac', 'mp3', '', '', '5', '0', '1430143521', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4659', '177', '165', '/upload/sjftp/rainbowfm/165_1430143617957.aac', 'mp3', '', '', '5', '0', '1430143614', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4661', '177', '165', '/upload/sjftp/rainbowfm/165_1430143675990.aac', 'mp3', '', '', '5', '0', '1430143672', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4663', '177', '165', '/upload/sjftp/rainbowfm/165_1430143732925.aac', 'mp3', '', '', '5', '0', '1430143731', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4665', '177', '165', '/upload/sjftp/rainbowfm/165_1430143773472.aac', 'mp3', '', '', '5', '0', '1430143773', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4667', '177', '165', '/upload/sjftp/rainbowfm/165_1430143820082.aac', 'mp3', '', '', '5', '0', '1430143816', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4669', '177', '165', '/upload/sjftp/rainbowfm/165_1430143918157.aac', 'mp3', '', '', '5', '0', '1430143918', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4671', '177', '165', '/upload/sjftp/rainbowfm/165_1430143976974.aac', 'mp3', '', '', '5', '0', '1430143977', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4673', '177', '165', '/upload/sjftp/rainbowfm/165_1430144066935.aac', 'mp3', '', '', '5', '0', '1430144065', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4675', '177', '165', '/upload/sjftp/rainbowfm/165_1430144141860.aac', 'mp3', '', '', '5', '0', '1430144142', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4677', '177', '165', '/upload/sjftp/rainbowfm/165_1430144194275.aac', 'mp3', '', '', '5', '0', '1430144190', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4679', '177', '165', '/upload/sjftp/rainbowfm/165_1430144280596.aac', 'mp3', '', '', '5', '0', '1430144282', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4681', '199', '59', '我现在在车上城市￼', 'char', '', '', '1', '0', '1430144353', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4683', '177', '165', '/upload/sjftp/rainbowfm/165_1430144389676.aac', 'mp3', '', '', '5', '0', '1430144385', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4685', '177', '165', '/upload/sjftp/rainbowfm/165_1430144420946.aac', 'mp3', '', '', '5', '0', '1430144419', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4687', '177', '165', '/upload/sjftp/rainbowfm/165_1430144472859.aac', 'mp3', '', '', '5', '0', '1430144470', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4689', '177', '165', '/upload/sjftp/rainbowfm/165_1430144561239.aac', 'mp3', '', '', '5', '0', '1430144560', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4691', '177', '165', '/upload/sjftp/rainbowfm/165_1430144605416.aac', 'mp3', '', '', '5', '0', '1430144601', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4693', '177', '165', '/upload/sjftp/rainbowfm/165_1430144657471.aac', 'mp3', '', '', '5', '0', '1430144653', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4695', '177', '165', '/upload/sjftp/rainbowfm/165_1430144757191.aac', 'mp3', '', '', '5', '0', '1430144753', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4697', '177', '165', '/upload/sjftp/rainbowfm/165_1430144869043.aac', 'mp3', '', '', '5', '0', '1430144869', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4699', '177', '165', '/upload/sjftp/rainbowfm/165_1430144915587.aac', 'mp3', '', '', '5', '0', '1430144913', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4701', '177', '165', '/upload/sjftp/rainbowfm/165_1430144938313.aac', 'mp3', '', '', '5', '0', '1430144934', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4703', '177', '165', '/upload/sjftp/rainbowfm/165_1430145024577.aac', 'mp3', '', '', '5', '0', '1430145021', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4705', '177', '165', '/upload/sjftp/rainbowfm/165_1430145076943.aac', 'mp3', '', '', '5', '0', '1430145073', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4707', '177', '165', '/upload/sjftp/rainbowfm/165_1430145102891.aac', 'mp3', '', '', '5', '0', '1430145103', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4709', '177', '165', '/upload/sjftp/rainbowfm/165_1430145206442.aac', 'mp3', '', '', '5', '0', '1430145206', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4711', '177', '165', '/upload/sjftp/rainbowfm/165_1430145367126.aac', 'mp3', '', '', '5', '0', '1430145367', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4713', '177', '165', '/upload/sjftp/rainbowfm/165_1430145385968.aac', 'mp3', '', '', '5', '0', '1430145381', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4715', '177', '165', '/upload/sjftp/rainbowfm/165_1430145399091.aac', 'mp3', '', '', '5', '0', '1430145399', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4717', '177', '165', '/upload/sjftp/rainbowfm/165_1430145412498.aac', 'mp3', '', '', '5', '0', '1430145415', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4719', '177', '165', '/upload/sjftp/rainbowfm/165_1430145480631.aac', 'mp3', '', '', '4', '0', '1430145478', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4721', '177', '165', '/upload/sjftp/rainbowfm/165_1430145556886.aac', 'mp3', '', '', '4', '0', '1430145559', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4723', '177', '165', '/upload/sjftp/rainbowfm/165_1430145577240.aac', 'mp3', '', '', '4', '0', '1430145577', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4725', '151', '66', '这里有没有', 'char', '', '', '1', '0', '1430146290', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4727', '151', '66', '/upload/sjftp/rainbowfm/1430146318.jpg', 'img', '', '', '1', '0', '1430146316', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4729', '133', '59', 'hi', 'char', '', '', '2', '0', '1430146734', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4731', '177', '165', '/upload/sjftp/rainbowfm/165_1430147402005.aac', 'mp3', '', '', '4', '0', '1430147398', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4733', '105', '73', '旅游', 'char', '', '', '2', '0', '1430184004', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4735', '177', '163', '/upload/sjftp/rainbowfm/163_1430184036539.aac', 'mp3', '', '', '4', '0', '1430184033', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4737', '151', '66', '好歹', 'char', '', '', '1', '0', '1430184214', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4739', '151', '115', '方法', 'char', '', '', '1', '0', '1430184376', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4741', '177', '163', '/upload/sjftp/rainbowfm/163_1430185624187.aac', 'mp3', '', '', '4', '0', '1430185621', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4743', '177', '163', '/upload/sjftp/rainbowfm/163_1430185631551.aac', 'mp3', '', '', '4', '0', '1430185628', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4745', '177', '165', '/upload/sjftp/rainbowfm/165_1430186138572.aac', 'mp3', '', '', '4', '0', '1430186135', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4747', '177', '165', '/upload/sjftp/rainbowfm/165_1430186246911.aac', 'mp3', '', '', '4', '0', '1430186243', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4749', '177', '165', '/upload/sjftp/rainbowfm/165_1430186375536.aac', 'mp3', '', '', '4', '0', '1430186372', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4751', '177', '165', '/upload/sjftp/rainbowfm/165_1430186594193.aac', 'mp3', '', '', '4', '0', '1430186591', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4753', '177', '59', '/upload/sjftp/rainbowfm/59_1430187592284.aac', 'mp3', '', '', '4', '0', '1430187593', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4755', '177', '165', '/upload/sjftp/rainbowfm/165_1430187638911.aac', 'mp3', '', '', '4', '0', '1430187636', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4757', '177', '165', '/upload/sjftp/rainbowfm/165_1430187818001.aac', 'mp3', '', '', '4', '0', '1430187817', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4759', '177', '165', '/upload/sjftp/rainbowfm/165_1430187821549.aac', 'mp3', '', '', '4', '0', '1430187821', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4761', '177', '165', '/upload/sjftp/rainbowfm/165_1430187828464.aac', 'mp3', '', '', '4', '0', '1430187828', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4763', '177', '165', '/upload/sjftp/rainbowfm/165_1430187836580.aac', 'mp3', '', '', '4', '0', '1430187836', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4765', '177', '165', '/upload/sjftp/rainbowfm/165_1430187869991.aac', 'mp3', '', '', '4', '0', '1430187869', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4767', '177', '165', '/upload/sjftp/rainbowfm/165_1430187889051.aac', 'mp3', '', '', '4', '0', '1430187888', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4769', '177', '165', '重庆', 'char', '', '', '4', '0', '1430187911', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4771', '177', '165', '/upload/sjftp/rainbowfm/165_1430187933957.aac', 'mp3', '', '', '4', '0', '1430187933', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4773', '177', '165', '/upload/sjftp/rainbowfm/165_1430188345259.aac', 'mp3', '', '', '6', '0', '1430188342', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4775', '177', '165', '/upload/sjftp/rainbowfm/165_1430188482820.aac', 'mp3', '', '', '4', '0', '1430188483', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4777', '177', '165', '/upload/sjftp/rainbowfm/165_1430188961084.aac', 'mp3', '', '', '4', '0', '1430188958', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4779', '0', '66', '还能有什么', 'char', '', '', '3', '0', '1430191004', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4781', '177', '165', '好', 'char', '', '', '4', '0', '1430192916', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4783', '109', '103', '啊啊啊啊', 'char', '', '', '2', '0', '1430193520', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4785', '177', '103', '啊啊啊', 'char', '', '', '1', '0', '1430195924', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4787', '177', '103', '/upload/sjftp/rainbowfm/103_1430195936493.aac', 'mp3', '', '', '1', '0', '1430195935', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4789', '177', '103', '/upload/sjftp/rainbowfm/103_1430195985284.png', 'img', '', '', '1', '0', '1430195985', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4791', '177', '103', '/upload/sjftp/rainbowfm/103_1430196021523.aac', 'mp3', '', '', '1', '0', '1430196020', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4793', '177', '103', '/upload/sjftp/rainbowfm/103_1430196032186.aac', 'mp3', '', '', '1', '0', '1430196031', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4795', '113', '103', '/upload/sjftp/rainbowfm/103_1430196102294.png', 'img', '', '', '2', '0', '1430196101', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4797', '155', '153', '/upload/sjftp/rainbowfm/153_1430202163595.aac', 'mp3', '', '', '1', '0', '1430202167', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4799', '177', '153', '/upload/sjftp/rainbowfm/153_1430202493298.png', 'img', '', '', '1', '0', '1430202497', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4801', '151', '66', '/upload/sjftp/rainbowfm/1430205602.aac', 'mp3', '', '', '2', '0', '1430205602', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4803', '177', '66', '/upload/sjftp/rainbowfm/1430206806.aac', 'mp3', '', '', '-1', '0', '1430206804', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4805', '177', '165', '/upload/sjftp/rainbowfm/165_1430209702002.aac', 'mp3', '', '', '6', '0', '1430209701', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4807', '177', '165', '/upload/sjftp/rainbowfm/165_1430211168474.aac', 'mp3', '', '', '6', '0', '1430211166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4809', '177', '165', '/upload/sjftp/rainbowfm/165_1430211201859.aac', 'mp3', '', '', '6', '0', '1430211197', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4811', '177', '165', '/upload/sjftp/rainbowfm/165_1430211217752.aac', 'mp3', '', '', '6', '0', '1430211215', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4813', '177', '165', '/upload/sjftp/rainbowfm/165_1430211348580.aac', 'mp3', '', '', '6', '0', '1430211346', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4815', '177', '53', '/upload/sjftp/rainbowfm/53_1430211581890.aac', 'mp3', '', '', '4', '0', '1430211577', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4817', '177', '165', '/upload/sjftp/rainbowfm/165_1430211773707.aac', 'mp3', '', '', '4', '0', '1430211772', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4819', '177', '165', '/upload/sjftp/rainbowfm/165_1430211938360.aac', 'mp3', '', '', '4', '0', '1430211936', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4821', '177', '66', '/upload/sjftp/rainbowfm/1430212016.aac', 'mp3', '', '', '-1', '0', '1430212014', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4823', '0', '66', '/upload/sjftp/rainbowfm/1430212112.aac', 'mp3', '', '', '-1', '0', '1430212111', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4825', '177', '165', '/upload/sjftp/rainbowfm/165_1430212155431.aac', 'mp3', '', '', '4', '0', '1430212154', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4827', '177', '66', '/upload/sjftp/rainbowfm/1430212322.aac', 'mp3', '', '', '-1', '0', '1430212323', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4829', '177', '66', '/upload/sjftp/rainbowfm/66_1430212385670.aac', 'mp3', '', '', '4', '0', '1430212385', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4831', '177', '66', '/upload/sjftp/rainbowfm/1430212513.aac', 'mp3', '', '', '-1', '0', '1430212523', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4833', '177', '66', '/upload/sjftp/rainbowfm/1430212896.aac', 'mp3', '', '', '4', '0', '1430212902', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4835', '177', '66', '/upload/sjftp/rainbowfm/1430213954.aac', 'mp3', '', '', '4', '0', '1430213958', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4837', '177', '165', '/upload/sjftp/rainbowfm/1430214190.aac', 'mp3', '', '', '6', '0', '1430214189', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4839', '177', '59', '/upload/sjftp/rainbowfm/1430215157.aac', 'mp3', '', '', '4', '0', '1430215156', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4841', '177', '165', '/upload/sjftp/rainbowfm/1430215261.aac', 'mp3', '', '', '6', '0', '1430215259', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4843', '177', '165', '/upload/sjftp/rainbowfm/165_1430215293175.aac', 'mp3', '', '', '5', '0', '1430215292', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4845', '177', '165', '/upload/sjftp/rainbowfm/165_1430215321057.aac', 'mp3', '', '', '5', '0', '1430215319', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4847', '177', '165', '/upload/sjftp/rainbowfm/165_1430215353742.aac', 'mp3', '', '', '5', '0', '1430215352', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4849', '177', '165', '/upload/sjftp/rainbowfm/165_1430215380606.aac', 'mp3', '', '', '5', '0', '1430215379', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4851', '177', '163', '/upload/sjftp/rainbowfm/163_1430215383362.aac', 'mp3', '', '', '5', '0', '1430215386', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4853', '177', '165', '/upload/sjftp/rainbowfm/165_1430215406045.aac', 'mp3', '', '', '5', '0', '1430215404', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4855', '177', '165', '/upload/sjftp/rainbowfm/165_1430215676292.aac', 'mp3', '', '', '5', '0', '1430215678', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4857', '177', '59', '/upload/sjftp/rainbowfm/1430215705.aac', 'mp3', '', '', '4', '0', '1430215703', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4859', '177', '163', '/upload/sjftp/rainbowfm/163_1430215847473.aac', 'mp3', '', '', '5', '0', '1430215845', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4861', '121', '163', '/upload/sjftp/rainbowfm/163_1430215911474.aac', 'mp3', '', '', '2', '0', '1430215909', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4863', '153', '165', '/upload/sjftp/rainbowfm/165_1430215979578.aac', 'mp3', '', '', '1', '0', '1430215976', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4865', '153', '165', '/upload/sjftp/rainbowfm/165_1430215989303.aac', 'mp3', '', '', '1', '0', '1430215986', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4867', '177', '165', '/upload/sjftp/rainbowfm/165_1430216005337.aac', 'mp3', '', '', '6', '0', '1430216003', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4869', '177', '165', '/upload/sjftp/rainbowfm/165_1430216011051.aac', 'mp3', '', '', '6', '0', '1430216007', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4871', '177', '165', '/upload/sjftp/rainbowfm/165_1430216107277.aac', 'mp3', '', '', '6', '0', '1430216105', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4873', '177', '165', '/upload/sjftp/rainbowfm/165_1430216227086.aac', 'mp3', '', '', '5', '0', '1430216224', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4875', '177', '165', '/upload/sjftp/rainbowfm/165_1430216297522.aac', 'mp3', '', '', '6', '0', '1430216296', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4877', '177', '59', '/upload/sjftp/rainbowfm/1430216304.aac', 'mp3', '', '', '4', '0', '1430216303', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4879', '177', '163', '/upload/sjftp/rainbowfm/163_1430216343156.aac', 'mp3', '', '', '5', '0', '1430216338', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4881', '151', '163', '/upload/sjftp/rainbowfm/163_1430216576613.aac', 'mp3', '', '', '1', '0', '1430216573', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4883', '177', '163', '/upload/sjftp/rainbowfm/163_1430216596720.aac', 'mp3', '', '', '5', '0', '1430216593', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4885', '177', '53', '/upload/sjftp/rainbowfm/53_1430216642066.aac', 'mp3', '', '', '4', '0', '1430216638', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4887', '177', '53', '/upload/sjftp/rainbowfm/53_1430216643648.aac', 'mp3', '', '', '4', '0', '1430216638', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4889', '177', '53', '/upload/sjftp/rainbowfm/53_1430216672148.aac', 'mp3', '', '', '4', '0', '1430216668', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4891', '177', '163', '/upload/sjftp/rainbowfm/163_1430217310382.aac', 'mp3', '', '', '4', '0', '1430216853', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4893', '153', '163', '/upload/sjftp/rainbowfm/163_1430217338339.aac', 'mp3', '', '', '1', '0', '1430216877', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4895', '177', '163', '/upload/sjftp/rainbowfm/163_1430217379519.aac', 'mp3', '', '', '5', '0', '1430216920', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4897', '177', '59', '沙坪坝', 'char', '', '', '4', '0', '1430219176', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4899', '177', '165', '/upload/sjftp/rainbowfm/165_1430220158538.aac', 'mp3', '', '', '5', '0', '1430220162', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4901', '177', '165', '/upload/sjftp/rainbowfm/165_1430220191310.aac', 'mp3', '', '', '6', '0', '1430220191', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4903', '177', '165', '/upload/sjftp/rainbowfm/165_1430220490673.aac', 'mp3', '', '', '4', '0', '1430220487', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4905', '177', '165', '/upload/sjftp/rainbowfm/165_1430220539451.aac', 'mp3', '', '', '6', '0', '1430220539', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4907', '177', '165', '/upload/sjftp/rainbowfm/165_1430220721584.aac', 'mp3', '', '', '6', '0', '1430220721', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4909', '177', '165', '/upload/sjftp/rainbowfm/165_1430221125868.aac', 'mp3', '', '', '5', '0', '1430221126', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4911', '177', '165', '/upload/sjftp/rainbowfm/165_1430221427117.aac', 'mp3', '', '', '5', '0', '1430221425', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4913', '177', '165', '/upload/sjftp/rainbowfm/165_1430221431020.aac', 'mp3', '', '', '5', '0', '1430221431', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4915', '177', '165', '/upload/sjftp/rainbowfm/165_1430221438896.aac', 'mp3', '', '', '5', '0', '1430221439', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4917', '177', '165', '/upload/sjftp/rainbowfm/165_1430221470433.aac', 'mp3', '', '', '5', '0', '1430221466', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4919', '177', '165', '/upload/sjftp/rainbowfm/165_1430221499872.aac', 'mp3', '', '', '5', '0', '1430221496', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4921', '177', '165', '/upload/sjftp/rainbowfm/165_1430222058606.aac', 'mp3', '', '', '5', '0', '1430222055', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4923', '177', '165', '/upload/sjftp/rainbowfm/165_1430222247426.aac', 'mp3', '', '', '5', '0', '1430222246', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4925', '177', '165', '/upload/sjftp/rainbowfm/165_1430222502442.aac', 'mp3', '', '', '5', '0', '1430222501', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4927', '177', '165', '/upload/sjftp/rainbowfm/165_1430222521086.aac', 'mp3', '', '', '5', '0', '1430222519', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4929', '177', '165', '/upload/sjftp/rainbowfm/165_1430222813395.aac', 'mp3', '', '', '5', '0', '1430222812', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4931', '177', '165', '/upload/sjftp/rainbowfm/165_1430223079866.aac', 'mp3', '', '', '5', '0', '1430223079', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4933', '177', '165', '/upload/sjftp/rainbowfm/165_1430223211487.aac', 'mp3', '', '', '5', '0', '1430223211', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4935', '177', '165', '/upload/sjftp/rainbowfm/165_1430223234431.aac', 'mp3', '', '', '5', '0', '1430223230', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4937', '177', '165', '/upload/sjftp/rainbowfm/165_1430223244983.aac', 'mp3', '', '', '5', '0', '1430223242', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4939', '177', '165', '/upload/sjftp/rainbowfm/165_1430223255391.aac', 'mp3', '', '', '5', '0', '1430223256', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4941', '177', '165', '/upload/sjftp/rainbowfm/165_1430223378809.aac', 'mp3', '', '', '4', '0', '1430223376', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4943', '177', '165', '/upload/sjftp/rainbowfm/165_1430223482866.aac', 'mp3', '', '', '4', '0', '1430223482', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4945', '177', '165', '/upload/sjftp/rainbowfm/165_1430223531231.aac', 'mp3', '', '', '6', '0', '1430223531', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4947', '177', '165', '/upload/sjftp/rainbowfm/165_1430223559713.aac', 'mp3', '', '', '6', '0', '1430223558', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4949', '177', '165', '/upload/sjftp/rainbowfm/165_1430223592676.aac', 'mp3', '', '', '5', '0', '1430223590', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4951', '177', '59', 'ok', 'char', '', '', '4', '0', '1430223887', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4953', '177', '165', '/upload/sjftp/rainbowfm/165_1430224407537.aac', 'mp3', '', '', '5', '0', '1430224410', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4955', '177', '165', '/upload/sjftp/rainbowfm/165_1430224467645.aac', 'mp3', '', '', '5', '0', '1430224467', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4957', '177', '165', '/upload/sjftp/rainbowfm/165_1430224474927.aac', 'mp3', '', '', '5', '0', '1430224473', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4959', '177', '165', '/upload/sjftp/rainbowfm/165_1430224501754.aac', 'mp3', '', '', '5', '0', '1430224498', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4961', '177', '165', '/upload/sjftp/rainbowfm/165_1430224524805.aac', 'mp3', '', '', '5', '0', '1430224521', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4963', '177', '165', '/upload/sjftp/rainbowfm/165_1430224731350.aac', 'mp3', '', '', '5', '0', '1430224727', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4965', '177', '165', '/upload/sjftp/rainbowfm/165_1430224764718.aac', 'mp3', '', '', '5', '0', '1430224764', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4967', '177', '165', '/upload/sjftp/rainbowfm/165_1430224785164.aac', 'mp3', '', '', '5', '0', '1430224781', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4969', '177', '165', '/upload/sjftp/rainbowfm/165_1430224806646.aac', 'mp3', '', '', '5', '0', '1430224803', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4971', '177', '165', '/upload/sjftp/rainbowfm/165_1430224916557.aac', 'mp3', '', '', '5', '0', '1430224913', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4973', '177', '165', '/upload/sjftp/rainbowfm/165_1430224962939.aac', 'mp3', '', '', '5', '0', '1430224962', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4975', '177', '165', '/upload/sjftp/rainbowfm/165_1430225292795.aac', 'mp3', '', '', '5', '0', '1430225290', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4977', '177', '165', '/upload/sjftp/rainbowfm/165_1430225356778.aac', 'mp3', '', '', '4', '0', '1430225356', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4979', '177', '165', '/upload/sjftp/rainbowfm/165_1430225882303.aac', 'mp3', '', '', '5', '0', '1430225881', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4981', '177', '165', '/upload/sjftp/rainbowfm/165_1430226021385.aac', 'mp3', '', '', '5', '0', '1430226019', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4983', '177', '165', '/upload/sjftp/rainbowfm/165_1430226040545.aac', 'mp3', '', '', '5', '0', '1430226038', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4985', '177', '165', '/upload/sjftp/rainbowfm/165_1430226065616.aac', 'mp3', '', '', '5', '0', '1430226065', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4987', '177', '165', '/upload/sjftp/rainbowfm/165_1430226841031.aac', 'mp3', '', '', '5', '0', '1430226840', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4989', '177', '53', '/upload/sjftp/rainbowfm/53_1430227361522.aac', 'mp3', '', '', '4', '0', '1430227354', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4991', '177', '165', '/upload/sjftp/rainbowfm/165_1430227812388.aac', 'mp3', '', '', '5', '0', '1430227812', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4993', '177', '165', '/upload/sjftp/rainbowfm/165_1430227881173.aac', 'mp3', '', '', '5', '0', '1430227879', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4995', '177', '165', '/upload/sjftp/rainbowfm/165_1430227970356.aac', 'mp3', '', '', '5', '0', '1430227966', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4997', '177', '165', '/upload/sjftp/rainbowfm/165_1430228479764.aac', 'mp3', '', '', '4', '0', '1430228477', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('4999', '177', '165', '/upload/sjftp/rainbowfm/165_1430228517496.aac', 'mp3', '', '', '4', '0', '1430228516', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5001', '177', '165', '/upload/sjftp/rainbowfm/165_1430228525238.aac', 'mp3', '', '', '4', '0', '1430228526', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5003', '177', '165', '/upload/sjftp/rainbowfm/165_1430228573693.aac', 'mp3', '', '', '4', '0', '1430228571', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5005', '177', '165', '/upload/sjftp/rainbowfm/165_1430228603861.aac', 'mp3', '', '', '4', '0', '1430228601', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5007', '177', '165', '/upload/sjftp/rainbowfm/165_1430228629466.aac', 'mp3', '', '', '5', '0', '1430228627', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5009', '177', '165', '/upload/sjftp/rainbowfm/165_1430228668307.aac', 'mp3', '', '', '5', '0', '1430228664', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5011', '177', '59', 'hi', 'char', '', '', '4', '0', '1430259537', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5013', '177', '59', '/upload/sjftp/rainbowfm/1430259556.jpg', 'img', '', '', '4', '0', '1430259556', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5015', '177', '59', '/upload/sjftp/rainbowfm/1430259568.aac', 'mp3', '', '', '4', '0', '1430259568', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5017', '177', '59', '/upload/sjftp/rainbowfm/1430259593.jpg', 'img', '', '', '4', '0', '1430259593', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5019', '177', '59', '/upload/sjftp/rainbowfm/1430259614.jpg', 'img', '', '', '4', '0', '1430259613', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5021', '177', '59', '/upload/sjftp/rainbowfm/1430259635.jpg', 'img', '', '', '4', '0', '1430259635', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5023', '177', '59', '/upload/sjftp/rainbowfm/1430259662.jpg', 'img', '', '', '4', '0', '1430259662', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5025', '177', '59', '/upload/sjftp/rainbowfm/1430259676.jpg', 'img', '', '', '4', '0', '1430259676', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5027', '177', '59', '经济', 'char', '', '', '4', '0', '1430259694', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5029', '177', '59', '/upload/sjftp/rainbowfm/1430259738.jpg', 'img', '', '', '1', '0', '1430259737', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5031', '177', '59', '/upload/sjftp/rainbowfm/1430259746.jpg', 'img', '', '', '1', '0', '1430259745', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5033', '177', '59', '/upload/sjftp/rainbowfm/1430261775.aac', 'mp3', '', '', '1', '0', '1430261775', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5035', '177', '59', '/upload/sjftp/rainbowfm/1430261811.aac', 'mp3', '', '', '1', '0', '1430261810', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5037', '177', '59', '/upload/sjftp/rainbowfm/1430261825.aac', 'mp3', '', '', '1', '0', '1430261824', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5039', '201', '59', '/upload/sjftp/rainbowfm/1430261860.aac', 'mp3', '', '', '1', '0', '1430261859', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5041', '201', '59', '/upload/sjftp/rainbowfm/1430261884.aac', 'mp3', '', '', '1', '0', '1430261883', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5043', '177', '165', '/upload/sjftp/rainbowfm/1430263091.jpg', 'img', '', '', '6', '0', '1430263098', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5045', '177', '165', '/upload/sjftp/rainbowfm/1430269651.jpg', 'img', '', '', '6', '0', '1430269650', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5047', '177', '165', '/upload/sjftp/rainbowfm/1430269674.jpg', 'img', '', '', '6', '0', '1430269673', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5049', '151', '66', '/upload/sjftp/rainbowfm/1430269699.jpg', 'img', '', '', '1', '0', '1430269701', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5051', '151', '165', '/upload/sjftp/rainbowfm/1430269728.jpg', 'img', '', '', '1', '0', '1430269729', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5053', '153', '165', '/upload/sjftp/rainbowfm/1430269772.jpg', 'img', '', '', '1', '0', '1430269771', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5055', '151', '66', '/upload/sjftp/rainbowfm/1430269793.aac', 'mp3', '', '', '1', '0', '1430269793', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5057', '151', '165', '/upload/sjftp/rainbowfm/1430270028.jpg', 'img', '', '', '1', '0', '1430270029', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5059', '177', '66', '/upload/sjftp/rainbowfm/1430270334.jpg', 'img', '', '', '4', '0', '1430270335', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5061', '177', '66', '/upload/sjftp/rainbowfm/1430270351.jpg', 'img', '', '', '4', '0', '1430270349', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5063', '177', '66', '/upload/sjftp/rainbowfm/1430270423.jpg', 'img', '', '', '4', '0', '1430270422', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5065', '177', '165', '/upload/sjftp/rainbowfm/1430272164.aac', 'mp3', '', '', '6', '0', '1430272169', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5067', '177', '165', '/upload/sjftp/rainbowfm/1430272184.aac', 'mp3', '', '', '6', '0', '1430272182', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5069', '177', '165', '/upload/sjftp/rainbowfm/1430272200.aac', 'mp3', '', '', '6', '0', '1430272199', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5071', '177', '163', '/upload/sjftp/rainbowfm/1430272247.aac', 'mp3', '', '', '5', '0', '1430272246', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5073', '177', '103', '/upload/sjftp/rainbowfm/103_1430274202535.png', 'img', '', '', '1', '0', '1430274210', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5075', '177', '103', '/upload/sjftp/rainbowfm/103_1430274267398.aac', 'mp3', '', '', '1', '0', '1430274266', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5077', '177', '163', '/upload/sjftp/rainbowfm/1430278565.aac', 'mp3', '', '', '5', '0', '1430278566', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5079', '177', '163', '/upload/sjftp/rainbowfm/1430278592.aac', 'mp3', '', '', '5', '0', '1430278591', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5081', '159', '59', '主持不错', 'char', '', '', '1', '0', '1430279107', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5083', '159', '59', '/upload/sjftp/rainbowfm/1430279125.aac', 'mp3', '', '', '1', '0', '1430279129', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5085', '159', '59', '/upload/sjftp/rainbowfm/1430279171.jpg', 'img', '', '', '1', '0', '1430279170', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5087', '151', '66', '/upload/sjftp/rainbowfm/1430288268.jpg', 'img', '', '', '1', '0', '1430288266', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5089', '151', '66', '/upload/sjftp/rainbowfm/1430288273.jpg', 'img', '', '', '1', '0', '1430288270', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5091', '151', '66', '/upload/sjftp/rainbowfm/1430288278.jpg', 'img', '', '', '1', '0', '1430288275', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5093', '151', '66', '/upload/sjftp/rainbowfm/1430288283.jpg', 'img', '', '', '1', '0', '1430288280', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5095', '177', '163', '/upload/sjftp/rainbowfm/1430288420.aac', 'mp3', '', '', '5', '0', '1430288418', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5097', '177', '163', '/upload/sjftp/rainbowfm/1430288430.aac', 'mp3', '', '', '5', '0', '1430288428', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5099', '177', '163', '/upload/sjftp/rainbowfm/1430289007.aac', 'mp3', '', '', '5', '0', '1430289007', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5101', '177', '163', '/upload/sjftp/rainbowfm/1430289054.aac', 'mp3', '', '', '5', '0', '1430289052', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5103', '177', '163', '/upload/sjftp/rainbowfm/1430289065.aac', 'mp3', '', '', '5', '0', '1430289063', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5105', '177', '165', '/upload/sjftp/rainbowfm/165_1430289637620.aac', 'mp3', '', '', '4', '0', '1430289634', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5107', '177', '165', '/upload/sjftp/rainbowfm/165_1430289652236.aac', 'mp3', '', '', '4', '0', '1430289652', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5109', '177', '165', '/upload/sjftp/rainbowfm/165_1430289739996.aac', 'mp3', '', '', '4', '0', '1430289738', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5111', '177', '165', '/upload/sjftp/rainbowfm/165_1430289840166.aac', 'mp3', '', '', '5', '0', '1430289838', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5113', '177', '165', '/upload/sjftp/rainbowfm/165_1430290015495.aac', 'mp3', '', '', '4', '0', '1430290012', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5115', '1', '1', '测试测试', 'char', '', '', '1', '5093', '1430290657', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5117', '115', '171', '好', 'char', '', '', '2', '0', '1430290688', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5119', '115', '151', 'great', 'char', '', '', '2', '0', '1430290708', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5121', '115', '85', '你好', 'char', '', '', '2', '0', '1430290718', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5123', '115', '171', '/upload/sjftp/rainbowfm/171_1430290808924.aac', 'mp3', '', '', '2', '0', '1430290764', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5125', '115', '53', '**', 'char', '', '', '2', '0', '1430290803', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5127', '117', '103', '环境', 'char', '', '', '2', '0', '1430292007', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5129', '117', '147', '123486', 'char', '', '', '2', '0', '1430292054', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5131', '151', '66', '/upload/sjftp/rainbowfm/1430293739.aac', 'mp3', '', '', '1', '0', '1430293737', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5133', '151', '66', '/upload/sjftp/rainbowfm/1430294650.mp3', 'mp3', '', '', '1', '0', '1430294650', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5135', '151', '66', '/upload/sjftp/rainbowfm/1430294843.mp3', 'mp3', '', '', '1', '0', '1430294841', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5137', '151', '66', '/upload/sjftp/rainbowfm/1430294878.mp3', 'mp3', '', '', '1', '0', '1430294878', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5139', '151', '66', '/upload/sjftp/rainbowfm/1430294990.mp3', 'mp3', '', '', '1', '0', '1430294987', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5141', '151', '66', '/upload/sjftp/rainbowfm/1430295068.mp3', 'mp3', '', '', '1', '0', '1430295071', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5143', '151', '66', '/upload/sjftp/rainbowfm/1430295073.mp3', 'mp3', '', '', '1', '0', '1430295071', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5145', '151', '66', '/upload/sjftp/rainbowfm/1430295155.mp3', 'mp3', '', '', '1', '0', '1430295155', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5147', '151', '66', '/upload/sjftp/rainbowfm/1430295212.mp3', 'mp3', '', '', '1', '0', '1430295210', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5149', '151', '66', '/upload/sjftp/rainbowfm/1430295223.mp3', 'mp3', '', '', '1', '0', '1430295220', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5151', '151', '66', '/upload/sjftp/rainbowfm/1430295230.mp3', 'mp3', '', '', '1', '0', '1430295227', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5153', '171', '171', '视频加载时间太长', 'char', '', '', '3', '0', '1430296589', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5155', '187', '59', '今晚去***玩一下', 'char', '', '', '1', '0', '1430296824', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5157', '187', '59', '两个人之间！香港的赌城还很便宜', 'char', '', '', '1', '0', '1430296864', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5159', '187', '59', '哦原来是去**', 'char', '', '', '1', '0', '1430296894', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5161', '187', '59', '我可以**', 'char', '', '', '1', '0', '1430297518', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5163', '115', '53', '我要转让**', 'char', '', '', '2', '0', '1430297627', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5165', '187', '59', '哪里有**', 'char', '', '', '1', '0', '1430298015', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5167', '151', '66', '/upload/sjftp/rainbowfm/1430298665.mp3', 'mp3', '', '', '1', '0', '1430298665', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5169', '151', '66', '/upload/sjftp/rainbowfm/1430300708.mp3', 'mp3', '', '', '1', '0', '1430300705', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5171', '177', '59', '/upload/sjftp/rainbowfm/1430301354.mp3', 'mp3', '', '', '1', '0', '1430301353', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5173', '151', '66', '/upload/sjftp/rainbowfm/1430303228.mp3', 'mp3', '', '', '1', '0', '1430303227', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5175', '151', '66', '**', 'char', '', '', '1', '0', '1430303242', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5177', '151', '66', '/upload/sjftp/rainbowfm/1430303482.mp3', 'mp3', '', '', '1', '0', '1430303479', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5179', '177', '165', '/upload/sjftp/rainbowfm/1430303687.aac', 'mp3', '', '', '6', '0', '1430303685', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5181', '177', '66', '个体户', 'char', '', '', '4', '0', '1430303709', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5183', '177', '165', '/upload/sjftp/rainbowfm/1430303735.aac', 'mp3', '', '', '6', '0', '1430303733', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5185', '177', '165', '***里面有很多很好玩的东西m', 'char', '', '', '6', '0', '1430303843', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5187', '151', '66', '/upload/sjftp/rainbowfm/1430304948.mp3', 'mp3', '', '', '1', '0', '1430304946', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5189', '177', '165', '/upload/sjftp/rainbowfm/1430307694.aac', 'mp3', '', '', '6', '0', '1430307692', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5191', '177', '165', '/upload/sjftp/rainbowfm/1430307718.aac', 'mp3', '', '', '6', '0', '1430307715', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5193', '177', '165', '/upload/sjftp/rainbowfm/1430308298.aac', 'mp3', '', '', '6', '0', '1430308301', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5195', '177', '165', '/upload/sjftp/rainbowfm/1430308304.aac', 'mp3', '', '', '6', '0', '1430308301', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5197', '177', '165', 'hi', 'char', '', '', '6', '0', '1430308406', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5199', '177', '115', '/upload/sjftp/rainbowfm/1430308439.aac', 'mp3', '', '', '4', '0', '1430308436', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5201', '177', '165', '/upload/sjftp/rainbowfm/1430308452.aac', 'mp3', '', '', '6', '0', '1430308449', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5203', '177', '165', '/upload/sjftp/rainbowfm/1430308464.aac', 'mp3', '', '', '6', '0', '1430308461', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5205', '177', '165', '/upload/sjftp/rainbowfm/1430308559.aac', 'mp3', '', '', '6', '0', '1430308557', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5207', '177', '165', '/upload/sjftp/rainbowfm/1430308608.aac', 'mp3', '', '', '6', '0', '1430308605', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5209', '177', '115', '/upload/sjftp/rainbowfm/1430308956.aac', 'mp3', '', '', '4', '0', '1430308952', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5211', '177', '165', '/upload/sjftp/rainbowfm/1430308960.aac', 'mp3', '', '', '6', '0', '1430308957', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5213', '177', '165', '/upload/sjftp/rainbowfm/1430309605.aac', 'mp3', '', '', '6', '0', '1430309603', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5215', '177', '165', '/upload/sjftp/rainbowfm/1430309616.aac', 'mp3', '', '', '6', '0', '1430309613', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5217', '177', '165', '/upload/sjftp/rainbowfm/1430309631.aac', 'mp3', '', '', '6', '0', '1430309628', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5219', '177', '165', '/upload/sjftp/rainbowfm/1430309651.aac', 'mp3', '', '', '6', '0', '1430309648', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5221', '177', '165', '/upload/sjftp/rainbowfm/1430309936.aac', 'mp3', '', '', '6', '0', '1430309934', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5223', '177', '165', '/upload/sjftp/rainbowfm/1430309988.aac', 'mp3', '', '', '6', '0', '1430309985', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5225', '177', '165', '/upload/sjftp/rainbowfm/1430310000.aac', 'mp3', '', '', '6', '0', '1430309998', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5227', '177', '165', '/upload/sjftp/rainbowfm/1430310024.aac', 'mp3', '', '', '6', '0', '1430310022', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5229', '177', '165', '/upload/sjftp/rainbowfm/1430310046.aac', 'mp3', '', '', '6', '0', '1430310043', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5231', '177', '115', '/upload/sjftp/rainbowfm/1430310102.aac', 'mp3', '', '', '4', '0', '1430310098', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5233', '177', '115', '/upload/sjftp/rainbowfm/1430310106.aac', 'mp3', '', '', '4', '0', '1430310102', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5235', '177', '165', '/upload/sjftp/rainbowfm/165_1430310155414.aac', 'mp3', '', '', '5', '0', '1430310152', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5237', '177', '165', '/upload/sjftp/rainbowfm/165_1430310174963.aac', 'mp3', '', '', '5', '0', '1430310172', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5239', '177', '165', '/upload/sjftp/rainbowfm/1430316168.aac', 'mp3', '', '', '6', '0', '1430316166', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5241', '177', '165', '/upload/sjftp/rainbowfm/1430316233.aac', 'mp3', '', '', '6', '0', '1430316229', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5243', '177', '165', '/upload/sjftp/rainbowfm/1430353381.aac', 'mp3', '', '', '6', '0', '1430353382', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5245', '177', '165', '/upload/sjftp/rainbowfm/1430353420.aac', 'mp3', '', '', '6', '0', '1430353421', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5247', '177', '165', '/upload/sjftp/rainbowfm/1430353453.aac', 'mp3', '', '', '6', '0', '1430353453', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5249', '177', '165', '/upload/sjftp/rainbowfm/1430353679.aac', 'mp3', '', '', '6', '0', '1430353680', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5251', '151', '66', '/upload/sjftp/rainbowfm/1430358200.mp3', 'mp3', '', '', '1', '0', '1430358200', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5253', '151', '66', '/upload/sjftp/rainbowfm/1430358222.mp3', 'mp3', '', '', '1', '0', '1430358221', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5255', '151', '66', '/upload/sjftp/rainbowfm/1430358308.mp3', 'mp3', '', '', '1', '0', '1430358307', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5257', '151', '66', '/upload/sjftp/rainbowfm/1430358345.mp3', 'mp3', '', '', '1', '0', '1430358344', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5259', '177', '165', '/upload/sjftp/rainbowfm/1430359713.aac', 'mp3', '', '', '6', '0', '1430359713', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5261', '151', '66', '/upload/sjftp/rainbowfm/1430359880.mp3', 'mp3', '', '', '1', '0', '1430359881', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5263', '151', '66', '/upload/sjftp/rainbowfm/1430359902.mp3', 'mp3', '', '', '1', '0', '1430359900', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5265', '151', '66', '/upload/sjftp/rainbowfm/1430359918.mp3', 'mp3', '', '', '1', '0', '1430359917', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5267', '151', '66', '/upload/sjftp/rainbowfm/1430360454.mp3', 'mp3', '', '', '1', '0', '1430360454', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5269', '185', '123', '/upload/sjftp/rainbowfm/1430363601.jpg', 'img', '', '', '1', '0', '1430363603', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5271', '151', '66', '/upload/sjftp/rainbowfm/1430364500.mp3', 'mp3', '', '', '1', '0', '1430364502', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5273', '177', '165', '/upload/sjftp/rainbowfm/165_1430365021645.aac', 'mp3', '', '', '4', '0', '1430365023', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5275', '177', '165', '/upload/sjftp/rainbowfm/165_1430365068069.aac', 'mp3', '', '', '4', '0', '1430365067', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5277', '177', '165', '/upload/sjftp/rainbowfm/165_1430365146517.aac', 'mp3', '', '', '4', '0', '1430365149', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5279', '177', '165', '/upload/sjftp/rainbowfm/1430366078.aac', 'mp3', '', '', '6', '0', '1430366078', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5281', '177', '165', '哼哼唧唧', 'char', '', '', '6', '0', '1430366180', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5283', '177', '165', '/upload/sjftp/rainbowfm/1430366578.aac', 'mp3', '', '', '6', '0', '1430366584', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5285', '177', '165', '/upload/sjftp/rainbowfm/1430366857.aac', 'mp3', '', '', '6', '0', '1430366858', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5287', '177', '165', 'hi', 'char', '', '', '4', '0', '1430366907', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5289', '111', '165', '/upload/sjftp/rainbowfm/1430367290.mp3', 'mp3', '', '', '2', '0', '1430367292', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5291', '177', '165', '/upload/sjftp/rainbowfm/165_1430374910485.aac', 'mp3', '', '', '4', '0', '1430374908', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5293', '177', '165', '/upload/sjftp/rainbowfm/165_1430375528516.aac', 'mp3', '', '', '4', '0', '1430375526', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5295', '115', '165', '/upload/sjftp/rainbowfm/165_1430375945807.aac', 'mp3', '', '', '2', '0', '1430375943', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5297', '165', '165', '/upload/sjftp/rainbowfm/165_1430376237014.aac', 'mp3', '', '', '3', '0', '1430376234', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5299', '153', '165', '/upload/sjftp/rainbowfm/165_1430376256612.aac', 'mp3', '', '', '1', '0', '1430376254', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5301', '153', '165', '/upload/sjftp/rainbowfm/165_1430376274018.aac', 'mp3', '', '', '1', '0', '1430376272', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5303', '153', '165', '/upload/sjftp/rainbowfm/165_1430376288950.aac', 'mp3', '', '', '1', '0', '1430376286', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5305', '153', '165', '/upload/sjftp/rainbowfm/165_1430376297608.aac', 'mp3', '', '', '1', '0', '1430376295', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5307', '115', '165', '/upload/sjftp/rainbowfm/165_1430376326683.aac', 'mp3', '', '', '2', '0', '1430376324', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5309', '177', '165', '/upload/sjftp/rainbowfm/165_1430376504078.aac', 'mp3', '', '', '4', '0', '1430376501', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5311', '151', '165', '/upload/sjftp/rainbowfm/165_1430376523744.aac', 'mp3', '', '', '1', '0', '1430376521', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5313', '151', '127', '/upload/sjftp/rainbowfm/127_1430376763797.aac', 'mp3', '', '', '1', '0', '1430376760', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5315', '151', '127', '/upload/sjftp/rainbowfm/127_1430376778291.aac', 'mp3', '', '', '1', '0', '1430376776', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5319', '177', '165', '/upload/sjftp/rainbowfm/165_1430377752665.aac', 'mp3', '', '', '4', '0', '1430377751', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5321', '177', '165', '/upload/sjftp/rainbowfm/1430377807.aac', 'mp3', '', '', '6', '0', '1430377805', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5323', '117', '159', '你哈', 'char', '', '', '2', '0', '1430377948', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5325', '177', '165', '/upload/sjftp/rainbowfm/1430378241.aac', 'mp3', '', '', '6', '0', '1430378239', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5327', '177', '165', '/upload/sjftp/rainbowfm/1430378739.aac', 'mp3', '', '', '6', '0', '1430378737', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5329', '177', '165', '/upload/sjftp/rainbowfm/1430378818.aac', 'mp3', '', '', '6', '0', '1430378817', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5331', '177', '165', '/upload/sjftp/rainbowfm/1430379162.aac', 'mp3', '', '', '6', '0', '1430379162', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5333', '177', '103', '/upload/sjftp/rainbowfm/103_1430382947958.aac', 'mp3', '', '', '4', '0', '1430382951', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5335', '177', '53', '/upload/sjftp/rainbowfm/53_1430384653676.aac', 'mp3', '', '', '4', '0', '1430384651', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5337', '177', '165', '/upload/sjftp/rainbowfm/1430387452.aac', 'mp3', '', '', '6', '0', '1430387449', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5339', '177', '165', '/upload/sjftp/rainbowfm/1430387473.aac', 'mp3', '', '', '6', '0', '1430387470', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5341', '177', '165', '/upload/sjftp/rainbowfm/165_1430387599118.aac', 'mp3', '', '', '4', '0', '1430387596', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5345', '177', '165', '/upload/sjftp/rainbowfm/165_1430387681703.aac', 'mp3', '', '', '4', '0', '1430387679', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5347', '177', '165', '/upload/sjftp/rainbowfm/165_1430387698870.aac', 'mp3', '', '', '5', '0', '1430387696', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5349', '177', '165', '/upload/sjftp/rainbowfm/165_1430387727610.aac', 'mp3', '', '', '6', '0', '1430387725', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5351', '177', '165', '/upload/sjftp/rainbowfm/165_1430387760906.aac', 'mp3', '', '', '6', '0', '1430387758', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5353', '177', '165', '/upload/sjftp/rainbowfm/165_1430387778416.aac', 'mp3', '', '', '5', '0', '1430387776', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5355', '177', '165', 'hi', 'char', '', '', '4', '0', '1430387980', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5357', '121', '165', 'hao', 'char', '', '', '2', '0', '1430388536', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5359', '121', '165', '/upload/sjftp/rainbowfm/165_1430388551154.aac', 'mp3', '', '', '2', '0', '1430388549', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5361', '177', '165', '/upload/sjftp/rainbowfm/165_1430389489200.aac', 'mp3', '', '', '5', '0', '1430389486', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5363', '177', '59', '好', 'char', '', '', '4', '0', '1430390009', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5365', '177', '59', '/upload/sjftp/rainbowfm/1430406608.aac', 'mp3', '', '', '4', '0', '1430406605', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5367', '177', '59', '/upload/sjftp/rainbowfm/1430406613.aac', 'mp3', '', '', '4', '0', '1430406609', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5369', '177', '59', '/upload/sjftp/rainbowfm/1430467682.aac', 'mp3', '', '', '4', '0', '1430467688', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5371', '177', '59', '/upload/sjftp/rainbowfm/1430535949.aac', 'mp3', '', '', '4', '0', '1430535949', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5373', '177', '59', '/upload/sjftp/rainbowfm/1430562187.aac', 'mp3', '', '', '4', '0', '1430562184', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5375', '151', '59', '/upload/sjftp/rainbowfm/1430578001.mp3', 'mp3', '', '', '1', '0', '1430577996', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5377', '151', '59', '/upload/sjftp/rainbowfm/1430578007.mp3', 'mp3', '', '', '1', '0', '1430578002', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5379', '151', '59', '/upload/sjftp/rainbowfm/1430578383.mp3', 'mp3', '', '', '1', '0', '1430578379', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5381', '151', '59', '/upload/sjftp/rainbowfm/1430578387.mp3', 'mp3', '', '', '1', '0', '1430578382', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5383', '177', '59', '/upload/sjftp/rainbowfm/1430611381.aac', 'mp3', '', '', '4', '0', '1430611381', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5385', '177', '165', '/upload/sjftp/rainbowfm/1430611502.aac', 'mp3', '', '', '6', '0', '1430611501', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5387', '177', '165', '/upload/sjftp/rainbowfm/1430611643.aac', 'mp3', '', '', '6', '0', '1430611642', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5389', '177', '165', '/upload/sjftp/rainbowfm/1430611696.aac', 'mp3', '', '', '6', '0', '1430611695', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5391', '177', '165', '/upload/sjftp/rainbowfm/1430611743.aac', 'mp3', '', '', '6', '0', '1430611742', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5393', '177', '165', '/upload/sjftp/rainbowfm/1430611760.aac', 'mp3', '', '', '6', '0', '1430611759', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5395', '177', '165', '/upload/sjftp/rainbowfm/1430611867.aac', 'mp3', '', '', '6', '0', '1430611867', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5397', '177', '59', '/upload/sjftp/rainbowfm/1430614036.aac', 'mp3', '', '', '4', '0', '1430614035', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5399', '177', '59', '/upload/sjftp/rainbowfm/1430614053.aac', 'mp3', '', '', '4', '0', '1430614052', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5401', '177', '59', '/upload/sjftp/rainbowfm/59_1430707841819.aac', 'mp3', '', '', '4', '0', '1430707842', null, null, '1');
INSERT INTO `lbsmsg` VALUES ('5403', '177', '59', '/upload/sjftp/rainbowfm/59_1430707868468.aac', 'mp3', '', '', '4', '0', '1430707878', null, null, '1');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2015_07_24_083038_create-labels-table', '1');
INSERT INTO `migrations` VALUES ('2015_07_24_083656_add_content_to_labels_table', '1');
INSERT INTO `migrations` VALUES ('2015_07_24_084053_add_content_to_labels_table', '2');
INSERT INTO `migrations` VALUES ('2015_07_24_084709_create_lables_table', '3');
INSERT INTO `migrations` VALUES ('2015_07_24_084818_add_content_to_labels_table', '3');
INSERT INTO `migrations` VALUES ('2015_07_24_085247_create_labels_table', '4');
INSERT INTO `migrations` VALUES ('2015_07_24_085302_add_content_to_labels_table', '4');
INSERT INTO `migrations` VALUES ('2015_07_24_085753_create_blade_table', '5');
INSERT INTO `migrations` VALUES ('2015_07_24_085904_add_content_to_blade_table', '5');
INSERT INTO `migrations` VALUES ('2015_09_21_023101_create_product_table', '5');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(50) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('0000000001', '订单号1', '1');
INSERT INTO `order` VALUES ('0000000002', '订单号2', '1');
INSERT INTO `order` VALUES ('0000000003', '订单号3', '2');
INSERT INTO `order` VALUES ('0000000004', '订单号4', '3');
INSERT INTO `order` VALUES ('0000000005', '订单号5', '4');
INSERT INTO `order` VALUES ('0000000006', '订单号6', '6');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `userid` int(100) NOT NULL,
  `phone` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('1', '1', '4354564');
INSERT INTO `phone` VALUES ('2', '3', '1461346464');
INSERT INTO `phone` VALUES ('3', '2', '13246464');

-- ----------------------------
-- Table structure for pos
-- ----------------------------
DROP TABLE IF EXISTS `pos`;
CREATE TABLE `pos` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned zerofill NOT NULL,
  `article_id` int(10) unsigned zerofill NOT NULL,
  `pos` mediumtext,
  `updated_at` int(11) unsigned zerofill NOT NULL,
  `created_at` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`user_id`),
  KEY `articleid` (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pos
-- ----------------------------
INSERT INTO `pos` VALUES ('0000000001', '0000000001', '0000000001', '评论1', '01430896376', '01430896376');
INSERT INTO `pos` VALUES ('0000000002', '0000000001', '0000000002', '评论2', '01430896376', '01430896376');
INSERT INTO `pos` VALUES ('0000000003', '0000000002', '0000000002', '评论3', '01430896376', '01430896376');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'ceshi', '2015-09-21 00:00:00', '2015-09-21 00:00:00');
INSERT INTO `product` VALUES ('2', 'ceshi', '2015-09-21 11:37:34', '2015-09-21 11:37:34');
INSERT INTO `product` VALUES ('3', '测试 1', '2015-09-21 06:05:23', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('00000000001', 'super');
INSERT INTO `role` VALUES ('00000000002', 'admin');
INSERT INTO `role` VALUES ('00000000003', 'business');

-- ----------------------------
-- Table structure for talk
-- ----------------------------
DROP TABLE IF EXISTS `talk`;
CREATE TABLE `talk` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) NOT NULL,
  `content` varchar(100) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talk
-- ----------------------------
INSERT INTO `talk` VALUES ('1', '111', '李***个***的张的***', '1430203490');
INSERT INTO `talk` VALUES ('2', '123', '李**个**的**', '1430207498');
INSERT INTO `talk` VALUES ('3', '123', '李**个**的**', '1430208528');
INSERT INTO `talk` VALUES ('4', '123', '李**个**的**', '1430208882');
INSERT INTO `talk` VALUES ('5', '123', '李**个**的张的***', '1430208890');
INSERT INTO `talk` VALUES ('6', '123', '李**个**的张的***', '1430209248');
INSERT INTO `talk` VALUES ('7', '123', '李**个**的张的***', '1430210037');
INSERT INTO `talk` VALUES ('8', '123', '李**个**的张的***', '1430211921');
INSERT INTO `talk` VALUES ('9', '123', '李**个**的张的***', '1430212481');
INSERT INTO `talk` VALUES ('10', '123', '李**个**的张的***', '1430212733');
INSERT INTO `talk` VALUES ('11', '123', '李**个**的张的***', '1430212742');
INSERT INTO `talk` VALUES ('12', '313', 'ceshiTMD', '1430897022');
INSERT INTO `talk` VALUES ('13', '313', '*****在干嘛呢', '1430897147');

-- ----------------------------
-- Table structure for tcc_users
-- ----------------------------
DROP TABLE IF EXISTS `tcc_users`;
CREATE TABLE `tcc_users` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` char(255) NOT NULL,
  `updated_at` int(11) unsigned zerofill NOT NULL,
  `created_at` int(11) unsigned zerofill NOT NULL,
  `userable_id` int(10) NOT NULL,
  `userable_type` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `count` int(255) NOT NULL DEFAULT '1',
  `system` tinyint(5) NOT NULL DEFAULT '0' COMMENT '1:系统管理员 0：不是',
  `status` tinyint(5) NOT NULL DEFAULT '0' COMMENT '登陆状态 1：已登录 0：未登录',
  `remember_token` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcc_users
-- ----------------------------
INSERT INTO `tcc_users` VALUES ('00000000001', 'tcc', '$2y$10$eXDfQaySLiem5kw5QB84Tu4uNdhFQV0PdiWMppATWJArX3a1PDBV2', '01430896376', '01430896376', '1', 'article', '1', '1', '1', null);
INSERT INTO `tcc_users` VALUES ('00000000002', 'name2', '', '01430891234', '01430891296', '0', '', '1', '0', '0', null);
INSERT INTO `tcc_users` VALUES ('00000000003', 'name3', '', '01430896376', '01430896376', '0', '', '1', '0', '0', null);
INSERT INTO `tcc_users` VALUES ('00000000004', 'name4', '', '01430896376', '01430896376', '0', '', '1', '0', '0', null);

-- ----------------------------
-- Table structure for traffic
-- ----------------------------
DROP TABLE IF EXISTS `traffic`;
CREATE TABLE `traffic` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `creatime` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traffic
-- ----------------------------
INSERT INTO `traffic` VALUES ('1', '116.256325', '165.65', 'new address', '缓慢', '1431073818');
INSERT INTO `traffic` VALUES ('2', '106.256325', '165.65', 'new address', '顺畅', '1430982934');
INSERT INTO `traffic` VALUES ('3', '106.3', '165.65', 'new address', '拥堵', '1430893193');
INSERT INTO `traffic` VALUES ('4', '106.4866', '165.65', ' address', '缓慢', '1430982994');
INSERT INTO `traffic` VALUES ('5', '106.4', '165.65', 'new address', '交通顺畅sas', '1430983429');
INSERT INTO `traffic` VALUES ('6', '106.4', '165.65', 'new address', '顺畅', '1430893240');
INSERT INTO `traffic` VALUES ('7', '106.5', '165.65', 'new address', '缓慢', '1430893594');
INSERT INTO `traffic` VALUES ('8', '106.5', '165.65', 'new address', '顺畅', '1430984076');
INSERT INTO `traffic` VALUES ('9', '106.5', '165.65', 'new address', '交通顺畅dfgsdf', '1430984109');
INSERT INTO `traffic` VALUES ('10', '106.581515', '165.65', 'new address', '顺畅', '1430994384');
INSERT INTO `traffic` VALUES ('12', '106.518274', '165.65', 'new address', '缓慢', '1430960324');
INSERT INTO `traffic` VALUES ('11', '106.527329', '165.65', 'new address', '顺畅', '1430896376');
INSERT INTO `traffic` VALUES ('13', '106.541199', '165.65', 'new address', '', '1430897662');
INSERT INTO `traffic` VALUES ('14', '106.520574', '165.65', 'new address', '拥堵', '1430994442');
INSERT INTO `traffic` VALUES ('15', '106.527186', '165.65', 'new address', '缓慢 OK', '1430994455');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `users_id` int(11) unsigned zerofill NOT NULL,
  `role_id` int(11) unsigned zerofill NOT NULL,
  KEY `user_role_for1` (`users_id`),
  KEY `user_role_for2` (`role_id`),
  CONSTRAINT `user_role_for1` FOREIGN KEY (`users_id`) REFERENCES `tcc_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_role_for2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('00000000001', '00000000001');
INSERT INTO `users_role` VALUES ('00000000002', '00000000001');

-- ----------------------------
-- Table structure for vod
-- ----------------------------
DROP TABLE IF EXISTS `vod`;
CREATE TABLE `vod` (
  `id` int(12) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL DEFAULT '',
  `vodname` varchar(255) NOT NULL DEFAULT '',
  `watchtime` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vod
-- ----------------------------
INSERT INTO `vod` VALUES ('000000000001', 'qqq', '电影名', '10');
INSERT INTO `vod` VALUES ('000000000002', 'qqq', '电影名1', '11');
INSERT INTO `vod` VALUES ('000000000003', 'qqq', '电影名1', '12');
INSERT INTO `vod` VALUES ('000000000004', 'qqq', '电影名2', '12');
INSERT INTO `vod` VALUES ('000000000005', 'qqq', '电影名3', '12');
INSERT INTO `vod` VALUES ('000000000006', 'qqq', '电影名4', '12');
INSERT INTO `vod` VALUES ('000000000007', 'qqq', '电影名5', '12');
INSERT INTO `vod` VALUES ('000000000008', 'wwww', '电影名5', '12');
INSERT INTO `vod` VALUES ('000000000009', 'eee', '电影名5', '12');
INSERT INTO `vod` VALUES ('000000000010', 'eee', '电影名5', '12');
INSERT INTO `vod` VALUES ('000000000011', 'gggg', '电影名5', '12');
INSERT INTO `vod` VALUES ('000000000012', 'gggg', '电影名3', '12');
INSERT INTO `vod` VALUES ('000000000013', 'hhhh', '电影名4', '12');
INSERT INTO `vod` VALUES ('000000000014', 'nnnn', '电影名3', '12');
