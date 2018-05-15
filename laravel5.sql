/*
Navicat MySQL Data Transfer

Source Server         : Tencent
Source Server Version : 50173
Source Host           : 123.206.191.144:3306
Source Database       : laravel5

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-05-14 22:41:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('12', '线代', '1. 克拉默法则是干什么的？\r\n\r\n求解线性方程组\r\n\r\na_{11}x_{1} +a_{12}x_{2}  + ....  +a_{11}x_{1} = b_{1}\r\n\r\na_{21}x_{2} +a_{22}x_{2}  + ....  +a_{21}x_{1} = b_{2}\r\n\r\n...			...			...		.\r\n\r\na_{n1}x_{1} +a_{n2}x_{2}  + ....  +a_{n1}x_{1} = b_{n}\r\n\r\n1. 克拉默法则有哪些性质？\r\n\r\n1. D \\neq 0, 存在唯一解\r\n2. 对于其次线性方程来说\r\n   - D = 0 ，有非零解\r\n   - D \\neq 0 ,  有零解\r\n\r\n\r\n\r\n秩相关\r\n\r\n1. 秩的作用是什么\r\n\r\n- 秩有两种 1. 向量组的秩 2. 矩阵的秩\r\n- 秩是空间维度\r\n- 秩就是去除重复的含有倍数的向量，剩下的不重复的，纯数据， 去除重复的数据后剩下的向量可以表示以前的整体\r\n- 矩阵的秩：\r\n  -  0 \\le R(A_{m \\times n}) \\le min\\{m,n\\} \r\n  - R(A^T) = R(A)\r\n  - 若A \\sim B, 则 R(A) = R(B)\r\n  - 若 P, Q 可逆，则 R(PAQ) = R(A)   是否等同于 R(AB) = R(A)\r\n  - max(R(A),R(B)) \\le R(A,B) \\le R(A) + R(B)\r\n  - R(A+B) \\le R(A) + R(B)\r\n\r\n1. 秩有哪些性质\r\n\r\n矩阵的秩：\r\n\r\n-  0 \\le R(A_{m \\times n}) \\le min(m,n) \r\n- R(A^T) = R(A)\r\n- 若A \\sim B, 则 R(A) = R(B)\r\n- 若 P, Q 可逆，则 R(PAQ) = R(A)\r\n- max(R(A),R(B)) \\le R(A,B) \\le R(A) + R(B)\r\n- R(A+B) \\le R(A) + R(B)\r\n- r(AB) \\le min\\{r(A),r(B)\\}\r\n\r\n线性表出\r\n\r\n1. 两个向量组等价是什么意思?\r\n\r\n\\alpha_{1} ,\\alpha_{2}, \\alpha_{3}  与  \\beta_{1} , \\beta_{2} ,\\beta_{3}等价  则可以线性表示， 将\\alpha 与 \\beta 组合成一个新的矩阵，然后求解，看是否有解 即使 \\{\\alpha_{1},\\alpha_{2},\\alpha_{3},\\beta_{1},\\beta_{2},\\beta_{3} \\}', '12', '2018-05-11 23:06:25', '2018-05-14 13:48:07');
INSERT INTO `articles` VALUES ('14', '海贼王', '海贼王~~~~~~~~~~~~~\r\n\r\n滔滔江水，延绵不绝 ~~~~~~~~~~~~~~~~', '14', '2018-05-14 12:11:21', '2018-05-14 13:48:39');
INSERT INTO `articles` VALUES ('13', '《望庐山瀑布》', '《望庐山瀑布》\r\n\r\n　　唐·李白\r\n\r\n　　日照香炉生紫烟，遥看瀑布挂前川。\r\n　　飞流直下三千尺，疑是银河落九天。', '1', '2018-05-12 07:57:59', '2018-05-12 07:57:59');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'emhui', 'emhui@foxmail.com', 'host', 'hello', '12', '2018-05-11 23:45:20', '2018-05-11 23:45:20');
INSERT INTO `comments` VALUES ('2', 'emhui', 'emhui@foxmail.com', 'no', 'this is a poet created by LiBai in Tang Dynasty when he playgoing in Mounte Lu.', '13', '2018-05-12 07:59:56', '2018-05-12 07:59:56');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_05_11_110951_create_article_table', '2');
INSERT INTO `migrations` VALUES ('4', '2018_05_11_230733_create_comments_table', '3');
INSERT INTO `migrations` VALUES ('5', '2018_05_11_233339_create_comments_table', '4');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'emhui', 'emhui@foxmail.com', '$2y$10$xhblsLfalgFmVDfgWHWWGupX1a6oitbwFFEe2QM9870v8LAholH/K', null, '2018-05-11 11:06:20', '2018-05-11 11:06:20');
