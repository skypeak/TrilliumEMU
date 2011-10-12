/*
SQLyog Ultimate v9.10 
MySQL - 5.5.8 : Database - 420_tauth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`420_tauth` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` longtext,
  `v` longtext,
  `s` longtext,
  `email` text,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `mutetime` bigint(40) unsigned NOT NULL DEFAULT '0',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recruiter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';

/*Data for the table `account` */

insert  into `account`(`id`,`username`,`sha_pass_hash`,`sessionkey`,`v`,`s`,`email`,`joindate`,`last_ip`,`failed_logins`,`locked`,`last_login`,`online`,`expansion`,`mutetime`,`locale`,`recruiter`) values (5,'SPYDER','9169FBEAB7D28129D1BD37D060963F9D7C829221','BB4D24D330460426D6117DC906437A956FAD83EC954BA12DD82CD3BA1501682D17DED19150F54949','5B2E15016B392C1A3B2910F39E97CFE06AC35756C7A8B2060D9E4E98FCE3DFFC','FA9BF7C78325193358376AA02A3A6C038B8FFC688BE7BE2A6A45F148E6B15757',NULL,'2011-08-19 17:10:06','127.0.0.1',0,0,'2011-09-23 23:30:33',0,3,0,7,0),(6,'KUKO','B165A4F901A84879951CD049144DFB8C13B58EF8','467DE22E4CD8E4A808D2A2ECFC8BC1CCFAD398EE1E477E7630B59E55F315E7C24B072C0972DBF28B','7FD38548ACF20C0CA8D6BC5CCBBD703BC3772EF3C798D9FCD222A54504A0AFA4','CAB474C6B028FE24ED05854B7C6A470E6027C479E8EC5E4F254819F7E697BF1D',NULL,'2011-08-23 11:58:06','127.0.0.1',0,0,'2011-08-23 12:00:14',0,3,0,0,0),(7,'ITACHI','9B8F644CB0392FF267DBC386B9974400514F05AA','8296C9127FA68373FD134360FDBAFD8049E659DE60F312E1C3D36E8328BB2229F4A0ED293CAD234B','5E7E155B298F29FE1867E9BF300F51550F7F389A76E5CE34721284E8566CF8EF','8D0868B9180B01C5F7C8B37C465BEC51ECE49B65933737D83BAEC9DB34AD913F',NULL,'2011-09-16 17:10:50','127.0.0.1',0,0,'2011-09-16 17:11:29',0,3,0,7,0);

/*Table structure for table `account_access` */

DROP TABLE IF EXISTS `account_access`;

CREATE TABLE `account_access` (
  `id` int(11) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `account_access` */

insert  into `account_access`(`id`,`gmlevel`,`RealmID`) values (5,3,1),(7,3,1);

/*Table structure for table `account_banned` */

DROP TABLE IF EXISTS `account_banned`;

CREATE TABLE `account_banned` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT '0',
  `unbandate` bigint(40) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Ban List';

/*Data for the table `account_banned` */

/*Table structure for table `ip_banned` */

DROP TABLE IF EXISTS `ip_banned`;

CREATE TABLE `ip_banned` (
  `ip` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `bandate` bigint(40) NOT NULL,
  `unbandate` bigint(40) NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

/*Data for the table `ip_banned` */

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `time` int(11) unsigned NOT NULL,
  `realm` int(11) unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `string` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `logs` */

/*Table structure for table `realmcharacters` */

DROP TABLE IF EXISTS `realmcharacters`;

CREATE TABLE `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL DEFAULT '0',
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

/*Data for the table `realmcharacters` */

insert  into `realmcharacters`(`realmid`,`acctid`,`numchars`) values (1,5,4),(1,6,1),(1,7,1);

/*Table structure for table `realmlist` */

DROP TABLE IF EXISTS `realmlist`;

CREATE TABLE `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `color` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `gamebuild` int(11) unsigned NOT NULL DEFAULT '14480',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

/*Data for the table `realmlist` */

insert  into `realmlist`(`id`,`name`,`address`,`port`,`icon`,`color`,`timezone`,`allowedSecurityLevel`,`population`,`gamebuild`) values (1,'ArkCORE','127.0.0.1',8085,0,1,1,0,0,14480);

/*Table structure for table `uptime` */

DROP TABLE IF EXISTS `uptime`;

CREATE TABLE `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'ArkCORE',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

/*Data for the table `uptime` */

insert  into `uptime`(`realmid`,`starttime`,`startstring`,`uptime`,`maxplayers`,`revision`) values (1,1316307790,'2011-09-17 21:03:10',0,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316356474,'2011-09-18 10:34:34',0,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316357208,'2011-09-18 10:46:48',600,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316360753,'2011-09-18 11:45:53',0,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316363958,'2011-09-18 12:39:18',0,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316364237,'2011-09-18 12:43:57',600,1,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316365045,'2011-09-18 12:57:25',601,1,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316368307,'2011-09-18 13:51:47',0,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316396474,'2011-09-18 21:41:14',0,0,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316467208,'2011-09-19 17:20:08',601,1,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)'),(1,1316834962,'2011-09-23 23:29:22',600,1,'ArkCORE rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
