/*
Navicat MySQL Data Transfer

Source Server         : chen
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : employee

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-09-01 21:01:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '市场部');
INSERT INTO `department` VALUES ('2', '技术部');
INSERT INTO `department` VALUES ('3', '销售部');
INSERT INTO `department` VALUES ('4', '客服部');
INSERT INTO `department` VALUES ('5', '公关部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL COMMENT '员工姓名',
  `email` varchar(255) NOT NULL COMMENT '员工邮箱',
  `gender` int(2) NOT NULL COMMENT '员工性别',
  `department_id` int(10) NOT NULL COMMENT '部门编号',
  `date` date NOT NULL COMMENT '入职日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('2', '李四', 'lisi@qq.com', '1', '2', '2020-02-05');
INSERT INTO `employee` VALUES ('3', '王五', 'wangwu@126.com', '0', '3', '2020-02-15');
INSERT INTO `employee` VALUES ('4', '赵六', 'zhaoliu@163.com', '1', '4', '2020-02-21');
INSERT INTO `employee` VALUES ('5', '田七', 'tianqi@foxmail.com', '0', '3', '2020-02-14');
INSERT INTO `employee` VALUES ('10', '王伟', 'wangwei@gmail.com', '1', '3', '2020-02-08');
INSERT INTO `employee` VALUES ('11', '张伟', 'zhangwei@gmail.com', '1', '2', '2020-02-11');
INSERT INTO `employee` VALUES ('12', '李伟', 'liwei@gmail.com', '1', '3', '2020-02-18');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456');
