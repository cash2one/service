/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : wifi2

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-08-09 13:06:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wifi_access`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_access`;
CREATE TABLE `wifi_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_access
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_ad`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_ad`;
CREATE TABLE `wifi_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '上传作者ID',
  `ad_pos` tinyint(4) NOT NULL DEFAULT '0' COMMENT '广告位置 0首页 ',
  `ad_thumb` varchar(50) DEFAULT NULL COMMENT '广告缩略图',
  `ad_sort` int(11) DEFAULT NULL COMMENT '广告排序',
  `title` varchar(255) DEFAULT NULL,
  `info` text,
  `mode` tinyint(4) DEFAULT '0' COMMENT '0：图片 1 图文 2 链接',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of wifi_ad
-- ----------------------------
INSERT INTO `wifi_ad` VALUES ('6', '1', '0', '/upload/AD/22.jpg', '0', 'ropple智慧无线路由', '<p>\r\n	<span style=\"color:#939393;font-family:\'Microsoft Yahei\';font-size:16px;line-height:25px;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<h3 style=\"font-size:24px;font-family:\'Microsoft Yahei\';color:#24A0DC;background-color:#FFFFFF;\">\r\n	WiFi营销，亿万自媒体市场\r\n</h3>\r\n&nbsp;&nbsp;<span style=\"background-color:#FFFFFF;color:#939393;font-family:\'Microsoft Yahei\';font-size:16px;line-height:25px;\">支持包括微信、手机短信等多种认证方式，用户无需频繁询问复杂的WiFi密码，减少询问人力成本。用户通过认证时，自动成为你社交平台的粉丝。配合WiFi网站解决方案，实现精准广告投放、智能客户信息管理、自动品牌展示等功能。轻松将路人变成你的客户。</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#939393;font-family:\'Microsoft Yahei\';font-size:16px;line-height:25px;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<h3 style=\"font-size:24px;font-family:\'Microsoft Yahei\';color:#24A0DC;background-color:#FFFFFF;\">\r\n	简单操作，展现广告\r\n</h3>\r\n<p style=\"color:#939393;font-family:\'Microsoft Yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	用户无需注册，即可方便享受商家提供的WiFi服务。无需频繁询问复杂的WiFi密码，减少人力成本。商家可配合WiFi网站解决方案，实现精准广告投放、智能客户信息管理、自动品牌展示等功能。轻松将路人变成您的客户，同时大幅度减少广告投入成本，为您带来更多的收益。\r\n</p>\r\n<h3 style=\"font-size:24px;font-family:\'Microsoft Yahei\';color:#24A0DC;background-color:#FFFFFF;\">\r\n	全行业方案支持\r\n</h3>\r\n<p style=\"color:#939393;font-family:\'Microsoft Yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	“WIFI认证”适用于酒店、餐饮、娱乐休闲、展会、商场等场所，有客户的地方就可以使用“WIFI认证”，不论是推送广告还是展示商家主页，仅需一台Ropple云路由，便可对顾客进行精准营销！\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>', '1', '1410628352', '1410946424', '1');
INSERT INTO `wifi_ad` VALUES ('7', '1', '0', '/upload/AD/1.jpg', '2', '微信拍立得微信打印机', '<h3>\r\n	&nbsp; &nbsp; 疯狂增加粉丝、低成本开发新客户\r\n	高效传播品牌、打造可持续后期营销\r\n</h3>\r\n<h3>\r\n	<span style=\"line-height:1.5;font-size:16px;font-weight:normal;\"><strong>什么是微信拍立得？</strong></span> \r\n</h3>\r\n<div style=\"margin:30px 0px 0px;padding:0px 60px 0px 0px;\" class=\"lomo_introduce_describe\">\r\n	<p>\r\n		微信拍立得是帮助商家做好微信营销的创新型产品。\r\n	</p>\r\n	<p>\r\n		通过微信照片打印这一广受年轻人追捧的功能，快速帮助商家增加公众微信的粉丝。\r\n	</p>\r\n</div>\r\n<p>\r\n	商家可以通过系统的营销方案达到持久营销的效果。\r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;font-size:16px;\"><strong>微信拍立得增粉原理</strong></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"margin:30px 0px 0px;padding:0px;\" class=\"lomo_introduce_2_describe\">\r\n	<p>\r\n		要知道微信拍立得增粉原理，就要知道其打印照片步骤：\r\n	</p>\r\n	<p>\r\n		第一步：关注商家微信公众账号<br />\r\n第二步：发送想要打印的照片给商家公众号<br />\r\n第三步：发送验证码，打印照片\r\n	</p>\r\n	<p>\r\n		所以，如果用户想打印照片，他就会很自然的成为您的微信公众账号的粉丝了！\r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	核心价值1：低成本、疯狂增加粉丝\r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\">通过微信传图，打印出自己喜欢的照片是一件非常酷，微信照片打印同时也是一件非常有意义的事情。</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\">现在的年轻人追求时尚，好玩。微信拍立得正是这样的产品，可以简单的吸引年轻时尚，高消费能力的用户。</span><span style=\"line-height:1.5;\">根据现有运营数据，每台微信拍立得平均每天能为网站、企业带来80~500个微信粉丝，100~1000条互动信息，100~800张LOMO卡制作量。</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"> </span> \r\n</p>\r\n<p>\r\n	核心价值2：病毒式传播品牌\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\">微信拍立得</span><span style=\"line-height:1.5;\">微信打印机</span><span style=\"line-height:1.5;\">的界面可以设置商家视频或图片广告，在制作LOMO照片的过程中，商家的品牌得以友好的传播。</span><span style=\"line-height:1.5;\">并且制作的每张LOMO卡上，均有由企业自行设置的LOGO及企业的公众微信二维码，便于品牌二次传播。</span><span style=\"line-height:1.5;\">用户在同好友分享的过程中，您的品牌得以病毒式的传播。</span><span style=\"line-height:1.5;\">微信拍立得</span><span style=\"line-height:1.5;\">微信打印机</span><span style=\"line-height:1.5;\">，您提升品牌价值的不二之选！</span> \r\n</p>\r\n<div style=\"margin:0px;padding:0px;\" class=\"lomo_value_tittle\">\r\n	核心价值3： 可持续的后期营销\r\n</div>\r\n<div style=\"margin:30px 0px 0px;padding:0px;\" class=\"lomo_value_3_describe\">\r\n	<p>\r\n		我们都知道，获取一位新客户的成本是相当高的。而通过微信拍立得微信打印机，我们却只需要0.18元。\r\n	</p>\r\n	<p>\r\n		有了这些粉丝，我们就有了一个客户数据库，通过一些营销方案，我们可以轻松的和这些潜在用户互动。\r\n	</p>\r\n	<p>\r\n		时机成熟的时候，我们提出成交主张就会得到响应。这是微信拍立得最具价值的地方。\r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1', '1410628630', '1438161271', '1');
INSERT INTO `wifi_ad` VALUES ('17', '1', '0', '/upload/AD/55b8995810ffa.jpg', '1', '正森-白', '', '0', '1438161240', '1438161280', '1');
INSERT INTO `wifi_ad` VALUES ('18', '1', '0', '/upload/AD/55b899692eb92.jpg', '3', '正森-红', '', '0', '1438161257', '1438161289', '1');
INSERT INTO `wifi_ad` VALUES ('19', '11', '0', '/upload/AD/55c07e27ab1f5.png', '0', '测试', '', '0', '1438678567', '1438678567', '1');
INSERT INTO `wifi_ad` VALUES ('10', '5', '0', '', '0', 'sdf', 'sdaf', '1', '1410966330', '1413248022', '1');
INSERT INTO `wifi_ad` VALUES ('11', '5', '0', '', '0', '123', '123', '1', '1410966340', '1413248027', '1');
INSERT INTO `wifi_ad` VALUES ('12', '8', '0', '', '0', '', '', '0', '1412943380', '1412943380', '1');
INSERT INTO `wifi_ad` VALUES ('13', '9', '0', '', '0', 'x', 'xx', '1', '1413248756', '1413248756', '1');

-- ----------------------------
-- Table structure for `wifi_adcount`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_adcount`;
CREATE TABLE `wifi_adcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL COMMENT '广告ID',
  `showup` int(11) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `add_date` varchar(20) DEFAULT NULL,
  `mode` tinyint(4) DEFAULT NULL COMMENT '类型  1 商户广告统计  99 运营商投放广告 ',
  `agent` varchar(100) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `browser` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9942 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_adcount
-- ----------------------------
INSERT INTO `wifi_adcount` VALUES ('1494', '1', '20', '1', '0', '1410952948', '2014-09-17', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('1495', '1', '19', '1', '0', '1410952948', '2014-09-17', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('6834', '1', '6', '1', '0', '1437379455', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6835', '1', '14', '1', '0', '1437379455', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6836', '1', '15', '1', '0', '1437379455', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6837', '1', '16', '1', '0', '1437379455', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6838', '1', '7', '1', '0', '1437379455', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6839', '1', '8', '1', '0', '1437379455', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6840', '1', null, '1', '0', '1437379459', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6841', '1', '6', '1', '0', '1437379466', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6842', '1', '14', '1', '0', '1437379466', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6843', '1', '15', '1', '0', '1437379466', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6844', '1', '16', '1', '0', '1437379466', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6845', '1', '7', '1', '0', '1437379466', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6846', '1', '8', '1', '0', '1437379466', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6847', '1', '6', '1', '0', '1437379468', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6848', '1', '14', '1', '0', '1437379468', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6849', '1', '15', '1', '0', '1437379468', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6850', '1', '16', '1', '0', '1437379468', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6851', '1', '7', '1', '0', '1437379468', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6852', '1', '8', '1', '0', '1437379468', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6853', '1', null, '1', '0', '1437379473', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6854', '1', null, '1', '0', '1437379479', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6855', '1', '6', '1', '0', '1437379500', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6856', '1', '14', '1', '0', '1437379500', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6857', '1', '15', '1', '0', '1437379500', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6858', '1', '16', '1', '0', '1437379500', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6859', '1', '7', '1', '0', '1437379500', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6860', '1', '8', '1', '0', '1437379500', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6861', '1', null, '1', '0', '1437379504', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6862', '1', null, '1', '0', '1437379506', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6863', '1', '6', '1', '0', '1437379513', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6864', '1', '14', '1', '0', '1437379513', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6865', '1', '15', '1', '0', '1437379513', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6866', '1', '16', '1', '0', '1437379513', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6867', '1', '7', '1', '0', '1437379513', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6868', '1', '8', '1', '0', '1437379513', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6869', '1', null, '1', '0', '1437379519', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6870', '1', '6', '1', '0', '1437379525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6871', '1', '14', '1', '0', '1437379525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6872', '1', '15', '1', '0', '1437379525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6873', '1', '16', '1', '0', '1437379525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6874', '1', '7', '1', '0', '1437379525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6875', '1', '8', '1', '0', '1437379525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6876', '1', '6', '1', '0', '1437379607', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6877', '1', '14', '1', '0', '1437379607', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6878', '1', '15', '1', '0', '1437379607', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6879', '1', '16', '1', '0', '1437379607', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6880', '1', '7', '1', '0', '1437379607', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6881', '1', '8', '1', '0', '1437379607', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6882', '1', null, '1', '0', '1437379611', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6883', '1', '6', '1', '0', '1437379653', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6884', '1', '14', '1', '0', '1437379653', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6885', '1', '15', '1', '0', '1437379653', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6886', '1', '16', '1', '0', '1437379653', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6887', '1', '7', '1', '0', '1437379653', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6888', '1', '8', '1', '0', '1437379653', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6889', '1', null, '1', '0', '1437379664', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6890', '1', null, '1', '0', '1437379687', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6891', '22', '6', '1', '0', '1437379722', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6892', '22', '14', '1', '0', '1437379722', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6893', '22', '15', '1', '0', '1437379722', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6894', '22', '16', '1', '0', '1437379722', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6895', '22', '7', '1', '0', '1437379722', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6896', '22', '8', '1', '0', '1437379722', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6897', '1', null, '1', '0', '1437379726', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6898', '1', null, '1', '0', '1437379729', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6899', '22', '6', '1', '0', '1437379767', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6900', '22', '14', '1', '0', '1437379767', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6901', '22', '15', '1', '0', '1437379767', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6902', '22', '16', '1', '0', '1437379767', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6903', '22', '7', '1', '0', '1437379767', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6904', '22', '8', '1', '0', '1437379767', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6905', '1', '6', '1', '0', '1437379783', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6906', '1', '14', '1', '0', '1437379783', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6907', '1', '15', '1', '0', '1437379783', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6908', '1', '16', '1', '0', '1437379783', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6909', '1', '7', '1', '0', '1437379783', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6910', '1', '8', '1', '0', '1437379783', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6911', '1', '6', '1', '0', '1437379820', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6912', '1', '14', '1', '0', '1437379820', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6913', '1', '15', '1', '0', '1437379820', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6914', '1', '16', '1', '0', '1437379820', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6915', '1', '7', '1', '0', '1437379820', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6916', '1', '8', '1', '0', '1437379820', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6917', '1', null, '1', '0', '1437379825', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6918', '1', '6', '1', '0', '1437381189', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6919', '1', '14', '1', '0', '1437381189', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6920', '1', '15', '1', '0', '1437381189', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6921', '1', '16', '1', '0', '1437381189', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6922', '1', '7', '1', '0', '1437381189', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6923', '1', '8', '1', '0', '1437381189', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6924', '1', null, '1', '0', '1437381193', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6925', '1', null, '0', '1', '1437381254', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6926', '1', null, '1', '0', '1437381257', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6927', '1', '6', '1', '0', '1437381359', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6928', '1', '14', '1', '0', '1437381359', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6929', '1', '15', '1', '0', '1437381359', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6930', '1', '16', '1', '0', '1437381359', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6931', '1', '7', '1', '0', '1437381359', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6932', '1', '8', '1', '0', '1437381359', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6933', '1', null, '1', '0', '1437381363', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6934', '1', '6', '1', '0', '1437381437', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6935', '1', '14', '1', '0', '1437381437', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6936', '1', '15', '1', '0', '1437381437', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6937', '1', '16', '1', '0', '1437381437', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6938', '1', '7', '1', '0', '1437381437', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6939', '1', '8', '1', '0', '1437381437', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6940', '1', null, '1', '0', '1437381441', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6941', '1', '6', '1', '0', '1437381525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6942', '1', '14', '1', '0', '1437381525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6943', '1', '15', '1', '0', '1437381525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6944', '1', '16', '1', '0', '1437381525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6945', '1', '7', '1', '0', '1437381525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6946', '1', '8', '1', '0', '1437381525', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6947', '1', null, '1', '0', '1437381533', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6948', '1', '6', '1', '0', '1437383947', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6949', '1', '14', '1', '0', '1437383947', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6950', '1', '15', '1', '0', '1437383947', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6951', '1', '16', '1', '0', '1437383947', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6952', '1', '7', '1', '0', '1437383947', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6953', '1', '8', '1', '0', '1437383947', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6954', '1', null, '1', '0', '1437383953', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6955', '1', '6', '1', '0', '1437383968', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6956', '1', '14', '1', '0', '1437383968', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6957', '1', '15', '1', '0', '1437383968', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6958', '1', '16', '1', '0', '1437383968', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6959', '1', '7', '1', '0', '1437383968', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6960', '1', '8', '1', '0', '1437383968', '2015-07-20', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6961', null, null, '1', '0', '1437387341', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6962', null, null, '1', '0', '1437388221', '2015-07-20', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6963', '1', null, '1', '0', '1437454144', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('6964', '1', '6', '1', '0', '1437454656', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6965', '1', '14', '1', '0', '1437454656', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6966', '1', '15', '1', '0', '1437454656', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6967', '1', '16', '1', '0', '1437454656', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6968', '1', '7', '1', '0', '1437454656', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6969', '1', '8', '1', '0', '1437454656', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6970', '1', '6', '1', '0', '1437454657', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6971', '1', '14', '1', '0', '1437454657', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6972', '1', '15', '1', '0', '1437454657', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6973', '1', '16', '1', '0', '1437454657', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6974', '1', '7', '1', '0', '1437454657', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6975', '1', '8', '1', '0', '1437454657', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6976', '1', '6', '0', '1', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6977', '1', '6', '1', '0', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6978', '1', '14', '1', '0', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6979', '1', '15', '1', '0', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6980', '1', '16', '1', '0', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6981', '1', '7', '1', '0', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6982', '1', '8', '1', '0', '1437454658', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6983', '22', '6', '1', '0', '1437454663', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6984', '22', '14', '1', '0', '1437454663', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6985', '22', '15', '1', '0', '1437454663', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6986', '22', '16', '1', '0', '1437454663', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6987', '22', '7', '1', '0', '1437454663', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6988', '22', '8', '1', '0', '1437454663', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6989', '1', '6', '1', '0', '1437454671', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6990', '1', '14', '1', '0', '1437454671', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6991', '1', '15', '1', '0', '1437454671', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6992', '1', '16', '1', '0', '1437454671', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6993', '1', '7', '1', '0', '1437454671', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6994', '1', '8', '1', '0', '1437454671', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6995', '22', '6', '1', '0', '1437454704', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6996', '22', '14', '1', '0', '1437454704', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6997', '22', '15', '1', '0', '1437454704', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6998', '22', '16', '1', '0', '1437454704', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('6999', '22', '7', '1', '0', '1437454704', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7000', '22', '8', '1', '0', '1437454704', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7001', '1', null, '1', '0', '1437454917', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7002', '1', '6', '1', '0', '1437455241', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7003', '1', '14', '1', '0', '1437455241', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7004', '1', '15', '1', '0', '1437455241', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7005', '1', '16', '1', '0', '1437455241', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7006', '1', '7', '1', '0', '1437455241', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7007', '1', '8', '1', '0', '1437455241', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7008', '1', '6', '1', '0', '1437455245', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7009', '1', '14', '1', '0', '1437455245', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7010', '1', '15', '1', '0', '1437455245', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7011', '1', '16', '1', '0', '1437455245', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7012', '1', '7', '1', '0', '1437455245', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7013', '1', '8', '1', '0', '1437455245', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7014', '1', '6', '1', '0', '1437455251', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7015', '1', '14', '1', '0', '1437455251', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7016', '1', '15', '1', '0', '1437455251', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7017', '1', '16', '1', '0', '1437455251', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7018', '1', '7', '1', '0', '1437455251', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7019', '1', '8', '1', '0', '1437455251', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7020', '1', '6', '1', '0', '1437460721', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7021', '1', '14', '1', '0', '1437460721', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7022', '1', '15', '1', '0', '1437460721', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7023', '1', '16', '1', '0', '1437460721', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7024', '1', '7', '1', '0', '1437460721', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7025', '1', '8', '1', '0', '1437460721', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7026', '1', null, '1', '0', '1437460723', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7027', '22', '6', '1', '0', '1437460735', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7028', '22', '14', '1', '0', '1437460735', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7029', '22', '15', '1', '0', '1437460735', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7030', '22', '16', '1', '0', '1437460735', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7031', '22', '7', '1', '0', '1437460735', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7032', '22', '8', '1', '0', '1437460735', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7033', '1', null, '1', '0', '1437460741', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7034', '1', null, '1', '0', '1437460992', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7035', '1', '6', '1', '0', '1437460993', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7036', '1', '14', '1', '0', '1437460993', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7037', '1', '15', '1', '0', '1437460993', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7038', '1', '16', '1', '0', '1437460993', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7039', '1', '7', '1', '0', '1437460993', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7040', '1', '8', '1', '0', '1437460993', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7041', '1', null, '1', '0', '1437460996', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7042', '1', null, '1', '0', '1437460999', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7043', '1', null, '1', '0', '1437461002', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7044', '1', null, '1', '0', '1437461006', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7045', '1', null, '1', '0', '1437461009', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7046', '1', null, '1', '0', '1437461012', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7047', '1', null, '1', '0', '1437461015', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7048', '1', null, '1', '0', '1437461020', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7049', '1', null, '1', '0', '1437461037', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7050', '1', '6', '1', '0', '1437461041', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7051', '1', '14', '1', '0', '1437461041', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7052', '1', '15', '1', '0', '1437461041', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7053', '1', '16', '1', '0', '1437461041', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7054', '1', '7', '1', '0', '1437461041', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7055', '1', '8', '1', '0', '1437461041', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7056', '1', null, '1', '0', '1437461044', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7057', '1', '6', '1', '0', '1437461206', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7058', '1', '14', '1', '0', '1437461206', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7059', '1', '15', '1', '0', '1437461206', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7060', '1', '16', '1', '0', '1437461206', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7061', '1', '7', '1', '0', '1437461206', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7062', '1', '8', '1', '0', '1437461206', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7063', '1', null, '1', '0', '1437461219', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7064', '1', null, '1', '0', '1437461266', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7065', '1', null, '1', '0', '1437461277', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7066', '22', '6', '1', '0', '1437461352', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7067', '22', '14', '1', '0', '1437461352', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7068', '22', '15', '1', '0', '1437461352', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7069', '22', '16', '1', '0', '1437461352', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7070', '22', '7', '1', '0', '1437461352', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7071', '22', '8', '1', '0', '1437461352', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7072', '1', null, '1', '0', '1437461497', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7073', '1', null, '1', '0', '1437461544', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7074', '1', null, '1', '0', '1437461550', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7075', '1', null, '1', '0', '1437461561', '2015-07-21', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7076', '1', '6', '1', '0', '1437470390', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7077', '1', '14', '1', '0', '1437470390', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7078', '1', '15', '1', '0', '1437470390', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7079', '1', '16', '1', '0', '1437470390', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7080', '1', '7', '1', '0', '1437470390', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7081', '1', '8', '1', '0', '1437470390', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7082', '1', '6', '1', '0', '1437470434', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7083', '1', '14', '1', '0', '1437470434', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7084', '1', '15', '1', '0', '1437470434', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7085', '1', '16', '1', '0', '1437470434', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7086', '1', '7', '1', '0', '1437470434', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7087', '1', '8', '1', '0', '1437470434', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7088', '1', '6', '1', '0', '1437471762', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7089', '1', '14', '1', '0', '1437471762', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7090', '1', '15', '1', '0', '1437471762', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7091', '1', '16', '1', '0', '1437471762', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7092', '1', '7', '1', '0', '1437471762', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7093', '1', '8', '1', '0', '1437471762', '2015-07-21', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7094', '1', '6', '1', '0', '1437543935', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7095', '1', '14', '1', '0', '1437543935', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7096', '1', '15', '1', '0', '1437543935', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7097', '1', '16', '1', '0', '1437543935', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7098', '1', '7', '1', '0', '1437543935', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7099', '1', '8', '1', '0', '1437543935', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7100', '1', '6', '1', '0', '1437556678', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7101', '1', '14', '1', '0', '1437556678', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7102', '1', '15', '1', '0', '1437556678', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7103', '1', '16', '1', '0', '1437556678', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7104', '1', '7', '1', '0', '1437556678', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7105', '1', '8', '1', '0', '1437556678', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7106', '1', '6', '1', '0', '1437556832', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7107', '1', '14', '1', '0', '1437556832', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7108', '1', '15', '1', '0', '1437556832', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7109', '1', '16', '1', '0', '1437556832', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7110', '1', '7', '1', '0', '1437556832', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7111', '1', '8', '1', '0', '1437556832', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7112', '1', '8', '0', '1', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7113', '1', '6', '1', '0', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7114', '1', '14', '1', '0', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7115', '1', '15', '1', '0', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7116', '1', '16', '1', '0', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7117', '1', '7', '1', '0', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7118', '1', '8', '1', '0', '1437575082', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7119', '1', '6', '1', '0', '1437575723', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7120', '1', '14', '1', '0', '1437575723', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7121', '1', '15', '1', '0', '1437575723', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7122', '1', '16', '1', '0', '1437575723', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7123', '1', '7', '1', '0', '1437575723', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7124', '1', '8', '1', '0', '1437575723', '2015-07-22', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7125', '1', '6', '1', '0', '1437612753', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7126', '1', '14', '1', '0', '1437612753', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7127', '1', '15', '1', '0', '1437612753', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7128', '1', '16', '1', '0', '1437612753', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7129', '1', '7', '1', '0', '1437612753', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7130', '1', '8', '1', '0', '1437612753', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7131', '1', '6', '1', '0', '1437647551', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7132', '1', '14', '1', '0', '1437647551', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7133', '1', '15', '1', '0', '1437647551', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7134', '1', '16', '1', '0', '1437647551', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7135', '1', '7', '1', '0', '1437647551', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7136', '1', '8', '1', '0', '1437647551', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7137', '1', '6', '1', '0', '1437648164', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7138', '1', '14', '1', '0', '1437648164', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7139', '1', '15', '1', '0', '1437648164', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7140', '1', '16', '1', '0', '1437648164', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7141', '1', '7', '1', '0', '1437648164', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7142', '1', '8', '1', '0', '1437648164', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7143', '1', '6', '1', '0', '1437648249', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7144', '1', '14', '1', '0', '1437648249', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7145', '1', '15', '1', '0', '1437648249', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7146', '1', '16', '1', '0', '1437648249', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7147', '1', '7', '1', '0', '1437648249', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7148', '1', '8', '1', '0', '1437648249', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7149', '1', '6', '1', '0', '1437648327', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7150', '1', '14', '1', '0', '1437648327', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7151', '1', '15', '1', '0', '1437648327', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7152', '1', '16', '1', '0', '1437648327', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7153', '1', '7', '1', '0', '1437648327', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7154', '1', '8', '1', '0', '1437648327', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7155', '1', '6', '1', '0', '1437648605', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7156', '1', '14', '1', '0', '1437648605', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7157', '1', '15', '1', '0', '1437648605', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7158', '1', '16', '1', '0', '1437648605', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7159', '1', '7', '1', '0', '1437648605', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7160', '1', '8', '1', '0', '1437648605', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7161', '1', '6', '1', '0', '1437648683', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7162', '1', '14', '1', '0', '1437648683', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7163', '1', '15', '1', '0', '1437648683', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7164', '1', '16', '1', '0', '1437648683', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7165', '1', '7', '1', '0', '1437648683', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7166', '1', '8', '1', '0', '1437648683', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7167', '1', '6', '1', '0', '1437648701', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7168', '1', '14', '1', '0', '1437648701', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7169', '1', '15', '1', '0', '1437648701', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7170', '1', '16', '1', '0', '1437648701', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7171', '1', '7', '1', '0', '1437648701', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7172', '1', '8', '1', '0', '1437648701', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7173', '1', '6', '1', '0', '1437648712', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7174', '1', '14', '1', '0', '1437648712', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7175', '1', '15', '1', '0', '1437648712', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7176', '1', '16', '1', '0', '1437648712', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7177', '1', '7', '1', '0', '1437648712', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7178', '1', '8', '1', '0', '1437648712', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7179', '1', '6', '1', '0', '1437648734', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7180', '1', '14', '1', '0', '1437648734', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7181', '1', '15', '1', '0', '1437648734', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7182', '1', '16', '1', '0', '1437648734', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7183', '1', '7', '1', '0', '1437648734', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7184', '1', '8', '1', '0', '1437648734', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7185', '1', '6', '1', '0', '1437648790', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7186', '1', '14', '1', '0', '1437648790', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7187', '1', '15', '1', '0', '1437648790', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7188', '1', '16', '1', '0', '1437648790', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7189', '1', '7', '1', '0', '1437648790', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7190', '1', '8', '1', '0', '1437648790', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7191', '1', '6', '1', '0', '1437649329', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7192', '1', '14', '1', '0', '1437649329', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7193', '1', '15', '1', '0', '1437649329', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7194', '1', '16', '1', '0', '1437649329', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7195', '1', '7', '1', '0', '1437649329', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7196', '1', '8', '1', '0', '1437649329', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7197', '1', '6', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7198', '1', '14', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7199', '1', '15', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7200', '1', '16', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7201', '1', '7', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7202', '1', '8', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7203', '1', '6', '0', '1', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7204', '1', '6', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7205', '1', '14', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7206', '1', '15', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7207', '1', '16', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7208', '1', '7', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7209', '1', '8', '1', '0', '1437649337', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7210', '22', '6', '1', '0', '1437649343', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7211', '22', '14', '1', '0', '1437649343', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7212', '22', '15', '1', '0', '1437649343', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7213', '22', '16', '1', '0', '1437649343', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7214', '22', '7', '1', '0', '1437649343', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7215', '22', '8', '1', '0', '1437649343', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7216', '1', '6', '1', '0', '1437649383', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7217', '1', '14', '1', '0', '1437649383', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7218', '1', '15', '1', '0', '1437649383', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7219', '1', '16', '1', '0', '1437649383', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7220', '1', '7', '1', '0', '1437649383', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7221', '1', '8', '1', '0', '1437649383', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7222', '22', '6', '1', '0', '1437649423', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7223', '22', '14', '1', '0', '1437649423', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7224', '22', '15', '1', '0', '1437649423', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7225', '22', '16', '1', '0', '1437649423', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7226', '22', '7', '1', '0', '1437649423', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7227', '22', '8', '1', '0', '1437649423', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7228', '1', '6', '1', '0', '1437649451', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7229', '1', '14', '1', '0', '1437649451', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7230', '1', '15', '1', '0', '1437649451', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7231', '1', '16', '1', '0', '1437649451', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7232', '1', '7', '1', '0', '1437649451', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7233', '1', '8', '1', '0', '1437649451', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7234', '22', '6', '1', '0', '1437649462', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7235', '22', '14', '1', '0', '1437649462', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7236', '22', '15', '1', '0', '1437649462', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7237', '22', '16', '1', '0', '1437649462', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7238', '22', '7', '1', '0', '1437649462', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7239', '22', '8', '1', '0', '1437649462', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7240', '1', '6', '1', '0', '1437650124', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7241', '1', '14', '1', '0', '1437650124', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7242', '1', '15', '1', '0', '1437650124', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7243', '1', '16', '1', '0', '1437650124', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7244', '1', '7', '1', '0', '1437650124', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7245', '1', '8', '1', '0', '1437650124', '2015-07-23', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7246', '1', '6', '1', '0', '1437712338', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7247', '1', '14', '1', '0', '1437712338', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7248', '1', '15', '1', '0', '1437712338', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7249', '1', '16', '1', '0', '1437712338', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7250', '1', '7', '1', '0', '1437712338', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7251', '1', '8', '1', '0', '1437712338', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7252', '1', '6', '1', '0', '1437724225', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7253', '1', '14', '1', '0', '1437724225', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7254', '1', '15', '1', '0', '1437724225', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7255', '1', '16', '1', '0', '1437724225', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7256', '1', '7', '1', '0', '1437724225', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7257', '1', '8', '1', '0', '1437724225', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7258', '1', '6', '1', '0', '1437724226', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7259', '1', '14', '1', '0', '1437724226', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7260', '1', '15', '1', '0', '1437724226', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7261', '1', '16', '1', '0', '1437724226', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7262', '1', '7', '1', '0', '1437724226', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7263', '1', '8', '1', '0', '1437724226', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7264', '1', '6', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7265', '1', '14', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7266', '1', '15', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7267', '1', '16', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7268', '1', '7', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7269', '1', '8', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7270', '1', '6', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7271', '1', '14', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7272', '1', '15', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7273', '1', '16', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7274', '1', '7', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7275', '1', '8', '1', '0', '1437724227', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7276', '1', '6', '1', '0', '1437727323', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7277', '1', '14', '1', '0', '1437727323', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7278', '1', '15', '1', '0', '1437727323', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7279', '1', '16', '1', '0', '1437727323', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7280', '1', '7', '1', '0', '1437727323', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7281', '1', '8', '1', '0', '1437727323', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7282', '1', '6', '1', '0', '1437727327', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7283', '1', '14', '1', '0', '1437727327', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7284', '1', '15', '1', '0', '1437727327', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7285', '1', '16', '1', '0', '1437727327', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7286', '1', '7', '1', '0', '1437727327', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7287', '1', '8', '1', '0', '1437727327', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7288', '22', '6', '1', '0', '1437728288', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7289', '22', '14', '1', '0', '1437728288', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7290', '22', '15', '1', '0', '1437728288', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7291', '22', '16', '1', '0', '1437728288', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7292', '22', '7', '1', '0', '1437728288', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7293', '22', '8', '1', '0', '1437728288', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7294', '1', '6', '1', '0', '1437728290', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7295', '1', '14', '1', '0', '1437728290', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7296', '1', '15', '1', '0', '1437728290', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7297', '1', '16', '1', '0', '1437728290', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7298', '1', '7', '1', '0', '1437728290', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7299', '1', '8', '1', '0', '1437728290', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7300', '22', '6', '1', '0', '1437728470', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7301', '22', '14', '1', '0', '1437728470', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7302', '22', '15', '1', '0', '1437728470', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7303', '22', '16', '1', '0', '1437728470', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7304', '22', '7', '1', '0', '1437728470', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7305', '22', '8', '1', '0', '1437728470', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7306', '22', '6', '1', '0', '1437728490', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7307', '22', '14', '1', '0', '1437728490', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7308', '22', '15', '1', '0', '1437728490', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7309', '22', '16', '1', '0', '1437728490', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7310', '22', '7', '1', '0', '1437728490', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7311', '22', '8', '1', '0', '1437728490', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7312', '22', '6', '1', '0', '1437728526', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7313', '22', '14', '1', '0', '1437728526', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7314', '22', '15', '1', '0', '1437728526', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7315', '22', '16', '1', '0', '1437728526', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7316', '22', '7', '1', '0', '1437728526', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7317', '22', '8', '1', '0', '1437728526', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7318', '22', '6', '1', '0', '1437728556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7319', '22', '14', '1', '0', '1437728556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7320', '22', '15', '1', '0', '1437728556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7321', '22', '16', '1', '0', '1437728556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7322', '22', '7', '1', '0', '1437728556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7323', '22', '8', '1', '0', '1437728556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7324', '22', '6', '1', '0', '1437728559', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7325', '22', '14', '1', '0', '1437728559', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7326', '22', '15', '1', '0', '1437728559', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7327', '22', '16', '1', '0', '1437728559', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7328', '22', '7', '1', '0', '1437728559', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7329', '22', '8', '1', '0', '1437728559', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7330', '22', '6', '1', '0', '1437729209', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7331', '22', '14', '1', '0', '1437729209', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7332', '22', '15', '1', '0', '1437729209', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7333', '22', '16', '1', '0', '1437729209', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7334', '22', '7', '1', '0', '1437729209', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7335', '22', '8', '1', '0', '1437729209', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7336', null, null, '1', '0', '1437730463', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7337', null, null, '1', '0', '1437730464', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7338', null, null, '1', '0', '1437730464', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7339', '1', '6', '1', '0', '1437730639', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7340', '1', '14', '1', '0', '1437730639', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7341', '1', '15', '1', '0', '1437730639', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7342', '1', '16', '1', '0', '1437730639', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7343', '1', '7', '1', '0', '1437730639', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7344', '1', '8', '1', '0', '1437730639', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7345', '1', '6', '1', '0', '1437730648', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7346', '1', '14', '1', '0', '1437730648', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7347', '1', '15', '1', '0', '1437730648', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7348', '1', '16', '1', '0', '1437730648', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7349', '1', '7', '1', '0', '1437730648', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7350', '1', '8', '1', '0', '1437730648', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7351', '1', null, '1', '0', '1437730656', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7352', '1', null, '1', '0', '1437730661', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7353', null, null, '1', '0', '1437730757', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7354', null, null, '1', '0', '1437730758', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7355', null, null, '1', '0', '1437731087', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7356', '1', '6', '1', '0', '1437731115', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7357', '1', '14', '1', '0', '1437731115', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7358', '1', '15', '1', '0', '1437731115', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7359', '1', '16', '1', '0', '1437731115', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7360', '1', '7', '1', '0', '1437731115', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7361', '1', '8', '1', '0', '1437731115', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7362', '1', '6', '1', '0', '1437731119', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7363', '1', '14', '1', '0', '1437731119', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7364', '1', '15', '1', '0', '1437731119', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7365', '1', '16', '1', '0', '1437731119', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7366', '1', '7', '1', '0', '1437731119', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7367', '1', '8', '1', '0', '1437731119', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7368', '1', null, '1', '0', '1437731129', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7369', '1', null, '1', '0', '1437731164', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7370', null, null, '1', '0', '1437731177', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7371', '22', '6', '1', '0', '1437731240', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7372', '22', '14', '1', '0', '1437731240', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7373', '22', '15', '1', '0', '1437731240', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7374', '22', '16', '1', '0', '1437731240', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7375', '22', '7', '1', '0', '1437731240', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7376', '22', '8', '1', '0', '1437731240', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7377', null, null, '1', '0', '1437731252', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7378', '1', '6', '1', '0', '1437731276', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7379', '1', '14', '1', '0', '1437731276', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7380', '1', '15', '1', '0', '1437731276', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7381', '1', '16', '1', '0', '1437731276', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7382', '1', '7', '1', '0', '1437731276', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7383', '1', '8', '1', '0', '1437731276', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7384', '1', null, '1', '0', '1437731352', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7385', '1', null, '1', '0', '1437731415', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7386', '1', null, '1', '0', '1437731527', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7387', '1', '6', '1', '0', '1437732376', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7388', '1', '14', '1', '0', '1437732376', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7389', '1', '15', '1', '0', '1437732376', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7390', '1', '16', '1', '0', '1437732376', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7391', '1', '7', '1', '0', '1437732376', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7392', '1', '8', '1', '0', '1437732376', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7393', '1', null, '1', '0', '1437732385', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7394', '1', '6', '1', '0', '1437732386', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7395', '1', '14', '1', '0', '1437732386', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7396', '1', '15', '1', '0', '1437732386', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7397', '1', '16', '1', '0', '1437732386', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7398', '1', '7', '1', '0', '1437732386', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7399', '1', '8', '1', '0', '1437732386', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7400', '1', '6', '1', '0', '1437732550', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7401', '1', '14', '1', '0', '1437732550', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7402', '1', '15', '1', '0', '1437732550', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7403', '1', '16', '1', '0', '1437732550', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7404', '1', '7', '1', '0', '1437732550', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7405', '1', '8', '1', '0', '1437732550', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7406', '1', null, '1', '0', '1437732557', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7407', '1', null, '1', '0', '1437732557', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7408', '1', null, '1', '0', '1437732577', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7409', '1', null, '1', '0', '1437732592', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7410', '1', null, '1', '0', '1437732602', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7411', '1', null, '1', '0', '1437732621', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7412', '22', '6', '1', '0', '1437732894', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7413', '22', '14', '1', '0', '1437732894', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7414', '22', '15', '1', '0', '1437732894', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7415', '22', '16', '1', '0', '1437732894', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7416', '22', '7', '1', '0', '1437732894', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7417', '22', '8', '1', '0', '1437732894', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7418', '1', null, '1', '0', '1437733568', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7419', '1', null, '1', '0', '1437733574', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7420', '1', null, '1', '0', '1437733574', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7421', '1', null, '1', '0', '1437733582', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7422', '1', null, '1', '0', '1437733590', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7423', '1', null, '1', '0', '1437733598', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7424', '1', null, '1', '0', '1437733611', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7425', null, null, '1', '0', '1437733654', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7426', null, null, '1', '0', '1437733655', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7427', null, null, '1', '0', '1437733655', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7428', '1', '6', '1', '0', '1437734594', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7429', '1', '14', '1', '0', '1437734594', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7430', '1', '15', '1', '0', '1437734594', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7431', '1', '16', '1', '0', '1437734594', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7432', '1', '7', '1', '0', '1437734594', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7433', '1', '8', '1', '0', '1437734594', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7434', '1', '6', '1', '0', '1437734599', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7435', '1', '14', '1', '0', '1437734599', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7436', '1', '15', '1', '0', '1437734599', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7437', '1', '16', '1', '0', '1437734599', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7438', '1', '7', '1', '0', '1437734599', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7439', '1', '8', '1', '0', '1437734599', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7440', '1', '6', '1', '0', '1437734635', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7441', '1', '14', '1', '0', '1437734635', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7442', '1', '15', '1', '0', '1437734635', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7443', '1', '16', '1', '0', '1437734635', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7444', '1', '7', '1', '0', '1437734635', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7445', '1', '8', '1', '0', '1437734635', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7446', '1', '6', '1', '0', '1437734776', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7447', '1', '14', '1', '0', '1437734776', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7448', '1', '15', '1', '0', '1437734776', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7449', '1', '16', '1', '0', '1437734776', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7450', '1', '7', '1', '0', '1437734776', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7451', '1', '8', '1', '0', '1437734776', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7452', '1', null, '1', '0', '1437734882', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7453', '1', null, '1', '0', '1437734883', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7454', '1', null, '1', '0', '1437734884', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7455', '1', '6', '1', '0', '1437734923', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7456', '1', '14', '1', '0', '1437734923', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7457', '1', '15', '1', '0', '1437734923', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7458', '1', '16', '1', '0', '1437734923', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7459', '1', '7', '1', '0', '1437734923', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7460', '1', '8', '1', '0', '1437734923', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7461', '1', null, '1', '0', '1437735000', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7462', '1', '6', '1', '0', '1437735046', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7463', '1', '14', '1', '0', '1437735046', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7464', '1', '15', '1', '0', '1437735046', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7465', '1', '16', '1', '0', '1437735046', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7466', '1', '7', '1', '0', '1437735046', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7467', '1', '8', '1', '0', '1437735046', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7468', '1', '6', '1', '0', '1437735048', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7469', '1', '14', '1', '0', '1437735048', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7470', '1', '15', '1', '0', '1437735048', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7471', '1', '16', '1', '0', '1437735048', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7472', '1', '7', '1', '0', '1437735048', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7473', '1', '8', '1', '0', '1437735048', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7474', '1', null, '1', '0', '1437735060', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7475', '1', '6', '1', '0', '1437735082', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7476', '1', '14', '1', '0', '1437735082', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7477', '1', '15', '1', '0', '1437735082', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7478', '1', '16', '1', '0', '1437735082', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7479', '1', '7', '1', '0', '1437735082', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7480', '1', '8', '1', '0', '1437735082', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7481', '1', null, '1', '0', '1437735396', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7482', '1', null, '1', '0', '1437735396', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7483', '1', '6', '1', '0', '1437736848', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7484', '1', '14', '1', '0', '1437736848', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7485', '1', '15', '1', '0', '1437736848', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7486', '1', '16', '1', '0', '1437736848', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7487', '1', '7', '1', '0', '1437736848', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7488', '1', '8', '1', '0', '1437736848', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7489', '1', null, '1', '0', '1437738075', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7490', '1', null, '1', '0', '1437738076', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7491', '1', null, '1', '0', '1437738076', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7492', '1', null, '1', '0', '1437738461', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7493', '1', null, '1', '0', '1437738497', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7494', '1', null, '1', '0', '1437738506', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7495', '1', null, '1', '0', '1437738525', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7496', '1', null, '1', '0', '1437738525', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7497', '1', null, '1', '0', '1437738526', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7498', '1', null, '1', '0', '1437738566', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7499', '1', null, '1', '0', '1437738670', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7500', '1', null, '1', '0', '1437738671', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7501', '1', '6', '1', '0', '1437738673', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7502', '1', '14', '1', '0', '1437738673', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7503', '1', '15', '1', '0', '1437738673', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7504', '1', '16', '1', '0', '1437738673', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7505', '1', '7', '1', '0', '1437738673', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7506', '1', '8', '1', '0', '1437738673', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7507', '1', null, '0', '1', '1437738720', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7508', '1', null, '0', '1', '1437738721', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7509', '1', null, '1', '0', '1437739285', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7510', '1', null, '1', '0', '1437739285', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7511', '1', null, '1', '0', '1437739285', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7512', '1', null, '0', '1', '1437739667', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7513', '1', null, '0', '1', '1437739668', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7514', '1', null, '1', '0', '1437739681', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7515', '1', null, '1', '0', '1437739681', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7516', '1', null, '1', '0', '1437739687', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7517', '1', null, '1', '0', '1437739687', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7518', '1', null, '1', '0', '1437741150', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7519', '1', null, '1', '0', '1437741151', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7520', '1', null, '1', '0', '1437741160', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7521', '1', null, '1', '0', '1437741162', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7522', '1', null, '1', '0', '1437741171', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7523', '1', null, '1', '0', '1437741217', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7524', '1', null, '1', '0', '1437741367', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7525', '1', '6', '1', '0', '1437741507', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7526', '1', '14', '1', '0', '1437741507', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7527', '1', '15', '1', '0', '1437741507', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7528', '1', '16', '1', '0', '1437741507', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7529', '1', '7', '1', '0', '1437741507', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7530', '1', '8', '1', '0', '1437741507', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7531', '1', null, '1', '0', '1437741530', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7532', '1', null, '1', '0', '1437741530', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7533', '1', '6', '1', '0', '1437741604', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7534', '1', '14', '1', '0', '1437741604', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7535', '1', '15', '1', '0', '1437741604', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7536', '1', '16', '1', '0', '1437741604', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7537', '1', '7', '1', '0', '1437741604', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7538', '1', '8', '1', '0', '1437741604', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7539', '1', null, '1', '0', '1437741717', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7540', '1', null, '1', '0', '1437741717', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7541', '1', null, '1', '0', '1437741744', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7542', '1', null, '1', '0', '1437741745', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7543', '1', null, '1', '0', '1437742038', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7544', '1', null, '1', '0', '1437742039', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7545', '1', null, '1', '0', '1437742059', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7546', '1', null, '1', '0', '1437742079', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7547', '1', null, '1', '0', '1437742079', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7548', '1', null, '1', '0', '1437742095', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7549', '1', null, '1', '0', '1437742129', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7550', '1', null, '1', '0', '1437742129', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7551', '1', null, '1', '0', '1437742172', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7552', '1', null, '1', '0', '1437742173', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7553', '1', null, '1', '0', '1437742179', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7554', '1', '6', '1', '0', '1437743183', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7555', '1', '14', '1', '0', '1437743183', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7556', '1', '15', '1', '0', '1437743183', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7557', '1', '16', '1', '0', '1437743183', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7558', '1', '7', '1', '0', '1437743183', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7559', '1', '8', '1', '0', '1437743183', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7560', '1', null, '1', '0', '1437743187', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7561', '1', null, '1', '0', '1437743187', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7562', '1', null, '1', '0', '1437743197', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7563', '1', '6', '1', '0', '1437743670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7564', '1', '14', '1', '0', '1437743670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7565', '1', '15', '1', '0', '1437743670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7566', '1', '16', '1', '0', '1437743670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7567', '1', '7', '1', '0', '1437743670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7568', '1', '8', '1', '0', '1437743670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7569', '1', null, '1', '0', '1437743676', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7570', '1', null, '1', '0', '1437743716', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7571', '1', null, '1', '0', '1437743792', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7572', '1', null, '1', '0', '1437744252', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7573', '1', '6', '1', '0', '1437745118', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7574', '1', '14', '1', '0', '1437745118', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7575', '1', '15', '1', '0', '1437745118', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7576', '1', '16', '1', '0', '1437745118', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7577', '1', '7', '1', '0', '1437745118', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7578', '1', '8', '1', '0', '1437745118', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7579', '1', '6', '1', '0', '1437745448', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7580', '1', '14', '1', '0', '1437745448', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7581', '1', '15', '1', '0', '1437745448', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7582', '1', '16', '1', '0', '1437745448', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7583', '1', '7', '1', '0', '1437745448', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7584', '1', '8', '1', '0', '1437745448', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7585', '1', '6', '1', '0', '1437745454', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7586', '1', '14', '1', '0', '1437745454', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7587', '1', '15', '1', '0', '1437745454', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7588', '1', '16', '1', '0', '1437745454', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7589', '1', '7', '1', '0', '1437745454', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7590', '1', '8', '1', '0', '1437745454', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7591', '1', '6', '1', '0', '1437745456', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7592', '1', '14', '1', '0', '1437745456', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7593', '1', '15', '1', '0', '1437745456', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7594', '1', '16', '1', '0', '1437745456', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7595', '1', '7', '1', '0', '1437745456', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7596', '1', '8', '1', '0', '1437745456', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7597', '1', '6', '1', '0', '1437745587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7598', '1', '14', '1', '0', '1437745587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7599', '1', '15', '1', '0', '1437745587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7600', '1', '16', '1', '0', '1437745587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7601', '1', '7', '1', '0', '1437745587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7602', '1', '8', '1', '0', '1437745587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7603', '1', null, '1', '0', '1437745608', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7604', '1', null, '1', '0', '1437745637', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7605', '22', '6', '1', '0', '1437745643', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7606', '22', '14', '1', '0', '1437745643', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7607', '22', '15', '1', '0', '1437745643', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7608', '22', '16', '1', '0', '1437745643', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7609', '22', '7', '1', '0', '1437745643', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7610', '22', '8', '1', '0', '1437745643', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7611', '1', '6', '1', '0', '1437745654', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7612', '1', '14', '1', '0', '1437745654', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7613', '1', '15', '1', '0', '1437745654', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7614', '1', '16', '1', '0', '1437745654', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7615', '1', '7', '1', '0', '1437745654', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7616', '1', '8', '1', '0', '1437745654', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7617', '22', '6', '1', '0', '1437745670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7618', '22', '14', '1', '0', '1437745670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7619', '22', '15', '1', '0', '1437745670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7620', '22', '16', '1', '0', '1437745670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7621', '22', '7', '1', '0', '1437745670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7622', '22', '8', '1', '0', '1437745670', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7623', '1', '6', '1', '0', '1437745677', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7624', '1', '14', '1', '0', '1437745677', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7625', '1', '15', '1', '0', '1437745677', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7626', '1', '16', '1', '0', '1437745677', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7627', '1', '7', '1', '0', '1437745677', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7628', '1', '8', '1', '0', '1437745677', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7629', '22', '6', '1', '0', '1437745747', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7630', '22', '14', '1', '0', '1437745747', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7631', '22', '15', '1', '0', '1437745747', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7632', '22', '16', '1', '0', '1437745747', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7633', '22', '7', '1', '0', '1437745747', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7634', '22', '8', '1', '0', '1437745747', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7635', '1', '6', '1', '0', '1437745758', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7636', '1', '14', '1', '0', '1437745758', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7637', '1', '15', '1', '0', '1437745758', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7638', '1', '16', '1', '0', '1437745758', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7639', '1', '7', '1', '0', '1437745758', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7640', '1', '8', '1', '0', '1437745758', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7641', '1', '6', '1', '0', '1437745762', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7642', '1', '14', '1', '0', '1437745762', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7643', '1', '15', '1', '0', '1437745762', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7644', '1', '16', '1', '0', '1437745762', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7645', '1', '7', '1', '0', '1437745762', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7646', '1', '8', '1', '0', '1437745762', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7647', '1', '6', '1', '0', '1437745763', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7648', '1', '14', '1', '0', '1437745763', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7649', '1', '15', '1', '0', '1437745763', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7650', '1', '16', '1', '0', '1437745763', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7651', '1', '7', '1', '0', '1437745763', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7652', '1', '8', '1', '0', '1437745763', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7653', '1', null, '1', '0', '1437745806', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7654', '1', null, '1', '0', '1437745864', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7655', '1', '6', '1', '0', '1437745896', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7656', '1', '14', '1', '0', '1437745896', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7657', '1', '15', '1', '0', '1437745896', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7658', '1', '16', '1', '0', '1437745896', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7659', '1', '7', '1', '0', '1437745896', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7660', '1', '8', '1', '0', '1437745896', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7661', '1', '6', '1', '0', '1437745899', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7662', '1', '14', '1', '0', '1437745899', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7663', '1', '15', '1', '0', '1437745899', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7664', '1', '16', '1', '0', '1437745899', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7665', '1', '7', '1', '0', '1437745899', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7666', '1', '8', '1', '0', '1437745899', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7667', '1', null, '1', '0', '1437745917', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7668', '1', null, '1', '0', '1437745952', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7669', '1', null, '1', '0', '1437745971', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7670', '1', '6', '1', '0', '1437746089', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7671', '1', '14', '1', '0', '1437746089', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7672', '1', '15', '1', '0', '1437746089', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7673', '1', '16', '1', '0', '1437746089', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7674', '1', '7', '1', '0', '1437746089', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7675', '1', '8', '1', '0', '1437746089', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7676', '1', null, '1', '0', '1437746093', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7677', '22', '6', '1', '0', '1437746109', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7678', '22', '14', '1', '0', '1437746109', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7679', '22', '15', '1', '0', '1437746109', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7680', '22', '16', '1', '0', '1437746109', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7681', '22', '7', '1', '0', '1437746109', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7682', '22', '8', '1', '0', '1437746109', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7683', '22', '6', '1', '0', '1437746134', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7684', '22', '14', '1', '0', '1437746134', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7685', '22', '15', '1', '0', '1437746134', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7686', '22', '16', '1', '0', '1437746134', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7687', '22', '7', '1', '0', '1437746134', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7688', '22', '8', '1', '0', '1437746134', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7689', '22', '6', '1', '0', '1437746197', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7690', '22', '14', '1', '0', '1437746197', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7691', '22', '15', '1', '0', '1437746197', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7692', '22', '16', '1', '0', '1437746197', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7693', '22', '7', '1', '0', '1437746197', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7694', '22', '8', '1', '0', '1437746197', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7695', '1', '6', '1', '0', '1437746200', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7696', '1', '14', '1', '0', '1437746200', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7697', '1', '15', '1', '0', '1437746200', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7698', '1', '16', '1', '0', '1437746200', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7699', '1', '7', '1', '0', '1437746200', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7700', '1', '8', '1', '0', '1437746200', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7701', '1', null, '1', '0', '1437746204', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7702', '1', null, '1', '0', '1437746253', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7703', '1', '6', '1', '0', '1437746525', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7704', '1', '14', '1', '0', '1437746525', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7705', '1', '15', '1', '0', '1437746525', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7706', '1', '16', '1', '0', '1437746525', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7707', '1', '7', '1', '0', '1437746525', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7708', '1', '8', '1', '0', '1437746525', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7709', '1', null, '1', '0', '1437746530', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7710', '22', '6', '1', '0', '1437746554', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7711', '22', '14', '1', '0', '1437746554', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7712', '22', '15', '1', '0', '1437746554', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7713', '22', '16', '1', '0', '1437746554', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7714', '22', '7', '1', '0', '1437746554', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7715', '22', '8', '1', '0', '1437746554', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7716', '1', '6', '1', '0', '1437746556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7717', '1', '14', '1', '0', '1437746556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7718', '1', '15', '1', '0', '1437746556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7719', '1', '16', '1', '0', '1437746556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7720', '1', '7', '1', '0', '1437746556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7721', '1', '8', '1', '0', '1437746556', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7722', '1', '6', '1', '0', '1437746565', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7723', '1', '14', '1', '0', '1437746565', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7724', '1', '15', '1', '0', '1437746565', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7725', '1', '16', '1', '0', '1437746565', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7726', '1', '7', '1', '0', '1437746565', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7727', '1', '8', '1', '0', '1437746565', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7728', '1', '6', '1', '0', '1437746666', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7729', '1', '14', '1', '0', '1437746666', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7730', '1', '15', '1', '0', '1437746666', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7731', '1', '16', '1', '0', '1437746666', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7732', '1', '7', '1', '0', '1437746666', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7733', '1', '8', '1', '0', '1437746666', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7734', '1', null, '1', '0', '1437746670', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7735', '22', '6', '1', '0', '1437746688', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7736', '22', '14', '1', '0', '1437746688', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7737', '22', '15', '1', '0', '1437746688', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7738', '22', '16', '1', '0', '1437746688', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7739', '22', '7', '1', '0', '1437746688', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7740', '22', '8', '1', '0', '1437746688', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7741', '1', '6', '1', '0', '1437746927', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7742', '1', '14', '1', '0', '1437746927', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7743', '1', '15', '1', '0', '1437746927', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7744', '1', '16', '1', '0', '1437746927', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7745', '1', '7', '1', '0', '1437746927', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7746', '1', '8', '1', '0', '1437746927', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7747', '1', '6', '1', '0', '1437747097', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7748', '1', '14', '1', '0', '1437747097', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7749', '1', '15', '1', '0', '1437747097', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7750', '1', '16', '1', '0', '1437747097', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7751', '1', '7', '1', '0', '1437747097', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7752', '1', '8', '1', '0', '1437747097', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7753', '22', '6', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7754', '22', '14', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7755', '22', '15', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7756', '22', '16', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7757', '22', '7', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7758', '22', '8', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7759', '22', '6', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7760', '22', '14', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7761', '22', '15', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7762', '22', '16', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7763', '22', '7', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7764', '22', '8', '1', '0', '1437747111', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7765', '1', '6', '1', '0', '1437747120', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7766', '1', '14', '1', '0', '1437747120', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7767', '1', '15', '1', '0', '1437747120', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7768', '1', '16', '1', '0', '1437747120', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7769', '1', '7', '1', '0', '1437747120', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7770', '1', '8', '1', '0', '1437747120', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7771', '22', '6', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7772', '22', '14', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7773', '22', '15', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7774', '22', '16', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7775', '22', '7', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7776', '22', '8', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7777', '22', '6', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7778', '22', '14', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7779', '22', '15', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7780', '22', '16', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7781', '22', '7', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7782', '22', '8', '1', '0', '1437747149', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7783', '1', '6', '1', '0', '1437747154', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7784', '1', '14', '1', '0', '1437747154', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7785', '1', '15', '1', '0', '1437747154', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7786', '1', '16', '1', '0', '1437747154', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7787', '1', '7', '1', '0', '1437747154', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7788', '1', '8', '1', '0', '1437747154', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7789', '1', null, '1', '0', '1437747158', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7790', '22', '6', '1', '0', '1437747185', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7791', '22', '14', '1', '0', '1437747185', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7792', '22', '15', '1', '0', '1437747185', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7793', '22', '16', '1', '0', '1437747185', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7794', '22', '7', '1', '0', '1437747185', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7795', '22', '8', '1', '0', '1437747185', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7796', '1', '6', '1', '0', '1437747191', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7797', '1', '14', '1', '0', '1437747191', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7798', '1', '15', '1', '0', '1437747191', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7799', '1', '16', '1', '0', '1437747191', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7800', '1', '7', '1', '0', '1437747191', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7801', '1', '8', '1', '0', '1437747191', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7802', '1', '6', '1', '0', '1437747194', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7803', '1', '14', '1', '0', '1437747194', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7804', '1', '15', '1', '0', '1437747194', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7805', '1', '16', '1', '0', '1437747194', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7806', '1', '7', '1', '0', '1437747194', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7807', '1', '8', '1', '0', '1437747194', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7808', '22', '6', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7809', '22', '14', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7810', '22', '15', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7811', '22', '16', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7812', '22', '7', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7813', '22', '8', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7814', '22', '6', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7815', '22', '14', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7816', '22', '15', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7817', '22', '16', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7818', '22', '7', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7819', '22', '8', '1', '0', '1437747308', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7820', '1', '6', '1', '0', '1437747382', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7821', '1', '14', '1', '0', '1437747382', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7822', '1', '15', '1', '0', '1437747382', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7823', '1', '16', '1', '0', '1437747382', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7824', '1', '7', '1', '0', '1437747382', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7825', '1', '8', '1', '0', '1437747382', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7826', '1', null, '1', '0', '1437747389', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7827', '1', '6', '1', '0', '1437747910', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7828', '1', '14', '1', '0', '1437747910', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7829', '1', '15', '1', '0', '1437747910', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7830', '1', '16', '1', '0', '1437747910', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7831', '1', '7', '1', '0', '1437747910', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7832', '1', '8', '1', '0', '1437747910', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7833', '1', null, '1', '0', '1437747990', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7834', '1', null, '1', '0', '1437747991', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7835', '22', '6', '1', '0', '1437748023', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7836', '22', '14', '1', '0', '1437748023', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7837', '22', '15', '1', '0', '1437748023', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7838', '22', '16', '1', '0', '1437748023', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7839', '22', '7', '1', '0', '1437748023', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7840', '22', '8', '1', '0', '1437748023', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7841', '1', '6', '1', '0', '1437748113', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7842', '1', '14', '1', '0', '1437748113', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7843', '1', '15', '1', '0', '1437748113', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7844', '1', '16', '1', '0', '1437748113', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7845', '1', '7', '1', '0', '1437748113', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7846', '1', '8', '1', '0', '1437748113', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7847', '1', '6', '1', '0', '1437748121', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7848', '1', '14', '1', '0', '1437748121', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7849', '1', '15', '1', '0', '1437748121', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7850', '1', '16', '1', '0', '1437748121', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7851', '1', '7', '1', '0', '1437748121', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7852', '1', '8', '1', '0', '1437748121', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7853', '1', null, '1', '0', '1437748144', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7854', '22', '6', '1', '0', '1437748157', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7855', '22', '14', '1', '0', '1437748157', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7856', '22', '15', '1', '0', '1437748157', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7857', '22', '16', '1', '0', '1437748157', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7858', '22', '7', '1', '0', '1437748157', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7859', '22', '8', '1', '0', '1437748157', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7860', '1', '6', '1', '0', '1437748352', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7861', '1', '14', '1', '0', '1437748352', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7862', '1', '15', '1', '0', '1437748352', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7863', '1', '16', '1', '0', '1437748352', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7864', '1', '7', '1', '0', '1437748352', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7865', '1', '8', '1', '0', '1437748352', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7866', '1', '6', '1', '0', '1437748363', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7867', '1', '14', '1', '0', '1437748363', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7868', '1', '15', '1', '0', '1437748363', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7869', '1', '16', '1', '0', '1437748363', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7870', '1', '7', '1', '0', '1437748363', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7871', '1', '8', '1', '0', '1437748363', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7872', '1', '6', '1', '0', '1437748838', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7873', '1', '14', '1', '0', '1437748838', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7874', '1', '15', '1', '0', '1437748838', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7875', '1', '16', '1', '0', '1437748838', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7876', '1', '7', '1', '0', '1437748838', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7877', '1', '8', '1', '0', '1437748838', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7878', '22', '6', '1', '0', '1437748841', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7879', '22', '14', '1', '0', '1437748841', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7880', '22', '15', '1', '0', '1437748841', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7881', '22', '16', '1', '0', '1437748841', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7882', '22', '7', '1', '0', '1437748841', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7883', '22', '8', '1', '0', '1437748841', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7884', '1', null, '1', '0', '1437748851', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7885', '1', '6', '1', '0', '1437748913', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7886', '1', '14', '1', '0', '1437748913', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7887', '1', '15', '1', '0', '1437748913', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7888', '1', '16', '1', '0', '1437748913', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7889', '1', '7', '1', '0', '1437748913', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7890', '1', '8', '1', '0', '1437748913', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7891', '1', '6', '1', '0', '1437748931', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7892', '1', '14', '1', '0', '1437748931', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7893', '1', '15', '1', '0', '1437748931', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7894', '1', '16', '1', '0', '1437748931', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7895', '1', '7', '1', '0', '1437748931', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7896', '1', '8', '1', '0', '1437748931', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7897', '1', null, '1', '0', '1437748941', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7898', '1', '6', '1', '0', '1437748948', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7899', '1', '14', '1', '0', '1437748948', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7900', '1', '15', '1', '0', '1437748948', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7901', '1', '16', '1', '0', '1437748948', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7902', '1', '7', '1', '0', '1437748948', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7903', '1', '8', '1', '0', '1437748948', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7904', '1', null, '1', '0', '1437748961', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7905', '1', '6', '1', '0', '1437748968', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7906', '1', '14', '1', '0', '1437748968', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7907', '1', '15', '1', '0', '1437748968', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7908', '1', '16', '1', '0', '1437748968', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7909', '1', '7', '1', '0', '1437748968', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7910', '1', '8', '1', '0', '1437748968', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7911', '1', null, '1', '0', '1437748984', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7912', '1', '6', '1', '0', '1437748991', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7913', '1', '14', '1', '0', '1437748991', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7914', '1', '15', '1', '0', '1437748991', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7915', '1', '16', '1', '0', '1437748991', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7916', '1', '7', '1', '0', '1437748991', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7917', '1', '8', '1', '0', '1437748991', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7918', '1', '6', '1', '0', '1437749401', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7919', '1', '14', '1', '0', '1437749401', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7920', '1', '15', '1', '0', '1437749401', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7921', '1', '16', '1', '0', '1437749401', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7922', '1', '7', '1', '0', '1437749401', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7923', '1', '8', '1', '0', '1437749401', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7924', '1', '6', '1', '0', '1437749406', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7925', '1', '14', '1', '0', '1437749406', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7926', '1', '15', '1', '0', '1437749406', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7927', '1', '16', '1', '0', '1437749406', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7928', '1', '7', '1', '0', '1437749406', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7929', '1', '8', '1', '0', '1437749406', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7930', '1', '6', '1', '0', '1437749407', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7931', '1', '14', '1', '0', '1437749407', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7932', '1', '15', '1', '0', '1437749407', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7933', '1', '16', '1', '0', '1437749407', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7934', '1', '7', '1', '0', '1437749407', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7935', '1', '8', '1', '0', '1437749407', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7936', '1', '6', '1', '0', '1437749410', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7937', '1', '14', '1', '0', '1437749410', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7938', '1', '15', '1', '0', '1437749410', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7939', '1', '16', '1', '0', '1437749410', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7940', '1', '7', '1', '0', '1437749410', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7941', '1', '8', '1', '0', '1437749410', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7942', '1', '6', '1', '0', '1437749432', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7943', '1', '14', '1', '0', '1437749432', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7944', '1', '15', '1', '0', '1437749432', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7945', '1', '16', '1', '0', '1437749432', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7946', '1', '7', '1', '0', '1437749432', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7947', '1', '8', '1', '0', '1437749432', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7948', '1', '6', '1', '0', '1437749536', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7949', '1', '14', '1', '0', '1437749536', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7950', '1', '15', '1', '0', '1437749536', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7951', '1', '16', '1', '0', '1437749536', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7952', '1', '7', '1', '0', '1437749536', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7953', '1', '8', '1', '0', '1437749536', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7954', '1', '6', '1', '0', '1437749538', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7955', '1', '14', '1', '0', '1437749538', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7956', '1', '15', '1', '0', '1437749538', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7957', '1', '16', '1', '0', '1437749538', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7958', '1', '7', '1', '0', '1437749538', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7959', '1', '8', '1', '0', '1437749538', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7960', '22', '6', '1', '0', '1437749581', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7961', '22', '14', '1', '0', '1437749581', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7962', '22', '15', '1', '0', '1437749581', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7963', '22', '16', '1', '0', '1437749581', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7964', '22', '7', '1', '0', '1437749581', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7965', '22', '8', '1', '0', '1437749581', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7966', '22', '6', '1', '0', '1437749587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7967', '22', '14', '1', '0', '1437749587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7968', '22', '15', '1', '0', '1437749587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7969', '22', '16', '1', '0', '1437749587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7970', '22', '7', '1', '0', '1437749587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7971', '22', '8', '1', '0', '1437749587', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7972', '22', '6', '1', '0', '1437749608', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7973', '22', '14', '1', '0', '1437749608', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7974', '22', '15', '1', '0', '1437749608', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7975', '22', '16', '1', '0', '1437749608', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7976', '22', '7', '1', '0', '1437749608', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7977', '22', '8', '1', '0', '1437749608', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7978', '22', '6', '1', '0', '1437749624', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7979', '22', '14', '1', '0', '1437749624', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7980', '22', '15', '1', '0', '1437749624', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7981', '22', '16', '1', '0', '1437749624', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7982', '22', '7', '1', '0', '1437749624', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7983', '22', '8', '1', '0', '1437749624', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7984', '22', '6', '1', '0', '1437749630', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7985', '22', '14', '1', '0', '1437749630', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7986', '22', '15', '1', '0', '1437749630', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7987', '22', '16', '1', '0', '1437749630', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7988', '22', '7', '1', '0', '1437749630', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7989', '22', '8', '1', '0', '1437749630', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7990', '1', '6', '1', '0', '1437749633', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7991', '1', '14', '1', '0', '1437749633', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7992', '1', '15', '1', '0', '1437749633', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7993', '1', '16', '1', '0', '1437749633', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7994', '1', '7', '1', '0', '1437749633', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7995', '1', '8', '1', '0', '1437749633', '2015-07-24', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7996', '1', null, '1', '0', '1437749644', '2015-07-24', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('7997', '1', '6', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7998', '1', '14', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('7999', '1', '15', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8000', '1', '16', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8001', '1', '7', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8002', '1', '8', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8003', '1', '6', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8004', '1', '14', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8005', '1', '15', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8006', '1', '16', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8007', '1', '7', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8008', '1', '8', '1', '0', '1437785675', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8009', '1', '6', '1', '0', '1437785688', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8010', '1', '14', '1', '0', '1437785688', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8011', '1', '15', '1', '0', '1437785688', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8012', '1', '16', '1', '0', '1437785688', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8013', '1', '7', '1', '0', '1437785688', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8014', '1', '8', '1', '0', '1437785688', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8015', '1', '6', '1', '0', '1437785710', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8016', '1', '14', '1', '0', '1437785710', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8017', '1', '15', '1', '0', '1437785710', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8018', '1', '16', '1', '0', '1437785710', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8019', '1', '7', '1', '0', '1437785710', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8020', '1', '8', '1', '0', '1437785710', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8021', '1', null, '1', '0', '1437785740', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8022', '1', null, '1', '0', '1437785740', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8023', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8024', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8025', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8026', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8027', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8028', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8029', '1', null, '1', '0', '1437785741', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8030', '1', null, '1', '0', '1437785742', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8031', '1', null, '1', '0', '1437785746', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8032', '1', null, '1', '0', '1437785746', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8033', '1', null, '1', '0', '1437785746', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8034', '1', null, '1', '0', '1437785747', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8035', '1', null, '1', '0', '1437785748', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8036', '1', null, '1', '0', '1437785748', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8037', '1', null, '1', '0', '1437785748', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8038', '1', null, '1', '0', '1437785748', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8039', '1', null, '1', '0', '1437785748', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8040', '1', '6', '1', '0', '1437785763', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8041', '1', '14', '1', '0', '1437785763', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8042', '1', '15', '1', '0', '1437785763', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8043', '1', '16', '1', '0', '1437785763', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8044', '1', '7', '1', '0', '1437785763', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8045', '1', '8', '1', '0', '1437785763', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8046', '1', null, '1', '0', '1437785785', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8047', '1', null, '1', '0', '1437785786', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8048', '1', '6', '1', '0', '1437785815', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8049', '1', '14', '1', '0', '1437785815', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8050', '1', '15', '1', '0', '1437785815', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8051', '1', '16', '1', '0', '1437785815', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8052', '1', '7', '1', '0', '1437785815', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8053', '1', '8', '1', '0', '1437785815', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8054', '1', '6', '1', '0', '1437785846', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8055', '1', '14', '1', '0', '1437785846', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8056', '1', '15', '1', '0', '1437785846', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8057', '1', '16', '1', '0', '1437785846', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8058', '1', '7', '1', '0', '1437785846', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8059', '1', '8', '1', '0', '1437785846', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8060', '1', '6', '1', '0', '1437785855', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8061', '1', '14', '1', '0', '1437785855', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8062', '1', '15', '1', '0', '1437785855', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8063', '1', '16', '1', '0', '1437785855', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8064', '1', '7', '1', '0', '1437785855', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8065', '1', '8', '1', '0', '1437785855', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8066', '1', null, '1', '0', '1437785875', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8067', '1', null, '1', '0', '1437785876', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8068', '1', null, '1', '0', '1437785876', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8069', '1', null, '1', '0', '1437785877', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8070', '1', null, '1', '0', '1437785877', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8071', '1', null, '1', '0', '1437785877', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8072', '1', null, '1', '0', '1437785878', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8073', '1', null, '1', '0', '1437785878', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8074', '1', null, '1', '0', '1437785878', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8075', '1', null, '1', '0', '1437785878', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8076', '1', null, '1', '0', '1437785879', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8077', '1', null, '1', '0', '1437785879', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8078', '1', null, '1', '0', '1437785880', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8079', '1', null, '1', '0', '1437785880', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8080', '1', null, '1', '0', '1437785881', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8081', '1', null, '1', '0', '1437785882', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8082', '1', null, '1', '0', '1437785882', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8083', '1', null, '1', '0', '1437785882', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8084', '1', null, '1', '0', '1437785882', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8085', '1', null, '1', '0', '1437785882', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8086', '1', null, '1', '0', '1437785883', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8087', '1', null, '1', '0', '1437785883', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8088', '1', null, '1', '0', '1437785883', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8089', '1', null, '1', '0', '1437785883', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8090', '1', '6', '1', '0', '1437785925', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8091', '1', '14', '1', '0', '1437785925', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8092', '1', '15', '1', '0', '1437785925', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8093', '1', '16', '1', '0', '1437785925', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8094', '1', '7', '1', '0', '1437785925', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8095', '1', '8', '1', '0', '1437785925', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8096', '1', '6', '1', '0', '1437785934', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8097', '1', '14', '1', '0', '1437785934', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8098', '1', '15', '1', '0', '1437785934', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8099', '1', '16', '1', '0', '1437785934', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8100', '1', '7', '1', '0', '1437785934', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8101', '1', '8', '1', '0', '1437785934', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8102', '1', '6', '1', '0', '1437785955', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8103', '1', '14', '1', '0', '1437785955', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8104', '1', '15', '1', '0', '1437785955', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8105', '1', '16', '1', '0', '1437785955', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8106', '1', '7', '1', '0', '1437785955', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8107', '1', '8', '1', '0', '1437785955', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8108', '1', null, '1', '0', '1437785968', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8109', '1', null, '1', '0', '1437785973', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8110', '1', null, '1', '0', '1437785973', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8111', '1', null, '1', '0', '1437785973', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8112', '1', null, '1', '0', '1437785973', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8113', '1', null, '1', '0', '1437785973', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8114', '1', '6', '1', '0', '1437785989', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8115', '1', '14', '1', '0', '1437785989', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8116', '1', '15', '1', '0', '1437785989', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8117', '1', '16', '1', '0', '1437785989', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8118', '1', '7', '1', '0', '1437785989', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8119', '1', '8', '1', '0', '1437785989', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8120', '1', '6', '1', '0', '1437786085', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8121', '1', '14', '1', '0', '1437786085', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8122', '1', '15', '1', '0', '1437786085', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8123', '1', '16', '1', '0', '1437786085', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8124', '1', '7', '1', '0', '1437786085', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8125', '1', '8', '1', '0', '1437786085', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8126', '1', '6', '1', '0', '1437786943', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8127', '1', '14', '1', '0', '1437786943', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8128', '1', '15', '1', '0', '1437786943', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8129', '1', '16', '1', '0', '1437786943', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8130', '1', '7', '1', '0', '1437786943', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8131', '1', '8', '1', '0', '1437786943', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8132', '1', '6', '1', '0', '1437787029', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8133', '1', '14', '1', '0', '1437787029', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8134', '1', '15', '1', '0', '1437787029', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8135', '1', '16', '1', '0', '1437787029', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8136', '1', '7', '1', '0', '1437787029', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8137', '1', '8', '1', '0', '1437787029', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8138', '1', '6', '1', '0', '1437787327', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8139', '1', '14', '1', '0', '1437787327', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8140', '1', '15', '1', '0', '1437787327', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8141', '1', '16', '1', '0', '1437787327', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8142', '1', '7', '1', '0', '1437787327', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8143', '1', '8', '1', '0', '1437787327', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8144', '1', null, '1', '0', '1437787341', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8145', '1', null, '1', '0', '1437787342', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8146', '1', null, '1', '0', '1437787342', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8147', '1', null, '1', '0', '1437787343', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8148', '1', null, '1', '0', '1437787343', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8149', '1', null, '1', '0', '1437787345', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8150', '1', null, '1', '0', '1437787348', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8151', '1', null, '1', '0', '1437787349', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8152', '1', null, '1', '0', '1437787349', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8153', '1', null, '1', '0', '1437787349', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8154', '1', '6', '1', '0', '1437793748', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8155', '1', '14', '1', '0', '1437793748', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8156', '1', '15', '1', '0', '1437793748', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8157', '1', '16', '1', '0', '1437793748', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8158', '1', '7', '1', '0', '1437793748', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8159', '1', '8', '1', '0', '1437793748', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8160', '1', '6', '1', '0', '1437793754', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8161', '1', '14', '1', '0', '1437793754', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8162', '1', '15', '1', '0', '1437793754', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8163', '1', '16', '1', '0', '1437793754', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8164', '1', '7', '1', '0', '1437793754', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8165', '1', '8', '1', '0', '1437793754', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8166', '1', null, '1', '0', '1437793770', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8167', '1', '6', '1', '0', '1437793777', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8168', '1', '14', '1', '0', '1437793777', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8169', '1', '15', '1', '0', '1437793777', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8170', '1', '16', '1', '0', '1437793777', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8171', '1', '7', '1', '0', '1437793777', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8172', '1', '8', '1', '0', '1437793777', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8173', '1', '6', '1', '0', '1437793800', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8174', '1', '14', '1', '0', '1437793800', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8175', '1', '15', '1', '0', '1437793800', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8176', '1', '16', '1', '0', '1437793800', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8177', '1', '7', '1', '0', '1437793800', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8178', '1', '8', '1', '0', '1437793800', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8179', '1', '6', '1', '0', '1437793803', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8180', '1', '14', '1', '0', '1437793803', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8181', '1', '15', '1', '0', '1437793803', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8182', '1', '16', '1', '0', '1437793803', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8183', '1', '7', '1', '0', '1437793803', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8184', '1', '8', '1', '0', '1437793803', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8185', '1', '6', '1', '0', '1437793832', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8186', '1', '14', '1', '0', '1437793832', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8187', '1', '15', '1', '0', '1437793832', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8188', '1', '16', '1', '0', '1437793832', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8189', '1', '7', '1', '0', '1437793832', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8190', '1', '8', '1', '0', '1437793832', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8191', '1', null, '1', '0', '1437793835', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8192', '1', '6', '1', '0', '1437793842', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8193', '1', '14', '1', '0', '1437793842', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8194', '1', '15', '1', '0', '1437793842', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8195', '1', '16', '1', '0', '1437793842', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8196', '1', '7', '1', '0', '1437793842', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8197', '1', '8', '1', '0', '1437793842', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8198', '1', '6', '1', '0', '1437794249', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8199', '1', '14', '1', '0', '1437794249', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8200', '1', '15', '1', '0', '1437794249', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8201', '1', '16', '1', '0', '1437794249', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8202', '1', '7', '1', '0', '1437794249', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8203', '1', '8', '1', '0', '1437794249', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8204', '1', '6', '1', '0', '1437794252', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8205', '1', '14', '1', '0', '1437794252', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8206', '1', '15', '1', '0', '1437794252', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8207', '1', '16', '1', '0', '1437794252', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8208', '1', '7', '1', '0', '1437794252', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8209', '1', '8', '1', '0', '1437794252', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8210', '22', '6', '1', '0', '1437794257', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8211', '22', '14', '1', '0', '1437794257', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8212', '22', '15', '1', '0', '1437794257', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8213', '22', '16', '1', '0', '1437794257', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8214', '22', '7', '1', '0', '1437794257', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8215', '22', '8', '1', '0', '1437794257', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8216', '1', null, '1', '0', '1437794259', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8217', '1', '6', '1', '0', '1437794266', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8218', '1', '14', '1', '0', '1437794266', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8219', '1', '15', '1', '0', '1437794266', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8220', '1', '16', '1', '0', '1437794266', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8221', '1', '7', '1', '0', '1437794266', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8222', '1', '8', '1', '0', '1437794266', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8223', '1', null, '1', '0', '1437794274', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8224', '1', '6', '1', '0', '1437794281', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8225', '1', '14', '1', '0', '1437794281', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8226', '1', '15', '1', '0', '1437794281', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8227', '1', '16', '1', '0', '1437794281', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8228', '1', '7', '1', '0', '1437794281', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8229', '1', '8', '1', '0', '1437794281', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8230', null, null, '1', '0', '1437794300', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8231', '1', '6', '1', '0', '1437794405', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8232', '1', '14', '1', '0', '1437794405', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8233', '1', '15', '1', '0', '1437794405', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8234', '1', '16', '1', '0', '1437794405', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8235', '1', '7', '1', '0', '1437794405', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8236', '1', '8', '1', '0', '1437794405', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8237', '1', '6', '1', '0', '1437794414', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8238', '1', '14', '1', '0', '1437794414', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8239', '1', '15', '1', '0', '1437794414', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8240', '1', '16', '1', '0', '1437794414', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8241', '1', '7', '1', '0', '1437794414', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8242', '1', '8', '1', '0', '1437794414', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8243', '1', null, '1', '0', '1437794425', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8244', '1', '6', '1', '0', '1437794432', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8245', '1', '14', '1', '0', '1437794432', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8246', '1', '15', '1', '0', '1437794432', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8247', '1', '16', '1', '0', '1437794432', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8248', '1', '7', '1', '0', '1437794432', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8249', '1', '8', '1', '0', '1437794432', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8250', '1', null, '1', '0', '1437794440', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8251', '1', '6', '1', '0', '1437794447', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8252', '1', '14', '1', '0', '1437794447', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8253', '1', '15', '1', '0', '1437794447', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8254', '1', '16', '1', '0', '1437794447', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8255', '1', '7', '1', '0', '1437794447', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8256', '1', '8', '1', '0', '1437794447', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8257', null, null, '1', '0', '1437794458', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8258', '1', '6', '1', '0', '1437794593', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8259', '1', '14', '1', '0', '1437794593', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8260', '1', '15', '1', '0', '1437794593', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8261', '1', '16', '1', '0', '1437794593', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8262', '1', '7', '1', '0', '1437794593', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8263', '1', '8', '1', '0', '1437794593', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8264', '1', '6', '1', '0', '1437794744', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8265', '1', '14', '1', '0', '1437794744', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8266', '1', '15', '1', '0', '1437794744', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8267', '1', '16', '1', '0', '1437794744', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8268', '1', '7', '1', '0', '1437794744', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8269', '1', '8', '1', '0', '1437794744', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8270', '1', '6', '1', '0', '1437794745', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8271', '1', '14', '1', '0', '1437794745', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8272', '1', '15', '1', '0', '1437794745', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8273', '1', '16', '1', '0', '1437794745', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8274', '1', '7', '1', '0', '1437794745', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8275', '1', '8', '1', '0', '1437794745', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8276', '1', '6', '1', '0', '1437796542', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8277', '1', '14', '1', '0', '1437796542', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8278', '1', '15', '1', '0', '1437796542', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8279', '1', '16', '1', '0', '1437796542', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8280', '1', '7', '1', '0', '1437796542', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8281', '1', '8', '1', '0', '1437796542', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8282', '1', '6', '1', '0', '1437797242', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8283', '1', '14', '1', '0', '1437797242', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8284', '1', '15', '1', '0', '1437797242', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8285', '1', '16', '1', '0', '1437797242', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8286', '1', '7', '1', '0', '1437797242', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8287', '1', '8', '1', '0', '1437797242', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8288', '1', '6', '1', '0', '1437797248', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8289', '1', '14', '1', '0', '1437797248', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8290', '1', '15', '1', '0', '1437797248', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8291', '1', '16', '1', '0', '1437797248', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8292', '1', '7', '1', '0', '1437797248', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8293', '1', '8', '1', '0', '1437797248', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8294', '1', null, '1', '0', '1437797254', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8295', '22', '6', '1', '0', '1437797284', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8296', '22', '14', '1', '0', '1437797284', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8297', '22', '15', '1', '0', '1437797284', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8298', '22', '16', '1', '0', '1437797284', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8299', '22', '7', '1', '0', '1437797284', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8300', '22', '8', '1', '0', '1437797284', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8301', '22', '6', '1', '0', '1437797293', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8302', '22', '14', '1', '0', '1437797293', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8303', '22', '15', '1', '0', '1437797293', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8304', '22', '16', '1', '0', '1437797293', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8305', '22', '7', '1', '0', '1437797293', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8306', '22', '8', '1', '0', '1437797293', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8307', '1', null, '1', '0', '1437797323', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8308', '22', '6', '1', '0', '1437797384', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8309', '22', '14', '1', '0', '1437797384', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8310', '22', '15', '1', '0', '1437797384', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8311', '22', '16', '1', '0', '1437797384', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8312', '22', '7', '1', '0', '1437797384', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8313', '22', '8', '1', '0', '1437797384', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8314', '1', '6', '1', '0', '1437797387', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8315', '1', '14', '1', '0', '1437797387', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8316', '1', '15', '1', '0', '1437797387', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8317', '1', '16', '1', '0', '1437797387', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8318', '1', '7', '1', '0', '1437797387', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8319', '1', '8', '1', '0', '1437797387', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8320', '1', null, '1', '0', '1437797390', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8321', '22', '6', '1', '0', '1437797421', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8322', '22', '14', '1', '0', '1437797421', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8323', '22', '15', '1', '0', '1437797421', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8324', '22', '16', '1', '0', '1437797421', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8325', '22', '7', '1', '0', '1437797421', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8326', '22', '8', '1', '0', '1437797421', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8327', '1', null, '1', '0', '1437798450', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8328', '1', null, '1', '0', '1437798717', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8329', '1', '6', '1', '0', '1437798818', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8330', '1', '14', '1', '0', '1437798818', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8331', '1', '15', '1', '0', '1437798818', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8332', '1', '16', '1', '0', '1437798818', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8333', '1', '7', '1', '0', '1437798818', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8334', '1', '8', '1', '0', '1437798818', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8335', '1', null, '1', '0', '1437798874', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8336', '1', '6', '1', '0', '1437799216', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8337', '1', '14', '1', '0', '1437799216', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8338', '1', '15', '1', '0', '1437799216', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8339', '1', '16', '1', '0', '1437799216', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8340', '1', '7', '1', '0', '1437799216', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8341', '1', '8', '1', '0', '1437799216', '2015-07-25', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8342', '1', null, '1', '0', '1437799295', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8343', '1', null, '1', '0', '1437799582', '2015-07-25', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8344', null, null, '1', '0', '1437894945', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8345', '1', null, '1', '0', '1437895242', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8346', '1', null, '1', '0', '1437895329', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8347', '1', '6', '1', '0', '1437895337', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8348', '1', '14', '1', '0', '1437895337', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8349', '1', '15', '1', '0', '1437895337', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8350', '1', '16', '1', '0', '1437895337', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8351', '1', '7', '1', '0', '1437895337', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8352', '1', '8', '1', '0', '1437895337', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8353', '1', null, '1', '0', '1437895341', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8354', '1', '6', '1', '0', '1437895348', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8355', '1', '14', '1', '0', '1437895348', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8356', '1', '15', '1', '0', '1437895348', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8357', '1', '16', '1', '0', '1437895348', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8358', '1', '7', '1', '0', '1437895348', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8359', '1', '8', '1', '0', '1437895348', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8360', '1', null, '1', '0', '1437895352', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8361', '1', '6', '1', '0', '1437895359', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8362', '1', '14', '1', '0', '1437895359', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8363', '1', '15', '1', '0', '1437895359', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8364', '1', '16', '1', '0', '1437895359', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8365', '1', '7', '1', '0', '1437895359', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8366', '1', '8', '1', '0', '1437895359', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8367', '1', '6', '1', '0', '1437895430', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8368', '1', '14', '1', '0', '1437895430', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8369', '1', '15', '1', '0', '1437895430', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8370', '1', '16', '1', '0', '1437895430', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8371', '1', '7', '1', '0', '1437895430', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8372', '1', '8', '1', '0', '1437895430', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8373', '1', null, '1', '0', '1437895433', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8374', '1', '6', '1', '0', '1437895440', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8375', '1', '14', '1', '0', '1437895440', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8376', '1', '15', '1', '0', '1437895440', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8377', '1', '16', '1', '0', '1437895440', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8378', '1', '7', '1', '0', '1437895440', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8379', '1', '8', '1', '0', '1437895440', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8380', '1', '6', '1', '0', '1437895468', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8381', '1', '14', '1', '0', '1437895468', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8382', '1', '15', '1', '0', '1437895468', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8383', '1', '16', '1', '0', '1437895468', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8384', '1', '7', '1', '0', '1437895468', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8385', '1', '8', '1', '0', '1437895468', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8386', '1', null, '1', '0', '1437895471', '2015-07-26', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8387', '1', '6', '1', '0', '1437895477', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8388', '1', '14', '1', '0', '1437895477', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8389', '1', '15', '1', '0', '1437895477', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8390', '1', '16', '1', '0', '1437895477', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8391', '1', '7', '1', '0', '1437895477', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8392', '1', '8', '1', '0', '1437895477', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8393', '1', '6', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8394', '1', '14', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8395', '1', '15', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8396', '1', '16', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8397', '1', '7', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8398', '1', '8', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8399', '1', '6', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8400', '1', '14', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8401', '1', '15', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8402', '1', '16', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8403', '1', '7', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8404', '1', '8', '1', '0', '1437895491', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8405', '1', '6', '1', '0', '1437895492', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8406', '1', '14', '1', '0', '1437895492', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8407', '1', '15', '1', '0', '1437895492', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8408', '1', '16', '1', '0', '1437895492', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8409', '1', '7', '1', '0', '1437895492', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8410', '1', '8', '1', '0', '1437895492', '2015-07-26', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8411', null, null, '1', '0', '1437958439', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8412', '1', '6', '1', '0', '1437958538', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8413', '1', '14', '1', '0', '1437958538', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8414', '1', '15', '1', '0', '1437958538', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8415', '1', '16', '1', '0', '1437958538', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8416', '1', '7', '1', '0', '1437958538', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8417', '1', '8', '1', '0', '1437958538', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8418', '1', '6', '1', '0', '1437958603', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8419', '1', '14', '1', '0', '1437958603', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8420', '1', '15', '1', '0', '1437958603', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8421', '1', '16', '1', '0', '1437958603', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8422', '1', '7', '1', '0', '1437958603', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8423', '1', '8', '1', '0', '1437958603', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8424', '1', null, '1', '0', '1437958608', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8425', '1', '6', '1', '0', '1437958615', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8426', '1', '14', '1', '0', '1437958615', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8427', '1', '15', '1', '0', '1437958615', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8428', '1', '16', '1', '0', '1437958615', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8429', '1', '7', '1', '0', '1437958615', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8430', '1', '8', '1', '0', '1437958615', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8431', '1', null, '1', '0', '1437958623', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8432', '1', '6', '1', '0', '1437958630', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8433', '1', '14', '1', '0', '1437958630', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8434', '1', '15', '1', '0', '1437958630', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8435', '1', '16', '1', '0', '1437958630', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8436', '1', '7', '1', '0', '1437958630', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8437', '1', '8', '1', '0', '1437958630', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8438', null, null, '1', '0', '1437958720', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8439', '1', '6', '1', '0', '1437958845', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8440', '1', '14', '1', '0', '1437958845', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8441', '1', '15', '1', '0', '1437958845', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8442', '1', '16', '1', '0', '1437958845', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8443', '1', '7', '1', '0', '1437958845', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8444', '1', '8', '1', '0', '1437958845', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8445', '1', null, '1', '0', '1437958961', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8446', '1', '6', '1', '0', '1437958968', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8447', '1', '14', '1', '0', '1437958968', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8448', '1', '15', '1', '0', '1437958968', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8449', '1', '16', '1', '0', '1437958968', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8450', '1', '7', '1', '0', '1437958968', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8451', '1', '8', '1', '0', '1437958968', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8452', '1', null, '1', '0', '1437959046', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8453', '1', '6', '1', '0', '1437959081', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8454', '1', '14', '1', '0', '1437959081', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8455', '1', '15', '1', '0', '1437959081', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8456', '1', '16', '1', '0', '1437959081', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8457', '1', '7', '1', '0', '1437959081', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8458', '1', '8', '1', '0', '1437959081', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8459', '1', '6', '1', '0', '1437959082', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8460', '1', '14', '1', '0', '1437959082', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8461', '1', '15', '1', '0', '1437959082', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8462', '1', '16', '1', '0', '1437959082', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8463', '1', '7', '1', '0', '1437959082', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8464', '1', '8', '1', '0', '1437959082', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8465', '1', '6', '1', '0', '1437959083', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8466', '1', '14', '1', '0', '1437959083', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8467', '1', '15', '1', '0', '1437959083', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8468', '1', '16', '1', '0', '1437959083', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8469', '1', '7', '1', '0', '1437959083', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8470', '1', '8', '1', '0', '1437959083', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8471', '1', '6', '1', '0', '1437959086', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8472', '1', '14', '1', '0', '1437959086', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8473', '1', '15', '1', '0', '1437959086', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8474', '1', '16', '1', '0', '1437959086', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8475', '1', '7', '1', '0', '1437959086', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8476', '1', '8', '1', '0', '1437959086', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8477', '1', null, '1', '0', '1437959135', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8478', '1', '6', '1', '0', '1437959142', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8479', '1', '14', '1', '0', '1437959142', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8480', '1', '15', '1', '0', '1437959142', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8481', '1', '16', '1', '0', '1437959142', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8482', '1', '7', '1', '0', '1437959142', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8483', '1', '8', '1', '0', '1437959142', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8484', '1', '6', '1', '0', '1437959158', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8485', '1', '14', '1', '0', '1437959158', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8486', '1', '15', '1', '0', '1437959158', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8487', '1', '16', '1', '0', '1437959158', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8488', '1', '7', '1', '0', '1437959158', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8489', '1', '8', '1', '0', '1437959158', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8490', '1', null, '1', '0', '1437959174', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8491', '1', '6', '1', '0', '1437959357', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8492', '1', '14', '1', '0', '1437959357', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8493', '1', '15', '1', '0', '1437959357', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8494', '1', '16', '1', '0', '1437959357', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8495', '1', '7', '1', '0', '1437959357', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8496', '1', '8', '1', '0', '1437959357', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8497', '1', null, '1', '0', '1437959359', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8498', '1', '6', '1', '0', '1437959366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8499', '1', '14', '1', '0', '1437959366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8500', '1', '15', '1', '0', '1437959366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8501', '1', '16', '1', '0', '1437959366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8502', '1', '7', '1', '0', '1437959366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8503', '1', '8', '1', '0', '1437959366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8504', '1', '6', '1', '0', '1437959569', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8505', '1', '14', '1', '0', '1437959569', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8506', '1', '15', '1', '0', '1437959569', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8507', '1', '16', '1', '0', '1437959569', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8508', '1', '7', '1', '0', '1437959569', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8509', '1', '8', '1', '0', '1437959569', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8510', '1', '6', '1', '0', '1437959655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8511', '1', '14', '1', '0', '1437959655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8512', '1', '15', '1', '0', '1437959655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8513', '1', '16', '1', '0', '1437959655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8514', '1', '7', '1', '0', '1437959655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8515', '1', '8', '1', '0', '1437959655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8516', '1', null, '1', '0', '1437959656', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8517', '1', '6', '1', '0', '1437959663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8518', '1', '14', '1', '0', '1437959663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8519', '1', '15', '1', '0', '1437959663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8520', '1', '16', '1', '0', '1437959663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8521', '1', '7', '1', '0', '1437959663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8522', '1', '8', '1', '0', '1437959663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8523', '1', null, '1', '0', '1437959679', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8524', '1', '6', '1', '0', '1437959686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8525', '1', '14', '1', '0', '1437959686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8526', '1', '15', '1', '0', '1437959686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8527', '1', '16', '1', '0', '1437959686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8528', '1', '7', '1', '0', '1437959686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8529', '1', '8', '1', '0', '1437959686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8530', '1', '6', '1', '0', '1437959690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8531', '1', '14', '1', '0', '1437959690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8532', '1', '15', '1', '0', '1437959690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8533', '1', '16', '1', '0', '1437959690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8534', '1', '7', '1', '0', '1437959690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8535', '1', '8', '1', '0', '1437959690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8536', '1', '6', '1', '0', '1437959701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8537', '1', '14', '1', '0', '1437959701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8538', '1', '15', '1', '0', '1437959701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8539', '1', '16', '1', '0', '1437959701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8540', '1', '7', '1', '0', '1437959701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8541', '1', '8', '1', '0', '1437959701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8542', '1', '6', '1', '0', '1437959991', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8543', '1', '14', '1', '0', '1437959991', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8544', '1', '15', '1', '0', '1437959991', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8545', '1', '16', '1', '0', '1437959991', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8546', '1', '7', '1', '0', '1437959991', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8547', '1', '8', '1', '0', '1437959991', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8548', '1', null, '1', '0', '1437959992', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8549', '1', null, '1', '0', '1437960075', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8550', '1', '6', '1', '0', '1437960151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8551', '1', '14', '1', '0', '1437960151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8552', '1', '15', '1', '0', '1437960151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8553', '1', '16', '1', '0', '1437960151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8554', '1', '7', '1', '0', '1437960151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8555', '1', '8', '1', '0', '1437960151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8556', '1', null, '1', '0', '1437960153', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8557', '1', '6', '1', '0', '1437960157', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8558', '1', '14', '1', '0', '1437960157', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8559', '1', '15', '1', '0', '1437960157', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8560', '1', '16', '1', '0', '1437960157', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8561', '1', '7', '1', '0', '1437960157', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8562', '1', '8', '1', '0', '1437960157', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8563', '1', null, '1', '0', '1437960161', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8564', '1', '6', '1', '0', '1437960211', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8565', '1', '14', '1', '0', '1437960211', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8566', '1', '15', '1', '0', '1437960211', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8567', '1', '16', '1', '0', '1437960211', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8568', '1', '7', '1', '0', '1437960211', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8569', '1', '8', '1', '0', '1437960211', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8570', '1', null, '1', '0', '1437960213', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8571', '1', '6', '1', '0', '1437960337', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8572', '1', '14', '1', '0', '1437960337', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8573', '1', '15', '1', '0', '1437960337', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8574', '1', '16', '1', '0', '1437960337', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8575', '1', '7', '1', '0', '1437960337', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8576', '1', '8', '1', '0', '1437960337', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8577', '1', null, '1', '0', '1437960341', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8578', '1', null, '1', '0', '1437960467', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8579', '1', '6', '1', '0', '1437960484', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8580', '1', '14', '1', '0', '1437960484', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8581', '1', '15', '1', '0', '1437960484', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8582', '1', '16', '1', '0', '1437960484', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8583', '1', '7', '1', '0', '1437960484', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8584', '1', '8', '1', '0', '1437960484', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8585', '1', null, '1', '0', '1437960489', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8586', '1', '6', '1', '0', '1437960794', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8587', '1', '14', '1', '0', '1437960794', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8588', '1', '15', '1', '0', '1437960794', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8589', '1', '16', '1', '0', '1437960794', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8590', '1', '7', '1', '0', '1437960794', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8591', '1', '8', '1', '0', '1437960794', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8592', '1', null, '1', '0', '1437960802', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8593', '1', '6', '1', '0', '1437961315', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8594', '1', '14', '1', '0', '1437961315', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8595', '1', '15', '1', '0', '1437961315', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8596', '1', '16', '1', '0', '1437961315', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8597', '1', '7', '1', '0', '1437961315', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8598', '1', '8', '1', '0', '1437961315', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8599', '1', null, '1', '0', '1437961317', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8600', '1', null, '1', '0', '1437961330', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8601', '1', '6', '1', '0', '1437961498', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8602', '1', '14', '1', '0', '1437961498', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8603', '1', '15', '1', '0', '1437961498', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8604', '1', '16', '1', '0', '1437961498', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8605', '1', '7', '1', '0', '1437961498', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8606', '1', '8', '1', '0', '1437961498', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8607', '1', '6', '1', '0', '1437961499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8608', '1', '14', '1', '0', '1437961499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8609', '1', '15', '1', '0', '1437961499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8610', '1', '16', '1', '0', '1437961499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8611', '1', '7', '1', '0', '1437961499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8612', '1', '8', '1', '0', '1437961499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8613', '1', null, '1', '0', '1437961506', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8614', '1', '6', '1', '0', '1437962004', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8615', '1', '14', '1', '0', '1437962004', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8616', '1', '15', '1', '0', '1437962004', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8617', '1', '16', '1', '0', '1437962004', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8618', '1', '7', '1', '0', '1437962004', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8619', '1', '8', '1', '0', '1437962004', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8620', '1', null, '1', '0', '1437962008', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8621', '1', '6', '1', '0', '1437962208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8622', '1', '14', '1', '0', '1437962208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8623', '1', '15', '1', '0', '1437962208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8624', '1', '16', '1', '0', '1437962208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8625', '1', '7', '1', '0', '1437962208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8626', '1', '8', '1', '0', '1437962208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8627', '1', null, '1', '0', '1437962210', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8628', '1', null, '1', '0', '1437962215', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8629', '1', null, '1', '0', '1437962218', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8630', null, null, '1', '0', '1437963120', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8631', null, null, '1', '0', '1437963254', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8632', '1', null, '1', '0', '1437963261', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8633', '1', null, '1', '0', '1437963489', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8634', '1', null, '1', '0', '1437963494', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8635', '1', null, '1', '0', '1437963496', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8636', null, null, '1', '0', '1437963503', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8637', null, null, '1', '0', '1437963508', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8638', '1', null, '1', '0', '1437963509', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8639', '1', null, '1', '0', '1437963510', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8640', '1', null, '1', '0', '1437963511', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8641', null, null, '1', '0', '1437963539', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8642', null, null, '1', '0', '1437963586', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8643', '1', null, '1', '0', '1437963684', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8644', null, null, '1', '0', '1437963740', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8645', '1', null, '1', '0', '1437963765', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8646', '1', null, '1', '0', '1437963769', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8647', '1', null, '0', '1', '1437963781', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8648', '1', null, '1', '0', '1437963815', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8649', '1', null, '1', '0', '1437963816', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8650', null, null, '1', '0', '1437963951', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8651', '1', null, '1', '0', '1437963986', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8652', '1', null, '1', '0', '1437963989', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8653', '1', null, '1', '0', '1437963994', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8654', '1', null, '1', '0', '1437963997', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8655', '1', null, '1', '0', '1437963999', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8656', '1', null, '1', '0', '1437964009', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8657', '1', null, '1', '0', '1437964012', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8658', '1', null, '1', '0', '1437964014', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8659', '1', null, '1', '0', '1437964017', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8660', '1', null, '1', '0', '1437964021', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8661', '1', null, '1', '0', '1437964022', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8662', '1', null, '1', '0', '1437964026', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8663', '1', null, '1', '0', '1437964027', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8664', '1', null, '1', '0', '1437964029', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8665', '1', null, '1', '0', '1437964031', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8666', '1', null, '1', '0', '1437964049', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8667', '1', null, '1', '0', '1437964097', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8668', '1', null, '1', '0', '1437964099', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8669', '1', null, '1', '0', '1437964101', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8670', '1', null, '1', '0', '1437964110', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8671', '1', null, '1', '0', '1437964112', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8672', '1', null, '1', '0', '1437964126', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8673', null, null, '1', '0', '1437964544', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8674', '1', null, '1', '0', '1437964559', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8675', null, null, '0', '1', '1437964619', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8676', '1', null, '1', '0', '1437964736', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8677', null, null, '1', '0', '1437964783', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8678', '1', null, '1', '0', '1437965520', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8679', '1', '6', '1', '0', '1437965773', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8680', '1', '14', '1', '0', '1437965773', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8681', '1', '15', '1', '0', '1437965773', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8682', '1', '16', '1', '0', '1437965773', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8683', '1', '7', '1', '0', '1437965773', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8684', '1', '8', '1', '0', '1437965773', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8685', '1', '6', '1', '0', '1437965787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8686', '1', '14', '1', '0', '1437965787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8687', '1', '15', '1', '0', '1437965787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8688', '1', '16', '1', '0', '1437965787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8689', '1', '7', '1', '0', '1437965787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8690', '1', '8', '1', '0', '1437965787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8691', '26', '6', '1', '0', '1437965871', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8692', '26', '14', '1', '0', '1437965871', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8693', '26', '15', '1', '0', '1437965871', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8694', '26', '16', '1', '0', '1437965871', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8695', '26', '7', '1', '0', '1437965871', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8696', '26', '8', '1', '0', '1437965871', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8697', '1', '6', '1', '0', '1437965891', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8698', '1', '14', '1', '0', '1437965891', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8699', '1', '15', '1', '0', '1437965891', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8700', '1', '16', '1', '0', '1437965891', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8701', '1', '7', '1', '0', '1437965891', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8702', '1', '8', '1', '0', '1437965891', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8703', '1', '6', '1', '0', '1437965980', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8704', '1', '14', '1', '0', '1437965980', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8705', '1', '15', '1', '0', '1437965980', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8706', '1', '16', '1', '0', '1437965980', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8707', '1', '7', '1', '0', '1437965980', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8708', '1', '8', '1', '0', '1437965980', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8709', null, null, '0', '1', '1437965998', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8710', '26', '6', '1', '0', '1437966155', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8711', '26', '14', '1', '0', '1437966155', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8712', '26', '15', '1', '0', '1437966155', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8713', '26', '16', '1', '0', '1437966155', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8714', '26', '7', '1', '0', '1437966155', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8715', '26', '8', '1', '0', '1437966155', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8716', '26', '6', '1', '0', '1437966189', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8717', '26', '14', '1', '0', '1437966189', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8718', '26', '15', '1', '0', '1437966189', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8719', '26', '16', '1', '0', '1437966189', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8720', '26', '7', '1', '0', '1437966189', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8721', '26', '8', '1', '0', '1437966189', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8722', '1', '6', '1', '0', '1437966250', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8723', '1', '14', '1', '0', '1437966250', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8724', '1', '15', '1', '0', '1437966250', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8725', '1', '16', '1', '0', '1437966250', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8726', '1', '7', '1', '0', '1437966250', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8727', '1', '8', '1', '0', '1437966250', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8728', '1', '6', '1', '0', '1437966251', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8729', '1', '14', '1', '0', '1437966251', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8730', '1', '15', '1', '0', '1437966251', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8731', '1', '16', '1', '0', '1437966251', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8732', '1', '7', '1', '0', '1437966251', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8733', '1', '8', '1', '0', '1437966251', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8734', '26', '6', '1', '0', '1437966447', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8735', '26', '14', '1', '0', '1437966447', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8736', '26', '15', '1', '0', '1437966447', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8737', '26', '16', '1', '0', '1437966447', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8738', '26', '7', '1', '0', '1437966447', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8739', '26', '8', '1', '0', '1437966447', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8740', '1', '6', '1', '0', '1437966449', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8741', '1', '14', '1', '0', '1437966449', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8742', '1', '15', '1', '0', '1437966449', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8743', '1', '16', '1', '0', '1437966449', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8744', '1', '7', '1', '0', '1437966449', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8745', '1', '8', '1', '0', '1437966449', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8746', '1', '6', '1', '0', '1437968217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8747', '1', '14', '1', '0', '1437968217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8748', '1', '15', '1', '0', '1437968217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8749', '1', '16', '1', '0', '1437968217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8750', '1', '7', '1', '0', '1437968217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8751', '1', '8', '1', '0', '1437968217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8752', '1', null, '1', '0', '1437968232', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8753', '26', '6', '1', '0', '1437969592', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8754', '26', '14', '1', '0', '1437969592', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8755', '26', '15', '1', '0', '1437969592', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8756', '26', '16', '1', '0', '1437969592', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8757', '26', '7', '1', '0', '1437969592', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8758', '26', '8', '1', '0', '1437969592', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8759', '1', '6', '1', '0', '1437969595', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8760', '1', '14', '1', '0', '1437969595', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8761', '1', '15', '1', '0', '1437969595', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8762', '1', '16', '1', '0', '1437969595', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8763', '1', '7', '1', '0', '1437969595', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8764', '1', '8', '1', '0', '1437969595', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8765', '1', null, '1', '0', '1437969620', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8766', '1', null, '1', '0', '1437969658', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8767', '1', '6', '1', '0', '1437969663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8768', '1', '14', '1', '0', '1437969663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8769', '1', '15', '1', '0', '1437969663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8770', '1', '16', '1', '0', '1437969663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8771', '1', '7', '1', '0', '1437969663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8772', '1', '8', '1', '0', '1437969663', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8773', '1', '6', '1', '0', '1437969670', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8774', '1', '14', '1', '0', '1437969670', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8775', '1', '15', '1', '0', '1437969670', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8776', '1', '16', '1', '0', '1437969670', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8777', '1', '7', '1', '0', '1437969670', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8778', '1', '8', '1', '0', '1437969670', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8779', '1', '6', '1', '0', '1437969673', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8780', '1', '14', '1', '0', '1437969673', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8781', '1', '15', '1', '0', '1437969673', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8782', '1', '16', '1', '0', '1437969673', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8783', '1', '7', '1', '0', '1437969673', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8784', '1', '8', '1', '0', '1437969673', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8785', '1', null, '1', '0', '1437969682', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8786', '1', '6', '1', '0', '1437969862', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8787', '1', '14', '1', '0', '1437969862', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8788', '1', '15', '1', '0', '1437969862', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8789', '1', '16', '1', '0', '1437969862', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8790', '1', '7', '1', '0', '1437969862', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8791', '1', '8', '1', '0', '1437969862', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8792', '1', '6', '1', '0', '1437969939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8793', '1', '14', '1', '0', '1437969939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8794', '1', '15', '1', '0', '1437969939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8795', '1', '16', '1', '0', '1437969939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8796', '1', '7', '1', '0', '1437969939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8797', '1', '8', '1', '0', '1437969939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8798', '1', '6', '1', '0', '1437969941', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8799', '1', '14', '1', '0', '1437969941', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8800', '1', '15', '1', '0', '1437969941', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8801', '1', '16', '1', '0', '1437969941', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8802', '1', '7', '1', '0', '1437969941', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8803', '1', '8', '1', '0', '1437969941', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8804', '1', '6', '1', '0', '1437969943', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8805', '1', '14', '1', '0', '1437969943', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8806', '1', '15', '1', '0', '1437969943', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8807', '1', '16', '1', '0', '1437969943', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8808', '1', '7', '1', '0', '1437969943', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8809', '1', '8', '1', '0', '1437969943', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8810', '1', '6', '1', '0', '1437969975', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8811', '1', '14', '1', '0', '1437969975', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8812', '1', '15', '1', '0', '1437969975', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8813', '1', '16', '1', '0', '1437969975', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8814', '1', '7', '1', '0', '1437969975', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8815', '1', '8', '1', '0', '1437969975', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8816', '1', '6', '1', '0', '1437970021', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8817', '1', '14', '1', '0', '1437970021', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8818', '1', '15', '1', '0', '1437970021', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8819', '1', '16', '1', '0', '1437970021', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8820', '1', '7', '1', '0', '1437970021', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8821', '1', '8', '1', '0', '1437970021', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8822', '1', '6', '1', '0', '1437970041', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8823', '1', '14', '1', '0', '1437970041', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8824', '1', '15', '1', '0', '1437970041', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8825', '1', '16', '1', '0', '1437970041', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8826', '1', '7', '1', '0', '1437970041', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8827', '1', '8', '1', '0', '1437970041', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8828', '1', '6', '1', '0', '1437970093', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8829', '1', '14', '1', '0', '1437970093', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8830', '1', '15', '1', '0', '1437970093', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8831', '1', '16', '1', '0', '1437970093', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8832', '1', '7', '1', '0', '1437970093', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8833', '1', '8', '1', '0', '1437970093', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8834', '1', '6', '1', '0', '1437970105', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8835', '1', '14', '1', '0', '1437970105', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8836', '1', '15', '1', '0', '1437970105', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8837', '1', '16', '1', '0', '1437970105', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8838', '1', '7', '1', '0', '1437970105', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8839', '1', '8', '1', '0', '1437970105', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8840', '1', '6', '1', '0', '1437970344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8841', '1', '14', '1', '0', '1437970344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8842', '1', '15', '1', '0', '1437970344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8843', '1', '16', '1', '0', '1437970344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8844', '1', '7', '1', '0', '1437970344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8845', '1', '8', '1', '0', '1437970344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8846', '26', '6', '1', '0', '1437970380', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8847', '26', '14', '1', '0', '1437970380', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8848', '26', '15', '1', '0', '1437970380', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8849', '26', '16', '1', '0', '1437970380', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8850', '26', '7', '1', '0', '1437970380', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8851', '26', '8', '1', '0', '1437970380', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8852', '1', '6', '1', '0', '1437971066', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8853', '1', '14', '1', '0', '1437971066', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8854', '1', '15', '1', '0', '1437971066', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8855', '1', '16', '1', '0', '1437971066', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8856', '1', '7', '1', '0', '1437971066', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8857', '1', '8', '1', '0', '1437971066', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8858', '1', '6', '1', '0', '1437971070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8859', '1', '14', '1', '0', '1437971070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8860', '1', '15', '1', '0', '1437971070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8861', '1', '16', '1', '0', '1437971070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8862', '1', '7', '1', '0', '1437971070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8863', '1', '8', '1', '0', '1437971070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8864', '1', '6', '1', '0', '1437971072', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8865', '1', '14', '1', '0', '1437971072', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8866', '1', '15', '1', '0', '1437971072', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8867', '1', '16', '1', '0', '1437971072', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8868', '1', '7', '1', '0', '1437971072', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8869', '1', '8', '1', '0', '1437971072', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8870', '1', '6', '1', '0', '1437971707', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8871', '1', '14', '1', '0', '1437971707', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8872', '1', '15', '1', '0', '1437971707', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8873', '1', '16', '1', '0', '1437971707', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8874', '1', '7', '1', '0', '1437971707', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8875', '1', '8', '1', '0', '1437971707', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8876', '1', '6', '1', '0', '1437971710', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8877', '1', '14', '1', '0', '1437971710', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8878', '1', '15', '1', '0', '1437971710', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8879', '1', '16', '1', '0', '1437971710', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8880', '1', '7', '1', '0', '1437971710', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8881', '1', '8', '1', '0', '1437971710', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8882', '1', '6', '1', '0', '1437971804', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8883', '1', '14', '1', '0', '1437971804', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8884', '1', '15', '1', '0', '1437971804', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8885', '1', '16', '1', '0', '1437971804', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8886', '1', '7', '1', '0', '1437971804', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8887', '1', '8', '1', '0', '1437971804', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8888', '1', '6', '1', '0', '1437971806', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8889', '1', '14', '1', '0', '1437971806', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8890', '1', '15', '1', '0', '1437971806', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8891', '1', '16', '1', '0', '1437971806', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8892', '1', '7', '1', '0', '1437971806', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8893', '1', '8', '1', '0', '1437971806', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8894', '1', '6', '1', '0', '1437971810', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8895', '1', '14', '1', '0', '1437971810', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8896', '1', '15', '1', '0', '1437971810', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8897', '1', '16', '1', '0', '1437971810', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8898', '1', '7', '1', '0', '1437971810', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8899', '1', '8', '1', '0', '1437971810', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8900', '1', '6', '1', '0', '1437971828', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8901', '1', '14', '1', '0', '1437971828', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8902', '1', '15', '1', '0', '1437971828', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8903', '1', '16', '1', '0', '1437971828', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8904', '1', '7', '1', '0', '1437971828', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8905', '1', '8', '1', '0', '1437971828', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8906', '1', '6', '1', '0', '1437971830', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8907', '1', '14', '1', '0', '1437971830', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8908', '1', '15', '1', '0', '1437971830', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8909', '1', '16', '1', '0', '1437971830', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8910', '1', '7', '1', '0', '1437971830', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8911', '1', '8', '1', '0', '1437971830', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8912', '1', '6', '1', '0', '1437977770', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8913', '1', '14', '1', '0', '1437977770', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8914', '1', '15', '1', '0', '1437977770', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8915', '1', '16', '1', '0', '1437977770', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8916', '1', '7', '1', '0', '1437977770', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8917', '1', '8', '1', '0', '1437977770', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8918', '1', null, '1', '0', '1437977789', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8919', '1', null, '1', '0', '1437977791', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8920', '1', null, '1', '0', '1437977793', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8921', '1', null, '1', '0', '1437977856', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8922', '1', null, '1', '0', '1437977858', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8923', '1', null, '1', '0', '1437977860', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8924', '1', null, '1', '0', '1437977864', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8925', '1', null, '1', '0', '1437977937', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8926', null, null, '1', '0', '1437978239', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8927', null, null, '1', '0', '1437978243', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8928', null, null, '0', '1', '1437978247', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8929', null, null, '0', '1', '1437978262', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8930', null, null, '0', '1', '1437978778', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8931', null, '21', '1', '0', '1437978778', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8932', null, null, '1', '0', '1437978780', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8933', null, null, '1', '0', '1437978782', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8934', null, null, '1', '0', '1437978783', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8935', null, '21', '0', '1', '1437978803', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8936', null, '21', '1', '0', '1437978803', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8937', null, '21', '0', '1', '1437978808', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8938', null, '21', '1', '0', '1437978808', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8939', null, null, '1', '0', '1437978811', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8940', '1', '1', '1', '0', '1437978823', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8941', '1', '13', '1', '0', '1437978823', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8942', '1', '21', '1', '0', '1437978823', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8943', '1', null, '1', '0', '1437978823', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8944', '1', '21', '1', '0', '1437978826', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8945', '1', '13', '1', '0', '1437978826', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8946', '1', '1', '1', '0', '1437978826', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8947', '1', null, '1', '0', '1437978826', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8948', null, null, '1', '0', '1437978835', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8949', '1', '1', '1', '0', '1437978843', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8950', '1', '21', '1', '0', '1437978843', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8951', '1', '20', '1', '0', '1437978843', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8952', '1', null, '1', '0', '1437978843', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8953', null, '21', '0', '1', '1437978851', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8954', null, '21', '1', '0', '1437978851', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8955', null, '21', '0', '1', '1437978877', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8956', null, '21', '1', '0', '1437978877', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8957', '1', '1', '1', '0', '1437978955', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8958', '1', '13', '1', '0', '1437978955', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8959', '1', '21', '1', '0', '1437978955', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8960', '1', null, '1', '0', '1437978955', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8961', '1', '20', '0', '1', '1437978991', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8962', '1', '20', '1', '0', '1437978991', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8963', '1', '1', '1', '0', '1437978991', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8964', '1', '13', '1', '0', '1437978991', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8965', '1', '21', '1', '0', '1437978991', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8966', null, null, '1', '0', '1437980019', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8967', '1', '1', '1', '0', '1437982427', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8968', '1', '21', '1', '0', '1437982427', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('8969', '1', '20', '1', '0', '1437982427', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8970', '1', null, '1', '0', '1437982427', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('8971', '1', '6', '1', '0', '1437982443', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8972', '1', '14', '1', '0', '1437982443', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8973', '1', '15', '1', '0', '1437982443', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8974', '1', '16', '1', '0', '1437982443', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8975', '1', '7', '1', '0', '1437982443', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8976', '1', '8', '1', '0', '1437982443', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8977', '1', '6', '1', '0', '1437982556', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8978', '1', '14', '1', '0', '1437982556', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8979', '1', '15', '1', '0', '1437982556', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8980', '1', '16', '1', '0', '1437982556', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8981', '1', '7', '1', '0', '1437982556', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8982', '1', '8', '1', '0', '1437982556', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8983', '1', '6', '1', '0', '1437982598', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8984', '1', '14', '1', '0', '1437982598', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8985', '1', '15', '1', '0', '1437982598', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8986', '1', '16', '1', '0', '1437982598', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8987', '1', '7', '1', '0', '1437982598', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8988', '1', '8', '1', '0', '1437982598', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8989', '1', '6', '1', '0', '1437982605', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8990', '1', '14', '1', '0', '1437982605', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8991', '1', '15', '1', '0', '1437982605', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8992', '1', '16', '1', '0', '1437982605', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8993', '1', '7', '1', '0', '1437982605', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8994', '1', '8', '1', '0', '1437982605', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8995', '1', '6', '1', '0', '1437982624', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8996', '1', '14', '1', '0', '1437982624', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8997', '1', '15', '1', '0', '1437982624', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8998', '1', '16', '1', '0', '1437982624', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('8999', '1', '7', '1', '0', '1437982624', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9000', '1', '8', '1', '0', '1437982624', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9001', '1', '6', '1', '0', '1437982652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9002', '1', '14', '1', '0', '1437982652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9003', '1', '15', '1', '0', '1437982652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9004', '1', '16', '1', '0', '1437982652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9005', '1', '7', '1', '0', '1437982652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9006', '1', '8', '1', '0', '1437982652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9007', '1', '6', '1', '0', '1437982655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9008', '1', '14', '1', '0', '1437982655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9009', '1', '15', '1', '0', '1437982655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9010', '1', '16', '1', '0', '1437982655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9011', '1', '7', '1', '0', '1437982655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9012', '1', '8', '1', '0', '1437982655', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9013', '1', '6', '1', '0', '1437982690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9014', '1', '14', '1', '0', '1437982690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9015', '1', '15', '1', '0', '1437982690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9016', '1', '16', '1', '0', '1437982690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9017', '1', '7', '1', '0', '1437982690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9018', '1', '8', '1', '0', '1437982690', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9019', '1', '6', '1', '0', '1437982693', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9020', '1', '14', '1', '0', '1437982693', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9021', '1', '15', '1', '0', '1437982693', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9022', '1', '16', '1', '0', '1437982693', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9023', '1', '7', '1', '0', '1437982693', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9024', '1', '8', '1', '0', '1437982693', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9025', '1', '6', '1', '0', '1437982706', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9026', '1', '14', '1', '0', '1437982706', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9027', '1', '15', '1', '0', '1437982706', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9028', '1', '16', '1', '0', '1437982706', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9029', '1', '7', '1', '0', '1437982706', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9030', '1', '8', '1', '0', '1437982706', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9031', '1', '6', '1', '0', '1437982709', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9032', '1', '14', '1', '0', '1437982709', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9033', '1', '15', '1', '0', '1437982709', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9034', '1', '16', '1', '0', '1437982709', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9035', '1', '7', '1', '0', '1437982709', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9036', '1', '8', '1', '0', '1437982709', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9037', '1', '6', '1', '0', '1437982715', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9038', '1', '14', '1', '0', '1437982715', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9039', '1', '15', '1', '0', '1437982715', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9040', '1', '16', '1', '0', '1437982715', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9041', '1', '7', '1', '0', '1437982715', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9042', '1', '8', '1', '0', '1437982715', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9043', '1', '6', '1', '0', '1437982722', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9044', '1', '14', '1', '0', '1437982722', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9045', '1', '15', '1', '0', '1437982722', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9046', '1', '16', '1', '0', '1437982722', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9047', '1', '7', '1', '0', '1437982722', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9048', '1', '8', '1', '0', '1437982722', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9049', '1', '6', '1', '0', '1437982734', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9050', '1', '14', '1', '0', '1437982734', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9051', '1', '15', '1', '0', '1437982734', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9052', '1', '16', '1', '0', '1437982734', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9053', '1', '7', '1', '0', '1437982734', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9054', '1', '8', '1', '0', '1437982734', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9055', '1', '6', '1', '0', '1437982757', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9056', '1', '14', '1', '0', '1437982757', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9057', '1', '15', '1', '0', '1437982757', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9058', '1', '16', '1', '0', '1437982757', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9059', '1', '7', '1', '0', '1437982757', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9060', '1', '8', '1', '0', '1437982757', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9061', '1', '6', '1', '0', '1437982760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9062', '1', '14', '1', '0', '1437982760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9063', '1', '15', '1', '0', '1437982760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9064', '1', '16', '1', '0', '1437982760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9065', '1', '7', '1', '0', '1437982760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9066', '1', '8', '1', '0', '1437982760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9067', '1', '6', '1', '0', '1437982999', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9068', '1', '14', '1', '0', '1437982999', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9069', '1', '15', '1', '0', '1437982999', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9070', '1', '16', '1', '0', '1437982999', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9071', '1', '7', '1', '0', '1437982999', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9072', '1', '8', '1', '0', '1437982999', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9073', '1', '6', '1', '0', '1437983069', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9074', '1', '14', '1', '0', '1437983069', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9075', '1', '15', '1', '0', '1437983069', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9076', '1', '16', '1', '0', '1437983069', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9077', '1', '7', '1', '0', '1437983069', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9078', '1', '8', '1', '0', '1437983069', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9079', '1', '6', '1', '0', '1437983073', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9080', '1', '14', '1', '0', '1437983073', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9081', '1', '15', '1', '0', '1437983073', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9082', '1', '16', '1', '0', '1437983073', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9083', '1', '7', '1', '0', '1437983073', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9084', '1', '8', '1', '0', '1437983073', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9085', '1', '6', '1', '0', '1437983075', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9086', '1', '14', '1', '0', '1437983075', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9087', '1', '15', '1', '0', '1437983075', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9088', '1', '16', '1', '0', '1437983075', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9089', '1', '7', '1', '0', '1437983075', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9090', '1', '8', '1', '0', '1437983075', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9091', '1', '6', '1', '0', '1437983084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9092', '1', '14', '1', '0', '1437983084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9093', '1', '15', '1', '0', '1437983084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9094', '1', '16', '1', '0', '1437983084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9095', '1', '7', '1', '0', '1437983084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9096', '1', '8', '1', '0', '1437983084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9097', '1', '6', '1', '0', '1437983148', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9098', '1', '14', '1', '0', '1437983148', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9099', '1', '15', '1', '0', '1437983148', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9100', '1', '16', '1', '0', '1437983148', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9101', '1', '7', '1', '0', '1437983148', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9102', '1', '8', '1', '0', '1437983148', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9103', '1', '6', '1', '0', '1437983159', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9104', '1', '14', '1', '0', '1437983159', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9105', '1', '15', '1', '0', '1437983159', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9106', '1', '16', '1', '0', '1437983159', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9107', '1', '7', '1', '0', '1437983159', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9108', '1', '8', '1', '0', '1437983159', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9109', '1', '6', '1', '0', '1437983160', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9110', '1', '14', '1', '0', '1437983160', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9111', '1', '15', '1', '0', '1437983160', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9112', '1', '16', '1', '0', '1437983160', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9113', '1', '7', '1', '0', '1437983160', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9114', '1', '8', '1', '0', '1437983160', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9115', '1', '6', '1', '0', '1437983181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9116', '1', '14', '1', '0', '1437983181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9117', '1', '15', '1', '0', '1437983181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9118', '1', '16', '1', '0', '1437983181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9119', '1', '7', '1', '0', '1437983181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9120', '1', '8', '1', '0', '1437983181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9121', '1', '6', '1', '0', '1437983188', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9122', '1', '14', '1', '0', '1437983188', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9123', '1', '15', '1', '0', '1437983188', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9124', '1', '16', '1', '0', '1437983188', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9125', '1', '7', '1', '0', '1437983188', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9126', '1', '8', '1', '0', '1437983188', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9127', '1', '6', '1', '0', '1437983217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9128', '1', '14', '1', '0', '1437983217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9129', '1', '15', '1', '0', '1437983217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9130', '1', '16', '1', '0', '1437983217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9131', '1', '7', '1', '0', '1437983217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9132', '1', '8', '1', '0', '1437983217', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9133', '1', '6', '1', '0', '1437983224', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9134', '1', '14', '1', '0', '1437983224', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9135', '1', '15', '1', '0', '1437983224', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9136', '1', '16', '1', '0', '1437983224', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9137', '1', '7', '1', '0', '1437983224', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9138', '1', '8', '1', '0', '1437983224', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9139', '1', '6', '1', '0', '1437983243', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9140', '1', '14', '1', '0', '1437983243', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9141', '1', '15', '1', '0', '1437983243', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9142', '1', '16', '1', '0', '1437983243', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9143', '1', '7', '1', '0', '1437983243', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9144', '1', '8', '1', '0', '1437983243', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9145', '1', '6', '1', '0', '1437983279', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9146', '1', '14', '1', '0', '1437983279', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9147', '1', '15', '1', '0', '1437983279', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9148', '1', '16', '1', '0', '1437983279', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9149', '1', '7', '1', '0', '1437983279', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9150', '1', '8', '1', '0', '1437983279', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9151', '1', '6', '1', '0', '1437983281', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9152', '1', '14', '1', '0', '1437983281', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9153', '1', '15', '1', '0', '1437983281', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9154', '1', '16', '1', '0', '1437983281', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9155', '1', '7', '1', '0', '1437983281', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9156', '1', '8', '1', '0', '1437983281', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9157', '1', '6', '1', '0', '1437983344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9158', '1', '14', '1', '0', '1437983344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9159', '1', '15', '1', '0', '1437983344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9160', '1', '16', '1', '0', '1437983344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9161', '1', '7', '1', '0', '1437983344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9162', '1', '8', '1', '0', '1437983344', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9163', '1', '6', '1', '0', '1437983360', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9164', '1', '14', '1', '0', '1437983360', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9165', '1', '15', '1', '0', '1437983360', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9166', '1', '16', '1', '0', '1437983360', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9167', '1', '7', '1', '0', '1437983360', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9168', '1', '8', '1', '0', '1437983360', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9169', '1', '6', '1', '0', '1437983396', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9170', '1', '14', '1', '0', '1437983396', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9171', '1', '15', '1', '0', '1437983396', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9172', '1', '16', '1', '0', '1437983396', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9173', '1', '7', '1', '0', '1437983396', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9174', '1', '8', '1', '0', '1437983396', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9175', '1', '6', '1', '0', '1437983400', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9176', '1', '14', '1', '0', '1437983400', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9177', '1', '15', '1', '0', '1437983400', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9178', '1', '16', '1', '0', '1437983400', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9179', '1', '7', '1', '0', '1437983400', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9180', '1', '8', '1', '0', '1437983400', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9181', '1', '6', '1', '0', '1437983429', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9182', '1', '14', '1', '0', '1437983429', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9183', '1', '15', '1', '0', '1437983429', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9184', '1', '16', '1', '0', '1437983429', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9185', '1', '7', '1', '0', '1437983429', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9186', '1', '8', '1', '0', '1437983429', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9187', '1', '6', '1', '0', '1437983444', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9188', '1', '14', '1', '0', '1437983444', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9189', '1', '15', '1', '0', '1437983444', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9190', '1', '16', '1', '0', '1437983444', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9191', '1', '7', '1', '0', '1437983444', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9192', '1', '8', '1', '0', '1437983444', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9193', '1', '6', '1', '0', '1437983457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9194', '1', '14', '1', '0', '1437983457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9195', '1', '15', '1', '0', '1437983457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9196', '1', '16', '1', '0', '1437983457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9197', '1', '7', '1', '0', '1437983457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9198', '1', '8', '1', '0', '1437983457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9199', '1', '6', '1', '0', '1437983466', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9200', '1', '14', '1', '0', '1437983466', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9201', '1', '15', '1', '0', '1437983466', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9202', '1', '16', '1', '0', '1437983466', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9203', '1', '7', '1', '0', '1437983466', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9204', '1', '8', '1', '0', '1437983466', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9205', '1', '6', '1', '0', '1437983480', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9206', '1', '14', '1', '0', '1437983480', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9207', '1', '15', '1', '0', '1437983480', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9208', '1', '16', '1', '0', '1437983480', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9209', '1', '7', '1', '0', '1437983480', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9210', '1', '8', '1', '0', '1437983480', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9211', '1', '6', '1', '0', '1437983541', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9212', '1', '14', '1', '0', '1437983541', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9213', '1', '15', '1', '0', '1437983541', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9214', '1', '16', '1', '0', '1437983541', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9215', '1', '7', '1', '0', '1437983541', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9216', '1', '8', '1', '0', '1437983541', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9217', '1', '6', '1', '0', '1437983812', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9218', '1', '14', '1', '0', '1437983812', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9219', '1', '15', '1', '0', '1437983812', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9220', '1', '16', '1', '0', '1437983812', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9221', '1', '7', '1', '0', '1437983812', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9222', '1', '8', '1', '0', '1437983812', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9223', '1', '6', '1', '0', '1437983839', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9224', '1', '14', '1', '0', '1437983839', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9225', '1', '15', '1', '0', '1437983839', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9226', '1', '16', '1', '0', '1437983839', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9227', '1', '7', '1', '0', '1437983839', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9228', '1', '8', '1', '0', '1437983839', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9229', '1', '6', '1', '0', '1437983859', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9230', '1', '14', '1', '0', '1437983859', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9231', '1', '15', '1', '0', '1437983859', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9232', '1', '16', '1', '0', '1437983859', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9233', '1', '7', '1', '0', '1437983859', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9234', '1', '8', '1', '0', '1437983859', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9235', '1', '6', '1', '0', '1437983870', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9236', '1', '14', '1', '0', '1437983870', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9237', '1', '15', '1', '0', '1437983870', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9238', '1', '16', '1', '0', '1437983870', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9239', '1', '7', '1', '0', '1437983870', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9240', '1', '8', '1', '0', '1437983870', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9241', '1', '6', '1', '0', '1437984006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9242', '1', '14', '1', '0', '1437984006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9243', '1', '15', '1', '0', '1437984006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9244', '1', '16', '1', '0', '1437984006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9245', '1', '7', '1', '0', '1437984006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9246', '1', '8', '1', '0', '1437984006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9247', '1', '7', '0', '1', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9248', '1', '6', '1', '0', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9249', '1', '14', '1', '0', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9250', '1', '15', '1', '0', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9251', '1', '16', '1', '0', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9252', '1', '7', '1', '0', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9253', '1', '8', '1', '0', '1437984027', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9254', '26', '6', '1', '0', '1437984029', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9255', '26', '14', '1', '0', '1437984029', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9256', '26', '15', '1', '0', '1437984029', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9257', '26', '16', '1', '0', '1437984029', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9258', '26', '7', '1', '0', '1437984029', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9259', '26', '8', '1', '0', '1437984029', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9260', '1', '6', '1', '0', '1437984085', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9261', '1', '14', '1', '0', '1437984085', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9262', '1', '15', '1', '0', '1437984085', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9263', '1', '16', '1', '0', '1437984085', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9264', '1', '7', '1', '0', '1437984085', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9265', '1', '8', '1', '0', '1437984085', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9266', '1', '6', '1', '0', '1437984126', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9267', '1', '14', '1', '0', '1437984126', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9268', '1', '15', '1', '0', '1437984126', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9269', '1', '16', '1', '0', '1437984126', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9270', '1', '7', '1', '0', '1437984126', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9271', '1', '8', '1', '0', '1437984126', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9272', '1', '6', '1', '0', '1437984172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9273', '1', '14', '1', '0', '1437984172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9274', '1', '15', '1', '0', '1437984172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9275', '1', '16', '1', '0', '1437984172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9276', '1', '7', '1', '0', '1437984172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9277', '1', '8', '1', '0', '1437984172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9278', '1', '6', '1', '0', '1437984208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9279', '1', '14', '1', '0', '1437984208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9280', '1', '15', '1', '0', '1437984208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9281', '1', '16', '1', '0', '1437984208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9282', '1', '7', '1', '0', '1437984208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9283', '1', '8', '1', '0', '1437984208', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9284', '1', '6', '1', '0', '1437984314', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9285', '1', '14', '1', '0', '1437984314', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9286', '1', '15', '1', '0', '1437984314', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9287', '1', '16', '1', '0', '1437984314', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9288', '1', '7', '1', '0', '1437984314', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9289', '1', '8', '1', '0', '1437984314', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9290', '1', '6', '1', '0', '1437984318', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9291', '1', '14', '1', '0', '1437984318', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9292', '1', '15', '1', '0', '1437984318', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9293', '1', '16', '1', '0', '1437984318', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9294', '1', '7', '1', '0', '1437984318', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9295', '1', '8', '1', '0', '1437984318', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9296', '1', '6', '1', '0', '1437984322', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9297', '1', '14', '1', '0', '1437984322', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9298', '1', '15', '1', '0', '1437984322', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9299', '1', '16', '1', '0', '1437984322', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9300', '1', '7', '1', '0', '1437984322', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9301', '1', '8', '1', '0', '1437984322', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9302', '1', '6', '0', '1', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9303', '1', '6', '1', '0', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9304', '1', '14', '1', '0', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9305', '1', '15', '1', '0', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9306', '1', '16', '1', '0', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9307', '1', '7', '1', '0', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9308', '1', '8', '1', '0', '1437984345', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9309', '26', '6', '1', '0', '1437984366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9310', '26', '14', '1', '0', '1437984366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9311', '26', '15', '1', '0', '1437984366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9312', '26', '16', '1', '0', '1437984366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9313', '26', '7', '1', '0', '1437984366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9314', '26', '8', '1', '0', '1437984366', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9315', '1', '6', '1', '0', '1437984368', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9316', '1', '14', '1', '0', '1437984368', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9317', '1', '15', '1', '0', '1437984368', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9318', '1', '16', '1', '0', '1437984368', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9319', '1', '7', '1', '0', '1437984368', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9320', '1', '8', '1', '0', '1437984368', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9321', '1', '6', '1', '0', '1437984499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9322', '1', '14', '1', '0', '1437984499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9323', '1', '15', '1', '0', '1437984499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9324', '1', '16', '1', '0', '1437984499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9325', '1', '7', '1', '0', '1437984499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9326', '1', '8', '1', '0', '1437984499', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9327', '1', '6', '1', '0', '1437984525', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9328', '1', '14', '1', '0', '1437984525', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9329', '1', '15', '1', '0', '1437984525', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9330', '1', '16', '1', '0', '1437984525', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9331', '1', '7', '1', '0', '1437984525', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9332', '1', '8', '1', '0', '1437984525', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9333', '1', '6', '1', '0', '1437984613', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9334', '1', '14', '1', '0', '1437984613', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9335', '1', '15', '1', '0', '1437984613', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9336', '1', '16', '1', '0', '1437984613', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9337', '1', '7', '1', '0', '1437984613', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9338', '1', '8', '1', '0', '1437984613', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9339', '1', '6', '1', '0', '1437984629', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9340', '1', '14', '1', '0', '1437984629', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9341', '1', '15', '1', '0', '1437984629', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9342', '1', '16', '1', '0', '1437984629', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9343', '1', '7', '1', '0', '1437984629', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9344', '1', '8', '1', '0', '1437984629', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9345', '1', '6', '1', '0', '1437984652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9346', '1', '14', '1', '0', '1437984652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9347', '1', '15', '1', '0', '1437984652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9348', '1', '16', '1', '0', '1437984652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9349', '1', '7', '1', '0', '1437984652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9350', '1', '8', '1', '0', '1437984652', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9351', '1', '6', '1', '0', '1437984656', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9352', '1', '14', '1', '0', '1437984656', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9353', '1', '15', '1', '0', '1437984656', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9354', '1', '16', '1', '0', '1437984656', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9355', '1', '7', '1', '0', '1437984656', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9356', '1', '8', '1', '0', '1437984656', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9357', '1', '6', '1', '0', '1437984679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9358', '1', '14', '1', '0', '1437984679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9359', '1', '15', '1', '0', '1437984679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9360', '1', '16', '1', '0', '1437984679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9361', '1', '7', '1', '0', '1437984679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9362', '1', '8', '1', '0', '1437984679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9363', '26', '6', '1', '0', '1437984771', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9364', '26', '14', '1', '0', '1437984771', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9365', '26', '15', '1', '0', '1437984771', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9366', '26', '16', '1', '0', '1437984771', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9367', '26', '7', '1', '0', '1437984771', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9368', '26', '8', '1', '0', '1437984771', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9369', '1', '6', '1', '0', '1437984836', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9370', '1', '14', '1', '0', '1437984836', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9371', '1', '15', '1', '0', '1437984836', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9372', '1', '16', '1', '0', '1437984836', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9373', '1', '7', '1', '0', '1437984836', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9374', '1', '8', '1', '0', '1437984836', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9375', '1', '6', '1', '0', '1437984864', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9376', '1', '14', '1', '0', '1437984864', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9377', '1', '15', '1', '0', '1437984864', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9378', '1', '16', '1', '0', '1437984864', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9379', '1', '7', '1', '0', '1437984864', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9380', '1', '8', '1', '0', '1437984864', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9381', '1', '6', '1', '0', '1437984880', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9382', '1', '14', '1', '0', '1437984880', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9383', '1', '15', '1', '0', '1437984880', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9384', '1', '16', '1', '0', '1437984880', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9385', '1', '7', '1', '0', '1437984880', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9386', '1', '8', '1', '0', '1437984880', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9387', '1', '6', '1', '0', '1437984919', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9388', '1', '14', '1', '0', '1437984919', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9389', '1', '15', '1', '0', '1437984919', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9390', '1', '16', '1', '0', '1437984919', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9391', '1', '7', '1', '0', '1437984919', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9392', '1', '8', '1', '0', '1437984919', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9393', '1', '6', '1', '0', '1437984927', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9394', '1', '14', '1', '0', '1437984927', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9395', '1', '15', '1', '0', '1437984927', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9396', '1', '16', '1', '0', '1437984927', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9397', '1', '7', '1', '0', '1437984927', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9398', '1', '8', '1', '0', '1437984927', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9399', '1', '6', '1', '0', '1437984933', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9400', '1', '14', '1', '0', '1437984933', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9401', '1', '15', '1', '0', '1437984933', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9402', '1', '16', '1', '0', '1437984933', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9403', '1', '7', '1', '0', '1437984933', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9404', '1', '8', '1', '0', '1437984933', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9405', '1', '6', '1', '0', '1437984939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9406', '1', '14', '1', '0', '1437984939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9407', '1', '15', '1', '0', '1437984939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9408', '1', '16', '1', '0', '1437984939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9409', '1', '7', '1', '0', '1437984939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9410', '1', '8', '1', '0', '1437984939', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9411', '1', '6', '1', '0', '1437984951', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9412', '1', '14', '1', '0', '1437984951', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9413', '1', '15', '1', '0', '1437984951', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9414', '1', '16', '1', '0', '1437984951', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9415', '1', '7', '1', '0', '1437984951', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9416', '1', '8', '1', '0', '1437984951', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9417', '1', '6', '1', '0', '1437984962', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9418', '1', '14', '1', '0', '1437984962', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9419', '1', '15', '1', '0', '1437984962', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9420', '1', '16', '1', '0', '1437984962', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9421', '1', '7', '1', '0', '1437984962', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9422', '1', '8', '1', '0', '1437984962', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9423', '1', '6', '1', '0', '1437984965', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9424', '1', '14', '1', '0', '1437984965', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9425', '1', '15', '1', '0', '1437984965', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9426', '1', '16', '1', '0', '1437984965', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9427', '1', '7', '1', '0', '1437984965', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9428', '1', '8', '1', '0', '1437984965', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9429', '1', '6', '1', '0', '1437984983', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9430', '1', '14', '1', '0', '1437984983', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9431', '1', '15', '1', '0', '1437984983', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9432', '1', '16', '1', '0', '1437984983', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9433', '1', '7', '1', '0', '1437984983', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9434', '1', '8', '1', '0', '1437984983', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9435', '1', '6', '1', '0', '1437985026', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9436', '1', '14', '1', '0', '1437985026', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9437', '1', '15', '1', '0', '1437985026', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9438', '1', '16', '1', '0', '1437985026', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9439', '1', '7', '1', '0', '1437985026', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9440', '1', '8', '1', '0', '1437985026', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9441', '1', '6', '1', '0', '1437985089', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9442', '1', '14', '1', '0', '1437985089', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9443', '1', '15', '1', '0', '1437985089', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9444', '1', '16', '1', '0', '1437985089', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9445', '1', '7', '1', '0', '1437985089', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9446', '1', '8', '1', '0', '1437985089', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9447', '1', '6', '1', '0', '1437985106', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9448', '1', '14', '1', '0', '1437985106', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9449', '1', '15', '1', '0', '1437985106', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9450', '1', '16', '1', '0', '1437985106', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9451', '1', '7', '1', '0', '1437985106', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9452', '1', '8', '1', '0', '1437985106', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9453', '1', '6', '1', '0', '1437985109', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9454', '1', '14', '1', '0', '1437985109', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9455', '1', '15', '1', '0', '1437985109', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9456', '1', '16', '1', '0', '1437985109', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9457', '1', '7', '1', '0', '1437985109', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9458', '1', '8', '1', '0', '1437985109', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9459', '1', '6', '1', '0', '1437985119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9460', '1', '14', '1', '0', '1437985119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9461', '1', '15', '1', '0', '1437985119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9462', '1', '16', '1', '0', '1437985119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9463', '1', '7', '1', '0', '1437985119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9464', '1', '8', '1', '0', '1437985119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9465', '1', '6', '1', '0', '1437985146', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9466', '1', '14', '1', '0', '1437985146', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9467', '1', '15', '1', '0', '1437985146', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9468', '1', '16', '1', '0', '1437985146', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9469', '1', '7', '1', '0', '1437985146', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9470', '1', '8', '1', '0', '1437985146', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9471', '1', '6', '1', '0', '1437985151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9472', '1', '14', '1', '0', '1437985151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9473', '1', '15', '1', '0', '1437985151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9474', '1', '16', '1', '0', '1437985151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9475', '1', '7', '1', '0', '1437985151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9476', '1', '8', '1', '0', '1437985151', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9477', '1', '6', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9478', '1', '14', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9479', '1', '15', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9480', '1', '16', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9481', '1', '7', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9482', '1', '8', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9483', '1', '6', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9484', '1', '14', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9485', '1', '15', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9486', '1', '16', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9487', '1', '7', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9488', '1', '8', '1', '0', '1437985153', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9489', '1', '6', '1', '0', '1437985165', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9490', '1', '14', '1', '0', '1437985165', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9491', '1', '15', '1', '0', '1437985165', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9492', '1', '16', '1', '0', '1437985165', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9493', '1', '7', '1', '0', '1437985165', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9494', '1', '8', '1', '0', '1437985165', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9495', '1', '6', '1', '0', '1437985172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9496', '1', '14', '1', '0', '1437985172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9497', '1', '15', '1', '0', '1437985172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9498', '1', '16', '1', '0', '1437985172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9499', '1', '7', '1', '0', '1437985172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9500', '1', '8', '1', '0', '1437985172', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9501', '1', '6', '1', '0', '1437985176', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9502', '1', '14', '1', '0', '1437985176', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9503', '1', '15', '1', '0', '1437985176', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9504', '1', '16', '1', '0', '1437985176', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9505', '1', '7', '1', '0', '1437985176', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9506', '1', '8', '1', '0', '1437985176', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9507', '1', '6', '1', '0', '1437985181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9508', '1', '14', '1', '0', '1437985181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9509', '1', '15', '1', '0', '1437985181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9510', '1', '16', '1', '0', '1437985181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9511', '1', '7', '1', '0', '1437985181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9512', '1', '8', '1', '0', '1437985181', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9513', '1', '6', '1', '0', '1437985192', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9514', '1', '14', '1', '0', '1437985192', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9515', '1', '15', '1', '0', '1437985192', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9516', '1', '16', '1', '0', '1437985192', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9517', '1', '7', '1', '0', '1437985192', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9518', '1', '8', '1', '0', '1437985192', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9519', '1', '6', '1', '0', '1437985201', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9520', '1', '14', '1', '0', '1437985201', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9521', '1', '15', '1', '0', '1437985201', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9522', '1', '16', '1', '0', '1437985201', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9523', '1', '7', '1', '0', '1437985201', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9524', '1', '8', '1', '0', '1437985201', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9525', '1', '6', '1', '0', '1437985207', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9526', '1', '14', '1', '0', '1437985207', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9527', '1', '15', '1', '0', '1437985207', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9528', '1', '16', '1', '0', '1437985207', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9529', '1', '7', '1', '0', '1437985207', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9530', '1', '8', '1', '0', '1437985207', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9531', '1', '21', '1', '0', '1437985235', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9532', '1', '1', '1', '0', '1437985235', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9533', '1', '13', '1', '0', '1437985235', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9534', '1', null, '1', '0', '1437985235', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9535', '1', '6', '1', '0', '1437986777', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9536', '1', '14', '1', '0', '1437986777', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9537', '1', '15', '1', '0', '1437986777', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9538', '1', '16', '1', '0', '1437986777', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9539', '1', '7', '1', '0', '1437986777', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9540', '1', '8', '1', '0', '1437986777', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9541', '1', '21', '1', '0', '1437986795', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9542', '1', '1', '1', '0', '1437986795', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9543', '1', '20', '1', '0', '1437986795', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9544', '1', null, '1', '0', '1437986795', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9545', '1', '1', '1', '0', '1437986914', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9546', '1', '13', '1', '0', '1437986914', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9547', '1', '21', '1', '0', '1437986914', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9548', '1', null, '1', '0', '1437986914', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9549', '1', '20', '1', '0', '1437986917', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9550', '1', '21', '1', '0', '1437986917', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9551', '1', '1', '1', '0', '1437986917', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9552', '1', null, '1', '0', '1437986917', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9553', '1', '13', '1', '0', '1437986918', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9554', '1', '20', '1', '0', '1437986918', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9555', '1', '1', '1', '0', '1437986918', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9556', '1', null, '1', '0', '1437986918', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9557', '1', '13', '1', '0', '1437986920', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9558', '1', '21', '1', '0', '1437986920', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9559', '1', '1', '1', '0', '1437986920', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9560', '1', null, '1', '0', '1437986920', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9561', '1', '20', '1', '0', '1437987039', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9562', '1', '21', '1', '0', '1437987039', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9563', '1', '1', '1', '0', '1437987039', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9564', '1', null, '1', '0', '1437987039', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9565', '1', '13', '1', '0', '1437987077', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9566', '1', '1', '1', '0', '1437987077', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9567', '1', '20', '1', '0', '1437987077', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9568', '1', null, '1', '0', '1437987077', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9569', '1', '1', '1', '0', '1437987087', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9570', '1', '20', '1', '0', '1437987087', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9571', '1', '13', '1', '0', '1437987087', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9572', '1', null, '1', '0', '1437987087', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9573', '1', '21', '1', '0', '1437987112', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9574', '1', '1', '1', '0', '1437987112', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9575', '1', '20', '1', '0', '1437987112', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9576', '1', null, '1', '0', '1437987112', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9577', '1', '21', '1', '0', '1437987211', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9578', '1', '1', '1', '0', '1437987211', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9579', '1', '20', '1', '0', '1437987211', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9580', '1', null, '1', '0', '1437987211', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9581', '1', '20', '1', '0', '1437987215', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9582', '1', '1', '1', '0', '1437987215', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9583', '1', '21', '1', '0', '1437987215', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9584', '1', null, '1', '0', '1437987215', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9585', '1', '1', '1', '0', '1437987228', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9586', '1', '13', '1', '0', '1437987228', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9587', '1', '20', '1', '0', '1437987228', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9588', '1', null, '1', '0', '1437987228', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9589', '1', '21', '1', '0', '1437987231', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9590', '1', '1', '1', '0', '1437987231', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9591', '1', '13', '1', '0', '1437987231', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9592', '1', null, '1', '0', '1437987231', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9593', '1', '1', '1', '0', '1437987237', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9594', '1', '21', '1', '0', '1437987237', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9595', '1', '20', '1', '0', '1437987237', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9596', '1', null, '1', '0', '1437987237', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9597', '1', '13', '1', '0', '1437987249', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9598', '1', '1', '1', '0', '1437987249', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9599', '1', '20', '1', '0', '1437987249', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9600', '1', null, '1', '0', '1437987249', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9601', '1', '21', '1', '0', '1437987260', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9602', '1', '20', '1', '0', '1437987260', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9603', '1', '1', '1', '0', '1437987260', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9604', '1', null, '1', '0', '1437987260', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9605', '1', '21', '1', '0', '1437987329', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9606', '1', '13', '1', '0', '1437987329', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9607', '1', '1', '1', '0', '1437987329', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9608', '1', null, '1', '0', '1437987329', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9609', '1', '1', '1', '0', '1437987338', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9610', '1', '21', '1', '0', '1437987338', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9611', '1', '20', '1', '0', '1437987338', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9612', '1', null, '1', '0', '1437987338', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9613', '26', '6', '1', '0', '1437988478', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9614', '26', '14', '1', '0', '1437988478', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9615', '26', '15', '1', '0', '1437988478', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9616', '26', '16', '1', '0', '1437988478', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9617', '26', '7', '1', '0', '1437988478', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9618', '26', '8', '1', '0', '1437988478', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9619', '1', '6', '1', '0', '1437988701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9620', '1', '14', '1', '0', '1437988701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9621', '1', '15', '1', '0', '1437988701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9622', '1', '16', '1', '0', '1437988701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9623', '1', '7', '1', '0', '1437988701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9624', '1', '8', '1', '0', '1437988701', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9625', '1', '6', '1', '0', '1437988719', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9626', '1', '14', '1', '0', '1437988719', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9627', '1', '15', '1', '0', '1437988719', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9628', '1', '16', '1', '0', '1437988719', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9629', '1', '7', '1', '0', '1437988719', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9630', '1', '8', '1', '0', '1437988719', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9631', '1', '6', '1', '0', '1437988729', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9632', '1', '14', '1', '0', '1437988729', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9633', '1', '15', '1', '0', '1437988729', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9634', '1', '16', '1', '0', '1437988729', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9635', '1', '7', '1', '0', '1437988729', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9636', '1', '8', '1', '0', '1437988729', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9637', '1', '1', '1', '0', '1437988744', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9638', '1', '21', '1', '0', '1437988744', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9639', '1', '20', '1', '0', '1437988744', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9640', '1', null, '1', '0', '1437988744', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9641', '1', '13', '1', '0', '1437988746', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9642', '1', '1', '1', '0', '1437988746', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9643', '1', '20', '1', '0', '1437988746', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9644', '1', null, '1', '0', '1437988746', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9645', '1', '1', '1', '0', '1437988763', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9646', '1', '20', '1', '0', '1437988763', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9647', '1', '21', '1', '0', '1437988763', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9648', '1', null, '1', '0', '1437988763', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9649', '26', '6', '1', '0', '1437988784', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9650', '26', '14', '1', '0', '1437988784', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9651', '26', '15', '1', '0', '1437988784', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9652', '26', '16', '1', '0', '1437988784', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9653', '26', '7', '1', '0', '1437988784', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9654', '26', '8', '1', '0', '1437988784', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9655', '1', '6', '1', '0', '1437988787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9656', '1', '14', '1', '0', '1437988787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9657', '1', '15', '1', '0', '1437988787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9658', '1', '16', '1', '0', '1437988787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9659', '1', '7', '1', '0', '1437988787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9660', '1', '8', '1', '0', '1437988787', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9661', '1', '6', '1', '0', '1437988814', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9662', '1', '14', '1', '0', '1437988814', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9663', '1', '15', '1', '0', '1437988814', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9664', '1', '16', '1', '0', '1437988814', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9665', '1', '7', '1', '0', '1437988814', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9666', '1', '8', '1', '0', '1437988814', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9667', '1', '6', '1', '0', '1437988861', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9668', '1', '14', '1', '0', '1437988861', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9669', '1', '15', '1', '0', '1437988861', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9670', '1', '16', '1', '0', '1437988861', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9671', '1', '7', '1', '0', '1437988861', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9672', '1', '8', '1', '0', '1437988861', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9673', '1', '6', '1', '0', '1437988953', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9674', '1', '14', '1', '0', '1437988953', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9675', '1', '15', '1', '0', '1437988953', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9676', '1', '16', '1', '0', '1437988953', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9677', '1', '7', '1', '0', '1437988953', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9678', '1', '8', '1', '0', '1437988953', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9679', '1', '6', '1', '0', '1437989006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9680', '1', '14', '1', '0', '1437989006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9681', '1', '15', '1', '0', '1437989006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9682', '1', '16', '1', '0', '1437989006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9683', '1', '7', '1', '0', '1437989006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9684', '1', '8', '1', '0', '1437989006', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9685', '1', '6', '1', '0', '1437989018', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9686', '1', '14', '1', '0', '1437989018', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9687', '1', '15', '1', '0', '1437989018', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9688', '1', '16', '1', '0', '1437989018', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9689', '1', '7', '1', '0', '1437989018', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9690', '1', '8', '1', '0', '1437989018', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9691', '1', '6', '1', '0', '1437989034', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9692', '1', '14', '1', '0', '1437989034', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9693', '1', '15', '1', '0', '1437989034', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9694', '1', '16', '1', '0', '1437989034', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9695', '1', '7', '1', '0', '1437989034', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9696', '1', '8', '1', '0', '1437989034', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9697', '1', '6', '1', '0', '1437989070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9698', '1', '14', '1', '0', '1437989070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9699', '1', '15', '1', '0', '1437989070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9700', '1', '16', '1', '0', '1437989070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9701', '1', '7', '1', '0', '1437989070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9702', '1', '8', '1', '0', '1437989070', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9703', '1', '6', '1', '0', '1437989084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9704', '1', '14', '1', '0', '1437989084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9705', '1', '15', '1', '0', '1437989084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9706', '1', '16', '1', '0', '1437989084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9707', '1', '7', '1', '0', '1437989084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9708', '1', '8', '1', '0', '1437989084', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9709', '1', '6', '1', '0', '1437989091', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9710', '1', '14', '1', '0', '1437989091', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9711', '1', '15', '1', '0', '1437989091', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9712', '1', '16', '1', '0', '1437989091', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9713', '1', '7', '1', '0', '1437989091', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9714', '1', '8', '1', '0', '1437989091', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9715', '1', '6', '1', '0', '1437989097', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9716', '1', '14', '1', '0', '1437989097', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9717', '1', '15', '1', '0', '1437989097', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9718', '1', '16', '1', '0', '1437989097', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9719', '1', '7', '1', '0', '1437989097', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9720', '1', '8', '1', '0', '1437989097', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9721', '1', '6', '1', '0', '1437989111', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9722', '1', '14', '1', '0', '1437989111', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9723', '1', '15', '1', '0', '1437989111', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9724', '1', '16', '1', '0', '1437989111', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9725', '1', '7', '1', '0', '1437989111', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9726', '1', '8', '1', '0', '1437989111', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9727', '1', '6', '1', '0', '1437989118', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9728', '1', '14', '1', '0', '1437989118', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9729', '1', '15', '1', '0', '1437989118', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9730', '1', '16', '1', '0', '1437989118', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9731', '1', '7', '1', '0', '1437989118', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9732', '1', '8', '1', '0', '1437989118', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9733', '1', '6', '1', '0', '1437989257', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9734', '1', '7', '1', '0', '1437989257', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9735', '1', '6', '1', '0', '1437989325', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9736', '1', '7', '1', '0', '1437989325', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9737', '1', '6', '1', '0', '1437989338', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9738', '1', '7', '1', '0', '1437989338', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9739', '1', '6', '1', '0', '1437989340', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9740', '1', '7', '1', '0', '1437989340', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9741', '1', '6', '1', '0', '1437989381', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9742', '1', '7', '1', '0', '1437989381', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9743', '1', '6', '1', '0', '1437989388', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9744', '1', '7', '1', '0', '1437989388', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9745', '1', '6', '1', '0', '1437989395', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9746', '1', '7', '1', '0', '1437989395', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9747', '1', '6', '1', '0', '1437989407', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9748', '1', '7', '1', '0', '1437989407', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9749', '1', '6', '1', '0', '1437989410', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9750', '1', '7', '1', '0', '1437989410', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9751', '1', '6', '1', '0', '1437989411', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9752', '1', '7', '1', '0', '1437989411', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9753', '1', '6', '1', '0', '1437989451', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9754', '1', '7', '1', '0', '1437989451', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9755', '1', '6', '1', '0', '1437989457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9756', '1', '7', '1', '0', '1437989457', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9757', '1', '6', '1', '0', '1437989464', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9758', '1', '7', '1', '0', '1437989464', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9759', '1', '6', '1', '0', '1437989479', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9760', '1', '7', '1', '0', '1437989479', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9761', '1', '6', '1', '0', '1437989481', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9762', '1', '7', '1', '0', '1437989481', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9763', '1', '6', '1', '0', '1437989497', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9764', '1', '7', '1', '0', '1437989497', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9765', '1', '6', '1', '0', '1437989503', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9766', '1', '7', '1', '0', '1437989503', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9767', '1', '6', '1', '0', '1437989519', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9768', '1', '7', '1', '0', '1437989519', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9769', '1', '7', '0', '1', '1437989529', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9770', '1', '6', '1', '0', '1437989529', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9771', '1', '7', '1', '0', '1437989529', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9772', '26', '6', '1', '0', '1437989542', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9773', '26', '7', '1', '0', '1437989542', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9774', '1', '6', '1', '0', '1437989544', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9775', '1', '7', '1', '0', '1437989544', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9776', '1', '6', '1', '0', '1437989546', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9777', '1', '7', '1', '0', '1437989546', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9778', '1', '6', '1', '0', '1437989564', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9779', '1', '7', '1', '0', '1437989564', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9780', '1', '6', '1', '0', '1437989566', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9781', '1', '7', '1', '0', '1437989566', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9782', '26', '6', '1', '0', '1437989580', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9783', '26', '7', '1', '0', '1437989580', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9784', '1', '6', '1', '0', '1437989594', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9785', '1', '7', '1', '0', '1437989594', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9786', '1', '6', '1', '0', '1437989597', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9787', '1', '7', '1', '0', '1437989597', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9788', '1', '6', '1', '0', '1437989599', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9789', '1', '7', '1', '0', '1437989599', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9790', '1', '6', '1', '0', '1437989626', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9791', '1', '7', '1', '0', '1437989626', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9792', '1', '6', '1', '0', '1437989642', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9793', '1', '7', '1', '0', '1437989642', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9794', '1', '6', '1', '0', '1437989679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9795', '1', '7', '1', '0', '1437989679', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9796', '1', '6', '1', '0', '1437989686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9797', '1', '7', '1', '0', '1437989686', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9798', '1', '6', '1', '0', '1437989688', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9799', '1', '7', '1', '0', '1437989688', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9800', '1', '21', '1', '0', '1437989729', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9801', '1', '13', '1', '0', '1437989729', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9802', '1', '1', '1', '0', '1437989729', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9803', '1', null, '1', '0', '1437989729', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9804', '26', '6', '1', '0', '1437989760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9805', '26', '7', '1', '0', '1437989760', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9806', '1', '1', '1', '0', '1437989768', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9807', '1', '13', '1', '0', '1437989768', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9808', '1', '21', '1', '0', '1437989768', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9809', '1', null, '1', '0', '1437989768', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9810', '1', '6', '1', '0', '1437989791', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9811', '1', '7', '1', '0', '1437989791', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9812', '1', '13', '1', '0', '1437989805', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9813', '1', '20', '1', '0', '1437989805', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9814', '1', '1', '1', '0', '1437989805', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9815', '1', null, '1', '0', '1437989805', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9816', '1', '13', '1', '0', '1437989806', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9817', '1', '20', '1', '0', '1437989806', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9818', '1', '1', '1', '0', '1437989806', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9819', '1', null, '1', '0', '1437989806', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9820', '1', '20', '1', '0', '1437989807', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9821', '1', '21', '1', '0', '1437989807', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9822', '1', '1', '1', '0', '1437989807', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9823', '1', null, '1', '0', '1437989807', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9824', '1', '21', '1', '0', '1437989813', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9825', '1', '13', '1', '0', '1437989813', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9826', '1', '1', '1', '0', '1437989813', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9827', '1', null, '1', '0', '1437989813', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9828', '1', '13', '1', '0', '1437989862', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9829', '1', '1', '1', '0', '1437989862', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9830', '1', '21', '1', '0', '1437989862', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9831', '1', null, '1', '0', '1437989862', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9832', '1', '20', '1', '0', '1437989887', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9833', '1', '1', '1', '0', '1437989887', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9834', '1', '21', '1', '0', '1437989887', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9835', '1', null, '1', '0', '1437989887', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9836', '1', '6', '1', '0', '1437990119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9837', '1', '7', '1', '0', '1437990119', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9838', '1', '6', '1', '0', '1437990231', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9839', '1', '7', '1', '0', '1437990231', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9840', '1', '6', '1', '0', '1437990274', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9841', '1', '7', '1', '0', '1437990274', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9842', '1', '21', '1', '0', '1437990315', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9843', '1', '1', '1', '0', '1437990315', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9844', '1', '20', '1', '0', '1437990315', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9845', '1', null, '1', '0', '1437990315', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9846', '1', '6', '1', '0', '1437991565', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9847', '1', '7', '1', '0', '1437991565', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9848', '1', '6', '1', '0', '1437991567', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9849', '1', '7', '1', '0', '1437991567', '2015-07-27', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9850', '1', '1', '1', '0', '1437991577', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9851', '1', '20', '1', '0', '1437991577', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9852', '1', '21', '1', '0', '1437991577', '2015-07-27', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9853', '1', null, '1', '0', '1437991577', '2015-07-27', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9854', '1', '6', '1', '0', '1438043326', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9855', '1', '7', '1', '0', '1438043326', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9856', '1', '20', '1', '0', '1438043398', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9857', '1', '1', '1', '0', '1438043398', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9858', '1', '21', '1', '0', '1438043398', '2015-07-28', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9859', '1', null, '1', '0', '1438043398', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9860', '1', '6', '1', '0', '1438053631', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9861', '1', '7', '1', '0', '1438053631', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9862', '1', '6', '1', '0', '1438053637', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9863', '1', '7', '1', '0', '1438053637', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9864', '1', '21', '1', '0', '1438053689', '2015-07-28', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9865', '1', '1', '1', '0', '1438053689', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9866', '1', '13', '1', '0', '1438053689', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9867', '1', null, '1', '0', '1438053689', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9868', '1', '6', '1', '0', '1438064526', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9869', '1', '7', '1', '0', '1438064526', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9870', '1', '13', '1', '0', '1438064565', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9871', '1', '20', '1', '0', '1438064565', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9872', '1', '1', '1', '0', '1438064565', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9873', '1', null, '1', '0', '1438064565', '2015-07-28', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9874', '1', '6', '1', '0', '1438076942', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9875', '1', '7', '1', '0', '1438076942', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9876', '1', '6', '1', '0', '1438082531', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9877', '1', '7', '1', '0', '1438082531', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9878', '1', '6', '1', '0', '1438086092', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9879', '1', '7', '1', '0', '1438086092', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9880', '1', '6', '1', '0', '1438086092', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9881', '1', '7', '1', '0', '1438086092', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9882', '1', '1', '1', '0', '1438090983', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9883', '1', '20', '1', '0', '1438090983', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9884', '1', '21', '1', '0', '1438090983', '2015-07-28', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9885', '1', null, '1', '0', '1438090983', '2015-07-28', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9886', '1', '6', '1', '0', '1438090995', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9887', '1', '7', '1', '0', '1438090995', '2015-07-28', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9888', '1', '6', '1', '0', '1438109131', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9889', '1', '7', '1', '0', '1438109131', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9890', '1', '6', '1', '0', '1438128558', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9891', '1', '7', '1', '0', '1438128558', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9892', '1', '21', '1', '0', '1438130930', '2015-07-29', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9893', '1', '1', '1', '0', '1438130930', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9894', '1', '13', '1', '0', '1438130930', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9895', '1', null, '1', '0', '1438130930', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9896', '1', '6', '1', '0', '1438142689', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9897', '1', '7', '1', '0', '1438142689', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9898', '1', '6', '1', '0', '1438148409', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9899', '1', '7', '1', '0', '1438148409', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9900', '1', '6', '1', '0', '1438148461', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9901', '1', '7', '1', '0', '1438148461', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9902', '1', '6', '1', '0', '1438148574', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9903', '1', '7', '1', '0', '1438148574', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9904', '1', '6', '1', '0', '1438148695', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9905', '1', '7', '1', '0', '1438148695', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9906', '1', '13', '1', '0', '1438148747', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9907', '1', '1', '1', '0', '1438148747', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9908', '1', '21', '1', '0', '1438148747', '2015-07-29', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9909', '1', null, '1', '0', '1438148747', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9910', '1', '6', '1', '0', '1438153096', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9911', '1', '7', '1', '0', '1438153096', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9912', '1', '6', '1', '0', '1438153097', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9913', '1', '7', '1', '0', '1438153097', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9914', '1', '6', '1', '0', '1438156714', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9915', '1', '7', '1', '0', '1438156714', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9916', '1', '6', '1', '0', '1438156795', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9917', '1', '7', '1', '0', '1438156795', '2015-07-29', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9918', '1', '21', '1', '0', '1438156806', '2015-07-29', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9919', '1', '20', '1', '0', '1438156806', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9920', '1', '1', '1', '0', '1438156806', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9921', '1', null, '1', '0', '1438156806', '2015-07-29', '50', '1', null, null);
INSERT INTO `wifi_adcount` VALUES ('9922', '1', '6', '1', '0', '1438215752', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9923', '1', '17', '1', '0', '1438215752', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9924', '1', '7', '1', '0', '1438215752', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9925', '1', '18', '1', '0', '1438215752', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9926', '1', '6', '1', '0', '1438254213', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9927', '1', '17', '1', '0', '1438254213', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9928', '1', '7', '1', '0', '1438254213', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9929', '1', '18', '1', '0', '1438254213', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9930', '1', '6', '1', '0', '1438254327', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9931', '1', '17', '1', '0', '1438254327', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9932', '1', '7', '1', '0', '1438254327', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9933', '1', '18', '1', '0', '1438254327', '2015-07-30', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9934', null, null, '1', '0', '1438574273', '2015-08-03', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9935', '11', '19', '1', '0', '1438678799', '2015-08-04', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9936', '11', null, '1', '0', '1438678823', '2015-08-04', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9937', '11', '19', '1', '0', '1438678929', '2015-08-04', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9938', '11', '19', '1', '0', '1438678945', '2015-08-04', '1', null, null, null);
INSERT INTO `wifi_adcount` VALUES ('9939', '11', null, '1', '0', '1438678964', '2015-08-04', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9940', '11', null, '1', '0', '1438679038', '2015-08-04', '99', '0', null, null);
INSERT INTO `wifi_adcount` VALUES ('9941', '11', '19', '1', '0', '1438679258', '2015-08-04', '1', null, null, null);

-- ----------------------------
-- Table structure for `wifi_admin`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_admin`;
CREATE TABLE `wifi_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1 正常',
  `last_loginip` varchar(255) DEFAULT NULL,
  `last_logintime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_admin
-- ----------------------------
INSERT INTO `wifi_admin` VALUES ('1', 'admin', '6576e9ce1cb192851896510ab8479a70', '0', null, '1389750196', '1409202810', '1', '182.121.115.202', '1438680062');

-- ----------------------------
-- Table structure for `wifi_agent`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_agent`;
CREATE TABLE `wifi_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `linker` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `info` text,
  `money` decimal(11,2) DEFAULT '0.00' COMMENT '金额',
  `fee` decimal(11,2) DEFAULT '0.00' COMMENT '代理费',
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `point_x` varchar(255) DEFAULT NULL,
  `point_y` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1：启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_agent
-- ----------------------------
INSERT INTO `wifi_agent` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '张先生', '18633021234', '高级代理', null, '18000.00', '20000.00', '1', '北京市', '市辖区', '东城区', '', null, null, '1409139480', '1409139480', '1');

-- ----------------------------
-- Table structure for `wifi_agentlevel`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_agentlevel`;
CREATE TABLE `wifi_agentlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `openpay` decimal(10,2) DEFAULT '0.00' COMMENT '开户金额',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_agentlevel
-- ----------------------------
INSERT INTO `wifi_agentlevel` VALUES ('1', '一', '', '500.00', '1409139431', '1409139431', '1');
INSERT INTO `wifi_agentlevel` VALUES ('2', '地市', '', '1.00', '1437447518', '1437447518', '1');
INSERT INTO `wifi_agentlevel` VALUES ('3', '区', '', '1.00', '1437447548', '1437447548', '1');

-- ----------------------------
-- Table structure for `wifi_agentpay`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_agentpay`;
CREATE TABLE `wifi_agentpay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL COMMENT '代理商ID',
  `do` tinyint(4) DEFAULT NULL COMMENT '模式 0 扣款 1 充值',
  `oldmoney` decimal(10,0) DEFAULT NULL COMMENT '原金额',
  `nowmoney` decimal(10,0) DEFAULT NULL COMMENT '当前金额',
  `paymoney` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_agentpay
-- ----------------------------
INSERT INTO `wifi_agentpay` VALUES ('1', '1', '1', null, null, '20000', '1111', '1409139565', '1409139565');
INSERT INTO `wifi_agentpay` VALUES ('2', '1', '0', '20000', '19500', '500', '商户开户扣款', '1409721341', '1409721341');
INSERT INTO `wifi_agentpay` VALUES ('3', '1', '0', '19500', '19000', '500', '商户开户扣款', '1409801953', '1409801953');
INSERT INTO `wifi_agentpay` VALUES ('4', '1', '0', '19000', '18500', '500', '商户开户扣款', '1410880666', '1410880666');
INSERT INTO `wifi_agentpay` VALUES ('5', '1', '0', '18500', '18000', '500', '商户开户扣款', '1412665504', '1412665504');
INSERT INTO `wifi_agentpay` VALUES ('6', '2', '1', null, null, '1000', '1', '1413248689', '1413248689');
INSERT INTO `wifi_agentpay` VALUES ('7', '2', '0', '1000', '500', '500', '商户开户扣款', '1413248692', '1413248692');

-- ----------------------------
-- Table structure for `wifi_agentpushset`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_agentpushset`;
CREATE TABLE `wifi_agentpushset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `pushflag` tinyint(4) DEFAULT NULL COMMENT '是否启用广告推送',
  `showtime` int(11) DEFAULT '3',
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_agentpushset
-- ----------------------------
INSERT INTO `wifi_agentpushset` VALUES ('1', '1', '1', '6', '1413911664', '1413911664');
INSERT INTO `wifi_agentpushset` VALUES ('2', '2', '1', '6', '1413249458', '1413249458');

-- ----------------------------
-- Table structure for `wifi_arts`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_arts`;
CREATE TABLE `wifi_arts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `titlepic` varchar(255) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `info` text,
  `topflag` tinyint(4) DEFAULT '0' COMMENT '0:否 1 是 是否置顶',
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0: stop 1:ok',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_arts
-- ----------------------------
INSERT INTO `wifi_arts` VALUES ('1', '1', '3', '微信营销，它是伴随着微信的火热应运而生的', '/upload/AD/5403e212ed8b1.png', '是网络经济时代企业面临着营销模式的创新，它不存在距离的限制', '<p>\r\n	微信营销，它是伴随着微信的火热应运而生的，是网络经济时代企业面临着营销模式的创新，它不存在距离的限制，用户可以订阅自己想要的信息，企业与商家通过提供信息，推广自己的品牌或产品，从而实现点对点的营销方式。满足3高直达5高。<br />\r\n<br />\r\n1、高到达率<br />\r\n2、高曝光率<br />\r\n3、高接受率<br />\r\n4、高精准度<br />\r\n5、高便利性<br />\r\n微信营销颇具实力，以上所述只是微信营销的显性优势，那些隐形优势还有待我们再去考究，微信营销让网络营销更具魅力！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '0', '1409540626', '1410948164', '1');
INSERT INTO `wifi_arts` VALUES ('2', '1', '3', '微信时代大量吸粉利器——微信拍立得', '/upload/AD/5406c8fab466e.jpg', '', '（微信打印机、微信即时印、印美图）登陆大西安了，由西安多特瑞互动科技（http://www.doterry.cn）独家引进，只需用微信扫一扫，瞬间增加微信公众平台的关注度和人气，便于后期微信营销的深化；现场打印的LOMO卡片印有主办方LOGO，信息传播的广度和深度进一步加强。&nbsp;<br />\r\n第一步、去申请一个微信公众帐号，生成您的专属二维码。&nbsp;<br />\r\n第二步、在活动现场、营销中心、店面大厅、汽车展馆等摆放一台微信趣拍自助印终端。在终端设备边上准备一个使用指南，印上供嘉宾扫描用的二维码。&nbsp;<br />\r\n第三步、嘉宾来到活动现场时会主动去扫描二维码，成我们的粉丝。&nbsp;<br />\r\n第四步、成为粉丝之后，嘉宾可以把自己的手机变成“拍立得”无论是客户现场拍摄的照片还是手机里原的照片，都可以以微信的方式传给我们的公众帐号，上传完成以后，我们会在他手机上生成一个随机的认证码在本地的手机输入认证码后，终端打印设备将在30秒内打印出印有活动广告LOGO 的专属照片。&nbsp;<br />\r\n参加过微信即时印终端的嘉宾的反馈信息：&nbsp;<br />\r\n1、可以随意打印手机里原有照片或是打印现场与朋友合影照片，让人心情愉悦。&nbsp;<br />\r\n2、嘉宾可以长期关注活动主办方，活动主办方也利用微信平台，及时发布活动信息。&nbsp;<br />\r\n3、一场活动结束以后，嘉宾带走的是印有LOGO广告的照片，宣传面更广，且可以安排持续不断的以照片为主的活动，例如：凭当天活动现场的照片成交商品的可以有优惠，活动现场最佳拍摄作品评比等等。&nbsp;<br />\r\n<div>\r\n	<br />\r\n</div>', '0', '1409730810', '1410947840', '1');
INSERT INTO `wifi_arts` VALUES ('3', '1', '3', '你为什么需要微网站？', '/upload/AD/54198101aeca1.jpg', '微网站的具体功能有哪些？', '微网站的具体功能有哪些？　<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;一、符合受众的浏览习惯，使客户获取最佳浏览体验。<br />\r\n　　二、一键预定：实现快速下单，减少时间拖延带来的风险。<br />\r\n　　三、一键分享：实现用户自行推广，病毒式传播营销。<br />\r\n　　四、利用微信信息内容推送、微博广播功能，以及其他社交网络，实现精准营销。<br />\r\n　　五、一键留言：快速反馈，方便企业完善服务。<br />\r\n　　六、一键导航：实现精准位置导航，方便客户上面沟通，促进成交率。<br />\r\n　　七、开放数据分析功能，对访客记录、分析，获取精准有效数据。<br />\r\n　　八、内容符合微信的特点，简单高效，有吸引力。<br />\r\n　　九、一键拨号：方便客户咨询，及时了解，促进交易。<br />\r\n　　十、电子喜帖：专业为影楼与婚礼策划机构研发与定制，与现代年轻人思想结合，美观大方的版面配合背景音乐与视频，在新人好友中展现他们靓丽与喜庆的一面。<br />\r\n　　十一、简洁大方，具有良好可拓展性。<br />\r\n　　十二、提交订单：专业为销售企业研发与定制，实现快速下单，减少时间拖延带来的风险，线上线下互动转化提高转化率。<br />\r\n<br />\r\n&nbsp;<br />\r\n适用行业 ：装饰建材、家装公司、餐饮、KTV、酒店、美容美发、汽车4S店、旅行社、航空公司、银行、教育、医疗保健等行业。<br />\r\n<div>\r\n	<br />\r\n</div>', '1', '1410948033', '1410957569', '1');
INSERT INTO `wifi_arts` VALUES ('4', '1', '9', '特价促销新商品', '/upload/AD/54199f115a418.jpg', '', '特价促销新商品', '1', '1410948640', '1410965265', '1');
INSERT INTO `wifi_arts` VALUES ('5', '1', '9', '欢度10.1国庆节，所有商品一律8折起售', '/upload/AD/54199f2625650.jpg', '欢迎到店选购。', '欢度10.1国庆节，所有商品一律8折起售&nbsp;欢迎到店选购。', '0', '1410948707', '1410965286', '1');
INSERT INTO `wifi_arts` VALUES ('6', '1', '11', '关于我们', '/upload/AD/54199ee545315.jpg', '', '<span style=\"color:#5B5B5B;font-family:Simsun;font-size:14px;line-height:19px;background-color:#FFFFFF;\">&nbsp;百姓超市有限公司前称为（泉州百姓超市有限公司），公司1996年在泉州挂牌成立。自创建经营十年来，得到各级政府和广大消费者的认同，公司一贯以“便民、利民、为民”为企业宗旨，坚持“百姓超市、服务百姓”的服务理念，以优质的商品、优良的服务、创立了家喻户晓的本土品牌—“百姓企业”。&nbsp;</span><br />\r\n<span style=\"color:#5B5B5B;font-family:Simsun;font-size:14px;line-height:19px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp;&nbsp;随着传统流通格局的深刻变革，零售业出现两极分化的市场局面，连锁便利成为流通企业改革的主要导向。2003年公司针对市场变化，作出调整产业结构经营方向的重大抉择。借鉴国内社区便利连锁的成功例子，公司开始转向探索、发展社区便利店连锁经营。至今，公司已成功拥有社区便利店30多家，总投资近2000万元，总营业面积约近万平方米。管理产生效益，公司在发展经营的同时，不断完善企业管理制度，强化员工素质教育，提高员工综合素质，倡导企业文化，提升企业凝聚力。对每个员工而言，“百姓超市”不只是一个企业，它更象一个属于大家的“家”。目前公司拥有高素质高层管理人员20余人，中层管理人员50余人，员工300余人。&nbsp;更让我们自豪的是企业不仅拥有员工财富，更拥有友好合作队伍（供应商）的大力支持。</span><br />\r\n<span style=\"color:#5B5B5B;font-family:Simsun;font-size:14px;line-height:19px;background-color:#FFFFFF;\">&nbsp;&nbsp;&nbsp;&nbsp;公司本着“服务社区、贴近生活”的经营模式，真正做到为社区居民服务的目标。正是公司正确的经营方针的指引，团结奋斗的员工共同协作，企业近年来佳绩连创，捷报频传，同时“保真的商品、真诚的服务”赢得了消费者的信赖和赞誉。社区居民的消费需求，给企业创造良好的发展空间，公司将抓住市场发展机遇，&nbsp;增加泉州市场的社区覆盖率，减少盲区。&nbsp;同时扩展视野，将发展方向延伸到周边地区。在2009&nbsp;年公司将扩大连锁加盟，预计2010年发展趋势将达到100家分店，2012年门店总数达到200家甚至更多。&nbsp;市场是无限的，企业将不断改进，适应市场发展空间，前景无法估量。让“百姓”这块金字招牌更辉煌！</span>', '0', '1410948860', '1410965221', '1');

-- ----------------------------
-- Table structure for `wifi_authlist`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_authlist`;
CREATE TABLE `wifi_authlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `routeid` int(11) DEFAULT NULL,
  `mode` tinyint(4) DEFAULT NULL COMMENT '认证模式',
  `mac` varchar(50) DEFAULT NULL,
  `add_date` varchar(50) DEFAULT NULL COMMENT '日期',
  `pingcount` int(4) DEFAULT '0' COMMENT '检测链接次数',
  `login_time` varchar(50) DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(20) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL COMMENT '浏览器',
  `agent` varchar(100) DEFAULT NULL COMMENT '机器消息',
  `over_time` varchar(50) NOT NULL COMMENT '允许在线时长',
  `update_time` varchar(50) DEFAULT NULL,
  `last_time` varchar(50) DEFAULT NULL COMMENT '最后在线时间',
  `incoming` varchar(255) NOT NULL DEFAULT '0',
  `wxcode` varchar(12) DEFAULT NULL,
  `wxopenid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_authlist
-- ----------------------------
INSERT INTO `wifi_authlist` VALUES ('1', 'cab81dfeb9fc3231347178a274309e7c', '441', '1', '22', '2', null, '2015-07-20', '0', '1437379459', null, '0', '0', '', '1437379459', '1437379459', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('2', 'eb5e46e571b751a9a9feed13ef9951c5', '442', '1', '22', '2', null, '2015-07-20', '0', '1437379473', null, '0', '0', '', '1437379473', '1437379473', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('3', 'd75ebc800f8c606372330035beb2a91d', '443', '1', '22', '2', null, '2015-07-20', '0', '1437379519', null, '0', '0', '', '1437379519', '1437379519', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('4', 'edbb2fddf939931f8d05f836d17d8033', '444', '1', '22', '2', null, '2015-07-20', '0', '1437379610', null, '0', '0', '', '1437379610', '1437379610', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('5', '5161af44749d3ef380a9df6c682b9eba', '445', '1', '22', '2', null, '2015-07-20', '0', '1437379663', null, '0', '0', '', '1437379663', '1437379663', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('6', '0fc621950c6ea0b225b4eb36480178fb', '446', '1', '22', '2', null, '2015-07-20', '0', '1437379729', null, '0', '0', '', '1437379729', '1437379729', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('7', '6b7a5d3913c340fc3d3697cb19077c6a', '447', '1', '22', '2', null, '2015-07-20', '0', '1437379824', null, '0', '0', '', '1437379824', '1437379824', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('8', '229896baf122c3b11a0114dd4615f4a7', '448', '1', '22', '2', null, '2015-07-20', '0', '1437381193', null, '0', '0', '1437381493', '1437381193', '1437381193', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('9', '95c0bf30fe5c7d10dd28def8327e7588', '449', '1', '22', '2', null, '2015-07-20', '0', '1437381363', null, '0', '0', '1437381663', '1437381363', '1437381363', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('10', 'b8302895804e647a1d8388e571429fc1', '450', '1', '22', '2', null, '2015-07-20', '0', '1437381441', null, '0', '0', '1437381741', '1437381441', '1437381441', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('11', '5a378885655b95e8986c9c065507a32f', '451', '1', '22', '2', null, '2015-07-20', '0', '1437381532', null, '0', '0', '1437381832', '1437381532', '1437381532', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('12', 'eb303b9fbdd9b3ea47384ed644916494', '452', '1', '22', '2', null, '2015-07-20', '0', '1437383953', null, '0', '0', '1437384253', '1437383953', '1437383953', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('13', '022f2d933b839d54eb15f6f3c3d09d4d', '453', '1', '22', '3', null, '2015-07-21', '0', '1437454144', null, '0', null, '1437454444', '1437454144', '1437454144', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('14', '7e244798c96d563fd5372e2289ceeaf3', '454', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-21', '7', '1437454666', '192.168.2.252', '0', null, '1437454976', '1437454702', '1437454702', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('15', '2a08d68add12a1f7ec6d03763b157e4c', '455', '1', '22', '3', null, '2015-07-21', '0', '1437454917', null, '0', null, '1437455217', '1437454917', '1437454917', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('16', '096293731f04dc6f6fd824b57c3fdb94', '456', '1', '22', '4', null, '2015-07-21', '0', '1437455280', null, '0', null, '1437455880', '1437455280', '1437455280', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('17', '52dd2043f44e87e1e22c25c0d7ead2b5', '457', '1', '22', '2', null, '2015-07-21', '0', '1437460723', null, '0', '0', '1437461023', '1437460723', '1437460723', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('18', '3427f4767f0692a39196a05dd951289c', '458', '1', '22', '2', null, '2015-07-21', '0', '1437460741', null, '0', '0', '1437461041', '1437460741', '1437460741', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('19', '11bc2d4bd76b39f77cb5be1cfd4f141f', '459', '1', '22', '2', null, '2015-07-21', '0', '1437460996', null, '0', '0', '1437461296', '1437460996', '1437460996', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('20', 'ef17e5f8a22c065af1e3b89dcb84e722', '460', '1', '22', '2', null, '2015-07-21', '0', '1437461044', null, '0', '0', '1437461344', '1437461044', '1437461044', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('21', '27aaa99b66a79d55d8098eaece8f68d8', '461', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-21', '2', '1437461333', '192.168.2.252', '0', null, '1437461638', '1437461338', '1437461338', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('22', 'f7364b17bcebd9c2d63925ac3d2609ba', '462', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-21', '4', '1437461353', '192.168.2.252', '0', null, '1437461953', '1437461860', '1437461860', '916227', null, null);
INSERT INTO `wifi_authlist` VALUES ('23', '93c84db2c86090915f64235c88e5bb30', '463', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437647560', '192.168.2.65', '0', null, '1437648160', '1437647561', '1437647561', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('24', '230d4730b036f5ebe4a59cfc2f3a5983', '464', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '6', '1437647566', '192.168.2.65', '0', null, '1437648166', '1437648054', '1437648054', '37623', null, null);
INSERT INTO `wifi_authlist` VALUES ('25', '7ea7601e267f29e5b08cd5fe4e4a6f3a', '465', '1', '22', '4', null, '2015-07-23', '0', '1437647568', null, '0', null, '1437648168', '1437647568', '1437647568', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('26', 'f26e1fccccbb600b0769e65c6ef0240a', '466', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '2', '1437648619', '192.168.2.65', '0', null, '1437649219', '1437648653', '1437648653', '7864', null, null);
INSERT INTO `wifi_authlist` VALUES ('27', 'c84f84f3412edafb7240a75fa5196860', '467', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437648665', '192.168.2.65', '0', null, '1437649265', '1437648666', '1437648666', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('28', '747f8c034b187540335636135f953cb3', '468', '1', '22', '4', null, '2015-07-23', '0', '1437648667', null, '0', null, '1437649267', '1437648667', '1437648667', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('29', 'dba7944bb30188bc2eb21b6efb808c88', '469', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '2', '1437648692', '192.168.2.65', '0', null, '1437649292', '1437648772', '1437648772', '6280926', null, null);
INSERT INTO `wifi_authlist` VALUES ('30', '0ffcbbd2a7836d4a9725e335af7ed6cb', '470', '1', '22', '4', null, '2015-07-23', '0', '1437648695', null, '0', null, '1437649295', '1437648695', '1437648695', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('31', '51849fb25e7c66aa1a33a9096d87a61f', '471', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437648800', '192.168.2.65', '0', null, '1437649400', '1437648801', '1437648801', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('32', '9492f6c972027075ac3b0b930e5a7740', '472', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437648855', '192.168.2.65', '0', null, '1437649455', '1437648856', '1437648856', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('33', 'bddbf6bf5967e55d13ee0ef3fcb611ab', '473', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437648856', '192.168.2.65', '0', null, '1437649456', '1437648857', '1437648857', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('34', '58cc0afca72e6454f7e2e7b63c96272c', '474', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437648871', '192.168.2.65', '0', null, '1437649471', '1437648872', '1437648872', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('35', '1cc6f1344879ee67cc310f60aec86e53', '475', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '2', '1437648890', '192.168.2.65', '0', null, '1437649490', '1437648892', '1437648892', '1612', null, null);
INSERT INTO `wifi_authlist` VALUES ('36', '5907f1ce63fe441580ebd6868aed2eba', '476', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437648893', '192.168.2.65', '0', null, '1437649493', '1437648894', '1437648894', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('37', 'b7848f9c73615ce83be1cafb9beccb33', '477', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '3', '1437648923', '192.168.2.65', '0', null, '1437649523', '1437649295', '1437649295', '10146', null, null);
INSERT INTO `wifi_authlist` VALUES ('38', '115155fd1e851d1481def868ccf44da2', '478', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-23', '6', '1437649344', '192.168.2.252', '0', null, '1437649944', '1437649893', '1437649893', '72577', null, null);
INSERT INTO `wifi_authlist` VALUES ('39', 'ad9e29de35d58ecd20a0d47a6665df22', '479', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649377', '192.168.2.65', '0', null, '1437649977', '1437649382', '1437649382', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('40', 'a048a0c650059d5315760eacb31802ac', '480', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '2', '1437649402', '192.168.2.65', '0', null, '1437650002', '1437649415', '1437649415', '3893', null, null);
INSERT INTO `wifi_authlist` VALUES ('41', 'ecb4d0a61f632c2213e35da434b37484', '481', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649417', '192.168.2.65', '0', null, '1437650017', '1437649418', '1437649418', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('42', '00d26e02935fbe79cd52c6439ab2ba65', '482', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649419', '192.168.2.65', '0', null, '1437650019', '1437649420', '1437649420', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('43', 'add22536d6537b062bda8709358f2e49', '483', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649427', '192.168.2.65', '0', null, '1437650027', '1437649428', '1437649428', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('44', '120d3165aee36a2df8ebd10bf6c9e630', '484', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649453', '192.168.2.65', '0', null, '1437650053', '1437649454', '1437649454', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('45', '4fd912cf2eb974065ca673018db9f3f4', '485', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649456', '192.168.2.65', '0', null, '1437650056', '1437649457', '1437649457', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('46', 'c21328d344fb3f3408958794602821e9', '486', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649458', '192.168.2.65', '0', null, '1437650058', '1437649459', '1437649459', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('47', 'd3dea7325ce56d6bd577028028af3eb5', '487', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649461', '192.168.2.65', '0', null, '1437650061', '1437649462', '1437649462', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('48', '35f685e5e4fd55ee1a817c9bcd7222b9', '488', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649464', '192.168.2.65', '0', null, '1437650064', '1437649466', '1437649466', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('49', '2b29c693ab6b0474d5ef36fa3826e748', '489', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649485', '192.168.2.65', '0', null, '1437650085', '1437649486', '1437649486', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('50', '2f6de39da935a42334f903baab0fa76c', '490', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649497', '192.168.2.65', '0', null, '1437650097', '1437649498', '1437649498', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('51', 'f94d05f6bc4f6aa866f20fdbc9c3ea9a', '491', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649499', '192.168.2.65', '0', null, '1437650099', '1437649500', '1437649500', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('52', '218db7b67351d5938c406bcd062ace8b', '492', '1', '22', '4', null, '2015-07-23', '0', '1437649505', null, '0', null, '1437650105', '1437649505', '1437649505', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('53', '66841fb29ca9e1ec30bc173a8ccd107e', '493', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649508', '192.168.2.65', '0', null, '1437650108', '1437649509', '1437649509', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('54', 'f6281eb62a4ae63d1fe11e523a333eef', '494', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649512', '192.168.2.65', '0', null, '1437650112', '1437649513', '1437649513', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('55', '7100bd3d55a51e815c5a9884f107ddb6', '495', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649529', '192.168.2.65', '0', null, '1437650129', '1437649531', '1437649531', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('56', 'f24b8661119d310f473d33fac44b20b9', '496', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '2', '1437649532', '192.168.2.65', '0', null, '1437650132', '1437649535', '1437649535', '2320', null, null);
INSERT INTO `wifi_authlist` VALUES ('57', 'b7f9dbafd1d4b206bedfbb6720e190d4', '497', '1', '22', '4', null, '2015-07-23', '0', '1437649534', null, '0', null, '1437650134', '1437649534', '1437649534', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('58', 'a59187bda081ba375fca7991cf5a32fd', '498', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649537', '192.168.2.65', '0', null, '1437650137', '1437649538', '1437649538', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('59', 'acbe6b2653d885740fa2131ca7eeff68', '499', '1', '22', '4', null, '2015-07-23', '0', '1437649548', null, '0', null, '1437650148', '1437649548', '1437649548', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('60', '850299682737e5d98cfc3ff076fe50a2', '500', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649561', '192.168.2.65', '0', null, '1437650161', '1437649562', '1437649562', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('61', 'a87adcb26307cdd52a54b10d3d55d5f4', '501', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649564', '192.168.2.65', '0', null, '1437650164', '1437649565', '1437649565', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('62', '1a1243a122f55e224be5a76b1c73bade', '502', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649571', '192.168.2.65', '0', null, '1437650171', '1437649573', '1437649573', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('63', '6269fa24e64cb5b0a3c4d6fa13ed37c6', '503', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437649574', '192.168.2.65', '0', null, '1437650174', '1437649575', '1437649575', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('64', 'cd5e5246063c624ffa412ad6c5561dcd', '504', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '3', '1437649576', '192.168.2.65', '0', null, '1437650176', '1437649774', '1437649774', '40757', null, null);
INSERT INTO `wifi_authlist` VALUES ('65', '22258202e4fc8c1f02dff6dff6748943', '505', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '3', '1437649866', '192.168.2.65', '0', null, '1437650466', '1437650013', '1437650013', '4705', null, null);
INSERT INTO `wifi_authlist` VALUES ('66', '7f7385ff778703506e454f85f31d1135', '506', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '1', '1437650117', '192.168.2.65', '0', null, '1437650717', '1437650119', '1437650119', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('67', '0edd7437451903380499c02e13fe2d39', '507', '1', '22', '4', null, '2015-07-23', '0', '1437650120', null, '0', null, '1437650720', '1437650120', '1437650120', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('68', '5e51f203c42e219f5e8e34a29a17f50d', '508', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-23', '3', '1437650126', '192.168.2.65', '0', null, '1437650726', '1437650252', '1437650252', '2006', null, null);
INSERT INTO `wifi_authlist` VALUES ('69', 'ca32befba3dbfb66d0b400609322c643', '509', '1', '22', '4', null, '2015-07-24', '0', '1437724224', null, '0', null, '1437724824', '1437724224', '1437724224', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('70', '7c876a6c5fc6a61c150aa5669a4fbaba', '510', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '1', '1437724230', '192.168.2.65', '0', null, '1437724830', '1437724231', '1437724231', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('71', '12592bb4ba55a3979ba6d8db10f40a4a', '511', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '6', '1437724235', '192.168.2.65', '0', null, '1437724835', '1437724736', '1437724736', '2876606', null, null);
INSERT INTO `wifi_authlist` VALUES ('72', '2d1cd94f84cf1b3223b063d8878ea40d', '512', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '6', '1437727362', '192.168.2.252', '0', null, '1437728587', '1437727851', '1437727851', '23541', null, null);
INSERT INTO `wifi_authlist` VALUES ('73', 'fb5256036f8b20e7fd408d9649654afb', '513', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '7', '1437728302', '192.168.2.252', '0', null, '1437728606', '1437728468', '1437728468', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('74', 'fcc36ccb4bae394d4e3cd8f67ac34c19', '514', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '1', '1437728472', '192.168.2.252', '0', null, '1437729072', '1437728474', '1437728474', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('75', 'd35f30ee38dbe2ed4b7fdba16fa25879', '515', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '3', '1437728492', '192.168.2.252', '0', null, '1437728824', '1437728524', '1437728524', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('76', 'fd64ff3cf1858926e8c52766649b0691', '516', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '1', '1437728528', '192.168.2.252', '0', null, '1437729128', '1437728529', '1437728529', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('77', 'b49bd6d939326adf5c34569239174de7', '517', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '2', '1437728560', '192.168.2.252', '0', null, '1437729160', '1437728569', '1437728569', '2005', null, null);
INSERT INTO `wifi_authlist` VALUES ('78', '8dd10cb306d9a6af35a7d6136eb4c69b', '518', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '6', '1437728572', '192.168.2.252', '0', null, '1437729172', '1437729167', '1437729167', '77546', null, null);
INSERT INTO `wifi_authlist` VALUES ('79', '51c58c5e393b7c27a9628a7c55487734', '519', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '6', '1437729209', '192.168.2.252', '0', null, '1437729809', '1437729766', '1437729766', '215650', null, null);
INSERT INTO `wifi_authlist` VALUES ('80', '7902a8f629839ee01e4502b68991a627', '520', null, null, '2', null, '2015-07-24', '0', '1437730463', null, '0', null, '0', '1437730463', '1437730463', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('81', '537a5e326d18f8c0de1d1ec86eebe198', '521', null, null, '2', null, '2015-07-24', '0', '1437730485', null, '0', null, '0', '1437730485', '1437730485', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('82', 'ce1c9e82823fe795bf991286325e9ebd', '522', null, null, '2', null, '2015-07-24', '0', '1437730486', null, '0', null, '0', '1437730486', '1437730486', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('83', '67a98e2f2ce2d39d4c18c9ee73dcce0a', '523', '1', '22', '4', '0c:1d:af:5c:1e:61', '2015-07-24', '1', '1437730653', '192.168.2.72', '0', null, '1437731253', '1437730655', '1437730655', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('84', 'f419b228dd30fcc80a360ae76ce2cf66', '524', '1', '22', '2', null, '2015-07-24', '0', '1437730656', null, '0', null, '0', '1437730656', '1437730656', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('85', '48231bb2f337eb616573333c7ecaa554', '525', '1', '22', '4', '0c:1d:af:5c:1e:61', '2015-07-24', '6', '1437730660', '192.168.2.72', '0', null, '1437731260', '1437731202', '1437731202', '635412', null, null);
INSERT INTO `wifi_authlist` VALUES ('86', 'ca9a598f9f3b8f01be93e4536304cae3', '526', '1', '22', '2', null, '2015-07-24', '0', '1437730661', null, '0', null, '0', '1437730661', '1437730661', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('87', '05ace522a02da828cfa5bf112516298e', '527', null, null, '2', null, '2015-07-24', '0', '1437730757', null, '0', null, '0', '1437730757', '1437730757', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('88', '93d56a5f0e7659bd2e38ca2539c3ceb3', '528', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '5', '1437731127', '192.168.2.252', '0', null, '1437731464', '1437731322', '1437731322', '12581', null, null);
INSERT INTO `wifi_authlist` VALUES ('89', 'f3ca41d5ef8bfa0e05b120c4d56cc012', '529', '1', '22', '2', null, '2015-07-24', '0', '1437731129', null, '0', null, '0', '1437731129', '1437731129', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('90', '70c6499e366d0090af663dd3809c92b7', '530', '1', '22', '2', null, '2015-07-24', '0', '1437731164', null, '0', null, '0', '1437731164', '1437731164', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('91', '305c8959f3975acdbb6bad41e2def0d9', '531', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '3', '1437731283', '192.168.2.252', '0', null, '1437731826', '1437731561', '1437731561', '21059', null, null);
INSERT INTO `wifi_authlist` VALUES ('92', 'a08a01455d9297a716814776c38ddca7', '532', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '1', '1437731350', '192.168.2.252', '0', null, '1437731950', '1437731351', '1437731351', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('93', 'a45425e22e536909cc9c99b46b1fc21e', '533', '1', '22', '2', '68:df:dd:a0:66:c7', '2015-07-24', '2', '1437731352', '192.168.2.252', '0', null, '0', '1437731441', '1437731441', '4122', null, null);
INSERT INTO `wifi_authlist` VALUES ('94', '56ed35895fbc052e02fada58d7aa7d67', '534', '1', '22', '2', null, '2015-07-24', '0', '1437731413', null, '0', null, '0', '1437731413', '1437731413', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('95', '00e095d333996a99779a25fedef0d071', '535', '1', '22', '2', null, '2015-07-24', '0', '1437731526', null, '0', null, '0', '1437731526', '1437731526', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('96', '0c4a337ed13c91ee3161272932e24b74', '536', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '6', '1437732384', '192.168.2.252', '0', null, '1437732984', '1437732875', '1437732875', '1420506', null, null);
INSERT INTO `wifi_authlist` VALUES ('97', 'ba8440da1f1a204d55820254df59bf24', '537', '1', '22', '2', null, '2015-07-24', '0', '1437732385', null, '0', null, '0', '1437732385', '1437732385', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('98', 'b986f2c2a44b6529210f0fa8837a551a', '538', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '6', '1437732556', '192.168.2.65', '0', null, '1437733156', '1437733114', '1437733114', '2661449', null, null);
INSERT INTO `wifi_authlist` VALUES ('99', '3fae803de5a0fd7f7303f1f5760e6cae', '539', '1', '22', '2', null, '2015-07-24', '0', '1437732557', null, '0', null, '0', '1437732557', '1437732557', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('100', '95ceedba4c1bb0641611b28511c39e4f', '540', '1', '22', '4', null, '2015-07-24', '0', '1437733569', null, '0', null, '1437734169', '1437733569', '1437733569', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('101', '5c6db7c140223abf1b8e9ecf5cbf2257', '541', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '6', '1437733573', '192.168.2.65', '0', null, '1437734173', '1437734072', '1437734072', '2044038', null, null);
INSERT INTO `wifi_authlist` VALUES ('102', '40e851e3c6ca5f61c7801d52ba7a2cd4', '542', '1', '22', '2', null, '2015-07-24', '0', '1437733574', null, '0', null, '0', '1437733574', '1437733574', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('108', '982d7f00a6e9447be89c59955b029e2a', '548', '1', '22', '2', null, '2015-07-24', '0', '1437738075', null, '0', null, '0', '1437738075', '1437738075', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('104', '42fb5e3c2f00f81838d5f6386f118a35', '544', '1', '22', '2', null, '2015-07-24', '0', '1437734882', null, '0', null, '0', '1437734882', '1437734882', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('109', 'ad17126a150e31d9cbc19c84ddd515c0', '549', '1', '22', '4', null, '2015-07-24', '0', '1437738672', null, '0', null, '1437739272', '1437738672', '1437738672', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('105', '7a8b2e04e7a4d243611dd8d30f9caa59', '545', '1', '22', '1', null, '2015-07-24', '0', '1437735058', null, '0', '0', '1437735358', '1437735058', '1437735058', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('107', '3c2e18c483d4966f7a5cd17e1cf4a9fb', '547', '1', '22', '2', null, '2015-07-24', '0', '1437735395', null, '0', null, '0', '1437735395', '1437735395', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('110', 'eff9054ba7caaea0356096e1a9186be0', '550', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '2', '1437741528', '192.168.2.65', '0', null, '1437742128', '1437741610', '1437741610', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('111', '52b32fb1f1bfbcdac8dd65ec654b80e0', '551', '1', '22', '2', null, '2015-07-24', '0', '1437741530', null, '0', null, '0', '1437741530', '1437741530', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('112', '2b00f2990f24624fac22a2d7d7f9b35c', '552', '1', '22', '4', null, '2015-07-24', '0', '1437741538', null, '0', null, '1437742138', '1437741538', '1437741538', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('113', '081533372ca8cf5faa2d7e4fd48bccd2', '553', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '2', '1437741715', '192.168.2.65', '0', null, '1437742315', '1437741730', '1437741730', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('114', '35d0587b005826d2cd45003740f4810e', '554', '1', '22', '2', null, '2015-07-24', '0', '1437741717', null, '0', null, '0', '1437741717', '1437741717', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('115', '14d502128ded9ca5451d985740364ae8', '555', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '3', '1437741743', '192.168.2.65', '0', null, '1437742343', '1437741972', '1437741972', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('116', '3af7c986e649990ea9e42a144f138817', '556', '1', '22', '2', null, '2015-07-24', '0', '1437741744', null, '0', null, '0', '1437741744', '1437741744', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('117', 'd9b18a0b8bc1c893104cc6e5805cbdfc', '557', '1', '22', '4', null, '2015-07-24', '0', '1437741788', null, '0', null, '1437742388', '1437741788', '1437741788', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('118', '17d8368d90b1aba4eb4a26ae1776333f', '558', '1', '22', '3', '38:bc:1a:54:5d:a4', '2015-07-24', '6', '1437741821', '192.168.2.65', '0', null, '1437742379', '1437742331', '1437742331', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('119', '1f003761bec3c878a279aa373dc9c36a', '559', '1', '22', '2', null, '2015-07-24', '0', '1437742038', null, '0', null, '0', '1437742038', '1437742038', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('120', '007c9563c2bec89c6a429cf2b638b0dc', '560', '1', '22', '2', null, '2015-07-24', '0', '1437742079', null, '0', null, '0', '1437742079', '1437742079', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('121', '4aca1f30ade88d29cfb48395eecde16f', '561', '1', '22', '2', null, '2015-07-24', '0', '1437742128', null, '0', null, '0', '1437742128', '1437742128', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('122', 'e60c3d9935240dc4e5cdfea54d0fda87', '562', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '3', '1437743185', '192.168.2.65', '0', null, '1437743785', '1437743773', '1437743773', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('123', '46d633a0dbb1c6c91c07ddc8be306f4d', '563', '1', '22', '2', null, '2015-07-24', '0', '1437743187', null, '0', null, '0', '1437743187', '1437743187', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('124', '1f2e07611f6926ed852c188988313694', '564', '1', '22', '4', null, '2015-07-24', '0', '1437743198', null, '0', null, '1437743798', '1437743198', '1437743198', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('125', 'dce08c39211f6bcd0eb9f9c62631eb3f', '565', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '3', '1437743674', '192.168.2.252', '0', null, '1437744063', '1437743773', '1437743773', '1667', null, null);
INSERT INTO `wifi_authlist` VALUES ('126', '858cbce192b977ec009ba10b4db30a5d', '566', '1', '22', '2', '68:df:dd:a0:66:c7', '2015-07-24', '1', '1437743676', '192.168.2.252', '0', null, '0', '1437743716', '1437743716', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('127', '20b03b2544ea43655268663aacb29b68', '567', '1', '22', '2', null, '2015-07-24', '0', '1437743716', null, '0', null, '0', '1437743716', '1437743716', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('128', '458621ba85ff254f355d2adfc3502bec', '568', '1', '22', '2', null, '2015-07-24', '0', '1437743763', null, '0', null, '0', '1437743763', '1437743763', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('129', 'af8c9e7f8fa8c34f5e2bc87194032e8b', '569', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '6', '1437743791', '192.168.2.252', '0', null, '1437744290', '1437744251', '1437744251', '17887', null, null);
INSERT INTO `wifi_authlist` VALUES ('130', '0c376cdd8e7d975fdaa3115b1395d89c', '570', '1', '22', '2', null, '2015-07-24', '0', '1437743792', null, '0', null, '0', '1437743792', '1437743792', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('131', 'fce54dc27f2b159ab941652daaf3fdf9', '571', '1', '22', '1', null, '2015-07-24', '0', '1437744250', null, '0', '0', '1437744370', '1437744250', '1437744250', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('132', '31373cb339532d7b6edb3096ea89126f', '572', '1', '22', '4', null, '2015-07-24', '0', '1437745461', null, '0', null, '1437745521', '1437745461', '1437745461', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('133', '8081ed2549e5c7cd60d0a3a0e7a2bc13', '573', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '1', '1437745607', '192.168.2.53', '0', null, '1437745667', '1437745608', '1437745608', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('134', 'adcb167cfdcfd523fc6db2cbfa654fea', '574', '1', '22', '2', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437745608', '192.168.2.53', '0', null, '0', '1437745688', '1437745688', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('135', '865520b7e5313f6f9c52cf1c0b7745b3', '575', '1', '22', '2', null, '2015-07-24', '0', '1437745637', null, '0', null, '0', '1437745637', '1437745637', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('136', '990bb955a12a1469ba9befddd70f9c5a', '576', '1', '22', '4', null, '2015-07-24', '0', '1437745642', null, '0', null, '1437745702', '1437745642', '1437745642', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('137', '7bb0500bf9ff90d7647e92899fae1958', '577', '1', '22', '4', null, '2015-07-24', '0', '1437745660', null, '0', null, '1437745720', '1437745660', '1437745660', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('138', '6567950d8bb645f7635be5f0df98332d', '578', '1', '22', '4', null, '2015-07-24', '0', '1437745669', null, '0', null, '1437745729', '1437745669', '1437745669', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('139', 'fa069473a3a86de377ab41f67eff8976', '579', '1', '22', '4', null, '2015-07-24', '0', '1437745681', null, '0', null, '1437745741', '1437745681', '1437745681', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('140', '9c75448dea64e9068f81b6b57a178398', '580', '1', '22', '4', null, '2015-07-24', '0', '1437745746', null, '0', null, '1437745806', '1437745746', '1437745746', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('141', 'fac3e71ad92a219ebbae2002b46ec8ed', '581', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437745796', '192.168.2.53', '0', null, '1437745856', '1437745808', '1437745808', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('142', '6257674786fc5e69007feb80e381559e', '582', '1', '22', '2', '18:a9:05:49:81:b0', '2015-07-24', '1', '1437745806', '192.168.2.53', '0', null, '0', '1437745864', '1437745864', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('143', '93f1a2067b580dce302804ff79101fb7', '583', '1', '22', '2', null, '2015-07-24', '0', '1437745864', null, '0', null, '0', '1437745864', '1437745864', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('144', 'b404ed0ef225dadb0e95a76f46079203', '584', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437745915', '192.168.2.53', '0', null, '1437745975', '1437745927', '1437745927', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('145', '57954ad9f77e81539114dab97d0ec6f3', '585', '1', '22', '2', '18:a9:05:49:81:b0', '2015-07-24', '1', '1437745917', '192.168.2.53', '0', null, '0', '1437745952', '1437745952', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('146', '60e654346e0b6b73414814c4c0bb240d', '586', '1', '22', '2', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437745952', '192.168.2.53', '0', null, '0', '1437746047', '1437746047', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('147', '761b3c8e8e5496db92c428dcc4693bff', '587', '1', '22', '2', null, '2015-07-24', '0', '1437745971', null, '0', null, '0', '1437745971', '1437745971', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('148', '9db6937b95dc657aefe15548880adea2', '588', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '1', '1437746092', '192.168.2.53', '0', null, '1437746152', '1437746093', '1437746093', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('149', '833958269627339ba98f8e2ce8f3919c', '589', '1', '22', '2', null, '2015-07-24', '0', '1437746093', null, '0', null, '0', '1437746093', '1437746093', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('150', 'e53621be8ae1ef239dfa0d3ce4cbee0d', '590', '1', '22', '4', null, '2015-07-24', '0', '1437746108', null, '0', null, '1437746168', '1437746108', '1437746108', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('151', '6b63ca4e8f31b436da4b135e909ce935', '591', null, null, '4', null, '2015-07-24', '0', '1437746190', null, '0', null, '1437746190', '1437746190', '1437746190', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('152', 'b07fd03fc7ee2a5bbd9484c8350077ed', '592', null, null, '4', null, '2015-07-24', '0', '1437746195', null, '0', null, '1437746195', '1437746195', '1437746195', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('153', '17499e61cc4c04e2423aac5601025ad1', '593', null, null, '4', null, '2015-07-24', '0', '1437746197', null, '0', null, '1437746197', '1437746197', '1437746197', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('154', '2c6bd2ae61f95c3da76fc773fd921753', '594', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437746202', '192.168.2.53', '0', null, '1437746262', '1437746212', '1437746212', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('155', '7c6c98a518ee179cf2835edd340000ed', '595', '1', '22', '2', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437746204', '192.168.2.53', '0', null, '0', '1437746331', '1437746331', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('156', 'a9768434364b144d469d3cc53bfbffc1', '596', '1', '22', '2', null, '2015-07-24', '0', '1437746253', null, '0', null, '0', '1437746253', '1437746253', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('163', 'd743527e915c1a4fe5e026c789fbe896', '603', '1', '22', '4', null, '2015-07-24', '0', '1437747101', null, '0', null, '1437747161', '1437747101', '1437747101', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('158', '79ccbd7206cc925d7824dab71b1854cc', '598', '1', '22', '2', null, '2015-07-24', '0', '1437746530', null, '0', null, '0', '1437746530', '1437746530', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('159', '4a7eb36d56c9f57ca5f57c0b47d9982d', '599', '1', '22', '4', null, '2015-07-24', '0', '1437746554', null, '0', null, '1437746614', '1437746554', '1437746554', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('160', 'e9a576546d006deff1cf922a87b277e4', '600', '1', '22', '4', null, '2015-07-24', '0', '1437746573', null, '0', null, '1437746633', '1437746573', '1437746573', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('162', '66b136c0cfcf4fd723c9e14a6fedc141', '602', '1', '22', '2', null, '2015-07-24', '0', '1437746670', null, '0', null, '0', '1437746670', '1437746670', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('164', '7f8292b1f22b63e623094c252d08f987', '604', '1', '22', '4', null, '2015-07-24', '0', '1437747110', null, '0', null, '1437747170', '1437747110', '1437747110', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('165', 'c6f412f91f3628cdf53934bef54a9322', '605', '1', '22', '4', null, '2015-07-24', '0', '1437747125', null, '0', null, '1437747185', '1437747125', '1437747125', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('166', '80dde604a79221a9558195140fe64d55', '606', '1', '22', '4', null, '2015-07-24', '0', '1437747149', null, '0', null, '1437747209', '1437747149', '1437747149', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('167', '353a06d16448fc08b5695f8288c9f8e9', '607', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '2', '1437747157', '192.168.2.53', '0', null, '1437747217', '1437747169', '1437747169', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('168', '0dbf34928b4d52117f2914fe99ad5d72', '608', '1', '22', '2', null, '2015-07-24', '0', '1437747158', null, '0', null, '0', '1437747158', '1437747158', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('169', '012ec1aa391b4c3080cd8c4bd36a88c1', '609', '1', '22', '4', null, '2015-07-24', '0', '1437747185', null, '0', null, '1437747245', '1437747185', '1437747185', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('170', 'ab2bc97694adad93053fa079c774a531', '610', '1', '22', '4', null, '2015-07-24', '0', '1437747196', null, '0', null, '1437747256', '1437747196', '1437747196', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('171', '5f617b15d421d31dd4b3a97943755c88', '611', '1', '22', '4', null, '2015-07-24', '0', '1437747206', null, '0', null, '1437747266', '1437747206', '1437747206', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('172', '964fbd57032aaea5a7b6d44a7c989f89', '612', '1', '22', '4', null, '2015-07-24', '0', '1437747307', null, '0', null, '1437747367', '1437747307', '1437747307', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('173', '3e1b786f4fb42633ef67f83b95c644c4', '613', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '2', '1437747387', '192.168.2.252', '0', null, '1437747447', '1437747409', '1437747409', '1126757', null, null);
INSERT INTO `wifi_authlist` VALUES ('174', '66dd2c7a776195d657a50bd53d188e6f', '614', '1', '22', '2', null, '2015-07-24', '0', '1437747389', null, '0', null, '0', '1437747389', '1437747389', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('179', 'e49d88cf0ee07b113efb48ac9f16f1a7', '545', '1', '22', '1', null, '2015-07-24', '0', '1437748143', null, '0', '0', '1437748263', '1437748143', '1437748143', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('176', '14d0c56e7f6e6a1aa8fb52c185805e41', '616', '1', '22', '3', null, '2015-07-24', '0', '1437747988', null, '0', null, '1437748108', '1437747988', '1437747988', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('177', 'db4642335ea42093aa263b87d7d26553', '617', '1', '22', '3', null, '2015-07-24', '0', '1437747989', null, '0', null, '1437748109', '1437747989', '1437747989', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('178', '288102d7822ae135008689c566b08cd1', '618', '1', '22', '4', null, '2015-07-24', '0', '1437748023', null, '0', null, '1437748083', '1437748023', '1437748023', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('180', '87fa6a46ae0fba200ec8726c1cbabf39', '619', '1', '22', '4', '18:a9:05:49:81:b0', '2015-07-24', '1', '1437748159', '192.168.2.53', '0', null, '1437748219', '1437748160', '1437748160', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('181', '16c3b055ade9a8de1cd9a4f63add5339', '620', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '1', '1437748366', '192.168.2.252', '0', null, '1437748426', '1437748367', '1437748367', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('182', '34e41ade26e090a8d880e635719931f1', '621', '1', '22', '4', null, '2015-07-24', '0', '1437748840', null, '0', null, '1437748900', '1437748840', '1437748840', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('183', '636c0db6094868c1f61d61f463df4180', '545', '1', '22', '1', null, '2015-07-24', '0', '1437748850', null, '0', '0', '1437748970', '1437748850', '1437748850', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('193', '0b28e050955534e260147da648e3dc23', '545', '1', '22', '1', null, '2015-07-24', '0', '1437749642', null, '0', '0', '1437749762', '1437749642', '1437749642', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('185', 'feed9a7980978c7ff5a2c80f6a283dfc', '623', '1', '22', '1', null, '2015-07-24', '0', '1437748940', null, '0', '0', '1437749060', '1437748940', '1437748940', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('186', 'bc012dc08ba2d7315de617a6399c3f44', '623', '1', '22', '1', null, '2015-07-24', '0', '1437748960', null, '0', '0', '1437749080', '1437748960', '1437748960', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('188', 'ed14e1550097acfc7f11cf4d362be1d1', '625', '1', '22', '1', null, '2015-07-24', '0', '1437748983', null, '0', '0', '1437749103', '1437748983', '1437748983', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('192', '57d210730321238ff9c9e53286155c6f', '629', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-24', '1', '1437749589', '192.168.2.252', '0', null, '1437749649', '1437749590', '1437749590', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('191', '3ba42758f74c36379c971706938278d8', '628', '1', '22', '4', '38:bc:1a:54:5d:a4', '2015-07-24', '2', '1437749434', '192.168.2.65', '0', null, '1437749494', '1437749443', '1437749443', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('194', '0e6cac2badd7fb2f935c05d2c5dd60ba', '630', '1', '22', '3', '68:df:dd:a0:66:c7', '2015-07-24', '2', '1437749706', '192.168.2.252', '0', null, '1437749827', '1437749707', '1437749707', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('195', '78b2e5810c6b3f2291bdfdda83ebca88', '631', '1', '22', '1', null, '2015-07-25', '0', '1437785738', null, '0', '0', '1437785858', '1437785738', '1437785738', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('196', 'ab4ef9dab18bb807dc1ca8c9ce8fc0fe', '631', '1', '22', '1', null, '2015-07-25', '0', '1437785784', null, '0', '0', '1437785904', '1437785784', '1437785784', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('197', 'a38d309f3a877dc088c36005ed7f9aae', '631', '1', '22', '1', null, '2015-07-25', '0', '1437785874', null, '0', '0', '1437785994', '1437785874', '1437785874', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('198', '7996bdb2cdf290b5ca53238497a186aa', '631', '1', '22', '1', null, '2015-07-25', '0', '1437785966', null, '0', '0', '1437786086', '1437785966', '1437785966', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('199', 'e534b993751f269f82e81f44b1748aa3', '631', '1', '22', '1', null, '2015-07-25', '0', '1437787339', null, '0', '0', '1437787459', '1437787339', '1437787339', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('200', '3eb52e6e52059299a9390c1fbeaa862d', '632', '1', '22', '1', null, '2015-07-25', '0', '1437793768', null, '0', '0', '1437793888', '1437793768', '1437793768', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('201', '9559b4bf6835d54b809cc8b20465f2f3', '633', '1', '22', '2', null, '2015-07-25', '0', '1437793835', null, '0', '0', '1437793955', '1437793835', '1437793835', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('202', '1407c018d352a6ae0d50e6014528298f', '634', '1', '22', '4', '68:df:dd:a0:66:c7', '2015-07-25', '1', '1437793853', '192.168.2.252', '0', null, '1437793913', '1437793854', '1437793854', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('203', 'd9282e7ac7377842d1b6855d5532eb15', '635', '1', '22', '2', null, '2015-07-25', '0', '1437794259', null, '0', '0', '1437794379', '1437794259', '1437794259', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('204', '87c458e2d78da82e38a180e0669a99a2', '636', '1', '22', '2', null, '2015-07-25', '0', '1437794274', null, '0', '0', '1437794394', '1437794274', '1437794274', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('205', '335193a748a5644b8e48f51e678152d6', '637', '1', '22', '2', null, '2015-07-25', '0', '1437794425', null, '0', '0', '1437794545', '1437794425', '1437794425', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('206', 'dfdc36145d51da62a97493486bfba4ad', '638', '1', '22', '2', null, '2015-07-25', '0', '1437794440', null, '0', '0', '1437794560', '1437794440', '1437794440', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('207', '82df1b8048faa4ba096cc10cad049fff', '639', '1', '22', '4', null, '2015-07-25', '0', '1437795629', null, '0', null, '1437795689', '1437795629', '1437795629', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('208', '0a04e7de2e2f8298b832cf1786af2655', '640', '1', '22', '2', null, '2015-07-25', '0', '1437797254', null, '0', '0', '1437797374', '1437797254', '1437797254', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('209', '1753506131f31fccb160a266f23e4fd5', '545', '1', '22', '1', null, '2015-07-25', '0', '1437797321', null, '0', '0', '1437797441', '1437797321', '1437797321', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('210', 'e98c9f4baf535e2b23628a333a43f66d', '641', '1', '22', '2', null, '2015-07-25', '0', '1437797390', null, '0', '0', '1437797510', '1437797390', '1437797390', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('211', '6567f40243ba865ecddfe7cc714df80c', '642', '1', '26', '2', null, '2015-07-25', '0', '1437798874', null, '0', '0', '1437798994', '1437798874', '1437798874', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('212', '8bee3158d27f9da4220b91bb97f4a8c9', '643', '1', '26', '2', null, '2015-07-25', '0', '1437799224', null, '0', '0', '1437799344', '1437799224', '1437799224', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('213', 'b74c3899435073786f614e08194ab22b', '644', '1', '26', '2', null, '2015-07-26', '0', '1437895341', null, '0', '0', '1437895461', '1437895341', '1437895341', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('214', '3f6d419f93ec91c911da6d0eac783765', '645', '1', '26', '2', null, '2015-07-26', '0', '1437895352', null, '0', '0', '1437895472', '1437895352', '1437895352', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('215', '3c162bb8dab6f7cc651b0ec04be0d9e2', '646', '1', '26', '2', null, '2015-07-26', '0', '1437895433', null, '0', '0', '1437895553', '1437895433', '1437895433', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('216', '46313e417c77e0d20119fd3decf6cce1', '647', '1', '26', '2', null, '2015-07-26', '0', '1437895470', null, '0', '0', '1437895590', '1437895470', '1437895470', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('217', '0490d608cd3c91ec0f59f66ae642709c', '648', '1', '26', '2', null, '2015-07-27', '0', '1437958608', null, '0', '0', '1437958728', '1437958608', '1437958608', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('218', 'b4ea94aaa7f0902d673cfe2bd12d79f8', '649', '1', '26', '2', null, '2015-07-27', '0', '1437958623', null, '0', '0', '1437958743', '1437958623', '1437958623', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('219', '60602f2e5bbbc82b136f1ef5ad22beaf', '650', '1', '26', '2', null, '2015-07-27', '0', '1437959046', null, '0', '0', '1437959166', '1437959046', '1437959046', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('220', 'c48fa592f770264ae17f1fd50bcc0bbb', '651', '1', '26', '2', null, '2015-07-27', '0', '1437959174', null, '0', '0', '1437959294', '1437959174', '1437959174', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('221', '9de673701189638059f4fc6e5ef4f0ce', '652', '1', '26', '2', null, '2015-07-27', '0', '1437959359', null, '0', '0', '1437959479', '1437959359', '1437959359', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('222', '6acd602794929f269c4e119a52e0342f', '653', '1', '26', '2', null, '2015-07-27', '0', '1437959656', null, '0', '0', '1437959776', '1437959656', '1437959656', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('223', 'eab8bb8af799fe4dd010648de52c3f94', '654', '1', '26', '1', null, '2015-07-27', '0', '1437959678', null, '0', '0', '1437959798', '1437959678', '1437959678', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('224', '2c2304e0707a575897f09f0827fd73f6', '655', '1', '26', '2', null, '2015-07-27', '0', '1437959992', null, '0', '0', '1437960112', '1437959992', '1437959992', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('225', '6bebe4079112927fef505cf66a52c489', '656', '1', '26', '2', null, '2015-07-27', '0', '1437960153', null, '0', '0', '1437960273', '1437960153', '1437960153', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('226', '2ace81c68f560f69d77c96f0679475b7', '657', '1', '26', '2', null, '2015-07-27', '0', '1437960161', null, '0', '0', '1437960281', '1437960161', '1437960161', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('227', 'd33fa241e7f1a4ac1bcf3662d67fa4fa', '658', '1', '26', '2', null, '2015-07-27', '0', '1437960213', null, '0', '0', '1437960333', '1437960213', '1437960213', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('228', '2b7b15012b14992803052d5bf75a80de', '659', '1', '26', '2', null, '2015-07-27', '0', '1437960341', null, '0', '0', '1437960461', '1437960341', '1437960341', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('229', 'f0197e83516c71af328d76693dffa3af', '660', '1', '26', '2', null, '2015-07-27', '0', '1437960467', null, '0', '0', '1437960587', '1437960467', '1437960467', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('230', '340d44e156ca1a7b7c89f737a3298daa', '661', '1', '26', '2', null, '2015-07-27', '0', '1437960488', null, '0', '0', '1437960608', '1437960488', '1437960488', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('231', '4d0d40ffd8cd998ef55c4a9dcdf984df', '662', '1', '26', '2', null, '2015-07-27', '0', '1437960802', null, '0', '0', '1437960922', '1437960802', '1437960802', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('232', '39dbfff7a48488d95ab9bd787c3452d8', '663', '1', '26', '2', 'd4:97:0b:97:b9:ba', '2015-07-27', '3', '1437961316', '192.168.2.181', '0', '0', '1437961436', '1437961418', '1437961418', '98210', null, null);
INSERT INTO `wifi_authlist` VALUES ('233', '24e586d69f9d7445645fad85f6cf3bef', '664', '1', '26', '2', '68:df:dd:a0:66:c7', '2015-07-27', '3', '1437961506', '192.168.2.252', '0', '0', '1437961626', '1437961582', '1437961582', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('234', '26fa370acfd30a372cdddee9ceffb42e', '665', '1', '26', '2', '68:df:dd:a0:66:c7', '2015-07-27', '2', '1437962007', '192.168.2.252', '0', '0', '1437962127', '1437962016', '1437962016', '5078', null, null);
INSERT INTO `wifi_authlist` VALUES ('235', '45259cb868e7ee54b98b2de147ffb5a5', '666', '1', '26', '2', 'd4:97:0b:97:b9:ba', '2015-07-27', '2', '1437962210', '192.168.2.181', '0', '0', '1437962330', '1437962256', '1437962256', '205298', null, null);
INSERT INTO `wifi_authlist` VALUES ('236', 'd08590c29a1cfe11411eb9c076c98432', '667', '1', '26', '2', '68:df:dd:a0:66:c7', '2015-07-27', '2', '1437963684', '192.168.2.252', '0', '0', '1437963804', '1437963692', '1437963692', '2889', null, null);
INSERT INTO `wifi_authlist` VALUES ('237', 'a7acbdc1c28189c28b3e777a519cd31f', '668', '1', '26', '4', '68:df:dd:a0:66:c7', '2015-07-27', '2', '1437965810', '192.168.2.252', '0', null, '1437965870', '1437965846', '1437965846', '13666', null, null);
INSERT INTO `wifi_authlist` VALUES ('238', 'dc125b7dd0a8638eb120a5d0cc709d5f', '669', '1', '26', '5', '68:df:dd:a0:66:c7', '2015-07-27', '1', '1437965893', '192.168.2.252', '0', null, '1437965953', '1437965894', '1437965894', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('239', '18f790f2254934b7f368e886c04329b2', '670', '1', '26', '3', 'd4:97:0b:97:b9:ba', '2015-07-27', '1', '1437965987', '192.168.2.181', '0', null, '1437966275', '1437965988', '1437965988', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('240', '37b66ecd59def472a054badcc97973e3', '671', '1', '26', '3', 'd4:97:0b:97:b9:ba', '2015-07-27', '3', '1437966157', '192.168.2.181', '0', null, '1437966287', '1437966170', '1437966170', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('241', '014a17f29cfb6cc3dcffdb130a6c4a2a', '672', '1', '26', '3', 'd4:97:0b:97:b9:ba', '2015-07-27', '3', '1437966173', '192.168.2.181', '0', null, '1437966308', '1437966206', '1437966206', '2218', null, null);
INSERT INTO `wifi_authlist` VALUES ('242', '60ad9f726027586565f8040bc71da54c', '673', '1', '26', '3', 'd4:97:0b:97:b9:ba', '2015-07-27', '3', '1437966211', '192.168.2.181', '0', null, '1437966356', '1437966239', '1437966239', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('243', '02ec1e4a12a57b118659f73baa197bc4', '674', '1', '26', '3', 'd4:97:0b:97:b9:ba', '2015-07-27', '2', '1437966253', '192.168.2.181', '0', null, '1437966565', '1437966447', '1437966447', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('244', 'eb9a166d933e713da8a64d0e918a235f', '675', '1', '26', '4', null, '2015-07-27', '0', '1437966450', null, '0', null, '1437966510', '1437966450', '1437966450', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('245', '26c3b18da312f23f26deef1835e145f5', '676', '1', '26', '4', 'd4:97:0b:97:b9:ba', '2015-07-27', '1', '1437966451', '192.168.2.181', '0', null, '1437966511', '1437966452', '1437966452', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('246', 'a9389493c366334d609358abec8918d8', '677', '1', '26', '1', 'e0:b5:2d:74:49:5f', '2015-07-27', '2', '1437968230', '192.168.2.253', '0', '0', '1437968350', '1437968240', '1437968240', '6239', null, null);
INSERT INTO `wifi_authlist` VALUES ('247', 'e178ac18e2ded2c09df0157bad260e73', '678', '1', '26', '1', null, '2015-07-27', '0', '1437969619', null, '0', '0', '1437969739', '1437969619', '1437969619', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('248', '186a5163b4ddf249e78dd88934d499ed', '678', '1', '26', '1', 'd4:97:0b:97:b9:ba', '2015-07-27', '2', '1437969680', '192.168.2.181', '0', '0', '1437969800', '1437969799', '1437969799', '1319794', null, null);
INSERT INTO `wifi_authlist` VALUES ('249', '9350c3e9187c0254f79cebcb97042b93', '678', '1', '26', '1', null, '2015-07-27', '0', '1437977787', null, '0', '0', '1437977907', '1437977787', '1437977787', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('250', 'fcc0254be936d1b23c26fb21799c9d8a', '678', '1', '26', '1', null, '2015-07-27', '0', '1437977854', null, '0', '0', '1437977974', '1437977854', '1437977854', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('251', '7378368b6beb0c8eb34351f644058b30', '678', '1', '26', '1', null, '2015-07-27', '0', '1437977936', null, '0', '0', '1437978056', '1437977936', '1437977936', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('252', '3ca42bb3097a56e9302d9ade4c066db8', '679', '1', '26', '1', '68:df:dd:a0:66:c7', '2015-07-27', '2', '1437985233', '192.168.2.252', '0', '0', '1437985353', '1437985353', '1437985353', '515878', null, null);
INSERT INTO `wifi_authlist` VALUES ('253', 'f25d5cd3afac63e208adb5b691a618a4', '678', '1', '26', '1', null, '2015-07-27', '0', '1437986794', null, '0', '0', '1437986914', '1437986794', '1437986794', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('254', '1e088c57e27e5631d9672a883a5c1cb7', '678', '1', '26', '1', null, '2015-07-27', '0', '1437986913', null, '0', '0', '1437987033', '1437986913', '1437986913', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('255', '045660fecafaf134736b6c7e2bef004f', '678', '1', '26', '1', null, '2015-07-27', '0', '1437988743', null, '0', '0', '1437988863', '1437988743', '1437988743', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('256', '420f258fa52e3157e8eca067b6905e6f', '680', '1', '26', '1', null, '2015-07-27', '0', '1437989728', null, '0', '0', '1437989848', '1437989728', '1437989728', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('257', 'bc3a5d62727afe41ff4ef8c76fc61d46', '678', '1', '26', '1', null, '2015-07-27', '0', '1437989803', null, '0', '0', '1437989923', '1437989803', '1437989803', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('258', '195597caf4ead13c6ccf264ed3851e20', '681', '1', '26', '1', 'c8:6f:1d:a9:8f:a8', '2015-07-27', '2', '1437990313', '192.168.2.30', '0', '0', '1437990433', '1437990380', '1437990380', '31242492', null, null);
INSERT INTO `wifi_authlist` VALUES ('259', '8f5531e9b1c0e3da428c1aded3c168cb', '678', '1', '26', '1', 'd4:97:0b:97:b9:ba', '2015-07-27', '2', '1437991574', '192.168.2.181', '0', '0', '1437991694', '1437991691', '1437991691', '142914', null, null);
INSERT INTO `wifi_authlist` VALUES ('260', '4ed3160c1443aa05f895c1c8597a1931', '682', '1', '26', '1', '80:96:b1:3b:1f:1a', '2015-07-28', '2', '1438043396', '192.168.2.54', '0', '0', '1438043516', '1438043505', '1438043505', '535340', null, null);
INSERT INTO `wifi_authlist` VALUES ('261', '6956c5be5e39eda9ac2c407261fc8db2', '683', '1', '26', '1', null, '2015-07-28', '0', '1438053688', null, '0', '0', '1438053808', '1438053688', '1438053688', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('262', '3d6e3e8adb29a0b41b45cfb698900a45', '684', '1', '26', '1', '88:1f:a1:6e:d8:23', '2015-07-28', '3', '1438064559', '192.168.2.139', '0', '0', '1438064679', '1438064615', '1438064615', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('263', '99194309bf6ee33cf88932ee6bf47452', '685', null, null, '4', null, '2015-07-29', '0', '1438109129', null, '0', null, '1438109129', '1438109129', '1438109129', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('264', 'b25cfdce94d261acf93af250d241c15b', '686', null, null, '4', null, '2015-07-29', '0', '1438109130', null, '0', null, '1438109130', '1438109130', '1438109130', '0', null, null);
INSERT INTO `wifi_authlist` VALUES ('265', '917a7a17cbfd7a639172555d9314838c', '687', '1', '26', '1', '80:96:b1:3b:1f:1a', '2015-07-29', '2', '1438130928', '192.168.2.54', '0', '0', '1438131048', '1438131034', '1438131034', '367059', null, null);
INSERT INTO `wifi_authlist` VALUES ('266', '5ed5259fe7f305a7754e8263204beadc', '688', '1', '26', '1', '44:4c:0c:ae:3a:dc', '2015-07-29', '2', '1438148745', '192.168.2.141', '0', '0', '1438148865', '1438148769', '1438148769', '335611', null, null);
INSERT INTO `wifi_authlist` VALUES ('267', '0c11519746ea2a96833874ca4fd1c9bd', '689', '1', '26', '1', '28:e3:1f:71:51:f7', '2015-07-29', '2', '1438156805', '192.168.2.212', '0', '0', '1438156925', '1438156909', '1438156909', '1622972', null, null);
INSERT INTO `wifi_authlist` VALUES ('268', 'f8673460abab4a082062de8cd550e105', '690', '11', '27', '1', 'e0:b5:2d:74:49:5f', '2015-08-04', '9', '1438678821', '192.168.2.252', '0', '0', '', '1438679787', '1438679787', '433188', null, null);
INSERT INTO `wifi_authlist` VALUES ('269', '6adc57f6df27b276cfb222e538a3ef85', '691', '11', '27', '1', '68:df:dd:a0:66:c7', '2015-08-04', '61', '1438678962', '192.168.2.253', '0', '0', '', '1438685772', '1438685772', '6468013', null, null);

-- ----------------------------
-- Table structure for `wifi_authtpl`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_authtpl`;
CREATE TABLE `wifi_authtpl` (
  `id` int(4) NOT NULL,
  `tpname` varchar(10) DEFAULT NULL COMMENT '模板名称',
  `keyname` varchar(30) DEFAULT NULL COMMENT '关键字名称',
  `info` varchar(100) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `shopid` int(11) DEFAULT '0' COMMENT '关联商户ID',
  `state` tinyint(1) DEFAULT NULL,
  `group` smallint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_authtpl
-- ----------------------------
INSERT INTO `wifi_authtpl` VALUES ('1001', '默认模板', 'default', null, 'default.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1002', '默认模板2', 'wifiadv', null, 'wifiadv.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1003', '默认模板3', 'wifiadv2', null, 'wifiadv2.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1004', '默认模板4', 'wifiadv3', null, 'wifiadv3.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1005', '默认模板5', 'wifiadv4', null, 'wifiadv4.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1006', '默认模板6', 'newadv', null, 'newadv.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1007', '默认模板7', 'wood', null, 'wood.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1008', '默认模板8', 'bright', null, 'bright.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1009', '默认模板9', 'newyear', null, 'newyear.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1010', '划屏模板', 'huaping', null, 'huaping.jpg', null, '1', '1');
INSERT INTO `wifi_authtpl` VALUES ('1011', '倒计时模板', 'jishi', null, 'jishi.jpg', null, '1', '1');

-- ----------------------------
-- Table structure for `wifi_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_blacklist`;
CREATE TABLE `wifi_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mac` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  `wxopenid` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mac` (`mac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wifi_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_buttonset`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_buttonset`;
CREATE TABLE `wifi_buttonset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `keyname` varchar(50) DEFAULT NULL COMMENT '关键字',
  `eflag` tinyint(1) DEFAULT '0' COMMENT '启用标志 1:启用',
  `icopath` varchar(100) DEFAULT NULL COMMENT '图标路径',
  `fontcolor` varchar(10) DEFAULT NULL COMMENT '字体颜色',
  `bgcolor` varchar(10) DEFAULT NULL COMMENT '背景色',
  `extstyle` varchar(200) DEFAULT NULL COMMENT '扩展css',
  `sort` int(3) DEFAULT NULL COMMENT '按钮排序',
  `add_time` varchar(15) DEFAULT NULL,
  `update_time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_buttonset
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_comment`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_comment`;
CREATE TABLE `wifi_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `routeid` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_day`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_day`;
CREATE TABLE `wifi_day` (
  `id` int(11) NOT NULL,
  `tname` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_day
-- ----------------------------
INSERT INTO `wifi_day` VALUES ('0', '00');
INSERT INTO `wifi_day` VALUES ('1', '01');
INSERT INTO `wifi_day` VALUES ('2', '02');
INSERT INTO `wifi_day` VALUES ('3', '03');
INSERT INTO `wifi_day` VALUES ('4', '04');
INSERT INTO `wifi_day` VALUES ('5', '05');
INSERT INTO `wifi_day` VALUES ('6', '06');
INSERT INTO `wifi_day` VALUES ('7', '07');
INSERT INTO `wifi_day` VALUES ('8', '08');
INSERT INTO `wifi_day` VALUES ('9', '09');
INSERT INTO `wifi_day` VALUES ('10', '10');
INSERT INTO `wifi_day` VALUES ('11', '11');
INSERT INTO `wifi_day` VALUES ('12', '12');
INSERT INTO `wifi_day` VALUES ('13', '13');
INSERT INTO `wifi_day` VALUES ('14', '14');
INSERT INTO `wifi_day` VALUES ('15', '15');
INSERT INTO `wifi_day` VALUES ('16', '16');
INSERT INTO `wifi_day` VALUES ('17', '17');
INSERT INTO `wifi_day` VALUES ('18', '18');
INSERT INTO `wifi_day` VALUES ('19', '19');
INSERT INTO `wifi_day` VALUES ('20', '20');
INSERT INTO `wifi_day` VALUES ('21', '21');
INSERT INTO `wifi_day` VALUES ('22', '22');
INSERT INTO `wifi_day` VALUES ('23', '23');
INSERT INTO `wifi_day` VALUES ('24', '24');
INSERT INTO `wifi_day` VALUES ('25', '25');
INSERT INTO `wifi_day` VALUES ('26', '26');
INSERT INTO `wifi_day` VALUES ('27', '27');
INSERT INTO `wifi_day` VALUES ('28', '28');
INSERT INTO `wifi_day` VALUES ('29', '29');
INSERT INTO `wifi_day` VALUES ('30', '30');
INSERT INTO `wifi_day` VALUES ('31', '31');

-- ----------------------------
-- Table structure for `wifi_hours`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_hours`;
CREATE TABLE `wifi_hours` (
  `t` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_hours
-- ----------------------------
INSERT INTO `wifi_hours` VALUES ('01');
INSERT INTO `wifi_hours` VALUES ('02');
INSERT INTO `wifi_hours` VALUES ('03');
INSERT INTO `wifi_hours` VALUES ('04');
INSERT INTO `wifi_hours` VALUES ('05');
INSERT INTO `wifi_hours` VALUES ('06');
INSERT INTO `wifi_hours` VALUES ('07');
INSERT INTO `wifi_hours` VALUES ('08');
INSERT INTO `wifi_hours` VALUES ('09');
INSERT INTO `wifi_hours` VALUES ('10');
INSERT INTO `wifi_hours` VALUES ('11');
INSERT INTO `wifi_hours` VALUES ('12');
INSERT INTO `wifi_hours` VALUES ('13');
INSERT INTO `wifi_hours` VALUES ('14');
INSERT INTO `wifi_hours` VALUES ('15');
INSERT INTO `wifi_hours` VALUES ('16');
INSERT INTO `wifi_hours` VALUES ('17');
INSERT INTO `wifi_hours` VALUES ('18');
INSERT INTO `wifi_hours` VALUES ('19');
INSERT INTO `wifi_hours` VALUES ('20');
INSERT INTO `wifi_hours` VALUES ('21');
INSERT INTO `wifi_hours` VALUES ('22');
INSERT INTO `wifi_hours` VALUES ('23');
INSERT INTO `wifi_hours` VALUES ('24');

-- ----------------------------
-- Table structure for `wifi_join`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_join`;
CREATE TABLE `wifi_join` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(500) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_join
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_member`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_member`;
CREATE TABLE `wifi_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT '帐号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `mode` varchar(10) DEFAULT NULL COMMENT '认证模式 根据认证表ID 注册认证，手机认证，qq认证，微博认证等',
  `shopid` int(11) DEFAULT NULL COMMENT '帐号ID',
  `routeid` int(11) DEFAULT NULL COMMENT '路由ID',
  `token` varchar(100) DEFAULT NULL COMMENT '使用口令',
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL COMMENT 'mac地址',
  `login_time` varchar(30) DEFAULT NULL COMMENT '路由登录时间',
  `login_count` int(11) DEFAULT '0' COMMENT '路由登录次数',
  `login_ip` varchar(50) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `online_time` varchar(255) DEFAULT NULL COMMENT '在线有效期',
  `add_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_token` (`token`) USING BTREE,
  KEY `index_shop` (`shopid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=692 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_member
-- ----------------------------
INSERT INTO `wifi_member` VALUES ('440', '544a1c03e054e', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '2995aab6e58432118f2ea5b6c4487071', '13888888888', null, 'c4:6a:b7:db:d0:ad', '1414142979', '0', null, '1414142979', '1414142979', 'Safari', '1414145979', '2014-10-24');
INSERT INTO `wifi_member` VALUES ('441', '55acab833fe1f', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'cab81dfeb9fc3231347178a274309e7c', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437379459', '0', null, '1437379459', '1437379459', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('442', '55acab9169801', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'eb5e46e571b751a9a9feed13ef9951c5', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437379473', '0', null, '1437379473', '1437379473', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('443', '55acabbf0f173', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'd75ebc800f8c606372330035beb2a91d', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437379519', '0', null, '1437379519', '1437379519', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('444', '55acac1ad01dd', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'edbb2fddf939931f8d05f836d17d8033', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437379610', '0', null, '1437379610', '1437379610', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('445', '55acac4ff2b56', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '5161af44749d3ef380a9df6c682b9eba', '1399999999', null, '68:df:dd:a0:66:c7', '1437379663', '0', null, '1437379663', '1437379663', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('446', '55acac910115a', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '0fc621950c6ea0b225b4eb36480178fb', '1399999999', null, '68:df:dd:a0:66:c7', '1437379729', '0', null, '1437379729', '1437379729', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('447', '55acacf0ab424', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '6b7a5d3913c340fc3d3697cb19077c6a', '1399999999', null, '0c:1d:af:5c:1e:61', '1437379824', '0', null, '1437379824', '1437379824', '0', '', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('448', '55acb249a85b6', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '229896baf122c3b11a0114dd4615f4a7', '1399999999', null, '68:df:dd:a0:66:c7', '1437381193', '0', null, '1437381193', '1437381193', '0', '1437381493', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('449', '55acb2f386e6e', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '95c0bf30fe5c7d10dd28def8327e7588', '1399999999', null, '68:df:dd:a0:66:c7', '1437381363', '0', null, '1437381363', '1437381363', '0', '1437381663', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('450', '55acb34143345', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'b8302895804e647a1d8388e571429fc1', '1399999999', null, '0c:1d:af:5c:1e:61', '1437381441', '0', null, '1437381441', '1437381441', '0', '1437381741', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('451', '55acb39ce2229', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '5a378885655b95e8986c9c065507a32f', '1399999999', null, 'e0:b5:2d:74:49:5f', '1437381532', '0', null, '1437381532', '1437381532', '0', '1437381832', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('452', '55acbd11cdea4', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'eb303b9fbdd9b3ea47384ed644916494', '1399999999', null, '68:df:dd:a0:66:c7', '1437383953', '0', null, '1437383953', '1437383953', '0', '1437384253', '2015-07-20');
INSERT INTO `wifi_member` VALUES ('453', '55adcf40d70f6', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '022f2d933b839d54eb15f6f3c3d09d4d', '13888888888', null, null, '1437454144', '0', null, '1437454144', '1437454144', '0', '1437454444', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('454', '55add14a621e1', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '7e244798c96d563fd5372e2289ceeaf3', '13888888888', null, '68:df:dd:a0:66:c7', '1437454666', '0', '192.168.2.252', '1437454666', '1437454666', '0', '1437454976', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('455', '55add245385c8', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '2a08d68add12a1f7ec6d03763b157e4c', '13888888888', null, null, '1437454917', '0', null, '1437454917', '1437454917', '0', '1437455217', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('456', '55add3b061acb', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '096293731f04dc6f6fd824b57c3fdb94', '13666666666', null, '68:df:dd:a0:66:c7', '1437455280', '0', null, '1437455280', '1437455280', '0', '1437455880', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('457', '55ade8f33d702', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '52dd2043f44e87e1e22c25c0d7ead2b5', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437460723', '0', null, '1437460723', '1437460723', '0', '1437461023', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('458', '55ade90508700', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '3427f4767f0692a39196a05dd951289c', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437460741', '0', null, '1437460741', '1437460741', '0', '1437461041', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('459', '55adea046c585', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '11bc2d4bd76b39f77cb5be1cfd4f141f', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437460996', '0', null, '1437460996', '1437460996', '0', '1437461296', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('460', '55adea34cf811', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'ef17e5f8a22c065af1e3b89dcb84e722', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437461044', '0', null, '1437461044', '1437461044', '0', '1437461344', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('461', '55adeb55bc844', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '27aaa99b66a79d55d8098eaece8f68d8', '13888888888', null, '68:df:dd:a0:66:c7', '1437461333', '0', '192.168.2.252', '1437461333', '1437461333', '0', '1437461638', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('462', '55adeb69ed94f', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'f7364b17bcebd9c2d63925ac3d2609ba', '13666666666', null, '68:df:dd:a0:66:c7', '1437461353', '0', '192.168.2.252', '1437461353', '1437461353', '0', '1437461953', '2015-07-21');
INSERT INTO `wifi_member` VALUES ('463', '55b0c2c871c8b', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '93c84db2c86090915f64235c88e5bb30', '13666666666', null, '38:bc:1a:54:5d:a4', '1437647560', '0', '192.168.2.65', '1437647560', '1437647560', '0', '1437648160', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('464', '55b0c2ce702bd', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '230d4730b036f5ebe4a59cfc2f3a5983', '13666666666', null, '38:bc:1a:54:5d:a4', '1437647566', '0', '192.168.2.65', '1437647566', '1437647566', '0', '1437648166', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('465', '55b0c2d0933d2', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '7ea7601e267f29e5b08cd5fe4e4a6f3a', '13666666666', null, '38:bc:1a:54:5d:a4', '1437647568', '0', null, '1437647568', '1437647568', '0', '1437648168', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('466', '55b0c6eb19f4f', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'f26e1fccccbb600b0769e65c6ef0240a', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648619', '0', '192.168.2.65', '1437648619', '1437648619', '0', '1437649219', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('467', '55b0c71999f26', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'c84f84f3412edafb7240a75fa5196860', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648665', '0', '192.168.2.65', '1437648665', '1437648665', '0', '1437649265', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('468', '55b0c71b13bb1', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '747f8c034b187540335636135f953cb3', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648667', '0', null, '1437648667', '1437648667', '0', '1437649267', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('469', '55b0c734f35f3', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'dba7944bb30188bc2eb21b6efb808c88', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648692', '0', '192.168.2.65', '1437648692', '1437648692', '0', '1437649292', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('470', '55b0c73743ead', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '0ffcbbd2a7836d4a9725e335af7ed6cb', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648695', '0', null, '1437648695', '1437648695', '0', '1437649295', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('471', '55b0c7a0125ae', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '51849fb25e7c66aa1a33a9096d87a61f', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648800', '0', '192.168.2.65', '1437648800', '1437648800', '0', '1437649400', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('472', '55b0c7d749b58', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '9492f6c972027075ac3b0b930e5a7740', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648855', '0', '192.168.2.65', '1437648855', '1437648855', '0', '1437649455', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('473', '55b0c7d889daf', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'bddbf6bf5967e55d13ee0ef3fcb611ab', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648856', '0', '192.168.2.65', '1437648856', '1437648856', '0', '1437649456', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('474', '55b0c7e701da9', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '58cc0afca72e6454f7e2e7b63c96272c', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648871', '0', '192.168.2.65', '1437648871', '1437648871', '0', '1437649471', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('475', '55b0c7fab49d4', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '1cc6f1344879ee67cc310f60aec86e53', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648890', '0', '192.168.2.65', '1437648890', '1437648890', '0', '1437649490', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('476', '55b0c7fd26c72', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '5907f1ce63fe441580ebd6868aed2eba', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648893', '0', '192.168.2.65', '1437648893', '1437648893', '0', '1437649493', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('477', '55b0c81b6a88c', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'b7848f9c73615ce83be1cafb9beccb33', '13666666666', null, '38:bc:1a:54:5d:a4', '1437648923', '0', '192.168.2.65', '1437648923', '1437648923', '0', '1437649523', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('478', '55b0c9c0de8ac', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '115155fd1e851d1481def868ccf44da2', '13666666666', null, '68:df:dd:a0:66:c7', '1437649344', '0', '192.168.2.252', '1437649344', '1437649344', '0', '1437649944', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('479', '55b0c9e1404c0', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'ad9e29de35d58ecd20a0d47a6665df22', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649377', '0', '192.168.2.65', '1437649377', '1437649377', '0', '1437649977', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('480', '55b0c9fad6069', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'a048a0c650059d5315760eacb31802ac', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649402', '0', '192.168.2.65', '1437649402', '1437649402', '0', '1437650002', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('481', '55b0ca0902eb5', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'ecb4d0a61f632c2213e35da434b37484', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649417', '0', '192.168.2.65', '1437649417', '1437649417', '0', '1437650017', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('482', '55b0ca0b51247', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '00d26e02935fbe79cd52c6439ab2ba65', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649419', '0', '192.168.2.65', '1437649419', '1437649419', '0', '1437650019', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('483', '55b0ca132ea53', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'add22536d6537b062bda8709358f2e49', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649427', '0', '192.168.2.65', '1437649427', '1437649427', '0', '1437650027', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('484', '55b0ca2db1c93', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '120d3165aee36a2df8ebd10bf6c9e630', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649453', '0', '192.168.2.65', '1437649453', '1437649453', '0', '1437650053', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('485', '55b0ca305459b', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '4fd912cf2eb974065ca673018db9f3f4', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649456', '0', '192.168.2.65', '1437649456', '1437649456', '0', '1437650056', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('486', '55b0ca329d910', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'c21328d344fb3f3408958794602821e9', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649458', '0', '192.168.2.65', '1437649458', '1437649458', '0', '1437650058', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('487', '55b0ca3506316', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'd3dea7325ce56d6bd577028028af3eb5', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649461', '0', '192.168.2.65', '1437649461', '1437649461', '0', '1437650061', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('488', '55b0ca38d6d86', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '35f685e5e4fd55ee1a817c9bcd7222b9', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649464', '0', '192.168.2.65', '1437649464', '1437649464', '0', '1437650064', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('489', '55b0ca4d990d0', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '2b29c693ab6b0474d5ef36fa3826e748', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649485', '0', '192.168.2.65', '1437649485', '1437649485', '0', '1437650085', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('490', '55b0ca591f16a', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '2f6de39da935a42334f903baab0fa76c', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649497', '0', '192.168.2.65', '1437649497', '1437649497', '0', '1437650097', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('491', '55b0ca5baf1e1', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'f94d05f6bc4f6aa866f20fdbc9c3ea9a', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649499', '0', '192.168.2.65', '1437649499', '1437649499', '0', '1437650099', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('492', '55b0ca61cc431', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '218db7b67351d5938c406bcd062ace8b', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649505', '0', null, '1437649505', '1437649505', '0', '1437650105', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('493', '55b0ca64152d7', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '66841fb29ca9e1ec30bc173a8ccd107e', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649508', '0', '192.168.2.65', '1437649508', '1437649508', '0', '1437650108', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('494', '55b0ca681ec09', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'f6281eb62a4ae63d1fe11e523a333eef', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649512', '0', '192.168.2.65', '1437649512', '1437649512', '0', '1437650112', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('495', '55b0ca79f3d3d', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '7100bd3d55a51e815c5a9884f107ddb6', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649529', '0', '192.168.2.65', '1437649529', '1437649529', '0', '1437650129', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('496', '55b0ca7c4d6ee', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'f24b8661119d310f473d33fac44b20b9', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649532', '0', '192.168.2.65', '1437649532', '1437649532', '0', '1437650132', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('497', '55b0ca7ea4f47', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'b7f9dbafd1d4b206bedfbb6720e190d4', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649534', '0', null, '1437649534', '1437649534', '0', '1437650134', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('498', '55b0ca8188221', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'a59187bda081ba375fca7991cf5a32fd', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649537', '0', '192.168.2.65', '1437649537', '1437649537', '0', '1437650137', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('499', '55b0ca8c26011', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'acbe6b2653d885740fa2131ca7eeff68', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649548', '0', null, '1437649548', '1437649548', '0', '1437650148', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('500', '55b0ca99acd67', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '850299682737e5d98cfc3ff076fe50a2', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649561', '0', '192.168.2.65', '1437649561', '1437649561', '0', '1437650161', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('501', '55b0ca9c71f96', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'a87adcb26307cdd52a54b10d3d55d5f4', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649564', '0', '192.168.2.65', '1437649564', '1437649564', '0', '1437650164', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('502', '55b0caa3e4f64', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '1a1243a122f55e224be5a76b1c73bade', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649571', '0', '192.168.2.65', '1437649571', '1437649571', '0', '1437650171', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('503', '55b0caa687c3c', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '6269fa24e64cb5b0a3c4d6fa13ed37c6', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649574', '0', '192.168.2.65', '1437649574', '1437649574', '0', '1437650174', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('504', '55b0caa8e29fe', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'cd5e5246063c624ffa412ad6c5561dcd', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649576', '0', '192.168.2.65', '1437649576', '1437649576', '0', '1437650176', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('505', '55b0cbca8672f', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '22258202e4fc8c1f02dff6dff6748943', '13666666666', null, '38:bc:1a:54:5d:a4', '1437649866', '0', '192.168.2.65', '1437649866', '1437649866', '0', '1437650466', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('506', '55b0ccc5e2366', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '7f7385ff778703506e454f85f31d1135', '13666666666', null, '38:bc:1a:54:5d:a4', '1437650117', '0', '192.168.2.65', '1437650117', '1437650117', '0', '1437650717', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('507', '55b0ccc883d2c', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '0edd7437451903380499c02e13fe2d39', '13666666666', null, '38:bc:1a:54:5d:a4', '1437650120', '0', null, '1437650120', '1437650120', '0', '1437650720', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('508', '55b0ccce4b5f4', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '5e51f203c42e219f5e8e34a29a17f50d', '13666666666', null, '38:bc:1a:54:5d:a4', '1437650126', '0', '192.168.2.65', '1437650126', '1437650126', '0', '1437650726', '2015-07-23');
INSERT INTO `wifi_member` VALUES ('509', '55b1ee40f273e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'ca32befba3dbfb66d0b400609322c643', '13666666666', null, '38:bc:1a:54:5d:a4', '1437724224', '0', null, '1437724224', '1437724224', '0', '1437724824', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('510', '55b1ee4652862', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '7c876a6c5fc6a61c150aa5669a4fbaba', '13666666666', null, '38:bc:1a:54:5d:a4', '1437724230', '0', '192.168.2.65', '1437724230', '1437724230', '0', '1437724830', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('511', '55b1ee4be7969', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '12592bb4ba55a3979ba6d8db10f40a4a', '13666666666', null, '38:bc:1a:54:5d:a4', '1437724235', '0', '192.168.2.65', '1437724235', '1437724235', '0', '1437724835', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('512', '55b1fa82da39a', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '2d1cd94f84cf1b3223b063d8878ea40d', '13888888888', null, '68:df:dd:a0:66:c7', '1437727362', '0', '192.168.2.252', '1437727362', '1437727362', '0', '1437728587', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('513', '55b1fe2e26710', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', 'fb5256036f8b20e7fd408d9649654afb', '13888888888', null, '68:df:dd:a0:66:c7', '1437728302', '0', '192.168.2.252', '1437728302', '1437728302', '0', '1437728606', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('514', '55b1fed8ed741', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'fcc36ccb4bae394d4e3cd8f67ac34c19', '13666666666', null, '68:df:dd:a0:66:c7', '1437728472', '0', '192.168.2.252', '1437728472', '1437728472', '0', '1437729072', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('515', '55b1feec08c01', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', 'd35f30ee38dbe2ed4b7fdba16fa25879', '13888888888', null, '68:df:dd:a0:66:c7', '1437728492', '0', '192.168.2.252', '1437728492', '1437728492', '0', '1437728824', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('516', '55b1ff104b21d', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'fd64ff3cf1858926e8c52766649b0691', '13666666666', null, '68:df:dd:a0:66:c7', '1437728528', '0', '192.168.2.252', '1437728528', '1437728528', '0', '1437729128', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('517', '55b1ff30e574e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'b49bd6d939326adf5c34569239174de7', '13666666666', null, '68:df:dd:a0:66:c7', '1437728560', '0', '192.168.2.252', '1437728560', '1437728560', '0', '1437729160', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('518', '55b1ff3c8b347', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '8dd10cb306d9a6af35a7d6136eb4c69b', '13666666666', null, '68:df:dd:a0:66:c7', '1437728572', '0', '192.168.2.252', '1437728572', '1437728572', '0', '1437729172', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('519', '55b201b961bac', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '51c58c5e393b7c27a9628a7c55487734', '13666666666', null, '68:df:dd:a0:66:c7', '1437729209', '0', '192.168.2.252', '1437729209', '1437729209', '0', '1437729809', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('520', '55b2069f86ff6', 'e10adc3949ba59abbe56e057f20f883e', '2', null, null, '7902a8f629839ee01e4502b68991a627', '1399999999', null, null, '1437730463', '0', null, '1437730463', '1437730463', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('521', '55b206b583269', 'e10adc3949ba59abbe56e057f20f883e', '2', null, null, '537a5e326d18f8c0de1d1ec86eebe198', '1399999999', null, null, '1437730485', '0', null, '1437730485', '1437730485', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('522', '55b206b64975e', 'e10adc3949ba59abbe56e057f20f883e', '2', null, null, 'ce1c9e82823fe795bf991286325e9ebd', '1399999999', null, null, '1437730486', '0', null, '1437730486', '1437730486', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('523', '55b2075de63e1', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '67a98e2f2ce2d39d4c18c9ee73dcce0a', '13666666666', null, '0c:1d:af:5c:1e:61', '1437730653', '0', '192.168.2.72', '1437730653', '1437730653', '0', '1437731253', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('524', '55b2076009b9a', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'f419b228dd30fcc80a360ae76ce2cf66', '1399999999', null, '0c:1d:af:5c:1e:61', '1437730656', '0', null, '1437730656', '1437730656', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('525', '55b207643ae0f', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '48231bb2f337eb616573333c7ecaa554', '13666666666', null, '0c:1d:af:5c:1e:61', '1437730660', '0', '192.168.2.72', '1437730660', '1437730660', '0', '1437731260', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('526', '55b20765a29aa', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'ca9a598f9f3b8f01be93e4536304cae3', '1399999999', null, '0c:1d:af:5c:1e:61', '1437730661', '0', null, '1437730661', '1437730661', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('527', '55b207c5b20c5', 'e10adc3949ba59abbe56e057f20f883e', '2', null, null, '05ace522a02da828cfa5bf112516298e', '1399999999', null, null, '1437730757', '0', null, '1437730757', '1437730757', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('528', '55b20937d5f17', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '93d56a5f0e7659bd2e38ca2539c3ceb3', '13888888888', null, '68:df:dd:a0:66:c7', '1437731127', '0', '192.168.2.252', '1437731127', '1437731127', '0', '1437731464', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('529', '55b209394f401', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'f3ca41d5ef8bfa0e05b120c4d56cc012', '1399999999', null, '68:df:dd:a0:66:c7', '1437731129', '0', null, '1437731129', '1437731129', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('530', '55b2095ccf232', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '70c6499e366d0090af663dd3809c92b7', '1399999999', null, '68:df:dd:a0:66:c7', '1437731164', '0', null, '1437731164', '1437731164', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('531', '55b209d3ccad2', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '305c8959f3975acdbb6bad41e2def0d9', '13888888888', null, '68:df:dd:a0:66:c7', '1437731283', '0', '192.168.2.252', '1437731283', '1437731283', '0', '1437731826', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('532', '55b20a16a6e55', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'a08a01455d9297a716814776c38ddca7', '13666666666', null, '68:df:dd:a0:66:c7', '1437731350', '0', '192.168.2.252', '1437731350', '1437731350', '0', '1437731950', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('533', '55b20a18252c5', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'a45425e22e536909cc9c99b46b1fc21e', '1399999999', null, '68:df:dd:a0:66:c7', '1437731352', '0', '192.168.2.252', '1437731352', '1437731352', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('534', '55b20a55b844b', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '56ed35895fbc052e02fada58d7aa7d67', '1399999999', null, '68:df:dd:a0:66:c7', '1437731413', '0', null, '1437731413', '1437731413', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('535', '55b20ac6dafa8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '00e095d333996a99779a25fedef0d071', '1399999999', null, '68:df:dd:a0:66:c7', '1437731526', '0', null, '1437731526', '1437731526', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('536', '55b20e20066d2', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '0c4a337ed13c91ee3161272932e24b74', '13666666666', null, '68:df:dd:a0:66:c7', '1437732384', '0', '192.168.2.252', '1437732384', '1437732384', '0', '1437732984', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('537', '55b20e215ad6d', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'ba8440da1f1a204d55820254df59bf24', '1399999999', null, '68:df:dd:a0:66:c7', '1437732385', '0', null, '1437732385', '1437732385', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('538', '55b20ecc2cc1b', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'b986f2c2a44b6529210f0fa8837a551a', '13666666666', null, '38:bc:1a:54:5d:a4', '1437732556', '0', '192.168.2.65', '1437732556', '1437732556', '0', '1437733156', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('539', '55b20ecd75f6a', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '3fae803de5a0fd7f7303f1f5760e6cae', '1399999999', null, '38:bc:1a:54:5d:a4', '1437732557', '0', null, '1437732557', '1437732557', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('540', '55b212c160749', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '95ceedba4c1bb0641611b28511c39e4f', '13666666666', null, '38:bc:1a:54:5d:a4', '1437733569', '0', null, '1437733569', '1437733569', '0', '1437734169', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('541', '55b212c54cb40', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '5c6db7c140223abf1b8e9ecf5cbf2257', '13666666666', null, '38:bc:1a:54:5d:a4', '1437733573', '0', '192.168.2.65', '1437733573', '1437733573', '0', '1437734173', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('542', '55b212c697943', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '40e851e3c6ca5f61c7801d52ba7a2cd4', '1399999999', null, '38:bc:1a:54:5d:a4', '1437733574', '0', null, '1437733574', '1437733574', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('543', '55b217d9b5299', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '2bb4fb8a3e604b2201d2bc03272fc7c2', '13666666666', null, '38:bc:1a:54:5d:a4', '1437734873', '0', '192.168.2.65', '1437734873', '1437734873', '0', '1437735473', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('544', '55b217e2321c8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '42fb5e3c2f00f81838d5f6386f118a35', '1399999999', null, '38:bc:1a:54:5d:a4', '1437734882', '0', null, '1437734882', '1437734882', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('545', '13333333333', '34347c343003e57232a5d21f14fe399e', '1', '1', '22', '1753506131f31fccb160a266f23e4fd5', '13333333333', null, '68:df:dd:a0:66:c7', '1437797321', '0', null, '1437735058', '1437797321', '0', '1437797441', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('546', '55b219dd3a70e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '65ead5a0b814b7a5a4f94b607ff5cccf', '13666666666', null, '38:bc:1a:54:5d:a4', '1437735389', '0', '192.168.2.65', '1437735389', '1437735389', '0', '1437735989', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('547', '55b219e3e9fae', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '3c2e18c483d4966f7a5cd17e1cf4a9fb', '1399999999', null, '38:bc:1a:54:5d:a4', '1437735395', '0', null, '1437735395', '1437735395', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('548', '55b2245bc14c8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '982d7f00a6e9447be89c59955b029e2a', '1399999999', null, '38:bc:1a:54:5d:a4', '1437738075', '0', null, '1437738075', '1437738075', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('549', '55b226b07bca8', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'ad17126a150e31d9cbc19c84ddd515c0', '13666666666', null, '0c:1d:af:5c:1e:61', '1437738672', '0', null, '1437738672', '1437738672', '0', '1437739272', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('550', '55b231d8ae68b', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'eff9054ba7caaea0356096e1a9186be0', '13666666666', null, '68:df:dd:a0:66:c7', '1437741528', '0', '192.168.2.65', '1437741528', '1437741528', '0', '1437742128', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('551', '55b231da074a3', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '52b32fb1f1bfbcdac8dd65ec654b80e0', '1399999999', null, '68:df:dd:a0:66:c7', '1437741530', '0', null, '1437741530', '1437741530', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('552', '55b231e2925e4', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '2b00f2990f24624fac22a2d7d7f9b35c', '13666666666', null, '68:df:dd:a0:66:c7', '1437741538', '0', null, '1437741538', '1437741538', '0', '1437742138', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('553', '55b23293ccc5f', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '081533372ca8cf5faa2d7e4fd48bccd2', '13666666666', null, '68:df:dd:a0:66:c7', '1437741715', '0', '192.168.2.65', '1437741715', '1437741715', '0', '1437742315', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('554', '55b232953fe1a', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '35d0587b005826d2cd45003740f4810e', '1399999999', null, '68:df:dd:a0:66:c7', '1437741717', '0', null, '1437741717', '1437741717', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('555', '55b232af54272', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '14d502128ded9ca5451d985740364ae8', '13666666666', null, '68:df:dd:a0:66:c7', '1437741743', '0', '192.168.2.65', '1437741743', '1437741743', '0', '1437742343', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('556', '55b232b0aa3c1', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '3af7c986e649990ea9e42a144f138817', '1399999999', null, '68:df:dd:a0:66:c7', '1437741744', '0', null, '1437741744', '1437741744', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('557', '55b232dcb246e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'd9b18a0b8bc1c893104cc6e5805cbdfc', '13666666666', null, '68:df:dd:a0:66:c7', '1437741788', '0', null, '1437741788', '1437741788', '0', '1437742388', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('558', '55b232fd889f8', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '17d8368d90b1aba4eb4a26ae1776333f', '13888888888', null, '68:df:dd:a0:66:c7', '1437741821', '0', '192.168.2.65', '1437741821', '1437741821', '0', '1437742379', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('559', '55b233d68f6d1', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '1f003761bec3c878a279aa373dc9c36a', '1399999999', null, '68:df:dd:a0:66:c7', '1437742038', '0', null, '1437742038', '1437742038', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('560', '55b233ff347e1', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '007c9563c2bec89c6a429cf2b638b0dc', '1399999999', null, '68:df:dd:a0:66:c7', '1437742079', '0', null, '1437742079', '1437742079', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('561', '55b23430e3f53', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '4aca1f30ade88d29cfb48395eecde16f', '1399999999', null, '68:df:dd:a0:66:c7', '1437742128', '0', null, '1437742128', '1437742128', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('562', '55b23851f1348', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'e60c3d9935240dc4e5cdfea54d0fda87', '13666666666', null, '68:df:dd:a0:66:c7', '1437743185', '0', '192.168.2.65', '1437743185', '1437743185', '0', '1437743785', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('563', '55b238534a902', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '46d633a0dbb1c6c91c07ddc8be306f4d', '1399999999', null, '68:df:dd:a0:66:c7', '1437743187', '0', null, '1437743187', '1437743187', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('564', '55b2385eda702', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '1f2e07611f6926ed852c188988313694', '13666666666', null, '68:df:dd:a0:66:c7', '1437743198', '0', null, '1437743198', '1437743198', '0', '1437743798', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('565', '55b23a3af17f7', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', 'dce08c39211f6bcd0eb9f9c62631eb3f', '13888888888', null, '68:df:dd:a0:66:c7', '1437743674', '0', '192.168.2.252', '1437743674', '1437743674', '0', '1437744063', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('566', '55b23a3c6e61a', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '858cbce192b977ec009ba10b4db30a5d', '1399999999', null, '68:df:dd:a0:66:c7', '1437743676', '0', '192.168.2.252', '1437743676', '1437743676', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('567', '55b23a64933c6', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '20b03b2544ea43655268663aacb29b68', '1399999999', null, '68:df:dd:a0:66:c7', '1437743716', '0', null, '1437743716', '1437743716', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('568', '55b23a9379731', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '458621ba85ff254f355d2adfc3502bec', '1399999999', null, '68:df:dd:a0:66:c7', '1437743763', '0', null, '1437743763', '1437743763', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('569', '55b23aaf4ca62', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', 'af8c9e7f8fa8c34f5e2bc87194032e8b', '13888888888', null, '68:df:dd:a0:66:c7', '1437743791', '0', '192.168.2.252', '1437743791', '1437743791', '0', '1437744290', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('570', '55b23ab0bedd8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '0c376cdd8e7d975fdaa3115b1395d89c', '1399999999', null, '68:df:dd:a0:66:c7', '1437743792', '0', null, '1437743792', '1437743792', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('571', '13222222222', 'f4549854b79501f908f6cd0d8d2b8588', '1', '1', '22', 'fce54dc27f2b159ab941652daaf3fdf9', '13222222222', null, '68:df:dd:a0:66:c7', '1437744250', '0', null, '1437744250', '1437744250', '0', '1437744370', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('572', '55b241355e738', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '31373cb339532d7b6edb3096ea89126f', '13666666666', null, '68:df:dd:a0:66:c7', '1437745461', '0', null, '1437745461', '1437745461', '0', '1437745521', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('573', '55b241c767b02', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '8081ed2549e5c7cd60d0a3a0e7a2bc13', '13666666666', null, '68:df:dd:a0:66:c7', '1437745607', '0', '192.168.2.53', '1437745607', '1437745607', '0', '1437745667', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('574', '55b241c8ba318', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'adcb167cfdcfd523fc6db2cbfa654fea', '1399999999', null, '68:df:dd:a0:66:c7', '1437745608', '0', '192.168.2.53', '1437745608', '1437745608', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('575', '55b241e54a678', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '865520b7e5313f6f9c52cf1c0b7745b3', '1399999999', null, '68:df:dd:a0:66:c7', '1437745637', '0', null, '1437745637', '1437745637', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('576', '55b241ea5fabd', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '990bb955a12a1469ba9befddd70f9c5a', '13666666666', null, '68:df:dd:a0:66:c7', '1437745642', '0', null, '1437745642', '1437745642', '0', '1437745702', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('577', '55b241fcaaf1d', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '7bb0500bf9ff90d7647e92899fae1958', '13666666666', null, '68:df:dd:a0:66:c7', '1437745660', '0', null, '1437745660', '1437745660', '0', '1437745720', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('578', '55b242054dcdc', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '6567950d8bb645f7635be5f0df98332d', '13666666666', null, '68:df:dd:a0:66:c7', '1437745669', '0', null, '1437745669', '1437745669', '0', '1437745729', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('579', '55b2421165484', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'fa069473a3a86de377ab41f67eff8976', '13666666666', null, '68:df:dd:a0:66:c7', '1437745681', '0', null, '1437745681', '1437745681', '0', '1437745741', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('580', '55b24252c72b9', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '9c75448dea64e9068f81b6b57a178398', '13666666666', null, '68:df:dd:a0:66:c7', '1437745746', '0', null, '1437745746', '1437745746', '0', '1437745806', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('581', '55b24284117ae', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'fac3e71ad92a219ebbae2002b46ec8ed', '13666666666', null, '68:df:dd:a0:66:c7', '1437745796', '0', '192.168.2.53', '1437745796', '1437745796', '0', '1437745856', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('582', '55b2428e3bc68', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '6257674786fc5e69007feb80e381559e', '1399999999', null, '68:df:dd:a0:66:c7', '1437745806', '0', '192.168.2.53', '1437745806', '1437745806', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('583', '55b242c8c809b', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '93f1a2067b580dce302804ff79101fb7', '1399999999', null, '68:df:dd:a0:66:c7', '1437745864', '0', null, '1437745864', '1437745864', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('584', '55b242fbb388d', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'b404ed0ef225dadb0e95a76f46079203', '13666666666', null, '68:df:dd:a0:66:c7', '1437745915', '0', '192.168.2.53', '1437745915', '1437745915', '0', '1437745975', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('585', '55b242fd0e8fa', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '57954ad9f77e81539114dab97d0ec6f3', '1399999999', null, '68:df:dd:a0:66:c7', '1437745917', '0', '192.168.2.53', '1437745917', '1437745917', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('586', '55b24320cf89f', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '60e654346e0b6b73414814c4c0bb240d', '1399999999', null, '68:df:dd:a0:66:c7', '1437745952', '0', '192.168.2.53', '1437745952', '1437745952', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('587', '55b24333b6aea', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '761b3c8e8e5496db92c428dcc4693bff', '1399999999', null, '68:df:dd:a0:66:c7', '1437745971', '0', null, '1437745971', '1437745971', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('588', '55b243ac95f5b', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '9db6937b95dc657aefe15548880adea2', '13666666666', null, '68:df:dd:a0:66:c7', '1437746092', '0', '192.168.2.53', '1437746092', '1437746092', '0', '1437746152', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('589', '55b243addd425', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '833958269627339ba98f8e2ce8f3919c', '1399999999', null, '68:df:dd:a0:66:c7', '1437746093', '0', null, '1437746093', '1437746093', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('590', '55b243bc5f457', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'e53621be8ae1ef239dfa0d3ce4cbee0d', '13666666666', null, '68:df:dd:a0:66:c7', '1437746108', '0', null, '1437746108', '1437746108', '0', '1437746168', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('591', '55b2440edee23', 'e10adc3949ba59abbe56e057f20f883e', '4', null, null, '6b63ca4e8f31b436da4b135e909ce935', '13666666666', null, '68:df:dd:a0:66:c7', '1437746190', '0', null, '1437746190', '1437746190', '0', '1437746190', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('592', '55b2441380fd7', 'e10adc3949ba59abbe56e057f20f883e', '4', null, null, 'b07fd03fc7ee2a5bbd9484c8350077ed', '13666666666', null, '68:df:dd:a0:66:c7', '1437746195', '0', null, '1437746195', '1437746195', '0', '1437746195', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('593', '55b24415c6642', 'e10adc3949ba59abbe56e057f20f883e', '4', null, null, '17499e61cc4c04e2423aac5601025ad1', '13666666666', null, '68:df:dd:a0:66:c7', '1437746197', '0', null, '1437746197', '1437746197', '0', '1437746197', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('594', '55b2441ad6e3c', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '2c6bd2ae61f95c3da76fc773fd921753', '13666666666', null, '68:df:dd:a0:66:c7', '1437746202', '0', '192.168.2.53', '1437746202', '1437746202', '0', '1437746262', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('595', '55b2441c29554', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '7c6c98a518ee179cf2835edd340000ed', '1399999999', null, '68:df:dd:a0:66:c7', '1437746204', '0', '192.168.2.53', '1437746204', '1437746204', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('596', '55b2444d8835b', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'a9768434364b144d469d3cc53bfbffc1', '1399999999', null, '68:df:dd:a0:66:c7', '1437746253', '0', null, '1437746253', '1437746253', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('597', '55b24560cc1df', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '31bf3967949ad6f68b7590e79ea8a6d8', '13666666666', null, '68:df:dd:a0:66:c7', '1437746528', '0', '192.168.2.53', '1437746528', '1437746528', '0', '1437746588', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('598', '55b245623cd74', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '79ccbd7206cc925d7824dab71b1854cc', '1399999999', null, '68:df:dd:a0:66:c7', '1437746530', '0', null, '1437746530', '1437746530', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('599', '55b2457a0fc3b', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '4a7eb36d56c9f57ca5f57c0b47d9982d', '13666666666', null, '68:df:dd:a0:66:c7', '1437746554', '0', null, '1437746554', '1437746554', '0', '1437746614', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('600', '55b2458dc83f5', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'e9a576546d006deff1cf922a87b277e4', '13666666666', null, '68:df:dd:a0:66:c7', '1437746573', '0', null, '1437746573', '1437746573', '0', '1437746633', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('601', '55b245ecb27cc', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '1c01ad288c4112c0d9936df03017ad88', '13666666666', null, '68:df:dd:a0:66:c7', '1437746668', '0', '192.168.2.252', '1437746668', '1437746668', '0', '1437746728', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('602', '55b245ee332f8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '66b136c0cfcf4fd723c9e14a6fedc141', '1399999999', null, '68:df:dd:a0:66:c7', '1437746670', '0', null, '1437746670', '1437746670', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('603', '55b2479d8aad0', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'd743527e915c1a4fe5e026c789fbe896', '13666666666', null, '68:df:dd:a0:66:c7', '1437747101', '0', null, '1437747101', '1437747101', '0', '1437747161', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('604', '55b247a69b734', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '7f8292b1f22b63e623094c252d08f987', '13666666666', null, '68:df:dd:a0:66:c7', '1437747110', '0', null, '1437747110', '1437747110', '0', '1437747170', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('605', '55b247b598f7d', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'c6f412f91f3628cdf53934bef54a9322', '13666666666', null, '68:df:dd:a0:66:c7', '1437747125', '0', null, '1437747125', '1437747125', '0', '1437747185', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('606', '55b247cd39586', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '80dde604a79221a9558195140fe64d55', '13666666666', null, '68:df:dd:a0:66:c7', '1437747149', '0', null, '1437747149', '1437747149', '0', '1437747209', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('607', '55b247d55c781', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '353a06d16448fc08b5695f8288c9f8e9', '13666666666', null, '68:df:dd:a0:66:c7', '1437747157', '0', '192.168.2.53', '1437747157', '1437747157', '0', '1437747217', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('608', '55b247d6a47bd', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '0dbf34928b4d52117f2914fe99ad5d72', '1399999999', null, '68:df:dd:a0:66:c7', '1437747158', '0', null, '1437747158', '1437747158', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('609', '55b247f11a72e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '012ec1aa391b4c3080cd8c4bd36a88c1', '13666666666', null, '68:df:dd:a0:66:c7', '1437747185', '0', null, '1437747185', '1437747185', '0', '1437747245', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('610', '55b247fc8b540', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'ab2bc97694adad93053fa079c774a531', '13666666666', null, '68:df:dd:a0:66:c7', '1437747196', '0', null, '1437747196', '1437747196', '0', '1437747256', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('611', '55b248060b62e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '5f617b15d421d31dd4b3a97943755c88', '13666666666', null, '68:df:dd:a0:66:c7', '1437747206', '0', null, '1437747206', '1437747206', '0', '1437747266', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('612', '55b2486bbdb92', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '964fbd57032aaea5a7b6d44a7c989f89', '13666666666', null, '68:df:dd:a0:66:c7', '1437747307', '0', null, '1437747307', '1437747307', '0', '1437747367', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('613', '55b248bba6a16', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '3e1b786f4fb42633ef67f83b95c644c4', '13666666666', null, '68:df:dd:a0:66:c7', '1437747387', '0', '192.168.2.252', '1437747387', '1437747387', '0', '1437747447', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('614', '55b248bd4f257', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '66dd2c7a776195d657a50bd53d188e6f', '1399999999', null, '68:df:dd:a0:66:c7', '1437747389', '0', null, '1437747389', '1437747389', '0', '0', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('615', '55b24ac9629a5', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '826b8425133753c348f12a7934106002', '13666666666', null, '68:df:dd:a0:66:c7', '1437747913', '0', '192.168.2.53', '1437747913', '1437747913', '0', '1437747973', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('616', '55b24b14dac22', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '14d0c56e7f6e6a1aa8fb52c185805e41', '13888888888', null, null, '1437747988', '0', null, '1437747988', '1437747988', '0', '1437748108', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('617', '55b24b15e912c', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', 'db4642335ea42093aa263b87d7d26553', '13888888888', null, null, '1437747989', '0', null, '1437747989', '1437747989', '0', '1437748109', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('618', '55b24b372b207', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '288102d7822ae135008689c566b08cd1', '13666666666', null, '68:df:dd:a0:66:c7', '1437748023', '0', null, '1437748023', '1437748023', '0', '1437748083', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('619', '55b24bbfb98d1', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '87fa6a46ae0fba200ec8726c1cbabf39', '13666666666', null, '68:df:dd:a0:66:c7', '1437748159', '0', '192.168.2.53', '1437748159', '1437748159', '0', '1437748219', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('620', '55b24c8e52d26', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '16c3b055ade9a8de1cd9a4f63add5339', '13666666666', null, '68:df:dd:a0:66:c7', '1437748366', '0', '192.168.2.252', '1437748366', '1437748366', '0', '1437748426', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('621', '55b24e68e3f02', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '34e41ade26e090a8d880e635719931f1', '13666666666', null, '68:df:dd:a0:66:c7', '1437748840', '0', null, '1437748840', '1437748840', '0', '1437748900', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('622', '55b24ec727c16', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'bb7b622215b816debe83bd06868ba0c5', '13666666666', null, '68:df:dd:a0:66:c7', '1437748935', '0', '192.168.2.65', '1437748935', '1437748935', '0', '1437748995', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('623', '12222222222', '629720dc2fbd844dd75f5816d0444e1f', '1', '1', '22', 'bc012dc08ba2d7315de617a6399c3f44', '12222222222', null, '68:df:dd:a0:66:c7', '1437748960', '0', null, '1437748940', '1437748960', '0', '1437749080', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('624', '55b24eea319ee', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '810b3c0f729b0adb95b0d2ae1b329291', '13666666666', null, '68:df:dd:a0:66:c7', '1437748970', '0', '192.168.2.65', '1437748970', '1437748970', '0', '1437749030', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('625', '11111111111', 'adbc91a43e988a3b5b745b8529a90b61', '1', '1', '22', 'ed14e1550097acfc7f11cf4d362be1d1', '11111111111', null, '68:df:dd:a0:66:c7', '1437748983', '0', null, '1437748983', '1437748983', '0', '1437749103', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('626', '55b24f1ba725e', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'ab9881c093e30fdab25c72df53abe908', '13666666666', null, '68:df:dd:a0:66:c7', '1437749019', '0', '192.168.2.65', '1437749019', '1437749019', '0', '1437749079', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('627', '55b24f2e85f24', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', 'd493f5216271cd66caf144cde65015ed', '13666666666', null, '68:df:dd:a0:66:c7', '1437749038', '0', '192.168.2.252', '1437749038', '1437749038', '0', '1437749098', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('628', '55b250ba9ea3f', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '3ba42758f74c36379c971706938278d8', '13666666666', null, '68:df:dd:a0:66:c7', '1437749434', '0', '192.168.2.65', '1437749434', '1437749434', '0', '1437749494', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('629', '55b251556efa3', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '57d210730321238ff9c9e53286155c6f', '13666666666', null, '68:df:dd:a0:66:c7', '1437749589', '0', '192.168.2.252', '1437749589', '1437749589', '0', '1437749649', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('630', '55b251ca3e3e3', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '22', '0e6cac2badd7fb2f935c05d2c5dd60ba', '13888888888', null, '68:df:dd:a0:66:c7', '1437749706', '0', '192.168.2.252', '1437749706', '1437749706', '0', '1437749827', '2015-07-24');
INSERT INTO `wifi_member` VALUES ('631', '13598878500', 'f9bff277c86b341ca20da2eae1e7ca8a', '1', '1', '22', 'e534b993751f269f82e81f44b1748aa3', '13598878500', null, '00:1c:f1:02:4f:0f', '1437787339', '0', null, '1437785738', '1437787339', '0', '1437787459', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('632', '15555555555', 'b3e2048d6e5378173713705fde6a93da', '1', '1', '22', '3eb52e6e52059299a9390c1fbeaa862d', '15555555555', null, '68:df:dd:a0:66:c7', '1437793768', '0', null, '1437793768', '1437793768', '0', '1437793888', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('633', '55b2fe2b5eff4', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '9559b4bf6835d54b809cc8b20465f2f3', '1399999999', null, '68:df:dd:a0:66:c7', '1437793835', '0', null, '1437793835', '1437793835', '0', '1437793955', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('634', '55b2fe3d1b73d', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '1407c018d352a6ae0d50e6014528298f', '13666666666', null, '68:df:dd:a0:66:c7', '1437793853', '0', '192.168.2.252', '1437793853', '1437793853', '0', '1437793913', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('635', '55b2ffd3279a8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'd9282e7ac7377842d1b6855d5532eb15', '1399999999', null, '68:df:dd:a0:66:c7', '1437794259', '0', null, '1437794259', '1437794259', '0', '1437794379', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('636', '55b2ffe219704', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '87c458e2d78da82e38a180e0669a99a2', '1399999999', null, '68:df:dd:a0:66:c7', '1437794274', '0', null, '1437794274', '1437794274', '0', '1437794394', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('637', '55b3007949d31', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '335193a748a5644b8e48f51e678152d6', '1399999999', null, '68:df:dd:a0:66:c7', '1437794425', '0', null, '1437794425', '1437794425', '0', '1437794545', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('638', '55b3008814cbb', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'dfdc36145d51da62a97493486bfba4ad', '1399999999', null, '68:df:dd:a0:66:c7', '1437794440', '0', null, '1437794440', '1437794440', '0', '1437794560', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('639', '55b3052dad178', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '22', '82df1b8048faa4ba096cc10cad049fff', '13666666666', null, '68:df:dd:a0:66:c7', '1437795629', '0', null, '1437795629', '1437795629', '0', '1437795689', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('640', '55b30b861900d', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', '0a04e7de2e2f8298b832cf1786af2655', '1399999999', null, '68:df:dd:a0:66:c7', '1437797254', '0', null, '1437797254', '1437797254', '0', '1437797374', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('641', '55b30c0e8e647', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '22', 'e98c9f4baf535e2b23628a333a43f66d', '1399999999', null, '68:df:dd:a0:66:c7', '1437797390', '0', null, '1437797390', '1437797390', '0', '1437797510', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('642', '55b311da2b0d4', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '6567f40243ba865ecddfe7cc714df80c', '1399999999', null, '68:df:dd:a0:66:c7', '1437798874', '0', null, '1437798874', '1437798874', '0', '1437798994', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('643', '55b313385dc7b', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '8bee3158d27f9da4220b91bb97f4a8c9', '1399999999', null, '40:0e:85:7d:3b:1d', '1437799224', '0', null, '1437799224', '1437799224', '0', '1437799344', '2015-07-25');
INSERT INTO `wifi_member` VALUES ('644', '55b48aadbe1a2', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', 'b74c3899435073786f614e08194ab22b', '1399999999', null, '68:df:dd:a0:66:c7', '1437895341', '0', null, '1437895341', '1437895341', '0', '1437895461', '2015-07-26');
INSERT INTO `wifi_member` VALUES ('645', '55b48ab842761', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '3f6d419f93ec91c911da6d0eac783765', '1399999999', null, '68:df:dd:a0:66:c7', '1437895352', '0', null, '1437895352', '1437895352', '0', '1437895472', '2015-07-26');
INSERT INTO `wifi_member` VALUES ('646', '55b48b0968a76', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '3c162bb8dab6f7cc651b0ec04be0d9e2', '1399999999', null, '68:df:dd:a0:66:c7', '1437895433', '0', null, '1437895433', '1437895433', '0', '1437895553', '2015-07-26');
INSERT INTO `wifi_member` VALUES ('647', '55b48b2eea778', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '46313e417c77e0d20119fd3decf6cce1', '1399999999', null, '68:df:dd:a0:66:c7', '1437895470', '0', null, '1437895470', '1437895470', '0', '1437895590', '2015-07-26');
INSERT INTO `wifi_member` VALUES ('648', '55b581d085247', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '0490d608cd3c91ec0f59f66ae642709c', '1399999999', null, '68:df:dd:a0:66:c7', '1437958608', '0', null, '1437958608', '1437958608', '0', '1437958728', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('649', '55b581df4154c', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', 'b4ea94aaa7f0902d673cfe2bd12d79f8', '1399999999', null, '68:df:dd:a0:66:c7', '1437958623', '0', null, '1437958623', '1437958623', '0', '1437958743', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('650', '55b5838682188', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '60602f2e5bbbc82b136f1ef5ad22beaf', '1399999999', null, 'ec:55:f9:c3:13:c9', '1437959046', '0', null, '1437959046', '1437959046', '0', '1437959166', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('651', '55b584066489e', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', 'c48fa592f770264ae17f1fd50bcc0bbb', '1399999999', null, '68:df:dd:a0:66:c7', '1437959174', '0', null, '1437959174', '1437959174', '0', '1437959294', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('652', '55b584bf10706', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '9de673701189638059f4fc6e5ef4f0ce', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437959359', '0', null, '1437959359', '1437959359', '0', '1437959479', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('653', '55b585e886254', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '6acd602794929f269c4e119a52e0342f', '1399999999', null, '68:df:dd:a0:66:c7', '1437959656', '0', null, '1437959656', '1437959656', '0', '1437959776', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('654', '13399999999', 'acc0ff27fad03154af9a92fa4489e035', '1', '1', '26', 'eab8bb8af799fe4dd010648de52c3f94', '13399999999', null, '68:df:dd:a0:66:c7', '1437959678', '0', null, '1437959678', '1437959678', '0', '1437959798', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('655', '55b58738afebc', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '2c2304e0707a575897f09f0827fd73f6', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437959992', '0', null, '1437959992', '1437959992', '0', '1437960112', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('656', '55b587d974dea', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '6bebe4079112927fef505cf66a52c489', '1399999999', null, '0c:1d:af:5c:1e:61', '1437960153', '0', null, '1437960153', '1437960153', '0', '1437960273', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('657', '55b587e10875c', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '2ace81c68f560f69d77c96f0679475b7', '1399999999', null, '0c:1d:af:5c:1e:61', '1437960161', '0', null, '1437960161', '1437960161', '0', '1437960281', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('658', '55b5881540063', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', 'd33fa241e7f1a4ac1bcf3662d67fa4fa', '1399999999', null, '0c:1d:af:5c:1e:61', '1437960213', '0', null, '1437960213', '1437960213', '0', '1437960333', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('659', '55b588951e2ce', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '2b7b15012b14992803052d5bf75a80de', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437960341', '0', null, '1437960341', '1437960341', '0', '1437960461', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('660', '55b58913861e7', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', 'f0197e83516c71af328d76693dffa3af', '1399999999', null, '68:df:dd:a0:66:c7', '1437960467', '0', null, '1437960467', '1437960467', '0', '1437960587', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('661', '55b58928dd1a8', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '340d44e156ca1a7b7c89f737a3298daa', '1399999999', null, '68:df:dd:a0:66:c7', '1437960488', '0', null, '1437960488', '1437960488', '0', '1437960608', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('662', '55b58a62cc420', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '4d0d40ffd8cd998ef55c4a9dcdf984df', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437960802', '0', null, '1437960802', '1437960802', '0', '1437960922', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('663', '55b58c64ee2a3', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '39dbfff7a48488d95ab9bd787c3452d8', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437961316', '0', '192.168.2.181', '1437961316', '1437961316', '0', '1437961436', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('664', '55b58d22412db', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '24e586d69f9d7445645fad85f6cf3bef', '1399999999', null, '68:df:dd:a0:66:c7', '1437961506', '0', '192.168.2.252', '1437961506', '1437961506', '0', '1437961626', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('665', '55b58f17deb52', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '26fa370acfd30a372cdddee9ceffb42e', '1399999999', null, '68:df:dd:a0:66:c7', '1437962007', '0', '192.168.2.252', '1437962007', '1437962007', '0', '1437962127', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('666', '55b58fe23b615', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', '45259cb868e7ee54b98b2de147ffb5a5', '1399999999', null, 'd4:97:0b:97:b9:ba', '1437962210', '0', '192.168.2.181', '1437962210', '1437962210', '0', '1437962330', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('667', '55b595a418cc5', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '26', 'd08590c29a1cfe11411eb9c076c98432', '1399999999', null, '68:df:dd:a0:66:c7', '1437963684', '0', '192.168.2.252', '1437963684', '1437963684', '0', '1437963804', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('668', '55b59df2788ca', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '26', 'a7acbdc1c28189c28b3e777a519cd31f', '13666666666', null, '68:df:dd:a0:66:c7', '1437965810', '0', '192.168.2.252', '1437965810', '1437965810', '0', '1437965870', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('669', '55b59e4565d74', 'e10adc3949ba59abbe56e057f20f883e', '5', '1', '26', 'dc125b7dd0a8638eb120a5d0cc709d5f', '13666666666', null, '68:df:dd:a0:66:c7', '1437965893', '0', '192.168.2.252', '1437965893', '1437965893', '0', '1437965953', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('670', '55b59ea36a0f6', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '26', '18f790f2254934b7f368e886c04329b2', '13888888888', null, 'd4:97:0b:97:b9:ba', '1437965987', '0', '192.168.2.181', '1437965987', '1437965987', '0', '1437966275', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('671', '55b59f4d70a93', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '26', '37b66ecd59def472a054badcc97973e3', '13888888888', null, 'd4:97:0b:97:b9:ba', '1437966157', '0', '192.168.2.181', '1437966157', '1437966157', '0', '1437966287', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('672', '55b59f5d0b7aa', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '26', '014a17f29cfb6cc3dcffdb130a6c4a2a', '13888888888', null, 'd4:97:0b:97:b9:ba', '1437966173', '0', '192.168.2.181', '1437966173', '1437966173', '0', '1437966308', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('673', '55b59f8337f1c', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '26', '60ad9f726027586565f8040bc71da54c', '13888888888', null, 'd4:97:0b:97:b9:ba', '1437966211', '0', '192.168.2.181', '1437966211', '1437966211', '0', '1437966356', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('674', '55b59fad4efd2', 'e10adc3949ba59abbe56e057f20f883e', '3', '1', '26', '02ec1e4a12a57b118659f73baa197bc4', '13888888888', null, 'd4:97:0b:97:b9:ba', '1437966253', '0', '192.168.2.181', '1437966253', '1437966253', '0', '1437966565', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('675', '55b5a07254a68', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '26', 'eb9a166d933e713da8a64d0e918a235f', '13666666666', null, 'd4:97:0b:97:b9:ba', '1437966450', '0', null, '1437966450', '1437966450', '0', '1437966510', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('676', '55b5a073732dc', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '26', '26c3b18da312f23f26deef1835e145f5', '13666666666', null, 'd4:97:0b:97:b9:ba', '1437966451', '0', '192.168.2.181', '1437966451', '1437966451', '0', '1437966511', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('677', '13526667995', '9bd838f0cb17eb045fa44683ad9d6f49', '1', '1', '26', 'a9389493c366334d609358abec8918d8', '13526667995', null, 'e0:b5:2d:74:49:5f', '1437968230', '0', '192.168.2.253', '1437968230', '1437968230', '0', '1437968350', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('678', '13837186852', '1f58241125eee06a68c673ddbea16dd5', '1', '1', '26', '8f5531e9b1c0e3da428c1aded3c168cb', '13837186852', null, 'd4:97:0b:97:b9:ba', '1437991574', '0', '192.168.2.181', '1437969619', '1437991574', '0', '1437991694', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('679', '13355556666', 'a778e012ffcd300c8441e10e9c5e9171', '1', '1', '26', '3ca42bb3097a56e9302d9ade4c066db8', '13355556666', null, '68:df:dd:a0:66:c7', '1437985233', '0', '192.168.2.252', '1437985233', '1437985233', '0', '1437985353', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('680', '12222222222', '629720dc2fbd844dd75f5816d0444e1f', '1', '1', '26', '420f258fa52e3157e8eca067b6905e6f', '12222222222', null, 'd4:97:0b:97:b9:ba', '1437989728', '0', null, '1437989728', '1437989728', '0', '1437989848', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('681', '18559007880', '6b6de3f0fafeb79af1e25b13e6c05744', '1', '1', '26', '195597caf4ead13c6ccf264ed3851e20', '18559007880', null, 'c8:6f:1d:a9:8f:a8', '1437990313', '0', '192.168.2.30', '1437990313', '1437990313', '0', '1437990433', '2015-07-27');
INSERT INTO `wifi_member` VALUES ('682', '13355627895', '77a72809d745a447e59adaf90d5f31cd', '1', '1', '26', '4ed3160c1443aa05f895c1c8597a1931', '13355627895', null, '80:96:b1:3b:1f:1a', '1438043396', '0', '192.168.2.54', '1438043396', '1438043396', '0', '1438043516', '2015-07-28');
INSERT INTO `wifi_member` VALUES ('683', '13949128281', '7789b9ad520445f4dbdd207239fc12c5', '1', '1', '26', '6956c5be5e39eda9ac2c407261fc8db2', '13949128281', null, 'bc:72:b1:9e:25:60', '1438053688', '0', null, '1438053688', '1438053688', '0', '1438053808', '2015-07-28');
INSERT INTO `wifi_member` VALUES ('684', '15237157035', '0ce2720d487fdef2047e5a94ec3c6c5f', '1', '1', '26', '3d6e3e8adb29a0b41b45cfb698900a45', '15237157035', null, '88:1f:a1:6e:d8:23', '1438064559', '0', '192.168.2.139', '1438064559', '1438064559', '0', '1438064679', '2015-07-28');
INSERT INTO `wifi_member` VALUES ('685', '55b7cdc918cff', 'e10adc3949ba59abbe56e057f20f883e', '4', null, null, '99194309bf6ee33cf88932ee6bf47452', '13666666666', null, null, '1438109129', '0', null, '1438109129', '1438109129', '0', '1438109129', '2015-07-29');
INSERT INTO `wifi_member` VALUES ('686', '55b7cdca98616', 'e10adc3949ba59abbe56e057f20f883e', '4', null, null, 'b25cfdce94d261acf93af250d241c15b', '13666666666', null, null, '1438109130', '0', null, '1438109130', '1438109130', '0', '1438109130', '2015-07-29');
INSERT INTO `wifi_member` VALUES ('687', '13598878500', 'f9bff277c86b341ca20da2eae1e7ca8a', '1', '1', '26', '917a7a17cbfd7a639172555d9314838c', '13598878500', null, '80:96:b1:3b:1f:1a', '1438130928', '0', '192.168.2.54', '1438130928', '1438130928', '0', '1438131048', '2015-07-29');
INSERT INTO `wifi_member` VALUES ('688', '15038049775', 'f8e7432ab7d700818ecb72b69ebb906a', '1', '1', '26', '5ed5259fe7f305a7754e8263204beadc', '15038049775', null, '44:4c:0c:ae:3a:dc', '1438148745', '0', '192.168.2.141', '1438148745', '1438148745', '0', '1438148865', '2015-07-29');
INSERT INTO `wifi_member` VALUES ('689', '13526640311', 'fc02970369c5902ce0c52a763fc9cdd2', '1', '1', '26', '0c11519746ea2a96833874ca4fd1c9bd', '13526640311', null, '28:e3:1f:71:51:f7', '1438156805', '0', '192.168.2.212', '1438156805', '1438156805', '0', '1438156925', '2015-07-29');
INSERT INTO `wifi_member` VALUES ('690', '13526667995', '9bd838f0cb17eb045fa44683ad9d6f49', '1', '11', '27', 'f8673460abab4a082062de8cd550e105', '13526667995', null, 'e0:b5:2d:74:49:5f', '1438678821', '0', '192.168.2.252', '1438678821', '1438678821', '0', '', '2015-08-04');
INSERT INTO `wifi_member` VALUES ('691', '13216157945', 'c7086e7c29152b2db1a23defc6c3d5fb', '1', '11', '27', '6adc57f6df27b276cfb222e538a3ef85', '13216157945', null, '68:df:dd:a0:66:c7', '1438678962', '0', '192.168.2.253', '1438678962', '1438678962', '0', '', '2015-08-04');

-- ----------------------------
-- Table structure for `wifi_month`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_month`;
CREATE TABLE `wifi_month` (
  `id` int(11) NOT NULL,
  `mon` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_month
-- ----------------------------
INSERT INTO `wifi_month` VALUES ('1', '01');
INSERT INTO `wifi_month` VALUES ('2', '02');
INSERT INTO `wifi_month` VALUES ('3', '03');
INSERT INTO `wifi_month` VALUES ('4', '04');
INSERT INTO `wifi_month` VALUES ('5', '05');
INSERT INTO `wifi_month` VALUES ('6', '06');
INSERT INTO `wifi_month` VALUES ('7', '07');
INSERT INTO `wifi_month` VALUES ('8', '08');
INSERT INTO `wifi_month` VALUES ('9', '09');
INSERT INTO `wifi_month` VALUES ('10', '10');
INSERT INTO `wifi_month` VALUES ('11', '11');
INSERT INTO `wifi_month` VALUES ('12', '12');

-- ----------------------------
-- Table structure for `wifi_nav`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_nav`;
CREATE TABLE `wifi_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父ID',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `mode` tinyint(4) DEFAULT NULL COMMENT '0:单页 1:列表 ',
  `config` varchar(255) DEFAULT NULL COMMENT '配置json',
  `img` varchar(255) DEFAULT NULL COMMENT '图片信息',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1:启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_nav
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_news`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_news`;
CREATE TABLE `wifi_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `info` text,
  `mode` varchar(10) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_news
-- ----------------------------
INSERT INTO `wifi_news` VALUES ('1', null, null, '代理商和平台账号添加推送广告置顶和审核功能！', '<a rel=\"nofollow\" target=\"_blank\">代理商和平台账号添加推送广告置顶和审核功能！</a>', '1', '1422089854', '1422089854');
INSERT INTO `wifi_news` VALUES ('2', null, null, '代理商平台添加在线路由实时查看监控功能', '<a rel=\"nofollow\" target=\"_blank\">代理商平台添加在线路由实时查看监控功能</a>', '1', '1422089863', '1422089863');
INSERT INTO `wifi_news` VALUES ('3', null, null, '增加路由器在线查看运行时长 剩余内存 cpu负载等功能', '<a rel=\"nofollow\" target=\"_blank\">增加路由器在线查看运行时长 剩余内存 cpu负载等功能</a>', '1', '1422089874', '1422089874');
INSERT INTO `wifi_news` VALUES ('4', null, null, '增加mac黑白名单管理功能', '<a rel=\"nofollow\" target=\"_blank\">增加mac黑白名单管理功能</a>', '1', '1422089890', '1422089890');
INSERT INTO `wifi_news` VALUES ('5', null, null, '商家账号添加微信一键认证密码认证、多套认证模板！', '<a rel=\"nofollow\" target=\"_blank\">商家账号添加微信一键认证密码认证、多套认证模板！</a>', '1', '1422089902', '1422089902');
INSERT INTO `wifi_news` VALUES ('6', null, null, '新增加认证成功页面显示认证时长功能。', '<u>新增加认证成功页面显示认证时长功能。</u>', '1', '1422089911', '1422089911');
INSERT INTO `wifi_news` VALUES ('7', null, null, '平台增加新版本检测和数据库清理功能。', '<a rel=\"nofollow\" target=\"_blank\">平台增加新版本检测和数据库清理功能。</a>', '1', '1422089924', '1422089924');
INSERT INTO `wifi_news` VALUES ('8', null, null, '修复商家、代理和平台账号编辑广告后服务器旧广告图片文件不删除问题！', '<a rel=\"nofollow\" target=\"_blank\">修复商家、代理和平台账号编辑广告后服务器旧广告图片文件不删除问题！</a>', '1', '1422089932', '1422089932');
INSERT INTO `wifi_news` VALUES ('9', null, null, '倒计时模板增加了全部的认证方式（之前只有一键）.', '<a rel=\"nofollow\" target=\"_blank\">倒计时模板增加了全部的认证方式（之前只有一键）.</a>', '1', '1422089940', '1422089940');
INSERT INTO `wifi_news` VALUES ('10', null, null, '微信关注认证取消关注断网功能已上线欢迎测试！', '<a rel=\"nofollow\" target=\"_blank\">微信关注认证取消关注断网功能已上线欢迎测试！</a>', '1', '1422089948', '1422089948');

-- ----------------------------
-- Table structure for `wifi_node`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_node`;
CREATE TABLE `wifi_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `bmenu` tinyint(4) DEFAULT '0',
  `single` tinyint(4) DEFAULT '0' COMMENT '是否还有子节点 0:否 1 是',
  `ico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_node
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_notice`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_notice`;
CREATE TABLE `wifi_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `info` text,
  `add_time` varchar(15) DEFAULT NULL,
  `update_time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_notice
-- ----------------------------
INSERT INTO `wifi_notice` VALUES ('2', '微信关注认证取消关注断网功能已上线欢迎测试！', '<a rel=\"nofollow\" target=\"_blank\">微信关注认证取消关注断网功能已上线欢迎测试！</a>', '1422090041', '1422090041');
INSERT INTO `wifi_notice` VALUES ('3', '倒计时模板增加了全部的认证方式（之前只有一键）.', '<a rel=\"nofollow\" target=\"_blank\">倒计时模板增加了全部的认证方式（之前只有一键）.</a>', '1422090051', '1422090051');
INSERT INTO `wifi_notice` VALUES ('4', '商家账号添加微信一键认证密码认证、多套认证模板！', '<a rel=\"nofollow\" target=\"_blank\">商家账号添加微信一键认证密码认证、多套认证模板！</a>', '1422090063', '1422090063');
INSERT INTO `wifi_notice` VALUES ('5', '增加路由器在线查看运行时长 剩余内存 cpu负载等功能', '<a rel=\"nofollow\" target=\"_blank\">增加路由器在线查看运行时长 剩余内存 cpu负载等功能</a>', '1422090073', '1422090073');

-- ----------------------------
-- Table structure for `wifi_pushadv`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_pushadv`;
CREATE TABLE `wifi_pushadv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `mode` tinyint(4) DEFAULT '0' COMMENT '投放路径 ',
  `pic` varchar(255) DEFAULT NULL COMMENT '广告存放路径',
  `info` text COMMENT '备注',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `trade` varchar(255) DEFAULT NULL,
  `showcount` int(11) DEFAULT '0' COMMENT '展示次数',
  `add_time` varchar(20) DEFAULT NULL,
  `startdate` varchar(20) DEFAULT NULL,
  `enddate` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停止 1 正常',
  `aid` int(11) NOT NULL DEFAULT '0',
  `shopid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_pushadv
-- ----------------------------
INSERT INTO `wifi_pushadv` VALUES ('21', '平台广告2 全行业', '0', '/upload/PUSHAD/2.jpg', '平台广告2 全行业平台广告2 全行业平台广告2 全行业', '1', '#餐饮##手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', '1', '1410919239', '1410883200', '1451577600', '1413912337', '1', '0', null);
INSERT INTO `wifi_pushadv` VALUES ('9', '123', '0', '/upload/PUSHAD/1.jpg', '123', '1', '#手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', '0', '1413249225', '1413216000', '1451577600', '1437978690', '1', '2', '9');
INSERT INTO `wifi_pushadv` VALUES ('26', '测试', '0', '/upload/PUSHAD/55c07f275f146.png', 'SFJALDJFLAJDLFJLADJFLADJFLADJLAJDFLAJDFLK', '0', '', '0', '1438678823', '1438617600', '1441296000', '1438679019', '1', '-1', '11');

-- ----------------------------
-- Table structure for `wifi_role`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_role`;
CREATE TABLE `wifi_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_role
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_role_user`;
CREATE TABLE `wifi_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_routemap`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_routemap`;
CREATE TABLE `wifi_routemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) NOT NULL COMMENT '帐号ID',
  `routename` varchar(255) DEFAULT NULL COMMENT '路由名称',
  `gw_address` varchar(255) DEFAULT NULL,
  `gw_port` varchar(255) DEFAULT NULL,
  `gw_id` varchar(255) DEFAULT NULL COMMENT '网关ID',
  `sortid` int(11) DEFAULT '0',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `sys_uptime` varchar(255) DEFAULT NULL COMMENT '路由时间',
  `sys_memfree` varchar(255) DEFAULT NULL,
  `wifidog_uptime` varchar(255) DEFAULT NULL COMMENT '路由跟踪时间',
  `sys_load` varchar(255) DEFAULT NULL,
  `last_heartbeat_ip` varchar(255) DEFAULT NULL COMMENT '心跳包IP',
  `last_heartbeat_time` varchar(255) DEFAULT NULL COMMENT '心跳时间',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '消息头',
  `notes` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1：启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_routemap
-- ----------------------------
INSERT INTO `wifi_routemap` VALUES ('12', '0', '1', '192.168.10.1', '2060', '000D0BFD5E23', '0', '1412750910', '1413042377', '598099', '33116', '598032', '0.21', null, '1412751841', 'wget', null, '1');
INSERT INTO `wifi_routemap` VALUES ('26', '1', 'ceshi1', '192.168.2.1', '3000', '00014280317A', '0', '1437798067', '1437798067', '40709', '36472', '264537', '0.04', null, '1438255867', 'WiFiDog Hispider', '115.60.48.71', '1');
INSERT INTO `wifi_routemap` VALUES ('27', '11', '洛阳六合国际', '192.168.2.1', '3000', '78A35102D149', '0', '1438678229', '1438678229', '1705', '35424', '84659', '0.00', null, '1438761665', 'WiFiDog Hispider', '42.224.43.33', '1');

-- ----------------------------
-- Table structure for `wifi_shop`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_shop`;
CREATE TABLE `wifi_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL COMMENT '管理帐号',
  `password` varchar(255) NOT NULL,
  `shopname` varchar(255) DEFAULT NULL COMMENT '门店名称',
  `pid` int(11) DEFAULT '0' COMMENT '代理商ID',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:注册用户 1：代理商添加 ',
  `logo` varchar(255) DEFAULT NULL,
  `linker` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `info` text COMMENT '门店描述',
  `address` varchar(255) DEFAULT NULL,
  `point_x` varchar(255) DEFAULT NULL,
  `point_y` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1：启用',
  `tpl_id` int(11) DEFAULT NULL,
  `tpl_path` varchar(255) DEFAULT NULL COMMENT '模板地址',
  `trade` varchar(255) DEFAULT NULL COMMENT '行业类型 #区分',
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `maxcount` int(255) DEFAULT '0' COMMENT '认证使用次数',
  `end_time` varchar(255) DEFAULT NULL COMMENT '帐号有效期',
  `shopgroup` varchar(255) DEFAULT NULL COMMENT '商圈',
  `shoplevel` varchar(255) DEFAULT NULL COMMENT '店铺消费水平 多组 用 #区分',
  `routetype` tinyint(4) DEFAULT '0' COMMENT '0:单路由 1 多路由',
  `authmode` varchar(255) DEFAULT NULL COMMENT '认证模式',
  `authaction` tinyint(4) DEFAULT NULL,
  `jumpurl` varchar(255) DEFAULT NULL,
  `linkflag` tinyint(2) DEFAULT '0' COMMENT '0:限制注册上限  1 不限制使用',
  `timelimit` int(11) DEFAULT '0',
  `sh` int(4) DEFAULT '0' COMMENT '开始时段',
  `eh` int(4) DEFAULT '23' COMMENT '结束时段',
  `countflag` tinyint(1) NOT NULL DEFAULT '0',
  `countmax` int(11) NOT NULL DEFAULT '0',
  `duanxin` varchar(255) NOT NULL,
  `ratelimit` int(4) NOT NULL DEFAULT '0',
  `smscount` int(4) NOT NULL DEFAULT '0',
  `token` varchar(50) DEFAULT NULL,
  `temptime` int(4) NOT NULL DEFAULT '5',
  `wxewm` varchar(255) DEFAULT NULL,
  `djs` int(2) NOT NULL DEFAULT '10',
  `wxsuccess` varchar(255) DEFAULT NULL,
  `wxgzts` varchar(255) DEFAULT NULL,
  `wxappid` varchar(80) DEFAULT NULL,
  `threadurl` varchar(255) DEFAULT NULL,
  `wxrzfs` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_shop
-- ----------------------------
INSERT INTO `wifi_shop` VALUES ('1', 'qin', 'e10adc3949ba59abbe56e057f20f883e', '正森传媒', '1', '0', null, '吴', '13000000000', null, '无', null, null, '1410880914', '1437969554', '1', '1002', 'wifiadv', '咖啡厅', '河南', '郑州市', '中原区', '600', '1410880914', null, '#高档##奢华#', '0', '#1#<0', '1', 'http://www.qq.com/', '1', '2', '0', '23', '1', '300', '您的上网验证码：\"$code\"', '0', '100', '6542332f1fg436a0b069d45659c62a1a', '1', '/upload/WXEWM/54c355ad0e35c.jpg', '5', '已认证成功', '关注成功，您可以使用公司提供的wifi免费上网了！', 'wx9b9f211180d37738=0f18ee2df67722e91241dc99e741a4dd', 'http://www.iim.com.cn', '0');
INSERT INTO `wifi_shop` VALUES ('11', 'zsluyang', '3ab7873060b6de9ca93b664e752bca6f', '正森洛阳', '-1', '0', null, '聂SIR', '13000000000', null, '六合国际', null, null, '1438678085', '1438678307', '1', '1002', 'wifiadv', '餐饮', '河南省', '洛阳市', '涧西区', '600', '1438678085', null, '#奢华#', '0', '#1#<0', '1', 'http://www.qq.com', '1', '0', '0', '23', '0', '0', '', '0', '0', '909781229e36aa0df76b71d8f7377de9', '5', null, '10', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `wifi_sms`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_sms`;
CREATE TABLE `wifi_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '帐号ID',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:马上发送 1：定时发送',
  `phone` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `lens` int(11) DEFAULT NULL COMMENT '字数',
  `unit` int(11) DEFAULT NULL COMMENT '短信条数',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `send_time` varchar(255) DEFAULT NULL COMMENT '发送时间',
  `ready_time` varchar(255) DEFAULT NULL COMMENT '预发送时间',
  `state` tinyint(4) DEFAULT '0' COMMENT '0:为发送 1 已发送 2 发送失败  ',
  `lostcount` int(11) DEFAULT NULL COMMENT '失败次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_smscfg`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_smscfg`;
CREATE TABLE `wifi_smscfg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1 启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_smscfg
-- ----------------------------
INSERT INTO `wifi_smscfg` VALUES ('1', '1', 'jinguangxi1983', '123456789a', '1422088540', '1422088540', '1');
INSERT INTO `wifi_smscfg` VALUES ('2', '4', '23ns8', '123', '1410499272', '1410499272', '1');
INSERT INTO `wifi_smscfg` VALUES ('3', '8', 'aer', 'sadf', '1412690612', '1412690612', '1');

-- ----------------------------
-- Table structure for `wifi_smscount`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_smscount`;
CREATE TABLE `wifi_smscount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `mac` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `add_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `smscode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wifi_smscount
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_tpl`;
CREATE TABLE `wifi_tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_name` varchar(255) DEFAULT NULL,
  `tpl_path` varchar(255) DEFAULT NULL,
  `group` varchar(10) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0：停用 1 使用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_tradead`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_tradead`;
CREATE TABLE `wifi_tradead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) NOT NULL COMMENT '商户ID',
  `mode` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_tradead
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_treenode`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_treenode`;
CREATE TABLE `wifi_treenode` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `g` varchar(50) NOT NULL DEFAULT '' COMMENT '分组名称',
  `m` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名称',
  `a` varchar(50) NOT NULL DEFAULT '' COMMENT 'action 名称',
  `ico` varchar(50) DEFAULT NULL COMMENT '图标',
  `pid` int(11) DEFAULT NULL COMMENT '0',
  `level` tinyint(4) DEFAULT '1' COMMENT '层级 1,2,3',
  `menuflag` tinyint(4) DEFAULT '1' COMMENT '0: 否 1 是',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `single` tinyint(4) DEFAULT '1' COMMENT '是否单节点 0:否 1 是',
  `remark` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '0 停用 1 启用',
  PRIMARY KEY (`id`,`a`,`m`,`g`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_treenode
-- ----------------------------
INSERT INTO `wifi_treenode` VALUES ('1', 'WIFI管理', 'wifiadmin', 'Index', 'index', null, '0', '1', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('2', '首页', 'wifiadmin', 'index', 'index', 'icon-home', '1', '2', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('3', '密码修改', 'wifiadmin', 'index', 'pwd', '1', '2', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('100', '系统管理', 'wifiadmin', 'System', 'index', 'icon-asterisk', '1', '2', '1', '0', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('101', '角色管理', 'wifiadmin', 'system', 'role', null, '100', '2', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('102', '添加角色', 'wifiadmin', 'system', 'addrole', null, '100', '2', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('103', '编辑角色', 'wifiadmin', 'system', 'editrole', null, '100', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('104', '角色权限', 'wifiadmin', 'system', 'roleaccess', null, '100', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('105', '用户管理', 'wifiadmin', 'system', 'userlist', null, '100', '2', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('106', '添加用户', 'wifiadmin', 'system', 'adduser', null, '100', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('107', '编辑用户', 'wifiadmin', 'system', 'userlist', null, '100', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('200', '网站管理', 'wifiadmin', '', '', 'icon-cogs', '1', '1', '1', '0', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('201', '网站设置', 'wifiadmin', 'system', 'index', null, '200', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('202', '参数设置', 'wifiadmin', 'System', 'setting', null, '200', '1', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('300', '商户管理', 'wifiadmin', 'Shop', 'index', 'icon-group', '1', '1', '1', '0', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('301', '商户列表', 'wifiadmin', 'Shop', 'index', null, '300', '2', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('302', '添加商户', 'wifiadmin', 'shop', 'addshop', null, '300', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('303', '编辑商户', 'wifiadmin', 'shop', 'editshop', null, '300', '1', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('400', '代理商管理', 'wifiadmin', 'agent', '', 'icon-user-md', '1', '2', '1', '0', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('401', '代理商等级', 'wifiadmin', 'agent', 'level', null, '400', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('402', '代理商列表', 'wifiadmin', 'agent', 'index', null, '400', '3', '1', '2', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('403', '添加代理商', 'wifiadmin', 'agent', 'add', null, '400', '3', '1', '3', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('404', '编辑代理商', 'wifiadmin', 'agent', 'edit', null, '400', '3', '0', '4', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('405', '添加等级', 'wifiadmin', 'agent', 'addlevel', null, '400', '3', '1', '1', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('406', '删除代理商', 'wifiadmin', 'agent', 'del', null, '400', '3', '0', '5', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('407', '扣款记录', 'wifiadmin', 'agent', 'paylist', null, '400', '3', '1', '7', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('408', '帐号金额调整', 'wifiadmin', 'agent', 'dopay', null, '400', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('500', '广告管理', 'wifiadmin', 'ad', 'index', 'icon-cloud', '1', '1', '1', '0', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('501', '广告列表', 'wifiadmin', 'ad', 'index', null, '500', '1', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('502', '编辑广告', 'wifiadmin', 'ad', 'editad', null, '500', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('504', '删除广告', 'wifiadmin', 'ad', 'delad', null, '500', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('505', '广告统计', 'wifiadmin', 'ad', 'rpt', null, '500', '1', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('600', '统计信息', 'wifiadmin', 'report', '', 'icon-bar-chart', '1', '2', '1', '0', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('601', '注册用户', 'wifiadmin', 'report', 'user', null, '600', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('602', '上网记录', 'wifiadmin', 'report', 'online', '', '600', '3', '1', '0', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('603', '用户统计报表', 'wifiadmin', 'report', 'userchart', null, '600', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('604', '上网统计报表', 'wifiadmin', 'report', 'authchart', null, '600', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('605', '在线路由统计', 'wifiadmin', 'report', 'routechart', null, '600', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('700', '信息管理', 'wifiadmin', 'notice', '', 'icon-bullhorn', '1', '1', '1', '0', '0', '', '1');
INSERT INTO `wifi_treenode` VALUES ('701', '系统消息', 'wifiadmin', 'notice', 'index', '', '700', '3', '1', '0', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('702', '添加系统消息', 'wifiadmin', 'notice', 'add', '', '700', '3', '1', '2', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('703', '删除系统消息', 'wifiadmin', 'notice', 'del', '', '700', '3', '0', '3', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('704', '编辑系统消息', 'wifiadmin', 'notice', 'edit', '', '700', '3', '0', '4', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('705', '新闻管理', 'wifiadmin', 'news', 'index', '', '700', '3', '1', '4', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('706', '添加新闻', 'wifiadmin', 'news', 'add', '', '700', '3', '1', '5', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('800', '广告推送', 'wifiadmin', 'pushadv', 'index', 'icon-facetime-video', '1', '1', '1', '3', '0', null, '1');
INSERT INTO `wifi_treenode` VALUES ('801', '推送设置', 'wifiadmin', 'pushadv', 'set', null, '800', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('802', '推送广告管理', 'wifiadmin', 'pushadv', 'index', null, '800', '3', '1', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('803', '添加推送广告', 'wifiadmin', 'pushadv', 'add', null, '800', '3', '1', '3', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('804', '编辑推送广告', 'wifiadmin', 'pushadv', 'edit', null, '800', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('805', '删除推送广告', 'wifiadmin', 'pushadv', 'del', null, '800', '1', '0', '4', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('806', '广告推送统计', 'wifiadmin', 'Pushadv', 'rpt', null, '800', '3', '1', '5', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('108', '删除用户', 'wifiadmin', 'system', 'deluser', null, '100', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('109', '删除角色', 'wifiadmin', 'System', 'delrole', null, '100', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('606', '导出用户资料', 'wifiadmin', 'report', 'downuser', null, '600', '3', '0', '10', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('900', '路由器管理', 'wifiadmin', 'route', 'index', 'icon-sitemap', '1', '1', '1', '0', '0', '', '1');
INSERT INTO `wifi_treenode` VALUES ('901', '路由列表', 'wifiadmin', 'route', 'index', '', '900', '3', '1', '0', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('307', '删除路由', 'wifiadmin', 'shop', 'delroute', null, '300', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('903', '编辑路由', 'wifiadmin', 'route', 'edit', '', '900', '3', '0', '0', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('904', '删除路由', 'wifiadmin', 'route', 'del', '', '900', '3', '0', '0', '1', '', '1');
INSERT INTO `wifi_treenode` VALUES ('304', '路由管理', 'wifiadmin', 'shop', 'routelist', null, '300', '1', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('305', '路由编辑', 'wifiadmin', 'shop', 'editroute', null, '300', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('306', '添加路由', 'wifiadmin', 'shop', 'addroute', null, '300', '3', '0', '0', '1', null, '1');
INSERT INTO `wifi_treenode` VALUES ('606', '微信用户统计', 'wifiadmin', 'report', 'userwx', null, '600', '3', '1', '0', '1', null, '1');

-- ----------------------------
-- Table structure for `wifi_wap`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_wap`;
CREATE TABLE `wifi_wap` (
  `uid` int(11) NOT NULL,
  `home_tpl` int(11) DEFAULT NULL,
  `home_tpl_path` varchar(255) DEFAULT NULL,
  `list_tpl` int(11) DEFAULT NULL,
  `list_tpl_path` varchar(255) DEFAULT NULL,
  `info_tpl` int(11) DEFAULT NULL,
  `info_tpl_path` varchar(255) DEFAULT NULL,
  `state` smallint(6) DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `info` text NOT NULL,
  `point_x` varchar(20) DEFAULT NULL,
  `point_y` varchar(20) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `add_time` varchar(50) DEFAULT NULL,
  `update_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_wap
-- ----------------------------
INSERT INTO `wifi_wap` VALUES ('1', '9', 'home_t3', '2', 'list_t1', '16', 'info_house', null, '亲亲小店', '18899996666', '国庆店庆双重庆，顺吉送礼好心情，国庆期间本店举行买手机 送话费、交话费送手机、买手机送礼品等活动，机会不多只有国庆，不要犹豫不要徘徊，犹豫徘徊就等于没来，赶快进店选购吧！', '106.290426', '38.463426', null, null, null, '北京市海淀区四里桥86号', '1412692305', '1412692305');
INSERT INTO `wifi_wap` VALUES ('5', '9', 'home_t3', '12', 'list_hotel', '13', 'info_hotel', '1', '我的小店', '13567890123', '', '116.395645', '39.929986', null, null, null, '北京市', '1413247993', '1413247993');
INSERT INTO `wifi_wap` VALUES ('9', '9', 'home_t3', null, null, null, null, '1', null, null, '', null, null, null, null, null, null, '1413249558', '1413249558');

-- ----------------------------
-- Table structure for `wifi_wapcatelog`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_wapcatelog`;
CREATE TABLE `wifi_wapcatelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `mode` varchar(20) DEFAULT 'art' COMMENT '栏目类别',
  `modematch` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `icopic` varchar(255) DEFAULT NULL,
  `titlepic` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `point_x` varchar(20) DEFAULT NULL,
  `point_y` varchar(20) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1' COMMENT '0:停用 1 使用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_wapcatelog
-- ----------------------------
INSERT INTO `wifi_wapcatelog` VALUES ('9', '1', '0', null, '促销商品', '', null, '/upload/AD/54194fbf64d9e.jpg', '', '0', '', '', '', '1410944959', '1410944959', '1');
INSERT INTO `wifi_wapcatelog` VALUES ('10', '1', '3', null, '联系我们', '本店地址', null, '/upload/AD/54195ce8ed841.jpg', '', '0', '', '106.256722', '38.489357', '1410948328', '1410948328', '1');
INSERT INTO `wifi_wapcatelog` VALUES ('3', '1', '0', null, '产品介绍', '', null, '/upload/AD/54194fdbaf554.jpg', '', '1', '', '', '', '1409540459', '1410944987', '1');
INSERT INTO `wifi_wapcatelog` VALUES ('11', '1', '0', null, '关于我们', '', null, '/upload/AD/54195d8fb1827.jpg', '', '0', '', '', '', '1410948495', '1410948495', '1');
INSERT INTO `wifi_wapcatelog` VALUES ('12', '5', '0', null, '关于我们', '', null, '/upload/AD/5419a2bcb828f.jpg', '', '0', '', '', '', '1410966204', '1410966204', '1');

-- ----------------------------
-- Table structure for `wifi_waptpl`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_waptpl`;
CREATE TABLE `wifi_waptpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` smallint(6) DEFAULT NULL COMMENT '0:首页 1 列表 2 图文',
  `title` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `tplpath` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `isdefault` smallint(6) DEFAULT '0' COMMENT '1 默认模板 0 不是默认',
  `state` smallint(6) DEFAULT '1' COMMENT '0: 停用 1 启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wifi_waptpl
-- ----------------------------
INSERT INTO `wifi_waptpl` VALUES ('2', '1', '默认模板', null, 'list1.png', 'list_t1', '0', '1', '1');
INSERT INTO `wifi_waptpl` VALUES ('6', '2', '科技模板', null, 'news_tech.png', 'info_tech', '1', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('8', '1', '默认模板3', null, 'list2.png', 'list_t2', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('9', '0', '默认模板4', null, 'cate1.png', 'home_t3', '3', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('11', '0', '酒店主题模板', null, 'home_hotel.png', 'home_hotel', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('12', '1', '酒店主题模板', null, 'list_hotel.png', 'list_hotel', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('13', '2', '酒店主题模板', null, 'info_hotel.png', 'info_hotel', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('15', '1', '房产主题模板', null, 'list_house.png', 'list_house', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('16', '2', '房产主题', null, 'info_house.png', 'info_house', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('17', '0', '主题模板10', null, 'home10.png', 'home_t10', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('19', '0', '酒吧模板', null, 'home_s.png', 'home_bar', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('20', '3', '默认模板1', null, 'shop_home_t1.png', 'home_t1', '0', '0', '1');
INSERT INTO `wifi_waptpl` VALUES ('21', '3', '默认模板2', null, null, 'index', '0', '0', '1');

-- ----------------------------
-- Table structure for `wifi_wxdata`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_wxdata`;
CREATE TABLE `wifi_wxdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shopid` int(12) NOT NULL,
  `accesstoken` varchar(600) CHARACTER SET utf8 NOT NULL,
  `expiresin` varchar(8) DEFAULT NULL,
  `gzl` int(8) NOT NULL DEFAULT '0',
  `qxl` int(8) NOT NULL DEFAULT '0',
  `add_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wifi_wxdata
-- ----------------------------

-- ----------------------------
-- Table structure for `wifi_wxuser`
-- ----------------------------
DROP TABLE IF EXISTS `wifi_wxuser`;
CREATE TABLE `wifi_wxuser` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `shopid` int(12) DEFAULT NULL,
  `wxopenid` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subscribe_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wifi_wxuser
-- ----------------------------
