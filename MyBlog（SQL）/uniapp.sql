/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : uniapp

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2021-10-26 00:05:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for carouselimg
-- ----------------------------
DROP TABLE IF EXISTS `carouselimg`;
CREATE TABLE `carouselimg` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `nfont` varchar(255) DEFAULT NULL,
  `bckimage` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carouselimg
-- ----------------------------
INSERT INTO `carouselimg` VALUES ('1', 'http://localhost:81/Vue/images/lb1.png', '感恩的心', '文/章/导/读', 'http://localhost:81/Vue/images/lb1.png', '“感恩的心，感谢有你，伴我一生，让我有勇气做我自己，感恩的心，感谢命运，花开花落，我一样会珍惜。”在这优美的旋律中洋溢着感恩，古人。');
INSERT INTO `carouselimg` VALUES ('2', 'http://localhost:81/Vue/images/lb2.png', '不要指望他人的救赎', '文/章/导/读', 'http://localhost:81/Vue/images/lb2.png', '“欲戴王冠，必受其重”，今天你流的每一滴眼泪，未来都会变成珍珠或钻石还给你。没有一个人的成功是白来的，偶像剧中灰姑娘的故事在现。');
INSERT INTO `carouselimg` VALUES ('3', 'http://localhost:81/Vue/images/lb3.png', '自信的力量', '文/章/导/读', 'http://localhost:81/Vue/images/lb3.png', '拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发；消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能。');

-- ----------------------------
-- Table structure for slideleft
-- ----------------------------
DROP TABLE IF EXISTS `slideleft`;
CREATE TABLE `slideleft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Caption` varchar(255) DEFAULT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Subtitle2` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `content1` varchar(255) DEFAULT NULL,
  `content2` varchar(255) DEFAULT NULL,
  `content3` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slideleft
-- ----------------------------
INSERT INTO `slideleft` VALUES ('1', '浏览器插件硬核软件分享', '阿杰黑科技', '阿杰黑科技', '2021-10-23', '本次是硬核软件分享第一期中的第四篇文章  预计之后在发布两篇文章，第一期软件分享将结束。', '再次说明下，本人分享的硬核软件 都是本人自测和使用的，觉得软件实用、简单的 记得点个赞，支持一下！', '回归正题，本次以chrome浏览器为例 分享一些实用插件  最后的效果很多很多 如突破百度网盘下载速度慢的问题；实现 刷优酷、爱奇艺、腾讯、芒果等全网VIP视频免费破解去广告，网易云音乐、QQ音乐、酷狗、酷我、虾米、蜻蜓FM、荔枝FM、喜马拉雅等网站音乐免客户端下载；大学刷智慧树网课的问题等等', 'http://localhost:81/Vue/images/5.png', '到这就到此结束了');
INSERT INTO `slideleft` VALUES ('2', '盘姬工具箱硬核软件分享', '阿杰黑科技', '阿杰黑科技', '2021-10-23', '今天是平安夜 话不多说 祝大家 吃饱，睡好，一生不老！', ' 回到正题，之前分享的两篇硬核软件都是安卓端软件，今天分享一款windows电脑端的超硬核软件--盘姬工具箱  一款我个人非常喜欢的软件（备注：之前换电脑后，除了安装 QQ 微信 啥的，就是这款软件了 所以强烈推荐大家使用！）', ' 根据网上介绍 盘姬工具箱是一款功能强大的windows系统工具合集，这款软件界面采用的萌化主题，软件包含了支持windows系统的大大小小的各种类型工具。例如修复系统、恢复网络、抓包、热点分享、资源下载、图像识别等功能一应俱全，大家可以下载安装备着，总会有用得到的时候。', 'http://localhost:81/Vue/images/7.png', '到这就到此结束了');
INSERT INTO `slideleft` VALUES ('3', '同屏助手硬核软件分享', '阿杰黑科技', '阿杰黑科技', '2021-10-23', '首先先解释下 什么是同屏？什么是投屏？\r\n\r\n投屏 顾名思义就是类似 显示器般 把图像等内容传输过去 一般指安卓、iso设备投屏到电脑；同屏 指的是 手机除了 投屏到电脑 电脑还可以进行一系列的操作手机   这就有点类似华为、苹果产品线中的多屏协同的功能 常用的 同屏助手有 傲软投屏（不付费就存在水印）、爱思投屏、掘金网安卓群控、 金舟手机投屏等等...', '当然今天分享的不是以上软件，今天分享一款 名为 米卓同屏助手 的软件 自行百度下 去官网下载即可；自己使用了几天 感觉挺不错的 然后分享给大家。', '本文以 软件介绍、软件使用截图、软件使用感受及问题总结 三块内容进行分析。', 'http://localhost:81/Vue/images/3.png', '到这就到此结束了');

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `littleetitle` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `content2` varchar(255) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `button2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES ('1', 'http://localhost:81/Vue/specialimage/1.png', '小程序之案列分享-找茬小程序', '文/章/导/读', '一开始做一件事 坚持是挺难的；但是一旦成为一种习惯 像洗脸、刷牙那样 我觉得就会有新的收获...', '阅读权限', '激励视屏阅读', '不看，返回主页');
INSERT INTO `special` VALUES ('2', 'http://localhost:81/Vue/specialimage/2.png', 'JuiceSSH硬核软件分享', '文/章/导/读', '硬核软件第一期分享 预计会发布6-8篇文章 一般会是安卓软件 个别会分享 电脑端 简单、实用的软件。（备注：本人目前使用的就是安卓手机哈 ...', '阅读权限', '激励视屏阅读', '不看，返回主页');
INSERT INTO `special` VALUES ('3', 'http://localhost:81/Vue/specialimage/3.png', '盘姬工具箱硬核软件分享', '文/章/导/读', '话不多说 祝大家 吃饱，睡好，一生不老！\r\n回到正题，之前分享的两篇硬核软件都是安卓端软件，今天分享一款windows电脑端的超硬核软...', '阅读权限', '激励视屏阅读', '不看，返回主页');
INSERT INTO `special` VALUES ('4', 'http://localhost:81/Vue/specialimage/4.png', '感恩的心', '文/章/导/读', '“感恩的心，感谢有你，伴我一生，让我有勇气做我自己，感恩的心，感谢命运，花开花落，我一样会珍惜。”在这优美的旋律中洋溢着感恩，古人...', '阅读权限', '激励视屏阅读', '不看，返回主页');
INSERT INTO `special` VALUES ('5', 'http://localhost:81/Vue/specialimage/5.png', '好看的图片-猫系列', '文/章/导/读', '又是好长一段时间没有发文了\r\n首先补一句 各位老板新年快乐！新的一年 发 发 发！', '阅读权限', '激励视屏阅读', '不看，返回主页');

-- ----------------------------
-- Table structure for uniapp_index
-- ----------------------------
DROP TABLE IF EXISTS `uniapp_index`;
CREATE TABLE `uniapp_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) DEFAULT NULL,
  `font` varchar(255) DEFAULT NULL,
  `ntype` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `contentfoot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uniapp_index
-- ----------------------------
INSERT INTO `uniapp_index` VALUES ('1', 'http://localhost:81/Vue/images/9.png', 'Linux防火墙回顾', '文/章/导/读', 'Linux，全称GNU/Linux，是一种免费使用和自由传播的类UNIX操作系统，其内核由林纳斯·本纳第克特·托瓦兹于1991年10月5日首次发布，它主要受到Minix和Unix思想的启发，是一个基于POSIX的多用户、多任务、支持多线程和多CPU的操作系统。它能运行主要的Unix工具软件、应用程序和网络协议。它支持32位和64位硬件。Linux继承了Unix以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('2', 'http://localhost:81/Vue/images/10.png', '好看的图片-猫系列', '文/章/导/读', '指用感光纸放在照相底片下曝光后经显影、定影而成的人或物的图片。 语出巴金 《灭亡》第一章：“在这堵墙壁底下正中挂了一个大镜框，里面有一个四十多岁的慈祥的妇人底照片，用感光纸放在照相底片下曝光后经显影、定影而成的人或物的图片。其过程是在完全封闭的暗室中完成的，是完全由红绿蓝（RGB）三色激光扫描照射而形成的影像。', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('3', 'http://localhost:81/Vue/images/11.png', 'Linux之Bound', '文/章/导/读', '今天回顾一下linux的知识，不经常回顾真的很容易遗忘.. 希望我们可以一起做笔记 做总结 目的是活得更明白一些 更清楚自己每天都在干什么..感光成像技术将RGB激光神奇地转化成为影像，照片颜色是从相纸内由分子尺寸生长出来的，并非数字印刷，喷墨打印等输出方式是由油墨堆积而成的。感光成像技术使得照片上的每一个像素的颜色信息都是完整的', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('4', 'http://localhost:81/Vue/images/12.png', '小程序搭建之案列分享', '文/章/导/读', '1月14日下午，我怀着十分好奇的心情来到萧报九楼会议室，当了回小小程序员，体验了编程的乐趣。老师上课前，只见小记者们个个拿着早已准备好的Ipad聚精会神地操作着，原来都在玩游戏。当老师问大家游戏是怎样形成的时候，会议室里顿时鸦雀无声了。老师告诉大家，今天的课程就是让大家由游戏的使用者变成游戏的开发者—作文https://Www.ZuoWEn8.Com/—-编程序。', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('5', 'http://localhost:81/Vue/images/13.png', '小程序搭建之案列分享', '文/章/导/读', '在老师的指导下，每位小记者认真尝试着编程，而我因为没带Ipad只能做好笔记，如上下左右键代表运动方向；圆表示一直重复这个动作等。临近下课时，老师要求大家展示下编程的成果时，发现大家的成果五花八门，充满着奇思妙想。回家后，我拿出笔记本，在Ipad上试着努力编程，结果就是达不到老师讲解的效果，漏洞百出。', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('6', 'http://localhost:81/Vue/images/14.png', '小程序之基础搭建', '文/章/导/读', '原来，编程不仅是一门技术，更是一门学问，有助于提升人的观察力，想象力，设计力。一个小小的程序里面竟然蕴藏着那么大的能量，带来那么不可思议的效果，真是小程序，大发现。圆表示一直重复这个动作等。临近下课时，老师要求大家展示下编程的成果时，发现大家的成果五花八门，', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('7', 'http://localhost:81/Vue/images/15.png', 'Linux之Bound', '文/章/导/读', '若是选择文章时没有可展示的文章，就需要添加文章内容。点击添加文章，然后点击添加内容进入管理中心。进入管理中心后，点击内容-文章-添加文章即可添加相应的文章内容，文章管理包括是否置顶、是否显示、编辑和删除。文章添加完成后，直接回到小程序编辑页面的窗口，点击文章列表弹窗中的刷新即可看到添加的文章，选择相应的文章即可展示。', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('8', 'http://localhost:81/Vue/images/16.png', '小程序之基础搭建', '文/章/导/读', '文章分类可以直接在添加文章过程中点击添加分类进行创建，添加完成后，就可以直接选择了。也可以在文章分类-添加分类中添加，然后在添加文章中进行选择，如下。文章分类添加完成后，在文章需要分类展示时，就可以直接选择分类进行展示了。编辑完成后，然后预览或者发布小程序，并通过微信扫码进行查看。', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('9', 'http://localhost:81/Vue/images/17.png', '好看的图片-猫系列', '文/章/导/读', '你们刚在一起的第一个节怎么过的？拿着这个问题去问程序员的女朋友们，她们往往会先倒吸一口凉气，然后露出一言难尽的表情。或许是在程序员心里，花店的玫瑰过于普通，衬不出女朋友的珍贵；又或许是思来想去，寻常的礼物远不如代码优雅。总之，作为程序员的女朋友，想要「像别人家的女朋友那样过节」，并没那么容易', '--我的底线就到这里--');
INSERT INTO `uniapp_index` VALUES ('10', 'http://localhost:81/Vue/images/18.png', '小程序搭建之案列分享', '文/章/导/读', '在过去的情人节、七夕、纪念日等特别的日子收到了男朋友送的键盘、鼠标、防辐射眼镜、手机支架、颈椎按摩器之后，方方忍不住问了自己的男朋友：“你应该知道，咱俩不是好兄弟，而是情侣吧？下次过节能送回花吗”？于是今年七夕 ，方方终于收到了——而鲜花、礼物与惊喜三个词，仿佛触发了梁晶晶的输出开关，她以每分钟280字的语速，讲述了一个名为《我的七夕.两碗面条与动物园》的故事。', '--我的底线就到这里--');
