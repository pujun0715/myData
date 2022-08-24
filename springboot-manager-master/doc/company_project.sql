/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 80027
Source Host           : localhost:3306
Source Database       : company_project

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2022-08-24 11:14:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gogzhi
-- ----------------------------
DROP TABLE IF EXISTS `gogzhi`;
CREATE TABLE `gogzhi` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '员工姓名',
  `lisi_project` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `pingjia` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '评价',
  `pingfen` double DEFAULT NULL,
  `gongzhi` double DEFAULT NULL COMMENT '工资',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of gogzhi
-- ----------------------------
INSERT INTO `gogzhi` VALUES ('1474742095955775489', '员工1', ' 项目1 项目3 项目001', 'A+', '7.2', '6732');
INSERT INTO `gogzhi` VALUES ('1475994109704056834', '员工2', '', '', null, null);
INSERT INTO `gogzhi` VALUES ('1475994146257416194', '员工3', '', '', null, null);
INSERT INTO `gogzhi` VALUES ('1475994177832136705', '员工4', '', '', null, null);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主建',
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目名称',
  `cj_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `senhe_name` varchar(255) DEFAULT NULL COMMENT '审核人（主管）',
  `kehu_name` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `stutues` int DEFAULT NULL COMMENT '状态(2：项目通过 1:审核中 0:弃用)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '文件名',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1474683020719046658', '项目1', '员工1', '主管1', '客户1', '2', '2021-12-25 18:06:45', '2021-12-26 21:08:23', '项目01.rar', 'http://localhost:8080/files/20211225/172d9e78bd514c688d6bc115cbe7d799.rar');
INSERT INTO `project` VALUES ('1474684850828152834', '项目2', '员工2', '主管1', '客户2', '0', '2021-12-25 18:14:01', '2021-12-29 10:28:28', '项目02.rar', 'http://localhost:8080/files/20211228/85fd1a5fb3ff4affb7f6bce5c7ff7842.rar');
INSERT INTO `project` VALUES ('1474759593543475202', '项目3', '员工1', '主管1', '客户2', '2', '2021-12-25 23:11:01', '2021-12-28 19:24:14', '项目03.rar', 'http://localhost:8080/files/20211225/e816f320dfdb4f80b6a0accd5dca09a6.rar');
INSERT INTO `project` VALUES ('1475789350305513474', '项目4', '员工4', '主管2', '客户3', '0', '2021-12-28 19:22:55', '2022-01-04 13:15:16', '项目04.rar', 'http://localhost:8080/files/20220104/4f435cb4d07b4d63a194cc4c9e8e6fe2.rar');
INSERT INTO `project` VALUES ('1475791552554188802', '项目05', '员工3', '主管2', '客户2', '0', '2021-12-28 19:31:40', '2022-01-04 15:52:32', '项目05.rar', 'http://localhost:8080/files/20211228/4c221869cf6144ea9af6caf449a6b695.rar');
INSERT INTO `project` VALUES ('1475992686371188738', '项目6', '员工2', '主管2', '客户3', '0', '2021-12-29 08:50:54', '2022-01-04 15:54:41', '631907060215-16811.rar', 'http://localhost:8080/files/20220104/7a979bae3fa942bdbc8cb944e0827153.rar');
INSERT INTO `project` VALUES ('1476120506435579905', '项目7', '员工1', '主管2', '客户3', '0', '2021-12-29 17:18:48', '2021-12-29 17:24:11', 'project.zip', 'http://localhost:8080/files/20211229/b81af52df07548dcab097060d22c19f0.zip');
INSERT INTO `project` VALUES ('1476502993481494529', '项目001', '员工1', '主管2', '客户3', '2', '2021-12-30 18:38:40', '2021-12-30 18:42:46', '项目03.rar', 'http://localhost:8080/files/20211230/18d177bc498b4f7992cfa56ddf8576a9.rar');

-- ----------------------------
-- Table structure for sys_content
-- ----------------------------
DROP TABLE IF EXISTS `sys_content`;
CREATE TABLE `sys_content` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `type` int DEFAULT NULL COMMENT '文章类型',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='文章管理';

-- ----------------------------
-- Records of sys_content
-- ----------------------------
INSERT INTO `sys_content` VALUES ('1471392716058394625', '1221', '1', 0x3C696D67207372633D22687474703A2F2F6C6F63616C686F73743A383038302F66696C65732F32303231313231362F32373734363833323466316534643436383064646461613730663832653337322E706E672220616C743D22756E646566696E6564223E, '2021-12-16 16:12:15', '1');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `dept_no` varchar(18) DEFAULT NULL COMMENT '部门编号(规则：父级关系编码+自己的编码)',
  `name` varchar(300) DEFAULT NULL COMMENT '部门名称',
  `pid` varchar(64) NOT NULL COMMENT '父级id',
  `status` tinyint DEFAULT NULL COMMENT '状态(1:正常；0:弃用)',
  `relation_code` varchar(3000) DEFAULT NULL COMMENT '为了维护更深层级关系',
  `dept_manager_id` varchar(64) DEFAULT NULL COMMENT '部门经理user_id',
  `manager_name` varchar(255) DEFAULT NULL COMMENT '部门经理名称',
  `phone` varchar(20) DEFAULT NULL COMMENT '部门经理联系电话',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint DEFAULT NULL COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='系统部门';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', 'D000001', '总公司', '0', '1', 'D000001', null, '小李1', '13888888888', '2019-11-07 22:43:33', '2021-12-29 16:53:06', '1');
INSERT INTO `sys_dept` VALUES ('1471317503849517058', 'D000002', '项目开发', '1', '1', 'D000001D000002', null, 'pj', '15826342104', '2021-12-16 11:13:23', '2021-12-16 11:13:23', '1');
INSERT INTO `sys_dept` VALUES ('1476113706759958530', 'D000003', '总公司', '0', '1', 'D000003', null, '哈哈', '13522222222', '2021-12-29 16:51:47', '2021-12-29 16:51:47', '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1255790029680242690', 'sex', '性别', '2020-04-30 17:24:09');
INSERT INTO `sys_dict` VALUES ('1282504369620430849', 'content_type', '文章类型略略略', '2020-07-13 10:37:24');

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `sort` smallint DEFAULT NULL COMMENT '排序',
  `dict_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典id',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES ('1255790073535885314', '男', '1', '1', '1255790029680242690', '2020-04-30 17:24:19');
INSERT INTO `sys_dict_detail` VALUES ('1255790100115189761', '女', '2', '2', '1255790029680242690', '2020-04-30 17:24:25');
INSERT INTO `sys_dict_detail` VALUES ('1282504475715350530', '诗词', '1', '1', '1282504369620430849', '2020-07-13 10:37:49');
INSERT INTO `sys_dict_detail` VALUES ('1282504651729317889', '散文', '2', '2', '1282504369620430849', '2020-07-13 10:38:31');
INSERT INTO `sys_dict_detail` VALUES ('1282846022950842369', '剧本', '3', '3', '1282504369620430849', '2020-07-14 09:15:01');

-- ----------------------------
-- Table structure for sys_files
-- ----------------------------
DROP TABLE IF EXISTS `sys_files`;
CREATE TABLE `sys_files` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='文件上传';

-- ----------------------------
-- Records of sys_files
-- ----------------------------
INSERT INTO `sys_files` VALUES ('1475346155943632897', 'http://localhost:8080/files/20211227/39a4ac4e944946a2a1895b8e29820f75.rar', '2021-12-27 14:01:49', '项目01基本资料.rar', 'D:/files/20211227\\39a4ac4e944946a2a1895b8e29820f75.rar');
INSERT INTO `sys_files` VALUES ('1475346333413023745', 'http://localhost:8080/files/20211227/6e03458f51e3414c8291eefb6719131e.rar', '2021-12-27 14:02:31', '项目02基本资料.rar', 'D:/files/20211227\\6e03458f51e3414c8291eefb6719131e.rar');
INSERT INTO `sys_files` VALUES ('1476033449440227329', 'http://localhost:8080/files/20211229/c20293248e62489396369250ddd62652.rar', '2021-12-29 11:32:52', '项目03.rar', 'D:/files/20211229\\c20293248e62489396369250ddd62652.rar');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='定时任务';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1252884495040782337', 'testTask', '1', '0 */1 * * * ?', '1', '1', '2020-04-22 16:58:35');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务日志id',
  `job_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `status` tinyint NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失败信息',
  `times` int NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job_id` (`job_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='定时任务日志';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1471315141063766018', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:04:00');
INSERT INTO `sys_job_log` VALUES ('1471315644489388033', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:06:00');
INSERT INTO `sys_job_log` VALUES ('1471315896051159042', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:07:00');
INSERT INTO `sys_job_log` VALUES ('1471316147705204737', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:08:00');
INSERT INTO `sys_job_log` VALUES ('1471316399359250433', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:09:00');
INSERT INTO `sys_job_log` VALUES ('1471316651030073345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:10:00');
INSERT INTO `sys_job_log` VALUES ('1471316902679924737', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:11:00');
INSERT INTO `sys_job_log` VALUES ('1471317154329776129', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:12:00');
INSERT INTO `sys_job_log` VALUES ('1471317405992210434', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:13:00');
INSERT INTO `sys_job_log` VALUES ('1471317657663033345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:14:00');
INSERT INTO `sys_job_log` VALUES ('1471317909312884738', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:15:00');
INSERT INTO `sys_job_log` VALUES ('1471318160962736130', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:16:00');
INSERT INTO `sys_job_log` VALUES ('1471318412625170433', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:17:00');
INSERT INTO `sys_job_log` VALUES ('1471318664283410434', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:18:00');
INSERT INTO `sys_job_log` VALUES ('1471318915941650434', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:19:00');
INSERT INTO `sys_job_log` VALUES ('1471319167595696130', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:20:00');
INSERT INTO `sys_job_log` VALUES ('1471319419346173954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:21:00');
INSERT INTO `sys_job_log` VALUES ('1471319670920527874', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:22:00');
INSERT INTO `sys_job_log` VALUES ('1471320929895378946', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:27:00');
INSERT INTO `sys_job_log` VALUES ('1471321180869947393', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:28:00');
INSERT INTO `sys_job_log` VALUES ('1471321432519798785', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:29:00');
INSERT INTO `sys_job_log` VALUES ('1471321684186427393', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:30:00');
INSERT INTO `sys_job_log` VALUES ('1471321935844667394', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:31:00');
INSERT INTO `sys_job_log` VALUES ('1471322187502907394', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:32:00');
INSERT INTO `sys_job_log` VALUES ('1471322439161147394', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:33:00');
INSERT INTO `sys_job_log` VALUES ('1471322690815193090', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:34:00');
INSERT INTO `sys_job_log` VALUES ('1471322942477627394', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:35:00');
INSERT INTO `sys_job_log` VALUES ('1471323194127478785', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:36:00');
INSERT INTO `sys_job_log` VALUES ('1471323445798301698', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:37:00');
INSERT INTO `sys_job_log` VALUES ('1471323697452347393', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:38:00');
INSERT INTO `sys_job_log` VALUES ('1471323949110587394', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:39:00');
INSERT INTO `sys_job_log` VALUES ('1471324200768827393', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:40:00');
INSERT INTO `sys_job_log` VALUES ('1471324452427067394', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:41:00');
INSERT INTO `sys_job_log` VALUES ('1471324704118861826', '1252884495040782337', 'testTask', '1', '0', null, '3', '2021-12-16 11:42:00');
INSERT INTO `sys_job_log` VALUES ('1471324955735158785', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:43:00');
INSERT INTO `sys_job_log` VALUES ('1471325207397593090', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:44:00');
INSERT INTO `sys_job_log` VALUES ('1471325459060027394', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:45:00');
INSERT INTO `sys_job_log` VALUES ('1471325714983821314', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:46:01');
INSERT INTO `sys_job_log` VALUES ('1471325962380648449', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:47:00');
INSERT INTO `sys_job_log` VALUES ('1471326214034694145', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:48:00');
INSERT INTO `sys_job_log` VALUES ('1471326465692934146', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:49:00');
INSERT INTO `sys_job_log` VALUES ('1471326717359562754', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:50:00');
INSERT INTO `sys_job_log` VALUES ('1471326969009414146', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:51:00');
INSERT INTO `sys_job_log` VALUES ('1471327220659265537', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:52:00');
INSERT INTO `sys_job_log` VALUES ('1471327472321699842', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:53:00');
INSERT INTO `sys_job_log` VALUES ('1471327723984134146', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:54:00');
INSERT INTO `sys_job_log` VALUES ('1471327975764066306', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:55:00');
INSERT INTO `sys_job_log` VALUES ('1471328227300671490', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 11:56:00');
INSERT INTO `sys_job_log` VALUES ('1471328479009193986', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:57:00');
INSERT INTO `sys_job_log` VALUES ('1471328730617102338', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:58:00');
INSERT INTO `sys_job_log` VALUES ('1471328982279536641', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 11:59:00');
INSERT INTO `sys_job_log` VALUES ('1471329233937776641', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 12:00:00');
INSERT INTO `sys_job_log` VALUES ('1471329485583433729', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:01:00');
INSERT INTO `sys_job_log` VALUES ('1471329737250062337', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:02:00');
INSERT INTO `sys_job_log` VALUES ('1471329988904108034', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:03:00');
INSERT INTO `sys_job_log` VALUES ('1471330240566542338', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:04:00');
INSERT INTO `sys_job_log` VALUES ('1471330492275150850', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:05:00');
INSERT INTO `sys_job_log` VALUES ('1471330743878864897', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:06:00');
INSERT INTO `sys_job_log` VALUES ('1471330995541299201', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:07:00');
INSERT INTO `sys_job_log` VALUES ('1471331247203733506', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:08:00');
INSERT INTO `sys_job_log` VALUES ('1471331498853584897', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:09:00');
INSERT INTO `sys_job_log` VALUES ('1471331750516019201', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 12:10:00');
INSERT INTO `sys_job_log` VALUES ('1471332002170064898', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:11:00');
INSERT INTO `sys_job_log` VALUES ('1471332253832499201', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 12:12:00');
INSERT INTO `sys_job_log` VALUES ('1471332505549533186', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 12:13:00');
INSERT INTO `sys_job_log` VALUES ('1471390135412195329', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:02:00');
INSERT INTO `sys_job_log` VALUES ('1471390386915246082', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:03:00');
INSERT INTO `sys_job_log` VALUES ('1471390638552514562', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:04:00');
INSERT INTO `sys_job_log` VALUES ('1471390890210754562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:05:00');
INSERT INTO `sys_job_log` VALUES ('1471391141873188866', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:06:00');
INSERT INTO `sys_job_log` VALUES ('1471391393527234561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:07:00');
INSERT INTO `sys_job_log` VALUES ('1471391645185474562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:08:00');
INSERT INTO `sys_job_log` VALUES ('1471391896847908866', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:09:00');
INSERT INTO `sys_job_log` VALUES ('1471392148497760257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:10:00');
INSERT INTO `sys_job_log` VALUES ('1471392400151805953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:11:00');
INSERT INTO `sys_job_log` VALUES ('1471392651814240258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:12:00');
INSERT INTO `sys_job_log` VALUES ('1471392903476674562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:13:00');
INSERT INTO `sys_job_log` VALUES ('1471393155130720257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:14:00');
INSERT INTO `sys_job_log` VALUES ('1471393406780571649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:15:00');
INSERT INTO `sys_job_log` VALUES ('1471393658447200257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:16:00');
INSERT INTO `sys_job_log` VALUES ('1471393910113828865', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-16 16:17:00');
INSERT INTO `sys_job_log` VALUES ('1471394161763680257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:18:00');
INSERT INTO `sys_job_log` VALUES ('1471394413421920258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:19:00');
INSERT INTO `sys_job_log` VALUES ('1471394665080160257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:20:00');
INSERT INTO `sys_job_log` VALUES ('1471394916730011650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:21:00');
INSERT INTO `sys_job_log` VALUES ('1471395168392445953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:22:00');
INSERT INTO `sys_job_log` VALUES ('1471395420054880257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:23:00');
INSERT INTO `sys_job_log` VALUES ('1471395671708925954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:24:00');
INSERT INTO `sys_job_log` VALUES ('1471395923362971649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:25:00');
INSERT INTO `sys_job_log` VALUES ('1471396175017017346', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:26:00');
INSERT INTO `sys_job_log` VALUES ('1471396426679451650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:27:00');
INSERT INTO `sys_job_log` VALUES ('1471396678346080257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:28:00');
INSERT INTO `sys_job_log` VALUES ('1471396929995931650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:29:00');
INSERT INTO `sys_job_log` VALUES ('1471397181662560258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:30:00');
INSERT INTO `sys_job_log` VALUES ('1471397433316605953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:31:00');
INSERT INTO `sys_job_log` VALUES ('1471397684979040258', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:32:00');
INSERT INTO `sys_job_log` VALUES ('1471397936633085954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:33:00');
INSERT INTO `sys_job_log` VALUES ('1471398188287131649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:34:00');
INSERT INTO `sys_job_log` VALUES ('1471398439945371650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:35:00');
INSERT INTO `sys_job_log` VALUES ('1471398691616194561', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:36:00');
INSERT INTO `sys_job_log` VALUES ('1471398943274434561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:37:00');
INSERT INTO `sys_job_log` VALUES ('1471399194920091650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:38:00');
INSERT INTO `sys_job_log` VALUES ('1471399446586720257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:39:00');
INSERT INTO `sys_job_log` VALUES ('1471399698244960257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:40:00');
INSERT INTO `sys_job_log` VALUES ('1471399949899005954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:41:00');
INSERT INTO `sys_job_log` VALUES ('1471400201561440257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:42:00');
INSERT INTO `sys_job_log` VALUES ('1471400453215485953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:43:00');
INSERT INTO `sys_job_log` VALUES ('1471400704882114562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:44:00');
INSERT INTO `sys_job_log` VALUES ('1471400956531965953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:45:00');
INSERT INTO `sys_job_log` VALUES ('1471401208194400258', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:46:00');
INSERT INTO `sys_job_log` VALUES ('1471401459848445954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:47:00');
INSERT INTO `sys_job_log` VALUES ('1471401711515074562', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:48:00');
INSERT INTO `sys_job_log` VALUES ('1471401963169120258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:49:00');
INSERT INTO `sys_job_log` VALUES ('1471402214823165954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:50:00');
INSERT INTO `sys_job_log` VALUES ('1471402466468823041', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:51:00');
INSERT INTO `sys_job_log` VALUES ('1471402718143840258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:52:00');
INSERT INTO `sys_job_log` VALUES ('1471402969802080257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:53:00');
INSERT INTO `sys_job_log` VALUES ('1471403221447737345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:54:00');
INSERT INTO `sys_job_log` VALUES ('1471403473114365954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:55:00');
INSERT INTO `sys_job_log` VALUES ('1471403724776800257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:56:00');
INSERT INTO `sys_job_log` VALUES ('1471403976426651649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:57:00');
INSERT INTO `sys_job_log` VALUES ('1471404228097474561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 16:58:00');
INSERT INTO `sys_job_log` VALUES ('1471404479747325954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 16:59:00');
INSERT INTO `sys_job_log` VALUES ('1471404731401371649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:00:00');
INSERT INTO `sys_job_log` VALUES ('1471404983063805954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:01:00');
INSERT INTO `sys_job_log` VALUES ('1471405234717851650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:02:00');
INSERT INTO `sys_job_log` VALUES ('1471405486380285954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:03:00');
INSERT INTO `sys_job_log` VALUES ('1471405738034331650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:04:00');
INSERT INTO `sys_job_log` VALUES ('1471405989688377346', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:05:00');
INSERT INTO `sys_job_log` VALUES ('1471406241355005953', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:06:00');
INSERT INTO `sys_job_log` VALUES ('1471406493013245954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:07:00');
INSERT INTO `sys_job_log` VALUES ('1471406744675680257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:08:00');
INSERT INTO `sys_job_log` VALUES ('1471406996338114561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:09:00');
INSERT INTO `sys_job_log` VALUES ('1471407247992160257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:10:00');
INSERT INTO `sys_job_log` VALUES ('1471407499654594561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:11:00');
INSERT INTO `sys_job_log` VALUES ('1471407751300251649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:12:00');
INSERT INTO `sys_job_log` VALUES ('1471408002971074561', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:13:00');
INSERT INTO `sys_job_log` VALUES ('1471408254620925954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:14:00');
INSERT INTO `sys_job_log` VALUES ('1471408506291748866', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:15:00');
INSERT INTO `sys_job_log` VALUES ('1471408757949988866', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:16:00');
INSERT INTO `sys_job_log` VALUES ('1471409009612423169', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-16 17:17:00');
INSERT INTO `sys_job_log` VALUES ('1471409261262274561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:18:00');
INSERT INTO `sys_job_log` VALUES ('1471409512920514562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:19:00');
INSERT INTO `sys_job_log` VALUES ('1471409764578754561', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:20:00');
INSERT INTO `sys_job_log` VALUES ('1471410016220217346', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:21:00');
INSERT INTO `sys_job_log` VALUES ('1471410267903623170', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:22:00');
INSERT INTO `sys_job_log` VALUES ('1471410519545085954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:23:00');
INSERT INTO `sys_job_log` VALUES ('1471410771203325953', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:24:00');
INSERT INTO `sys_job_log` VALUES ('1471411022857371649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:25:00');
INSERT INTO `sys_job_log` VALUES ('1471411274524000257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:26:00');
INSERT INTO `sys_job_log` VALUES ('1471411526178045954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:27:00');
INSERT INTO `sys_job_log` VALUES ('1471411777836285954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:28:00');
INSERT INTO `sys_job_log` VALUES ('1471412029494525954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:29:00');
INSERT INTO `sys_job_log` VALUES ('1471412281148571650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:30:00');
INSERT INTO `sys_job_log` VALUES ('1471412532815200258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:31:00');
INSERT INTO `sys_job_log` VALUES ('1471412784465051649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:32:00');
INSERT INTO `sys_job_log` VALUES ('1471413036123291650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:33:00');
INSERT INTO `sys_job_log` VALUES ('1471413287794114561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:34:00');
INSERT INTO `sys_job_log` VALUES ('1471413539439771650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:35:00');
INSERT INTO `sys_job_log` VALUES ('1471413791110594562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:36:00');
INSERT INTO `sys_job_log` VALUES ('1471414042760445954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:37:00');
INSERT INTO `sys_job_log` VALUES ('1471414294422880257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:38:00');
INSERT INTO `sys_job_log` VALUES ('1471414546081120257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:39:00');
INSERT INTO `sys_job_log` VALUES ('1471414797735165954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:40:00');
INSERT INTO `sys_job_log` VALUES ('1471415049389211649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:41:00');
INSERT INTO `sys_job_log` VALUES ('1471415301055840257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:42:00');
INSERT INTO `sys_job_log` VALUES ('1471415552709885954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:43:00');
INSERT INTO `sys_job_log` VALUES ('1471415804363931650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:44:00');
INSERT INTO `sys_job_log` VALUES ('1471416056026365953', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:45:00');
INSERT INTO `sys_job_log` VALUES ('1471416307680411649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:46:00');
INSERT INTO `sys_job_log` VALUES ('1471416559338651649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:47:00');
INSERT INTO `sys_job_log` VALUES ('1471416811001085953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:48:00');
INSERT INTO `sys_job_log` VALUES ('1471417062655131649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:49:00');
INSERT INTO `sys_job_log` VALUES ('1471417314313371650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:50:00');
INSERT INTO `sys_job_log` VALUES ('1471417565971611649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:51:00');
INSERT INTO `sys_job_log` VALUES ('1471417817638240257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:52:00');
INSERT INTO `sys_job_log` VALUES ('1471418069292285953', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:53:00');
INSERT INTO `sys_job_log` VALUES ('1471418320950525953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:54:00');
INSERT INTO `sys_job_log` VALUES ('1471418572604571649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:55:00');
INSERT INTO `sys_job_log` VALUES ('1471418824258617345', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 17:56:00');
INSERT INTO `sys_job_log` VALUES ('1471419075925245953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:57:00');
INSERT INTO `sys_job_log` VALUES ('1471419327587680257', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:58:00');
INSERT INTO `sys_job_log` VALUES ('1471419579233337345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 17:59:00');
INSERT INTO `sys_job_log` VALUES ('1471419830899965954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:00:00');
INSERT INTO `sys_job_log` VALUES ('1471420082554011649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:01:00');
INSERT INTO `sys_job_log` VALUES ('1471420334212251649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:02:00');
INSERT INTO `sys_job_log` VALUES ('1471420585874685953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:03:00');
INSERT INTO `sys_job_log` VALUES ('1471420837528731649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:04:00');
INSERT INTO `sys_job_log` VALUES ('1471421089186971649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:05:00');
INSERT INTO `sys_job_log` VALUES ('1471421340841017346', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:06:00');
INSERT INTO `sys_job_log` VALUES ('1471421592499257345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:07:00');
INSERT INTO `sys_job_log` VALUES ('1471421844161691649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:08:00');
INSERT INTO `sys_job_log` VALUES ('1471422095819931650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:09:00');
INSERT INTO `sys_job_log` VALUES ('1471422347490754561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:10:00');
INSERT INTO `sys_job_log` VALUES ('1471422599144800258', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:11:00');
INSERT INTO `sys_job_log` VALUES ('1471422850794651650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:12:00');
INSERT INTO `sys_job_log` VALUES ('1471423102452891650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:13:00');
INSERT INTO `sys_job_log` VALUES ('1471423354106937345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:14:00');
INSERT INTO `sys_job_log` VALUES ('1471423605769371649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:15:00');
INSERT INTO `sys_job_log` VALUES ('1471423857431805954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:16:00');
INSERT INTO `sys_job_log` VALUES ('1471424109085851649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:17:00');
INSERT INTO `sys_job_log` VALUES ('1471424360748285954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:18:00');
INSERT INTO `sys_job_log` VALUES ('1471424612398137346', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:19:00');
INSERT INTO `sys_job_log` VALUES ('1471424864056377345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:20:00');
INSERT INTO `sys_job_log` VALUES ('1471425115714617345', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:21:00');
INSERT INTO `sys_job_log` VALUES ('1471425367385440257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:22:00');
INSERT INTO `sys_job_log` VALUES ('1471425619035291649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:23:00');
INSERT INTO `sys_job_log` VALUES ('1471425870697725954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:24:00');
INSERT INTO `sys_job_log` VALUES ('1471426122360160258', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:25:00');
INSERT INTO `sys_job_log` VALUES ('1471426374014205953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:26:00');
INSERT INTO `sys_job_log` VALUES ('1471426625668251650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:27:00');
INSERT INTO `sys_job_log` VALUES ('1471426877326491649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:28:00');
INSERT INTO `sys_job_log` VALUES ('1471427128984731649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:29:00');
INSERT INTO `sys_job_log` VALUES ('1471427380642971650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:30:00');
INSERT INTO `sys_job_log` VALUES ('1471427632301211650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:31:00');
INSERT INTO `sys_job_log` VALUES ('1471427883951063042', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:32:00');
INSERT INTO `sys_job_log` VALUES ('1471428135613497346', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:33:00');
INSERT INTO `sys_job_log` VALUES ('1471428387275931649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:34:00');
INSERT INTO `sys_job_log` VALUES ('1471428638938365953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:35:00');
INSERT INTO `sys_job_log` VALUES ('1471428890592411649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:36:00');
INSERT INTO `sys_job_log` VALUES ('1471429142254845953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:37:00');
INSERT INTO `sys_job_log` VALUES ('1471429393913085954', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:38:00');
INSERT INTO `sys_job_log` VALUES ('1471429645579714562', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-16 18:39:00');
INSERT INTO `sys_job_log` VALUES ('1471429897229565953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:40:00');
INSERT INTO `sys_job_log` VALUES ('1471430148887805953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-16 18:41:00');
INSERT INTO `sys_job_log` VALUES ('1472755129815080962', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:26:00');
INSERT INTO `sys_job_log` VALUES ('1472755381192302593', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:27:00');
INSERT INTO `sys_job_log` VALUES ('1472755632850542594', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:28:00');
INSERT INTO `sys_job_log` VALUES ('1472755884504588289', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 10:29:00');
INSERT INTO `sys_job_log` VALUES ('1472756136150245378', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:30:00');
INSERT INTO `sys_job_log` VALUES ('1472756387837845505', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:31:00');
INSERT INTO `sys_job_log` VALUES ('1472756639483502593', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:32:00');
INSERT INTO `sys_job_log` VALUES ('1472756891137548289', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:33:00');
INSERT INTO `sys_job_log` VALUES ('1472757142799982594', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:34:00');
INSERT INTO `sys_job_log` VALUES ('1472757394454028290', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:35:00');
INSERT INTO `sys_job_log` VALUES ('1472757646116462593', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:36:00');
INSERT INTO `sys_job_log` VALUES ('1472757897774702593', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:37:00');
INSERT INTO `sys_job_log` VALUES ('1472758149428748290', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:38:00');
INSERT INTO `sys_job_log` VALUES ('1472758401086988290', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:39:00');
INSERT INTO `sys_job_log` VALUES ('1472758652770394114', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:40:00');
INSERT INTO `sys_job_log` VALUES ('1472758904420245505', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 10:41:00');
INSERT INTO `sys_job_log` VALUES ('1472759156065902593', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 10:42:00');
INSERT INTO `sys_job_log` VALUES ('1472759407715753985', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:43:00');
INSERT INTO `sys_job_log` VALUES ('1472759659369799682', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:44:00');
INSERT INTO `sys_job_log` VALUES ('1472759911032233985', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:45:00');
INSERT INTO `sys_job_log` VALUES ('1472760162694668290', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:46:00');
INSERT INTO `sys_job_log` VALUES ('1472760414352908290', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:47:00');
INSERT INTO `sys_job_log` VALUES ('1472760666011148289', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:48:00');
INSERT INTO `sys_job_log` VALUES ('1472760917665193985', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:49:00');
INSERT INTO `sys_job_log` VALUES ('1472761169327628289', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:50:00');
INSERT INTO `sys_job_log` VALUES ('1472761420977479682', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:51:00');
INSERT INTO `sys_job_log` VALUES ('1472761672635719681', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:52:00');
INSERT INTO `sys_job_log` VALUES ('1472761924293959681', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:53:00');
INSERT INTO `sys_job_log` VALUES ('1472762175956393985', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:54:00');
INSERT INTO `sys_job_log` VALUES ('1472762427614633985', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:55:00');
INSERT INTO `sys_job_log` VALUES ('1472762679264485377', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:56:00');
INSERT INTO `sys_job_log` VALUES ('1472762930926919681', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:57:00');
INSERT INTO `sys_job_log` VALUES ('1472763182593548289', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 10:58:00');
INSERT INTO `sys_job_log` VALUES ('1472763434247593986', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 10:59:00');
INSERT INTO `sys_job_log` VALUES ('1472763685910028290', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:00:00');
INSERT INTO `sys_job_log` VALUES ('1472763937564073985', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:01:00');
INSERT INTO `sys_job_log` VALUES ('1472764189222313986', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:02:00');
INSERT INTO `sys_job_log` VALUES ('1472764440867971073', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:03:00');
INSERT INTO `sys_job_log` VALUES ('1472764692664578049', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:04:00');
INSERT INTO `sys_job_log` VALUES ('1472764944209571841', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:05:00');
INSERT INTO `sys_job_log` VALUES ('1472765195859423233', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:06:00');
INSERT INTO `sys_job_log` VALUES ('1472765447505080321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:07:00');
INSERT INTO `sys_job_log` VALUES ('1472765699171708929', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:08:00');
INSERT INTO `sys_job_log` VALUES ('1472766462270832641', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:11:02');
INSERT INTO `sys_job_log` VALUES ('1472766957756526594', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:13:00');
INSERT INTO `sys_job_log` VALUES ('1472767209129553921', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:14:00');
INSERT INTO `sys_job_log` VALUES ('1472767460791988226', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:15:00');
INSERT INTO `sys_job_log` VALUES ('1472767712429256706', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:16:00');
INSERT INTO `sys_job_log` VALUES ('1472767964083302401', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:17:00');
INSERT INTO `sys_job_log` VALUES ('1472768215737348097', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:18:00');
INSERT INTO `sys_job_log` VALUES ('1472768467416559618', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:19:00');
INSERT INTO `sys_job_log` VALUES ('1472768719078993922', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:20:00');
INSERT INTO `sys_job_log` VALUES ('1472768970733039618', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:21:00');
INSERT INTO `sys_job_log` VALUES ('1472769222391279617', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:22:00');
INSERT INTO `sys_job_log` VALUES ('1472769474041131009', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:23:00');
INSERT INTO `sys_job_log` VALUES ('1472769725690982402', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:24:00');
INSERT INTO `sys_job_log` VALUES ('1472769977361805314', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:25:00');
INSERT INTO `sys_job_log` VALUES ('1472770229028433922', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:26:00');
INSERT INTO `sys_job_log` VALUES ('1472770480678285313', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:27:00');
INSERT INTO `sys_job_log` VALUES ('1472770732340719618', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:28:00');
INSERT INTO `sys_job_log` VALUES ('1472770983994765313', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:29:00');
INSERT INTO `sys_job_log` VALUES ('1472771235640422401', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:30:00');
INSERT INTO `sys_job_log` VALUES ('1472771487311245313', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:31:00');
INSERT INTO `sys_job_log` VALUES ('1472771738982068225', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:32:00');
INSERT INTO `sys_job_log` VALUES ('1472771990623531009', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:33:00');
INSERT INTO `sys_job_log` VALUES ('1472772242281771009', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:34:00');
INSERT INTO `sys_job_log` VALUES ('1472772493940011009', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:35:00');
INSERT INTO `sys_job_log` VALUES ('1472772745602445314', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:36:00');
INSERT INTO `sys_job_log` VALUES ('1472772997260685314', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 11:37:00');
INSERT INTO `sys_job_log` VALUES ('1472773249069920257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:38:00');
INSERT INTO `sys_job_log` VALUES ('1472773500606525441', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:39:00');
INSERT INTO `sys_job_log` VALUES ('1472773752227016705', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:40:00');
INSERT INTO `sys_job_log` VALUES ('1472774255723847682', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:42:00');
INSERT INTO `sys_job_log` VALUES ('1472774507247869954', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:43:00');
INSERT INTO `sys_job_log` VALUES ('1472774758889332737', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:44:00');
INSERT INTO `sys_job_log` VALUES ('1472775010568544257', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:45:00');
INSERT INTO `sys_job_log` VALUES ('1472775262201618433', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:46:00');
INSERT INTO `sys_job_log` VALUES ('1472775513880829954', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:47:00');
INSERT INTO `sys_job_log` VALUES ('1472775765505515521', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:48:00');
INSERT INTO `sys_job_log` VALUES ('1472776017197309954', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:49:00');
INSERT INTO `sys_job_log` VALUES ('1472776268826189825', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:50:00');
INSERT INTO `sys_job_log` VALUES ('1472776520488624130', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:51:00');
INSERT INTO `sys_job_log` VALUES ('1472776772138475521', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:52:00');
INSERT INTO `sys_job_log` VALUES ('1472777023809298433', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:53:00');
INSERT INTO `sys_job_log` VALUES ('1472777275475927041', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 11:54:00');
INSERT INTO `sys_job_log` VALUES ('1472778282549362690', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:58:00');
INSERT INTO `sys_job_log` VALUES ('1472778533750423553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 11:59:00');
INSERT INTO `sys_job_log` VALUES ('1472778785417052161', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:00:00');
INSERT INTO `sys_job_log` VALUES ('1472779037083680769', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 12:01:00');
INSERT INTO `sys_job_log` VALUES ('1472779288737726466', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:02:00');
INSERT INTO `sys_job_log` VALUES ('1472779540408549378', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:03:00');
INSERT INTO `sys_job_log` VALUES ('1472779792070983681', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:04:00');
INSERT INTO `sys_job_log` VALUES ('1472780043720835073', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:05:00');
INSERT INTO `sys_job_log` VALUES ('1472780295387463682', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:06:00');
INSERT INTO `sys_job_log` VALUES ('1472780547024732161', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:07:00');
INSERT INTO `sys_job_log` VALUES ('1472780798682972161', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:08:00');
INSERT INTO `sys_job_log` VALUES ('1472781050337017857', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:09:00');
INSERT INTO `sys_job_log` VALUES ('1472781301995257857', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:10:00');
INSERT INTO `sys_job_log` VALUES ('1472781553661886465', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:11:00');
INSERT INTO `sys_job_log` VALUES ('1472781805324320770', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:12:00');
INSERT INTO `sys_job_log` VALUES ('1472782056982560769', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:13:00');
INSERT INTO `sys_job_log` VALUES ('1472782308632412161', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:14:00');
INSERT INTO `sys_job_log` VALUES ('1472782560286457858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:15:00');
INSERT INTO `sys_job_log` VALUES ('1472782811936309249', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:16:00');
INSERT INTO `sys_job_log` VALUES ('1472783063607132162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:17:00');
INSERT INTO `sys_job_log` VALUES ('1472783315273760769', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:18:00');
INSERT INTO `sys_job_log` VALUES ('1472783566923612162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:19:00');
INSERT INTO `sys_job_log` VALUES ('1472783818581852162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:20:00');
INSERT INTO `sys_job_log` VALUES ('1472784070248480769', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:21:00');
INSERT INTO `sys_job_log` VALUES ('1472784321906720769', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:22:00');
INSERT INTO `sys_job_log` VALUES ('1472784573556572162', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:23:00');
INSERT INTO `sys_job_log` VALUES ('1472784825223200770', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:24:00');
INSERT INTO `sys_job_log` VALUES ('1472785076873052162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:25:00');
INSERT INTO `sys_job_log` VALUES ('1472785328531292162', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:26:00');
INSERT INTO `sys_job_log` VALUES ('1472785580189532161', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:27:00');
INSERT INTO `sys_job_log` VALUES ('1472785831826800641', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:28:00');
INSERT INTO `sys_job_log` VALUES ('1472786083501817857', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:29:00');
INSERT INTO `sys_job_log` VALUES ('1472786335168446466', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:30:00');
INSERT INTO `sys_job_log` VALUES ('1472786586814103554', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 12:31:00');
INSERT INTO `sys_job_log` VALUES ('1472786838476537858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:32:00');
INSERT INTO `sys_job_log` VALUES ('1472787090138972162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:33:00');
INSERT INTO `sys_job_log` VALUES ('1472787341797212161', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:34:00');
INSERT INTO `sys_job_log` VALUES ('1472787593455452161', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:35:00');
INSERT INTO `sys_job_log` VALUES ('1472787845105303554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:36:00');
INSERT INTO `sys_job_log` VALUES ('1472788096759349250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:37:00');
INSERT INTO `sys_job_log` VALUES ('1472788348417589250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:38:00');
INSERT INTO `sys_job_log` VALUES ('1472788600063246337', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 12:39:00');
INSERT INTO `sys_job_log` VALUES ('1472788851750846466', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:40:00');
INSERT INTO `sys_job_log` VALUES ('1472789103383920642', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 12:41:00');
INSERT INTO `sys_job_log` VALUES ('1472789355058937858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:42:00');
INSERT INTO `sys_job_log` VALUES ('1472789606717177858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:43:00');
INSERT INTO `sys_job_log` VALUES ('1472789858375417857', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:44:00');
INSERT INTO `sys_job_log` VALUES ('1472790110033657858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:45:00');
INSERT INTO `sys_job_log` VALUES ('1472790361691897858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:46:00');
INSERT INTO `sys_job_log` VALUES ('1472790613341749249', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 12:47:00');
INSERT INTO `sys_job_log` VALUES ('1472790865012572162', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 12:48:00');
INSERT INTO `sys_job_log` VALUES ('1472791116666617858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:49:00');
INSERT INTO `sys_job_log` VALUES ('1472791368320663553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:50:00');
INSERT INTO `sys_job_log` VALUES ('1472791619978903554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:51:00');
INSERT INTO `sys_job_log` VALUES ('1472791871641337858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:52:00');
INSERT INTO `sys_job_log` VALUES ('1472792123295383553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:53:00');
INSERT INTO `sys_job_log` VALUES ('1472792374953623554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:54:00');
INSERT INTO `sys_job_log` VALUES ('1472792626611863553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:55:00');
INSERT INTO `sys_job_log` VALUES ('1472792878265909250', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 12:56:00');
INSERT INTO `sys_job_log` VALUES ('1472793129928343554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:57:00');
INSERT INTO `sys_job_log` VALUES ('1472793381586583553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:58:00');
INSERT INTO `sys_job_log` VALUES ('1472793633236434945', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 12:59:00');
INSERT INTO `sys_job_log` VALUES ('1472793884898869250', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:00:00');
INSERT INTO `sys_job_log` VALUES ('1472794136552914946', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:01:00');
INSERT INTO `sys_job_log` VALUES ('1472794388232126466', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:02:00');
INSERT INTO `sys_job_log` VALUES ('1472794639877783553', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:03:00');
INSERT INTO `sys_job_log` VALUES ('1472794891540217858', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:04:00');
INSERT INTO `sys_job_log` VALUES ('1472795143194263554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:05:00');
INSERT INTO `sys_job_log` VALUES ('1472795394852503554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:06:00');
INSERT INTO `sys_job_log` VALUES ('1472795646510743554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:07:00');
INSERT INTO `sys_job_log` VALUES ('1472795898168983554', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:08:00');
INSERT INTO `sys_job_log` VALUES ('1472796149818834946', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:09:00');
INSERT INTO `sys_job_log` VALUES ('1472796401485463554', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:10:00');
INSERT INTO `sys_job_log` VALUES ('1472796653147897858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:11:00');
INSERT INTO `sys_job_log` VALUES ('1472796904797749250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:12:00');
INSERT INTO `sys_job_log` VALUES ('1472797156460183554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:13:00');
INSERT INTO `sys_job_log` VALUES ('1472797408114229250', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:14:00');
INSERT INTO `sys_job_log` VALUES ('1472797659772469250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:15:00');
INSERT INTO `sys_job_log` VALUES ('1472797911443292162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:16:00');
INSERT INTO `sys_job_log` VALUES ('1472798163093143554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:17:00');
INSERT INTO `sys_job_log` VALUES ('1472798414751383554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:18:00');
INSERT INTO `sys_job_log` VALUES ('1472798666409623554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:19:00');
INSERT INTO `sys_job_log` VALUES ('1472798918063669250', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:20:00');
INSERT INTO `sys_job_log` VALUES ('1472799169721909250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:21:00');
INSERT INTO `sys_job_log` VALUES ('1472799421384343554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:22:00');
INSERT INTO `sys_job_log` VALUES ('1472799673034194945', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:23:00');
INSERT INTO `sys_job_log` VALUES ('1472799924696629250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:24:00');
INSERT INTO `sys_job_log` VALUES ('1472800176359063553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:25:00');
INSERT INTO `sys_job_log` VALUES ('1472800428017303554', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:26:00');
INSERT INTO `sys_job_log` VALUES ('1472800679671349249', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:27:00');
INSERT INTO `sys_job_log` VALUES ('1472800931333783553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:28:00');
INSERT INTO `sys_job_log` VALUES ('1472801182992023553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:29:00');
INSERT INTO `sys_job_log` VALUES ('1472801434646069250', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:30:00');
INSERT INTO `sys_job_log` VALUES ('1472801686304309249', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:31:00');
INSERT INTO `sys_job_log` VALUES ('1472801937966743554', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:32:00');
INSERT INTO `sys_job_log` VALUES ('1472802189624983554', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:33:00');
INSERT INTO `sys_job_log` VALUES ('1472802441279029249', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:34:00');
INSERT INTO `sys_job_log` VALUES ('1472802692941463553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:35:00');
INSERT INTO `sys_job_log` VALUES ('1472802944591314946', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:36:00');
INSERT INTO `sys_job_log` VALUES ('1472803196266332162', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:37:00');
INSERT INTO `sys_job_log` VALUES ('1472803447903600642', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:38:00');
INSERT INTO `sys_job_log` VALUES ('1472803699570229250', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:39:00');
INSERT INTO `sys_job_log` VALUES ('1472803951232663553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:40:00');
INSERT INTO `sys_job_log` VALUES ('1472804202890903554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:41:00');
INSERT INTO `sys_job_log` VALUES ('1472804454553337858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:42:00');
INSERT INTO `sys_job_log` VALUES ('1472804706207383553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:43:00');
INSERT INTO `sys_job_log` VALUES ('1472804957874012162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:44:00');
INSERT INTO `sys_job_log` VALUES ('1472805209523863554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:45:00');
INSERT INTO `sys_job_log` VALUES ('1472805461194686466', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:46:00');
INSERT INTO `sys_job_log` VALUES ('1472805712836149249', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:47:00');
INSERT INTO `sys_job_log` VALUES ('1472805964498583554', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:48:00');
INSERT INTO `sys_job_log` VALUES ('1472806216152629249', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:49:00');
INSERT INTO `sys_job_log` VALUES ('1472806467815063553', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:50:00');
INSERT INTO `sys_job_log` VALUES ('1472806719473303554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:51:00');
INSERT INTO `sys_job_log` VALUES ('1472806971131543553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:52:00');
INSERT INTO `sys_job_log` VALUES ('1472807222781394946', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:53:00');
INSERT INTO `sys_job_log` VALUES ('1472807474452217857', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:54:00');
INSERT INTO `sys_job_log` VALUES ('1472807726085292033', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:55:00');
INSERT INTO `sys_job_log` VALUES ('1472807977764503554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 13:56:00');
INSERT INTO `sys_job_log` VALUES ('1472808229422743554', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:57:00');
INSERT INTO `sys_job_log` VALUES ('1472808481072594946', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 13:58:00');
INSERT INTO `sys_job_log` VALUES ('1472808732739223554', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 13:59:00');
INSERT INTO `sys_job_log` VALUES ('1472808984414240770', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:00:00');
INSERT INTO `sys_job_log` VALUES ('1472809236055703554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:01:00');
INSERT INTO `sys_job_log` VALUES ('1472809487713943553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:02:00');
INSERT INTO `sys_job_log` VALUES ('1472809739397349378', '1252884495040782337', 'testTask', '1', '0', null, '5', '2021-12-20 14:03:00');
INSERT INTO `sys_job_log` VALUES ('1472809991034617858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:04:00');
INSERT INTO `sys_job_log` VALUES ('1472810242688663553', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-20 14:05:00');
INSERT INTO `sys_job_log` VALUES ('1472810494359486466', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:06:00');
INSERT INTO `sys_job_log` VALUES ('1472810745996754946', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:07:00');
INSERT INTO `sys_job_log` VALUES ('1472810997663383553', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:08:00');
INSERT INTO `sys_job_log` VALUES ('1472811249317429249', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:09:00');
INSERT INTO `sys_job_log` VALUES ('1472811500984057858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-20 14:10:00');
INSERT INTO `sys_job_log` VALUES ('1472811752633909249', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-20 14:11:00');
INSERT INTO `sys_job_log` VALUES ('1473200564803420161', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 15:56:00');
INSERT INTO `sys_job_log` VALUES ('1473200816268722178', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 15:57:00');
INSERT INTO `sys_job_log` VALUES ('1473201067914379266', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 15:58:00');
INSERT INTO `sys_job_log` VALUES ('1473201319589396481', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 15:59:00');
INSERT INTO `sys_job_log` VALUES ('1473201571272802306', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:00:00');
INSERT INTO `sys_job_log` VALUES ('1473201822910070786', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:01:00');
INSERT INTO `sys_job_log` VALUES ('1473202074551533569', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:02:00');
INSERT INTO `sys_job_log` VALUES ('1473202326201384961', '1252884495040782337', 'testTask', '1', '0', null, '3', '2021-12-21 16:03:00');
INSERT INTO `sys_job_log` VALUES ('1473202577868013569', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:04:00');
INSERT INTO `sys_job_log` VALUES ('1473202829530447874', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:05:00');
INSERT INTO `sys_job_log` VALUES ('1473203081180299265', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:06:00');
INSERT INTO `sys_job_log` VALUES ('1473203332846927873', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:07:00');
INSERT INTO `sys_job_log` VALUES ('1473203584513556482', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 16:08:00');
INSERT INTO `sys_job_log` VALUES ('1473203836155019265', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:09:00');
INSERT INTO `sys_job_log` VALUES ('1473204087817453570', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:10:00');
INSERT INTO `sys_job_log` VALUES ('1473204339475693570', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:11:00');
INSERT INTO `sys_job_log` VALUES ('1473204591138127873', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:12:00');
INSERT INTO `sys_job_log` VALUES ('1473204842792173570', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:13:00');
INSERT INTO `sys_job_log` VALUES ('1473205094450413570', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 16:14:00');
INSERT INTO `sys_job_log` VALUES ('1473205346117042178', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:15:00');
INSERT INTO `sys_job_log` VALUES ('1473205597771087873', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:16:00');
INSERT INTO `sys_job_log` VALUES ('1473206352989052929', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:19:00');
INSERT INTO `sys_job_log` VALUES ('1473206604404023298', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:20:00');
INSERT INTO `sys_job_log` VALUES ('1473206856053874689', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:21:00');
INSERT INTO `sys_job_log` VALUES ('1473207107737280514', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:22:00');
INSERT INTO `sys_job_log` VALUES ('1473207359378743297', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:23:00');
INSERT INTO `sys_job_log` VALUES ('1473207611036983297', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:24:00');
INSERT INTO `sys_job_log` VALUES ('1473207862695223298', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:25:00');
INSERT INTO `sys_job_log` VALUES ('1473208114387017730', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:26:00');
INSERT INTO `sys_job_log` VALUES ('1473208366015897601', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:27:00');
INSERT INTO `sys_job_log` VALUES ('1473208617674137602', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:28:00');
INSERT INTO `sys_job_log` VALUES ('1473208869328183297', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:29:00');
INSERT INTO `sys_job_log` VALUES ('1473209121166815234', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:30:00');
INSERT INTO `sys_job_log` VALUES ('1473209372640505858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:31:00');
INSERT INTO `sys_job_log` VALUES ('1473209624344883202', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 16:32:00');
INSERT INTO `sys_job_log` VALUES ('1473209875956985858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:33:00');
INSERT INTO `sys_job_log` VALUES ('1473210127623614466', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:34:00');
INSERT INTO `sys_job_log` VALUES ('1473210379273465858', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:35:00');
INSERT INTO `sys_job_log` VALUES ('1473210630935900162', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 16:36:00');
INSERT INTO `sys_job_log` VALUES ('1473210882589945857', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:37:00');
INSERT INTO `sys_job_log` VALUES ('1473211134252380162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:38:00');
INSERT INTO `sys_job_log` VALUES ('1473211385910620162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:39:00');
INSERT INTO `sys_job_log` VALUES ('1473211637560471553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:40:00');
INSERT INTO `sys_job_log` VALUES ('1473211889222905857', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:41:00');
INSERT INTO `sys_job_log` VALUES ('1473212140881145858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:42:00');
INSERT INTO `sys_job_log` VALUES ('1473212392543580161', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:43:00');
INSERT INTO `sys_job_log` VALUES ('1473212644206014466', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:44:00');
INSERT INTO `sys_job_log` VALUES ('1473212895860060161', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:45:00');
INSERT INTO `sys_job_log` VALUES ('1473213147514105857', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:46:00');
INSERT INTO `sys_job_log` VALUES ('1473213399193317378', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 16:47:00');
INSERT INTO `sys_job_log` VALUES ('1473213650826391553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:48:00');
INSERT INTO `sys_job_log` VALUES ('1473213902501408769', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 16:49:00');
INSERT INTO `sys_job_log` VALUES ('1473214406015053825', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:51:00');
INSERT INTO `sys_job_log` VALUES ('1473214657471967233', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:52:00');
INSERT INTO `sys_job_log` VALUES ('1473214909117624322', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:53:00');
INSERT INTO `sys_job_log` VALUES ('1473215160796835841', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:54:00');
INSERT INTO `sys_job_log` VALUES ('1473215412438298625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:55:00');
INSERT INTO `sys_job_log` VALUES ('1473215664134287361', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:56:00');
INSERT INTO `sys_job_log` VALUES ('1473215915754778626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 16:57:00');
INSERT INTO `sys_job_log` VALUES ('1473216167425601537', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:58:00');
INSERT INTO `sys_job_log` VALUES ('1473216419071258626', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 16:59:00');
INSERT INTO `sys_job_log` VALUES ('1473216670725304322', '1252884495040782337', 'testTask', '1', '0', null, '3', '2021-12-21 17:00:00');
INSERT INTO `sys_job_log` VALUES ('1473216922383544322', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:01:00');
INSERT INTO `sys_job_log` VALUES ('1473217174054367234', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:02:00');
INSERT INTO `sys_job_log` VALUES ('1473217425712607233', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:03:00');
INSERT INTO `sys_job_log` VALUES ('1473217677370847234', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 17:04:00');
INSERT INTO `sys_job_log` VALUES ('1473218180880199682', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:06:00');
INSERT INTO `sys_job_log` VALUES ('1473218432341307393', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:07:00');
INSERT INTO `sys_job_log` VALUES ('1473218683995353089', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:08:00');
INSERT INTO `sys_job_log` VALUES ('1473218935661981698', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:09:00');
INSERT INTO `sys_job_log` VALUES ('1473219187311833090', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:10:00');
INSERT INTO `sys_job_log` VALUES ('1473220194414493697', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 17:14:00');
INSERT INTO `sys_job_log` VALUES ('1473220445699440641', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:15:00');
INSERT INTO `sys_job_log` VALUES ('1473220697273794562', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:16:00');
INSERT INTO `sys_job_log` VALUES ('1473220949007532034', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:17:00');
INSERT INTO `sys_job_log` VALUES ('1473221200967839746', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 17:18:00');
INSERT INTO `sys_job_log` VALUES ('1473221452240203778', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:19:00');
INSERT INTO `sys_job_log` VALUES ('1473221703890055170', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:20:00');
INSERT INTO `sys_job_log` VALUES ('1473221955577655298', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 17:21:00');
INSERT INTO `sys_job_log` VALUES ('1473222207223312386', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:22:00');
INSERT INTO `sys_job_log` VALUES ('1473222458868969474', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:23:00');
INSERT INTO `sys_job_log` VALUES ('1473222710527209474', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:24:00');
INSERT INTO `sys_job_log` VALUES ('1473222962185449473', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:25:00');
INSERT INTO `sys_job_log` VALUES ('1473223213839495169', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 17:26:00');
INSERT INTO `sys_job_log` VALUES ('1473223465686433793', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:27:00');
INSERT INTO `sys_job_log` VALUES ('1473223717164318722', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:28:00');
INSERT INTO `sys_job_log` VALUES ('1473223968818364418', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:29:00');
INSERT INTO `sys_job_log` VALUES ('1473224230756921346', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:30:02');
INSERT INTO `sys_job_log` VALUES ('1473224472134922242', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:31:00');
INSERT INTO `sys_job_log` VALUES ('1473224723793162241', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:32:00');
INSERT INTO `sys_job_log` VALUES ('1473224975459790849', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 17:33:00');
INSERT INTO `sys_job_log` VALUES ('1473225227105447937', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 17:34:00');
INSERT INTO `sys_job_log` VALUES ('1473239823342043138', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:32:00');
INSERT INTO `sys_job_log` VALUES ('1473240074962534402', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:33:00');
INSERT INTO `sys_job_log` VALUES ('1473240326599802882', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:34:00');
INSERT INTO `sys_job_log` VALUES ('1473240578266431489', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:35:00');
INSERT INTO `sys_job_log` VALUES ('1473240829920477185', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:36:00');
INSERT INTO `sys_job_log` VALUES ('1473241081578717186', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:37:00');
INSERT INTO `sys_job_log` VALUES ('1473241333241151490', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:38:00');
INSERT INTO `sys_job_log` VALUES ('1473241584911974401', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:39:00');
INSERT INTO `sys_job_log` VALUES ('1473241836553437185', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:40:00');
INSERT INTO `sys_job_log` VALUES ('1473242088224260097', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:41:00');
INSERT INTO `sys_job_log` VALUES ('1473242339979030530', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:42:00');
INSERT INTO `sys_job_log` VALUES ('1473242591544995841', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:43:00');
INSERT INTO `sys_job_log` VALUES ('1473242843186458626', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:44:00');
INSERT INTO `sys_job_log` VALUES ('1473243094844698625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:45:00');
INSERT INTO `sys_job_log` VALUES ('1473243346507132930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:46:00');
INSERT INTO `sys_job_log` VALUES ('1473243598165372930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:47:00');
INSERT INTO `sys_job_log` VALUES ('1473243849819418625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:48:00');
INSERT INTO `sys_job_log` VALUES ('1473244101477658626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:49:00');
INSERT INTO `sys_job_log` VALUES ('1473244353131704322', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:50:00');
INSERT INTO `sys_job_log` VALUES ('1473244604924096514', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:51:00');
INSERT INTO `sys_job_log` VALUES ('1473244856456507394', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:52:00');
INSERT INTO `sys_job_log` VALUES ('1473245108110553089', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:53:00');
INSERT INTO `sys_job_log` VALUES ('1473245359768793089', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:54:00');
INSERT INTO `sys_job_log` VALUES ('1473245863211134977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 18:56:00');
INSERT INTO `sys_job_log` VALUES ('1473246114743545858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:57:00');
INSERT INTO `sys_job_log` VALUES ('1473246366397591554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 18:58:00');
INSERT INTO `sys_job_log` VALUES ('1473246618076803073', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 18:59:00');
INSERT INTO `sys_job_log` VALUES ('1473246869722460162', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:00:00');
INSERT INTO `sys_job_log` VALUES ('1473247121372311553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:01:00');
INSERT INTO `sys_job_log` VALUES ('1473247373030551553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:02:00');
INSERT INTO `sys_job_log` VALUES ('1473247624692985858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:03:00');
INSERT INTO `sys_job_log` VALUES ('1473247876351225857', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:04:00');
INSERT INTO `sys_job_log` VALUES ('1473248128005271553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:05:00');
INSERT INTO `sys_job_log` VALUES ('1473248631346888706', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:07:00');
INSERT INTO `sys_job_log` VALUES ('1473248882984157186', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:08:00');
INSERT INTO `sys_job_log` VALUES ('1473249134642397185', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:09:00');
INSERT INTO `sys_job_log` VALUES ('1473249638034391041', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:11:00');
INSERT INTO `sys_job_log` VALUES ('1473249889612939265', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:12:00');
INSERT INTO `sys_job_log` VALUES ('1473250141275373570', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:13:00');
INSERT INTO `sys_job_log` VALUES ('1473250392929419266', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:14:00');
INSERT INTO `sys_job_log` VALUES ('1473250644772130817', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:15:00');
INSERT INTO `sys_job_log` VALUES ('1473250896254210049', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:16:00');
INSERT INTO `sys_job_log` VALUES ('1473251147904061442', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:17:00');
INSERT INTO `sys_job_log` VALUES ('1473251399570690049', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:18:00');
INSERT INTO `sys_job_log` VALUES ('1473251651237318657', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:19:00');
INSERT INTO `sys_job_log` VALUES ('1473251902882975745', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:20:00');
INSERT INTO `sys_job_log` VALUES ('1473252154545410050', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:21:00');
INSERT INTO `sys_job_log` VALUES ('1473252406199455745', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:22:00');
INSERT INTO `sys_job_log` VALUES ('1473252657861890049', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:23:00');
INSERT INTO `sys_job_log` VALUES ('1473252909549490177', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:24:00');
INSERT INTO `sys_job_log` VALUES ('1473253161178370049', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:25:00');
INSERT INTO `sys_job_log` VALUES ('1473253412832415745', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:26:00');
INSERT INTO `sys_job_log` VALUES ('1473253664494850049', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:27:00');
INSERT INTO `sys_job_log` VALUES ('1473253916157284353', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:28:00');
INSERT INTO `sys_job_log` VALUES ('1473254167802941442', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:29:00');
INSERT INTO `sys_job_log` VALUES ('1473254419582939137', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:30:00');
INSERT INTO `sys_job_log` VALUES ('1473254671148904450', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:31:00');
INSERT INTO `sys_job_log` VALUES ('1473254922781978625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:32:00');
INSERT INTO `sys_job_log` VALUES ('1473255174440218626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:33:00');
INSERT INTO `sys_job_log` VALUES ('1473255426094264321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:34:00');
INSERT INTO `sys_job_log` VALUES ('1473255677811163137', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:35:00');
INSERT INTO `sys_job_log` VALUES ('1473255929448431618', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 19:36:00');
INSERT INTO `sys_job_log` VALUES ('1473256181073117186', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:37:00');
INSERT INTO `sys_job_log` VALUES ('1473256432857128961', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:38:00');
INSERT INTO `sys_job_log` VALUES ('1473256684444065794', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:39:00');
INSERT INTO `sys_job_log` VALUES ('1473256936052043777', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:40:00');
INSERT INTO `sys_job_log` VALUES ('1473257187760615425', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:41:00');
INSERT INTO `sys_job_log` VALUES ('1473257439364329473', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:42:00');
INSERT INTO `sys_job_log` VALUES ('1473257691026763777', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:43:00');
INSERT INTO `sys_job_log` VALUES ('1473257942760546305', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:44:00');
INSERT INTO `sys_job_log` VALUES ('1473258194339094529', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:45:00');
INSERT INTO `sys_job_log` VALUES ('1473258697722626050', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:47:00');
INSERT INTO `sys_job_log` VALUES ('1473258949309562881', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:48:00');
INSERT INTO `sys_job_log` VALUES ('1473259200971997186', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 19:49:00');
INSERT INTO `sys_job_log` VALUES ('1473259452630237185', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:50:00');
INSERT INTO `sys_job_log` VALUES ('1473259704296865794', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:51:00');
INSERT INTO `sys_job_log` VALUES ('1473259955950911489', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:52:00');
INSERT INTO `sys_job_log` VALUES ('1473260459321958402', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:54:00');
INSERT INTO `sys_job_log` VALUES ('1473260710921478145', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:55:00');
INSERT INTO `sys_job_log` VALUES ('1473260962583912449', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 19:56:00');
INSERT INTO `sys_job_log` VALUES ('1473261466034626561', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 19:58:00');
INSERT INTO `sys_job_log` VALUES ('1473261717558648834', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 19:59:00');
INSERT INTO `sys_job_log` VALUES ('1473261969212694529', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:00:00');
INSERT INTO `sys_job_log` VALUES ('1473262220870934530', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:01:00');
INSERT INTO `sys_job_log` VALUES ('1473262472529174530', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:02:00');
INSERT INTO `sys_job_log` VALUES ('1473262724183220226', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:03:00');
INSERT INTO `sys_job_log` VALUES ('1473262975904325634', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:04:00');
INSERT INTO `sys_job_log` VALUES ('1473263227503845377', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:05:00');
INSERT INTO `sys_job_log` VALUES ('1473263479208275969', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:06:00');
INSERT INTO `sys_job_log` VALUES ('1473263730820378626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:07:00');
INSERT INTO `sys_job_log` VALUES ('1473263982487007234', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:08:00');
INSERT INTO `sys_job_log` VALUES ('1473264234132664321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:09:00');
INSERT INTO `sys_job_log` VALUES ('1473264485853696002', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:10:00');
INSERT INTO `sys_job_log` VALUES ('1473264737453215746', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:11:00');
INSERT INTO `sys_job_log` VALUES ('1473264989111455745', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:12:00');
INSERT INTO `sys_job_log` VALUES ('1473265240765501441', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:13:00');
INSERT INTO `sys_job_log` VALUES ('1473265492423741441', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:14:00');
INSERT INTO `sys_job_log` VALUES ('1473265744237244418', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:15:00');
INSERT INTO `sys_job_log` VALUES ('1473265995740295169', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:16:00');
INSERT INTO `sys_job_log` VALUES ('1473266247402729474', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:17:00');
INSERT INTO `sys_job_log` VALUES ('1473266499060969474', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:18:00');
INSERT INTO `sys_job_log` VALUES ('1473266750723403778', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:19:00');
INSERT INTO `sys_job_log` VALUES ('1473267002557734913', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:20:00');
INSERT INTO `sys_job_log` VALUES ('1473267254039814145', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:21:00');
INSERT INTO `sys_job_log` VALUES ('1473267505689665537', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:22:00');
INSERT INTO `sys_job_log` VALUES ('1473267757352099842', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:23:00');
INSERT INTO `sys_job_log` VALUES ('1473268260756721666', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:25:00');
INSERT INTO `sys_job_log` VALUES ('1473268512385601538', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:26:00');
INSERT INTO `sys_job_log` VALUES ('1473268763985121282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:27:00');
INSERT INTO `sys_job_log` VALUES ('1473269015706333185', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:28:00');
INSERT INTO `sys_job_log` VALUES ('1473269267297464321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:29:00');
INSERT INTO `sys_job_log` VALUES ('1473269518955704322', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:30:00');
INSERT INTO `sys_job_log` VALUES ('1473269770613944321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:31:00');
INSERT INTO `sys_job_log` VALUES ('1473270022276378626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:32:00');
INSERT INTO `sys_job_log` VALUES ('1473270273938812930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:33:00');
INSERT INTO `sys_job_log` VALUES ('1473270525592858625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:34:00');
INSERT INTO `sys_job_log` VALUES ('1473270777255292930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:35:00');
INSERT INTO `sys_job_log` VALUES ('1473271028917727233', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:36:00');
INSERT INTO `sys_job_log` VALUES ('1473271280571772930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:37:00');
INSERT INTO `sys_job_log` VALUES ('1473272287426904065', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:41:00');
INSERT INTO `sys_job_log` VALUES ('1473272538867040258', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:42:00');
INSERT INTO `sys_job_log` VALUES ('1473272790521085954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:43:00');
INSERT INTO `sys_job_log` VALUES ('1473273042175131650', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:44:00');
INSERT INTO `sys_job_log` VALUES ('1473273293892091905', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:45:00');
INSERT INTO `sys_job_log` VALUES ('1473273545491611649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:46:00');
INSERT INTO `sys_job_log` VALUES ('1473273797149851649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:47:00');
INSERT INTO `sys_job_log` VALUES ('1473274048808091649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:48:00');
INSERT INTO `sys_job_log` VALUES ('1473274300483108866', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:49:00');
INSERT INTO `sys_job_log` VALUES ('1473274552128765953', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:50:00');
INSERT INTO `sys_job_log` VALUES ('1473274803782811650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:51:00');
INSERT INTO `sys_job_log` VALUES ('1473275055436857345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:52:00');
INSERT INTO `sys_job_log` VALUES ('1473275307099291649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:53:00');
INSERT INTO `sys_job_log` VALUES ('1473275558753337346', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:54:00');
INSERT INTO `sys_job_log` VALUES ('1473275810512326658', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:55:00');
INSERT INTO `sys_job_log` VALUES ('1473276062069903362', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:56:00');
INSERT INTO `sys_job_log` VALUES ('1473276313736531969', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:57:00');
INSERT INTO `sys_job_log` VALUES ('1473276565537382402', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 20:58:00');
INSERT INTO `sys_job_log` VALUES ('1473276817048821762', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 20:59:00');
INSERT INTO `sys_job_log` VALUES ('1473277068707061762', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:00:00');
INSERT INTO `sys_job_log` VALUES ('1473277320361107457', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:01:00');
INSERT INTO `sys_job_log` VALUES ('1473277572027736066', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:02:00');
INSERT INTO `sys_job_log` VALUES ('1473277823694364674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:03:00');
INSERT INTO `sys_job_log` VALUES ('1473278075344216065', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:04:00');
INSERT INTO `sys_job_log` VALUES ('1473278326998261762', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:05:00');
INSERT INTO `sys_job_log` VALUES ('1473278578656501762', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:06:00');
INSERT INTO `sys_job_log` VALUES ('1473278830314741762', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 21:07:00');
INSERT INTO `sys_job_log` VALUES ('1473279082090340353', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:08:00');
INSERT INTO `sys_job_log` VALUES ('1473279333681573890', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:09:00');
INSERT INTO `sys_job_log` VALUES ('1473279585297870849', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:10:00');
INSERT INTO `sys_job_log` VALUES ('1473279836947722241', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:11:00');
INSERT INTO `sys_job_log` VALUES ('1473280088677236738', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:12:00');
INSERT INTO `sys_job_log` VALUES ('1473280340419354625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:13:00');
INSERT INTO `sys_job_log` VALUES ('1473280591926599681', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:14:00');
INSERT INTO `sys_job_log` VALUES ('1473280843580645377', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:15:00');
INSERT INTO `sys_job_log` VALUES ('1473281095276687361', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:16:00');
INSERT INTO `sys_job_log` VALUES ('1473281346897178625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:17:00');
INSERT INTO `sys_job_log` VALUES ('1473281598555418625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:18:00');
INSERT INTO `sys_job_log` VALUES ('1473281850213658626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:19:00');
INSERT INTO `sys_job_log` VALUES ('1473282101880287233', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:20:00');
INSERT INTO `sys_job_log` VALUES ('1473282353530138625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:21:00');
INSERT INTO `sys_job_log` VALUES ('1473282605188378625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:22:00');
INSERT INTO `sys_job_log` VALUES ('1473282856846618625', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:23:00');
INSERT INTO `sys_job_log` VALUES ('1473283108504858625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:24:00');
INSERT INTO `sys_job_log` VALUES ('1473283360154710018', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:25:00');
INSERT INTO `sys_job_log` VALUES ('1473283611833921537', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:26:00');
INSERT INTO `sys_job_log` VALUES ('1473283863471190017', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:27:00');
INSERT INTO `sys_job_log` VALUES ('1473284115142012929', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:28:00');
INSERT INTO `sys_job_log` VALUES ('1473284366846390274', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:29:00');
INSERT INTO `sys_job_log` VALUES ('1473284618454298626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:30:00');
INSERT INTO `sys_job_log` VALUES ('1473284870112538626', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:31:00');
INSERT INTO `sys_job_log` VALUES ('1473285121770778626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:32:00');
INSERT INTO `sys_job_log` VALUES ('1473285373420630018', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:33:00');
INSERT INTO `sys_job_log` VALUES ('1473285625091452930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:34:00');
INSERT INTO `sys_job_log` VALUES ('1473285876737110018', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:35:00');
INSERT INTO `sys_job_log` VALUES ('1473286128412127234', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:36:00');
INSERT INTO `sys_job_log` VALUES ('1473286380057784321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:37:00');
INSERT INTO `sys_job_log` VALUES ('1473286631736995842', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:38:00');
INSERT INTO `sys_job_log` VALUES ('1473286883382652930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:39:00');
INSERT INTO `sys_job_log` VALUES ('1473287135032504322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:40:00');
INSERT INTO `sys_job_log` VALUES ('1473287386690744322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:41:00');
INSERT INTO `sys_job_log` VALUES ('1473287638348984321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:42:00');
INSERT INTO `sys_job_log` VALUES ('1473287890007224322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:43:00');
INSERT INTO `sys_job_log` VALUES ('1473288141665464322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:44:00');
INSERT INTO `sys_job_log` VALUES ('1473288393315315714', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:45:00');
INSERT INTO `sys_job_log` VALUES ('1473288644990332929', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:46:00');
INSERT INTO `sys_job_log` VALUES ('1473288896698904577', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:47:00');
INSERT INTO `sys_job_log` VALUES ('1473289148298424321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:48:00');
INSERT INTO `sys_job_log` VALUES ('1473289399960858626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:49:00');
INSERT INTO `sys_job_log` VALUES ('1473289651623292929', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:50:00');
INSERT INTO `sys_job_log` VALUES ('1473289903273144322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:51:00');
INSERT INTO `sys_job_log` VALUES ('1473290154939772930', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:52:00');
INSERT INTO `sys_job_log` VALUES ('1473290406593818625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:53:00');
INSERT INTO `sys_job_log` VALUES ('1473290658252058626', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-21 21:54:00');
INSERT INTO `sys_job_log` VALUES ('1473290909906104322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:55:00');
INSERT INTO `sys_job_log` VALUES ('1473291161564344322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:56:00');
INSERT INTO `sys_job_log` VALUES ('1473291413222584321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:57:00');
INSERT INTO `sys_job_log` VALUES ('1473291664876630018', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 21:58:00');
INSERT INTO `sys_job_log` VALUES ('1473291916543258626', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 21:59:00');
INSERT INTO `sys_job_log` VALUES ('1473292168201498626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:00:00');
INSERT INTO `sys_job_log` VALUES ('1473292419855544322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:01:00');
INSERT INTO `sys_job_log` VALUES ('1473292671509590017', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:02:00');
INSERT INTO `sys_job_log` VALUES ('1473292923176218626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:03:00');
INSERT INTO `sys_job_log` VALUES ('1473293174834458625', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:04:00');
INSERT INTO `sys_job_log` VALUES ('1473293426492698625', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:05:00');
INSERT INTO `sys_job_log` VALUES ('1473293678159327233', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:06:00');
INSERT INTO `sys_job_log` VALUES ('1473293929804984321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:07:00');
INSERT INTO `sys_job_log` VALUES ('1473294181463224322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:08:00');
INSERT INTO `sys_job_log` VALUES ('1473294433121464322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:09:00');
INSERT INTO `sys_job_log` VALUES ('1473294684788092929', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:10:00');
INSERT INTO `sys_job_log` VALUES ('1473294936471498754', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:11:00');
INSERT INTO `sys_job_log` VALUES ('1473295188100378626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:12:00');
INSERT INTO `sys_job_log` VALUES ('1473295439758618626', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:13:00');
INSERT INTO `sys_job_log` VALUES ('1473295691416858625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:14:00');
INSERT INTO `sys_job_log` VALUES ('1473296194796183554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:16:00');
INSERT INTO `sys_job_log` VALUES ('1473296446387314689', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:17:00');
INSERT INTO `sys_job_log` VALUES ('1473296698049748994', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:18:00');
INSERT INTO `sys_job_log` VALUES ('1473296949707988993', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:19:00');
INSERT INTO `sys_job_log` VALUES ('1473297201370423298', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:20:00');
INSERT INTO `sys_job_log` VALUES ('1473297453141929986', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:21:00');
INSERT INTO `sys_job_log` VALUES ('1473297704741449730', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:22:00');
INSERT INTO `sys_job_log` VALUES ('1473297956370329602', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:23:00');
INSERT INTO `sys_job_log` VALUES ('1473298207999209473', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:24:00');
INSERT INTO `sys_job_log` VALUES ('1473298459653255170', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:25:00');
INSERT INTO `sys_job_log` VALUES ('1473298711315689473', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:26:00');
INSERT INTO `sys_job_log` VALUES ('1473298962978123778', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:27:00');
INSERT INTO `sys_job_log` VALUES ('1473299214632169473', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:28:00');
INSERT INTO `sys_job_log` VALUES ('1473299466344902658', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:29:00');
INSERT INTO `sys_job_log` VALUES ('1473299717944422401', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:30:00');
INSERT INTO `sys_job_log` VALUES ('1473299969606856705', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:31:00');
INSERT INTO `sys_job_log` VALUES ('1473300221265096705', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:32:00');
INSERT INTO `sys_job_log` VALUES ('1473300472919142402', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:33:00');
INSERT INTO `sys_job_log` VALUES ('1473300724581576705', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:34:00');
INSERT INTO `sys_job_log` VALUES ('1473300976244011010', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:35:00');
INSERT INTO `sys_job_log` VALUES ('1473301227898056706', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:36:00');
INSERT INTO `sys_job_log` VALUES ('1473301479552102402', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:37:00');
INSERT INTO `sys_job_log` VALUES ('1473301731218731010', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:38:00');
INSERT INTO `sys_job_log` VALUES ('1473301982876971010', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:39:00');
INSERT INTO `sys_job_log` VALUES ('1473302234531016705', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:40:00');
INSERT INTO `sys_job_log` VALUES ('1473302486189256706', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:41:00');
INSERT INTO `sys_job_log` VALUES ('1473302737876856833', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-21 22:42:00');
INSERT INTO `sys_job_log` VALUES ('1473302989505736705', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:43:00');
INSERT INTO `sys_job_log` VALUES ('1473303241163976706', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-21 22:44:00');
INSERT INTO `sys_job_log` VALUES ('1473462289280778241', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:16:00');
INSERT INTO `sys_job_log` VALUES ('1473462540829966338', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:17:00');
INSERT INTO `sys_job_log` VALUES ('1473462792500789250', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:18:00');
INSERT INTO `sys_job_log` VALUES ('1473463044146446338', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:19:00');
INSERT INTO `sys_job_log` VALUES ('1473463295800492033', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:20:00');
INSERT INTO `sys_job_log` VALUES ('1473464805917691906', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:26:00');
INSERT INTO `sys_job_log` VALUES ('1473465057412354050', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:27:00');
INSERT INTO `sys_job_log` VALUES ('1473465309133475841', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:28:00');
INSERT INTO `sys_job_log` VALUES ('1473465560724606978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:29:00');
INSERT INTO `sys_job_log` VALUES ('1473465812387041281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:30:00');
INSERT INTO `sys_job_log` VALUES ('1473466064041086977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:31:00');
INSERT INTO `sys_job_log` VALUES ('1473466315703521281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:32:00');
INSERT INTO `sys_job_log` VALUES ('1473466819166826497', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:34:00');
INSERT INTO `sys_job_log` VALUES ('1473467070678265857', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:35:00');
INSERT INTO `sys_job_log` VALUES ('1473467322336505857', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:36:00');
INSERT INTO `sys_job_log` VALUES ('1473467573994745858', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:37:00');
INSERT INTO `sys_job_log` VALUES ('1473467825703325697', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:38:00');
INSERT INTO `sys_job_log` VALUES ('1473468077311234050', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:39:00');
INSERT INTO `sys_job_log` VALUES ('1473468328969474050', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:40:00');
INSERT INTO `sys_job_log` VALUES ('1473469335665303553', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:44:00');
INSERT INTO `sys_job_log` VALUES ('1473469587256434690', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:45:00');
INSERT INTO `sys_job_log` VALUES ('1473469838923063297', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:46:00');
INSERT INTO `sys_job_log` VALUES ('1473470090577108993', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:47:00');
INSERT INTO `sys_job_log` VALUES ('1473470342231154690', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:48:00');
INSERT INTO `sys_job_log` VALUES ('1473470593918754817', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:49:00');
INSERT INTO `sys_job_log` VALUES ('1473470845551828994', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:50:00');
INSERT INTO `sys_job_log` VALUES ('1473471097210068993', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 09:51:00');
INSERT INTO `sys_job_log` VALUES ('1473471348885086210', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:52:00');
INSERT INTO `sys_job_log` VALUES ('1473471600539131905', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:53:00');
INSERT INTO `sys_job_log` VALUES ('1473471852180594689', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:54:00');
INSERT INTO `sys_job_log` VALUES ('1473472103843028994', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 09:55:00');
INSERT INTO `sys_job_log` VALUES ('1473472355501268993', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:56:00');
INSERT INTO `sys_job_log` VALUES ('1473472607155314690', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:57:00');
INSERT INTO `sys_job_log` VALUES ('1473472858817748993', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 09:58:00');
INSERT INTO `sys_job_log` VALUES ('1473473110471794690', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 09:59:00');
INSERT INTO `sys_job_log` VALUES ('1473473362138423298', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 10:00:00');
INSERT INTO `sys_job_log` VALUES ('1473473613792468994', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:01:00');
INSERT INTO `sys_job_log` VALUES ('1473473865450708994', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:02:00');
INSERT INTO `sys_job_log` VALUES ('1473474117108948993', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:03:00');
INSERT INTO `sys_job_log` VALUES ('1473474368762994689', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:04:00');
INSERT INTO `sys_job_log` VALUES ('1473474620421234689', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:05:00');
INSERT INTO `sys_job_log` VALUES ('1473474872087863298', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:06:00');
INSERT INTO `sys_job_log` VALUES ('1473475123767074817', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:07:00');
INSERT INTO `sys_job_log` VALUES ('1473475375395954689', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:08:00');
INSERT INTO `sys_job_log` VALUES ('1473477388871548930', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:16:00');
INSERT INTO `sys_job_log` VALUES ('1473477640332656642', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:17:00');
INSERT INTO `sys_job_log` VALUES ('1473477891986702337', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:18:00');
INSERT INTO `sys_job_log` VALUES ('1473478143636553729', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:19:00');
INSERT INTO `sys_job_log` VALUES ('1473478395294793729', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:20:00');
INSERT INTO `sys_job_log` VALUES ('1473478646978199554', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:21:00');
INSERT INTO `sys_job_log` VALUES ('1473478898611273730', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:22:00');
INSERT INTO `sys_job_log` VALUES ('1473479150286290945', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:23:00');
INSERT INTO `sys_job_log` VALUES ('1473479401931948033', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:24:00');
INSERT INTO `sys_job_log` VALUES ('1473479653590188033', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:25:00');
INSERT INTO `sys_job_log` VALUES ('1473479905248428033', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:26:00');
INSERT INTO `sys_job_log` VALUES ('1473480156919250946', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 10:27:00');
INSERT INTO `sys_job_log` VALUES ('1473480660491624449', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:29:00');
INSERT INTO `sys_job_log` VALUES ('1473481163778740226', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:31:00');
INSERT INTO `sys_job_log` VALUES ('1473481415202099201', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:32:00');
INSERT INTO `sys_job_log` VALUES ('1473481666856144898', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:33:00');
INSERT INTO `sys_job_log` VALUES ('1473481918518579201', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:34:00');
INSERT INTO `sys_job_log` VALUES ('1473482170172624898', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:35:00');
INSERT INTO `sys_job_log` VALUES ('1473482421856030722', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:36:00');
INSERT INTO `sys_job_log` VALUES ('1473482673484910593', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:37:00');
INSERT INTO `sys_job_log` VALUES ('1473482925147344898', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:38:00');
INSERT INTO `sys_job_log` VALUES ('1473483176801390594', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:39:00');
INSERT INTO `sys_job_log` VALUES ('1473485945230848001', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:50:00');
INSERT INTO `sys_job_log` VALUES ('1473486196704538625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:51:00');
INSERT INTO `sys_job_log` VALUES ('1473486700272660482', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:53:00');
INSERT INTO `sys_job_log` VALUES ('1473486951683436546', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:54:00');
INSERT INTO `sys_job_log` VALUES ('1473487203341676546', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:55:00');
INSERT INTO `sys_job_log` VALUES ('1473487455008305153', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:56:00');
INSERT INTO `sys_job_log` VALUES ('1473487706658156545', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 10:57:00');
INSERT INTO `sys_job_log` VALUES ('1473487958308007938', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 10:58:00');
INSERT INTO `sys_job_log` VALUES ('1473488210029162497', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 10:59:00');
INSERT INTO `sys_job_log` VALUES ('1473488461628682241', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 11:00:00');
INSERT INTO `sys_job_log` VALUES ('1473488713282727937', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:01:00');
INSERT INTO `sys_job_log` VALUES ('1473488964945162242', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:02:00');
INSERT INTO `sys_job_log` VALUES ('1473489216603402241', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:03:00');
INSERT INTO `sys_job_log` VALUES ('1473489468257447938', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:04:00');
INSERT INTO `sys_job_log` VALUES ('1473489719924076546', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:05:00');
INSERT INTO `sys_job_log` VALUES ('1473489971573927938', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:06:00');
INSERT INTO `sys_job_log` VALUES ('1473490223232167938', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:07:00');
INSERT INTO `sys_job_log` VALUES ('1473490475121065986', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:08:00');
INSERT INTO `sys_job_log` VALUES ('1473490726548619266', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 11:09:00');
INSERT INTO `sys_job_log` VALUES ('1473490978252996609', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 11:10:00');
INSERT INTO `sys_job_log` VALUES ('1473491229881876481', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:11:00');
INSERT INTO `sys_job_log` VALUES ('1473491481523339265', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:12:00');
INSERT INTO `sys_job_log` VALUES ('1473491733181579265', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:13:00');
INSERT INTO `sys_job_log` VALUES ('1473491984873373697', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 11:14:00');
INSERT INTO `sys_job_log` VALUES ('1473492236523225089', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:15:00');
INSERT INTO `sys_job_log` VALUES ('1473492488160493569', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:16:00');
INSERT INTO `sys_job_log` VALUES ('1473492740254859266', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:17:00');
INSERT INTO `sys_job_log` VALUES ('1473492991476891649', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:18:00');
INSERT INTO `sys_job_log` VALUES ('1473493243143520257', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:19:00');
INSERT INTO `sys_job_log` VALUES ('1473493494793371649', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:20:00');
INSERT INTO `sys_job_log` VALUES ('1473493746455805954', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:21:00');
INSERT INTO `sys_job_log` VALUES ('1473493998109851650', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:22:00');
INSERT INTO `sys_job_log` VALUES ('1473494249763897345', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:23:00');
INSERT INTO `sys_job_log` VALUES ('1473495004952596481', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:26:00');
INSERT INTO `sys_job_log` VALUES ('1473495256401121281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:27:00');
INSERT INTO `sys_job_log` VALUES ('1473495508063555586', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:28:00');
INSERT INTO `sys_job_log` VALUES ('1473495759713406978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:29:00');
INSERT INTO `sys_job_log` VALUES ('1473496011375841281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:30:00');
INSERT INTO `sys_job_log` VALUES ('1473496263034081282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:31:00');
INSERT INTO `sys_job_log` VALUES ('1473496514692321281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:32:00');
INSERT INTO `sys_job_log` VALUES ('1473496766497361922', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:33:00');
INSERT INTO `sys_job_log` VALUES ('1473497018008801281', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 11:34:00');
INSERT INTO `sys_job_log` VALUES ('1473497269671235585', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:35:00');
INSERT INTO `sys_job_log` VALUES ('1473497521325281282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:36:00');
INSERT INTO `sys_job_log` VALUES ('1473497772979326978', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:37:00');
INSERT INTO `sys_job_log` VALUES ('1473498024645955586', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:38:00');
INSERT INTO `sys_job_log` VALUES ('1473498276291612674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:39:00');
INSERT INTO `sys_job_log` VALUES ('1473498527975018498', '1252884495040782337', 'testTask', '1', '0', null, '3', '2021-12-22 11:40:00');
INSERT INTO `sys_job_log` VALUES ('1473498779616481282', '1252884495040782337', 'testTask', '1', '0', null, '6', '2021-12-22 11:41:00');
INSERT INTO `sys_job_log` VALUES ('1473499031312470018', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:42:00');
INSERT INTO `sys_job_log` VALUES ('1473499282941349890', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:43:00');
INSERT INTO `sys_job_log` VALUES ('1473499534595395585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:44:00');
INSERT INTO `sys_job_log` VALUES ('1473499786245246978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:45:00');
INSERT INTO `sys_job_log` VALUES ('1473500037907681281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:46:00');
INSERT INTO `sys_job_log` VALUES ('1473500289561726978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:47:00');
INSERT INTO `sys_job_log` VALUES ('1473500541224161281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:48:00');
INSERT INTO `sys_job_log` VALUES ('1473500792878206977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:49:00');
INSERT INTO `sys_job_log` VALUES ('1473501044540641282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:50:00');
INSERT INTO `sys_job_log` VALUES ('1473501296207269889', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:51:00');
INSERT INTO `sys_job_log` VALUES ('1473501547861315586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:52:00');
INSERT INTO `sys_job_log` VALUES ('1473501799515361281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:53:00');
INSERT INTO `sys_job_log` VALUES ('1473502051177795586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:54:00');
INSERT INTO `sys_job_log` VALUES ('1473502302831841282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:55:00');
INSERT INTO `sys_job_log` VALUES ('1473502554485886977', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 11:56:00');
INSERT INTO `sys_job_log` VALUES ('1473502806152515586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:57:00');
INSERT INTO `sys_job_log` VALUES ('1473503057806561282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:58:00');
INSERT INTO `sys_job_log` VALUES ('1473503309460606978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 11:59:00');
INSERT INTO `sys_job_log` VALUES ('1473503561118846977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:00:00');
INSERT INTO `sys_job_log` VALUES ('1473503812777086978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:01:00');
INSERT INTO `sys_job_log` VALUES ('1473504064443715585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:02:00');
INSERT INTO `sys_job_log` VALUES ('1473504316093566978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:03:00');
INSERT INTO `sys_job_log` VALUES ('1473504567760195585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:04:00');
INSERT INTO `sys_job_log` VALUES ('1473504819414241281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:05:00');
INSERT INTO `sys_job_log` VALUES ('1473505071114424321', '1252884495040782337', 'testTask', '1', '0', null, '2', '2021-12-22 12:06:00');
INSERT INTO `sys_job_log` VALUES ('1473505322730721281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:07:00');
INSERT INTO `sys_job_log` VALUES ('1473505574393155585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:08:00');
INSERT INTO `sys_job_log` VALUES ('1473505826047201281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:09:00');
INSERT INTO `sys_job_log` VALUES ('1473506077705441281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:10:00');
INSERT INTO `sys_job_log` VALUES ('1473506329367875585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:11:00');
INSERT INTO `sys_job_log` VALUES ('1473506581026115586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:12:00');
INSERT INTO `sys_job_log` VALUES ('1473506832680161282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 12:13:00');
INSERT INTO `sys_job_log` VALUES ('1473507084334206978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:14:00');
INSERT INTO `sys_job_log` VALUES ('1473507335996641281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:15:00');
INSERT INTO `sys_job_log` VALUES ('1473507587650686978', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 12:16:00');
INSERT INTO `sys_job_log` VALUES ('1473507839308926978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:17:00');
INSERT INTO `sys_job_log` VALUES ('1473508090967166978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:18:00');
INSERT INTO `sys_job_log` VALUES ('1473508342625406978', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 12:19:00');
INSERT INTO `sys_job_log` VALUES ('1473508594287841282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:20:00');
INSERT INTO `sys_job_log` VALUES ('1473508845950275585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:21:00');
INSERT INTO `sys_job_log` VALUES ('1473509097604321281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:22:00');
INSERT INTO `sys_job_log` VALUES ('1473509349291921410', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:23:00');
INSERT INTO `sys_job_log` VALUES ('1473509600916606978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:24:00');
INSERT INTO `sys_job_log` VALUES ('1473509852583235586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:25:00');
INSERT INTO `sys_job_log` VALUES ('1473510104233086978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:26:00');
INSERT INTO `sys_job_log` VALUES ('1473510355895521281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:27:00');
INSERT INTO `sys_job_log` VALUES ('1473510607549566977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:28:00');
INSERT INTO `sys_job_log` VALUES ('1473510859216195586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:29:00');
INSERT INTO `sys_job_log` VALUES ('1473511110874435586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:30:00');
INSERT INTO `sys_job_log` VALUES ('1473511362524286977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:31:00');
INSERT INTO `sys_job_log` VALUES ('1473511614182526977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:32:00');
INSERT INTO `sys_job_log` VALUES ('1473511865840766978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:33:00');
INSERT INTO `sys_job_log` VALUES ('1473512117507395585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:34:00');
INSERT INTO `sys_job_log` VALUES ('1473512369161441282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:35:00');
INSERT INTO `sys_job_log` VALUES ('1473512620823875585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:36:00');
INSERT INTO `sys_job_log` VALUES ('1473512872473726978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:37:00');
INSERT INTO `sys_job_log` VALUES ('1473513124136161282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 12:38:00');
INSERT INTO `sys_job_log` VALUES ('1473513375806984194', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 12:39:00');
INSERT INTO `sys_job_log` VALUES ('1473513627452641282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:40:00');
INSERT INTO `sys_job_log` VALUES ('1473513879110881281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:41:00');
INSERT INTO `sys_job_log` VALUES ('1473514130764926977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:42:00');
INSERT INTO `sys_job_log` VALUES ('1473514382427361282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:43:00');
INSERT INTO `sys_job_log` VALUES ('1473514634081406978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:44:00');
INSERT INTO `sys_job_log` VALUES ('1473514885739646978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:45:00');
INSERT INTO `sys_job_log` VALUES ('1473515137402081281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 12:46:00');
INSERT INTO `sys_job_log` VALUES ('1473515389060321282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:47:00');
INSERT INTO `sys_job_log` VALUES ('1473515640726949889', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:48:00');
INSERT INTO `sys_job_log` VALUES ('1473515892380995585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:49:00');
INSERT INTO `sys_job_log` VALUES ('1473516144035041281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:50:00');
INSERT INTO `sys_job_log` VALUES ('1473516395693281281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:51:00');
INSERT INTO `sys_job_log` VALUES ('1473516647355715585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:52:00');
INSERT INTO `sys_job_log` VALUES ('1473516899055898625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:53:00');
INSERT INTO `sys_job_log` VALUES ('1473517150672195586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:54:00');
INSERT INTO `sys_job_log` VALUES ('1473517402326241281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:55:00');
INSERT INTO `sys_job_log` VALUES ('1473517653992869890', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:56:00');
INSERT INTO `sys_job_log` VALUES ('1473517905642721282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:57:00');
INSERT INTO `sys_job_log` VALUES ('1473518157296766978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:58:00');
INSERT INTO `sys_job_log` VALUES ('1473518408959201281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 12:59:00');
INSERT INTO `sys_job_log` VALUES ('1473518660613246978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:00:00');
INSERT INTO `sys_job_log` VALUES ('1473518912279875586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:01:00');
INSERT INTO `sys_job_log` VALUES ('1473519163933921281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:02:00');
INSERT INTO `sys_job_log` VALUES ('1473519415592161282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:03:00');
INSERT INTO `sys_job_log` VALUES ('1473519667250401281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:04:00');
INSERT INTO `sys_job_log` VALUES ('1473519918908641282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:05:00');
INSERT INTO `sys_job_log` VALUES ('1473520170562686978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:06:00');
INSERT INTO `sys_job_log` VALUES ('1473520422233509890', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:07:00');
INSERT INTO `sys_job_log` VALUES ('1473520673891749889', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:08:00');
INSERT INTO `sys_job_log` VALUES ('1473520925541601281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:09:00');
INSERT INTO `sys_job_log` VALUES ('1473521177229201410', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 13:10:00');
INSERT INTO `sys_job_log` VALUES ('1473521428858081281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:11:00');
INSERT INTO `sys_job_log` VALUES ('1473521680516321282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:12:00');
INSERT INTO `sys_job_log` VALUES ('1473521932174561281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:13:00');
INSERT INTO `sys_job_log` VALUES ('1473522183828606978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:14:00');
INSERT INTO `sys_job_log` VALUES ('1473522435491041281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:15:00');
INSERT INTO `sys_job_log` VALUES ('1473522687149281282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:16:00');
INSERT INTO `sys_job_log` VALUES ('1473522938803326977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:17:00');
INSERT INTO `sys_job_log` VALUES ('1473523190469955585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:18:00');
INSERT INTO `sys_job_log` VALUES ('1473523442124001281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:19:00');
INSERT INTO `sys_job_log` VALUES ('1473523693782241281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 13:20:00');
INSERT INTO `sys_job_log` VALUES ('1473523945444675586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:21:00');
INSERT INTO `sys_job_log` VALUES ('1473524197102915585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:22:00');
INSERT INTO `sys_job_log` VALUES ('1473524448756961282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 13:23:00');
INSERT INTO `sys_job_log` VALUES ('1473524700461338625', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:24:00');
INSERT INTO `sys_job_log` VALUES ('1473524952069246977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:25:00');
INSERT INTO `sys_job_log` VALUES ('1473525203731681282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:26:00');
INSERT INTO `sys_job_log` VALUES ('1473525455394115586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:27:00');
INSERT INTO `sys_job_log` VALUES ('1473525707052355586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:28:00');
INSERT INTO `sys_job_log` VALUES ('1473525958706401281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:29:00');
INSERT INTO `sys_job_log` VALUES ('1473526210364641281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:30:00');
INSERT INTO `sys_job_log` VALUES ('1473526462027075586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:31:00');
INSERT INTO `sys_job_log` VALUES ('1473526713681121282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:32:00');
INSERT INTO `sys_job_log` VALUES ('1473526965339361281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:33:00');
INSERT INTO `sys_job_log` VALUES ('1473527216993406978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:34:00');
INSERT INTO `sys_job_log` VALUES ('1473527468668424193', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:35:00');
INSERT INTO `sys_job_log` VALUES ('1473527720309886977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:36:00');
INSERT INTO `sys_job_log` VALUES ('1473527971963932673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:37:00');
INSERT INTO `sys_job_log` VALUES ('1473528223630561282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:38:00');
INSERT INTO `sys_job_log` VALUES ('1473528475288801282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 13:39:00');
INSERT INTO `sys_job_log` VALUES ('1473528726938652674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:40:00');
INSERT INTO `sys_job_log` VALUES ('1473528978601086978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:41:00');
INSERT INTO `sys_job_log` VALUES ('1473529230263521281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:42:00');
INSERT INTO `sys_job_log` VALUES ('1473529481921761282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:43:00');
INSERT INTO `sys_job_log` VALUES ('1473529733580001282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:44:00');
INSERT INTO `sys_job_log` VALUES ('1473529985234046978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:45:00');
INSERT INTO `sys_job_log` VALUES ('1473530236888092673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:46:00');
INSERT INTO `sys_job_log` VALUES ('1473530488546332674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:47:00');
INSERT INTO `sys_job_log` VALUES ('1473530740212961282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:48:00');
INSERT INTO `sys_job_log` VALUES ('1473530991875395585', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 13:49:00');
INSERT INTO `sys_job_log` VALUES ('1473531243525246978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:50:00');
INSERT INTO `sys_job_log` VALUES ('1473531495187681282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:51:00');
INSERT INTO `sys_job_log` VALUES ('1473531746841726978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:52:00');
INSERT INTO `sys_job_log` VALUES ('1473531998504161282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:53:00');
INSERT INTO `sys_job_log` VALUES ('1473532250162401281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:54:00');
INSERT INTO `sys_job_log` VALUES ('1473532501816446977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:55:00');
INSERT INTO `sys_job_log` VALUES ('1473532753478881281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:56:00');
INSERT INTO `sys_job_log` VALUES ('1473533005137121281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:57:00');
INSERT INTO `sys_job_log` VALUES ('1473533256791166978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:58:00');
INSERT INTO `sys_job_log` VALUES ('1473533508449406978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 13:59:00');
INSERT INTO `sys_job_log` VALUES ('1473533760128618498', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:00:00');
INSERT INTO `sys_job_log` VALUES ('1473534011765886978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:01:00');
INSERT INTO `sys_job_log` VALUES ('1473534263424126978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:02:00');
INSERT INTO `sys_job_log` VALUES ('1473534515082366978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:03:00');
INSERT INTO `sys_job_log` VALUES ('1473534766740606977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:04:00');
INSERT INTO `sys_job_log` VALUES ('1473535018444984322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:05:00');
INSERT INTO `sys_job_log` VALUES ('1473535270061281281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:06:00');
INSERT INTO `sys_job_log` VALUES ('1473535521719521282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:07:00');
INSERT INTO `sys_job_log` VALUES ('1473535773423898625', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:08:00');
INSERT INTO `sys_job_log` VALUES ('1473536025036001281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:09:00');
INSERT INTO `sys_job_log` VALUES ('1473536276694241282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:10:00');
INSERT INTO `sys_job_log` VALUES ('1473536528352481281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:11:00');
INSERT INTO `sys_job_log` VALUES ('1473536780023304193', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:12:00');
INSERT INTO `sys_job_log` VALUES ('1473537031668961281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:13:00');
INSERT INTO `sys_job_log` VALUES ('1473537283339784194', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:14:00');
INSERT INTO `sys_job_log` VALUES ('1473537534985441281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:15:00');
INSERT INTO `sys_job_log` VALUES ('1473537786647875585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:16:00');
INSERT INTO `sys_job_log` VALUES ('1473538038301921281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:17:00');
INSERT INTO `sys_job_log` VALUES ('1473538290002104322', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:18:00');
INSERT INTO `sys_job_log` VALUES ('1473538541618401282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:19:00');
INSERT INTO `sys_job_log` VALUES ('1473538793272446978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:20:00');
INSERT INTO `sys_job_log` VALUES ('1473539044934881281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:21:00');
INSERT INTO `sys_job_log` VALUES ('1473539296593121281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:22:00');
INSERT INTO `sys_job_log` VALUES ('1473539548284915713', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:23:00');
INSERT INTO `sys_job_log` VALUES ('1473539799905406977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:24:00');
INSERT INTO `sys_job_log` VALUES ('1473540051563646978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:25:00');
INSERT INTO `sys_job_log` VALUES ('1473540303221886977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:26:00');
INSERT INTO `sys_job_log` VALUES ('1473540554884321281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:27:00');
INSERT INTO `sys_job_log` VALUES ('1473540806546755585', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:28:00');
INSERT INTO `sys_job_log` VALUES ('1473541058196606978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:29:00');
INSERT INTO `sys_job_log` VALUES ('1473541309863235585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:30:00');
INSERT INTO `sys_job_log` VALUES ('1473541561517281282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:31:00');
INSERT INTO `sys_job_log` VALUES ('1473541813175521281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:32:00');
INSERT INTO `sys_job_log` VALUES ('1473542064833761282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:33:00');
INSERT INTO `sys_job_log` VALUES ('1473542316487806977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:34:00');
INSERT INTO `sys_job_log` VALUES ('1473542568146046978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:35:00');
INSERT INTO `sys_job_log` VALUES ('1473542819812675586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:36:00');
INSERT INTO `sys_job_log` VALUES ('1473543071466721282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:37:00');
INSERT INTO `sys_job_log` VALUES ('1473543323120766978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:38:00');
INSERT INTO `sys_job_log` VALUES ('1473543574783201282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:39:00');
INSERT INTO `sys_job_log` VALUES ('1473543826433052673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:40:00');
INSERT INTO `sys_job_log` VALUES ('1473544078103875586', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:41:00');
INSERT INTO `sys_job_log` VALUES ('1473544329753726977', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:42:00');
INSERT INTO `sys_job_log` VALUES ('1473544581411966977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:43:00');
INSERT INTO `sys_job_log` VALUES ('1473544833074401281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:44:00');
INSERT INTO `sys_job_log` VALUES ('1473545084728446978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:45:00');
INSERT INTO `sys_job_log` VALUES ('1473545336432824321', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:46:00');
INSERT INTO `sys_job_log` VALUES ('1473545588049121282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:47:00');
INSERT INTO `sys_job_log` VALUES ('1473545839707361281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:48:00');
INSERT INTO `sys_job_log` VALUES ('1473546091365601282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:49:00');
INSERT INTO `sys_job_log` VALUES ('1473546343028035585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:50:00');
INSERT INTO `sys_job_log` VALUES ('1473546594682081281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:51:00');
INSERT INTO `sys_job_log` VALUES ('1473546846336126978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:52:00');
INSERT INTO `sys_job_log` VALUES ('1473547097990172673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:53:00');
INSERT INTO `sys_job_log` VALUES ('1473547349656801282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:54:00');
INSERT INTO `sys_job_log` VALUES ('1473547601319235585', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:55:00');
INSERT INTO `sys_job_log` VALUES ('1473547852969086978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:56:00');
INSERT INTO `sys_job_log` VALUES ('1473548104627326977', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:57:00');
INSERT INTO `sys_job_log` VALUES ('1473548356285566977', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 14:58:00');
INSERT INTO `sys_job_log` VALUES ('1473548607948001282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 14:59:00');
INSERT INTO `sys_job_log` VALUES ('1473548859610435585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:00:00');
INSERT INTO `sys_job_log` VALUES ('1473549111260286977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:01:00');
INSERT INTO `sys_job_log` VALUES ('1473549362926915586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:02:00');
INSERT INTO `sys_job_log` VALUES ('1473549614576766977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:03:00');
INSERT INTO `sys_job_log` VALUES ('1473549866235006977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:04:00');
INSERT INTO `sys_job_log` VALUES ('1473550117893246978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:05:00');
INSERT INTO `sys_job_log` VALUES ('1473550369555681282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:06:00');
INSERT INTO `sys_job_log` VALUES ('1473550621213921282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:07:00');
INSERT INTO `sys_job_log` VALUES ('1473550872867966978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:08:00');
INSERT INTO `sys_job_log` VALUES ('1473551124530401282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:09:00');
INSERT INTO `sys_job_log` VALUES ('1473551376230584321', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:10:00');
INSERT INTO `sys_job_log` VALUES ('1473551627846881282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:11:00');
INSERT INTO `sys_job_log` VALUES ('1473551879505121282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:12:00');
INSERT INTO `sys_job_log` VALUES ('1473552131159166978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:13:00');
INSERT INTO `sys_job_log` VALUES ('1473552382825795586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:14:00');
INSERT INTO `sys_job_log` VALUES ('1473552634471452674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:15:00');
INSERT INTO `sys_job_log` VALUES ('1473552886133886978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:16:00');
INSERT INTO `sys_job_log` VALUES ('1473553137850847233', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:17:00');
INSERT INTO `sys_job_log` VALUES ('1473553389446172674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:18:00');
INSERT INTO `sys_job_log` VALUES ('1473553641104412674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:19:00');
INSERT INTO `sys_job_log` VALUES ('1473553892766846978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:20:00');
INSERT INTO `sys_job_log` VALUES ('1473554144429281281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:21:00');
INSERT INTO `sys_job_log` VALUES ('1473554396087521282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:22:00');
INSERT INTO `sys_job_log` VALUES ('1473554647745761281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:23:00');
INSERT INTO `sys_job_log` VALUES ('1473554899408195585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:24:00');
INSERT INTO `sys_job_log` VALUES ('1473555151125155842', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:25:00');
INSERT INTO `sys_job_log` VALUES ('1473555402716286978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:26:00');
INSERT INTO `sys_job_log` VALUES ('1473555654374526978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:27:00');
INSERT INTO `sys_job_log` VALUES ('1473555906036961281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:28:00');
INSERT INTO `sys_job_log` VALUES ('1473556157686812673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:29:00');
INSERT INTO `sys_job_log` VALUES ('1473556409353441282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:30:00');
INSERT INTO `sys_job_log` VALUES ('1473556661007486977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:31:00');
INSERT INTO `sys_job_log` VALUES ('1473556912665726977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:32:00');
INSERT INTO `sys_job_log` VALUES ('1473557164319772673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:33:00');
INSERT INTO `sys_job_log` VALUES ('1473557415982206977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:34:00');
INSERT INTO `sys_job_log` VALUES ('1473557667644641282', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:35:00');
INSERT INTO `sys_job_log` VALUES ('1473557919307075586', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:36:00');
INSERT INTO `sys_job_log` VALUES ('1473558170961121281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:37:00');
INSERT INTO `sys_job_log` VALUES ('1473558422615166977', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:38:00');
INSERT INTO `sys_job_log` VALUES ('1473558674277601281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:39:00');
INSERT INTO `sys_job_log` VALUES ('1473558925969395714', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:40:00');
INSERT INTO `sys_job_log` VALUES ('1473559177585692673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:41:00');
INSERT INTO `sys_job_log` VALUES ('1473559429248126978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:42:00');
INSERT INTO `sys_job_log` VALUES ('1473559680944115713', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:43:00');
INSERT INTO `sys_job_log` VALUES ('1473559932564606978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:44:00');
INSERT INTO `sys_job_log` VALUES ('1473560184222846978', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:45:00');
INSERT INTO `sys_job_log` VALUES ('1473560435876892674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:46:00');
INSERT INTO `sys_job_log` VALUES ('1473560687547715586', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:47:00');
INSERT INTO `sys_job_log` VALUES ('1473560939201761282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:48:00');
INSERT INTO `sys_job_log` VALUES ('1473561190860001282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:49:00');
INSERT INTO `sys_job_log` VALUES ('1473561442514046977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:50:00');
INSERT INTO `sys_job_log` VALUES ('1473561694172286978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:51:00');
INSERT INTO `sys_job_log` VALUES ('1473561945830526978', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:52:00');
INSERT INTO `sys_job_log` VALUES ('1473562197488766978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:53:00');
INSERT INTO `sys_job_log` VALUES ('1473562449147006977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:54:00');
INSERT INTO `sys_job_log` VALUES ('1473562700805246977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:55:00');
INSERT INTO `sys_job_log` VALUES ('1473562952459292673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:56:00');
INSERT INTO `sys_job_log` VALUES ('1473563204125921281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:57:00');
INSERT INTO `sys_job_log` VALUES ('1473563455784161281', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 15:58:00');
INSERT INTO `sys_job_log` VALUES ('1473563707434012673', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 15:59:00');
INSERT INTO `sys_job_log` VALUES ('1473563959096446977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:00:00');
INSERT INTO `sys_job_log` VALUES ('1473564210754686977', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 16:01:00');
INSERT INTO `sys_job_log` VALUES ('1473564462412926978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:02:00');
INSERT INTO `sys_job_log` VALUES ('1473564714071166978', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:03:00');
INSERT INTO `sys_job_log` VALUES ('1473564965733601282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:04:00');
INSERT INTO `sys_job_log` VALUES ('1473565217396035585', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:05:00');
INSERT INTO `sys_job_log` VALUES ('1473565469050081281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:06:00');
INSERT INTO `sys_job_log` VALUES ('1473565720704126977', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:07:00');
INSERT INTO `sys_job_log` VALUES ('1473565972362366978', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 16:08:00');
INSERT INTO `sys_job_log` VALUES ('1473566224024801282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:09:00');
INSERT INTO `sys_job_log` VALUES ('1473566475687235586', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 16:10:00');
INSERT INTO `sys_job_log` VALUES ('1473566727341281281', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:11:00');
INSERT INTO `sys_job_log` VALUES ('1473566978991132674', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:12:00');
INSERT INTO `sys_job_log` VALUES ('1473567230712287234', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:13:00');
INSERT INTO `sys_job_log` VALUES ('1473567482316001282', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:14:00');
INSERT INTO `sys_job_log` VALUES ('1473567733978435586', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:15:00');
INSERT INTO `sys_job_log` VALUES ('1473567985640869890', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 16:16:00');
INSERT INTO `sys_job_log` VALUES ('1473610012780810242', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:03:00');
INSERT INTO `sys_job_log` VALUES ('1473610264216752130', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:04:00');
INSERT INTO `sys_job_log` VALUES ('1473610515879186433', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:05:00');
INSERT INTO `sys_job_log` VALUES ('1473610767520649218', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:06:00');
INSERT INTO `sys_job_log` VALUES ('1473611019199860737', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:07:00');
INSERT INTO `sys_job_log` VALUES ('1473611270866489345', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:08:00');
INSERT INTO `sys_job_log` VALUES ('1473611522507952129', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:09:00');
INSERT INTO `sys_job_log` VALUES ('1473611774178775042', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:10:00');
INSERT INTO `sys_job_log` VALUES ('1473612025811849218', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:11:00');
INSERT INTO `sys_job_log` VALUES ('1473612277486866433', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:12:00');
INSERT INTO `sys_job_log` VALUES ('1473612529145106433', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:13:00');
INSERT INTO `sys_job_log` VALUES ('1473612780799152129', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:14:00');
INSERT INTO `sys_job_log` VALUES ('1473613032490946561', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:15:00');
INSERT INTO `sys_job_log` VALUES ('1473613284119826434', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:16:00');
INSERT INTO `sys_job_log` VALUES ('1473613535778066434', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:17:00');
INSERT INTO `sys_job_log` VALUES ('1473613787427917825', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:18:00');
INSERT INTO `sys_job_log` VALUES ('1473614039090352130', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:19:00');
INSERT INTO `sys_job_log` VALUES ('1473614290748592129', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:20:00');
INSERT INTO `sys_job_log` VALUES ('1473614542402637826', '1252884495040782337', 'testTask', '1', '0', null, '1', '2021-12-22 19:21:00');
INSERT INTO `sys_job_log` VALUES ('1473614794065072130', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:22:00');
INSERT INTO `sys_job_log` VALUES ('1473615045723312130', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:23:00');
INSERT INTO `sys_job_log` VALUES ('1473615297377357825', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:24:00');
INSERT INTO `sys_job_log` VALUES ('1473615549048180738', '1252884495040782337', 'testTask', '1', '0', null, '0', '2021-12-22 19:25:00');

-- ----------------------------
-- Table structure for sys_kehu
-- ----------------------------
DROP TABLE IF EXISTS `sys_kehu`;
CREATE TABLE `sys_kehu` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_kehu
-- ----------------------------
INSERT INTO `sys_kehu` VALUES ('1474682273264713730', '客户1', '12369752361');
INSERT INTO `sys_kehu` VALUES ('1474682362582417410', '客户2', '14786369524');
INSERT INTO `sys_kehu` VALUES ('1474682435622027266', '客户3', '45369785461');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1471315209661607938', '1', 'admin', '菜单权限管理-获取所有菜单权限', '73', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:04:16');
INSERT INTO `sys_log` VALUES ('1471315236110888962', '1', 'admin', '菜单权限管理-获取所有菜单权限', '65', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:04:23');
INSERT INTO `sys_log` VALUES ('1471315329169911809', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:04:45');
INSERT INTO `sys_log` VALUES ('1471315329232826370', '1', 'admin', '用户管理-分页获取用户列表', '7', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:04:45');
INSERT INTO `sys_log` VALUES ('1471315329404792834', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:04:45');
INSERT INTO `sys_log` VALUES ('1471315329446735874', '1', 'admin', '用户管理-分页获取用户列表', '5', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:04:45');
INSERT INTO `sys_log` VALUES ('1471315334324711426', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:04:46');
INSERT INTO `sys_log` VALUES ('1471315334362460161', '1', 'admin', '用户管理-分页获取用户列表', '5', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:04:46');
INSERT INTO `sys_log` VALUES ('1471315337667571713', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 11:04:47');
INSERT INTO `sys_log` VALUES ('1471315349180936193', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:04:50');
INSERT INTO `sys_log` VALUES ('1471315349231267841', '1', 'admin', '用户管理-分页获取用户列表', '5', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:04:50');
INSERT INTO `sys_log` VALUES ('1471315504663875585', '1', 'admin', '角色管理-分页获取角色信息', '38', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:05:27');
INSERT INTO `sys_log` VALUES ('1471315646968221697', '1', 'admin', '机构管理-获取所有组织机构', '9', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 11:06:01');
INSERT INTO `sys_log` VALUES ('1471315649417695234', '1', 'admin', '机构管理-树型组织列表', '12', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:06:01');
INSERT INTO `sys_log` VALUES ('1471315649459638273', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:06:01');
INSERT INTO `sys_log` VALUES ('1471315651464515585', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:06:02');
INSERT INTO `sys_log` VALUES ('1471315653066739714', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:06:02');
INSERT INTO `sys_log` VALUES ('1471315655629459458', '1', 'admin', '菜单权限管理-获取所有菜单权限', '130', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:06:03');
INSERT INTO `sys_log` VALUES ('1471315658850684930', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:06:03');
INSERT INTO `sys_log` VALUES ('1471315658901016577', '1', 'admin', '用户管理-分页获取用户列表', '8', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:06:03');
INSERT INTO `sys_log` VALUES ('1471315661916721154', '1', 'admin', '菜单权限管理-获取所有菜单权限', '102', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:06:04');
INSERT INTO `sys_log` VALUES ('1471315863616606210', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:06:52');
INSERT INTO `sys_log` VALUES ('1471315871669669890', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '98', 'com.company.project.controller.PermissionController.getAllPermissionTree()', null, '169.254.51.168', '2021-12-16 11:06:54');
INSERT INTO `sys_log` VALUES ('1471316361539211265', '1', 'admin', '角色管理-新增角色', '28', 'com.company.project.controller.RoleController.addRole()', '[{\"createTime\":1639624130959,\"deleted\":1,\"description\":\"员工信息的建立,客户信息的建立。\",\"id\":\"1471316361434353665\",\"name\":\"前台\",\"permissions\":[\"51\",\"24\",\"10\",\"23\",\"52\",\"25\",\"56\",\"57\",\"42\",\"41\",\"12\",\"22\",\"5\",\"38\",\"9\"],\"status\":1,\"updateTime\":1639624130959}]', '169.254.51.168', '2021-12-16 11:08:51');
INSERT INTO `sys_log` VALUES ('1471316361656651777', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:08:51');
INSERT INTO `sys_log` VALUES ('1471316377481760769', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '89', 'com.company.project.controller.PermissionController.getAllPermissionTree()', null, '169.254.51.168', '2021-12-16 11:08:55');
INSERT INTO `sys_log` VALUES ('1471316791904161794', '1', 'admin', '角色管理-新增角色', '62', 'com.company.project.controller.RoleController.addRole()', '[{\"createTime\":1639624233526,\"deleted\":1,\"description\":\"1.审核员工项目，修改员工意见（驳回项目请求）\",\"id\":\"1471316791631532034\",\"name\":\"主管\",\"permissions\":[\"51\",\"11\",\"17\",\"26\",\"40\",\"43\",\"44\",\"53\",\"36\",\"3\",\"19\",\"1311115974068449281\",\"13\",\"39\",\"24\",\"10\",\"23\",\"52\",\"25\",\"56\",\"57\",\"42\",\"41\",\"12\",\"22\",\"5\",\"38\",\"9\"],\"status\":1,\"updateTime\":1639624233526}]', '169.254.51.168', '2021-12-16 11:10:34');
INSERT INTO `sys_log` VALUES ('1471316792025796609', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:10:34');
INSERT INTO `sys_log` VALUES ('1471316807980929026', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '80', 'com.company.project.controller.PermissionController.getAllPermissionTree()', null, '169.254.51.168', '2021-12-16 11:10:37');
INSERT INTO `sys_log` VALUES ('1471316889656610817', '1', 'admin', '角色管理-新增角色', '16', 'com.company.project.controller.RoleController.addRole()', '[{\"createTime\":1639624256879,\"deleted\":1,\"description\":\"1.查看项目\",\"id\":\"1471316889581113345\",\"name\":\"普通员工\",\"permissions\":[],\"status\":1,\"updateTime\":1639624256879}]', '169.254.51.168', '2021-12-16 11:10:57');
INSERT INTO `sys_log` VALUES ('1471316889799217154', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:10:57');
INSERT INTO `sys_log` VALUES ('1471316911865450498', '1', 'admin', '角色管理-查询角色详情', '95', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-16 11:11:02');
INSERT INTO `sys_log` VALUES ('1471316924020543489', '1', 'admin', '角色管理-更新角色信息', '22', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.查看项目\",\"id\":\"1471316889581113345\",\"name\":\"普通员工\",\"permissions\":[],\"status\":1,\"updateTime\":1639624265068}]', '169.254.51.168', '2021-12-16 11:11:05');
INSERT INTO `sys_log` VALUES ('1471316924150566914', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:11:05');
INSERT INTO `sys_log` VALUES ('1471316936351797250', '1', 'admin', '角色管理-查询角色详情', '85', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-16 11:11:08');
INSERT INTO `sys_log` VALUES ('1471317111749201922', '1', 'admin', '角色管理-更新角色信息', '19', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.查看项目 2.查看意见 3.查看项目信息\",\"id\":\"1471316889581113345\",\"name\":\"普通员工\",\"permissions\":[],\"status\":1,\"updateTime\":1639624309829}]', '169.254.51.168', '2021-12-16 11:11:50');
INSERT INTO `sys_log` VALUES ('1471317111875031042', '1', 'admin', '角色管理-分页获取角色信息', '2', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:11:50');
INSERT INTO `sys_log` VALUES ('1471317131290464257', '1', 'admin', '角色管理-查询角色详情', '77', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316791631532034\"]', '169.254.51.168', '2021-12-16 11:11:55');
INSERT INTO `sys_log` VALUES ('1471317266762289154', '1', 'admin', '角色管理-更新角色信息', '24', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.审核员工项目 2.修改添加意见（驳回项目请求）\",\"id\":\"1471316791631532034\",\"name\":\"主管\",\"permissions\":[\"51\",\"11\",\"17\",\"26\",\"40\",\"43\",\"44\",\"53\",\"36\",\"3\",\"19\",\"1311115974068449281\",\"13\",\"39\",\"24\",\"10\",\"23\",\"52\",\"25\",\"56\",\"57\",\"42\",\"41\",\"12\",\"22\",\"5\",\"38\",\"9\"],\"status\":1,\"updateTime\":1639624346781}]', '169.254.51.168', '2021-12-16 11:12:27');
INSERT INTO `sys_log` VALUES ('1471317266879729666', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:12:27');
INSERT INTO `sys_log` VALUES ('1471317304452304897', '1', 'admin', '角色管理-查询角色详情', '74', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316361434353665\"]', '169.254.51.168', '2021-12-16 11:12:36');
INSERT INTO `sys_log` VALUES ('1471317322747858946', '1', 'admin', '角色管理-更新角色信息', '25', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.员工信息的建立,客户信息的建立。\",\"id\":\"1471316361434353665\",\"name\":\"前台\",\"permissions\":[\"51\",\"24\",\"10\",\"23\",\"52\",\"25\",\"56\",\"57\",\"42\",\"41\",\"12\",\"22\",\"5\",\"38\",\"9\"],\"status\":1,\"updateTime\":1639624360129}]', '169.254.51.168', '2021-12-16 11:12:40');
INSERT INTO `sys_log` VALUES ('1471317322865299458', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:12:40');
INSERT INTO `sys_log` VALUES ('1471317330889003010', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:12:42');
INSERT INTO `sys_log` VALUES ('1471317330897391618', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:12:42');
INSERT INTO `sys_log` VALUES ('1471317332717719553', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 11:12:43');
INSERT INTO `sys_log` VALUES ('1471317349687873537', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[\"\"]', '169.254.51.168', '2021-12-16 11:12:47');
INSERT INTO `sys_log` VALUES ('1471317368457383937', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[\"\"]', '169.254.51.168', '2021-12-16 11:12:51');
INSERT INTO `sys_log` VALUES ('1471317503925014530', '1', 'admin', '机构管理-新增组织', '17', 'com.company.project.controller.DeptController.addDept()', '[{\"createTime\":1639624403333,\"deleted\":1,\"deptNo\":\"D000002\",\"id\":\"1471317503849517058\",\"managerName\":\"pj\",\"name\":\"项目开发\",\"phone\":\"15826342104\",\"pid\":\"1\",\"pidName\":\"总公司\",\"relationCode\":\"D000001D000002\",\"status\":1,\"updateTime\":1639624403333}]', '169.254.51.168', '2021-12-16 11:13:23');
INSERT INTO `sys_log` VALUES ('1471317503992123394', '1', 'admin', '机构管理-获取所有组织机构', '5', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 11:13:23');
INSERT INTO `sys_log` VALUES ('1471317521041969154', '1', 'admin', '菜单权限管理-获取所有菜单权限', '62', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:13:27');
INSERT INTO `sys_log` VALUES ('1471318004984958977', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:15:23');
INSERT INTO `sys_log` VALUES ('1471318007736422402', '1', 'admin', '菜单权限管理-获取所有菜单权限', '70', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:15:23');
INSERT INTO `sys_log` VALUES ('1471318021594402818', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:15:27');
INSERT INTO `sys_log` VALUES ('1471318031878836225', '1', 'admin', '角色管理-查询角色详情', '65', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-16 11:15:29');
INSERT INTO `sys_log` VALUES ('1471318054368694274', '1', 'admin', '角色管理-更新角色信息', '52', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"26\",\"40\",\"17\",\"43\",\"44\",\"53\",\"3\",\"19\",\"36\",\"1311115974068449281\",\"39\",\"13\",\"24\",\"25\",\"52\",\"10\",\"56\",\"57\",\"42\",\"23\",\"41\",\"5\",\"38\",\"12\",\"22\",\"9\",\"54\",\"15\",\"16\",\"1\",\"20\",\"4\",\"45\",\"49\",\"46\",\"47\",\"48\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"59\",\"60\",\"61\",\"62\",\"63\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"1466047224172683265\",\"1466047224172683266\",\"1466047224172683268\",\"1466047224172683269\",\"1466047224172683267\",\"2\",\"6\"],\"status\":1,\"updateTime\":1639624534534}]', '169.254.51.168', '2021-12-16 11:15:35');
INSERT INTO `sys_log` VALUES ('1471318054498717698', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:15:35');
INSERT INTO `sys_log` VALUES ('1471318070143471618', '1', 'admin', '菜单权限管理-获取所有菜单权限', '66', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:15:38');
INSERT INTO `sys_log` VALUES ('1471318099377770498', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '65', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1466047224172683265\"]', '169.254.51.168', '2021-12-16 11:15:45');
INSERT INTO `sys_log` VALUES ('1471318204868710402', '1', 'admin', '菜单权限管理-更新菜单权限', '48', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1466047224172683265\",\"name\":\"商品管理\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"51\",\"pidName\":\"组织管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639624570422,\"url\":\"/index/goods\"}]', '169.254.51.168', '2021-12-16 11:16:10');
INSERT INTO `sys_log` VALUES ('1471318205208449025', '1', 'admin', '菜单权限管理-获取所有菜单权限', '69', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:16:11');
INSERT INTO `sys_log` VALUES ('1471318347353411585', '1', 'admin', '菜单权限管理-获取所有菜单权限', '75', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:16:44');
INSERT INTO `sys_log` VALUES ('1471318474948333569', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '67', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1466047224172683265\"]', '169.254.51.168', '2021-12-16 11:17:15');
INSERT INTO `sys_log` VALUES ('1471318524558561281', '1', 'admin', '菜单权限管理-更新菜单权限', '43', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1466047224172683265\",\"name\":\"商品管理\",\"orderNum\":110,\"perms\":\"\",\"pid\":\"51\",\"pidName\":\"组织管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639624646646,\"url\":\"/index/goods\"}]', '169.254.51.168', '2021-12-16 11:17:27');
INSERT INTO `sys_log` VALUES ('1471318524910882817', '1', 'admin', '菜单权限管理-获取所有菜单权限', '70', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:17:27');
INSERT INTO `sys_log` VALUES ('1471318547761451009', '1', 'admin', '菜单权限管理-获取所有菜单权限', '70', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:17:32');
INSERT INTO `sys_log` VALUES ('1471318743010496514', '1', 'admin', '菜单权限管理-获取所有菜单权限', '70', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:18:19');
INSERT INTO `sys_log` VALUES ('1471318760647544834', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:18:23');
INSERT INTO `sys_log` VALUES ('1471318768520253442', '1', 'admin', '角色管理-查询角色详情', '71', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-16 11:18:25');
INSERT INTO `sys_log` VALUES ('1471318788686467073', '1', 'admin', '角色管理-更新角色信息', '45', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"17\",\"26\",\"40\",\"43\",\"44\",\"53\",\"36\",\"19\",\"3\",\"1311115974068449281\",\"39\",\"13\",\"24\",\"23\",\"25\",\"10\",\"52\",\"56\",\"57\",\"42\",\"41\",\"22\",\"5\",\"12\",\"38\",\"9\",\"1466047224172683265\",\"1466047224172683267\",\"1466047224172683268\",\"1466047224172683266\",\"1466047224172683269\",\"54\",\"15\",\"1\",\"16\",\"20\",\"4\",\"59\",\"60\",\"61\",\"62\",\"63\",\"55\",\"18\",\"14\",\"45\",\"48\",\"47\",\"46\",\"49\",\"27\",\"30\",\"28\",\"29\",\"31\",\"34\",\"32\",\"33\",\"35\",\"8\",\"58\",\"7\",\"21\",\"50\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"2\",\"6\"],\"status\":1,\"updateTime\":1639624709615}]', '169.254.51.168', '2021-12-16 11:18:30');
INSERT INTO `sys_log` VALUES ('1471318788833267714', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 11:18:30');
INSERT INTO `sys_log` VALUES ('1471318800929640449', '1', 'admin', '菜单权限管理-获取所有菜单权限', '76', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:18:33');
INSERT INTO `sys_log` VALUES ('1471318842411307009', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '67', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1471312082334076929\"]', '169.254.51.168', '2021-12-16 11:18:42');
INSERT INTO `sys_log` VALUES ('1471318937613619202', '1', 'admin', '菜单权限管理-更新菜单权限', '34', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1471312082334076929\",\"name\":\"客户\",\"orderNum\":112,\"perms\":\"\",\"pid\":\"51\",\"pidName\":\"组织管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639624745134,\"url\":\"/index/sysKehu\"}]', '169.254.51.168', '2021-12-16 11:19:05');
INSERT INTO `sys_log` VALUES ('1471318938033049602', '1', 'admin', '菜单权限管理-获取所有菜单权限', '89', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:19:05');
INSERT INTO `sys_log` VALUES ('1471321003463471105', '1', 'admin', '菜单权限管理-获取所有菜单权限', '160', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:27:18');
INSERT INTO `sys_log` VALUES ('1471321006709862402', '1', 'admin', '角色管理-分页获取角色信息', '33', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:27:18');
INSERT INTO `sys_log` VALUES ('1471321009109004289', '1', 'admin', '机构管理-树型组织列表', '12', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:27:19');
INSERT INTO `sys_log` VALUES ('1471321009188696066', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:27:19');
INSERT INTO `sys_log` VALUES ('1471321013571743746', '1', 'admin', '机构管理-获取所有组织机构', '5', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 11:27:20');
INSERT INTO `sys_log` VALUES ('1471321016985907202', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:27:21');
INSERT INTO `sys_log` VALUES ('1471321017036238850', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:27:21');
INSERT INTO `sys_log` VALUES ('1471321070777856002', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 11:27:34');
INSERT INTO `sys_log` VALUES ('1471322743369822209', '1', 'admin', '机构管理-树型组织列表', '14', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:34:13');
INSERT INTO `sys_log` VALUES ('1471322743378210817', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:34:13');
INSERT INTO `sys_log` VALUES ('1471327498653540354', '1', 'admin', '菜单权限管理-获取所有菜单权限', '144', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 11:53:06');
INSERT INTO `sys_log` VALUES ('1471327683270025217', '1', 'admin', '机构管理-树型组织列表', '22', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 11:53:50');
INSERT INTO `sys_log` VALUES ('1471327683324551169', '1', 'admin', '用户管理-分页获取用户列表', '13', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 11:53:50');
INSERT INTO `sys_log` VALUES ('1471390278169526273', '1', 'admin', '用户管理-分页获取用户列表', '34', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:02:34');
INSERT INTO `sys_log` VALUES ('1471390278169526274', '1', 'admin', '机构管理-树型组织列表', '48', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 16:02:34');
INSERT INTO `sys_log` VALUES ('1471390283785699330', '1', 'admin', '机构管理-树型组织列表', '9', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 16:02:35');
INSERT INTO `sys_log` VALUES ('1471390283865391105', '1', 'admin', '用户管理-分页获取用户列表', '38', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:02:35');
INSERT INTO `sys_log` VALUES ('1471390286826569730', '1', 'admin', '机构管理-获取所有组织机构', '15', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 16:02:36');
INSERT INTO `sys_log` VALUES ('1471390290655969281', '1', 'admin', '用户管理-分页获取用户列表', '34', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:02:37');
INSERT INTO `sys_log` VALUES ('1471390290790187009', '1', 'admin', '机构管理-树型组织列表', '18', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 16:02:37');
INSERT INTO `sys_log` VALUES ('1471390461183787010', '1', 'admin', '用户管理-新增用户', '73', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1639641797645,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1471390460885991426\",\"password\":\"1d441272921aa4e3355221894e324b7f\",\"phone\":\"15823641210\",\"salt\":\"1d07b731f4174363b33c\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1639641797645,\"username\":\"pujun\"}]', '169.254.51.168', '2021-12-16 16:03:18');
INSERT INTO `sys_log` VALUES ('1471390461519331330', '1', 'admin', '用户管理-分页获取用户列表', '22', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-16 16:03:18');
INSERT INTO `sys_log` VALUES ('1471390519602053122', '1', 'admin', '角色管理-分页获取角色信息', '24', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:03:32');
INSERT INTO `sys_log` VALUES ('1471390527076302849', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 16:03:33');
INSERT INTO `sys_log` VALUES ('1471390527206326274', '1', 'admin', '用户管理-分页获取用户列表', '20', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:03:33');
INSERT INTO `sys_log` VALUES ('1471390531836837889', '1', 'admin', '机构管理-获取所有组织机构', '12', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 16:03:35');
INSERT INTO `sys_log` VALUES ('1471390566418874369', '1', 'admin', '菜单权限管理-获取所有菜单权限', '379', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:03:43');
INSERT INTO `sys_log` VALUES ('1471390581107326977', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '325', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"\"]', '169.254.51.168', '2021-12-16 16:03:46');
INSERT INTO `sys_log` VALUES ('1471390978924478465', '1', 'admin', '菜单权限管理-新增菜单权限', '61', 'com.company.project.controller.PermissionController.addPermission()', '[{\"createTime\":1639641921091,\"deleted\":1,\"icon\":\"layui-icon-username\",\"id\":\"1471390978656043009\",\"name\":\"客户管理\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"默认顶级菜单\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1639641921091,\"url\":\"\"}]', '169.254.51.168', '2021-12-16 16:05:21');
INSERT INTO `sys_log` VALUES ('1471390980686086145', '1', 'admin', '菜单权限管理-获取所有菜单权限', '364', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:05:22');
INSERT INTO `sys_log` VALUES ('1471391080934146049', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '349', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1471390978656043009\"]', '169.254.51.168', '2021-12-16 16:05:45');
INSERT INTO `sys_log` VALUES ('1471391091575095297', '1', 'admin', '菜单权限管理-更新菜单权限', '25', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"layui-icon-username\",\"id\":\"1471390978656043009\",\"name\":\"客户管理\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639641947990,\"url\":\"\"}]', '169.254.51.168', '2021-12-16 16:05:48');
INSERT INTO `sys_log` VALUES ('1471391092904689665', '1', 'admin', '菜单权限管理-获取所有菜单权限', '288', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:05:48');
INSERT INTO `sys_log` VALUES ('1471391220017266689', '1', 'admin', '菜单权限管理-获取所有菜单权限', '393', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:06:19');
INSERT INTO `sys_log` VALUES ('1471391302628278273', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '273', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"54\"]', '169.254.51.168', '2021-12-16 16:06:38');
INSERT INTO `sys_log` VALUES ('1471391373499432961', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '267', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1471390978656043009\"]', '169.254.51.168', '2021-12-16 16:06:55');
INSERT INTO `sys_log` VALUES ('1471391446576791554', '1', 'admin', '菜单权限管理-更新菜单权限', '13', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"layui-icon-username\",\"id\":\"1471390978656043009\",\"name\":\"客户管理\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"默认顶级菜单\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1639642032637,\"url\":\"\"}]', '169.254.51.168', '2021-12-16 16:07:13');
INSERT INTO `sys_log` VALUES ('1471391447671504898', '1', 'admin', '菜单权限管理-获取所有菜单权限', '232', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:07:13');
INSERT INTO `sys_log` VALUES ('1471391462041190402', '1', 'admin', '角色管理-分页获取角色信息', '10', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:07:16');
INSERT INTO `sys_log` VALUES ('1471391469242810370', '1', 'admin', '角色管理-查询角色详情', '281', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-16 16:07:18');
INSERT INTO `sys_log` VALUES ('1471391546719993858', '1', 'admin', '菜单权限管理-获取所有菜单权限', '190', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:07:37');
INSERT INTO `sys_log` VALUES ('1471391680405045250', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '239', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"54\"]', '169.254.51.168', '2021-12-16 16:08:08');
INSERT INTO `sys_log` VALUES ('1471391783299710978', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '221', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1471312082334076929\"]', '169.254.51.168', '2021-12-16 16:08:33');
INSERT INTO `sys_log` VALUES ('1471391807978995714', '1', 'admin', '菜单权限管理-更新菜单权限', '187', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1471312082334076929\",\"name\":\"客户\",\"orderNum\":112,\"perms\":\"\",\"pid\":\"1471390978656043009\",\"pidName\":\"客户管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639642118616,\"url\":\"/index/sysKehu\"}]', '169.254.51.168', '2021-12-16 16:08:39');
INSERT INTO `sys_log` VALUES ('1471391808947879938', '1', 'admin', '菜单权限管理-获取所有菜单权限', '178', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:08:39');
INSERT INTO `sys_log` VALUES ('1471391937843036161', '1', 'admin', '菜单权限管理-获取所有菜单权限', '327', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:09:10');
INSERT INTO `sys_log` VALUES ('1471391945535389697', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:09:12');
INSERT INTO `sys_log` VALUES ('1471391956855816193', '1', 'admin', '角色管理-查询角色详情', '402', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-16 16:09:14');
INSERT INTO `sys_log` VALUES ('1471392021318074370', '1', 'admin', '角色管理-更新角色信息', '330', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"17\",\"26\",\"40\",\"43\",\"44\",\"53\",\"36\",\"3\",\"19\",\"1311115974068449281\",\"13\",\"39\",\"24\",\"23\",\"25\",\"52\",\"10\",\"56\",\"57\",\"42\",\"41\",\"22\",\"5\",\"38\",\"12\",\"9\",\"1466047224172683265\",\"1466047224172683267\",\"1466047224172683268\",\"1466047224172683266\",\"1466047224172683269\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"54\",\"15\",\"1\",\"16\",\"20\",\"4\",\"59\",\"60\",\"61\",\"62\",\"63\",\"55\",\"18\",\"14\",\"45\",\"48\",\"47\",\"46\",\"49\",\"27\",\"30\",\"29\",\"28\",\"31\",\"35\",\"33\",\"34\",\"32\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1639642169423}]', '169.254.51.168', '2021-12-16 16:09:30');
INSERT INTO `sys_log` VALUES ('1471392021674590210', '1', 'admin', '角色管理-分页获取角色信息', '9', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-16 16:09:30');
INSERT INTO `sys_log` VALUES ('1471392112959422466', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 16:09:52');
INSERT INTO `sys_log` VALUES ('1471392113131388930', '1', 'admin', '用户管理-分页获取用户列表', '21', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:09:52');
INSERT INTO `sys_log` VALUES ('1471392121297698817', '1', 'admin', '机构管理-获取所有组织机构', '7', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 16:09:54');
INSERT INTO `sys_log` VALUES ('1471392182509371393', '1', 'admin', '菜单权限管理-获取所有菜单权限', '367', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-16 16:10:08');
INSERT INTO `sys_log` VALUES ('1471399001235521537', '1', 'admin', '机构管理-树型组织列表', '6', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 16:37:14');
INSERT INTO `sys_log` VALUES ('1471399001365544962', '1', 'admin', '用户管理-分页获取用户列表', '20', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:37:14');
INSERT INTO `sys_log` VALUES ('1471399157548843009', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 16:37:51');
INSERT INTO `sys_log` VALUES ('1471399190310551553', '1', 'admin', '角色管理-分页获取角色信息', '13', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 16:37:59');
INSERT INTO `sys_log` VALUES ('1471399205829476354', '1', 'admin', '角色管理-查询角色详情', '284', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-16 16:38:03');
INSERT INTO `sys_log` VALUES ('1471424695009148930', '1', 'admin', '机构管理-树型组织列表', '6', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-16 18:19:20');
INSERT INTO `sys_log` VALUES ('1471424695093035009', '1', 'admin', '用户管理-分页获取用户列表', '27', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-16 18:19:20');
INSERT INTO `sys_log` VALUES ('1471424702273683458', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-16 18:19:21');
INSERT INTO `sys_log` VALUES ('1472755257691021314', '1', 'admin', '菜单权限管理-获取所有菜单权限', '475', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 10:26:31');
INSERT INTO `sys_log` VALUES ('1472755259377131522', '1', 'admin', '角色管理-分页获取角色信息', '182', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 10:26:31');
INSERT INTO `sys_log` VALUES ('1472755270257156098', '1', 'admin', '机构管理-树型组织列表', '24', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-20 10:26:34');
INSERT INTO `sys_log` VALUES ('1472755270366208002', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 10:26:34');
INSERT INTO `sys_log` VALUES ('1472755278754816001', '1', 'admin', '机构管理-获取所有组织机构', '16', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-20 10:26:36');
INSERT INTO `sys_log` VALUES ('1472763100032868354', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-20 10:57:40');
INSERT INTO `sys_log` VALUES ('1472763100125143041', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 10:57:40');
INSERT INTO `sys_log` VALUES ('1472763118101929985', '1', 'admin', '机构管理-获取所有组织机构', '27', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-20 10:57:45');
INSERT INTO `sys_log` VALUES ('1472764676164186113', '1', 'admin', '菜单权限管理-获取所有菜单权限', '381', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:03:56');
INSERT INTO `sys_log` VALUES ('1472764693348249601', '1', 'admin', '角色管理-分页获取角色信息', '102', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:04:00');
INSERT INTO `sys_log` VALUES ('1472764707428528130', '1', 'admin', '角色管理-查询角色详情', '438', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-20 11:04:04');
INSERT INTO `sys_log` VALUES ('1472764744187408385', '1', 'admin', '角色管理-更新角色信息', '326', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"26\",\"17\",\"40\",\"43\",\"44\",\"53\",\"3\",\"36\",\"19\",\"1311115974068449281\",\"39\",\"13\",\"24\",\"25\",\"10\",\"52\",\"56\",\"57\",\"23\",\"42\",\"41\",\"5\",\"12\",\"22\",\"38\",\"9\",\"1466047224172683265\",\"1466047224172683267\",\"1466047224172683266\",\"1466047224172683268\",\"1466047224172683269\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"54\",\"15\",\"1\",\"16\",\"4\",\"20\",\"31\",\"35\",\"34\",\"32\",\"33\",\"27\",\"28\",\"29\",\"30\",\"59\",\"60\",\"61\",\"62\",\"63\",\"55\",\"18\",\"14\",\"45\",\"46\",\"47\",\"48\",\"49\",\"8\",\"58\",\"7\",\"21\",\"50\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"1472763471799197699\",\"2\",\"6\"],\"status\":1,\"updateTime\":1639969451994}]', '169.254.51.168', '2021-12-20 11:04:12');
INSERT INTO `sys_log` VALUES ('1472764744560701441', '1', 'admin', '角色管理-分页获取角色信息', '12', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-20 11:04:12');
INSERT INTO `sys_log` VALUES ('1472764777544708098', '1', 'admin', '菜单权限管理-获取所有菜单权限', '326', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:04:20');
INSERT INTO `sys_log` VALUES ('1472764827272376321', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '307', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1472763471799197698\"]', '169.254.51.168', '2021-12-20 11:04:32');
INSERT INTO `sys_log` VALUES ('1472765025478406145', '1', 'admin', '菜单权限管理-更新菜单权限', '294', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"layui-icon-refresh-1\",\"id\":\"1472763471799197698\",\"name\":\"工资\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"51\",\"pidName\":\"组织管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639969519084,\"url\":\"/index/gogzhi\"}]', '169.254.51.168', '2021-12-20 11:05:19');
INSERT INTO `sys_log` VALUES ('1472765027026104321', '1', 'admin', '菜单权限管理-获取所有菜单权限', '269', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:05:20');
INSERT INTO `sys_log` VALUES ('1472766983006236673', '1', 'admin', '菜单权限管理-获取所有菜单权限', '637', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:13:06');
INSERT INTO `sys_log` VALUES ('1472767138224844802', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '367', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1471390978656043009\"]', '169.254.51.168', '2021-12-20 11:13:43');
INSERT INTO `sys_log` VALUES ('1472767172727189505', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '332', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"\"]', '169.254.51.168', '2021-12-20 11:13:51');
INSERT INTO `sys_log` VALUES ('1472767335428435969', '1', 'admin', '菜单权限管理-新增菜单权限', '60', 'com.company.project.controller.PermissionController.addPermission()', '[{\"createTime\":1639970070037,\"deleted\":1,\"icon\":\"\",\"id\":\"1472767335092891650\",\"name\":\"工资管理\",\"orderNum\":112,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"默认顶级菜单\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1639970070037,\"url\":\"\"}]', '169.254.51.168', '2021-12-20 11:14:30');
INSERT INTO `sys_log` VALUES ('1472767337320067073', '1', 'admin', '菜单权限管理-获取所有菜单权限', '392', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:14:31');
INSERT INTO `sys_log` VALUES ('1472767426092511233', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '324', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1472763471799197698\"]', '169.254.51.168', '2021-12-20 11:14:52');
INSERT INTO `sys_log` VALUES ('1472767517129879554', '1', 'admin', '菜单权限管理-获取所有菜单权限', '312', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:15:13');
INSERT INTO `sys_log` VALUES ('1472767541578477569', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '298', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1472763471799197698\"]', '169.254.51.168', '2021-12-20 11:15:19');
INSERT INTO `sys_log` VALUES ('1472767567335698434', '1', 'admin', '菜单权限管理-更新菜单权限', '167', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"layui-icon-refresh-1\",\"id\":\"1472763471799197698\",\"name\":\"工资\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"1472767335092891650\",\"pidName\":\"工资管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1639970125242,\"url\":\"/index/gogzhi\"}]', '169.254.51.168', '2021-12-20 11:15:25');
INSERT INTO `sys_log` VALUES ('1472767568778539009', '1', 'admin', '菜单权限管理-获取所有菜单权限', '239', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:15:26');
INSERT INTO `sys_log` VALUES ('1472767654468169729', '1', 'admin', '菜单权限管理-获取所有菜单权限', '279', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:15:46');
INSERT INTO `sys_log` VALUES ('1472767663381065730', '1', 'admin', '机构管理-树型组织列表', '25', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-20 11:15:48');
INSERT INTO `sys_log` VALUES ('1472767663532060673', '1', 'admin', '用户管理-分页获取用户列表', '33', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:15:48');
INSERT INTO `sys_log` VALUES ('1472767663750164481', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-20 11:15:48');
INSERT INTO `sys_log` VALUES ('1472767663829856258', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:15:48');
INSERT INTO `sys_log` VALUES ('1472767667361460225', '1', 'admin', '角色管理-分页获取角色信息', '18', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:15:49');
INSERT INTO `sys_log` VALUES ('1472767675188031490', '1', 'admin', '角色管理-查询角色详情', '458', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-20 11:15:51');
INSERT INTO `sys_log` VALUES ('1472767726933159937', '1', 'admin', '角色管理-更新角色信息', '206', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"44\",\"43\",\"17\",\"26\",\"53\",\"3\",\"36\",\"19\",\"1311115974068449281\",\"39\",\"13\",\"41\",\"22\",\"38\",\"5\",\"12\",\"9\",\"24\",\"42\",\"52\",\"25\",\"56\",\"10\",\"57\",\"23\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"54\",\"15\",\"16\",\"20\",\"4\",\"1\",\"45\",\"46\",\"49\",\"48\",\"47\",\"31\",\"35\",\"34\",\"33\",\"32\",\"27\",\"30\",\"28\",\"29\",\"59\",\"63\",\"62\",\"61\",\"60\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197699\",\"1472763471799197701\",\"1472763471799197702\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1639970163259}]', '169.254.51.168', '2021-12-20 11:16:03');
INSERT INTO `sys_log` VALUES ('1472767727331618818', '1', 'admin', '角色管理-分页获取角色信息', '12', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-20 11:16:04');
INSERT INTO `sys_log` VALUES ('1472767779013832705', '1', 'admin', '菜单权限管理-获取所有菜单权限', '332', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:16:16');
INSERT INTO `sys_log` VALUES ('1472767892876603394', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '239', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1472767335092891650\"]', '169.254.51.168', '2021-12-20 11:16:43');
INSERT INTO `sys_log` VALUES ('1472767920504483842', '1', 'admin', '菜单权限管理-更新菜单权限', '304', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1472767335092891650\",\"name\":\"工资管理\",\"orderNum\":50,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1639970209296,\"url\":\"\"}]', '169.254.51.168', '2021-12-20 11:16:50');
INSERT INTO `sys_log` VALUES ('1472767922052182018', '1', 'admin', '菜单权限管理-获取所有菜单权限', '274', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-20 11:16:50');
INSERT INTO `sys_log` VALUES ('1472770359530008578', '1', 'admin', '角色管理-分页获取角色信息', '16', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:26:31');
INSERT INTO `sys_log` VALUES ('1472770363749478401', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-20 11:26:32');
INSERT INTO `sys_log` VALUES ('1472770363921444865', '1', 'admin', '用户管理-分页获取用户列表', '15', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:26:32');
INSERT INTO `sys_log` VALUES ('1472770364210851841', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-20 11:26:32');
INSERT INTO `sys_log` VALUES ('1472770364361846786', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:26:32');
INSERT INTO `sys_log` VALUES ('1472770367645986817', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-20 11:26:33');
INSERT INTO `sys_log` VALUES ('1472774889810337794', '1', 'admin', '角色管理-分页获取角色信息', '69', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-20 11:44:31');
INSERT INTO `sys_log` VALUES ('1472774917727625218', '1', 'admin', '角色管理-查询角色详情', '845', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-20 11:44:38');
INSERT INTO `sys_log` VALUES ('1472775033763045378', '1', 'admin', '角色管理-更新角色信息', '544', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"44\",\"43\",\"17\",\"26\",\"53\",\"3\",\"36\",\"19\",\"1311115974068449281\",\"39\",\"13\",\"41\",\"38\",\"5\",\"12\",\"22\",\"9\",\"24\",\"42\",\"52\",\"25\",\"56\",\"10\",\"57\",\"23\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197699\",\"1472763471799197701\",\"1472763471799197702\",\"54\",\"15\",\"16\",\"20\",\"4\",\"1\",\"45\",\"46\",\"49\",\"48\",\"47\",\"31\",\"35\",\"34\",\"33\",\"32\",\"27\",\"30\",\"28\",\"29\",\"59\",\"63\",\"62\",\"61\",\"60\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1639971905004}]', '169.254.51.168', '2021-12-20 11:45:06');
INSERT INTO `sys_log` VALUES ('1472775034836787201', '1', 'admin', '角色管理-分页获取角色信息', '42', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-20 11:45:06');
INSERT INTO `sys_log` VALUES ('1473200664824987649', '1', 'admin', '菜单权限管理-获取所有菜单权限', '346', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 15:56:24');
INSERT INTO `sys_log` VALUES ('1473200673096155137', '1', 'admin', '角色管理-分页获取角色信息', '71', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 15:56:26');
INSERT INTO `sys_log` VALUES ('1473200678515195905', '1', 'admin', '用户管理-分页获取用户列表', '67', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 15:56:27');
INSERT INTO `sys_log` VALUES ('1473200678582304770', '1', 'admin', '机构管理-树型组织列表', '78', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 15:56:27');
INSERT INTO `sys_log` VALUES ('1473204851889618946', '1', 'admin', '菜单权限管理-获取所有菜单权限', '387', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:13:02');
INSERT INTO `sys_log` VALUES ('1473204852204191745', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:13:02');
INSERT INTO `sys_log` VALUES ('1473206283300691969', '1', 'admin', '菜单权限管理-获取所有菜单权限', '574', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:18:43');
INSERT INTO `sys_log` VALUES ('1473206564558135298', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '380', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473204975382511617\"]', '169.254.51.168', '2021-12-21 16:19:51');
INSERT INTO `sys_log` VALUES ('1473206637165731841', '1', 'admin', '菜单权限管理-更新菜单权限', '109', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1473204975382511617\",\"name\":\"项目\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"51\",\"pidName\":\"组织管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640074807684,\"url\":\"/index/project\"}]', '169.254.51.168', '2021-12-21 16:20:08');
INSERT INTO `sys_log` VALUES ('1473206639812337666', '1', 'admin', '菜单权限管理-获取所有菜单权限', '567', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:20:08');
INSERT INTO `sys_log` VALUES ('1473206656010739714', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '347', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"\"]', '169.254.51.168', '2021-12-21 16:20:12');
INSERT INTO `sys_log` VALUES ('1473206786893996033', '1', 'admin', '菜单权限管理-新增菜单权限', '64', 'com.company.project.controller.PermissionController.addPermission()', '[{\"createTime\":1640074843427,\"deleted\":1,\"icon\":\"\",\"id\":\"1473206786541674498\",\"name\":\"项目管理\",\"orderNum\":18,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"默认顶级菜单\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1640074843427,\"url\":\"\"}]', '169.254.51.168', '2021-12-21 16:20:44');
INSERT INTO `sys_log` VALUES ('1473206789205057538', '1', 'admin', '菜单权限管理-获取所有菜单权限', '484', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:20:44');
INSERT INTO `sys_log` VALUES ('1473206883996327938', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '335', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473204975382511617\"]', '169.254.51.168', '2021-12-21 16:21:07');
INSERT INTO `sys_log` VALUES ('1473206908826607618', '1', 'admin', '菜单权限管理-更新菜单权限', '72', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1473204975382511617\",\"name\":\"项目\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"1473206786541674498\",\"pidName\":\"项目管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640074872494,\"url\":\"/index/project\"}]', '169.254.51.168', '2021-12-21 16:21:13');
INSERT INTO `sys_log` VALUES ('1473206911318024193', '1', 'admin', '菜单权限管理-获取所有菜单权限', '530', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:21:13');
INSERT INTO `sys_log` VALUES ('1473206999939473409', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '287', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473206786541674498\"]', '169.254.51.168', '2021-12-21 16:21:34');
INSERT INTO `sys_log` VALUES ('1473207015252877314', '1', 'admin', '菜单权限管理-更新菜单权限', '52', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1473206786541674498\",\"name\":\"项目管理\",\"orderNum\":5,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1640074897897,\"url\":\"\"}]', '169.254.51.168', '2021-12-21 16:21:38');
INSERT INTO `sys_log` VALUES ('1473207017492635649', '1', 'admin', '菜单权限管理-获取所有菜单权限', '475', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:21:38');
INSERT INTO `sys_log` VALUES ('1473207106319605762', '1', 'admin', '菜单权限管理-获取所有菜单权限', '290', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:22:00');
INSERT INTO `sys_log` VALUES ('1473207106898419713', '1', 'admin', '菜单权限管理-获取所有菜单权限', '292', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-21 16:22:00');
INSERT INTO `sys_log` VALUES ('1473207167409643522', '1', 'admin', '角色管理-分页获取角色信息', '83', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:22:14');
INSERT INTO `sys_log` VALUES ('1473207169997529090', '1', 'admin', '机构管理-树型组织列表', '27', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 16:22:15');
INSERT INTO `sys_log` VALUES ('1473207170089803778', '1', 'admin', '用户管理-分页获取用户列表', '19', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:22:15');
INSERT INTO `sys_log` VALUES ('1473207173009039362', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-21 16:22:16');
INSERT INTO `sys_log` VALUES ('1473207246866538498', '1', 'admin', '机构管理-获取所有组织机构', '9', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-21 16:22:33');
INSERT INTO `sys_log` VALUES ('1473207250695938050', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 16:22:34');
INSERT INTO `sys_log` VALUES ('1473207250851127298', '1', 'admin', '用户管理-分页获取用户列表', '20', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:22:34');
INSERT INTO `sys_log` VALUES ('1473207253774557185', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:22:35');
INSERT INTO `sys_log` VALUES ('1473207272221106177', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 16:22:39');
INSERT INTO `sys_log` VALUES ('1473207272351129601', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:22:39');
INSERT INTO `sys_log` VALUES ('1473207274762854402', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:22:40');
INSERT INTO `sys_log` VALUES ('1473207297730863105', '1', 'admin', '角色管理-查询角色详情', '407', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-21 16:22:45');
INSERT INTO `sys_log` VALUES ('1473207342656053250', '1', 'admin', '角色管理-更新角色信息', '471', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"44\",\"26\",\"17\",\"53\",\"36\",\"19\",\"3\",\"1311115974068449281\",\"39\",\"13\",\"41\",\"5\",\"22\",\"12\",\"38\",\"9\",\"24\",\"42\",\"52\",\"25\",\"23\",\"56\",\"57\",\"10\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511619\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511618\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076933\",\"1471312082334076931\",\"1471312082334076932\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197699\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"54\",\"15\",\"1\",\"4\",\"16\",\"20\",\"31\",\"35\",\"34\",\"33\",\"32\",\"45\",\"49\",\"48\",\"47\",\"46\",\"27\",\"28\",\"29\",\"30\",\"59\",\"63\",\"62\",\"61\",\"60\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640074975548}]', '169.254.51.168', '2021-12-21 16:22:56');
INSERT INTO `sys_log` VALUES ('1473207343205507074', '1', 'admin', '角色管理-分页获取角色信息', '13', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-21 16:22:56');
INSERT INTO `sys_log` VALUES ('1473210104353615874', '1', 'admin', '机构管理-树型组织列表', '63', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 16:33:54');
INSERT INTO `sys_log` VALUES ('1473210104471056385', '1', 'admin', '用户管理-分页获取用户列表', '107', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 16:33:54');
INSERT INTO `sys_log` VALUES ('1473210189535735809', '1', 'admin', '用户管理-更新用户信息', '72', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1471390460885991426\",\"password\":\"1d441272921aa4e3355221894e324b7f\",\"phone\":\"15823641210 7               \",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640075654696,\"username\":\"pujun\"}]', '169.254.51.168', '2021-12-21 16:34:15');
INSERT INTO `sys_log` VALUES ('1473210190374596610', '1', 'admin', '用户管理-分页获取用户列表', '67', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-21 16:34:15');
INSERT INTO `sys_log` VALUES ('1473217761093349377', '1', 'admin', '机构管理-树型组织列表', '21', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 17:04:20');
INSERT INTO `sys_log` VALUES ('1473217761177235457', '1', 'admin', '用户管理-分页获取用户列表', '42', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 17:04:20');
INSERT INTO `sys_log` VALUES ('1473239786021126146', '1', 'admin', '机构管理-获取所有组织机构', '15', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-21 18:31:51');
INSERT INTO `sys_log` VALUES ('1473256866913136642', '1', 'admin', '机构管理-树型组织列表', '19', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 19:39:44');
INSERT INTO `sys_log` VALUES ('1473256867122851842', '1', 'admin', '用户管理-分页获取用户列表', '71', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 19:39:44');
INSERT INTO `sys_log` VALUES ('1473263625044226050', '1', 'admin', '机构管理-树型组织列表', '20', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 20:06:35');
INSERT INTO `sys_log` VALUES ('1473263625178443777', '1', 'admin', '用户管理-分页获取用户列表', '43', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 20:06:35');
INSERT INTO `sys_log` VALUES ('1473263639447465986', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-21 20:06:38');
INSERT INTO `sys_log` VALUES ('1473263653146062850', '1', 'admin', '机构管理-树型组织列表', '13', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-21 20:06:41');
INSERT INTO `sys_log` VALUES ('1473264628627804161', '1', 'admin', '机构管理-树型组织列表', '17', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-21 20:10:34');
INSERT INTO `sys_log` VALUES ('1473264628669747202', '1', 'admin', '用户管理-分页获取用户列表', '30', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-21 20:10:34');
INSERT INTO `sys_log` VALUES ('1473264637515534338', '1', 'admin', '机构管理-获取所有组织机构', '7', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-21 20:10:36');
INSERT INTO `sys_log` VALUES ('1473264644780068866', '1', 'admin', '机构管理-树型组织列表', '13', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-21 20:10:38');
INSERT INTO `sys_log` VALUES ('1473264664128393218', '1', 'admin', '机构管理-更新组织信息', '26', 'com.company.project.controller.DeptController.updateDept()', '[{\"id\":\"1\",\"managerName\":\"小李1\",\"name\":\"总公司\",\"phone\":\"13888888888\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"updateTime\":1640088642499}]', '169.254.51.168', '2021-12-21 20:10:43');
INSERT INTO `sys_log` VALUES ('1473264664220667906', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-21 20:10:43');
INSERT INTO `sys_log` VALUES ('1473478608889724930', '1', 'admin', '角色管理-分页获取角色信息', '51', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:20:51');
INSERT INTO `sys_log` VALUES ('1473478617316081666', '1', 'admin', '角色管理-查询角色详情', '588', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 10:20:53');
INSERT INTO `sys_log` VALUES ('1473478898825183234', '1', 'admin', '菜单权限管理-获取所有菜单权限', '349', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 10:22:00');
INSERT INTO `sys_log` VALUES ('1473478940256518146', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '349', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473475318496026626\"]', '169.254.51.168', '2021-12-22 10:22:10');
INSERT INTO `sys_log` VALUES ('1473479385788071937', '1', 'admin', '菜单权限管理-获取所有菜单权限', '334', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 10:23:56');
INSERT INTO `sys_log` VALUES ('1473479421724868609', '1', 'admin', '菜单权限管理-获取所有菜单权限', '252', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 10:24:05');
INSERT INTO `sys_log` VALUES ('1473479522962784257', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:24:29');
INSERT INTO `sys_log` VALUES ('1473479532282527746', '1', 'admin', '角色管理-查询角色详情', '503', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 10:24:31');
INSERT INTO `sys_log` VALUES ('1473479739921547266', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:25:21');
INSERT INTO `sys_log` VALUES ('1473479740651356161', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:25:21');
INSERT INTO `sys_log` VALUES ('1473479749157404674', '1', 'admin', '角色管理-查询角色详情', '430', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 10:25:23');
INSERT INTO `sys_log` VALUES ('1473479788256706561', '1', 'admin', '角色管理-更新角色信息', '669', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"43\",\"44\",\"26\",\"17\",\"40\",\"53\",\"19\",\"3\",\"36\",\"1311115974068449281\",\"13\",\"39\",\"24\",\"42\",\"52\",\"10\",\"56\",\"57\",\"23\",\"25\",\"41\",\"22\",\"5\",\"12\",\"38\",\"9\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511618\",\"1473204975382511619\",\"1473204975382511620\",\"1473204975382511621\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197702\",\"1472763471799197699\",\"1472763471799197700\",\"1472763471799197701\",\"54\",\"15\",\"20\",\"1\",\"16\",\"4\",\"45\",\"46\",\"47\",\"48\",\"49\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"59\",\"60\",\"61\",\"62\",\"63\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"1473478364173058050\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1473478364173058051\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640139931508}]', '169.254.51.168', '2021-12-22 10:25:32');
INSERT INTO `sys_log` VALUES ('1473479788562890753', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-22 10:25:32');
INSERT INTO `sys_log` VALUES ('1473479854145028098', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:25:48');
INSERT INTO `sys_log` VALUES ('1473479870456676354', '1', 'admin', '角色管理-查询角色详情', '390', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 10:25:52');
INSERT INTO `sys_log` VALUES ('1473479909182685186', '1', 'admin', '角色管理-更新角色信息', '482', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"43\",\"44\",\"26\",\"17\",\"40\",\"53\",\"19\",\"3\",\"36\",\"1311115974068449281\",\"13\",\"39\",\"24\",\"42\",\"52\",\"10\",\"56\",\"57\",\"23\",\"25\",\"41\",\"22\",\"5\",\"12\",\"38\",\"9\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511618\",\"1473204975382511619\",\"1473204975382511620\",\"1473204975382511621\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197702\",\"1472763471799197699\",\"1472763471799197700\",\"1472763471799197701\",\"54\",\"15\",\"20\",\"1\",\"16\",\"4\",\"45\",\"46\",\"47\",\"48\",\"49\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"59\",\"60\",\"61\",\"62\",\"63\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"1473478364173058050\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1473478364173058051\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640139960460}]', '169.254.51.168', '2021-12-22 10:26:01');
INSERT INTO `sys_log` VALUES ('1473479909715361793', '1', 'admin', '角色管理-分页获取角色信息', '14', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-22 10:26:01');
INSERT INTO `sys_log` VALUES ('1473487045723926530', '1', 'admin', '机构管理-树型组织列表', '55', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 10:54:22');
INSERT INTO `sys_log` VALUES ('1473487045925253122', '1', 'admin', '用户管理-分页获取用户列表', '86', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:54:22');
INSERT INTO `sys_log` VALUES ('1473487073666379778', '1', 'admin', '机构管理-获取所有组织机构', '27', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 10:54:29');
INSERT INTO `sys_log` VALUES ('1473487077344784386', '1', 'admin', '角色管理-分页获取角色信息', '50', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:54:30');
INSERT INTO `sys_log` VALUES ('1473487079286747138', '1', 'admin', '机构管理-获取所有组织机构', '22', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 10:54:30');
INSERT INTO `sys_log` VALUES ('1473487083455885314', '1', 'admin', '机构管理-树型组织列表', '11', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 10:54:31');
INSERT INTO `sys_log` VALUES ('1473487083669794818', '1', 'admin', '用户管理-分页获取用户列表', '42', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 10:54:31');
INSERT INTO `sys_log` VALUES ('1473493465127059457', '1', 'admin', '菜单权限管理-获取所有菜单权限', '555', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:19:53');
INSERT INTO `sys_log` VALUES ('1473493521628528642', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '393', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"\"]', '169.254.51.168', '2021-12-22 11:20:06');
INSERT INTO `sys_log` VALUES ('1473493745428201474', '1', 'admin', '菜单权限管理-新增菜单权限', '31', 'com.company.project.controller.PermissionController.addPermission()', '[{\"createTime\":1640143259711,\"deleted\":1,\"icon\":\"\",\"id\":\"1473493745231069186\",\"name\":\"项目意见表\",\"orderNum\":22,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"默认顶级菜单\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1640143259711,\"url\":\"\"}]', '169.254.51.168', '2021-12-22 11:21:00');
INSERT INTO `sys_log` VALUES ('1473493747416301570', '1', 'admin', '菜单权限管理-获取所有菜单权限', '424', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:21:00');
INSERT INTO `sys_log` VALUES ('1473493851892219905', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '331', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473478364173058050\"]', '169.254.51.168', '2021-12-22 11:21:25');
INSERT INTO `sys_log` VALUES ('1473493938341019649', '1', 'admin', '菜单权限管理-更新菜单权限', '788', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1473478364173058050\",\"name\":\"意见\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"1473493745231069186\",\"pidName\":\"项目意见表\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640143304962,\"url\":\"/index/yijian\"}]', '169.254.51.168', '2021-12-22 11:21:46');
INSERT INTO `sys_log` VALUES ('1473493940127793153', '1', 'admin', '菜单权限管理-获取所有菜单权限', '342', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:21:46');
INSERT INTO `sys_log` VALUES ('1473494054384828418', '1', 'admin', '菜单权限管理-获取所有菜单权限', '434', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:22:13');
INSERT INTO `sys_log` VALUES ('1473494161033396225', '1', 'admin', '菜单权限管理-获取所有菜单权限', '505', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:22:39');
INSERT INTO `sys_log` VALUES ('1473494181321244674', '1', 'admin', '角色管理-分页获取角色信息', '48', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:22:44');
INSERT INTO `sys_log` VALUES ('1473494207913132033', '1', 'admin', '角色管理-查询角色详情', '347', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 11:22:50');
INSERT INTO `sys_log` VALUES ('1473494284975079426', '1', 'admin', '角色管理-更新角色信息', '499', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"26\",\"17\",\"44\",\"53\",\"36\",\"3\",\"19\",\"1311115974068449281\",\"13\",\"39\",\"41\",\"12\",\"5\",\"9\",\"22\",\"38\",\"24\",\"42\",\"25\",\"10\",\"23\",\"52\",\"56\",\"57\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511618\",\"1473204975382511619\",\"1473204975382511621\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"1472763471799197699\",\"54\",\"15\",\"4\",\"1\",\"20\",\"16\",\"27\",\"29\",\"28\",\"30\",\"59\",\"63\",\"60\",\"61\",\"62\",\"55\",\"18\",\"14\",\"31\",\"34\",\"32\",\"33\",\"35\",\"45\",\"46\",\"49\",\"47\",\"48\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640143387895}]', '169.254.51.168', '2021-12-22 11:23:08');
INSERT INTO `sys_log` VALUES ('1473494285486784514', '1', 'admin', '角色管理-分页获取角色信息', '14', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-22 11:23:09');
INSERT INTO `sys_log` VALUES ('1473495268946284546', '1', 'admin', '机构管理-获取所有组织机构', '31', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 11:27:03');
INSERT INTO `sys_log` VALUES ('1473495271148294145', '1', 'admin', '角色管理-分页获取角色信息', '18', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:27:04');
INSERT INTO `sys_log` VALUES ('1473495274872836098', '1', 'admin', '菜单权限管理-获取所有菜单权限', '499', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:27:04');
INSERT INTO `sys_log` VALUES ('1473496914740842497', '1', 'admin', '菜单权限管理-获取所有菜单权限', '322', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 11:33:35');
INSERT INTO `sys_log` VALUES ('1473496919140667393', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:33:36');
INSERT INTO `sys_log` VALUES ('1473497424340389890', '1', 'admin', '角色管理-查询角色详情', '279', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-22 11:35:37');
INSERT INTO `sys_log` VALUES ('1473497592653615105', '1', 'admin', '角色管理-分页获取角色信息', '12', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:36:17');
INSERT INTO `sys_log` VALUES ('1473497730667188225', '1', 'admin', '角色管理-查询角色详情', '243', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-22 11:36:50');
INSERT INTO `sys_log` VALUES ('1473497885642526722', '1', 'admin', '角色管理-分页获取角色信息', '19', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:37:27');
INSERT INTO `sys_log` VALUES ('1473497897579515905', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:37:30');
INSERT INTO `sys_log` VALUES ('1473497925991731202', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:37:36');
INSERT INTO `sys_log` VALUES ('1473498097647816706', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:38:17');
INSERT INTO `sys_log` VALUES ('1473498098419568641', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:38:18');
INSERT INTO `sys_log` VALUES ('1473498101695320066', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:38:18');
INSERT INTO `sys_log` VALUES ('1473498102538375169', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:38:19');
INSERT INTO `sys_log` VALUES ('1473498128043937794', '1', 'admin', '角色管理-分页获取角色信息', '10', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:38:25');
INSERT INTO `sys_log` VALUES ('1473498205365932034', '1', 'admin', '角色管理-查询角色详情', '268', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316791631532034\"]', '169.254.51.168', '2021-12-22 11:38:43');
INSERT INTO `sys_log` VALUES ('1473498231437725697', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:38:49');
INSERT INTO `sys_log` VALUES ('1473498314765963266', '1', 'admin', '机构管理-获取所有组织机构', '13', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 11:39:09');
INSERT INTO `sys_log` VALUES ('1473498316758257665', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 11:39:10');
INSERT INTO `sys_log` VALUES ('1473498603942252546', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 11:40:18');
INSERT INTO `sys_log` VALUES ('1473610524473315330', '1', 'admin', '机构管理-获取所有组织机构', '24', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 19:05:02');
INSERT INTO `sys_log` VALUES ('1473610595336081409', '1', 'admin', '机构管理-树型组织列表', '39', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-22 19:05:19');
INSERT INTO `sys_log` VALUES ('1473610606400655362', '1', 'admin', '机构管理-更新组织信息', '81', 'com.company.project.controller.DeptController.updateDept()', '[{\"id\":\"1\",\"managerName\":\"小李1\",\"name\":\"总公司\",\"phone\":\"13888888888\",\"pid\":\"0\",\"pidName\":\"\",\"status\":0,\"updateTime\":1640171121501}]', '169.254.51.168', '2021-12-22 19:05:22');
INSERT INTO `sys_log` VALUES ('1473610606698450946', '1', 'admin', '机构管理-获取所有组织机构', '19', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 19:05:22');
INSERT INTO `sys_log` VALUES ('1473611513590861825', '1', 'admin', '机构管理-树型组织列表', '14', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-22 19:08:58');
INSERT INTO `sys_log` VALUES ('1473611521920749570', '1', 'admin', '机构管理-更新组织信息', '64', 'com.company.project.controller.DeptController.updateDept()', '[{\"id\":\"1\",\"managerName\":\"小李1\",\"name\":\"总公司\",\"phone\":\"13888888888\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"updateTime\":1640171339787}]', '169.254.51.168', '2021-12-22 19:09:00');
INSERT INTO `sys_log` VALUES ('1473611522214350850', '1', 'admin', '机构管理-获取所有组织机构', '26', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 19:09:00');
INSERT INTO `sys_log` VALUES ('1473611528921042946', '1', 'admin', '角色管理-分页获取角色信息', '16', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:09:02');
INSERT INTO `sys_log` VALUES ('1473612488309362690', '1', 'admin', '机构管理-获取所有组织机构', '15', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 19:12:50');
INSERT INTO `sys_log` VALUES ('1473612494638567425', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:12:52');
INSERT INTO `sys_log` VALUES ('1473612540914323458', '1', 'admin', '角色管理-查询角色详情', '379', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 19:13:03');
INSERT INTO `sys_log` VALUES ('1473612576968560641', '1', 'admin', '机构管理-获取所有组织机构', '18', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 19:13:11');
INSERT INTO `sys_log` VALUES ('1473612590352584705', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 19:13:15');
INSERT INTO `sys_log` VALUES ('1473612590545522689', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:13:15');
INSERT INTO `sys_log` VALUES ('1473612594681106434', '1', 'admin', '机构管理-获取所有组织机构', '14', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 19:13:16');
INSERT INTO `sys_log` VALUES ('1473612597419986946', '1', 'admin', '角色管理-分页获取角色信息', '17', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:13:16');
INSERT INTO `sys_log` VALUES ('1473613079643312130', '1', 'admin', '暂停定时任务-', '67', 'com.company.project.controller.SysJobController.pause()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:15:11');
INSERT INTO `sys_log` VALUES ('1473613082537381890', '1', 'admin', '恢复定时任务-', '58', 'com.company.project.controller.SysJobController.resume()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:15:12');
INSERT INTO `sys_log` VALUES ('1473613091550941186', '1', 'admin', '暂停定时任务-', '57', 'com.company.project.controller.SysJobController.pause()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:15:14');
INSERT INTO `sys_log` VALUES ('1473613093820059649', '1', 'admin', '恢复定时任务-', '58', 'com.company.project.controller.SysJobController.resume()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:15:15');
INSERT INTO `sys_log` VALUES ('1473613098131804162', '1', 'admin', '暂停定时任务-', '9', 'com.company.project.controller.SysJobController.pause()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:15:16');
INSERT INTO `sys_log` VALUES ('1473613102636486658', '1', 'admin', '恢复定时任务-', '58', 'com.company.project.controller.SysJobController.resume()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:15:17');
INSERT INTO `sys_log` VALUES ('1473613727801692162', '1', 'admin', '系统操作日志管理-分页查询系统操作日志', '25', 'com.company.project.controller.SysLogController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:17:46');
INSERT INTO `sys_log` VALUES ('1473613736177717249', '1', 'admin', '系统操作日志管理-分页查询系统操作日志', '18', 'com.company.project.controller.SysLogController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:17:48');
INSERT INTO `sys_log` VALUES ('1473615649120079873', '1', 'admin', '暂停定时任务-', '48', 'com.company.project.controller.SysJobController.pause()', '[[\"1252884495040782337\"]]', '169.254.51.168', '2021-12-22 19:25:24');
INSERT INTO `sys_log` VALUES ('1473615918176292866', '1', 'admin', '系统操作日志管理-分页查询系统操作日志', '9', 'com.company.project.controller.SysLogController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:26:28');
INSERT INTO `sys_log` VALUES ('1473615930255888385', '1', 'admin', '菜单权限管理-获取所有菜单权限', '475', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 19:26:31');
INSERT INTO `sys_log` VALUES ('1473615968029790209', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '429', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"51\"]', '169.254.51.168', '2021-12-22 19:26:40');
INSERT INTO `sys_log` VALUES ('1473615978750431234', '1', 'admin', '菜单权限管理-更新菜单权限', '981', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"layui-icon-user\",\"id\":\"51\",\"name\":\"组织管理\",\"orderNum\":1,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"\",\"status\":0,\"target\":\"_self\",\"type\":1,\"updateTime\":1640172401467,\"url\":\"\"}]', '169.254.51.168', '2021-12-22 19:26:42');
INSERT INTO `sys_log` VALUES ('1473615981132795905', '1', 'admin', '菜单权限管理-获取所有菜单权限', '469', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 19:26:43');
INSERT INTO `sys_log` VALUES ('1473616019141578753', '1', 'admin', '菜单权限管理-获取所有菜单权限', '280', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 19:26:52');
INSERT INTO `sys_log` VALUES ('1473616043187523585', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '167', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"51\"]', '169.254.51.168', '2021-12-22 19:26:58');
INSERT INTO `sys_log` VALUES ('1473616055518777346', '1', 'admin', '菜单权限管理-更新菜单权限', '861', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"layui-icon-user\",\"id\":\"51\",\"name\":\"组织管理\",\"orderNum\":1,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1640172419891,\"url\":\"\"}]', '169.254.51.168', '2021-12-22 19:27:01');
INSERT INTO `sys_log` VALUES ('1473616056571547650', '1', 'admin', '菜单权限管理-获取所有菜单权限', '176', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 19:27:01');
INSERT INTO `sys_log` VALUES ('1473616825756569602', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '161', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"51\"]', '169.254.51.168', '2021-12-22 19:30:04');
INSERT INTO `sys_log` VALUES ('1473617119156523009', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '204', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"51\"]', '169.254.51.168', '2021-12-22 19:31:14');
INSERT INTO `sys_log` VALUES ('1473618270069346306', '1', 'admin', '菜单权限管理-获取所有菜单权限', '190', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 19:35:49');
INSERT INTO `sys_log` VALUES ('1473618272174886913', '1', 'admin', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 19:35:49');
INSERT INTO `sys_log` VALUES ('1473618281523990529', '1', 'admin', '角色管理-查询角色详情', '428', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-22 19:35:51');
INSERT INTO `sys_log` VALUES ('1473626077028044801', '1', 'admin', '角色管理-分页获取角色信息', '10', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:06:50');
INSERT INTO `sys_log` VALUES ('1473626079636901890', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 20:06:51');
INSERT INTO `sys_log` VALUES ('1473626082640023554', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 20:06:51');
INSERT INTO `sys_log` VALUES ('1473626082715521025', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:06:51');
INSERT INTO `sys_log` VALUES ('1473626086184210433', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:06:52');
INSERT INTO `sys_log` VALUES ('1473626087601885186', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:06:53');
INSERT INTO `sys_log` VALUES ('1473631672867094530', '1', 'admin', '机构管理-树型组织列表', '44', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 20:29:04');
INSERT INTO `sys_log` VALUES ('1473631673416548353', '1', 'admin', '用户管理-分页获取用户列表', '152', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:29:04');
INSERT INTO `sys_log` VALUES ('1473631676608413698', '1', 'admin', '机构管理-获取所有组织机构', '18', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 20:29:05');
INSERT INTO `sys_log` VALUES ('1473631680324567042', '1', 'admin', '机构管理-树型组织列表', '6', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 20:29:06');
INSERT INTO `sys_log` VALUES ('1473631680425230338', '1', 'admin', '用户管理-分页获取用户列表', '24', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:29:06');
INSERT INTO `sys_log` VALUES ('1473631743750832130', null, null, '用户管理-更新用户信息', '33', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1\",\"deptName\":\"总公司\",\"id\":\"1\",\"phone\":\"13888888888\",\"status\":2,\"updateTime\":1640176161110,\"username\":\"admin\"}]', '169.254.51.168', '2021-12-22 20:29:21');
INSERT INTO `sys_log` VALUES ('1473635923458654210', null, null, '用户管理-退出', '3', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-22 20:45:58');
INSERT INTO `sys_log` VALUES ('1473636384488161281', '1', 'admin', '角色管理-分页获取角色信息', '25', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:47:48');
INSERT INTO `sys_log` VALUES ('1473637085297639425', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 20:50:35');
INSERT INTO `sys_log` VALUES ('1473648918691708930', '1', 'admin', '菜单权限管理-获取所有菜单权限', '541', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-22 21:37:36');
INSERT INTO `sys_log` VALUES ('1473649483467325441', '1', 'admin', '机构管理-树型组织列表', '6', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 21:39:51');
INSERT INTO `sys_log` VALUES ('1473649483777703937', '1', 'admin', '用户管理-分页获取用户列表', '57', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:39:51');
INSERT INTO `sys_log` VALUES ('1473649485237321730', '1', 'admin', '机构管理-获取所有组织机构', '10', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 21:39:51');
INSERT INTO `sys_log` VALUES ('1473649500227764225', '1', 'admin', '角色管理-分页获取角色信息', '9', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:39:55');
INSERT INTO `sys_log` VALUES ('1473649540736352257', '1', 'admin', '角色管理-查询角色详情', '429', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-22 21:40:04');
INSERT INTO `sys_log` VALUES ('1473649854545788929', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 21:41:19');
INSERT INTO `sys_log` VALUES ('1473649854826807298', '1', 'admin', '用户管理-分页获取用户列表', '35', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:41:19');
INSERT INTO `sys_log` VALUES ('1473653808390340609', '1', 'admin', '机构管理-树型组织列表', '9', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 21:57:02');
INSERT INTO `sys_log` VALUES ('1473653808478420993', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:57:02');
INSERT INTO `sys_log` VALUES ('1473653810890145794', '1', 'admin', '机构管理-获取所有组织机构', '16', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 21:57:02');
INSERT INTO `sys_log` VALUES ('1473653814069428225', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 21:57:03');
INSERT INTO `sys_log` VALUES ('1473653814186868738', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:57:03');
INSERT INTO `sys_log` VALUES ('1473653928750088193', '1', 'admin', '用户管理-分页获取用户列表', '70', 'com.company.project.controller.UserController.pageInfo()', '[{\"endTime\":\" 2022-01-03 00:00:00\",\"nickName\":\"\",\"startTime\":\"2021-12-13 00:00:00 \",\"username\":\"\"}]', '169.254.51.168', '2021-12-22 21:57:30');
INSERT INTO `sys_log` VALUES ('1473654164738408449', '1', 'admin', '机构管理-获取所有组织机构', '9', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 21:58:27');
INSERT INTO `sys_log` VALUES ('1473654167452123137', '1', 'admin', '角色管理-分页获取角色信息', '16', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:58:27');
INSERT INTO `sys_log` VALUES ('1473654178743189506', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-22 21:58:30');
INSERT INTO `sys_log` VALUES ('1473654181184274433', '1', 'admin', '机构管理-树型组织列表', '10', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 21:58:31');
INSERT INTO `sys_log` VALUES ('1473654181347852289', '1', 'admin', '用户管理-分页获取用户列表', '22', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 21:58:31');
INSERT INTO `sys_log` VALUES ('1473655711702581249', '1', 'admin', '用户管理-查询用户详情', '7', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-22 22:04:36');
INSERT INTO `sys_log` VALUES ('1473655784452784130', '1', 'admin', '用户管理-更新用户信息', '67', 'com.company.project.controller.UserController.updateUserInfoById()', '[{\"email\":\"xxxxxx@163.com\",\"id\":\"1\",\"phone\":\"13888888888\",\"realName\":\"爱糖\",\"sex\":2,\"status\":1,\"updateId\":\"1\",\"updateTime\":1640181892808,\"username\":\"admin\"}]', '169.254.51.168', '2021-12-22 22:04:53');
INSERT INTO `sys_log` VALUES ('1473655967672565762', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-22 22:05:37');
INSERT INTO `sys_log` VALUES ('1473656112296361986', '1471390460885991426', 'pujun', '用户管理-查询用户详情', '9', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-22 22:06:11');
INSERT INTO `sys_log` VALUES ('1473656405755035650', '1471390460885991426', 'pujun', '用户管理-更新用户信息', '69', 'com.company.project.controller.UserController.updateUserInfoById()', '[{\"email\":\"3231784030@qq.com\",\"id\":\"1471390460885991426\",\"phone\":\"15826342104\",\"realName\":\"君仁堂\",\"sex\":1,\"status\":1,\"updateId\":\"1471390460885991426\",\"updateTime\":1640182040949,\"username\":\"pujun\"}]', '169.254.51.168', '2021-12-22 22:07:21');
INSERT INTO `sys_log` VALUES ('1473656581446041602', null, null, '用户管理-退出', '0', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-22 22:08:03');
INSERT INTO `sys_log` VALUES ('1473656615986135041', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:08:11');
INSERT INTO `sys_log` VALUES ('1473656616179073025', '1', 'admin', '用户管理-分页获取用户列表', '30', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:08:11');
INSERT INTO `sys_log` VALUES ('1473656712744534017', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-22 22:08:34');
INSERT INTO `sys_log` VALUES ('1473656766330961922', '1471390460885991426', 'pujun', '用户管理-查询用户详情', '5', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-22 22:08:47');
INSERT INTO `sys_log` VALUES ('1473656875248648194', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-22 22:09:13');
INSERT INTO `sys_log` VALUES ('1473656914368921602', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:09:22');
INSERT INTO `sys_log` VALUES ('1473656914482167810', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:09:22');
INSERT INTO `sys_log` VALUES ('1473656937898967042', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '6', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1471390460885991426\"]', '169.254.51.168', '2021-12-22 22:09:28');
INSERT INTO `sys_log` VALUES ('1473656992986955777', '1', 'admin', '用户管理-更新用户信息', '63', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1\",\"deptName\":\"总公司\",\"id\":\"1\",\"password\":\"2102b59a75ab87616b62d0b9432569d0\",\"phone\":\"13888888888\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640182180941,\"username\":\"admin\"}]', '169.254.51.168', '2021-12-22 22:09:41');
INSERT INTO `sys_log` VALUES ('1473656993536409601', '1', 'admin', '用户管理-分页获取用户列表', '25', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-22 22:09:41');
INSERT INTO `sys_log` VALUES ('1473658359096934401', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:15:07');
INSERT INTO `sys_log` VALUES ('1473658359138877442', '1', 'admin', '用户管理-分页获取用户列表', '7', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:15:07');
INSERT INTO `sys_log` VALUES ('1473658648482938881', '1', 'admin', '用户管理-更新用户信息', '59', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1471390460885991426\",\"nickName\":\"pj\",\"password\":\"1d441272921aa4e3355221894e324b7f\",\"phone\":\"15826342104\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640182575665,\"username\":\"pujun\"}]', '169.254.51.168', '2021-12-22 22:16:16');
INSERT INTO `sys_log` VALUES ('1473658648612962305', '1', 'admin', '用户管理-分页获取用户列表', '6', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-22 22:16:16');
INSERT INTO `sys_log` VALUES ('1473658942163910657', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:17:26');
INSERT INTO `sys_log` VALUES ('1473658946513403906', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:17:27');
INSERT INTO `sys_log` VALUES ('1473658946563735554', '1', 'admin', '用户管理-分页获取用户列表', '8', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:17:27');
INSERT INTO `sys_log` VALUES ('1473659236381753346', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:18:36');
INSERT INTO `sys_log` VALUES ('1473659236432084993', '1', 'admin', '用户管理-分页获取用户列表', '7', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:18:36');
INSERT INTO `sys_log` VALUES ('1473659647192858626', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:20:14');
INSERT INTO `sys_log` VALUES ('1473659647264161793', '1', 'admin', '用户管理-分页获取用户列表', '12', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:20:14');
INSERT INTO `sys_log` VALUES ('1473659647876530177', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:20:14');
INSERT INTO `sys_log` VALUES ('1473659647952027649', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:20:14');
INSERT INTO `sys_log` VALUES ('1473660097786937346', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:22:01');
INSERT INTO `sys_log` VALUES ('1473660097812103170', '1', 'admin', '用户管理-分页获取用户列表', '6', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:22:01');
INSERT INTO `sys_log` VALUES ('1473660098554494977', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:22:01');
INSERT INTO `sys_log` VALUES ('1473660098604826625', '1', 'admin', '用户管理-分页获取用户列表', '7', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:22:01');
INSERT INTO `sys_log` VALUES ('1473660606207885313', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:24:02');
INSERT INTO `sys_log` VALUES ('1473660606233051137', '1', 'admin', '用户管理-分页获取用户列表', '5', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:24:02');
INSERT INTO `sys_log` VALUES ('1473660607013191682', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-22 22:24:03');
INSERT INTO `sys_log` VALUES ('1473660607055134722', '1', 'admin', '用户管理-分页获取用户列表', '7', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-22 22:24:03');
INSERT INTO `sys_log` VALUES ('1473851422469713922', '1', 'admin', '机构管理-获取所有组织机构', '10', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:02:17');
INSERT INTO `sys_log` VALUES ('1473851427813257217', '1', 'admin', '机构管理-树型组织列表', '8', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-23 11:02:18');
INSERT INTO `sys_log` VALUES ('1473851427913920513', '1', 'admin', '用户管理-分页获取用户列表', '12', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:02:18');
INSERT INTO `sys_log` VALUES ('1473851449200013313', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:02:23');
INSERT INTO `sys_log` VALUES ('1473851451972448258', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-23 11:02:24');
INSERT INTO `sys_log` VALUES ('1473851452056334338', '1', 'admin', '用户管理-分页获取用户列表', '8', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:02:24');
INSERT INTO `sys_log` VALUES ('1473851458020634625', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-23 11:02:25');
INSERT INTO `sys_log` VALUES ('1473851458091937794', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:02:25');
INSERT INTO `sys_log` VALUES ('1473851464349839361', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:02:27');
INSERT INTO `sys_log` VALUES ('1473851466753175553', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:02:27');
INSERT INTO `sys_log` VALUES ('1473851469185871873', '1', 'admin', '菜单权限管理-获取所有菜单权限', '152', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-23 11:02:28');
INSERT INTO `sys_log` VALUES ('1473851565243822081', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:02:51');
INSERT INTO `sys_log` VALUES ('1473851569597509633', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-23 11:02:52');
INSERT INTO `sys_log` VALUES ('1473851569698172929', '1', 'admin', '用户管理-分页获取用户列表', '8', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:02:52');
INSERT INTO `sys_log` VALUES ('1473853839437393922', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:11:53');
INSERT INTO `sys_log` VALUES ('1473853873088294913', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-23 11:12:01');
INSERT INTO `sys_log` VALUES ('1473853873159598081', '1', 'admin', '用户管理-分页获取用户列表', '6', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:12:01');
INSERT INTO `sys_log` VALUES ('1473853875953004545', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:12:02');
INSERT INTO `sys_log` VALUES ('1473854382729785346', '1', 'admin', '菜单权限管理-获取所有菜单权限', '134', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-23 11:14:02');
INSERT INTO `sys_log` VALUES ('1473857058532159490', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-23 11:24:40');
INSERT INTO `sys_log` VALUES ('1473857058624434177', '1', 'admin', '用户管理-分页获取用户列表', '8', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:24:40');
INSERT INTO `sys_log` VALUES ('1473857086143262722', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"pujun\"}]', '169.254.51.168', '2021-12-23 11:24:47');
INSERT INTO `sys_log` VALUES ('1473857577468227585', '1', 'admin', '机构管理-获取所有组织机构', '7', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-23 11:26:44');
INSERT INTO `sys_log` VALUES ('1473857586355957761', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-23 11:26:46');
INSERT INTO `sys_log` VALUES ('1473857614881419266', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\",\"status\":1}]', '169.254.51.168', '2021-12-23 11:26:53');
INSERT INTO `sys_log` VALUES ('1473857629079138305', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\",\"status\":0}]', '169.254.51.168', '2021-12-23 11:26:56');
INSERT INTO `sys_log` VALUES ('1474361988003008513', '1', 'admin', '机构管理-获取所有组织机构', '22', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-24 20:51:05');
INSERT INTO `sys_log` VALUES ('1474362096358658050', '1', 'admin', '机构管理-树型组织列表', '12', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-24 20:51:31');
INSERT INTO `sys_log` VALUES ('1474362096455127041', '1', 'admin', '用户管理-分页获取用户列表', '21', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-24 20:51:31');
INSERT INTO `sys_log` VALUES ('1474364144001093633', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-24 20:59:39');
INSERT INTO `sys_log` VALUES ('1474364144131117057', '1', 'admin', '用户管理-分页获取用户列表', '15', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-24 20:59:39');
INSERT INTO `sys_log` VALUES ('1474364146031136769', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-24 20:59:39');
INSERT INTO `sys_log` VALUES ('1474364146098245634', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-24 20:59:39');
INSERT INTO `sys_log` VALUES ('1474370159081820162', '1', 'admin', '用户管理-查询用户详情', '5', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-24 21:23:33');
INSERT INTO `sys_log` VALUES ('1474370568508805122', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-24 21:25:11');
INSERT INTO `sys_log` VALUES ('1474370568596885505', '1', 'admin', '用户管理-分页获取用户列表', '17', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-24 21:25:11');
INSERT INTO `sys_log` VALUES ('1474370682593873922', '1', 'admin', '用户管理-查询用户详情', '3', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-24 21:25:38');
INSERT INTO `sys_log` VALUES ('1474383274108424193', '1', 'admin', '角色管理-分页获取角色信息', '40', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-24 22:15:40');
INSERT INTO `sys_log` VALUES ('1474383282564141057', '1', 'admin', '角色管理-查询角色详情', '666', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-24 22:15:42');
INSERT INTO `sys_log` VALUES ('1474383336154763266', '1', 'admin', '角色管理-更新角色信息', '138', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"26\",\"17\",\"44\",\"53\",\"36\",\"3\",\"19\",\"1311115974068449281\",\"13\",\"39\",\"41\",\"12\",\"5\",\"9\",\"22\",\"38\",\"24\",\"42\",\"25\",\"10\",\"23\",\"52\",\"56\",\"57\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511618\",\"1473204975382511619\",\"1473204975382511621\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"1472763471799197699\",\"54\",\"15\",\"4\",\"1\",\"20\",\"16\",\"27\",\"29\",\"28\",\"30\",\"59\",\"63\",\"60\",\"61\",\"62\",\"55\",\"18\",\"14\",\"31\",\"34\",\"32\",\"33\",\"35\",\"45\",\"46\",\"49\",\"47\",\"48\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640355354592}]', '169.254.51.168', '2021-12-24 22:15:55');
INSERT INTO `sys_log` VALUES ('1474383336322535426', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-24 22:15:55');
INSERT INTO `sys_log` VALUES ('1474657164961468418', '1', 'admin', '用户管理-查询用户详情', '28', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-25 16:24:01');
INSERT INTO `sys_log` VALUES ('1474657840294744066', '1', 'admin', '用户管理-查询用户详情', '27', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-25 16:26:42');
INSERT INTO `sys_log` VALUES ('1474680549523210242', '1', 'admin', '机构管理-树型组织列表', '51', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-25 17:56:56');
INSERT INTO `sys_log` VALUES ('1474680549938446337', '1', 'admin', '用户管理-分页获取用户列表', '106', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 17:56:56');
INSERT INTO `sys_log` VALUES ('1474680721028300801', '1', 'admin', '用户管理-新增用户', '87', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640426256759,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680720881500161\",\"nickName\":\"\",\"password\":\"c0bfe1c3fb6222a1cadc2adb455d2518\",\"phone\":\"\",\"salt\":\"5b52f0fe73a1449ba11e\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426256759,\"username\":\"用户1\"}]', '169.254.51.168', '2021-12-25 17:57:37');
INSERT INTO `sys_log` VALUES ('1474680721535811586', '1', 'admin', '用户管理-分页获取用户列表', '42', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:57:37');
INSERT INTO `sys_log` VALUES ('1474680801521188865', '1', 'admin', '用户管理-新增用户', '66', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640426275913,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680801219198977\",\"nickName\":\"\",\"password\":\"93c59155d1627169cee5e786a83f2b3e\",\"phone\":\"\",\"salt\":\"30c58af14dd14e698668\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426275913,\"username\":\"用户2\"}]', '169.254.51.168', '2021-12-25 17:57:56');
INSERT INTO `sys_log` VALUES ('1474680801986756610', '1', 'admin', '用户管理-分页获取用户列表', '38', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:57:56');
INSERT INTO `sys_log` VALUES ('1474680867132686337', '1', 'admin', '用户管理-新增用户', '68', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640426291551,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1471317503849517058\",\"deptName\":\"\",\"id\":\"1474680866813919233\",\"nickName\":\"\",\"password\":\"6cd6f2234f11ceeb6128f7476bd305b9\",\"phone\":\"\",\"salt\":\"171f9ce386884e469732\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426291551,\"username\":\"用户3\"}]', '169.254.51.168', '2021-12-25 17:58:12');
INSERT INTO `sys_log` VALUES ('1474680867841523713', '1', 'admin', '用户管理-分页获取用户列表', '74', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:58:12');
INSERT INTO `sys_log` VALUES ('1474680919569874946', '1', 'admin', '用户管理-新增用户', '70', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640426304046,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1471317503849517058\",\"deptName\":\"\",\"id\":\"1474680919221747714\",\"nickName\":\"\",\"password\":\"fd34daad5fb2643feb4c9f27c9b6fdfc\",\"phone\":\"\",\"salt\":\"f89c72a80a5044a794cc\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426304046,\"username\":\"主管1\"}]', '169.254.51.168', '2021-12-25 17:58:24');
INSERT INTO `sys_log` VALUES ('1474680920509399041', '1', 'admin', '用户管理-分页获取用户列表', '98', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:58:24');
INSERT INTO `sys_log` VALUES ('1474680970165764097', '1', 'admin', '角色管理-分页获取角色信息', '50', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 17:58:36');
INSERT INTO `sys_log` VALUES ('1474680988306128897', '1', 'admin', '角色管理-分页获取角色信息', '18', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 17:58:41');
INSERT INTO `sys_log` VALUES ('1474681002768089089', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-25 17:58:44');
INSERT INTO `sys_log` VALUES ('1474681003107827714', '1', 'admin', '用户管理-分页获取用户列表', '62', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 17:58:44');
INSERT INTO `sys_log` VALUES ('1474681096863105026', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '11', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680919221747714\"]', '169.254.51.168', '2021-12-25 17:59:06');
INSERT INTO `sys_log` VALUES ('1474681119264882689', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '106', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1474680919221747714\",[\"1471316791631532034\"]]', '169.254.51.168', '2021-12-25 17:59:12');
INSERT INTO `sys_log` VALUES ('1474681119671730177', '1', 'admin', '用户管理-分页获取用户列表', '43', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:59:12');
INSERT INTO `sys_log` VALUES ('1474681151049318401', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '10', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680866813919233\"]', '169.254.51.168', '2021-12-25 17:59:19');
INSERT INTO `sys_log` VALUES ('1474681188663836673', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '63', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1474680866813919233\",[\"1471316889581113345\"]]', '169.254.51.168', '2021-12-25 17:59:28');
INSERT INTO `sys_log` VALUES ('1474681189041324033', '1', 'admin', '用户管理-分页获取用户列表', '37', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:59:28');
INSERT INTO `sys_log` VALUES ('1474681295555674113', '1', 'admin', '用户管理-更新用户信息', '97', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680866813919233\",\"nickName\":\"\",\"password\":\"9a8c7edfdd9f91947cb3779721e587d1\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426393680,\"username\":\"前台\"}]', '169.254.51.168', '2021-12-25 17:59:54');
INSERT INTO `sys_log` VALUES ('1474681296558112769', '1', 'admin', '用户管理-分页获取用户列表', '73', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 17:59:54');
INSERT INTO `sys_log` VALUES ('1474681337804898305', '1', 'admin', '用户管理-更新用户信息', '22', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680866813919233\",\"nickName\":\"\",\"password\":\"cdf6d3849a542a531fd6bcd60a2fadfb\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426403827,\"username\":\"前台1\"}]', '169.254.51.168', '2021-12-25 18:00:04');
INSERT INTO `sys_log` VALUES ('1474681338333380610', '1', 'admin', '用户管理-分页获取用户列表', '45', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 18:00:04');
INSERT INTO `sys_log` VALUES ('1474681469661233154', '1', 'admin', '用户管理-更新用户信息', '70', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680801219198977\",\"nickName\":\"\",\"password\":\"1cab5bd5f6500fabf9acf7529817a3a8\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426435212,\"username\":\"员工2\"}]', '169.254.51.168', '2021-12-25 18:00:35');
INSERT INTO `sys_log` VALUES ('1474681470172938241', '1', 'admin', '用户管理-分页获取用户列表', '43', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 18:00:35');
INSERT INTO `sys_log` VALUES ('1474681497393971201', '1', 'admin', '用户管理-查询用户详情', '9', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-25 18:00:42');
INSERT INTO `sys_log` VALUES ('1474681530646413314', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-25 18:00:50');
INSERT INTO `sys_log` VALUES ('1474681530906460162', '1', 'admin', '用户管理-分页获取用户列表', '48', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 18:00:50');
INSERT INTO `sys_log` VALUES ('1474681698875752449', '1', 'admin', '用户管理-更新用户信息', '73', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680720881500161\",\"nickName\":\"\",\"password\":\"80ae3088bd7bb464ed719cb3831f46f5\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640426489855,\"username\":\"员工1\"}]', '169.254.51.168', '2021-12-25 18:01:30');
INSERT INTO `sys_log` VALUES ('1474681699802693633', '1', 'admin', '用户管理-分页获取用户列表', '84', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-25 18:01:30');
INSERT INTO `sys_log` VALUES ('1474681724637167618', '1', 'admin', '机构管理-获取所有组织机构', '59', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-25 18:01:36');
INSERT INTO `sys_log` VALUES ('1474681778517196801', '1', 'admin', '机构管理-获取所有组织机构', '15', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-25 18:01:49');
INSERT INTO `sys_log` VALUES ('1474681984331694082', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 18:02:38');
INSERT INTO `sys_log` VALUES ('1474681986961522690', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-25 18:02:39');
INSERT INTO `sys_log` VALUES ('1474681987162849282', '1', 'admin', '用户管理-分页获取用户列表', '37', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 18:02:39');
INSERT INTO `sys_log` VALUES ('1474681991248101378', '1', 'admin', '机构管理-获取所有组织机构', '11', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-25 18:02:40');
INSERT INTO `sys_log` VALUES ('1474682507042635777', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-25 18:04:43');
INSERT INTO `sys_log` VALUES ('1474682507281711105', '1', 'admin', '用户管理-分页获取用户列表', '41', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 18:04:43');
INSERT INTO `sys_log` VALUES ('1474682523975041026', '1', 'admin', '机构管理-获取所有组织机构', '7', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-25 18:04:47');
INSERT INTO `sys_log` VALUES ('1474682526512594945', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-25 18:04:47');
INSERT INTO `sys_log` VALUES ('1474682526747475970', '1', 'admin', '用户管理-分页获取用户列表', '41', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-25 18:04:47');
INSERT INTO `sys_log` VALUES ('1474682529612185602', '1', 'admin', '机构管理-获取所有组织机构', '16', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-25 18:04:48');
INSERT INTO `sys_log` VALUES ('1475071738185498626', '1', 'admin', '机构管理-树型组织列表', '15', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 19:51:23');
INSERT INTO `sys_log` VALUES ('1475071738319716354', '1', 'admin', '用户管理-分页获取用户列表', '43', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 19:51:23');
INSERT INTO `sys_log` VALUES ('1475072793212338177', '1', 'admin', '用户管理-查询用户详情', '9', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-26 19:55:34');
INSERT INTO `sys_log` VALUES ('1475072802204925953', '1', 'admin', '用户管理-更新用户信息', '25', 'com.company.project.controller.UserController.updateUserInfoById()', '[{\"email\":\"xxxxxx@163.com\",\"id\":\"1\",\"phone\":\"13888888888\",\"realName\":\"爱糖\",\"sex\":1,\"status\":1,\"updateId\":\"1\",\"updateTime\":1640519736210,\"username\":\"admin\"}]', '169.254.51.168', '2021-12-26 19:55:36');
INSERT INTO `sys_log` VALUES ('1475072864129630209', '1', 'admin', '用户管理-查询用户详情', '5', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-26 19:55:51');
INSERT INTO `sys_log` VALUES ('1475075308834242562', '1', 'admin', '用户管理-查询用户详情', '8', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-26 20:05:34');
INSERT INTO `sys_log` VALUES ('1475075318145597442', '1', 'admin', '用户管理-更新用户信息', '23', 'com.company.project.controller.UserController.updateUserInfoById()', '[{\"email\":\"xxxxxx@163.com\",\"id\":\"1\",\"phone\":\"13888888888\",\"realName\":\"爱糖\",\"sex\":2,\"status\":1,\"updateId\":\"1\",\"updateTime\":1640520336058,\"username\":\"admin\"}]', '169.254.51.168', '2021-12-26 20:05:36');
INSERT INTO `sys_log` VALUES ('1475084979620003841', '1', 'admin', '用户管理-查询用户详情', '10', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-26 20:44:00');
INSERT INTO `sys_log` VALUES ('1475101819893170178', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 21:50:55');
INSERT INTO `sys_log` VALUES ('1475101820052553730', '1', 'admin', '用户管理-分页获取用户列表', '30', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:50:55');
INSERT INTO `sys_log` VALUES ('1475101826495004673', '1', 'admin', '角色管理-分页获取角色信息', '19', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:50:56');
INSERT INTO `sys_log` VALUES ('1475101834040557570', '1', 'admin', '菜单权限管理-获取所有菜单权限', '153', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:50:58');
INSERT INTO `sys_log` VALUES ('1475101840193601538', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:50:59');
INSERT INTO `sys_log` VALUES ('1475101883764031489', '1', 'admin', '菜单权限管理-获取所有菜单权限', '128', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:51:10');
INSERT INTO `sys_log` VALUES ('1475101934754185218', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '116', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"27\"]', '169.254.51.168', '2021-12-26 21:51:22');
INSERT INTO `sys_log` VALUES ('1475102076970450945', '1', 'admin', '菜单权限管理-更新菜单权限', '234', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"27\",\"name\":\"资料上传\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"54\",\"pidName\":\"系统管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640526715645,\"url\":\"/index/sysFiles\"}]', '169.254.51.168', '2021-12-26 21:51:56');
INSERT INTO `sys_log` VALUES ('1475102077436018690', '1', 'admin', '菜单权限管理-获取所有菜单权限', '100', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:51:56');
INSERT INTO `sys_log` VALUES ('1475102101708455938', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '92', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"\"]', '169.254.51.168', '2021-12-26 21:52:02');
INSERT INTO `sys_log` VALUES ('1475102184806006786', '1', 'admin', '菜单权限管理-新增菜单权限', '55', 'com.company.project.controller.PermissionController.addPermission()', '[{\"createTime\":1640526741534,\"deleted\":1,\"icon\":\"\",\"id\":\"1475102184575320066\",\"name\":\"资料管理\",\"orderNum\":20,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"默认顶级菜单\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1640526741534,\"url\":\"\"}]', '169.254.51.168', '2021-12-26 21:52:22');
INSERT INTO `sys_log` VALUES ('1475102185229631490', '1', 'admin', '菜单权限管理-获取所有菜单权限', '90', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:52:22');
INSERT INTO `sys_log` VALUES ('1475102221342588930', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '91', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"27\"]', '169.254.51.168', '2021-12-26 21:52:30');
INSERT INTO `sys_log` VALUES ('1475102264409702402', '1', 'admin', '菜单权限管理-更新菜单权限', '201', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"27\",\"name\":\"资料上传\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"1475102184575320066\",\"pidName\":\"资料管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640526760368,\"url\":\"/index/sysFiles\"}]', '169.254.51.168', '2021-12-26 21:52:41');
INSERT INTO `sys_log` VALUES ('1475102264841715713', '1', 'admin', '菜单权限管理-获取所有菜单权限', '90', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:52:41');
INSERT INTO `sys_log` VALUES ('1475102338292367362', '1', 'admin', '菜单权限管理-获取所有菜单权限', '88', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:52:58');
INSERT INTO `sys_log` VALUES ('1475102714110406658', '1', 'admin', '角色管理-分页获取角色信息', '36', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:54:28');
INSERT INTO `sys_log` VALUES ('1475102721081339906', '1', 'admin', '角色管理-查询角色详情', '198', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-26 21:54:29');
INSERT INTO `sys_log` VALUES ('1475102750693126146', '1', 'admin', '角色管理-更新角色信息', '158', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"17\",\"44\",\"26\",\"53\",\"36\",\"19\",\"3\",\"1311115974068449281\",\"13\",\"39\",\"41\",\"38\",\"12\",\"5\",\"22\",\"9\",\"24\",\"42\",\"10\",\"25\",\"52\",\"56\",\"57\",\"23\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511618\",\"1473204975382511619\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197699\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"54\",\"15\",\"16\",\"4\",\"1\",\"20\",\"59\",\"63\",\"60\",\"61\",\"62\",\"55\",\"18\",\"14\",\"31\",\"34\",\"33\",\"32\",\"35\",\"45\",\"46\",\"49\",\"47\",\"48\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640526876352}]', '169.254.51.168', '2021-12-26 21:54:37');
INSERT INTO `sys_log` VALUES ('1475102750839926785', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-26 21:54:37');
INSERT INTO `sys_log` VALUES ('1475103584462041090', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:57:55');
INSERT INTO `sys_log` VALUES ('1475103587570020353', '1', 'admin', '机构管理-获取所有组织机构', '7', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-26 21:57:56');
INSERT INTO `sys_log` VALUES ('1475103589872693249', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:57:57');
INSERT INTO `sys_log` VALUES ('1475103593823727618', '1', 'admin', '机构管理-获取所有组织机构', '15', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-26 21:57:58');
INSERT INTO `sys_log` VALUES ('1475103598286467074', '1', 'admin', '菜单权限管理-获取所有菜单权限', '146', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:57:59');
INSERT INTO `sys_log` VALUES ('1475103601566412801', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:57:59');
INSERT INTO `sys_log` VALUES ('1475103604745695234', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-26 21:58:00');
INSERT INTO `sys_log` VALUES ('1475103606394056706', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 21:58:01');
INSERT INTO `sys_log` VALUES ('1475103606494720001', '1', 'admin', '用户管理-分页获取用户列表', '15', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:58:01');
INSERT INTO `sys_log` VALUES ('1475103617576071169', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-26 21:58:03');
INSERT INTO `sys_log` VALUES ('1475103662413180929', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-26 21:58:14');
INSERT INTO `sys_log` VALUES ('1475103667035303938', '1', 'admin', '菜单权限管理-获取所有菜单权限', '122', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-26 21:58:15');
INSERT INTO `sys_log` VALUES ('1475103669585440769', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-26 21:58:16');
INSERT INTO `sys_log` VALUES ('1475103671309299714', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 21:58:16');
INSERT INTO `sys_log` VALUES ('1475103671384797185', '1', 'admin', '用户管理-分页获取用户列表', '13', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:58:16');
INSERT INTO `sys_log` VALUES ('1475103689994924033', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 21:58:20');
INSERT INTO `sys_log` VALUES ('1475103703156649986', '1', 'admin', '角色管理-查询角色详情', '105', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-26 21:58:24');
INSERT INTO `sys_log` VALUES ('1475104167218638849', '1', 'admin', '角色管理-更新角色信息', '31', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.查看项目 2.查看意见 3.查看项目信息\",\"id\":\"1471316889581113345\",\"name\":\"普通员工\",\"permissions\":[\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511621\",\"1473204975382511618\",\"1473204975382511619\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197702\"],\"status\":1,\"updateTime\":1640527214204}]', '169.254.51.168', '2021-12-26 22:00:14');
INSERT INTO `sys_log` VALUES ('1475104167352856578', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-26 22:00:14');
INSERT INTO `sys_log` VALUES ('1475104193357541378', '1', 'admin', '角色管理-查询角色详情', '98', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316791631532034\"]', '169.254.51.168', '2021-12-26 22:00:20');
INSERT INTO `sys_log` VALUES ('1475104915268562945', '1', 'admin', '角色管理-更新角色信息', '20', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.审核员工项目 2.修改添加意见（驳回项目请求）\",\"id\":\"1471316791631532034\",\"name\":\"主管\",\"permissions\":[\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511618\",\"1473204975382511619\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\"],\"status\":1,\"updateTime\":1640527392572}]', '169.254.51.168', '2021-12-26 22:03:13');
INSERT INTO `sys_log` VALUES ('1475104915402780673', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-26 22:03:13');
INSERT INTO `sys_log` VALUES ('1475104932624592897', '1', 'admin', '角色管理-查询角色详情', '90', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316361434353665\"]', '169.254.51.168', '2021-12-26 22:03:17');
INSERT INTO `sys_log` VALUES ('1475105173495083009', '1', 'admin', '角色管理-更新角色信息', '25', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.员工信息的建立,客户信息的建立。\",\"id\":\"1471316361434353665\",\"name\":\"前台\",\"permissions\":[\"51\",\"24\",\"42\",\"10\",\"25\",\"52\",\"56\",\"57\",\"23\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\"],\"status\":1,\"updateTime\":1640527454122}]', '169.254.51.168', '2021-12-26 22:04:14');
INSERT INTO `sys_log` VALUES ('1475105173608329218', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-26 22:04:14');
INSERT INTO `sys_log` VALUES ('1475105209083752450', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 22:04:23');
INSERT INTO `sys_log` VALUES ('1475105209176027137', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:04:23');
INSERT INTO `sys_log` VALUES ('1475105267653013506', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:04:37');
INSERT INTO `sys_log` VALUES ('1475105469386452994', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 22:05:25');
INSERT INTO `sys_log` VALUES ('1475105469457756161', '1', 'admin', '用户管理-分页获取用户列表', '13', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:05:25');
INSERT INTO `sys_log` VALUES ('1475105572759269378', '1', 'admin', '用户管理-更新用户信息', '20', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680866813919233\",\"nickName\":\"\",\"password\":\"6cd6f2234f11ceeb6128f7476bd305b9\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640527549320,\"username\":\"前台1\"}]', '169.254.51.168', '2021-12-26 22:05:49');
INSERT INTO `sys_log` VALUES ('1475105572927041537', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:05:49');
INSERT INTO `sys_log` VALUES ('1475105624642809857', '1', 'admin', '用户管理-更新用户信息', '17', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680801219198977\",\"nickName\":\"\",\"password\":\"93c59155d1627169cee5e786a83f2b3e\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640527561694,\"username\":\"员工2\"}]', '169.254.51.168', '2021-12-26 22:06:02');
INSERT INTO `sys_log` VALUES ('1475105624802193410', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:06:02');
INSERT INTO `sys_log` VALUES ('1475105692292739073', '1', 'admin', '用户管理-更新用户信息', '18', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680720881500161\",\"nickName\":\"\",\"password\":\"c0bfe1c3fb6222a1cadc2adb455d2518\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640527577821,\"username\":\"员工1\"}]', '169.254.51.168', '2021-12-26 22:06:18');
INSERT INTO `sys_log` VALUES ('1475105692439539713', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:06:18');
INSERT INTO `sys_log` VALUES ('1475105719840927745', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:06:24');
INSERT INTO `sys_log` VALUES ('1475105921696002050', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:07:13');
INSERT INTO `sys_log` VALUES ('1475105985558474753', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 22:07:28');
INSERT INTO `sys_log` VALUES ('1475105985629777921', '1', 'admin', '用户管理-分页获取用户列表', '12', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:07:28');
INSERT INTO `sys_log` VALUES ('1475106017942695937', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '2', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680866813919233\"]', '169.254.51.168', '2021-12-26 22:07:35');
INSERT INTO `sys_log` VALUES ('1475106059839598593', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '54', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1474680866813919233\",[]]', '169.254.51.168', '2021-12-26 22:07:45');
INSERT INTO `sys_log` VALUES ('1475106059965427713', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:07:45');
INSERT INTO `sys_log` VALUES ('1475106083206066177', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680866813919233\"]', '169.254.51.168', '2021-12-26 22:07:51');
INSERT INTO `sys_log` VALUES ('1475106112700411906', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '19', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1474680866813919233\",[\"1471316361434353665\"]]', '169.254.51.168', '2021-12-26 22:07:58');
INSERT INTO `sys_log` VALUES ('1475106112817852417', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:07:58');
INSERT INTO `sys_log` VALUES ('1475106139334242305', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680801219198977\"]', '169.254.51.168', '2021-12-26 22:08:04');
INSERT INTO `sys_log` VALUES ('1475106161304006657', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '16', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1474680801219198977\",[\"1471316889581113345\"]]', '169.254.51.168', '2021-12-26 22:08:10');
INSERT INTO `sys_log` VALUES ('1475106161421447170', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:08:10');
INSERT INTO `sys_log` VALUES ('1475106199434424322', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680720881500161\"]', '169.254.51.168', '2021-12-26 22:08:19');
INSERT INTO `sys_log` VALUES ('1475106217750949890', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '18', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1474680720881500161\",[\"1471316889581113345\"]]', '169.254.51.168', '2021-12-26 22:08:23');
INSERT INTO `sys_log` VALUES ('1475106217872584706', '1', 'admin', '用户管理-分页获取用户列表', '10', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:08:23');
INSERT INTO `sys_log` VALUES ('1475106238550503426', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '2', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1471390460885991426\"]', '169.254.51.168', '2021-12-26 22:08:28');
INSERT INTO `sys_log` VALUES ('1475106257349373954', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '2', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1471390460885991426\"]', '169.254.51.168', '2021-12-26 22:08:33');
INSERT INTO `sys_log` VALUES ('1475106276194381825', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '17', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1471390460885991426\",[\"1\"]]', '169.254.51.168', '2021-12-26 22:08:37');
INSERT INTO `sys_log` VALUES ('1475106276307628034', '1', 'admin', '用户管理-分页获取用户列表', '9', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-26 22:08:37');
INSERT INTO `sys_log` VALUES ('1475106332498718722', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680919221747714\"]', '169.254.51.168', '2021-12-26 22:08:50');
INSERT INTO `sys_log` VALUES ('1475106345480089601', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '4', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680866813919233\"]', '169.254.51.168', '2021-12-26 22:08:54');
INSERT INTO `sys_log` VALUES ('1475106355106017281', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680801219198977\"]', '169.254.51.168', '2021-12-26 22:08:56');
INSERT INTO `sys_log` VALUES ('1475106368414543874', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1474680720881500161\"]', '169.254.51.168', '2021-12-26 22:08:59');
INSERT INTO `sys_log` VALUES ('1475106376962535425', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '3', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1471390460885991426\"]', '169.254.51.168', '2021-12-26 22:09:01');
INSERT INTO `sys_log` VALUES ('1475106395677519873', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:09:06');
INSERT INTO `sys_log` VALUES ('1475106496240152577', '1474680866813919233', '前台1', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 22:09:30');
INSERT INTO `sys_log` VALUES ('1475106496319844354', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '11', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:09:30');
INSERT INTO `sys_log` VALUES ('1475106608513282049', '1474680866813919233', '前台1', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 22:09:56');
INSERT INTO `sys_log` VALUES ('1475106608572002306', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '8', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:09:56');
INSERT INTO `sys_log` VALUES ('1475106670710616065', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:10:11');
INSERT INTO `sys_log` VALUES ('1475106936063258625', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:11:14');
INSERT INTO `sys_log` VALUES ('1475106993453920258', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-26 22:11:28');
INSERT INTO `sys_log` VALUES ('1475106993516834818', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:11:28');
INSERT INTO `sys_log` VALUES ('1475107008918319106', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:11:32');
INSERT INTO `sys_log` VALUES ('1475107047761768449', '1', 'admin', '角色管理-查询角色详情', '90', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-26 22:11:41');
INSERT INTO `sys_log` VALUES ('1475107059510013953', '1', 'admin', '角色管理-分页获取角色信息', '2', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:11:44');
INSERT INTO `sys_log` VALUES ('1475107068922032130', '1', 'admin', '角色管理-查询角色详情', '87', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-26 22:11:46');
INSERT INTO `sys_log` VALUES ('1475107341702787073', '1', 'admin', '角色管理-更新角色信息', '59', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.查看项目 2.查看意见 3.查看项目信息\",\"id\":\"1471316889581113345\",\"name\":\"普通员工\",\"permissions\":[\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511621\",\"1473204975382511618\",\"1473204975382511619\",\"1475102184575320066\",\"27\",\"28\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058054\"],\"status\":1,\"updateTime\":1640527971030}]', '169.254.51.168', '2021-12-26 22:12:51');
INSERT INTO `sys_log` VALUES ('1475107341816033281', '1', 'admin', '角色管理-分页获取角色信息', '2', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-26 22:12:51');
INSERT INTO `sys_log` VALUES ('1475107357049745409', null, null, '用户管理-退出', '0', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:12:55');
INSERT INTO `sys_log` VALUES ('1475107648499347457', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:14:04');
INSERT INTO `sys_log` VALUES ('1475107685203701761', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-26 22:14:13');
INSERT INTO `sys_log` VALUES ('1475107697975357441', '1', 'admin', '角色管理-查询角色详情', '87', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-26 22:14:16');
INSERT INTO `sys_log` VALUES ('1475107873020440578', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-26 22:14:58');
INSERT INTO `sys_log` VALUES ('1475107961562198018', '1474680720881500161', '员工1', '用户管理-查询用户详情', '3', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-26 22:15:19');
INSERT INTO `sys_log` VALUES ('1475352935184596993', '1', 'admin', '机构管理-获取所有组织机构', '28', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-27 14:28:45');
INSERT INTO `sys_log` VALUES ('1475383658167803905', '1', 'admin', '用户管理-查询用户详情', '23', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-27 16:30:50');
INSERT INTO `sys_log` VALUES ('1475383816825741314', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 16:31:28');
INSERT INTO `sys_log` VALUES ('1475386795083571202', '1474680720881500161', '员工1', '用户管理-查询用户详情', '3', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-27 16:43:18');
INSERT INTO `sys_log` VALUES ('1475386838511394817', '1474680720881500161', '员工1', '用户管理-查询用户详情', '4', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-27 16:43:28');
INSERT INTO `sys_log` VALUES ('1475406832712421377', '1', 'admin', '用户管理-查询用户详情', '12', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-27 18:02:55');
INSERT INTO `sys_log` VALUES ('1475406856070500353', '1', 'admin', '机构管理-树型组织列表', '13', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-27 18:03:01');
INSERT INTO `sys_log` VALUES ('1475406856225689601', '1', 'admin', '用户管理-分页获取用户列表', '41', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-27 18:03:01');
INSERT INTO `sys_log` VALUES ('1475407757439049730', null, null, '用户管理-退出', '6', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 18:06:36');
INSERT INTO `sys_log` VALUES ('1475442537937412097', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 20:24:48');
INSERT INTO `sys_log` VALUES ('1475443729006501890', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 20:29:32');
INSERT INTO `sys_log` VALUES ('1475444143739281410', null, null, '用户管理-退出', '4', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 20:31:11');
INSERT INTO `sys_log` VALUES ('1475444207358484481', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 20:31:26');
INSERT INTO `sys_log` VALUES ('1475446751111569410', '1471390460885991426', 'pujun', '角色管理-分页获取角色信息', '17', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-27 20:41:33');
INSERT INTO `sys_log` VALUES ('1475446845462437889', '1471390460885991426', 'pujun', '角色管理-分页获取角色信息', '6', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-27 20:41:55');
INSERT INTO `sys_log` VALUES ('1475448721427816449', '1471390460885991426', 'pujun', '机构管理-树型组织列表', '12', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-27 20:49:22');
INSERT INTO `sys_log` VALUES ('1475448721591394305', '1471390460885991426', 'pujun', '用户管理-分页获取用户列表', '31', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-27 20:49:22');
INSERT INTO `sys_log` VALUES ('1475448817905197057', '1471390460885991426', 'pujun', '用户管理-新增用户', '24', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1471390460885991426\",\"createTime\":1640609385336,\"createWhere\":1,\"deleted\":1,\"deptId\":\"\",\"deptName\":\"\",\"id\":\"1475448817808728065\",\"nickName\":\"\",\"password\":\"6798f4d2e4ee4ba8ff25fb894f20bbc5\",\"phone\":\"\",\"salt\":\"1b3438d86d0b44c698cb\",\"status\":1,\"updateId\":\"1471390460885991426\",\"updateTime\":1640609385336,\"username\":\"员工4\"}]', '169.254.51.168', '2021-12-27 20:49:45');
INSERT INTO `sys_log` VALUES ('1475448818165243905', '1471390460885991426', 'pujun', '用户管理-分页获取用户列表', '27', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-27 20:49:45');
INSERT INTO `sys_log` VALUES ('1475448928030842881', '1471390460885991426', 'pujun', '用户管理-赋予角色-获取所有角色接口', '15', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1475448817808728065\"]', '169.254.51.168', '2021-12-27 20:50:12');
INSERT INTO `sys_log` VALUES ('1475448948415160321', '1471390460885991426', 'pujun', '用户管理-赋予角色-用户赋予角色接口', '35', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1475448817808728065\",[\"1471316889581113345\"]]', '169.254.51.168', '2021-12-27 20:50:16');
INSERT INTO `sys_log` VALUES ('1475448948620681217', '1471390460885991426', 'pujun', '用户管理-分页获取用户列表', '18', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-27 20:50:17');
INSERT INTO `sys_log` VALUES ('1475449222265462785', '1471390460885991426', 'pujun', '机构管理-树型组织列表', '41', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-27 20:51:22');
INSERT INTO `sys_log` VALUES ('1475449222445817858', '1471390460885991426', 'pujun', '用户管理-分页获取用户列表', '88', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-27 20:51:22');
INSERT INTO `sys_log` VALUES ('1475450222573412354', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 20:55:20');
INSERT INTO `sys_log` VALUES ('1475450768285954049', null, null, '用户管理-退出', '5', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 20:57:30');
INSERT INTO `sys_log` VALUES ('1475475544425512962', null, null, '用户管理-退出', '6', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-27 22:35:57');
INSERT INTO `sys_log` VALUES ('1475636570995441665', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 09:15:49');
INSERT INTO `sys_log` VALUES ('1475639790765490177', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 09:28:37');
INSERT INTO `sys_log` VALUES ('1475732457172123649', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 15:36:50');
INSERT INTO `sys_log` VALUES ('1475737890507186178', null, null, '用户管理-退出', '5', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 15:58:26');
INSERT INTO `sys_log` VALUES ('1475739665205288962', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 16:05:29');
INSERT INTO `sys_log` VALUES ('1475740551889543170', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 16:09:00');
INSERT INTO `sys_log` VALUES ('1475740743137222658', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 16:09:46');
INSERT INTO `sys_log` VALUES ('1475746018904760322', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 16:30:44');
INSERT INTO `sys_log` VALUES ('1475746709731794946', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 16:33:28');
INSERT INTO `sys_log` VALUES ('1475746913121984514', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 16:34:17');
INSERT INTO `sys_log` VALUES ('1475746989982605314', '1', 'admin', '机构管理-树型组织列表', '10', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 16:34:35');
INSERT INTO `sys_log` VALUES ('1475746990066491393', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 16:34:35');
INSERT INTO `sys_log` VALUES ('1475748541329825793', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 16:40:45');
INSERT INTO `sys_log` VALUES ('1475748541430489090', '1', 'admin', '用户管理-分页获取用户列表', '18', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 16:40:45');
INSERT INTO `sys_log` VALUES ('1475749780113211394', '1', 'admin', '机构管理-树型组织列表', '12', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 16:45:40');
INSERT INTO `sys_log` VALUES ('1475749780226457601', '1', 'admin', '用户管理-分页获取用户列表', '39', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 16:45:40');
INSERT INTO `sys_log` VALUES ('1475750519522869249', '1', 'admin', '机构管理-树型组织列表', '7', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 16:48:37');
INSERT INTO `sys_log` VALUES ('1475750519699030018', '1', 'admin', '用户管理-分页获取用户列表', '39', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 16:48:37');
INSERT INTO `sys_log` VALUES ('1475750590494687234', '1', 'admin', '用户管理-更新用户信息', '25', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680801219198977\",\"nickName\":\"\",\"password\":\"1cab5bd5f6500fabf9acf7529817a3a8\",\"phone\":\"\",\"status\":2,\"updateId\":\"1\",\"updateTime\":1640681333535,\"username\":\"员工2\"}]', '169.254.51.168', '2021-12-28 16:48:54');
INSERT INTO `sys_log` VALUES ('1475750590729568257', '1', 'admin', '用户管理-分页获取用户列表', '21', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 16:48:54');
INSERT INTO `sys_log` VALUES ('1475750621725474817', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 16:49:01');
INSERT INTO `sys_log` VALUES ('1475750621842915330', '1', 'admin', '用户管理-分页获取用户列表', '19', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 16:49:01');
INSERT INTO `sys_log` VALUES ('1475750662116622338', '1', 'admin', '用户管理-分页获取用户列表', '17', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"status\":1,\"username\":\"\"}]', '169.254.51.168', '2021-12-28 16:49:11');
INSERT INTO `sys_log` VALUES ('1475750675005718530', '1', 'admin', '用户管理-分页获取用户列表', '19', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"status\":2,\"username\":\"\"}]', '169.254.51.168', '2021-12-28 16:49:14');
INSERT INTO `sys_log` VALUES ('1475751163545665537', '1', 'admin', '机构管理-树型组织列表', '6', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 16:51:10');
INSERT INTO `sys_log` VALUES ('1475751163646328834', '1', 'admin', '用户管理-分页获取用户列表', '28', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 16:51:10');
INSERT INTO `sys_log` VALUES ('1475751174354386945', '1', 'admin', '用户管理-分页获取用户列表', '18', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 16:51:13');
INSERT INTO `sys_log` VALUES ('1475761481768484866', null, null, '用户管理-退出', '4', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 17:32:10');
INSERT INTO `sys_log` VALUES ('1475772179328253953', null, null, '用户管理-退出', '7', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:14:41');
INSERT INTO `sys_log` VALUES ('1475772243492716546', '1', 'admin', '菜单权限管理-获取所有菜单权限', '176', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 18:14:56');
INSERT INTO `sys_log` VALUES ('1475772415266242561', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:15:37');
INSERT INTO `sys_log` VALUES ('1475773221226921986', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:18:49');
INSERT INTO `sys_log` VALUES ('1475773785348227073', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:21:04');
INSERT INTO `sys_log` VALUES ('1475774218074570754', '1', 'admin', '机构管理-树型组织列表', '31', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 18:22:47');
INSERT INTO `sys_log` VALUES ('1475774218108125186', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 18:22:47');
INSERT INTO `sys_log` VALUES ('1475774437759631362', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:23:39');
INSERT INTO `sys_log` VALUES ('1475774796750110721', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:25:05');
INSERT INTO `sys_log` VALUES ('1475776883990970369', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:33:22');
INSERT INTO `sys_log` VALUES ('1475782700928581634', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 18:56:29');
INSERT INTO `sys_log` VALUES ('1475782762932977666', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 18:56:44');
INSERT INTO `sys_log` VALUES ('1475782762979115009', '1', 'admin', '用户管理-分页获取用户列表', '34', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 18:56:44');
INSERT INTO `sys_log` VALUES ('1475787762925027329', '1', 'admin', '菜单权限管理-获取所有菜单权限', '398', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 19:16:36');
INSERT INTO `sys_log` VALUES ('1475787772353822721', '1', 'admin', '机构管理-获取所有组织机构', '50', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 19:16:38');
INSERT INTO `sys_log` VALUES ('1475787785532325890', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 19:16:42');
INSERT INTO `sys_log` VALUES ('1475787785733652481', '1', 'admin', '用户管理-分页获取用户列表', '25', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:16:42');
INSERT INTO `sys_log` VALUES ('1475787790301249538', '1', 'admin', '机构管理-获取所有组织机构', '10', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 19:16:43');
INSERT INTO `sys_log` VALUES ('1475787794675908610', '1', 'admin', '用户管理-分页获取用户列表', '20', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:16:44');
INSERT INTO `sys_log` VALUES ('1475787794743017474', '1', 'admin', '机构管理-树型组织列表', '51', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 19:16:44');
INSERT INTO `sys_log` VALUES ('1475787829627043841', '1', 'admin', '用户管理-分页获取用户列表', '38', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"status\":2,\"username\":\"\"}]', '169.254.51.168', '2021-12-28 19:16:52');
INSERT INTO `sys_log` VALUES ('1475787860094468098', '1', 'admin', '机构管理-获取所有组织机构', '5', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 19:16:59');
INSERT INTO `sys_log` VALUES ('1475787885193183234', '1', 'admin', '菜单权限管理-获取所有菜单权限', '306', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 19:17:05');
INSERT INTO `sys_log` VALUES ('1475787939022880770', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '304', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1471390978656043009\"]', '169.254.51.168', '2021-12-28 19:17:18');
INSERT INTO `sys_log` VALUES ('1475787954973818881', '1', 'admin', '菜单权限管理-更新菜单权限', '706', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1471390978656043009\",\"name\":\"客户管理\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"target\":\"_self\",\"type\":1,\"updateTime\":1640690241191,\"url\":\"\"}]', '169.254.51.168', '2021-12-28 19:17:22');
INSERT INTO `sys_log` VALUES ('1475787956156612609', '1', 'admin', '菜单权限管理-获取所有菜单权限', '251', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 19:17:22');
INSERT INTO `sys_log` VALUES ('1475788097483685889', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '229', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1472763471799197698\"]', '169.254.51.168', '2021-12-28 19:17:56');
INSERT INTO `sys_log` VALUES ('1475788111152922626', '1', 'admin', '菜单权限管理-更新菜单权限', '1172', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1472763471799197698\",\"name\":\"工资\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"1472767335092891650\",\"pidName\":\"工资管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640690277996,\"url\":\"/index/gogzhi\"}]', '169.254.51.168', '2021-12-28 19:17:59');
INSERT INTO `sys_log` VALUES ('1475788112272801794', '1', 'admin', '菜单权限管理-获取所有菜单权限', '235', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 19:17:59');
INSERT INTO `sys_log` VALUES ('1475788151552458753', '1', 'admin', '角色管理-分页获取角色信息', '40', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:18:09');
INSERT INTO `sys_log` VALUES ('1475788160851230721', '1', 'admin', '机构管理-获取所有组织机构', '9', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 19:18:11');
INSERT INTO `sys_log` VALUES ('1475788167012663298', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 19:18:12');
INSERT INTO `sys_log` VALUES ('1475788167230767105', '1', 'admin', '用户管理-分页获取用户列表', '25', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:18:13');
INSERT INTO `sys_log` VALUES ('1475788603287388162', '1', 'admin', '用户管理-分页获取用户列表', '25', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:19:57');
INSERT INTO `sys_log` VALUES ('1475788603354497025', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 19:19:57');
INSERT INTO `sys_log` VALUES ('1475788839921631233', '1', 'admin', '用户管理-新增用户', '38', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640690452895,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1475788839791607809\",\"nickName\":\"tomo\",\"password\":\"e4f6caf980eb548b4294953107dd858f\",\"phone\":\"\",\"salt\":\"1503ed6d0da74cb29492\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640690452895,\"username\":\"主管2\"}]', '169.254.51.168', '2021-12-28 19:20:53');
INSERT INTO `sys_log` VALUES ('1475788840521416705', '1', 'admin', '用户管理-分页获取用户列表', '38', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 19:20:53');
INSERT INTO `sys_log` VALUES ('1475788860205285377', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '8', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1475788839791607809\"]', '169.254.51.168', '2021-12-28 19:20:58');
INSERT INTO `sys_log` VALUES ('1475788902253182977', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '230', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1475788839791607809\",[\"1471316791631532034\"]]', '169.254.51.168', '2021-12-28 19:21:08');
INSERT INTO `sys_log` VALUES ('1475788902664224769', '1', 'admin', '用户管理-分页获取用户列表', '37', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 19:21:08');
INSERT INTO `sys_log` VALUES ('1475790700758155266', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 19:28:17');
INSERT INTO `sys_log` VALUES ('1475790706969919489', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:28:18');
INSERT INTO `sys_log` VALUES ('1475790711621402626', '1', 'admin', '机构管理-获取所有组织机构', '7', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 19:28:19');
INSERT INTO `sys_log` VALUES ('1475790728872574977', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 19:28:23');
INSERT INTO `sys_log` VALUES ('1475790729015181314', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:28:23');
INSERT INTO `sys_log` VALUES ('1475790845709107202', '1', 'admin', '用户管理-新增用户', '24', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640690931116,\"createWhere\":1,\"deleted\":1,\"deptId\":\"\",\"deptName\":\"\",\"id\":\"1475790845595860993\",\"nickName\":\"\",\"password\":\"f0e35795605c126c86ed0e0bdbdeca08\",\"phone\":\"\",\"salt\":\"be9d14598c3a41c6a043\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640690931116,\"username\":\"员工3\"}]', '169.254.51.168', '2021-12-28 19:28:51');
INSERT INTO `sys_log` VALUES ('1475790846204035073', '1', 'admin', '用户管理-分页获取用户列表', '31', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 19:28:51');
INSERT INTO `sys_log` VALUES ('1475792013722107906', null, null, '用户管理-退出', '4', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 19:33:30');
INSERT INTO `sys_log` VALUES ('1475792371131334658', null, null, '用户管理-退出', '0', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 19:34:55');
INSERT INTO `sys_log` VALUES ('1475792403846905857', '1', 'admin', '机构管理-树型组织列表', '6', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 19:35:03');
INSERT INTO `sys_log` VALUES ('1475792403985317889', '1', 'admin', '用户管理-分页获取用户列表', '30', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 19:35:03');
INSERT INTO `sys_log` VALUES ('1475792424264777730', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '5', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1475788839791607809\"]', '169.254.51.168', '2021-12-28 19:35:07');
INSERT INTO `sys_log` VALUES ('1475792454795116546', '1', 'admin', '用户管理-赋予角色-获取所有角色接口', '5', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1475788839791607809\"]', '169.254.51.168', '2021-12-28 19:35:15');
INSERT INTO `sys_log` VALUES ('1475792490488643586', '1', 'admin', '用户管理-赋予角色-用户赋予角色接口', '66', 'com.company.project.controller.UserController.setUserOwnRole()', '[\"1475788839791607809\",[\"1471316791631532034\"]]', '169.254.51.168', '2021-12-28 19:35:23');
INSERT INTO `sys_log` VALUES ('1475792490731913217', '1', 'admin', '用户管理-分页获取用户列表', '28', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 19:35:23');
INSERT INTO `sys_log` VALUES ('1475792511749570561', null, null, '用户管理-退出', '0', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 19:35:28');
INSERT INTO `sys_log` VALUES ('1475792743140933634', null, null, '用户管理-退出', '12', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 19:36:24');
INSERT INTO `sys_log` VALUES ('1475793982876520449', null, null, '用户管理-退出', '10', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 19:41:19');
INSERT INTO `sys_log` VALUES ('1475794406052433921', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 19:43:00');
INSERT INTO `sys_log` VALUES ('1475821612279459842', null, null, '用户管理-退出', '4', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:31:06');
INSERT INTO `sys_log` VALUES ('1475823334229995521', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:37:57');
INSERT INTO `sys_log` VALUES ('1475823368606511106', '1', 'admin', '菜单权限管理-获取所有菜单权限', '138', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 21:38:05');
INSERT INTO `sys_log` VALUES ('1475823379897577473', '1', 'admin', '机构管理-树型组织列表', '13', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:38:08');
INSERT INTO `sys_log` VALUES ('1475823379968880642', '1', 'admin', '用户管理-分页获取用户列表', '22', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:38:08');
INSERT INTO `sys_log` VALUES ('1475823380069543937', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:38:08');
INSERT INTO `sys_log` VALUES ('1475823380149235713', '1', 'admin', '用户管理-分页获取用户列表', '19', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:38:08');
INSERT INTO `sys_log` VALUES ('1475823381407526914', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 21:38:08');
INSERT INTO `sys_log` VALUES ('1475823384276430849', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:38:09');
INSERT INTO `sys_log` VALUES ('1475823438055796737', '1', 'admin', '角色管理-查询角色详情', '166', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316791631532034\"]', '169.254.51.168', '2021-12-28 21:38:22');
INSERT INTO `sys_log` VALUES ('1475823530405982210', '1', 'admin', '角色管理-更新角色信息', '81', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.审核员工项目 2.修改添加意见（驳回项目请求）\",\"id\":\"1471316791631532034\",\"name\":\"主管\",\"permissions\":[\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511619\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\"],\"status\":1,\"updateTime\":1640698723724}]', '169.254.51.168', '2021-12-28 21:38:44');
INSERT INTO `sys_log` VALUES ('1475823530473091074', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-28 21:38:44');
INSERT INTO `sys_log` VALUES ('1475823607132385281', '1', 'admin', '角色管理-查询角色详情', '106', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316791631532034\"]', '169.254.51.168', '2021-12-28 21:39:02');
INSERT INTO `sys_log` VALUES ('1475823688384442369', '1', 'admin', '角色管理-更新角色信息', '38', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.审核员工项目 2.修改添加意见（驳回项目请求）\",\"id\":\"1471316791631532034\",\"name\":\"主管\",\"permissions\":[\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511619\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\"],\"status\":1,\"updateTime\":1640698761408}]', '169.254.51.168', '2021-12-28 21:39:21');
INSERT INTO `sys_log` VALUES ('1475823688501882882', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-28 21:39:21');
INSERT INTO `sys_log` VALUES ('1475823701374201858', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:39:25');
INSERT INTO `sys_log` VALUES ('1475824065179742210', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:40:51');
INSERT INTO `sys_log` VALUES ('1475824086671355905', '1', 'admin', '菜单权限管理-获取所有菜单权限', '94', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 21:40:56');
INSERT INTO `sys_log` VALUES ('1475824219630792706', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '86', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"27\"]', '169.254.51.168', '2021-12-28 21:41:28');
INSERT INTO `sys_log` VALUES ('1475824285175181313', '1', 'admin', '菜单权限管理-更新菜单权限', '220', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"27\",\"name\":\"资料下载\",\"orderNum\":10,\"perms\":\"\",\"pid\":\"1475102184575320066\",\"pidName\":\"资料管理\",\"status\":1,\"target\":\"_self\",\"type\":2,\"updateTime\":1640698903527,\"url\":\"/index/sysFiles\"}]', '169.254.51.168', '2021-12-28 21:41:44');
INSERT INTO `sys_log` VALUES ('1475824285623971841', '1', 'admin', '菜单权限管理-获取所有菜单权限', '90', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 21:41:44');
INSERT INTO `sys_log` VALUES ('1475824292401967106', '1', 'admin', '角色管理-分页获取角色信息', '2', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:41:45');
INSERT INTO `sys_log` VALUES ('1475824294817886210', '1', 'admin', '机构管理-获取所有组织机构', '2', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 21:41:46');
INSERT INTO `sys_log` VALUES ('1475824297095393282', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:41:47');
INSERT INTO `sys_log` VALUES ('1475824297158307841', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:41:47');
INSERT INTO `sys_log` VALUES ('1475824843109888001', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:43:57');
INSERT INTO `sys_log` VALUES ('1475824874508447746', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:44:04');
INSERT INTO `sys_log` VALUES ('1475824874550390785', '1', 'admin', '用户管理-分页获取用户列表', '16', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:44:04');
INSERT INTO `sys_log` VALUES ('1475824877821947906', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 21:44:05');
INSERT INTO `sys_log` VALUES ('1475824881290637313', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:44:06');
INSERT INTO `sys_log` VALUES ('1475824881290637314', '1', 'admin', '用户管理-分页获取用户列表', '15', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:44:06');
INSERT INTO `sys_log` VALUES ('1475825251593154562', '1', 'admin', '用户管理-查询用户详情', '3', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-28 21:45:34');
INSERT INTO `sys_log` VALUES ('1475825292894466049', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 21:45:44');
INSERT INTO `sys_log` VALUES ('1475825293695578113', '1', 'admin', '机构管理-获取所有组织机构', '2', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 21:45:44');
INSERT INTO `sys_log` VALUES ('1475825408338489346', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:46:12');
INSERT INTO `sys_log` VALUES ('1475825408405598210', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:46:12');
INSERT INTO `sys_log` VALUES ('1475825421995143170', '1', 'admin', '机构管理-获取所有组织机构', '5', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-28 21:46:15');
INSERT INTO `sys_log` VALUES ('1475825424973099009', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 21:46:15');
INSERT INTO `sys_log` VALUES ('1475825425044402177', '1', 'admin', '用户管理-分页获取用户列表', '13', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 21:46:15');
INSERT INTO `sys_log` VALUES ('1475825498314698754', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:46:33');
INSERT INTO `sys_log` VALUES ('1475825750224596994', null, null, '用户管理-退出', '0', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 21:47:33');
INSERT INTO `sys_log` VALUES ('1475829012931735554', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:00:31');
INSERT INTO `sys_log` VALUES ('1475829038437298177', '1', 'admin', '菜单权限管理-获取所有菜单权限', '100', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-28 22:00:37');
INSERT INTO `sys_log` VALUES ('1475829049149550593', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 22:00:40');
INSERT INTO `sys_log` VALUES ('1475829060281233410', '1', 'admin', '角色管理-查询角色详情', '99', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2021-12-28 22:00:42');
INSERT INTO `sys_log` VALUES ('1475829192116596737', '1', 'admin', '角色管理-更新角色信息', '227', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"17\",\"44\",\"26\",\"53\",\"36\",\"19\",\"3\",\"1311115974068449281\",\"13\",\"39\",\"41\",\"38\",\"12\",\"5\",\"22\",\"9\",\"24\",\"42\",\"10\",\"25\",\"52\",\"56\",\"57\",\"23\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511618\",\"1473204975382511619\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197699\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"54\",\"59\",\"63\",\"60\",\"61\",\"62\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1640700073410}]', '169.254.51.168', '2021-12-28 22:01:14');
INSERT INTO `sys_log` VALUES ('1475829192255008769', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2021-12-28 22:01:14');
INSERT INTO `sys_log` VALUES ('1475833366992592897', null, null, '用户管理-退出', '6', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:17:49');
INSERT INTO `sys_log` VALUES ('1475833464669544450', '1', 'admin', '机构管理-树型组织列表', '12', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 22:18:12');
INSERT INTO `sys_log` VALUES ('1475833464812150785', '1', 'admin', '用户管理-分页获取用户列表', '35', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 22:18:12');
INSERT INTO `sys_log` VALUES ('1475833485334880258', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:18:17');
INSERT INTO `sys_log` VALUES ('1475833532877316097', '1474680866813919233', '前台1', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 22:18:29');
INSERT INTO `sys_log` VALUES ('1475833533007339522', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '24', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 22:18:29');
INSERT INTO `sys_log` VALUES ('1475833546634633218', '1474680866813919233', '前台1', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 22:18:32');
INSERT INTO `sys_log` VALUES ('1475833546764656641', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '28', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 22:18:32');
INSERT INTO `sys_log` VALUES ('1475833590121177090', '1474680866813919233', '前台1', '用户管理-更新用户信息', '29', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680801219198977\",\"nickName\":\"\",\"password\":\"c5d377681cdf2abbce0b6c7e65f7f52a\",\"phone\":\"\",\"status\":1,\"updateId\":\"1474680866813919233\",\"updateTime\":1640701122198,\"username\":\"员工2\"}]', '169.254.51.168', '2021-12-28 22:18:42');
INSERT INTO `sys_log` VALUES ('1475833590439944193', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '27', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 22:18:42');
INSERT INTO `sys_log` VALUES ('1475833605770125314', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:18:46');
INSERT INTO `sys_log` VALUES ('1475833747315302401', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-28 22:19:20');
INSERT INTO `sys_log` VALUES ('1475833747474685954', '1', 'admin', '用户管理-分页获取用户列表', '28', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-28 22:19:20');
INSERT INTO `sys_log` VALUES ('1475833814684213250', '1', 'admin', '用户管理-更新用户信息', '56', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"1471317503849517058\",\"deptName\":\"项目开发\",\"id\":\"1474680801219198977\",\"nickName\":\"\",\"password\":\"93c59155d1627169cee5e786a83f2b3e\",\"phone\":\"\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640701175688,\"username\":\"员工2\"}]', '169.254.51.168', '2021-12-28 22:19:36');
INSERT INTO `sys_log` VALUES ('1475833814893928450', '1', 'admin', '用户管理-分页获取用户列表', '18', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-28 22:19:36');
INSERT INTO `sys_log` VALUES ('1475833826776391682', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:19:39');
INSERT INTO `sys_log` VALUES ('1475834042116153345', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:20:30');
INSERT INTO `sys_log` VALUES ('1475834212765605889', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:21:11');
INSERT INTO `sys_log` VALUES ('1475834858881359873', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-28 22:23:45');
INSERT INTO `sys_log` VALUES ('1475993123094704129', null, null, '用户管理-退出', '4', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 08:52:38');
INSERT INTO `sys_log` VALUES ('1475994893971795969', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 08:59:40');
INSERT INTO `sys_log` VALUES ('1475998896667406337', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 09:15:34');
INSERT INTO `sys_log` VALUES ('1476012017834438658', '1', 'admin', '菜单权限管理-获取所有菜单权限', '901', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '2.0.1.13', '2021-12-29 10:07:43');
INSERT INTO `sys_log` VALUES ('1476012031554007042', '1', 'admin', '机构管理-树型组织列表', '39', 'com.company.project.controller.DeptController.getTree()', '[null]', '2.0.1.13', '2021-12-29 10:07:46');
INSERT INTO `sys_log` VALUES ('1476012031637893122', '1', 'admin', '用户管理-分页获取用户列表', '44', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '2.0.1.13', '2021-12-29 10:07:46');
INSERT INTO `sys_log` VALUES ('1476012034393550849', '1', 'admin', '机构管理-获取所有组织机构', '32', 'com.company.project.controller.DeptController.getDeptAll()', null, '2.0.1.13', '2021-12-29 10:07:47');
INSERT INTO `sys_log` VALUES ('1476012040617897986', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '2.0.1.13', '2021-12-29 10:07:48');
INSERT INTO `sys_log` VALUES ('1476012040806641666', '1', 'admin', '用户管理-分页获取用户列表', '45', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '2.0.1.13', '2021-12-29 10:07:48');
INSERT INTO `sys_log` VALUES ('1476014821139460098', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:18:51');
INSERT INTO `sys_log` VALUES ('1476016213782605825', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:24:23');
INSERT INTO `sys_log` VALUES ('1476018249504829442', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:32:28');
INSERT INTO `sys_log` VALUES ('1476018698182111234', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:34:15');
INSERT INTO `sys_log` VALUES ('1476019096208977921', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:35:50');
INSERT INTO `sys_log` VALUES ('1476020389539393537', null, null, '用户管理-退出', '0', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:40:59');
INSERT INTO `sys_log` VALUES ('1476020553016586242', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 10:41:38');
INSERT INTO `sys_log` VALUES ('1476032185839038465', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '2.0.1.13', '2021-12-29 11:27:51');
INSERT INTO `sys_log` VALUES ('1476032185897758721', '1', 'admin', '用户管理-分页获取用户列表', '25', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '2.0.1.13', '2021-12-29 11:27:51');
INSERT INTO `sys_log` VALUES ('1476032316927815682', '1', 'admin', '用户管理-新增用户', '31', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640748502343,\"createWhere\":1,\"deleted\":1,\"deptId\":\"\",\"deptName\":\"\",\"id\":\"1476032316831346689\",\"nickName\":\"\",\"password\":\"d685959848e353c4cdf597d40fea061b\",\"phone\":\"\",\"salt\":\"6aefd4343f3d4d1fa843\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640748502343,\"username\":\"测试人员1\"}]', '2.0.1.13', '2021-12-29 11:28:22');
INSERT INTO `sys_log` VALUES ('1476032317133336577', '1', 'admin', '用户管理-分页获取用户列表', '21', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '2.0.1.13', '2021-12-29 11:28:22');
INSERT INTO `sys_log` VALUES ('1476032359751659521', '1', 'admin', '用户管理-删除用户', '27', 'com.company.project.controller.UserController.deletedUser()', '[[\"1476032316831346689\"]]', '2.0.1.13', '2021-12-29 11:28:33');
INSERT INTO `sys_log` VALUES ('1476032359881682946', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '2.0.1.13', '2021-12-29 11:28:33');
INSERT INTO `sys_log` VALUES ('1476032615868444674', '1', 'admin', '用户管理-新增用户', '20', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640748573622,\"createWhere\":1,\"deleted\":1,\"deptId\":\"\",\"deptName\":\"\",\"id\":\"1476032615797141506\",\"nickName\":\"\",\"password\":\"e248d5bafec4dc199d1768f84909cbf4\",\"phone\":\"\",\"salt\":\"b7e73071d7f64601b08d\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640748573622,\"username\":\"测试人员1\"}]', '2.0.1.13', '2021-12-29 11:29:34');
INSERT INTO `sys_log` VALUES ('1476032616057188353', '1', 'admin', '用户管理-分页获取用户列表', '17', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '2.0.1.13', '2021-12-29 11:29:34');
INSERT INTO `sys_log` VALUES ('1476032704674443266', '1', 'admin', '用户管理-分页获取用户列表', '7', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"测试人员1\"}]', '2.0.1.13', '2021-12-29 11:29:55');
INSERT INTO `sys_log` VALUES ('1476033948738564097', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '2.0.1.13', '2021-12-29 11:34:51');
INSERT INTO `sys_log` VALUES ('1476033948822450178', '1', 'admin', '用户管理-分页获取用户列表', '22', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '2.0.1.13', '2021-12-29 11:34:51');
INSERT INTO `sys_log` VALUES ('1476034217677336577', '1', 'admin', '用户管理-更新用户信息', '25', 'com.company.project.controller.UserController.updateUserInfo()', '[{\"deptId\":\"\",\"deptName\":\"\",\"id\":\"1476032615797141506\",\"nickName\":\"\",\"password\":\"f90d6cd3ce091930604e3ecaa875e8ee\",\"phone\":\"\",\"status\":2,\"updateId\":\"1\",\"updateTime\":1640748955522,\"username\":\"测试人员1\"}]', '2.0.1.13', '2021-12-29 11:35:56');
INSERT INTO `sys_log` VALUES ('1476034217882857473', '1', 'admin', '用户管理-分页获取用户列表', '17', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '2.0.1.13', '2021-12-29 11:35:56');
INSERT INTO `sys_log` VALUES ('1476034229769515009', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:35:58');
INSERT INTO `sys_log` VALUES ('1476036537454604289', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:45:09');
INSERT INTO `sys_log` VALUES ('1476036633986510850', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:45:32');
INSERT INTO `sys_log` VALUES ('1476038272633974786', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:52:02');
INSERT INTO `sys_log` VALUES ('1476038696925573122', '1474680720881500161', '员工1', '用户管理-查询用户详情', '3', 'com.company.project.controller.UserController.youSelfInfo()', null, '2.0.1.13', '2021-12-29 11:53:43');
INSERT INTO `sys_log` VALUES ('1476038765208842242', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:54:00');
INSERT INTO `sys_log` VALUES ('1476038978237542402', null, null, '用户管理-退出', '47', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:54:51');
INSERT INTO `sys_log` VALUES ('1476039088400936962', '1474680866813919233', '前台1', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '2.0.1.13', '2021-12-29 11:55:17');
INSERT INTO `sys_log` VALUES ('1476039088497405953', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '17', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '2.0.1.13', '2021-12-29 11:55:17');
INSERT INTO `sys_log` VALUES ('1476039150283698178', '1474680866813919233', '前台1', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '2.0.1.13', '2021-12-29 11:55:32');
INSERT INTO `sys_log` VALUES ('1476039150359195650', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '2.0.1.13', '2021-12-29 11:55:32');
INSERT INTO `sys_log` VALUES ('1476039269200605185', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '2.0.1.13', '2021-12-29 11:56:00');
INSERT INTO `sys_log` VALUES ('1476102940321329154', '1', 'admin', '机构管理-树型组织列表', '55', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:09:00');
INSERT INTO `sys_log` VALUES ('1476102940757536769', '1', 'admin', '用户管理-分页获取用户列表', '163', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:09:00');
INSERT INTO `sys_log` VALUES ('1476111286675910657', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:42:10');
INSERT INTO `sys_log` VALUES ('1476111287128895489', '1', 'admin', '用户管理-分页获取用户列表', '75', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:42:10');
INSERT INTO `sys_log` VALUES ('1476111292711514113', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:42:12');
INSERT INTO `sys_log` VALUES ('1476111296771600386', '1', 'admin', '角色管理-分页获取角色信息', '46', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:42:13');
INSERT INTO `sys_log` VALUES ('1476111301825736706', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:42:14');
INSERT INTO `sys_log` VALUES ('1476111304006774786', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:42:14');
INSERT INTO `sys_log` VALUES ('1476111305634164738', '1', 'admin', '机构管理-树型组织列表', '7', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:42:15');
INSERT INTO `sys_log` VALUES ('1476111306225561602', '1', 'admin', '用户管理-分页获取用户列表', '85', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:42:15');
INSERT INTO `sys_log` VALUES ('1476111403768295426', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:42:38');
INSERT INTO `sys_log` VALUES ('1476111404040925186', '1', 'admin', '用户管理-分页获取用户列表', '42', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:42:38');
INSERT INTO `sys_log` VALUES ('1476111452350918657', '1', 'admin', '用户管理-查询用户详情', '5', 'com.company.project.controller.UserController.youSelfInfo()', null, '169.254.51.168', '2021-12-29 16:42:50');
INSERT INTO `sys_log` VALUES ('1476111483980165122', '1', 'admin', '机构管理-树型组织列表', '8', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:42:57');
INSERT INTO `sys_log` VALUES ('1476111484592533505', '1', 'admin', '用户管理-分页获取用户列表', '82', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:42:57');
INSERT INTO `sys_log` VALUES ('1476111699886157825', '1', 'admin', '用户管理-新增用户', '65', 'com.company.project.controller.UserController.addUser()', '[{\"createId\":\"1\",\"createTime\":1640767428670,\"createWhere\":1,\"deleted\":1,\"deptId\":\"1\",\"deptName\":\"总公司\",\"id\":\"1476111699596750849\",\"nickName\":\"yunhhh\",\"password\":\"3ab87f73d1a22ff44577aad1115bb537\",\"phone\":\"111\",\"salt\":\"854923c102d8481b8432\",\"status\":1,\"updateId\":\"1\",\"updateTime\":1640767428670,\"username\":\"yunhhh\"}]', '169.254.51.168', '2021-12-29 16:43:49');
INSERT INTO `sys_log` VALUES ('1476111701131866114', '1', 'admin', '用户管理-分页获取用户列表', '89', 'com.company.project.controller.UserController.pageInfo()', '[{\"nickName\":\"\",\"username\":\"\"}]', '169.254.51.168', '2021-12-29 16:43:49');
INSERT INTO `sys_log` VALUES ('1476111876432801793', '1', 'admin', '机构管理-树型组织列表', '4', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:44:31');
INSERT INTO `sys_log` VALUES ('1476111876801900545', '1', 'admin', '用户管理-分页获取用户列表', '57', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:44:31');
INSERT INTO `sys_log` VALUES ('1476111906715676673', '1', 'admin', '机构管理-树型组织列表', '7', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:44:38');
INSERT INTO `sys_log` VALUES ('1476111907269324802', '1', 'admin', '用户管理-分页获取用户列表', '74', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:44:38');
INSERT INTO `sys_log` VALUES ('1476111913795661825', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:44:40');
INSERT INTO `sys_log` VALUES ('1476111914005377026', '1', 'admin', '用户管理-分页获取用户列表', '31', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:44:40');
INSERT INTO `sys_log` VALUES ('1476112479384973313', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:46:55');
INSERT INTO `sys_log` VALUES ('1476112479649214465', '1', 'admin', '用户管理-分页获取用户列表', '37', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:46:55');
INSERT INTO `sys_log` VALUES ('1476112515082694657', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:47:03');
INSERT INTO `sys_log` VALUES ('1476112515397267458', '1', 'admin', '用户管理-分页获取用户列表', '41', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:47:03');
INSERT INTO `sys_log` VALUES ('1476113035889422337', '1', 'admin', '机构管理-树型组织列表', '5', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:49:07');
INSERT INTO `sys_log` VALUES ('1476113036082360322', '1', 'admin', '用户管理-分页获取用户列表', '28', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:49:07');
INSERT INTO `sys_log` VALUES ('1476113108882894849', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:49:25');
INSERT INTO `sys_log` VALUES ('1476113338571370498', '1', 'admin', '机构管理-获取所有组织机构', '9', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:50:19');
INSERT INTO `sys_log` VALUES ('1476113379985928194', '1', 'admin', '机构管理-树型组织列表', '15', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-29 16:50:29');
INSERT INTO `sys_log` VALUES ('1476113445953941506', '1', 'admin', '机构管理-更新组织信息', '89', 'com.company.project.controller.DeptController.updateDept()', '[{\"id\":\"1\",\"managerName\":\"小李1\",\"name\":\"总公司\",\"phone\":\"13888888888\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"updateTime\":1640767845006}]', '169.254.51.168', '2021-12-29 16:50:45');
INSERT INTO `sys_log` VALUES ('1476113446079770625', '1', 'admin', '机构管理-获取所有组织机构', '5', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:50:45');
INSERT INTO `sys_log` VALUES ('1476113459589623810', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[\"\"]', '169.254.51.168', '2021-12-29 16:50:48');
INSERT INTO `sys_log` VALUES ('1476113538891329537', '1', 'admin', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[\"\"]', '169.254.51.168', '2021-12-29 16:51:07');
INSERT INTO `sys_log` VALUES ('1476113707049365506', '1', 'admin', '机构管理-新增组织', '67', 'com.company.project.controller.DeptController.addDept()', '[{\"createTime\":1640767907216,\"deleted\":1,\"deptNo\":\"D000003\",\"id\":\"1476113706759958530\",\"managerName\":\"哈哈\",\"name\":\"总公司\",\"phone\":\"13522222222\",\"pid\":\"0\",\"pidName\":\"默认顶级部门\",\"relationCode\":\"D000003\",\"status\":1,\"updateTime\":1640767907216}]', '169.254.51.168', '2021-12-29 16:51:47');
INSERT INTO `sys_log` VALUES ('1476113707347161090', '1', 'admin', '机构管理-获取所有组织机构', '21', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:51:47');
INSERT INTO `sys_log` VALUES ('1476113987392450561', '1', 'admin', '机构管理-树型组织列表', '14', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-29 16:52:54');
INSERT INTO `sys_log` VALUES ('1476113996234043394', '1', 'admin', '机构管理-更新组织信息', '59', 'com.company.project.controller.DeptController.updateDept()', '[{\"id\":\"1\",\"managerName\":\"小李1\",\"name\":\"总公司\",\"phone\":\"13888888888\",\"pid\":\"0\",\"pidName\":\"\",\"status\":0,\"updateTime\":1640767976169}]', '169.254.51.168', '2021-12-29 16:52:56');
INSERT INTO `sys_log` VALUES ('1476113996422787073', '1', 'admin', '机构管理-获取所有组织机构', '14', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:52:56');
INSERT INTO `sys_log` VALUES ('1476114027322224641', '1', 'admin', '机构管理-树型组织列表', '10', 'com.company.project.controller.DeptController.getTree()', '[\"1\"]', '169.254.51.168', '2021-12-29 16:53:04');
INSERT INTO `sys_log` VALUES ('1476114036608413697', '1', 'admin', '机构管理-更新组织信息', '63', 'com.company.project.controller.DeptController.updateDept()', '[{\"id\":\"1\",\"managerName\":\"小李1\",\"name\":\"总公司\",\"phone\":\"13888888888\",\"pid\":\"0\",\"pidName\":\"\",\"status\":1,\"updateTime\":1640767985785}]', '169.254.51.168', '2021-12-29 16:53:06');
INSERT INTO `sys_log` VALUES ('1476114036889432065', '1', 'admin', '机构管理-获取所有组织机构', '23', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:53:06');
INSERT INTO `sys_log` VALUES ('1476114717654331394', '1', 'admin', '机构管理-获取所有组织机构', '11', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:55:48');
INSERT INTO `sys_log` VALUES ('1476114949360267265', '1', 'admin', '机构管理-获取所有组织机构', '10', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:56:43');
INSERT INTO `sys_log` VALUES ('1476115151127261186', '1', 'admin', '机构管理-获取所有组织机构', '13', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:57:32');
INSERT INTO `sys_log` VALUES ('1476115386230583298', '1', 'admin', '角色管理-分页获取角色信息', '14', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:58:28');
INSERT INTO `sys_log` VALUES ('1476115407835443202', '1', 'admin', '菜单权限管理-获取所有菜单权限', '314', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-29 16:58:33');
INSERT INTO `sys_log` VALUES ('1476115416316325890', '1', 'admin', '角色管理-分页获取角色信息', '9', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:58:35');
INSERT INTO `sys_log` VALUES ('1476115433642995714', '1', 'admin', '机构管理-获取所有组织机构', '14', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 16:58:39');
INSERT INTO `sys_log` VALUES ('1476115440970444801', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-29 16:58:41');
INSERT INTO `sys_log` VALUES ('1476115441134022658', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 16:58:41');
INSERT INTO `sys_log` VALUES ('1476116005389545474', null, null, '用户管理-退出', '3', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:00:55');
INSERT INTO `sys_log` VALUES ('1476116929633792002', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:04:36');
INSERT INTO `sys_log` VALUES ('1476117111695945729', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:05:19');
INSERT INTO `sys_log` VALUES ('1476118043787735042', '1', 'admin', '角色管理-分页获取角色信息', '13', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 17:09:01');
INSERT INTO `sys_log` VALUES ('1476118100981264385', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:09:15');
INSERT INTO `sys_log` VALUES ('1476118920753786881', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:12:30');
INSERT INTO `sys_log` VALUES ('1476120601990213634', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:19:11');
INSERT INTO `sys_log` VALUES ('1476121028601262081', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:20:53');
INSERT INTO `sys_log` VALUES ('1476121328913428481', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:22:04');
INSERT INTO `sys_log` VALUES ('1476121700537151490', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:23:33');
INSERT INTO `sys_log` VALUES ('1476121945501282306', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-29 17:24:31');
INSERT INTO `sys_log` VALUES ('1476121985141649410', '1', 'admin', '菜单权限管理-获取所有菜单权限', '200', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2021-12-29 17:24:41');
INSERT INTO `sys_log` VALUES ('1476122004120875010', '1', 'admin', '角色管理-分页获取角色信息', '7', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-29 17:24:45');
INSERT INTO `sys_log` VALUES ('1476122038245732354', '1', 'admin', '角色管理-查询角色详情', '376', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316889581113345\"]', '169.254.51.168', '2021-12-29 17:24:54');
INSERT INTO `sys_log` VALUES ('1476122493344493570', '1', 'admin', '机构管理-获取所有组织机构', '14', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2021-12-29 17:26:42');
INSERT INTO `sys_log` VALUES ('1476503067703898114', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-30 18:38:58');
INSERT INTO `sys_log` VALUES ('1476503406133899265', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-30 18:40:19');
INSERT INTO `sys_log` VALUES ('1476503734027808770', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-30 18:41:37');
INSERT INTO `sys_log` VALUES ('1476504152480935937', '1', 'admin', '机构管理-树型组织列表', '17', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-30 18:43:17');
INSERT INTO `sys_log` VALUES ('1476504152602570753', '1', 'admin', '用户管理-分页获取用户列表', '35', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-30 18:43:17');
INSERT INTO `sys_log` VALUES ('1476504176690458625', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2021-12-30 18:43:23');
INSERT INTO `sys_log` VALUES ('1476504257783132162', '1474680866813919233', '前台1', '机构管理-树型组织列表', '3', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2021-12-30 18:43:42');
INSERT INTO `sys_log` VALUES ('1476504257904766977', '1474680866813919233', '前台1', '用户管理-分页获取用户列表', '27', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2021-12-30 18:43:42');
INSERT INTO `sys_log` VALUES ('1476504293308887041', '1474680866813919233', '前台1', '用户管理-赋予角色-获取所有角色接口', '5', 'com.company.project.controller.UserController.getUserOwnRole()', '[\"1471390460885991426\"]', '169.254.51.168', '2021-12-30 18:43:50');
INSERT INTO `sys_log` VALUES ('1478162509021188097', '1', 'admin', '角色管理-分页获取角色信息', '96', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 08:33:00');
INSERT INTO `sys_log` VALUES ('1478162764856954882', '1', 'admin', '菜单权限管理-获取所有菜单权限', '510', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:34:01');
INSERT INTO `sys_log` VALUES ('1478163013914726401', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '327', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"\"]', '169.254.51.168', '2022-01-04 08:35:00');
INSERT INTO `sys_log` VALUES ('1478163649502777346', '1', 'admin', '菜单权限管理-新增菜单权限', '63', 'com.company.project.controller.PermissionController.addPermission()', '[{\"createTime\":1641256651576,\"deleted\":1,\"icon\":\"\",\"id\":\"1478163649188204546\",\"name\":\"添加意见\",\"orderNum\":10,\"perms\":\"sys:user:yijian\",\"pid\":\"1473204975382511617\",\"pidName\":\"项目\",\"status\":1,\"target\":\"_self\",\"type\":3,\"updateTime\":1641256651576,\"url\":\"sys:user:yijian\"}]', '169.254.51.168', '2022-01-04 08:37:32');
INSERT INTO `sys_log` VALUES ('1478163651729952770', '1', 'admin', '菜单权限管理-获取所有菜单权限', '489', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:37:32');
INSERT INTO `sys_log` VALUES ('1478164452363866113', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '522', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1478163649188204546\"]', '169.254.51.168', '2022-01-04 08:40:43');
INSERT INTO `sys_log` VALUES ('1478164516889038850', '1', 'admin', '菜单权限管理-更新菜单权限', '30', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1478163649188204546\",\"name\":\"添加意见\",\"orderNum\":10,\"perms\":\"project:yijian\",\"pid\":\"1473204975382511617\",\"pidName\":\"项目\",\"status\":1,\"target\":\"_self\",\"type\":3,\"updateTime\":1641256858424,\"url\":\"sys:user:yijian\"}]', '169.254.51.168', '2022-01-04 08:40:58');
INSERT INTO `sys_log` VALUES ('1478164518776475650', '1', 'admin', '菜单权限管理-获取所有菜单权限', '407', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:40:59');
INSERT INTO `sys_log` VALUES ('1478164654940360706', '1', 'admin', '角色管理-分页获取角色信息', '9', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 08:41:31');
INSERT INTO `sys_log` VALUES ('1478164663328968705', '1', 'admin', '角色管理-查询角色详情', '539', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2022-01-04 08:41:33');
INSERT INTO `sys_log` VALUES ('1478164703262937090', '1', 'admin', '角色管理-更新角色信息', '517', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"17\",\"44\",\"26\",\"53\",\"19\",\"36\",\"3\",\"1311115974068449281\",\"13\",\"39\",\"41\",\"38\",\"12\",\"5\",\"22\",\"9\",\"24\",\"42\",\"10\",\"25\",\"52\",\"56\",\"57\",\"23\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511618\",\"1473204975382511621\",\"1473204975382511619\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"1472763471799197699\",\"54\",\"59\",\"63\",\"60\",\"61\",\"62\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1641256902378}]', '169.254.51.168', '2022-01-04 08:41:43');
INSERT INTO `sys_log` VALUES ('1478164703611064321', '1', 'admin', '角色管理-分页获取角色信息', '15', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2022-01-04 08:41:43');
INSERT INTO `sys_log` VALUES ('1478164830182576130', '1', 'admin', '菜单权限管理-获取所有菜单权限', '308', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:42:13');
INSERT INTO `sys_log` VALUES ('1478165282332741633', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 08:44:01');
INSERT INTO `sys_log` VALUES ('1478165292021583874', '1', 'admin', '角色管理-查询角色详情', '396', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2022-01-04 08:44:03');
INSERT INTO `sys_log` VALUES ('1478165340839088130', '1', 'admin', '角色管理-更新角色信息', '226', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"拥有所有权限-不能删除\",\"id\":\"1\",\"name\":\"超级管理员\",\"permissions\":[\"51\",\"11\",\"40\",\"43\",\"17\",\"44\",\"26\",\"53\",\"19\",\"36\",\"3\",\"1311115974068449281\",\"13\",\"39\",\"41\",\"38\",\"12\",\"5\",\"22\",\"9\",\"24\",\"42\",\"10\",\"25\",\"52\",\"56\",\"57\",\"23\",\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511618\",\"1473204975382511621\",\"1473204975382511619\",\"1478163649188204546\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\",\"1472767335092891650\",\"1472763471799197698\",\"1472763471799197700\",\"1472763471799197701\",\"1472763471799197702\",\"1472763471799197699\",\"54\",\"59\",\"63\",\"60\",\"61\",\"62\",\"55\",\"18\",\"14\",\"8\",\"58\",\"7\",\"21\",\"50\",\"2\",\"6\"],\"status\":1,\"updateTime\":1641257054660}]', '169.254.51.168', '2022-01-04 08:44:15');
INSERT INTO `sys_log` VALUES ('1478165341468233730', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2022-01-04 08:44:15');
INSERT INTO `sys_log` VALUES ('1478165509605298177', '1', 'admin', '角色管理-分页获取角色信息', '14', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 08:44:55');
INSERT INTO `sys_log` VALUES ('1478165517016633346', '1', 'admin', '角色管理-查询角色详情', '465', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2022-01-04 08:44:57');
INSERT INTO `sys_log` VALUES ('1478165803684773890', '1', 'admin', '菜单权限管理-获取所有菜单权限', '698', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:46:05');
INSERT INTO `sys_log` VALUES ('1478165927924252674', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '261', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473204975382511619\"]', '169.254.51.168', '2022-01-04 08:46:35');
INSERT INTO `sys_log` VALUES ('1478166393630408705', '1', 'admin', '菜单权限管理-获取所有菜单权限', '480', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:48:26');
INSERT INTO `sys_log` VALUES ('1478166463406850050', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '325', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1473206786541674498\"]', '169.254.51.168', '2022-01-04 08:48:43');
INSERT INTO `sys_log` VALUES ('1478166533736939522', '1', 'admin', '菜单权限管理-获取所有目录菜单树', '316', 'com.company.project.controller.PermissionController.getAllMenusPermissionTree()', '[\"1478163649188204546\"]', '169.254.51.168', '2022-01-04 08:48:59');
INSERT INTO `sys_log` VALUES ('1478166628456906753', '1', 'admin', '菜单权限管理-更新菜单权限', '412', 'com.company.project.controller.PermissionController.updatePermission()', '[{\"icon\":\"\",\"id\":\"1478163649188204546\",\"name\":\"添加意见\",\"orderNum\":10,\"perms\":\"project:yijian\",\"pid\":\"1473204975382511617\",\"pidName\":\"项目\",\"status\":1,\"target\":\"_self\",\"type\":3,\"updateTime\":1641257361471,\"url\":\"project/jijian\"}]', '169.254.51.168', '2022-01-04 08:49:22');
INSERT INTO `sys_log` VALUES ('1478166631321616385', '1', 'admin', '菜单权限管理-获取所有菜单权限', '576', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 08:49:23');
INSERT INTO `sys_log` VALUES ('1478167179726864385', '1', 'admin', '机构管理-树型组织列表', '15', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 08:51:33');
INSERT INTO `sys_log` VALUES ('1478167180045631490', '1', 'admin', '用户管理-分页获取用户列表', '54', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 08:51:33');
INSERT INTO `sys_log` VALUES ('1478182776086859778', '1', 'admin', '机构管理-获取所有组织机构', '15', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 09:53:32');
INSERT INTO `sys_log` VALUES ('1478182798635438082', '1', 'admin', '机构管理-树型组织列表', '16', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 09:53:37');
INSERT INTO `sys_log` VALUES ('1478182798937427970', '1', 'admin', '用户管理-分页获取用户列表', '48', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 09:53:37');
INSERT INTO `sys_log` VALUES ('1478194436180709378', '1', 'admin', '角色管理-分页获取角色信息', '47', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 10:39:52');
INSERT INTO `sys_log` VALUES ('1478194571765780481', '1', 'admin', '机构管理-获取所有组织机构', '17', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 10:40:24');
INSERT INTO `sys_log` VALUES ('1478220371856662529', null, null, '用户管理-退出', '5', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 12:22:55');
INSERT INTO `sys_log` VALUES ('1478220486747037697', null, null, '用户管理-退出', '2', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 12:23:23');
INSERT INTO `sys_log` VALUES ('1478220546419400706', '1', 'admin', '机构管理-树型组织列表', '8', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:23:37');
INSERT INTO `sys_log` VALUES ('1478220546570395649', '1', 'admin', '用户管理-分页获取用户列表', '24', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:23:37');
INSERT INTO `sys_log` VALUES ('1478220586206568450', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:23:46');
INSERT INTO `sys_log` VALUES ('1478220668754665474', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:24:06');
INSERT INTO `sys_log` VALUES ('1478220681920585730', '1', 'admin', '机构管理-获取所有组织机构', '5', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:24:09');
INSERT INTO `sys_log` VALUES ('1478220685787734017', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:24:10');
INSERT INTO `sys_log` VALUES ('1478220685942923266', '1', 'admin', '用户管理-分页获取用户列表', '22', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:24:10');
INSERT INTO `sys_log` VALUES ('1478220742582804481', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:24:24');
INSERT INTO `sys_log` VALUES ('1478220753362165761', '1', 'admin', '机构管理-删除组织', '70', 'com.company.project.controller.DeptController.deleted()', '[\"1476113706759958530\"]', '169.254.51.168', '2022-01-04 12:24:26');
INSERT INTO `sys_log` VALUES ('1478220753429274625', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:24:26');
INSERT INTO `sys_log` VALUES ('1478220759129333761', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:24:28');
INSERT INTO `sys_log` VALUES ('1478220776799936514', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:24:32');
INSERT INTO `sys_log` VALUES ('1478220776929959938', '1', 'admin', '用户管理-分页获取用户列表', '19', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:24:32');
INSERT INTO `sys_log` VALUES ('1478221006299668481', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:25:27');
INSERT INTO `sys_log` VALUES ('1478221006425497601', '1', 'admin', '用户管理-分页获取用户列表', '18', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:25:27');
INSERT INTO `sys_log` VALUES ('1478221099153170434', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:25:49');
INSERT INTO `sys_log` VALUES ('1478221124717453313', '1', 'admin', '角色管理-查询角色详情', '142', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2022-01-04 12:25:55');
INSERT INTO `sys_log` VALUES ('1478221144988524546', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:26:00');
INSERT INTO `sys_log` VALUES ('1478221154358599681', '1', 'admin', '角色管理-查询角色详情', '114', 'com.company.project.controller.RoleController.detailInfo()', '[\"1471316791631532034\"]', '169.254.51.168', '2022-01-04 12:26:02');
INSERT INTO `sys_log` VALUES ('1478221208528035842', '1', 'admin', '角色管理-更新角色信息', '60', 'com.company.project.controller.RoleController.updateDept()', '[{\"description\":\"1.审核员工项目 2.修改添加意见（驳回项目请求）\",\"id\":\"1471316791631532034\",\"name\":\"主管\",\"permissions\":[\"1473206786541674498\",\"1473204975382511617\",\"1473204975382511620\",\"1473204975382511621\",\"1473204975382511619\",\"1478163649188204546\",\"1471390978656043009\",\"1471312082334076929\",\"1471312082334076930\",\"1471312082334076931\",\"1471312082334076932\",\"1471312082334076933\",\"1475102184575320066\",\"27\",\"28\",\"30\",\"29\",\"1473493745231069186\",\"1473478364173058050\",\"1473478364173058051\",\"1473478364173058052\",\"1473478364173058053\",\"1473478364173058054\"],\"status\":1,\"updateTime\":1641270374737}]', '169.254.51.168', '2022-01-04 12:26:15');
INSERT INTO `sys_log` VALUES ('1478221208674836482', '1', 'admin', '角色管理-分页获取角色信息', '4', 'com.company.project.controller.RoleController.pageInfo()', '[{\"name\":\"\"}]', '169.254.51.168', '2022-01-04 12:26:15');
INSERT INTO `sys_log` VALUES ('1478221780345888770', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:28:31');
INSERT INTO `sys_log` VALUES ('1478221836797026305', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:28:45');
INSERT INTO `sys_log` VALUES ('1478221836893495298', '1', 'admin', '用户管理-分页获取用户列表', '14', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:28:45');
INSERT INTO `sys_log` VALUES ('1478221912093171714', '1', 'admin', '机构管理-树型组织列表', '1', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:29:03');
INSERT INTO `sys_log` VALUES ('1478221912181252098', '1', 'admin', '用户管理-分页获取用户列表', '15', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:29:03');
INSERT INTO `sys_log` VALUES ('1478221921308057601', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:29:05');
INSERT INTO `sys_log` VALUES ('1478221944108294146', '1', 'admin', '角色管理-分页获取角色信息', '3', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:29:10');
INSERT INTO `sys_log` VALUES ('1478221946557767682', '1', 'admin', '机构管理-获取所有组织机构', '3', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:29:11');
INSERT INTO `sys_log` VALUES ('1478221948982075394', '1', 'admin', '角色管理-分页获取角色信息', '2', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:29:11');
INSERT INTO `sys_log` VALUES ('1478221950827569153', '1', 'admin', '机构管理-获取所有组织机构', '6', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:29:12');
INSERT INTO `sys_log` VALUES ('1478221952987635713', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:29:12');
INSERT INTO `sys_log` VALUES ('1478221953079910402', '1', 'admin', '用户管理-分页获取用户列表', '19', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:29:12');
INSERT INTO `sys_log` VALUES ('1478222428231639042', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 12:31:06');
INSERT INTO `sys_log` VALUES ('1478226955580129282', null, null, '用户管理-退出', '10', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 12:49:05');
INSERT INTO `sys_log` VALUES ('1478227265535000577', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 12:50:19');
INSERT INTO `sys_log` VALUES ('1478227715755786241', '1', 'admin', '角色管理-分页获取角色信息', '8', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:52:06');
INSERT INTO `sys_log` VALUES ('1478227718427557889', '1', 'admin', '机构管理-获取所有组织机构', '8', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 12:52:07');
INSERT INTO `sys_log` VALUES ('1478228421359353858', '1', 'admin', '机构管理-树型组织列表', '11', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 12:54:54');
INSERT INTO `sys_log` VALUES ('1478228421447434242', '1', 'admin', '用户管理-分页获取用户列表', '23', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 12:54:54');
INSERT INTO `sys_log` VALUES ('1478233068098707458', '1', 'admin', '机构管理-树型组织列表', '13', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 13:13:22');
INSERT INTO `sys_log` VALUES ('1478233068182593538', '1', 'admin', '用户管理-分页获取用户列表', '51', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 13:13:22');
INSERT INTO `sys_log` VALUES ('1478233075392602113', '1', 'admin', '角色管理-分页获取角色信息', '14', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 13:13:24');
INSERT INTO `sys_log` VALUES ('1478233728647061505', '1', 'admin', '角色管理-分页获取角色信息', '5', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 13:16:00');
INSERT INTO `sys_log` VALUES ('1478233731306250242', '1', 'admin', '机构管理-获取所有组织机构', '4', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 13:16:00');
INSERT INTO `sys_log` VALUES ('1478233734967877634', '1', 'admin', '机构管理-树型组织列表', '2', 'com.company.project.controller.DeptController.getTree()', '[null]', '169.254.51.168', '2022-01-04 13:16:01');
INSERT INTO `sys_log` VALUES ('1478233735026597889', '1', 'admin', '用户管理-分页获取用户列表', '24', 'com.company.project.controller.UserController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 13:16:01');
INSERT INTO `sys_log` VALUES ('1478249091015270402', null, null, '用户管理-退出', '3', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 14:17:03');
INSERT INTO `sys_log` VALUES ('1478272319607693314', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 15:49:21');
INSERT INTO `sys_log` VALUES ('1478272351899639809', '1', 'admin', '角色管理-分页获取角色信息', '11', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 15:49:28');
INSERT INTO `sys_log` VALUES ('1478272379166810113', '1', 'admin', '角色管理-查询角色详情', '653', 'com.company.project.controller.RoleController.detailInfo()', '[\"1\"]', '169.254.51.168', '2022-01-04 15:49:35');
INSERT INTO `sys_log` VALUES ('1478272473832251393', '1', 'admin', '菜单权限管理-获取所有菜单权限', '401', 'com.company.project.controller.PermissionController.getAllMenusPermission()', null, '169.254.51.168', '2022-01-04 15:49:57');
INSERT INTO `sys_log` VALUES ('1478272927509143553', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 15:51:46');
INSERT INTO `sys_log` VALUES ('1478273450782121985', null, null, '用户管理-退出', '1', 'com.company.project.controller.UserController.logout()', null, '169.254.51.168', '2022-01-04 15:53:50');
INSERT INTO `sys_log` VALUES ('1478273847005437953', '1', 'admin', '角色管理-分页获取角色信息', '12', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 15:55:25');
INSERT INTO `sys_log` VALUES ('1478273850306355202', '1', 'admin', '机构管理-获取所有组织机构', '20', 'com.company.project.controller.DeptController.getDeptAll()', null, '169.254.51.168', '2022-01-04 15:55:26');
INSERT INTO `sys_log` VALUES ('1478274955610316802', '1', 'admin', '角色管理-分页获取角色信息', '16', 'com.company.project.controller.RoleController.pageInfo()', '[{}]', '169.254.51.168', '2022-01-04 15:59:49');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单权限名称',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '访问地址URL',
  `target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'a target属性:_self _blank',
  `pid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级菜单权限名称',
  `order_num` int DEFAULT NULL COMMENT '排序',
  `type` tinyint DEFAULT NULL COMMENT '菜单权限类型(1:目录;2:菜单;3:按钮)',
  `status` tinyint DEFAULT NULL COMMENT '状态1:正常 0：禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint DEFAULT NULL COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='系统权限';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '删除', 'sysGenerator:delete', null, 'sysGenerator/delete', null, '15', '1', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('10', '赋予角色', 'sys:user:role:update', null, '/sys/user/roles/*', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('11', '菜单权限管理', null, null, '/index/menus', '_self', '51', '98', '2', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('12', '列表', 'sys:dept:list', null, '/sys/depts', null, '41', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('13', '删除', 'sys:role:deleted', null, '/sys/role/*', null, '53', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('1311115974068449281', '数据权限', 'sys:role:bindDept', '', '/sys/role/bindDept', '_self', '53', '5', '3', '1', '2020-09-30 09:29:42', null, '1');
INSERT INTO `sys_permission` VALUES ('14', '定时任务立即执行', 'sysJob:run', null, '/sysJob/run', '_self', '59', '5', '3', '1', '2020-04-22 15:47:54', null, '1');
INSERT INTO `sys_permission` VALUES ('1466047224172683265', '商品管理', '', '', '/index/goods', '_self', '51', '110', '2', '1', null, '2021-12-16 11:17:27', '1');
INSERT INTO `sys_permission` VALUES ('1466047224172683266', '新增', 'goods:add', null, 'goods/add', null, '1466047224172683265', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1466047224172683267', '修改', 'goods:update', null, 'goods/update', null, '1466047224172683265', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1466047224172683268', '删除', 'goods:delete', null, 'goods/delete', null, '1466047224172683265', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1466047224172683269', '列表', 'goods:list', null, 'goods/listByPage', null, '1466047224172683265', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1471312082334076929', '客户', '', '', '/index/sysKehu', '_self', '1471390978656043009', '112', '2', '1', null, '2021-12-16 16:08:39', '1');
INSERT INTO `sys_permission` VALUES ('1471312082334076930', '新增', 'sysKehu:add', null, 'sysKehu/add', null, '1471312082334076929', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1471312082334076931', '修改', 'sysKehu:update', null, 'sysKehu/update', null, '1471312082334076929', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1471312082334076932', '删除', 'sysKehu:delete', null, 'sysKehu/delete', null, '1471312082334076929', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1471312082334076933', '列表', 'sysKehu:list', null, 'sysKehu/listByPage', null, '1471312082334076929', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1471390978656043009', '客户管理', '', '', '', '_self', '0', '10', '1', '1', '2021-12-16 16:05:21', '2021-12-28 19:17:21', '1');
INSERT INTO `sys_permission` VALUES ('1472763471799197698', '工资', '', '', '/index/gogzhi', '_self', '1472767335092891650', '10', '2', '1', null, '2021-12-28 19:17:58', '1');
INSERT INTO `sys_permission` VALUES ('1472763471799197699', '新增', 'gogzhi:add', null, 'gogzhi/add', null, '1472763471799197698', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1472763471799197700', '修改', 'gogzhi:update', null, 'gogzhi/update', null, '1472763471799197698', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1472763471799197701', '删除', 'gogzhi:delete', null, 'gogzhi/delete', null, '1472763471799197698', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1472763471799197702', '列表', 'gogzhi:list', null, 'gogzhi/listByPage', null, '1472763471799197698', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1472767335092891650', '工资管理', '', '', '', '_self', '0', '50', '1', '1', '2021-12-20 11:14:30', '2021-12-20 11:16:49', '1');
INSERT INTO `sys_permission` VALUES ('1473204975382511617', '项目', '', '', '/index/project', '_self', '1473206786541674498', '10', '2', '1', null, '2021-12-21 16:21:12', '1');
INSERT INTO `sys_permission` VALUES ('1473204975382511618', '新增', 'project:add', null, 'project/add', null, '1473204975382511617', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473204975382511619', '修改', 'project:update', null, 'project/update', null, '1473204975382511617', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473204975382511620', '删除', 'project:delete', null, 'project/delete', null, '1473204975382511617', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473204975382511621', '列表', 'project:list', null, 'project/listByPage', null, '1473204975382511617', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473206786541674498', '项目管理', '', '', '', '_self', '0', '5', '1', '1', '2021-12-21 16:20:43', '2021-12-21 16:21:38', '1');
INSERT INTO `sys_permission` VALUES ('1473475318496026627', '新增', 'project:add', null, 'project/add', null, '1473475318496026626', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473475318496026628', '修改', 'project:update', null, 'project/update', null, '1473475318496026626', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473475318496026629', '删除', 'project:delete', null, 'project/delete', null, '1473475318496026626', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473475318496026630', '列表', 'project:list', null, 'project/listByPage', null, '1473475318496026626', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473478364173058050', '意见', '', '', '/index/yijian', '_self', '1473493745231069186', '10', '2', '1', null, '2021-12-22 11:21:45', '1');
INSERT INTO `sys_permission` VALUES ('1473478364173058051', '新增', 'yijian:add', null, 'yijian/add', null, '1473478364173058050', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473478364173058052', '修改', 'yijian:update', null, 'yijian/update', null, '1473478364173058050', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473478364173058053', '删除', 'yijian:delete', null, 'yijian/delete', null, '1473478364173058050', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473478364173058054', '列表', 'yijian:list', null, 'yijian/listByPage', null, '1473478364173058050', null, '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('1473493745231069186', '项目意见表', '', '', '', '_self', '0', '22', '1', '1', '2021-12-22 11:21:00', '2021-12-22 11:21:00', '1');
INSERT INTO `sys_permission` VALUES ('1475102184575320066', '资料管理', '', '', '', '_self', '0', '20', '1', '1', '2021-12-26 21:52:22', '2021-12-26 21:52:22', '1');
INSERT INTO `sys_permission` VALUES ('1478163649188204546', '添加意见', 'project:yijian', '', 'project/jijian', '_self', '1473204975382511617', '10', '3', '1', '2022-01-04 08:37:32', '2022-01-04 08:49:21', '1');
INSERT INTO `sys_permission` VALUES ('15', '代码生成', null, null, '/index/sysGenerator', '_self', '54', '1', '2', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('16', '列表', 'sysGenerator:list', null, 'sysGenerator/listByPage', null, '15', '1', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('17', '详情', 'sys:permission:detail', null, '/sys/permission/*', null, '11', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('18', '定时任务恢复', 'sysJob:resume', null, '/sysJob/resume', '_self', '59', '4', '3', '1', '2020-04-22 15:48:40', null, '1');
INSERT INTO `sys_permission` VALUES ('19', '列表', 'sys:role:list', null, '/sys/roles', null, '53', '0', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('2', 'SQL 监控', '', '', '/druid/sql.html', '_self', '21', '98', '2', '1', '2020-03-19 13:29:40', '2020-05-07 13:36:59', '1');
INSERT INTO `sys_permission` VALUES ('20', '修改', 'sysGenerator:update', null, 'sysGenerator/update', null, '15', '1', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('21', '其他', null, 'layui-icon-list', null, null, '0', '200', '1', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('22', '详情', 'sys:dept:detail', null, '/sys/dept/*', null, '41', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('23', '列表', 'sys:user:list', null, '/sys/users', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('24', '用户管理', null, null, '/index/users', '_self', '51', '100', '2', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('25', '详情', 'sys:user:detail', null, '/sys/user/*', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('26', '删除', 'sys:permission:deleted', null, '/sys/permission/*', null, '11', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('27', '资料下载', '', '', '/index/sysFiles', '_self', '1475102184575320066', '10', '2', '1', null, '2021-12-28 21:41:44', '1');
INSERT INTO `sys_permission` VALUES ('28', '列表', 'sysFiles:list', null, 'sysFiles/listByPage', null, '27', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('29', '新增', 'sysFiles:add', null, 'sysFiles/add', null, '27', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('3', '新增', 'sys:role:add', null, '/sys/role', null, '53', '0', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('30', '删除', 'sysFiles:delete', null, 'sysFiles/delete', null, '27', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('31', '文章管理', null, null, '/index/sysContent', '_self', '54', '10', '2', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('32', '列表', 'sysContent:list', null, 'sysContent/listByPage', null, '31', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('33', '新增', 'sysContent:add', null, 'sysContent/add', null, '31', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('34', '修改', 'sysContent:update', null, 'sysContent/update', null, '31', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('35', '删除', 'sysContent:delete', null, 'sysContent/delete', null, '31', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('36', '更新', 'sys:role:update', null, '/sys/role', null, '53', '0', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('38', '更新', 'sys:dept:update', null, '/sys/dept', null, '41', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('39', '详情', 'sys:role:detail', null, '/sys/role/*', null, '53', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('4', '添加', 'sysGenerator:add', null, 'sysGenerator/add', null, '15', '1', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('40', '编辑', 'sys:permission:update', null, '/sys/permission', null, '11', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('41', '部门管理', null, null, '/index/depts', '_self', '51', '100', '2', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('42', '新增', 'sys:user:add', null, '/sys/user', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('43', '列表', 'sys:permission:list', null, '/sys/permissions', null, '11', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('44', '新增', 'sys:permission:add', null, '/sys/permission', null, '11', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('45', '字典管理', null, '', '/index/sysDict', null, '54', '10', '2', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('46', '列表', 'sysDict:list', null, 'sysDict/listByPage', null, '45', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('47', '新增', 'sysDict:add', null, 'sysDict/add', null, '45', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('48', '修改', 'sysDict:update', null, 'sysDict/update', null, '45', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('49', '删除', 'sysDict:delete', null, 'sysDict/delete', null, '45', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('5', '删除', 'sys:dept:deleted', null, '/sys/dept/*', null, '41', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('50', '表单构建', '', '', '/index/build', '_self', '21', '1', '2', '1', '2020-04-22 13:09:41', '2020-05-07 13:36:47', '1');
INSERT INTO `sys_permission` VALUES ('51', '组织管理', '', 'layui-icon-user', '', '_self', '0', '1', '1', '1', '2020-03-19 13:29:40', '2021-12-22 19:27:00', '1');
INSERT INTO `sys_permission` VALUES ('52', '拥有角色', 'sys:user:role:detail', null, '/sys/user/roles/*', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('53', '角色管理', null, null, '/index/roles', '_self', '51', '99', '2', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('54', '系统管理', null, 'layui-icon-set-fill', null, null, '0', '98', '1', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('55', '定时任务暂停', 'sysJob:pause', null, '/sysJob/pause', '_self', '59', '1', '3', '1', '2020-04-22 15:48:18', null, '1');
INSERT INTO `sys_permission` VALUES ('56', '更新', 'sys:user:update', null, '/sys/user', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('57', '删除', 'sys:user:deleted', null, '/sys/user', null, '24', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('58', '删除', 'sys:log:deleted', null, '/sys/logs', null, '8', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('59', '定时任务', null, null, '/index/sysJob', '_self', '54', '10', '2', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('6', '接口管理', '', '', '/doc.html', '_blank', '21', '100', '2', '1', '2020-03-19 13:29:40', '2020-05-07 13:36:02', '1');
INSERT INTO `sys_permission` VALUES ('60', '列表', 'sysJob:list', null, 'sysJob/listByPage', null, '59', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('61', '新增', 'sysJob:add', null, 'sysJob/add', null, '59', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('62', '修改', 'sysJob:update', null, 'sysJob/update', null, '59', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('63', '删除', 'sysJob:delete', null, 'sysJob/delete', null, '59', '0', '3', '1', null, null, '1');
INSERT INTO `sys_permission` VALUES ('7', '列表', 'sys:log:list', null, '/sys/logs', null, '8', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('8', '日志管理', null, null, '/index/logs', '_self', '54', '97', '2', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');
INSERT INTO `sys_permission` VALUES ('9', '新增', 'sys:dept:add', null, '/sys/dept', null, '41', '100', '3', '1', '2020-03-19 13:29:40', '2020-03-19 13:29:40', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(300) DEFAULT NULL,
  `status` tinyint DEFAULT NULL COMMENT '状态(1:正常0:弃用)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint DEFAULT NULL COMMENT '是否删除(1未删除；0已删除)',
  `data_scope` int DEFAULT NULL COMMENT '数据范围（1：所有 2：自定义 3： 本部门及以下部门 4：仅本部门 5:自己）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '拥有所有权限-不能删除', '1', '2019-11-01 19:26:29', '2022-01-04 08:44:15', '1', null);
INSERT INTO `sys_role` VALUES ('1471316361434353665', '前台', '1.员工信息的建立,客户信息的建立。', '1', '2021-12-16 11:08:51', '2021-12-26 22:04:14', '1', null);
INSERT INTO `sys_role` VALUES ('1471316791631532034', '主管', '1.审核员工项目 2.修改添加意见（驳回项目请求）', '1', '2021-12-16 11:10:34', '2022-01-04 12:26:15', '1', null);
INSERT INTO `sys_role` VALUES ('1471316889581113345', '普通员工', '1.查看项目 2.查看意见 3.查看项目信息', '1', '2021-12-16 11:10:57', '2021-12-26 22:12:51', '1', null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色id',
  `dept_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='角色部门';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(64) DEFAULT NULL COMMENT '菜单权限id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1475105173419585537', '1471316361434353665', '51', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173419585538', '1471316361434353665', '24', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173419585539', '1471316361434353665', '42', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173419585540', '1471316361434353665', '10', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173419585541', '1471316361434353665', '25', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974146', '1471316361434353665', '52', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974147', '1471316361434353665', '56', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974148', '1471316361434353665', '57', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974149', '1471316361434353665', '23', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974150', '1471316361434353665', '1471390978656043009', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974151', '1471316361434353665', '1471312082334076929', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974152', '1471316361434353665', '1471312082334076930', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974153', '1471316361434353665', '1471312082334076931', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173427974154', '1471316361434353665', '1471312082334076932', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173432168449', '1471316361434353665', '1471312082334076933', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173432168450', '1471316361434353665', '1475102184575320066', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173432168451', '1471316361434353665', '27', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475105173432168452', '1471316361434353665', '28', '2021-12-26 22:04:14');
INSERT INTO `sys_role_permission` VALUES ('1475107341484683265', '1471316889581113345', '1473206786541674498', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877569', '1471316889581113345', '1473204975382511617', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877570', '1471316889581113345', '1473204975382511621', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877571', '1471316889581113345', '1473204975382511618', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877572', '1471316889581113345', '1473204975382511619', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877573', '1471316889581113345', '1475102184575320066', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877574', '1471316889581113345', '27', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877575', '1471316889581113345', '28', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877576', '1471316889581113345', '1473493745231069186', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877577', '1471316889581113345', '1473478364173058050', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1475107341488877578', '1471316889581113345', '1473478364173058054', '2021-12-26 22:12:51');
INSERT INTO `sys_role_permission` VALUES ('1478165339886981122', '1', '51', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339891175425', '1', '11', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339891175426', '1', '40', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339891175427', '1', '43', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339891175428', '1', '17', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339891175429', '1', '44', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339891175430', '1', '26', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564034', '1', '53', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564035', '1', '19', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564036', '1', '36', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564037', '1', '3', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564038', '1', '1311115974068449281', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564039', '1', '13', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564040', '1', '39', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564041', '1', '41', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339899564042', '1', '38', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952642', '1', '12', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952643', '1', '5', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952644', '1', '22', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952645', '1', '9', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952646', '1', '24', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952647', '1', '42', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952648', '1', '10', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339907952649', '1', '25', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146945', '1', '52', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146946', '1', '56', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146947', '1', '57', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146948', '1', '23', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146949', '1', '1473206786541674498', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146950', '1', '1473204975382511617', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146951', '1', '1473204975382511620', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146952', '1', '1473204975382511618', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146953', '1', '1473204975382511621', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339912146954', '1', '1473204975382511619', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339920535554', '1', '1478163649188204546', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339920535555', '1', '1471390978656043009', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339920535556', '1', '1471312082334076929', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339920535557', '1', '1471312082334076930', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339924729858', '1', '1471312082334076931', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339924729859', '1', '1471312082334076932', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339924729860', '1', '1471312082334076933', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339924729861', '1', '1475102184575320066', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339933118465', '1', '27', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339933118466', '1', '28', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339933118467', '1', '30', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339933118468', '1', '29', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339933118469', '1', '1473493745231069186', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339933118470', '1', '1473478364173058050', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339941507074', '1', '1473478364173058051', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339941507075', '1', '1473478364173058052', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339941507076', '1', '1473478364173058053', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339941507077', '1', '1473478364173058054', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339941507078', '1', '1472767335092891650', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339941507079', '1', '1472763471799197698', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701378', '1', '1472763471799197700', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701379', '1', '1472763471799197701', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701380', '1', '1472763471799197702', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701381', '1', '1472763471799197699', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701382', '1', '54', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701383', '1', '59', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701384', '1', '63', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701385', '1', '60', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701386', '1', '61', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701387', '1', '62', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339945701388', '1', '55', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339954089985', '1', '18', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339954089986', '1', '14', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339954089987', '1', '8', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339954089988', '1', '58', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339954089989', '1', '7', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339954089990', '1', '21', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339962478594', '1', '50', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339962478595', '1', '2', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478165339962478596', '1', '6', '2022-01-04 08:44:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208343486465', '1471316791631532034', '1473206786541674498', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208347680769', '1471316791631532034', '1473204975382511617', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208347680770', '1471316791631532034', '1473204975382511620', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208347680771', '1471316791631532034', '1473204975382511621', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208347680772', '1471316791631532034', '1473204975382511619', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069377', '1471316791631532034', '1478163649188204546', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069378', '1471316791631532034', '1471390978656043009', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069379', '1471316791631532034', '1471312082334076929', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069380', '1471316791631532034', '1471312082334076930', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069381', '1471316791631532034', '1471312082334076931', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069382', '1471316791631532034', '1471312082334076932', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069383', '1471316791631532034', '1471312082334076933', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069384', '1471316791631532034', '1475102184575320066', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069385', '1471316791631532034', '27', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069386', '1471316791631532034', '28', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208356069387', '1471316791631532034', '30', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457986', '1471316791631532034', '29', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457987', '1471316791631532034', '1473493745231069186', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457988', '1471316791631532034', '1473478364173058050', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457989', '1471316791631532034', '1473478364173058051', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457990', '1471316791631532034', '1473478364173058052', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457991', '1471316791631532034', '1473478364173058053', '2022-01-04 12:26:15');
INSERT INTO `sys_role_permission` VALUES ('1478221208364457992', '1471316791631532034', '1473478364173058054', '2022-01-04 12:26:15');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '账户名称',
  `salt` varchar(20) DEFAULT NULL COMMENT '加密盐值',
  `password` varchar(200) NOT NULL COMMENT '用户密码密文',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `dept_id` varchar(64) DEFAULT NULL COMMENT '部门id',
  `real_name` varchar(60) DEFAULT NULL COMMENT '真实名称',
  `nick_name` varchar(60) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱(唯一)',
  `status` tinyint DEFAULT NULL COMMENT '账户状态(1.正常 2.锁定 )',
  `sex` tinyint DEFAULT NULL COMMENT '性别(1.男 2.女)',
  `deleted` tinyint DEFAULT NULL COMMENT '是否删除(1未删除；0已删除)',
  `create_id` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `create_where` tinyint DEFAULT NULL COMMENT '创建来源(1.web 2.android 3.ios )',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '324ce32d86224b00a02b', '2102b59a75ab87616b62d0b9432569d0', '13888888888', '1', '爱糖', '爱糖宝', 'xxxxxx@163.com', '1', '2', '1', '1', '1', '3', '2019-09-22 19:38:05', '2021-12-26 20:05:36');
INSERT INTO `sys_user` VALUES ('1471390460885991426', 'pujun', '1d07b731f4174363b33c', '1d441272921aa4e3355221894e324b7f', '15826342104', '1471317503849517058', '君仁堂', 'pj', '3231784030@qq.com', '1', '1', '1', null, '1', '1', '2021-12-16 16:03:18', '2021-12-22 22:16:16');
INSERT INTO `sys_user` VALUES ('1474680720881500161', '员工1', '5b52f0fe73a1449ba11e', 'c0bfe1c3fb6222a1cadc2adb455d2518', '', '1471317503849517058', null, '', null, '1', null, '1', null, '1', '1', '2021-12-25 17:57:37', '2021-12-26 22:06:18');
INSERT INTO `sys_user` VALUES ('1474680801219198977', '员工2', '30c58af14dd14e698668', '93c59155d1627169cee5e786a83f2b3e', '', '1471317503849517058', null, '', null, '1', null, '1', null, '1', '1', '2021-12-25 17:57:56', '2021-12-28 22:19:36');
INSERT INTO `sys_user` VALUES ('1474680866813919233', '前台1', '171f9ce386884e469732', '6cd6f2234f11ceeb6128f7476bd305b9', '', '1471317503849517058', null, '', null, '1', null, '1', null, '1', '1', '2021-12-25 17:58:12', '2021-12-26 22:05:49');
INSERT INTO `sys_user` VALUES ('1474680919221747714', '主管1', 'f89c72a80a5044a794cc', 'fd34daad5fb2643feb4c9f27c9b6fdfc', '', '1471317503849517058', null, '', null, '1', null, '1', null, null, '1', '2021-12-25 17:58:24', '2021-12-25 17:58:24');
INSERT INTO `sys_user` VALUES ('1475448817808728065', '员工4', '1b3438d86d0b44c698cb', '6798f4d2e4ee4ba8ff25fb894f20bbc5', '', '', null, '', null, '1', null, '1', null, null, '1', '2021-12-27 20:49:45', '2021-12-27 20:49:45');
INSERT INTO `sys_user` VALUES ('1475788839791607809', '主管2', '1503ed6d0da74cb29492', 'e4f6caf980eb548b4294953107dd858f', '', '1471317503849517058', null, 'tomo', null, '1', null, '1', null, null, '1', '2021-12-28 19:20:53', '2021-12-28 19:20:53');
INSERT INTO `sys_user` VALUES ('1475790845595860993', '员工3', 'be9d14598c3a41c6a043', 'f0e35795605c126c86ed0e0bdbdeca08', '', '', null, '', null, '1', null, '1', null, null, '1', '2021-12-28 19:28:51', '2021-12-28 19:28:51');
INSERT INTO `sys_user` VALUES ('1476032316831346689', '测试人员1', '6aefd4343f3d4d1fa843', 'd685959848e353c4cdf597d40fea061b', '', '', null, '', null, '1', null, '0', null, null, '1', '2021-12-29 11:28:22', '2021-12-29 11:28:22');
INSERT INTO `sys_user` VALUES ('1476032615797141506', '测试人员1', 'b7e73071d7f64601b08d', 'f90d6cd3ce091930604e3ecaa875e8ee', '', '', null, '', null, '2', null, '1', null, '1', '1', '2021-12-29 11:29:34', '2021-12-29 11:35:56');
INSERT INTO `sys_user` VALUES ('1476111699596750849', 'yunhhh', '854923c102d8481b8432', '3ab87f73d1a22ff44577aad1115bb537', '111', '1', null, 'yunhhh', null, '1', null, '1', null, null, '1', '2021-12-29 16:43:49', '2021-12-29 16:43:49');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(64) NOT NULL COMMENT '用户id',
  `user_id` varchar(64) DEFAULT NULL,
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='系统用户角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1', '2020-03-19 02:23:13');
INSERT INTO `sys_user_role` VALUES ('1475448948360634369', '1475448817808728065', '1471316889581113345', '2021-12-27 20:50:16');
INSERT INTO `sys_user_role` VALUES ('1475792490442506242', '1475788839791607809', '1471316791631532034', '2021-12-28 19:35:23');
INSERT INTO `sys_user_role` VALUES ('2', '1474680919221747714', '1471316791631532034', '2021-12-25 17:59:12');
INSERT INTO `sys_user_role` VALUES ('3', '1474680866813919233', '1471316361434353665', '2021-12-26 22:07:58');
INSERT INTO `sys_user_role` VALUES ('4', '1474680801219198977', '1471316889581113345', '2021-12-26 22:08:10');
INSERT INTO `sys_user_role` VALUES ('5', '1474680720881500161', '1471316889581113345', '2021-12-26 22:08:23');
INSERT INTO `sys_user_role` VALUES ('6', '1471390460885991426', '1', '2021-12-26 22:08:37');

-- ----------------------------
-- Table structure for yijian
-- ----------------------------
DROP TABLE IF EXISTS `yijian`;
CREATE TABLE `yijian` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `jianyi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '修改意见',
  `cj_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工名',
  `statues` tinyint DEFAULT NULL COMMENT '进度(1:待处理 0:已修改)',
  `shenheren` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of yijian
-- ----------------------------
INSERT INTO `yijian` VALUES ('1475067334547910657', '项目1', 'xxxxxxxxxxxxx', '员工1', '1', '主管1');
INSERT INTO `yijian` VALUES ('1475739524318617601', '项目3', 'xxxxxxxxxxxxxxx', '员工3', '1', '主管1');
INSERT INTO `yijian` VALUES ('1475833335073939457', '项目2', 'xxxxxxxxxxxxx', '员工2', '1', '主管1');
INSERT INTO `yijian` VALUES ('1475994858966134786', '项目4', 'xxxxxxxxxx', '员工4', '1', '主管2');
INSERT INTO `yijian` VALUES ('1476121677095186434', '项目7', 'vvvvvvv', '员工1', '1', '主管2');
INSERT INTO `yijian` VALUES ('1476503383052644354', '项目001', 'ccccc', '员工1', '1', '主管2');
INSERT INTO `yijian` VALUES ('1478222895732957185', '项目05', 'wqewe', '员工3', '1', '主管2');
INSERT INTO `yijian` VALUES ('1478273371224563714', '项目6', 'vcuxvhxucv', '员工2', '1', '主管2');
DROP TRIGGER IF EXISTS `r`;
DELIMITER ;;
CREATE TRIGGER `r` BEFORE INSERT ON `gogzhi` FOR EACH ROW begin
if new.pingfen!=0 
then
set new.gongzhi=935*new.pingfen;
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `r1`;
DELIMITER ;;
CREATE TRIGGER `r1` BEFORE UPDATE ON `gogzhi` FOR EACH ROW begin
set new.gongzhi=935*new.pingfen ;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `t1`;
DELIMITER ;;
CREATE TRIGGER `t1` AFTER INSERT ON `project` FOR EACH ROW begin
if new.stutues=2
then
  update gogzhi 
 set lisi_project =concat_ws(" ", lisi_project,new.project_name)
 where name=new.cj_name ;
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `t2`;
DELIMITER ;;
CREATE TRIGGER `t2` AFTER UPDATE ON `project` FOR EACH ROW begin
if new.stutues=2 
then
if new.cj_name!=old.cj_name or new.stutues!=old.stutues
then
update gogzhi 
set lisi_project =concat_ws(" ", lisi_project,new.project_name)
where name=new.cj_name ;
end if;
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `t3`;
DELIMITER ;;
CREATE TRIGGER `t3` AFTER UPDATE ON `project` FOR EACH ROW begin
update yijian
set  statues =1
where name=new.project_name and statues=0 and cj_name=new.cj_name  ;
end
;;
DELIMITER ;
