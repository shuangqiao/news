/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50631
Source Host           : 127.0.0.1:3306
Source Database       : sqliu

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2019-03-20 22:59:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category_name
-- ----------------------------
DROP TABLE IF EXISTS `category_name`;
CREATE TABLE `category_name` (
  `id` int(32) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '分类名称',
  `category_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category_name
-- ----------------------------
INSERT INTO `category_name` VALUES ('1', '生活随笔', '1');
INSERT INTO `category_name` VALUES ('0', '编程笔记', '2');
INSERT INTO `category_name` VALUES ('3', '旅行游记', '3');
INSERT INTO `category_name` VALUES ('4', '读书心得', '4');
