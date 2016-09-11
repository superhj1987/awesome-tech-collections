--DDL文档主要描述的是系统需要的表的结构以及一些初始化数据--

# 2015.10.1 初始化
 CREATE TABLE `table1` (
  `id` varchar(64) NOT NULL COMMENT 'xxx',
  `column1` varchar(256) DEFAULT NULL COMMENT 'xxx',
  `column2` varchar(256) DEFAULT NULL COMMENT 'xxx',
  `column3` varchar(256) DEFAULT NULL COMMENT 'xxx',
  `column4` varchar(256) DEFAULT NULL COMMENT 'xxx',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table 'table1' modify column column1 varchar(1024);

# 2015.10.9 增加table2
--建表 --
CREATE TABLE `table1` (
  `id` varchar(64) NOT NULL COMMENT 'xxx',
  `column1` varchar(256) DEFAULT NULL COMMENT 'xxx',
  `column2` varchar(256) DEFAULT NULL COMMENT 'xxx',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;