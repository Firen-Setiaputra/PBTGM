# Host: localhost  (Version 5.5.5-10.4.14-MariaDB)
# Date: 2024-06-05 14:36:31
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "2223060_detil_pesan"
#

DROP TABLE IF EXISTS `2223060_detil_pesan`;
CREATE TABLE `2223060_detil_pesan` (
  `2223060_NoSP` char(6) NOT NULL DEFAULT '',
  `2223060_KdJasa` char(6) NOT NULL DEFAULT '',
  `2223060_JmlPesan` int(3) DEFAULT NULL,
  `2223060_HrgPesan` double(9,0) DEFAULT NULL,
  PRIMARY KEY (`2223060_NoSP`,`2223060_KdJasa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "2223060_detil_pesan"
#

INSERT INTO `2223060_detil_pesan` VALUES ('PSN001','J001',2,5000000),('PSN001','J002',2,600000),('PSN002','J002',2,600000),('PSN003','J001',2,5000000),('PSN004','J003',1,7500000),('PSN005','J001',2,5000000),('PSN006','J001',3,5000000),('PSN007','001',6,5),('PSN007','003',3,3),('PSN007','02',3,5),('PSN007','J001',3,400000),('PSN007','J003',3,500000),('PSN007','J006',6,50000),('PSN007','V004',2,100000),('PSN007','V005',3,200000);

#
# Structure for table "2223060_divisi"
#

DROP TABLE IF EXISTS `2223060_divisi`;
CREATE TABLE `2223060_divisi` (
  `2223060_IdDivisi` char(4) NOT NULL DEFAULT '' COMMENT 'Format AutoNumber(Dxxx)',
  `2223060_NmDivisi` varchar(35) DEFAULT '',
  `2223060_AlmtDivisi` varchar(225) DEFAULT NULL,
  `2223060_No_Telp` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`2223060_IdDivisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "2223060_divisi"
#

INSERT INTO `2223060_divisi` VALUES ('D001','METIK','METIK','0812365738'),('D002','Media Informatika','JL haji naim','0812851235326');

#
# Structure for table "2223060_jasa"
#

DROP TABLE IF EXISTS `2223060_jasa`;
CREATE TABLE `2223060_jasa` (
  `2223060_KdJasa` char(6) NOT NULL DEFAULT '',
  `2223060_NmJasa` varchar(35) DEFAULT NULL,
  `2223060_LamaJasa` int(3) DEFAULT NULL,
  `2223060_HrgJasa` double(8,0) DEFAULT NULL,
  PRIMARY KEY (`2223060_KdJasa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "2223060_jasa"
#

INSERT INTO `2223060_jasa` VALUES ('001','IT',5,5),('003','IIT',2,3),('02','informatika',5,5),('J001','killer',1,400000),('J003','servis hp',5,500000),('J006','petugas',1,50000),('V004','keamanan',1,100000),('V005','pengajar',3,200000);

#
# Structure for table "2223060_sp"
#

DROP TABLE IF EXISTS `2223060_sp`;
CREATE TABLE `2223060_sp` (
  `2223060_NoSP` char(6) NOT NULL DEFAULT '',
  `2223060_IdDivisi` char(4) DEFAULT NULL,
  `2223060_TglSP` date DEFAULT NULL,
  PRIMARY KEY (`2223060_NoSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

#
# Data for table "2223060_sp"
#

INSERT INTO `2223060_sp` VALUES ('PSN001','D001','2024-06-04'),('PSN002','D001','2024-06-04'),('PSN003','D001','2024-06-05'),('PSN004','D001','2024-06-05'),('PSN005','D002','2024-06-05'),('PSN006','D001','2024-06-05'),('PSN007','D002','2024-06-05');

#
# Structure for table "2223060_user"
#

DROP TABLE IF EXISTS `2223060_user`;
CREATE TABLE `2223060_user` (
  `username` char(10) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `hak_akses` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "2223060_user"
#

INSERT INTO `2223060_user` VALUES ('ambatron','121212','user'),('jaka','020202','ADMIN'),('Virren','021206','ADMIN');
