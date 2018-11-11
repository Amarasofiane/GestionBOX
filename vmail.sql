-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 05:46 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vmail`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `passwordlastchange` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `settings` text,
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  KEY `passwordlastchange` (`passwordlastchange`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `language`, `passwordlastchange`, `settings`, `created`, `modified`, `expired`, `active`) VALUES
('postmaster@style.dz', '{SSHA512}19cxY9EPoCTREaWfTfUocAtFL/SGmVEFcYxEVhqIggPcy3oC3lw4/PUTcPf1YhRT4kIlffI1exQJoB3w5SFuqg912TGrrvfS', 'amara', 'fr_FR', '1970-01-01 01:01:01', NULL, '2017-02-14 15:58:00', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alias`
--

CREATE TABLE IF NOT EXISTS `alias` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `goto` text,
  `name` varchar(255) NOT NULL DEFAULT '',
  `moderators` text,
  `accesspolicy` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `is_alias` tinyint(1) NOT NULL DEFAULT '0',
  `alias_to` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`address`),
  KEY `domain` (`domain`),
  KEY `islist` (`islist`),
  KEY `is_alias` (`is_alias`),
  KEY `alias_to` (`alias_to`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alias`
--

INSERT INTO `alias` (`address`, `goto`, `name`, `moderators`, `accesspolicy`, `domain`, `islist`, `is_alias`, `alias_to`, `created`, `modified`, `expired`, `active`) VALUES
('amara@style.dz', 'amara@style.dz', '', NULL, '', 'style.dz', 0, 0, '', '2017-04-06 07:30:38', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1),
('amarasofiane@style.dz', 'amarasofiane@style.dz', '', NULL, '', 'style.dz', 0, 0, '', '2017-02-14 16:20:53', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1),
('postmaster@style.dz', 'postmaster@style.dz', '', NULL, '', 'style.dz', 0, 0, '', '2017-02-14 13:31:39', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1),
('sidali@style.dz', 'sidali@style.dz', '', NULL, '', 'style.dz', 0, 0, '', '2017-03-02 14:58:34', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1),
('tpreseau@style.dz', 'tpreseau@style.dz', '', NULL, '', 'style.dz', 0, 0, '', '2017-02-16 12:39:51', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alias_domain`
--

CREATE TABLE IF NOT EXISTS `alias_domain` (
  `alias_domain` varchar(255) NOT NULL,
  `target_domain` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`alias_domain`),
  KEY `target_domain` (`target_domain`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `anyone_shares`
--

CREATE TABLE IF NOT EXISTS `anyone_shares` (
  `from_user` varchar(255) NOT NULL,
  `dummy` char(1) DEFAULT '1',
  PRIMARY KEY (`from_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_mailboxes`
--

CREATE TABLE IF NOT EXISTS `deleted_mailboxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `maildir` varchar(255) NOT NULL DEFAULT '',
  `admin` varchar(255) NOT NULL DEFAULT '',
  `delete_date` date DEFAULT NULL,
  KEY `id` (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `username` (`username`),
  KEY `domain` (`domain`),
  KEY `admin` (`admin`),
  KEY `delete_date` (`delete_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE IF NOT EXISTS `domain` (
  `domain` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `disclaimer` text,
  `aliases` int(10) NOT NULL DEFAULT '0',
  `mailboxes` int(10) NOT NULL DEFAULT '0',
  `maxquota` bigint(20) NOT NULL DEFAULT '0',
  `quota` bigint(20) NOT NULL DEFAULT '0',
  `transport` varchar(255) NOT NULL DEFAULT 'dovecot',
  `backupmx` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text,
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`domain`),
  KEY `backupmx` (`backupmx`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`domain`, `description`, `disclaimer`, `aliases`, `mailboxes`, `maxquota`, `quota`, `transport`, `backupmx`, `settings`, `created`, `modified`, `expired`, `active`) VALUES
('style.dz', NULL, NULL, 0, 0, 0, 0, 'dovecot', 0, 'default_user_quota:1024;', '2017-02-14 13:31:39', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `domain_admins`
--

CREATE TABLE IF NOT EXISTS `domain_admins` (
  `username` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '',
  `domain` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`,`domain`),
  KEY `username` (`username`),
  KEY `domain` (`domain`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain_admins`
--

INSERT INTO `domain_admins` (`username`, `domain`, `created`, `modified`, `expired`, `active`) VALUES
('postmaster@style.dz', 'ALL', '2017-02-14 13:31:39', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE IF NOT EXISTS `mailbox` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `storagebasedirectory` varchar(255) NOT NULL DEFAULT '/var/vmail',
  `storagenode` varchar(255) NOT NULL DEFAULT 'vmail1',
  `maildir` varchar(255) NOT NULL DEFAULT '',
  `quota` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `transport` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(255) NOT NULL DEFAULT '',
  `rank` varchar(255) NOT NULL DEFAULT 'normal',
  `employeeid` varchar(255) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `isglobaladmin` tinyint(1) NOT NULL DEFAULT '0',
  `enablesmtp` tinyint(1) NOT NULL DEFAULT '1',
  `enablesmtpsecured` tinyint(1) NOT NULL DEFAULT '1',
  `enablepop3` tinyint(1) NOT NULL DEFAULT '1',
  `enablepop3secured` tinyint(1) NOT NULL DEFAULT '1',
  `enableimap` tinyint(1) NOT NULL DEFAULT '1',
  `enableimapsecured` tinyint(1) NOT NULL DEFAULT '1',
  `enabledeliver` tinyint(1) NOT NULL DEFAULT '1',
  `enablelda` tinyint(1) NOT NULL DEFAULT '1',
  `enablemanagesieve` tinyint(1) NOT NULL DEFAULT '1',
  `enablemanagesievesecured` tinyint(1) NOT NULL DEFAULT '1',
  `enablesieve` tinyint(1) NOT NULL DEFAULT '1',
  `enablesievesecured` tinyint(1) NOT NULL DEFAULT '1',
  `enableinternal` tinyint(1) NOT NULL DEFAULT '1',
  `enabledoveadm` tinyint(1) NOT NULL DEFAULT '1',
  `enablelib-storage` tinyint(1) NOT NULL DEFAULT '1',
  `enableindexer-worker` tinyint(1) NOT NULL DEFAULT '1',
  `enablelmtp` tinyint(1) NOT NULL DEFAULT '1',
  `enabledsync` tinyint(1) NOT NULL DEFAULT '1',
  `enablesogo` tinyint(1) NOT NULL DEFAULT '1',
  `allow_nets` text,
  `lastlogindate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `lastloginipv4` int(4) unsigned NOT NULL DEFAULT '0',
  `lastloginprotocol` char(255) NOT NULL DEFAULT '',
  `disclaimer` text,
  `allowedsenders` text,
  `rejectedsenders` text,
  `allowedrecipients` text,
  `rejectedrecipients` text,
  `settings` text,
  `passwordlastchange` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `local_part` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`username`),
  KEY `domain` (`domain`),
  KEY `department` (`department`),
  KEY `employeeid` (`employeeid`),
  KEY `isadmin` (`isadmin`),
  KEY `isglobaladmin` (`isglobaladmin`),
  KEY `enablesmtp` (`enablesmtp`),
  KEY `enablesmtpsecured` (`enablesmtpsecured`),
  KEY `enablepop3` (`enablepop3`),
  KEY `enablepop3secured` (`enablepop3secured`),
  KEY `enableimap` (`enableimap`),
  KEY `enableimapsecured` (`enableimapsecured`),
  KEY `enabledeliver` (`enabledeliver`),
  KEY `enablelda` (`enablelda`),
  KEY `enablemanagesieve` (`enablemanagesieve`),
  KEY `enablemanagesievesecured` (`enablemanagesievesecured`),
  KEY `enablesieve` (`enablesieve`),
  KEY `enablesievesecured` (`enablesievesecured`),
  KEY `enablelmtp` (`enablelmtp`),
  KEY `enableinternal` (`enableinternal`),
  KEY `enabledoveadm` (`enabledoveadm`),
  KEY `enablelib-storage` (`enablelib-storage`),
  KEY `enableindexer-worker` (`enableindexer-worker`),
  KEY `enabledsync` (`enabledsync`),
  KEY `enablesogo` (`enablesogo`),
  KEY `passwordlastchange` (`passwordlastchange`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`username`, `password`, `name`, `language`, `storagebasedirectory`, `storagenode`, `maildir`, `quota`, `domain`, `transport`, `department`, `rank`, `employeeid`, `isadmin`, `isglobaladmin`, `enablesmtp`, `enablesmtpsecured`, `enablepop3`, `enablepop3secured`, `enableimap`, `enableimapsecured`, `enabledeliver`, `enablelda`, `enablemanagesieve`, `enablemanagesievesecured`, `enablesieve`, `enablesievesecured`, `enableinternal`, `enabledoveadm`, `enablelib-storage`, `enableindexer-worker`, `enablelmtp`, `enabledsync`, `enablesogo`, `allow_nets`, `lastlogindate`, `lastloginipv4`, `lastloginprotocol`, `disclaimer`, `allowedsenders`, `rejectedsenders`, `allowedrecipients`, `rejectedrecipients`, `settings`, `passwordlastchange`, `created`, `modified`, `expired`, `active`, `local_part`) VALUES
('amara@style.dz', '{SSHA512}v4fqLiuK8yzBxbmvD6FAvJi78C73TimbO7o5DIO6zXLQdhk14pJp4aXRQiVtancKxWekRgC/ozr65io9xKrxncaqlQ/SV8Y7', 'amara', '', '/var/vmail', 'vmail1', 'style.dz/a/m/a/amara-2017.04.06.09.30.38/', 1, 'style.dz', '', '', 'normal', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '1970-01-01 01:01:01', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 01:01:01', '2017-04-06 07:30:38', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1, 'amara'),
('amarasofiane@style.dz', '{SSHA512}4pR4DcSLAlLUvaRVeOQ9j44h6oXuuIxCwr3NzNzvxDdJV0cr1GhVfPGsr7sdVTwg5q9fX+HjHL+VbbC6HFYHQIFr6mq+Tagx', 'Amara', '', '/var/vmail', 'vmail1', 'style.dz/a/m/a/amarasofiane-2017.02.14.17.20.53/', 50, 'style.dz', '', '', 'normal', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '1970-01-01 01:01:01', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 01:01:01', '2017-02-14 16:20:53', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1, 'amarasofiane'),
('postmaster@style.dz', '{SSHA512}YOwcpz/Ddc45mIssIngRnexfxH0yxOI0uF+nfUfaRcxp3utKJAN7xtltPsgkGzWCyHDCI53bdKlgoM6D3p1ZtBrTvwmMmsn/', 'postmaster', '', '/var/vmail', 'vmail1', 'style.dz/p/o/s/postmaster/', 1024, 'style.dz', '', '', 'normal', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '1970-01-01 01:01:01', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 01:01:01', '2017-02-14 13:31:39', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1, ''),
('sidali@style.dz', '{SSHA512}2ogIwGS58X9vBBrbRXsYpCoSy7/C3bb49PCfKinzJeTqnhnLS1VkKWYo3TTkpJDftF93UEB8BftkAQrZ1yjYm25fRw60uwbT', 'sidali', '', '/var/vmail', 'vmail1', 'style.dz/s/i/d/sidali-2017.03.02.15.58.34/', 1, 'style.dz', '', '', 'normal', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '1970-01-01 01:01:01', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 01:01:01', '2017-03-02 14:58:34', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1, 'sidali'),
('tpreseau@style.dz', '{SSHA512}5Ykj22GW6dEW2tpC79rgCcFtpnrVfUlYbAvMjB8nHPxqNwiS/Mk13ex/Iliy6jlTXlYOAsSjoFVb6pSKybbzjkvc2gkQqbcJ', 'tpreseau', '', '/var/vmail', 'vmail1', 'style.dz/t/p/r/tpreseau-2017.02.16.13.39.51/', 4, 'style.dz', '', '', 'normal', '', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '1970-01-01 01:01:01', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '1970-01-01 01:01:01', '2017-02-16 12:39:51', '1970-01-01 01:01:01', '9999-12-31 00:00:00', 1, 'tpreseau');

-- --------------------------------------------------------

--
-- Table structure for table `recipient_bcc_domain`
--

CREATE TABLE IF NOT EXISTS `recipient_bcc_domain` (
  `domain` varchar(255) NOT NULL DEFAULT '',
  `bcc_address` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`domain`),
  KEY `bcc_address` (`bcc_address`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recipient_bcc_user`
--

CREATE TABLE IF NOT EXISTS `recipient_bcc_user` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `bcc_address` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  KEY `bcc_address` (`bcc_address`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sender_bcc_domain`
--

CREATE TABLE IF NOT EXISTS `sender_bcc_domain` (
  `domain` varchar(255) NOT NULL DEFAULT '',
  `bcc_address` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`domain`),
  KEY `bcc_address` (`bcc_address`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sender_bcc_user`
--

CREATE TABLE IF NOT EXISTS `sender_bcc_user` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `bcc_address` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modified` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `expired` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  KEY `bcc_address` (`bcc_address`),
  KEY `domain` (`domain`),
  KEY `expired` (`expired`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sender_relayhost`
--

CREATE TABLE IF NOT EXISTS `sender_relayhost` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL DEFAULT '',
  `relayhost` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `share_folder`
--

CREATE TABLE IF NOT EXISTS `share_folder` (
  `from_user` varchar(255) CHARACTER SET ascii NOT NULL,
  `to_user` varchar(255) CHARACTER SET ascii NOT NULL,
  `dummy` char(1) DEFAULT NULL,
  PRIMARY KEY (`from_user`,`to_user`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `used_quota`
--

CREATE TABLE IF NOT EXISTS `used_quota` (
  `username` varchar(255) NOT NULL,
  `bytes` bigint(20) NOT NULL DEFAULT '0',
  `messages` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`username`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `used_quota`
--

INSERT INTO `used_quota` (`username`, `bytes`, `messages`, `domain`) VALUES
('amarasofiane@style.dz', 2694, 4, 'style.dz'),
('postmaster@style.dz', 299538, 99, 'style.dz'),
('sidali@style.dz', 331, 1, 'style.dz'),
('tpreseau@style.dz', 2716, 2, 'style.dz');

--
-- Triggers `used_quota`
--
DROP TRIGGER IF EXISTS `used_quota_before_insert`;
DELIMITER //
CREATE TRIGGER `used_quota_before_insert` BEFORE INSERT ON `used_quota`
 FOR EACH ROW BEGIN
        SET NEW.domain = SUBSTRING_INDEX(NEW.username, '@', -1);
    END
//
DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
