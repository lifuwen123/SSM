/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50168
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 50168
 File Encoding         : 65001

 Date: 21/06/2020 07:28:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `imgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'img/1.jpg', '老李的图片', '1.jpg');
INSERT INTO `product` VALUES (2, 'img/2.jpg', '老王的图片', '2.jpg');
INSERT INTO `product` VALUES (3, 'img/3.jpg', '老张的图片', '3.jpg');
INSERT INTO `product` VALUES (4, 'img/4.jpg', '小李子的图片', '4.jpg');
INSERT INTO `product` VALUES (5, 'img/5.jpg', '小狗子的图片', '5.jpg');
INSERT INTO `product` VALUES (6, 'img/6.jpg', '谷歌的图片', '6.jpg');
INSERT INTO `product` VALUES (7, 'img/7.jpg', '分解机', '7.jpg');
INSERT INTO `product` VALUES (8, 'img/8.jpg', '大蒜', '8.jpg');
INSERT INTO `product` VALUES (9, 'img/9.jpg', '毛虎', '9.jpg');
INSERT INTO `product` VALUES (10, 'img/10.jpg', '啦啦拉', '10.jpg');
INSERT INTO `product` VALUES (11, 'img/11.jpg', '嗯嗯好', '11.jpg');
INSERT INTO `product` VALUES (12, 'img/12.jpg', '试试把', '12.jpg');
INSERT INTO `product` VALUES (13, 'img/13.jpg', '方法行了', '13.jpg');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '41');
INSERT INTO `role` VALUES (2, '普通管理员', '44');
INSERT INTO `role` VALUES (3, '小角色', '43');
INSERT INTO `role` VALUES (4, '校长', '54');
INSERT INTO `role` VALUES (5, '收垃圾', '55');
INSERT INTO `role` VALUES (6, '卖小孩', '56');
INSERT INTO `role` VALUES (7, '主任', '48');
INSERT INTO `role` VALUES (8, '走私', '90');
INSERT INTO `role` VALUES (9, '贩卖毒品', '91');
INSERT INTO `role` VALUES (10, '走私枪支', '72');
INSERT INTO `role` VALUES (11, '打架', '42');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (41, '老王', '2019-08-16', '女', '北京', '123', '11111111111');
INSERT INTO `user` VALUES (42, '小二李', '2019-06-20', '女', '北京', '123', NULL);
INSERT INTO `user` VALUES (43, '小二王', '2018-03-04', '女', '北京金燕龙', '123', NULL);
INSERT INTO `user` VALUES (45, '校长', '2018-03-04', '男', '北京金燕龙', '123', NULL);
INSERT INTO `user` VALUES (46, '老小王', '2019-10-18', '女', '北京', '123', NULL);
INSERT INTO `user` VALUES (48, '小马', '2020-05-13', '女', '北京修正', '123', NULL);
INSERT INTO `user` VALUES (49, '小二', '1998-02-02', '男', '北京', '123', NULL);
INSERT INTO `user` VALUES (54, 'laoli', '2020-11-21', '男', '河南', '123', NULL);
INSERT INTO `user` VALUES (55, '123', '2020-05-11', '男', '老外', '123', NULL);
INSERT INTO `user` VALUES (56, '小李子', '2020-04-08', '女', '344', '123', NULL);
INSERT INTO `user` VALUES (57, '小哥', '2020-05-20', '男', '谷歌', '123', NULL);
INSERT INTO `user` VALUES (58, '二狗子', '2020-09-09', '男', '商丘', '123', NULL);
INSERT INTO `user` VALUES (59, '小李', '2020-05-27', '女', '试试', '123', NULL);
INSERT INTO `user` VALUES (60, '瞎子', '2020-05-19', '男', '深圳', '123', NULL);
INSERT INTO `user` VALUES (62, 'sds', '2020-05-14', '女', '黑龙江', 'ss', NULL);
INSERT INTO `user` VALUES (63, '44', '2020-05-18', '女', '44', '444', NULL);
INSERT INTO `user` VALUES (64, '23', '2020-05-15', '女', '人人', '34', NULL);
INSERT INTO `user` VALUES (65, '343', '2020-05-13', '女', '343', '3434', NULL);
INSERT INTO `user` VALUES (66, '565', '2020-05-06', '女', '565', '556', NULL);
INSERT INTO `user` VALUES (67, '67676', '2020-09-09', '女', '77744阿萨德', '666', NULL);
INSERT INTO `user` VALUES (68, '试试', '1994-09-13', '女', '上海', '33', NULL);
INSERT INTO `user` VALUES (69, '333434', '2020-05-18', '女', '11', '33', NULL);
INSERT INTO `user` VALUES (70, '4545', '2020-05-18', '女', '445', '454', NULL);
INSERT INTO `user` VALUES (72, '5555555', '2020-05-19', '女', 'dd', '123', NULL);
INSERT INTO `user` VALUES (75, '123553343', '2020-05-21', '男', '111', NULL, NULL);
INSERT INTO `user` VALUES (78, '肖尔', '2021-01-23', '男', '上海111', '123', NULL);
INSERT INTO `user` VALUES (84, '安徽特么', '2020-09-10', '男', '河南省商丘市', '123', NULL);
INSERT INTO `user` VALUES (85, '蛤', '2020-09-10', '男', '河南省商丘市', '123', NULL);
INSERT INTO `user` VALUES (86, 'system', '1994-09-13', '男', '河南省商丘市', '123', NULL);
INSERT INTO `user` VALUES (90, '小明', '2020-05-09', '男', '河南省商丘市', '961222512', '15993943729');
INSERT INTO `user` VALUES (91, '不vvv', '2020-05-01', '男', '河南省商丘市试试', '1234', '13577777777');
INSERT INTO `user` VALUES (92, '哈哈2', '2020-05-12', '男', '河南省商丘市', '123', '13411111111');
INSERT INTO `user` VALUES (93, '老王3', '2020-08-12', '女', '河南省商丘市1212121', '123', '13411111111');
INSERT INTO `user` VALUES (94, '老王4', '2020-05-11', '女', '河南省商丘市', '123', '13422222222');
INSERT INTO `user` VALUES (99, '老冷了2', '2020-05-30', '女', '河南省商丘市', '123', '13411111111');

-- ----------------------------
-- Table structure for user-case
-- ----------------------------
DROP TABLE IF EXISTS `user-case`;
CREATE TABLE `user-case`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `case` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `evidence` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for visitlog
-- ----------------------------
DROP TABLE IF EXISTS `visitlog`;
CREATE TABLE `visitlog`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键 无意义uuid',
  `sttime` datetime NULL DEFAULT NULL COMMENT '访问时间',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作者用户名',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '访问ip',
  `computerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '访问资源url',
  `time` int(255) NULL DEFAULT NULL COMMENT '执行时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of visitlog
-- ----------------------------
INSERT INTO `visitlog` VALUES (1, '2020-05-02 19:33:50', '123', '192.168.0.107', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (2, '2020-05-02 19:34:23', '老王', '192.168.0.107', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (3, '2020-05-02 20:06:35', '123', '192.168.0.107', 'SD-20200308PAQS', 146);
INSERT INTO `visitlog` VALUES (4, '2020-05-03 09:16:20', '123', '192.168.0.107', 'SD-20200308PAQS', 10);
INSERT INTO `visitlog` VALUES (5, '2020-05-03 10:33:59', '试试', '192.168.0.107', 'SD-20200308PAQS', 123);
INSERT INTO `visitlog` VALUES (6, '2020-05-03 22:20:42', '123', '192.168.0.107', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (7, '2020-05-03 22:21:03', '瞎子', '192.168.0.107', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (8, '2020-05-08 15:09:11', '123', '192.168.0.109', 'SD-20200308PAQS', 3);
INSERT INTO `visitlog` VALUES (10, '2020-05-22 17:54:22', '123', '192.168.0.103', 'SD-20200308PAQS', 47);
INSERT INTO `visitlog` VALUES (11, '2020-05-22 21:08:42', '123', '192.168.0.103', 'SD-20200308PAQS', 7);
INSERT INTO `visitlog` VALUES (12, '2020-05-22 21:21:42', '123', '192.168.0.103', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (14, '2020-05-23 09:08:17', '123', '192.168.0.109', 'SD-20200308PAQS', 196);
INSERT INTO `visitlog` VALUES (15, '2020-05-23 09:40:05', '123', '192.168.0.109', 'SD-20200308PAQS', 92);
INSERT INTO `visitlog` VALUES (16, '2020-05-23 09:41:44', '老王', '192.168.0.109', 'SD-20200308PAQS', 28);
INSERT INTO `visitlog` VALUES (17, '2020-05-25 12:29:08', '123', '192.168.0.104', 'SD-20200308PAQS', 49);
INSERT INTO `visitlog` VALUES (18, '2020-05-25 12:30:05', '老王', '192.168.0.104', 'SD-20200308PAQS', 5);
INSERT INTO `visitlog` VALUES (19, '2020-05-25 12:36:09', '123', '192.168.0.104', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (20, '2020-05-25 12:36:22', '123', '192.168.0.104', 'SD-20200308PAQS', 7);
INSERT INTO `visitlog` VALUES (21, '2020-05-25 18:41:51', '123', '192.168.0.104', 'SD-20200308PAQS', 63);
INSERT INTO `visitlog` VALUES (22, '2020-05-26 11:34:51', '123', '192.168.0.104', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (23, '2020-05-26 11:35:03', '123', '192.168.0.104', 'SD-20200308PAQS', 115);
INSERT INTO `visitlog` VALUES (24, '2020-05-26 11:37:05', '老王', '192.168.0.104', 'SD-20200308PAQS', 6);
INSERT INTO `visitlog` VALUES (25, '2020-05-26 11:40:01', '老王', '192.168.0.104', 'SD-20200308PAQS', 59);
INSERT INTO `visitlog` VALUES (26, '2020-05-26 11:41:04', '123', '192.168.0.104', 'SD-20200308PAQS', 73);
INSERT INTO `visitlog` VALUES (27, '2020-05-26 11:43:15', '123', '192.168.0.104', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (28, '2020-05-26 16:33:35', '123', '192.168.0.104', 'SD-20200308PAQS', 7);
INSERT INTO `visitlog` VALUES (29, '2020-05-26 17:06:43', '123', '192.168.0.104', 'SD-20200308PAQS', 36);
INSERT INTO `visitlog` VALUES (30, '2020-05-26 17:08:15', '123', '192.168.0.104', 'SD-20200308PAQS', 5);
INSERT INTO `visitlog` VALUES (31, '2020-05-26 17:08:26', '老王', '192.168.0.104', 'SD-20200308PAQS', 5);
INSERT INTO `visitlog` VALUES (32, '2020-05-26 18:27:04', '老王', '192.168.0.104', 'SD-20200308PAQS', 22);
INSERT INTO `visitlog` VALUES (33, '2020-05-26 18:27:33', '二狗子', '192.168.0.104', 'SD-20200308PAQS', 3);
INSERT INTO `visitlog` VALUES (34, '2020-05-27 07:07:00', '123', '192.168.0.104', 'SD-20200308PAQS', 319);
INSERT INTO `visitlog` VALUES (35, '2020-05-27 07:13:24', '123', '192.168.0.104', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (36, '2020-05-27 07:14:15', '老王', '192.168.0.104', 'SD-20200308PAQS', 805);
INSERT INTO `visitlog` VALUES (37, '2020-05-27 07:27:49', '小二', '192.168.0.104', 'SD-20200308PAQS', 13);
INSERT INTO `visitlog` VALUES (38, '2020-05-27 09:19:58', '123', '192.168.0.104', 'SD-20200308PAQS', 3);
INSERT INTO `visitlog` VALUES (39, '2020-05-27 10:21:06', '123', '192.168.0.104', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (40, '2020-05-27 10:22:49', '123', '192.168.0.104', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (41, '2020-05-27 10:30:40', '123', '192.168.0.104', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (42, '2020-05-27 14:34:15', '123', '192.168.0.104', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (43, '2020-05-27 14:35:07', '老王', '192.168.0.104', 'SD-20200308PAQS', 219);
INSERT INTO `visitlog` VALUES (44, '2020-05-27 14:48:36', '123', '192.168.0.104', 'SD-20200308PAQS', 2);
INSERT INTO `visitlog` VALUES (45, '2020-05-27 14:55:37', '123', '192.168.0.104', 'SD-20200308PAQS', 1);
INSERT INTO `visitlog` VALUES (46, '2020-05-27 15:12:31', '123', '192.168.0.104', 'SD-20200308PAQS', 3);
INSERT INTO `visitlog` VALUES (47, '2020-05-27 18:01:00', '老王', '192.168.0.104', 'SD-20200308PAQS', 120);
INSERT INTO `visitlog` VALUES (48, '2020-05-27 18:03:36', '123', '192.168.0.104', 'SD-20200308PAQS', 175);
INSERT INTO `visitlog` VALUES (50, '2020-05-27 19:41:06', 'system', '192.168.0.104', 'SD-20200308PAQS', 291);
INSERT INTO `visitlog` VALUES (51, '2020-05-28 07:10:56', '小明', '192.168.0.104', 'SD-20200308PAQS', 357);
INSERT INTO `visitlog` VALUES (52, '2020-05-28 07:17:15', '不vvv', '192.168.0.104', 'SD-20200308PAQS', 549);
INSERT INTO `visitlog` VALUES (53, '2020-05-28 09:06:03', '老王', '192.168.0.104', 'SD-20200308PAQS', 136);
INSERT INTO `visitlog` VALUES (55, '2020-05-28 15:19:07', '老王', '192.168.0.104', 'SD-20200308PAQS', 546);
INSERT INTO `visitlog` VALUES (56, '2020-05-28 20:28:28', '老王', '192.168.0.104', 'SD-20200308PAQS', 8);
INSERT INTO `visitlog` VALUES (57, '2020-05-28 20:28:44', '老王', '192.168.0.104', 'SD-20200308PAQS', 267);
INSERT INTO `visitlog` VALUES (59, '2020-05-28 20:34:19', '老王', '192.168.0.104', 'SD-20200308PAQS', 250);
INSERT INTO `visitlog` VALUES (64, '2020-05-29 17:06:45', '老王', '192.168.43.158', 'SD-20200308PAQS', 145);
INSERT INTO `visitlog` VALUES (65, '2020-05-29 17:11:02', '老王', '192.168.43.158', 'SD-20200308PAQS', 130);
INSERT INTO `visitlog` VALUES (66, '2020-05-29 17:13:25', '二狗子', '192.168.43.158', 'SD-20200308PAQS', 9);
INSERT INTO `visitlog` VALUES (67, '2020-05-29 17:30:45', '老王', '192.168.43.158', 'SD-20200308PAQS', 288);
INSERT INTO `visitlog` VALUES (68, '2020-05-29 17:36:39', '老王', '192.168.43.158', 'SD-20200308PAQS', 205);
INSERT INTO `visitlog` VALUES (70, '2020-05-30 11:27:46', '老王', '192.168.0.102', 'SD-20200308PAQS', 201);
INSERT INTO `visitlog` VALUES (71, '2020-06-19 17:44:21', '123', '192.168.0.105', 'SD-20200308PAQS', 280);

-- ----------------------------
-- Procedure structure for haha
-- ----------------------------
DROP PROCEDURE IF EXISTS `haha`;
delimiter ;;
CREATE PROCEDURE `haha`(in a int,in b int)
BEGIN
set @x=0;
set @x =a+b;
SELECT @x as num;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for jk
-- ----------------------------
DROP PROCEDURE IF EXISTS `jk`;
delimiter ;;
CREATE PROCEDURE `jk`()
BEGIN
 SELECT * from admin;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
