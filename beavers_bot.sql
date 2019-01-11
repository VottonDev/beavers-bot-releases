/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 127.0.0.1:8889
 Source Schema         : beavers_bot

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 12/01/2019 00:49:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bank_account
-- ----------------------------
DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE `bank_account` (
  `user_id` bigint(20) DEFAULT NULL,
  `coins` int(11) DEFAULT NULL,
  `gems` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for experience_account
-- ----------------------------
DROP TABLE IF EXISTS `experience_account`;
CREATE TABLE `experience_account` (
  `user_id` bigint(20) NOT NULL,
  `current_exp` int(11) DEFAULT NULL,
  `to_next_level_exp` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for player_tag
-- ----------------------------
DROP TABLE IF EXISTS `player_tag`;
CREATE TABLE `player_tag` (
  `user_id` bigint(20) NOT NULL,
  `tag` tinytext NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `player_tag_user_id_uindex` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reputation_account
-- ----------------------------
DROP TABLE IF EXISTS `reputation_account`;
CREATE TABLE `reputation_account` (
  `user_id` bigint(20) DEFAULT NULL,
  `reputation_points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for trade_token
-- ----------------------------
DROP TABLE IF EXISTS `trade_token`;
CREATE TABLE `trade_token` (
  `user_id` bigint(20) NOT NULL,
  `legendary` int(11) DEFAULT NULL,
  `epic` int(11) DEFAULT NULL,
  `rare` int(11) DEFAULT NULL,
  `common` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wanted_card
-- ----------------------------
DROP TABLE IF EXISTS `wanted_card`;
CREATE TABLE `wanted_card` (
  `user_id` bigint(20) NOT NULL,
  `cards` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
