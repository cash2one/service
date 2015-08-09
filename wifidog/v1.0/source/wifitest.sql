-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 01 月 24 日 17:14
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wifitest`
--

-- --------------------------------------------------------

--
-- 表的结构 `wifi_access`
--

CREATE TABLE IF NOT EXISTS `wifi_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_ad`
--

CREATE TABLE IF NOT EXISTS `wifi_ad` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='广告表' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `wifi_ad`
--

INSERT INTO `wifi_ad` (`id`, `uid`, `ad_pos`, `ad_thumb`, `ad_sort`, `title`, `info`, `mode`, `add_time`, `update_time`, `state`) VALUES
(6, 1, 0, '/upload/AD/541955786f847.jpg', 0, 'ropple智慧无线路由', '<p>\r\n	<span style="color:#939393;font-family:''Microsoft Yahei'';font-size:16px;line-height:25px;background-color:#FFFFFF;"> </span> \r\n</p>\r\n<h3 style="font-size:24px;font-family:''Microsoft Yahei'';color:#24A0DC;background-color:#FFFFFF;">\r\n	WiFi营销，亿万自媒体市场\r\n</h3>\r\n&nbsp;&nbsp;<span style="background-color:#FFFFFF;color:#939393;font-family:''Microsoft Yahei'';font-size:16px;line-height:25px;">支持包括微信、手机短信等多种认证方式，用户无需频繁询问复杂的WiFi密码，减少询问人力成本。用户通过认证时，自动成为你社交平台的粉丝。配合WiFi网站解决方案，实现精准广告投放、智能客户信息管理、自动品牌展示等功能。轻松将路人变成你的客户。</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="color:#939393;font-family:''Microsoft Yahei'';font-size:16px;line-height:25px;background-color:#FFFFFF;"> </span> \r\n</p>\r\n<h3 style="font-size:24px;font-family:''Microsoft Yahei'';color:#24A0DC;background-color:#FFFFFF;">\r\n	简单操作，展现广告\r\n</h3>\r\n<p style="color:#939393;font-family:''Microsoft Yahei'';font-size:16px;background-color:#FFFFFF;">\r\n	用户无需注册，即可方便享受商家提供的WiFi服务。无需频繁询问复杂的WiFi密码，减少人力成本。商家可配合WiFi网站解决方案，实现精准广告投放、智能客户信息管理、自动品牌展示等功能。轻松将路人变成您的客户，同时大幅度减少广告投入成本，为您带来更多的收益。\r\n</p>\r\n<h3 style="font-size:24px;font-family:''Microsoft Yahei'';color:#24A0DC;background-color:#FFFFFF;">\r\n	全行业方案支持\r\n</h3>\r\n<p style="color:#939393;font-family:''Microsoft Yahei'';font-size:16px;background-color:#FFFFFF;">\r\n	“WIFI认证”适用于酒店、餐饮、娱乐休闲、展会、商场等场所，有客户的地方就可以使用“WIFI认证”，不论是推送广告还是展示商家主页，仅需一台Ropple云路由，便可对顾客进行精准营销！\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>', 1, '1410628352', '1410946424', 1),
(7, 1, 0, '/upload/AD/54c35fa9d964e.jpg', 1, '微信拍立得微信打印机', '<h3>\r\n	&nbsp; &nbsp; 疯狂增加粉丝、低成本开发新客户\r\n	高效传播品牌、打造可持续后期营销\r\n</h3>\r\n<h3>\r\n	<span style="line-height:1.5;font-size:16px;font-weight:normal;"><strong>什么是微信拍立得？</strong></span> \r\n</h3>\r\n<div style="margin:30px 0px 0px;padding:0px 60px 0px 0px;" class="lomo_introduce_describe">\r\n	<p>\r\n		微信拍立得是帮助商家做好微信营销的创新型产品。\r\n	</p>\r\n	<p>\r\n		通过微信照片打印这一广受年轻人追捧的功能，快速帮助商家增加公众微信的粉丝。\r\n	</p>\r\n</div>\r\n<p>\r\n	商家可以通过系统的营销方案达到持久营销的效果。\r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;font-size:16px;"><strong>微信拍立得增粉原理</strong></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style="margin:30px 0px 0px;padding:0px;" class="lomo_introduce_2_describe">\r\n	<p>\r\n		要知道微信拍立得增粉原理，就要知道其打印照片步骤：\r\n	</p>\r\n	<p>\r\n		第一步：关注商家微信公众账号<br />\r\n第二步：发送想要打印的照片给商家公众号<br />\r\n第三步：发送验证码，打印照片\r\n	</p>\r\n	<p>\r\n		所以，如果用户想打印照片，他就会很自然的成为您的微信公众账号的粉丝了！\r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	核心价值1：低成本、疯狂增加粉丝\r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">通过微信传图，打印出自己喜欢的照片是一件非常酷，微信照片打印同时也是一件非常有意义的事情。</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">现在的年轻人追求时尚，好玩。微信拍立得正是这样的产品，可以简单的吸引年轻时尚，高消费能力的用户。</span><span style="line-height:1.5;">根据现有运营数据，每台微信拍立得平均每天能为网站、企业带来80~500个微信粉丝，100~1000条互动信息，100~800张LOMO卡制作量。</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;"> </span> \r\n</p>\r\n<p>\r\n	核心价值2：病毒式传播品牌\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="line-height:1.5;">微信拍立得</span><span style="line-height:1.5;">微信打印机</span><span style="line-height:1.5;">的界面可以设置商家视频或图片广告，在制作LOMO照片的过程中，商家的品牌得以友好的传播。</span><span style="line-height:1.5;">并且制作的每张LOMO卡上，均有由企业自行设置的LOGO及企业的公众微信二维码，便于品牌二次传播。</span><span style="line-height:1.5;">用户在同好友分享的过程中，您的品牌得以病毒式的传播。</span><span style="line-height:1.5;">微信拍立得</span><span style="line-height:1.5;">微信打印机</span><span style="line-height:1.5;">，您提升品牌价值的不二之选！</span> \r\n</p>\r\n<div style="margin:0px;padding:0px;" class="lomo_value_tittle">\r\n	核心价值3： 可持续的后期营销\r\n</div>\r\n<div style="margin:30px 0px 0px;padding:0px;" class="lomo_value_3_describe">\r\n	<p>\r\n		我们都知道，获取一位新客户的成本是相当高的。而通过微信拍立得微信打印机，我们却只需要0.18元。\r\n	</p>\r\n	<p>\r\n		有了这些粉丝，我们就有了一个客户数据库，通过一些营销方案，我们可以轻松的和这些潜在用户互动。\r\n	</p>\r\n	<p>\r\n		时机成熟的时候，我们提出成交主张就会得到响应。这是微信拍立得最具价值的地方。\r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 1, '1410628630', '1422090153', 1),
(8, 1, 0, '/upload/AD/54147cbff2431.jpg', 4, '智慧无线生活', '<p>\r\n	智慧无线生活\r\n</p>\r\n<p>\r\n	智慧无线生活\r\n</p>\r\n<p>\r\n	<span style="color:#009900;">智慧无线生活</span>\r\n</p>\r\n<p>\r\n	<span style="color:#009900;">智慧无线生活</span>\r\n</p>\r\n<p>\r\n	<span style="color:#009900;"></span>\r\n</p>', 1, '1410628800', '1410662608', 1),
(10, 5, 0, '/upload/AD/5419a33a259d7.jpg', 0, 'sdf', 'sdaf', 1, '1410966330', '1413248022', 1),
(11, 5, 0, '/upload/AD/5419a344defa1.jpg', 0, '123', '123', 1, '1410966340', '1413248027', 1),
(12, 8, 0, '/upload/AD/5437ce14ec67f.jpg', 0, '', '', 0, '1412943380', '1412943380', 1),
(13, 9, 0, '/upload/AD/543c76f4bd28d.jpg', 0, 'x', 'xx', 1, '1413248756', '1413248756', 1),
(14, 1, 0, '/upload/AD/54c35fbb71643.jpg', 0, '34', '34', 0, '1422090172', '1422090172', 1),
(15, 1, 0, '/upload/AD/54c35fcb9448f.png', 0, '454', '45454', 0, '1422090188', '1422090188', 1),
(16, 1, 0, '/upload/AD/54c35fdfa71eb.jpg', 0, '343', '343', 0, '1422090208', '1422090208', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_adcount`
--

CREATE TABLE IF NOT EXISTS `wifi_adcount` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6834 ;

--
-- 转存表中的数据 `wifi_adcount`
--

INSERT INTO `wifi_adcount` (`id`, `shopid`, `aid`, `showup`, `hit`, `add_time`, `add_date`, `mode`, `agent`, `ip`, `browser`) VALUES
(1494, 1, 20, 1, 0, '1410952948', '2014-09-17', 50, '1', NULL, NULL),
(1495, 1, 19, 1, 0, '1410952948', '2014-09-17', 50, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_admin`
--

CREATE TABLE IF NOT EXISTS `wifi_admin` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `wifi_admin`
--

INSERT INTO `wifi_admin` (`id`, `user`, `password`, `role`, `note`, `add_time`, `update_time`, `state`, `last_loginip`, `last_logintime`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, '1389750196', '1409202810', 1, '0.0.0.0', '1422090662');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_agent`
--

CREATE TABLE IF NOT EXISTS `wifi_agent` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `wifi_agent`
--

INSERT INTO `wifi_agent` (`id`, `account`, `password`, `linker`, `phone`, `name`, `info`, `money`, `fee`, `level`, `province`, `city`, `area`, `address`, `point_x`, `point_y`, `add_time`, `update_time`, `state`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '张先生', '18633021234', '高级代理', NULL, '18000.00', '20000.00', 1, '北京市', '市辖区', '东城区', '', NULL, NULL, '1409139480', '1409139480', 1),
(2, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'sdaf', '13412345678', '1234', NULL, '500.00', '23333.00', 1, '北京市', '市辖区', '东城区', '', NULL, NULL, '1413248444', '1413248444', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_agentlevel`
--

CREATE TABLE IF NOT EXISTS `wifi_agentlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `openpay` decimal(10,2) DEFAULT '0.00' COMMENT '开户金额',
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `wifi_agentlevel`
--

INSERT INTO `wifi_agentlevel` (`id`, `title`, `note`, `openpay`, `add_time`, `update_time`, `state`) VALUES
(1, '一', '', '500.00', '1409139431', '1409139431', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_agentpay`
--

CREATE TABLE IF NOT EXISTS `wifi_agentpay` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `wifi_agentpay`
--

INSERT INTO `wifi_agentpay` (`id`, `aid`, `do`, `oldmoney`, `nowmoney`, `paymoney`, `desc`, `add_time`, `update_time`) VALUES
(1, 1, 1, NULL, NULL, '20000', '1111', '1409139565', '1409139565'),
(2, 1, 0, '20000', '19500', '500', '商户开户扣款', '1409721341', '1409721341'),
(3, 1, 0, '19500', '19000', '500', '商户开户扣款', '1409801953', '1409801953'),
(4, 1, 0, '19000', '18500', '500', '商户开户扣款', '1410880666', '1410880666'),
(5, 1, 0, '18500', '18000', '500', '商户开户扣款', '1412665504', '1412665504'),
(6, 2, 1, NULL, NULL, '1000', '1', '1413248689', '1413248689'),
(7, 2, 0, '1000', '500', '500', '商户开户扣款', '1413248692', '1413248692');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_agentpushset`
--

CREATE TABLE IF NOT EXISTS `wifi_agentpushset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `pushflag` tinyint(4) DEFAULT NULL COMMENT '是否启用广告推送',
  `showtime` int(11) DEFAULT '3',
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `wifi_agentpushset`
--

INSERT INTO `wifi_agentpushset` (`id`, `aid`, `pushflag`, `showtime`, `add_time`, `update_time`) VALUES
(1, 1, 1, 6, '1413911664', '1413911664'),
(2, 2, 1, 6, '1413249458', '1413249458');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_arts`
--

CREATE TABLE IF NOT EXISTS `wifi_arts` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `wifi_arts`
--

INSERT INTO `wifi_arts` (`id`, `uid`, `cid`, `title`, `titlepic`, `desc`, `info`, `topflag`, `add_time`, `update_time`, `state`) VALUES
(1, 1, 3, '微信营销，它是伴随着微信的火热应运而生的', '/upload/AD/5403e212ed8b1.png', '是网络经济时代企业面临着营销模式的创新，它不存在距离的限制', '<p>\r\n	微信营销，它是伴随着微信的火热应运而生的，是网络经济时代企业面临着营销模式的创新，它不存在距离的限制，用户可以订阅自己想要的信息，企业与商家通过提供信息，推广自己的品牌或产品，从而实现点对点的营销方式。满足3高直达5高。<br />\r\n<br />\r\n1、高到达率<br />\r\n2、高曝光率<br />\r\n3、高接受率<br />\r\n4、高精准度<br />\r\n5、高便利性<br />\r\n微信营销颇具实力，以上所述只是微信营销的显性优势，那些隐形优势还有待我们再去考究，微信营销让网络营销更具魅力！\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 0, '1409540626', '1410948164', 1),
(2, 1, 3, '微信时代大量吸粉利器——微信拍立得', '/upload/AD/5406c8fab466e.jpg', '', '（微信打印机、微信即时印、印美图）登陆大西安了，由西安多特瑞互动科技（http://www.doterry.cn）独家引进，只需用微信扫一扫，瞬间增加微信公众平台的关注度和人气，便于后期微信营销的深化；现场打印的LOMO卡片印有主办方LOGO，信息传播的广度和深度进一步加强。&nbsp;<br />\r\n第一步、去申请一个微信公众帐号，生成您的专属二维码。&nbsp;<br />\r\n第二步、在活动现场、营销中心、店面大厅、汽车展馆等摆放一台微信趣拍自助印终端。在终端设备边上准备一个使用指南，印上供嘉宾扫描用的二维码。&nbsp;<br />\r\n第三步、嘉宾来到活动现场时会主动去扫描二维码，成我们的粉丝。&nbsp;<br />\r\n第四步、成为粉丝之后，嘉宾可以把自己的手机变成“拍立得”无论是客户现场拍摄的照片还是手机里原的照片，都可以以微信的方式传给我们的公众帐号，上传完成以后，我们会在他手机上生成一个随机的认证码在本地的手机输入认证码后，终端打印设备将在30秒内打印出印有活动广告LOGO 的专属照片。&nbsp;<br />\r\n参加过微信即时印终端的嘉宾的反馈信息：&nbsp;<br />\r\n1、可以随意打印手机里原有照片或是打印现场与朋友合影照片，让人心情愉悦。&nbsp;<br />\r\n2、嘉宾可以长期关注活动主办方，活动主办方也利用微信平台，及时发布活动信息。&nbsp;<br />\r\n3、一场活动结束以后，嘉宾带走的是印有LOGO广告的照片，宣传面更广，且可以安排持续不断的以照片为主的活动，例如：凭当天活动现场的照片成交商品的可以有优惠，活动现场最佳拍摄作品评比等等。&nbsp;<br />\r\n<div>\r\n	<br />\r\n</div>', 0, '1409730810', '1410947840', 1),
(3, 1, 3, '你为什么需要微网站？', '/upload/AD/54198101aeca1.jpg', '微网站的具体功能有哪些？', '微网站的具体功能有哪些？　<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;一、符合受众的浏览习惯，使客户获取最佳浏览体验。<br />\r\n　　二、一键预定：实现快速下单，减少时间拖延带来的风险。<br />\r\n　　三、一键分享：实现用户自行推广，病毒式传播营销。<br />\r\n　　四、利用微信信息内容推送、微博广播功能，以及其他社交网络，实现精准营销。<br />\r\n　　五、一键留言：快速反馈，方便企业完善服务。<br />\r\n　　六、一键导航：实现精准位置导航，方便客户上面沟通，促进成交率。<br />\r\n　　七、开放数据分析功能，对访客记录、分析，获取精准有效数据。<br />\r\n　　八、内容符合微信的特点，简单高效，有吸引力。<br />\r\n　　九、一键拨号：方便客户咨询，及时了解，促进交易。<br />\r\n　　十、电子喜帖：专业为影楼与婚礼策划机构研发与定制，与现代年轻人思想结合，美观大方的版面配合背景音乐与视频，在新人好友中展现他们靓丽与喜庆的一面。<br />\r\n　　十一、简洁大方，具有良好可拓展性。<br />\r\n　　十二、提交订单：专业为销售企业研发与定制，实现快速下单，减少时间拖延带来的风险，线上线下互动转化提高转化率。<br />\r\n<br />\r\n&nbsp;<br />\r\n适用行业 ：装饰建材、家装公司、餐饮、KTV、酒店、美容美发、汽车4S店、旅行社、航空公司、银行、教育、医疗保健等行业。<br />\r\n<div>\r\n	<br />\r\n</div>', 1, '1410948033', '1410957569', 1),
(4, 1, 9, '特价促销新商品', '/upload/AD/54199f115a418.jpg', '', '特价促销新商品', 1, '1410948640', '1410965265', 1),
(5, 1, 9, '欢度10.1国庆节，所有商品一律8折起售', '/upload/AD/54199f2625650.jpg', '欢迎到店选购。', '欢度10.1国庆节，所有商品一律8折起售&nbsp;欢迎到店选购。', 0, '1410948707', '1410965286', 1),
(6, 1, 11, '关于我们', '/upload/AD/54199ee545315.jpg', '', '<span style="color:#5B5B5B;font-family:Simsun;font-size:14px;line-height:19px;background-color:#FFFFFF;">&nbsp;百姓超市有限公司前称为（泉州百姓超市有限公司），公司1996年在泉州挂牌成立。自创建经营十年来，得到各级政府和广大消费者的认同，公司一贯以“便民、利民、为民”为企业宗旨，坚持“百姓超市、服务百姓”的服务理念，以优质的商品、优良的服务、创立了家喻户晓的本土品牌—“百姓企业”。&nbsp;</span><br />\r\n<span style="color:#5B5B5B;font-family:Simsun;font-size:14px;line-height:19px;background-color:#FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;随着传统流通格局的深刻变革，零售业出现两极分化的市场局面，连锁便利成为流通企业改革的主要导向。2003年公司针对市场变化，作出调整产业结构经营方向的重大抉择。借鉴国内社区便利连锁的成功例子，公司开始转向探索、发展社区便利店连锁经营。至今，公司已成功拥有社区便利店30多家，总投资近2000万元，总营业面积约近万平方米。管理产生效益，公司在发展经营的同时，不断完善企业管理制度，强化员工素质教育，提高员工综合素质，倡导企业文化，提升企业凝聚力。对每个员工而言，“百姓超市”不只是一个企业，它更象一个属于大家的“家”。目前公司拥有高素质高层管理人员20余人，中层管理人员50余人，员工300余人。&nbsp;更让我们自豪的是企业不仅拥有员工财富，更拥有友好合作队伍（供应商）的大力支持。</span><br />\r\n<span style="color:#5B5B5B;font-family:Simsun;font-size:14px;line-height:19px;background-color:#FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;公司本着“服务社区、贴近生活”的经营模式，真正做到为社区居民服务的目标。正是公司正确的经营方针的指引，团结奋斗的员工共同协作，企业近年来佳绩连创，捷报频传，同时“保真的商品、真诚的服务”赢得了消费者的信赖和赞誉。社区居民的消费需求，给企业创造良好的发展空间，公司将抓住市场发展机遇，&nbsp;增加泉州市场的社区覆盖率，减少盲区。&nbsp;同时扩展视野，将发展方向延伸到周边地区。在2009&nbsp;年公司将扩大连锁加盟，预计2010年发展趋势将达到100家分店，2012年门店总数达到200家甚至更多。&nbsp;市场是无限的，企业将不断改进，适应市场发展空间，前景无法估量。让“百姓”这块金字招牌更辉煌！</span>', 0, '1410948860', '1410965221', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_authlist`
--

CREATE TABLE IF NOT EXISTS `wifi_authlist` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_authtpl`
--

CREATE TABLE IF NOT EXISTS `wifi_authtpl` (
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

--
-- 转存表中的数据 `wifi_authtpl`
--

INSERT INTO `wifi_authtpl` (`id`, `tpname`, `keyname`, `info`, `pic`, `shopid`, `state`, `group`) VALUES
(1001, '默认模板', 'default', NULL, 'default.jpg', NULL, 1, 1),
(1002, '默认模板2', 'wifiadv', NULL, 'wifiadv.jpg', NULL, 1, 1),
(1003, '默认模板3', 'wifiadv2', NULL, 'wifiadv2.jpg', NULL, 1, 1),
(1004, '默认模板4', 'wifiadv3', NULL, 'wifiadv3.jpg', NULL, 1, 1),
(1005, '默认模板5', 'wifiadv4', NULL, 'wifiadv4.jpg', NULL, 1, 1),
(1006, '默认模板6', 'newadv', NULL, 'newadv.jpg', NULL, 1, 1),
(1007, '默认模板7', 'wood', NULL, 'wood.jpg', NULL, 1, 1),
(1008, '默认模板8', 'bright', NULL, 'bright.jpg', NULL, 1, 1),
(1009, '默认模板9', 'newyear', NULL, 'newyear.jpg', NULL, 1, 1),
(1010, '划屏模板', 'huaping', NULL, 'huaping.jpg', NULL, 1, 1),
(1011, '倒计时模板', 'jishi', NULL, 'jishi.jpg', NULL, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_blacklist`
--

CREATE TABLE IF NOT EXISTS `wifi_blacklist` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_buttonset`
--

CREATE TABLE IF NOT EXISTS `wifi_buttonset` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_comment`
--

CREATE TABLE IF NOT EXISTS `wifi_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `routeid` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_day`
--

CREATE TABLE IF NOT EXISTS `wifi_day` (
  `id` int(11) NOT NULL,
  `tname` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wifi_day`
--

INSERT INTO `wifi_day` (`id`, `tname`) VALUES
(0, '00'),
(1, '01'),
(2, '02'),
(3, '03'),
(4, '04'),
(5, '05'),
(6, '06'),
(7, '07'),
(8, '08'),
(9, '09'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_hours`
--

CREATE TABLE IF NOT EXISTS `wifi_hours` (
  `t` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wifi_hours`
--

INSERT INTO `wifi_hours` (`t`) VALUES
('01'),
('02'),
('03'),
('04'),
('05'),
('06'),
('07'),
('08'),
('09'),
('10'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('19'),
('20'),
('21'),
('22'),
('23'),
('24');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_join`
--

CREATE TABLE IF NOT EXISTS `wifi_join` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(500) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_member`
--

CREATE TABLE IF NOT EXISTS `wifi_member` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

--
-- 转存表中的数据 `wifi_member`
--

INSERT INTO `wifi_member` (`id`, `user`, `password`, `mode`, `shopid`, `routeid`, `token`, `phone`, `qq`, `mac`, `login_time`, `login_count`, `login_ip`, `add_time`, `update_time`, `browser`, `online_time`, `add_date`) VALUES
(440, '544a1c03e054e', 'e10adc3949ba59abbe56e057f20f883e', '3', 1, 22, '2995aab6e58432118f2ea5b6c4487071', '13888888888', NULL, 'c4:6a:b7:db:d0:ad', '1414142979', 0, NULL, '1414142979', '1414142979', 'Safari', '1414145979', '2014-10-24');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_month`
--

CREATE TABLE IF NOT EXISTS `wifi_month` (
  `id` int(11) NOT NULL,
  `mon` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wifi_month`
--

INSERT INTO `wifi_month` (`id`, `mon`) VALUES
(1, '01'),
(2, '02'),
(3, '03'),
(4, '04'),
(5, '05'),
(6, '06'),
(7, '07'),
(8, '08'),
(9, '09'),
(10, '10'),
(11, '11'),
(12, '12');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_nav`
--

CREATE TABLE IF NOT EXISTS `wifi_nav` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_news`
--

CREATE TABLE IF NOT EXISTS `wifi_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `info` text,
  `mode` varchar(10) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `wifi_news`
--

INSERT INTO `wifi_news` (`id`, `keyword`, `desc`, `title`, `info`, `mode`, `add_time`, `update_time`) VALUES
(1, NULL, NULL, '代理商和平台账号添加推送广告置顶和审核功能！', '<a rel="nofollow" target="_blank">代理商和平台账号添加推送广告置顶和审核功能！</a>', '1', '1422089854', '1422089854'),
(2, NULL, NULL, '代理商平台添加在线路由实时查看监控功能', '<a rel="nofollow" target="_blank">代理商平台添加在线路由实时查看监控功能</a>', '1', '1422089863', '1422089863'),
(3, NULL, NULL, '增加路由器在线查看运行时长 剩余内存 cpu负载等功能', '<a rel="nofollow" target="_blank">增加路由器在线查看运行时长 剩余内存 cpu负载等功能</a>', '1', '1422089874', '1422089874'),
(4, NULL, NULL, '增加mac黑白名单管理功能', '<a rel="nofollow" target="_blank">增加mac黑白名单管理功能</a>', '1', '1422089890', '1422089890'),
(5, NULL, NULL, '商家账号添加微信一键认证密码认证、多套认证模板！', '<a rel="nofollow" target="_blank">商家账号添加微信一键认证密码认证、多套认证模板！</a>', '1', '1422089902', '1422089902'),
(6, NULL, NULL, '新增加认证成功页面显示认证时长功能。', '<u>新增加认证成功页面显示认证时长功能。</u>', '1', '1422089911', '1422089911'),
(7, NULL, NULL, '平台增加新版本检测和数据库清理功能。', '<a rel="nofollow" target="_blank">平台增加新版本检测和数据库清理功能。</a>', '1', '1422089924', '1422089924'),
(8, NULL, NULL, '修复商家、代理和平台账号编辑广告后服务器旧广告图片文件不删除问题！', '<a rel="nofollow" target="_blank">修复商家、代理和平台账号编辑广告后服务器旧广告图片文件不删除问题！</a>', '1', '1422089932', '1422089932'),
(9, NULL, NULL, '倒计时模板增加了全部的认证方式（之前只有一键）.', '<a rel="nofollow" target="_blank">倒计时模板增加了全部的认证方式（之前只有一键）.</a>', '1', '1422089940', '1422089940'),
(10, NULL, NULL, '微信关注认证取消关注断网功能已上线欢迎测试！', '<a rel="nofollow" target="_blank">微信关注认证取消关注断网功能已上线欢迎测试！</a>', '1', '1422089948', '1422089948');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_node`
--

CREATE TABLE IF NOT EXISTS `wifi_node` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_notice`
--

CREATE TABLE IF NOT EXISTS `wifi_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `info` text,
  `add_time` varchar(15) DEFAULT NULL,
  `update_time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `wifi_notice`
--

INSERT INTO `wifi_notice` (`id`, `title`, `info`, `add_time`, `update_time`) VALUES
(2, '微信关注认证取消关注断网功能已上线欢迎测试！', '<a rel="nofollow" target="_blank">微信关注认证取消关注断网功能已上线欢迎测试！</a>', '1422090041', '1422090041'),
(3, '倒计时模板增加了全部的认证方式（之前只有一键）.', '<a rel="nofollow" target="_blank">倒计时模板增加了全部的认证方式（之前只有一键）.</a>', '1422090051', '1422090051'),
(4, '商家账号添加微信一键认证密码认证、多套认证模板！', '<a rel="nofollow" target="_blank">商家账号添加微信一键认证密码认证、多套认证模板！</a>', '1422090063', '1422090063'),
(5, '增加路由器在线查看运行时长 剩余内存 cpu负载等功能', '<a rel="nofollow" target="_blank">增加路由器在线查看运行时长 剩余内存 cpu负载等功能</a>', '1422090073', '1422090073');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_pushadv`
--

CREATE TABLE IF NOT EXISTS `wifi_pushadv` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `wifi_pushadv`
--

INSERT INTO `wifi_pushadv` (`id`, `title`, `mode`, `pic`, `info`, `sort`, `trade`, `showcount`, `add_time`, `startdate`, `enddate`, `update_time`, `state`, `aid`, `shopid`) VALUES
(1, '123', 0, '/upload/PUSHAD/54354ecf9ae72.jpg', '123', 1, '#手机##咖啡厅#', 0, '1412779727', '1412697600', '1419955200', '1413951062', 1, 1, 1),
(22, 'sdfas', 0, '/upload/PUSHAD/543c78ac73ccf.jpg', 'sadf', 1, '#餐饮##手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', 0, '1413249196', '1413216000', '1415894400', '1413249196', 1, 2, NULL),
(13, '代理商1广告位1 足浴', 0, '/upload/PUSHAD/5431628cd69d4.jpg', '<h2>\r\n	代理商广告位2代理商广告位2代理商广告位2代理商广告位2\r\n</h2>', 1, '#餐饮##手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', 1, '1410629074', '1410624000', '1419955200', '1413956037', 1, 1, NULL),
(20, '代理广告位2 全行业', 0, '/upload/PUSHAD/5431627e95d64.jpg', '', 1, '#餐饮##手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', 1, '1410918699', '1411142400', '1420646400', '1413950886', 1, 1, NULL),
(21, '平台广告2 全行业', 0, '/upload/PUSHAD/5418eb47b5183.jpg', '平台广告2 全行业平台广告2 全行业平台广告2 全行业', 1, '#餐饮##手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', 1, '1410919239', '1410883200', '1415808000', '1413912337', 1, 0, NULL),
(9, '123', 0, '/upload/PUSHAD/543c78c9641fe.jpg', '123', 1, '#手机##咖啡厅##足浴##KTV##购物商超##酒店宾馆##休闲娱乐#', 0, '1413249225', '1413216000', '1415894400', '1413901694', 1, 2, 9);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_role`
--

CREATE TABLE IF NOT EXISTS `wifi_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_role_user`
--

CREATE TABLE IF NOT EXISTS `wifi_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_routemap`
--

CREATE TABLE IF NOT EXISTS `wifi_routemap` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `wifi_routemap`
--

INSERT INTO `wifi_routemap` (`id`, `shopid`, `routename`, `gw_address`, `gw_port`, `gw_id`, `sortid`, `add_time`, `update_time`, `sys_uptime`, `sys_memfree`, `wifidog_uptime`, `sys_load`, `last_heartbeat_ip`, `last_heartbeat_time`, `user_agent`, `notes`, `state`) VALUES
(12, 0, '1', '192.168.10.1', '2060', '000D0BFD5E23', 0, '1412750910', '1413042377', '598099', '33116', '598032', '0.21', NULL, '1412751841', 'wget', NULL, 1),
(22, 1, 'x', '192.168.10.1', '3000', 'ACA2139BB5E6', 0, '1413250032', '1413908671', '26842', '40128', '1682', '0.60', NULL, '1414143655', 'RippleTek 201404', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_shop`
--

CREATE TABLE IF NOT EXISTS `wifi_shop` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `wifi_shop`
--

INSERT INTO `wifi_shop` (`id`, `account`, `password`, `shopname`, `pid`, `mode`, `logo`, `linker`, `phone`, `info`, `address`, `point_x`, `point_y`, `add_time`, `update_time`, `state`, `tpl_id`, `tpl_path`, `trade`, `province`, `city`, `area`, `maxcount`, `end_time`, `shopgroup`, `shoplevel`, `routetype`, `authmode`, `authaction`, `jumpurl`, `linkflag`, `timelimit`, `sh`, `eh`, `countflag`, `countmax`, `duanxin`, `ratelimit`, `smscount`, `token`, `temptime`, `wxewm`, `djs`, `wxsuccess`, `wxgzts`, `wxappid`, `threadurl`, `wxrzfs`) VALUES
(1, 'qin', 'e10adc3949ba59abbe56e057f20f883e', '1234', 1, 0, NULL, '1222', '18995113232', NULL, '', NULL, NULL, '1410880914', '1422088141', 1, 1003, 'wifiadv2', '足浴', '北京市', '市辖区', '东城区', 600, '1410880914', NULL, '', 0, '#0##1##2##3={"user":"qdjazzinsland","pwd":"\\u7235\\u58eb\\u5c9b\\u5496\\u5561","ysid":"223"}#<0', 1, 'http://www.baidu.com', 1, 0, 0, 23, 0, 0, '您的上网验证码："$code"', 0, 100, '6542332f1fg436a0b069d45659c62a1a', 10, '/upload/WXEWM/54c355ad0e35c.jpg', 20, '嘉信通提醒您：已认证成功', '关注成功，您可以使用本店提供的wifi免费上网了！', 'wxb5ce30a97829af83=976aaae3e16b784b533d55c6726b2ab5', 'http://www.baidu.com', 1),
(5, 'qin2', 'e10adc3949ba59abbe56e057f20f883e', '1234', 1, 0, NULL, '1222', '18995113232', NULL, '', NULL, NULL, '1410880914', '1413898554', 1, 1003, 'wifiadv2', '足浴', '北京市', '市辖区', '东城区', 600, '1410880914', NULL, '', 0, '#0##2#<0', 3, '', 1, 0, 0, 23, 0, 0, '', 0, 0, NULL, 5, NULL, 10, NULL, NULL, NULL, NULL, 0),
(9, 'qin3', 'e10adc3949ba59abbe56e057f20f883e', '134', 2, 0, NULL, '234', '13456789012', NULL, '', NULL, NULL, '1413248692', '1413898544', 1, 1003, 'wifiadv2', '餐饮', '北京市', '市辖区', '东城区', 600, '1413248692', NULL, '#低端#', 0, '#0##1##2#<', 3, '', 0, 0, 0, 23, 0, 0, '', 0, 0, '6541d32f1df436a0b069de2259c62a1a', 5, NULL, 10, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_sms`
--

CREATE TABLE IF NOT EXISTS `wifi_sms` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_smscfg`
--

CREATE TABLE IF NOT EXISTS `wifi_smscfg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0:停用 1 启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `wifi_smscfg`
--

INSERT INTO `wifi_smscfg` (`id`, `uid`, `user`, `password`, `add_time`, `update_time`, `state`) VALUES
(1, 1, 'jinguangxi1983', '123456789a', '1422088540', '1422088540', 1),
(2, 4, '23ns8', '123', '1410499272', '1410499272', 1),
(3, 8, 'aer', 'sadf', '1412690612', '1412690612', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_smscount`
--

CREATE TABLE IF NOT EXISTS `wifi_smscount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) DEFAULT NULL,
  `mac` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `add_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `smscode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_tpl`
--

CREATE TABLE IF NOT EXISTS `wifi_tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_name` varchar(255) DEFAULT NULL,
  `tpl_path` varchar(255) DEFAULT NULL,
  `group` varchar(10) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '0：停用 1 使用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_tradead`
--

CREATE TABLE IF NOT EXISTS `wifi_tradead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopid` int(11) NOT NULL COMMENT '商户ID',
  `mode` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_treenode`
--

CREATE TABLE IF NOT EXISTS `wifi_treenode` (
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

--
-- 转存表中的数据 `wifi_treenode`
--

INSERT INTO `wifi_treenode` (`id`, `title`, `g`, `m`, `a`, `ico`, `pid`, `level`, `menuflag`, `sort`, `single`, `remark`, `status`) VALUES
(1, 'WIFI管理', 'wifiadmin', 'Index', 'index', NULL, 0, 1, 0, 0, 1, NULL, 1),
(2, '首页', 'wifiadmin', 'index', 'index', 'icon-home', 1, 2, 1, 0, 1, NULL, 1),
(3, '密码修改', 'wifiadmin', 'index', 'pwd', '1', 2, 3, 0, 0, 1, NULL, 1),
(100, '系统管理', 'wifiadmin', 'System', 'index', 'icon-asterisk', 1, 2, 1, 0, 0, NULL, 1),
(101, '角色管理', 'wifiadmin', 'system', 'role', NULL, 100, 2, 1, 0, 1, NULL, 1),
(102, '添加角色', 'wifiadmin', 'system', 'addrole', NULL, 100, 2, 1, 0, 1, NULL, 1),
(103, '编辑角色', 'wifiadmin', 'system', 'editrole', NULL, 100, 3, 0, 0, 1, NULL, 1),
(104, '角色权限', 'wifiadmin', 'system', 'roleaccess', NULL, 100, 3, 0, 0, 1, NULL, 1),
(105, '用户管理', 'wifiadmin', 'system', 'userlist', NULL, 100, 2, 1, 0, 1, NULL, 1),
(106, '添加用户', 'wifiadmin', 'system', 'adduser', NULL, 100, 3, 1, 0, 1, NULL, 1),
(107, '编辑用户', 'wifiadmin', 'system', 'userlist', NULL, 100, 3, 1, 0, 1, NULL, 1),
(200, '网站管理', 'wifiadmin', '', '', 'icon-cogs', 1, 1, 1, 0, 0, NULL, 1),
(201, '网站设置', 'wifiadmin', 'system', 'index', NULL, 200, 3, 1, 0, 1, NULL, 1),
(202, '参数设置', 'wifiadmin', 'System', 'setting', NULL, 200, 1, 1, 0, 1, NULL, 1),
(300, '商户管理', 'wifiadmin', 'Shop', 'index', 'icon-group', 1, 1, 1, 0, 0, NULL, 1),
(301, '商户列表', 'wifiadmin', 'Shop', 'index', NULL, 300, 2, 1, 0, 1, NULL, 1),
(302, '添加商户', 'wifiadmin', 'shop', 'addshop', NULL, 300, 3, 1, 0, 1, NULL, 1),
(303, '编辑商户', 'wifiadmin', 'shop', 'editshop', NULL, 300, 1, 0, 0, 1, NULL, 1),
(400, '代理商管理', 'wifiadmin', 'agent', '', 'icon-user-md', 1, 2, 1, 0, 0, NULL, 1),
(401, '代理商等级', 'wifiadmin', 'agent', 'level', NULL, 400, 3, 1, 0, 1, NULL, 1),
(402, '代理商列表', 'wifiadmin', 'agent', 'index', NULL, 400, 3, 1, 2, 1, NULL, 1),
(403, '添加代理商', 'wifiadmin', 'agent', 'add', NULL, 400, 3, 1, 3, 1, NULL, 1),
(404, '编辑代理商', 'wifiadmin', 'agent', 'edit', NULL, 400, 3, 0, 4, 1, NULL, 1),
(405, '添加等级', 'wifiadmin', 'agent', 'addlevel', NULL, 400, 3, 1, 1, 1, NULL, 1),
(406, '删除代理商', 'wifiadmin', 'agent', 'del', NULL, 400, 3, 0, 5, 1, NULL, 1),
(407, '扣款记录', 'wifiadmin', 'agent', 'paylist', NULL, 400, 3, 1, 7, 1, NULL, 1),
(408, '帐号金额调整', 'wifiadmin', 'agent', 'dopay', NULL, 400, 3, 0, 0, 1, NULL, 1),
(500, '广告管理', 'wifiadmin', 'ad', 'index', 'icon-cloud', 1, 1, 1, 0, 0, NULL, 1),
(501, '广告列表', 'wifiadmin', 'ad', 'index', NULL, 500, 1, 1, 0, 1, NULL, 1),
(502, '编辑广告', 'wifiadmin', 'ad', 'editad', NULL, 500, 3, 0, 0, 1, NULL, 1),
(504, '删除广告', 'wifiadmin', 'ad', 'delad', NULL, 500, 3, 0, 0, 1, NULL, 1),
(505, '广告统计', 'wifiadmin', 'ad', 'rpt', NULL, 500, 1, 1, 0, 1, NULL, 1),
(600, '统计信息', 'wifiadmin', 'report', '', 'icon-bar-chart', 1, 2, 1, 0, 0, NULL, 1),
(601, '注册用户', 'wifiadmin', 'report', 'user', NULL, 600, 3, 1, 0, 1, NULL, 1),
(602, '上网记录', 'wifiadmin', 'report', 'online', '', 600, 3, 1, 0, 1, '', 1),
(603, '用户统计报表', 'wifiadmin', 'report', 'userchart', NULL, 600, 3, 1, 0, 1, NULL, 1),
(604, '上网统计报表', 'wifiadmin', 'report', 'authchart', NULL, 600, 3, 1, 0, 1, NULL, 1),
(605, '在线路由统计', 'wifiadmin', 'report', 'routechart', NULL, 600, 3, 1, 0, 1, NULL, 1),
(700, '信息管理', 'wifiadmin', 'notice', '', 'icon-bullhorn', 1, 1, 1, 0, 0, '', 1),
(701, '系统消息', 'wifiadmin', 'notice', 'index', '', 700, 3, 1, 0, 1, '', 1),
(702, '添加系统消息', 'wifiadmin', 'notice', 'add', '', 700, 3, 1, 2, 1, '', 1),
(703, '删除系统消息', 'wifiadmin', 'notice', 'del', '', 700, 3, 0, 3, 1, '', 1),
(704, '编辑系统消息', 'wifiadmin', 'notice', 'edit', '', 700, 3, 0, 4, 1, '', 1),
(705, '新闻管理', 'wifiadmin', 'news', 'index', '', 700, 3, 1, 4, 1, '', 1),
(706, '添加新闻', 'wifiadmin', 'news', 'add', '', 700, 3, 1, 5, 1, '', 1),
(800, '广告推送', 'wifiadmin', 'pushadv', 'index', 'icon-facetime-video', 1, 1, 1, 3, 0, NULL, 1),
(801, '推送设置', 'wifiadmin', 'pushadv', 'set', NULL, 800, 3, 1, 0, 1, NULL, 1),
(802, '推送广告管理', 'wifiadmin', 'pushadv', 'index', NULL, 800, 3, 1, 0, 1, NULL, 1),
(803, '添加推送广告', 'wifiadmin', 'pushadv', 'add', NULL, 800, 3, 1, 3, 1, NULL, 1),
(804, '编辑推送广告', 'wifiadmin', 'pushadv', 'edit', NULL, 800, 3, 0, 0, 1, NULL, 1),
(805, '删除推送广告', 'wifiadmin', 'pushadv', 'del', NULL, 800, 1, 0, 4, 1, NULL, 1),
(806, '广告推送统计', 'wifiadmin', 'Pushadv', 'rpt', NULL, 800, 3, 1, 5, 1, NULL, 1),
(108, '删除用户', 'wifiadmin', 'system', 'deluser', NULL, 100, 3, 0, 0, 1, NULL, 1),
(109, '删除角色', 'wifiadmin', 'System', 'delrole', NULL, 100, 3, 0, 0, 1, NULL, 1),
(606, '导出用户资料', 'wifiadmin', 'report', 'downuser', NULL, 600, 3, 0, 10, 1, NULL, 1),
(900, '路由器管理', 'wifiadmin', 'route', 'index', 'icon-sitemap', 1, 1, 1, 0, 0, '', 1),
(901, '路由列表', 'wifiadmin', 'route', 'index', '', 900, 3, 1, 0, 1, '', 1),
(307, '删除路由', 'wifiadmin', 'shop', 'delroute', NULL, 300, 3, 0, 0, 1, NULL, 1),
(903, '编辑路由', 'wifiadmin', 'route', 'edit', '', 900, 3, 0, 0, 1, '', 1),
(904, '删除路由', 'wifiadmin', 'route', 'del', '', 900, 3, 0, 0, 1, '', 1),
(304, '路由管理', 'wifiadmin', 'shop', 'routelist', NULL, 300, 1, 0, 0, 1, NULL, 1),
(305, '路由编辑', 'wifiadmin', 'shop', 'editroute', NULL, 300, 3, 0, 0, 1, NULL, 1),
(306, '添加路由', 'wifiadmin', 'shop', 'addroute', NULL, 300, 3, 0, 0, 1, NULL, 1),
(606, '微信用户统计', 'wifiadmin', 'report', 'userwx', NULL, 600, 3, 1, 0, 1, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_wap`
--

CREATE TABLE IF NOT EXISTS `wifi_wap` (
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

--
-- 转存表中的数据 `wifi_wap`
--

INSERT INTO `wifi_wap` (`uid`, `home_tpl`, `home_tpl_path`, `list_tpl`, `list_tpl_path`, `info_tpl`, `info_tpl_path`, `state`, `shopname`, `tel`, `info`, `point_x`, `point_y`, `pic`, `keyword`, `desc`, `address`, `add_time`, `update_time`) VALUES
(1, 9, 'home_t3', 2, 'list_t1', 16, 'info_house', NULL, '亲亲小店', '18899996666', '国庆店庆双重庆，顺吉送礼好心情，国庆期间本店举行买手机 送话费、交话费送手机、买手机送礼品等活动，机会不多只有国庆，不要犹豫不要徘徊，犹豫徘徊就等于没来，赶快进店选购吧！', '106.290426', '38.463426', NULL, NULL, NULL, '北京市海淀区四里桥86号', '1412692305', '1412692305'),
(5, 9, 'home_t3', 12, 'list_hotel', 13, 'info_hotel', 1, '我的小店', '13567890123', '', '116.395645', '39.929986', NULL, NULL, NULL, '北京市', '1413247993', '1413247993'),
(9, 9, 'home_t3', NULL, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '1413249558', '1413249558');

-- --------------------------------------------------------

--
-- 表的结构 `wifi_wapcatelog`
--

CREATE TABLE IF NOT EXISTS `wifi_wapcatelog` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `wifi_wapcatelog`
--

INSERT INTO `wifi_wapcatelog` (`id`, `uid`, `mode`, `modematch`, `title`, `info`, `icopic`, `titlepic`, `url`, `sort`, `tel`, `point_x`, `point_y`, `add_time`, `update_time`, `state`) VALUES
(9, 1, '0', NULL, '促销商品', '', NULL, '/upload/AD/54194fbf64d9e.jpg', '', 0, '', '', '', '1410944959', '1410944959', 1),
(10, 1, '3', NULL, '联系我们', '本店地址', NULL, '/upload/AD/54195ce8ed841.jpg', '', 0, '', '106.256722', '38.489357', '1410948328', '1410948328', 1),
(3, 1, '0', NULL, '产品介绍', '', NULL, '/upload/AD/54194fdbaf554.jpg', '', 1, '', '', '', '1409540459', '1410944987', 1),
(11, 1, '0', NULL, '关于我们', '', NULL, '/upload/AD/54195d8fb1827.jpg', '', 0, '', '', '', '1410948495', '1410948495', 1),
(12, 5, '0', NULL, '关于我们', '', NULL, '/upload/AD/5419a2bcb828f.jpg', '', 0, '', '', '', '1410966204', '1410966204', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_waptpl`
--

CREATE TABLE IF NOT EXISTS `wifi_waptpl` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `wifi_waptpl`
--

INSERT INTO `wifi_waptpl` (`id`, `group`, `title`, `info`, `pic`, `tplpath`, `sort`, `isdefault`, `state`) VALUES
(2, 1, '默认模板', NULL, 'list1.png', 'list_t1', 0, 1, 1),
(6, 2, '科技模板', NULL, 'news_tech.png', 'info_tech', 1, 0, 1),
(8, 1, '默认模板3', NULL, 'list2.png', 'list_t2', 0, 0, 1),
(9, 0, '默认模板4', NULL, 'cate1.png', 'home_t3', 3, 0, 1),
(11, 0, '酒店主题模板', NULL, 'home_hotel.png', 'home_hotel', 0, 0, 1),
(12, 1, '酒店主题模板', NULL, 'list_hotel.png', 'list_hotel', 0, 0, 1),
(13, 2, '酒店主题模板', NULL, 'info_hotel.png', 'info_hotel', 0, 0, 1),
(15, 1, '房产主题模板', NULL, 'list_house.png', 'list_house', 0, 0, 1),
(16, 2, '房产主题', NULL, 'info_house.png', 'info_house', 0, 0, 1),
(17, 0, '主题模板10', NULL, 'home10.png', 'home_t10', 0, 0, 1),
(19, 0, '酒吧模板', NULL, 'home_s.png', 'home_bar', 0, 0, 1),
(20, 3, '默认模板1', NULL, 'shop_home_t1.png', 'home_t1', 0, 0, 1),
(21, 3, '默认模板2', NULL, NULL, 'index', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `wifi_wxdata`
--

CREATE TABLE IF NOT EXISTS `wifi_wxdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shopid` int(12) NOT NULL,
  `accesstoken` varchar(600) CHARACTER SET utf8 NOT NULL,
  `expiresin` varchar(8) DEFAULT NULL,
  `gzl` int(8) NOT NULL DEFAULT '0',
  `qxl` int(8) NOT NULL DEFAULT '0',
  `add_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wifi_wxuser`
--

CREATE TABLE IF NOT EXISTS `wifi_wxuser` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
