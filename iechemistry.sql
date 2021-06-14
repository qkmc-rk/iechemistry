/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : iechemistry

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2021-04-28 22:06:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for iec_expcolor
-- ----------------------------
DROP TABLE IF EXISTS `iec_expcolor`;
CREATE TABLE `iec_expcolor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `imageid` int(11) NOT NULL,
  `objectid` int(11) NOT NULL,
  `regionid` int(11) NOT NULL,
  `rgb` varchar(255) NOT NULL COMMENT '255.0,255.0,255.0',
  `hsv` varchar(255) NOT NULL DEFAULT '' COMMENT '255.0,255.0,255.0',
  `cmyk` varchar(255) NOT NULL DEFAULT '' COMMENT '255.0,255.0,255.0,255.0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_expconcentration
-- ----------------------------
DROP TABLE IF EXISTS `iec_expconcentration`;
CREATE TABLE `iec_expconcentration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `imageid` int(11) NOT NULL,
  `objectid` int(11) NOT NULL,
  `regionid` int(11) NOT NULL,
  `concentration` varchar(255) NOT NULL COMMENT '1,2,3,4,5,6,7,8,9,10',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_expimage
-- ----------------------------
DROP TABLE IF EXISTS `iec_expimage`;
CREATE TABLE `iec_expimage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '注释,说明',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否被删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_explinear
-- ----------------------------
DROP TABLE IF EXISTS `iec_explinear`;
CREATE TABLE `iec_explinear` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imageid` int(11) NOT NULL,
  `colorid` int(11) NOT NULL,
  `concentrationid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_expobject
-- ----------------------------
DROP TABLE IF EXISTS `iec_expobject`;
CREATE TABLE `iec_expobject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `imageid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '注释',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否被删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_expregion
-- ----------------------------
DROP TABLE IF EXISTS `iec_expregion`;
CREATE TABLE `iec_expregion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `imageid` int(11) NOT NULL,
  `objectid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_expscatter
-- ----------------------------
DROP TABLE IF EXISTS `iec_expscatter`;
CREATE TABLE `iec_expscatter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imageid` int(11) NOT NULL,
  `colorid` int(11) NOT NULL,
  `concentrationid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for iec_user
-- ----------------------------
DROP TABLE IF EXISTS `iec_user`;
CREATE TABLE `iec_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `name` varchar(24) DEFAULT NULL COMMENT '姓名,昵称',
  `phone` varchar(24) DEFAULT NULL COMMENT '电话',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `wxid` varchar(32) DEFAULT NULL COMMENT '微信号',
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
