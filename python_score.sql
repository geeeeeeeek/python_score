/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_score

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 18/01/2024 19:02:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add classification', 7, 'add_classification');
INSERT INTO `auth_permission` VALUES (26, 'Can change classification', 7, 'change_classification');
INSERT INTO `auth_permission` VALUES (27, 'Can delete classification', 7, 'delete_classification');
INSERT INTO `auth_permission` VALUES (28, 'Can view classification', 7, 'view_classification');
INSERT INTO `auth_permission` VALUES (29, 'Can add error log', 8, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (30, 'Can change error log', 8, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (31, 'Can delete error log', 8, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (32, 'Can view error log', 8, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (33, 'Can add login log', 9, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change login log', 9, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete login log', 9, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view login log', 9, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add op log', 10, 'add_oplog');
INSERT INTO `auth_permission` VALUES (38, 'Can change op log', 10, 'change_oplog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete op log', 10, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (40, 'Can view op log', 10, 'view_oplog');
INSERT INTO `auth_permission` VALUES (41, 'Can add tag', 11, 'add_tag');
INSERT INTO `auth_permission` VALUES (42, 'Can change tag', 11, 'change_tag');
INSERT INTO `auth_permission` VALUES (43, 'Can delete tag', 11, 'delete_tag');
INSERT INTO `auth_permission` VALUES (44, 'Can view tag', 11, 'view_tag');
INSERT INTO `auth_permission` VALUES (45, 'Can add user', 12, 'add_user');
INSERT INTO `auth_permission` VALUES (46, 'Can change user', 12, 'change_user');
INSERT INTO `auth_permission` VALUES (47, 'Can delete user', 12, 'delete_user');
INSERT INTO `auth_permission` VALUES (48, 'Can view user', 12, 'view_user');
INSERT INTO `auth_permission` VALUES (49, 'Can add thing', 13, 'add_thing');
INSERT INTO `auth_permission` VALUES (50, 'Can change thing', 13, 'change_thing');
INSERT INTO `auth_permission` VALUES (51, 'Can delete thing', 13, 'delete_thing');
INSERT INTO `auth_permission` VALUES (52, 'Can view thing', 13, 'view_thing');
INSERT INTO `auth_permission` VALUES (53, 'Can add course', 14, 'add_course');
INSERT INTO `auth_permission` VALUES (54, 'Can change course', 14, 'change_course');
INSERT INTO `auth_permission` VALUES (55, 'Can delete course', 14, 'delete_course');
INSERT INTO `auth_permission` VALUES (56, 'Can view course', 14, 'view_course');
INSERT INTO `auth_permission` VALUES (57, 'Can add score', 15, 'add_score');
INSERT INTO `auth_permission` VALUES (58, 'Can change score', 15, 'change_score');
INSERT INTO `auth_permission` VALUES (59, 'Can delete score', 15, 'delete_score');
INSERT INTO `auth_permission` VALUES (60, 'Can view score', 15, 'view_score');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '计算机科学与技术一班', '2024-01-18 18:23:24.001124');
INSERT INTO `b_classification` VALUES (2, '计算机科学与技术二班', '2024-01-18 18:23:31.326523');
INSERT INTO `b_classification` VALUES (3, '软件技术一班', '2024-01-18 18:23:39.125091');
INSERT INTO `b_classification` VALUES (4, '软件技术二班', '2024-01-18 18:23:46.024399');
INSERT INTO `b_classification` VALUES (5, '软件技术三班', '2024-01-18 18:23:59.097633');

-- ----------------------------
-- Table structure for b_course
-- ----------------------------
DROP TABLE IF EXISTS `b_course`;
CREATE TABLE `b_course`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_course
-- ----------------------------
INSERT INTO `b_course` VALUES (1, '计算机操作系统', '刘书恒', '2024-01-18 18:32:18.374732');
INSERT INTO `b_course` VALUES (2, '数据结构', '张丽丽', '2024-01-18 18:32:36.113785');
INSERT INTO `b_course` VALUES (3, 'photoshop入门教程', '李芬', '2024-01-18 18:32:55.015922');
INSERT INTO `b_course` VALUES (4, '高等数学', '王进', '2024-01-18 18:33:06.619051');
INSERT INTO `b_course` VALUES (5, 'C语言教程', '周立波', '2024-01-18 18:33:39.066005');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-18 18:21:33.740365');
INSERT INTO `b_login_log` VALUES (2, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-18 18:51:19.731593');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-18 18:55:20.921818');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-18 18:55:51.329292');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-18 18:56:05.031645');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 294 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-01-18 18:18:24.115462', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-01-18 18:18:24.116450', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-01-18 18:18:24.127786', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-01-18 18:20:41.384821', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-01-18 18:20:41.386845', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-01-18 18:20:41.387926', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-01-18 18:20:43.035404', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-01-18 18:20:54.787254', '/myapp/admin/user/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-01-18 18:21:06.537217', '/myapp/admin/user/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-01-18 18:21:06.578414', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-01-18 18:21:26.089934', '/myapp/admin/user/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-01-18 18:21:33.744373', '/myapp/admin/adminLogin', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-01-18 18:21:33.829371', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-01-18 18:21:33.830370', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-01-18 18:21:33.832371', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-01-18 18:21:35.111973', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-01-18 18:21:35.505294', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-01-18 18:21:45.560945', '/myapp/admin/user/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-01-18 18:21:45.612025', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-01-18 18:21:54.668910', '/myapp/admin/user/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-01-18 18:21:54.706635', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-01-18 18:22:31.402509', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-01-18 18:23:02.690713', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-01-18 18:23:24.005119', '/myapp/admin/classification/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-01-18 18:23:24.044744', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-01-18 18:23:31.329516', '/myapp/admin/classification/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-01-18 18:23:31.371582', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-01-18 18:23:39.129475', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-01-18 18:23:39.145451', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-01-18 18:23:46.029422', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-01-18 18:23:46.066172', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-01-18 18:23:59.101129', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-01-18 18:23:59.117436', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-01-18 18:24:01.922975', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-01-18 18:24:02.611690', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-01-18 18:24:33.476827', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-01-18 18:24:33.490110', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-01-18 18:24:33.491110', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-01-18 18:25:26.782048', '/myapp/admin/thing/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-01-18 18:25:26.812507', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-01-18 18:25:40.323941', '/myapp/admin/thing/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-01-18 18:25:40.375147', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-01-18 18:25:53.599326', '/myapp/admin/thing/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-01-18 18:25:53.639908', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-01-18 18:26:05.262041', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-01-18 18:26:05.316836', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-01-18 18:26:27.154554', '/myapp/admin/thing/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-01-18 18:26:27.188092', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-01-18 18:26:42.961947', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-01-18 18:26:42.964947', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-01-18 18:26:42.971947', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-01-18 18:26:50.093576', '/myapp/admin/thing/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-01-18 18:26:50.145719', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-01-18 18:26:53.408472', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-01-18 18:26:53.440402', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-01-18 18:26:56.930203', '/myapp/admin/thing/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-01-18 18:26:56.965371', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-01-18 18:27:00.713919', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-01-18 18:27:02.761406', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-01-18 18:27:03.730522', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-01-18 18:27:03.732286', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-01-18 18:27:03.735884', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-01-18 18:30:17.997445', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-01-18 18:30:18.003447', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-01-18 18:30:18.019458', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-01-18 18:30:20.939754', '/myapp/admin/course/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-01-18 18:30:58.929984', '/myapp/admin/course/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-01-18 18:31:16.061033', '/myapp/admin/course/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-01-18 18:31:22.174695', '/myapp/admin/course/create', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-01-18 18:32:18.388425', '/myapp/admin/course/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-01-18 18:32:18.406753', '/myapp/admin/course/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-01-18 18:32:36.119785', '/myapp/admin/course/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-01-18 18:32:36.157193', '/myapp/admin/course/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-01-18 18:32:55.020500', '/myapp/admin/course/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-01-18 18:32:55.046550', '/myapp/admin/course/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-01-18 18:33:06.625887', '/myapp/admin/course/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-01-18 18:33:06.667562', '/myapp/admin/course/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-01-18 18:33:39.073996', '/myapp/admin/course/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-01-18 18:33:39.095038', '/myapp/admin/course/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-01-18 18:33:47.681040', '/myapp/admin/course/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-01-18 18:33:47.720496', '/myapp/admin/course/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-01-18 18:33:50.710239', '/myapp/admin/course/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-01-18 18:33:50.751441', '/myapp/admin/course/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-01-18 18:33:53.116147', '/myapp/admin/course/delete', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-01-18 18:33:53.143670', '/myapp/admin/course/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-01-18 18:33:55.875159', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-01-18 18:33:56.579093', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-01-18 18:33:56.582276', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-01-18 18:33:56.597280', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-01-18 18:33:58.257693', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-01-18 18:33:58.971064', '/myapp/admin/course/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-01-18 18:34:00.549021', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-01-18 18:34:01.136977', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-01-18 18:34:01.141688', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-01-18 18:34:01.151040', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-01-18 18:36:25.502453', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-01-18 18:36:25.503454', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-01-18 18:36:25.507963', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-01-18 18:36:27.259687', '/myapp/admin/score/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-01-18 18:36:27.260689', '/myapp/admin/score/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-01-18 18:36:27.270678', '/myapp/admin/score/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-01-18 18:43:36.247391', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-01-18 18:43:36.248391', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-01-18 18:43:36.257392', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-01-18 18:43:39.712669', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-01-18 18:43:39.719129', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-01-18 18:43:39.721342', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-01-18 18:43:40.731102', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-01-18 18:43:41.222576', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-01-18 18:43:41.225081', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-01-18 18:43:41.230361', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-01-18 18:43:48.715318', '/myapp/admin/score/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-01-18 18:43:48.747240', '/myapp/admin/score/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-01-18 18:43:55.592812', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-01-18 18:43:55.995531', '/myapp/admin/score/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-01-18 18:43:55.997617', '/myapp/admin/score/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-01-18 18:43:56.007717', '/myapp/admin/score/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-01-18 18:44:07.004826', '/myapp/admin/score/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-01-18 18:44:39.437541', '/myapp/admin/score/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-01-18 18:44:39.488539', '/myapp/admin/score/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-01-18 18:44:56.560657', '/myapp/admin/score/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-01-18 18:44:56.575396', '/myapp/admin/course/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-01-18 18:44:56.577467', '/myapp/admin/course/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-01-18 18:44:58.119639', '/myapp/admin/score/delete', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-01-18 18:44:58.148072', '/myapp/admin/score/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-01-18 18:44:59.843526', '/myapp/admin/score/delete', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-01-18 18:44:59.879840', '/myapp/admin/score/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-01-18 18:45:04.920690', '/myapp/admin/score/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-01-18 18:45:04.948293', '/myapp/admin/score/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-01-18 18:45:56.794303', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-01-18 18:45:57.345621', '/myapp/admin/course/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-01-18 18:45:57.347630', '/myapp/admin/course/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-01-18 18:45:57.372640', '/myapp/admin/course/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-01-18 18:46:08.258400', '/myapp/admin/score/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-01-18 18:46:08.281458', '/myapp/admin/score/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-01-18 18:46:15.675862', '/myapp/admin/score/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-01-18 18:46:15.725982', '/myapp/admin/score/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-01-18 18:46:18.848276', '/myapp/admin/score/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-01-18 18:46:32.397440', '/myapp/admin/score/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-01-18 18:46:32.470534', '/myapp/admin/score/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-01-18 18:47:08.401475', '/myapp/admin/score/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-01-18 18:47:08.478477', '/myapp/admin/score/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-01-18 18:47:51.601434', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-01-18 18:47:52.310165', '/myapp/admin/course/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-01-18 18:47:52.319083', '/myapp/admin/course/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-01-18 18:47:52.326194', '/myapp/admin/course/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-01-18 18:48:42.380384', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-01-18 18:48:42.848477', '/myapp/admin/course/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-01-18 18:48:42.849291', '/myapp/admin/course/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-01-18 18:48:42.858609', '/myapp/admin/course/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-01-18 18:48:46.305367', '/myapp/admin/score/delete', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-01-18 18:48:46.350367', '/myapp/admin/score/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-01-18 18:48:52.977707', '/myapp/admin/score/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-01-18 18:48:53.032061', '/myapp/admin/score/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-01-18 18:49:03.142190', '/myapp/admin/score/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-01-18 18:49:03.196688', '/myapp/admin/score/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-01-18 18:49:14.287398', '/myapp/admin/score/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-01-18 18:49:14.324316', '/myapp/admin/score/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-01-18 18:49:19.819720', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-01-18 18:49:19.823173', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-01-18 18:49:19.827427', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-01-18 18:50:24.815646', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-01-18 18:50:25.659792', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-01-18 18:50:25.666269', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-01-18 18:50:25.670819', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-01-18 18:51:10.089062', '/myapp/admin/course/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-01-18 18:51:10.098046', '/myapp/admin/course/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-01-18 18:51:10.103055', '/myapp/admin/course/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-01-18 18:51:11.616765', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-01-18 18:51:11.618765', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-01-18 18:51:11.632116', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-01-18 18:51:15.398340', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-01-18 18:51:15.409654', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-01-18 18:51:15.415934', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-01-18 18:51:19.735560', '/myapp/admin/adminLogin', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-01-18 18:51:19.800102', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-01-18 18:51:19.812102', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-01-18 18:51:19.823110', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-01-18 18:51:23.246145', '/myapp/admin/score/update', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-01-18 18:51:43.060457', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1043');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-01-18 18:51:44.611851', '/myapp/admin/loginLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-01-18 18:51:45.303536', '/myapp/admin/opLog/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-01-18 18:51:46.092345', '/myapp/admin/errorLog/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-01-18 18:51:46.898611', '/myapp/admin/loginLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-01-18 18:51:47.996451', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-01-18 18:51:48.613646', '/myapp/admin/course/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-01-18 18:51:49.320653', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-01-18 18:51:50.597040', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-01-18 18:51:50.601040', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-01-18 18:51:50.606399', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-01-18 18:51:51.677416', '/myapp/admin/course/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-01-18 18:51:51.690452', '/myapp/admin/course/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-01-18 18:51:51.696960', '/myapp/admin/course/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-01-18 18:51:58.388666', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-01-18 18:51:58.392825', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-01-18 18:51:58.395849', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-01-18 18:51:59.237302', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-01-18 18:52:00.031098', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-01-18 18:52:00.036086', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-01-18 18:52:00.041085', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-01-18 18:52:00.618884', '/myapp/admin/course/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-01-18 18:52:00.629918', '/myapp/admin/course/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-01-18 18:52:00.642714', '/myapp/admin/course/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-01-18 18:52:04.407258', '/myapp/admin/score/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-01-18 18:52:05.895071', '/myapp/admin/score/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-01-18 18:55:20.927219', '/myapp/admin/adminLogin', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-01-18 18:55:20.996523', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-01-18 18:55:21.009914', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-01-18 18:55:21.017808', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-01-18 18:55:21.976109', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-01-18 18:55:21.988364', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-01-18 18:55:21.993365', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-01-18 18:55:24.142751', '/myapp/admin/thing/delete', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-01-18 18:55:25.681403', '/myapp/admin/course/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-01-18 18:55:26.270644', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-01-18 18:55:28.474758', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1033');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-01-18 18:55:29.123645', '/myapp/admin/course/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-01-18 18:55:29.130871', '/myapp/admin/course/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-01-18 18:55:29.135014', '/myapp/admin/course/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-01-18 18:55:51.332292', '/myapp/admin/adminLogin', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-01-18 18:55:51.406405', '/myapp/admin/course/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-01-18 18:55:51.406405', '/myapp/admin/course/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-01-18 18:55:51.413412', '/myapp/admin/course/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-01-18 18:55:55.145229', '/myapp/admin/score/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-01-18 18:56:05.035645', '/myapp/admin/adminLogin', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-01-18 18:56:05.097784', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-01-18 18:56:05.114786', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-01-18 18:56:05.115877', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-01-18 18:56:09.713840', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-01-18 18:56:09.715538', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-01-18 18:56:09.732774', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-01-18 18:56:10.209393', '/myapp/admin/course/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-01-18 18:56:10.217004', '/myapp/admin/course/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-01-18 18:56:10.223269', '/myapp/admin/course/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-01-18 18:56:14.772663', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1039');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-01-18 18:56:16.271505', '/myapp/admin/course/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-01-18 18:56:16.287249', '/myapp/admin/course/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-01-18 18:56:16.291391', '/myapp/admin/course/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-01-18 18:56:31.157088', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-01-18 18:56:31.165099', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-01-18 18:56:31.172087', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-01-18 18:56:32.371086', '/myapp/admin/course/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-01-18 18:56:32.386088', '/myapp/admin/course/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-01-18 18:56:32.392085', '/myapp/admin/course/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-01-18 18:56:54.668892', '/myapp/admin/score/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-01-18 18:56:54.700059', '/myapp/admin/score/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-01-18 18:57:00.713047', '/myapp/admin/score/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-01-18 18:57:00.768943', '/myapp/admin/score/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-01-18 18:57:07.316504', '/myapp/admin/score/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-01-18 18:57:07.379971', '/myapp/admin/score/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-01-18 18:57:16.550700', '/myapp/admin/score/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-01-18 18:57:16.609142', '/myapp/admin/score/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-01-18 18:57:23.272316', '/myapp/admin/score/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-01-18 18:57:23.341842', '/myapp/admin/score/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-01-18 18:57:33.308037', '/myapp/admin/score/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-01-18 18:57:33.369250', '/myapp/admin/score/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-01-18 18:57:41.500006', '/myapp/admin/score/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-01-18 18:57:41.551882', '/myapp/admin/score/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-01-18 18:57:48.354783', '/myapp/admin/score/update', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-01-18 18:57:48.415823', '/myapp/admin/score/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-01-18 18:57:52.709590', '/myapp/admin/score/update', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-01-18 18:57:52.766181', '/myapp/admin/score/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-01-18 18:58:02.779461', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-01-18 18:58:02.792463', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-01-18 18:58:02.799923', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-01-18 18:58:03.725174', '/myapp/admin/course/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-01-18 18:58:03.737156', '/myapp/admin/course/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-01-18 18:58:03.745168', '/myapp/admin/course/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-01-18 18:58:04.376207', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-01-18 18:58:04.982838', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-01-18 18:58:04.985042', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-01-18 18:58:04.989253', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-01-18 18:58:19.144886', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-01-18 18:58:19.180502', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-01-18 18:58:36.162005', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-01-18 18:58:36.193358', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-01-18 18:58:57.651020', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-01-18 18:58:57.654122', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-01-18 18:58:57.659544', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-01-18 18:59:19.191116', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-01-18 18:59:19.246775', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-01-18 18:59:22.881166', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-01-18 18:59:23.514270', '/myapp/admin/course/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-01-18 18:59:24.329701', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-01-18 18:59:37.677525', '/myapp/admin/user/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-01-18 18:59:37.718459', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-01-18 18:59:51.874797', '/myapp/admin/user/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-01-18 18:59:51.921955', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-01-18 18:59:56.552019', '/myapp/admin/course/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-01-18 18:59:57.243833', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-01-18 18:59:57.751390', '/myapp/admin/course/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-01-18 18:59:57.760376', '/myapp/admin/course/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-01-18 18:59:57.768458', '/myapp/admin/course/list', 'GET', NULL, '33');

-- ----------------------------
-- Table structure for b_score
-- ----------------------------
DROP TABLE IF EXISTS `b_score`;
CREATE TABLE `b_score`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `score` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `course_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_score_thing_id_91ba3ad2_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_score_course_id_48496a45_fk_b_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `b_score_course_id_48496a45_fk_b_course_id` FOREIGN KEY (`course_id`) REFERENCES `b_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_score_thing_id_91ba3ad2_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_score
-- ----------------------------
INSERT INTO `b_score` VALUES (3, '65', '2024-01-18 18:45:04.907070', 5, 5);
INSERT INTO `b_score` VALUES (4, '66', '2024-01-18 18:46:08.255381', 4, 4);
INSERT INTO `b_score` VALUES (5, '90', '2024-01-18 18:46:15.669538', 2, 2);
INSERT INTO `b_score` VALUES (7, '90', '2024-01-18 18:47:08.389190', 1, 1);
INSERT INTO `b_score` VALUES (8, '87', '2024-01-18 18:49:03.128835', 3, 2);
INSERT INTO `b_score` VALUES (9, '89', '2024-01-18 18:49:14.282410', 2, 4);
INSERT INTO `b_score` VALUES (10, '76', '2024-01-18 18:56:54.657145', 4, 1);
INSERT INTO `b_score` VALUES (11, '77', '2024-01-18 18:57:00.699326', 5, 1);
INSERT INTO `b_score` VALUES (12, '88', '2024-01-18 18:57:07.305474', 3, 4);
INSERT INTO `b_score` VALUES (13, '99', '2024-01-18 18:57:16.538700', 1, 4);
INSERT INTO `b_score` VALUES (14, '65', '2024-01-18 18:57:23.260346', 5, 3);
INSERT INTO `b_score` VALUES (15, '67', '2024-01-18 18:57:33.296532', 1, 3);
INSERT INTO `b_score` VALUES (16, '78', '2024-01-18 18:57:41.496001', 2, 1);

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '0', '2024-01-18 18:25:26.777847', 1, '', '刘德华', '13533332222', '22', '男');
INSERT INTO `b_thing` VALUES (2, '0', '2024-01-18 18:25:40.311171', 2, '', '周杰伦', '18977776666', '21', '男');
INSERT INTO `b_thing` VALUES (3, '0', '2024-01-18 18:25:53.594046', 3, '', '刘文文', '18977776666', '20', '女');
INSERT INTO `b_thing` VALUES (4, '0', '2024-01-18 18:26:05.250163', 4, '', '周迅', '18977776666', '22', '女');
INSERT INTO `b_thing` VALUES (5, '0', '2024-01-18 18:26:27.141516', 5, '', '王小明', '18977776222', '22', '男');
INSERT INTO `b_thing` VALUES (7, '0', '2024-01-18 18:58:19.132969', 3, 'dddd', '周华健', '18977776666', '33', '男');
INSERT INTO `b_thing` VALUES (8, '1', '2024-01-18 18:58:36.150007', 2, 'dddd', '王思聪', '18977776666', '33', '男');
INSERT INTO `b_thing` VALUES (9, '0', '2024-01-18 18:59:19.178724', 3, '', '王小静', '18977776999', '20', '女');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-18 18:21:06.534221', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-18 18:21:45.555929', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'test', '098f6bcd4621d373cade4e832627b4f6', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-18 18:21:54.656646', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'abcabc', '440ac85892ca43ad26d44c7ad9d47d3e', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-18 18:59:37.673385', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'admin1', 'abcbbfaea4e618fa7f88cb6b47c6969c', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-18 18:59:51.863077', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'course');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'score');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-01-18 17:15:13.370722');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-01-18 17:15:13.637045');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-01-18 17:15:13.714444');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-01-18 17:15:13.721246');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-18 17:15:13.727835');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-01-18 17:15:13.792104');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-01-18 17:15:13.834932');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-01-18 17:15:13.882459');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-01-18 17:15:13.889402');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-01-18 17:15:13.922748');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-01-18 17:15:13.926108');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-18 17:15:13.931655');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-01-18 17:15:13.973845');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-18 17:15:14.015601');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-01-18 17:15:14.057704');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-01-18 17:15:14.064704');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-18 17:15:14.110550');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-01-18 17:15:14.834078');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2024-01-18 17:15:14.940610');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2024-01-18 17:15:15.043965');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2024-01-18 17:15:15.078974');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2024-01-18 17:15:15.578383');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2024-01-18 17:15:15.616585');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230809_1840', '2024-01-18 17:15:15.959373');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_auto_20230810_1836', '2024-01-18 17:15:16.060009');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0009_auto_20240115_1002', '2024-01-18 17:15:16.515397');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0010_park_create_time', '2024-01-18 17:15:16.557911');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0011_auto_20240116_1859', '2024-01-18 17:15:16.800498');
INSERT INTO `django_migrations` VALUES (29, 'myapp', '0012_auto_20240118_1714', '2024-01-18 17:15:17.068813');
INSERT INTO `django_migrations` VALUES (30, 'sessions', '0001_initial', '2024-01-18 17:15:17.103109');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
