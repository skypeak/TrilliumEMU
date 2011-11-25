/*
SQLyog Ultimate v9.10 
MySQL - 5.5.8 : Database - ark_auth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ark_auth` /*!40100 DEFAULT CHARACTER SET latin1 */;

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';

/*Data for the table `account` */

insert  into `account`(`id`,`username`,`sha_pass_hash`,`sessionkey`,`v`,`s`,`email`,`joindate`,`last_ip`,`failed_logins`,`locked`,`last_login`,`online`,`expansion`,`mutetime`,`locale`,`recruiter`) values (1,'DEVELOPER','82FA3BF31780E4CAAAC18DB6BC2940EA7D37B2ED',NULL,NULL,NULL,NULL,'2011-10-29 17:48:44','127.0.0.1',0,0,'0000-00-00 00:00:00',0,3,0,0,0),(2,'ADMINISTRATOR','A34B29541B87B7E4823683CE6C7BF6AE68BEAAAC',NULL,NULL,NULL,NULL,'2011-10-29 17:48:53','127.0.0.1',0,0,'0000-00-00 00:00:00',0,3,0,0,0),(3,'GAMEMASTER','7841E21831D7C6BC0B57FBE7151EB82BD65EA1F9',NULL,NULL,NULL,NULL,'2011-10-29 17:49:12','127.0.0.1',0,0,'0000-00-00 00:00:00',0,3,0,0,0),(4,'MODERATOR','A7F5FBFF0B4EEC2D6B6E78E38E8312E64D700008',NULL,NULL,NULL,NULL,'2011-10-29 17:49:19','127.0.0.1',0,0,'0000-00-00 00:00:00',0,3,0,0,0),(5,'PLAYER','3CE8A96D17C5AE88A30681024E86279F1A38C041',NULL,NULL,NULL,NULL,'2011-10-29 17:49:27','127.0.0.1',0,0,'0000-00-00 00:00:00',0,3,0,0,0);

/*Table structure for table `account_access` */

DROP TABLE IF EXISTS `account_access`;

CREATE TABLE `account_access` (
  `id` int(11) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `account_access` */

insert  into `account_access`(`id`,`gmlevel`,`RealmID`) values (1,6,-1),(2,5,-1),(3,2,-1),(4,1,-1);

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

insert  into `realmcharacters`(`realmid`,`acctid`,`numchars`) values (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0);

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
  `gamebuild` int(11) unsigned NOT NULL DEFAULT '14545',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

/*Data for the table `realmlist` */

insert  into `realmlist`(`id`,`name`,`address`,`port`,`icon`,`color`,`timezone`,`allowedSecurityLevel`,`population`,`gamebuild`) values (1,'Trillium World','127.0.0.1',8085,0,0,1,0,0,14545);

/*Table structure for table `uptime` */

DROP TABLE IF EXISTS `uptime`;

CREATE TABLE `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trilliumcore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

/*Data for the table `uptime` */

insert  into `uptime`(`realmid`,`starttime`,`startstring`,`uptime`,`maxplayers`,`revision`) values (1,1319924880,'2011-10-29 17:48:00',0,0,'TrilliumEMU rev. 0000-00-00 00:00:00 +0000 (Archived) (Win32, Release)');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
