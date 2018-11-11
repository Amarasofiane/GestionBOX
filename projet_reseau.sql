-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 05:45 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projet_reseau`
--

-- --------------------------------------------------------

--
-- Table structure for table `f_categories`
--

CREATE TABLE IF NOT EXISTS `f_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `f_categories`
--

INSERT INTO `f_categories` (`id`, `nom`) VALUES
(1, 'ADRESSAGE'),
(2, 'CONFIGURATION DE LA BOX');

-- --------------------------------------------------------

--
-- Table structure for table `f_message`
--

CREATE TABLE IF NOT EXISTS `f_message` (
  `id` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL,
  `id_posteur` int(11) NOT NULL,
  `date_heure_post` datetime NOT NULL,
  `date_heure_edition` datetime NOT NULL,
  `meilleur_reponse` int(1) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f_message`
--

INSERT INTO `f_message` (`id`, `id_topic`, `id_posteur`, `date_heure_post`, `date_heure_edition`, `meilleur_reponse`, `contenu`) VALUES
(0, 5, 2, '2016-06-06 14:02:20', '0000-00-00 00:00:00', 0, 'lolll'),
(0, 4, 2, '2016-06-06 14:02:42', '0000-00-00 00:00:00', 0, 'liiil'),
(0, 8, 2, '2016-06-06 14:15:48', '0000-00-00 00:00:00', 0, 'mmomo'),
(0, 8, 2, '2016-06-06 14:21:14', '0000-00-00 00:00:00', 0, 'mdr'),
(0, 8, 2, '2016-06-06 14:21:28', '0000-00-00 00:00:00', 0, 'cest faux\r\n'),
(0, 7, 2, '2016-06-06 14:22:07', '0000-00-00 00:00:00', 0, 'quoi?'),
(0, 7, 2, '2016-06-06 14:22:14', '0000-00-00 00:00:00', 0, 'non'),
(0, 7, 2, '2016-06-06 14:23:35', '0000-00-00 00:00:00', 0, 'non'),
(0, 8, 2, '2016-06-06 14:26:41', '0000-00-00 00:00:00', 0, 'jjÃ¹\r\n\r\nmm\r\n'),
(0, 8, 2, '2016-06-06 14:26:45', '0000-00-00 00:00:00', 0, 'jj;,'),
(0, 8, 2, '2016-06-06 14:26:48', '0000-00-00 00:00:00', 0, 'hjkhk'),
(0, 8, 2, '2016-06-06 14:27:01', '0000-00-00 00:00:00', 0, 'jjkkd'),
(0, 8, 2, '2016-06-06 14:27:08', '0000-00-00 00:00:00', 0, 'esd'),
(0, 8, 4, '2016-06-06 14:44:30', '0000-00-00 00:00:00', 0, 'lol'),
(0, 8, 2, '2016-06-06 14:50:25', '0000-00-00 00:00:00', 0, 'ok lol'),
(0, 2, 2, '2016-06-06 14:53:23', '0000-00-00 00:00:00', 0, 'ok'),
(0, 2, 2, '2016-06-06 14:59:53', '0000-00-00 00:00:00', 0, 'hi'),
(0, 12, 2, '2016-06-06 16:47:30', '0000-00-00 00:00:00', 0, 'lol'),
(0, 1, 2, '2016-06-07 02:42:21', '0000-00-00 00:00:00', 0, 'kmdkzm'),
(0, 13, 2, '2016-06-07 10:15:21', '0000-00-00 00:00:00', 0, 'je t''explique'),
(0, 14, 5, '2016-06-07 11:51:31', '0000-00-00 00:00:00', 0, 'okkk'),
(0, 14, 5, '2016-06-07 11:51:38', '0000-00-00 00:00:00', 0, 'hjhjh'),
(0, 14, 5, '2016-06-07 11:51:44', '0000-00-00 00:00:00', 0, 'uoui'),
(0, 14, 5, '2016-06-07 11:51:46', '0000-00-00 00:00:00', 0, 'yuyuy'),
(0, 14, 5, '2016-06-07 11:51:49', '0000-00-00 00:00:00', 0, 'yiui'),
(0, 14, 5, '2016-06-07 11:51:52', '0000-00-00 00:00:00', 0, 'iyiu'),
(0, 14, 5, '2016-06-07 11:52:10', '0000-00-00 00:00:00', 0, 'efe*'),
(0, 14, 5, '2016-06-07 11:53:16', '0000-00-00 00:00:00', 0, 'efe*'),
(0, 13, 2, '2016-06-11 21:16:10', '0000-00-00 00:00:00', 0, 'ok'),
(0, 15, 2, '2016-06-11 23:18:41', '0000-00-00 00:00:00', 0, 'quoi paladin?'),
(0, 9, 6, '2016-11-22 16:10:36', '0000-00-00 00:00:00', 0, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `f_souscategories`
--

CREATE TABLE IF NOT EXISTS `f_souscategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `f_souscategories`
--

INSERT INTO `f_souscategories` (`id`, `id_categorie`, `nom`) VALUES
(4, 1, 'ADRESSE IP'),
(5, 1, 'DHCP');

-- --------------------------------------------------------

--
-- Table structure for table `f_suivis`
--

CREATE TABLE IF NOT EXISTS `f_suivis` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_topics`
--

CREATE TABLE IF NOT EXISTS `f_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_createur` int(11) NOT NULL,
  `sujet` text NOT NULL,
  `contenu` text NOT NULL,
  `date_heure_creation` datetime NOT NULL,
  `resolu` tinyint(1) NOT NULL,
  `notif_createur` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `f_topics`
--

INSERT INTO `f_topics` (`id`, `id_createur`, `sujet`, `contenu`, `date_heure_creation`, `resolu`, `notif_createur`) VALUES
(1, 2, 'qzddzd', 'zdqzdqz', '2016-06-05 12:03:15', 0, 0),
(2, 2, 'dqqdlzd', 'kmÃ¹lz', '2016-06-05 12:03:24', 0, 1),
(3, 2, 'papaÂ²Â²', 'kllk', '2016-06-05 12:04:37', 0, 0),
(4, 2, 'papapou', 'ozeopadpiae', '2016-06-05 14:36:50', 0, 0),
(5, 2, 'plooooojh', 'hjh,j', '2016-06-05 14:41:12', 0, 1),
(6, 2, 'molo molo', 'yessssss', '2016-06-06 10:36:31', 0, 1),
(7, 2, 'mouton', 'gpp', '2016-06-06 10:53:18', 0, 0),
(8, 2, 'btooom', 'lool', '2016-06-06 14:04:54', 0, 0),
(9, 2, 'tu parle fort', 'ok', '2016-06-06 16:40:13', 0, 0),
(10, 2, 'lol', 'mm', '2016-06-06 16:41:39', 0, 0),
(11, 2, 'okkk', 'looo', '2016-06-06 16:42:17', 0, 0),
(12, 2, 'boss', 'bbb', '2016-06-06 16:47:03', 0, 0),
(13, 2, 'papa', 'ok', '2016-06-07 10:14:41', 0, 0),
(14, 5, 'inscription', 'probleme d''inscription', '2016-06-07 11:50:50', 0, 0),
(15, 2, 'wow', 'paladin', '2016-06-11 23:17:58', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `f_topics_categories`
--

CREATE TABLE IF NOT EXISTS `f_topics_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_topic` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_souscategorie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `f_topics_categories`
--

INSERT INTO `f_topics_categories` (`id`, `id_topic`, `id_categorie`, `id_souscategorie`) VALUES
(1, 1, 2, 7),
(2, 2, 2, 8),
(3, 3, 1, 2),
(4, 1, 1, 5),
(5, 4, 1, 1),
(6, 5, 1, 3),
(7, 6, 1, 2),
(8, 7, 1, 2),
(9, 8, 1, 1),
(10, 9, 2, 8),
(11, 10, 2, 8),
(12, 11, 2, 8),
(13, 12, 2, 9),
(14, 13, 2, 9),
(15, 14, 1, 1),
(16, 15, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

CREATE TABLE IF NOT EXISTS `membres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `motdepasse` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `mail`, `motdepasse`) VALUES
(1, 'sha', 'habil_sanni@yahoo.fr', 'f3226f91f77a87d909b8920adc91f9a301a7316b'),
(2, 'hab0', 'habi_sanni@yahoo.fr', 'f6949a8c7d5b90b4a698660bbfb9431503fbb995'),
(3, 'HOP', 'hab_sanni@yahoo.fr', 'b327d0632a6aebebd7b174103d80626a69eb0e46'),
(4, 'geo', 'geo@yahoo.fr', '593cb640311be3b9bb33270374ea277e72fa309b'),
(5, 'raman', 'ha@yahoo.fr', '7e240de74fb1ed08fa08d38063f6a6a91462a815'),
(6, 'habil ', 'yo@yahoo.fr', '403926033d001b5279df37cbbe5287b7c7c267fa'),
(7, 'shab', 'hab@yahoo.fr', '91f6e575920d2d503d8597338fd1637d580f4243'),
(8, 'paul', 'paul@yahoo.fr', '91f6e575920d2d503d8597338fd1637d580f4243'),
(9, 'shab', 'shaboul@yahoo.fr', '7b52009b64fd0a2a49e6d8a939753077792b0554'),
(10, 'dodo', 'dodo@yahoo.fr', '7b52009b64fd0a2a49e6d8a939753077792b0554'),
(11, 'amara', 'amarasofiane1@outlook.fr', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(12, 'sof', 'amarasofiane@style.dz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(13, 'sofiane', 'postmaster@style.dz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(14, 'amara', 'amara@style.dz', 'ed27ab247590f13022f8f1b604cf95b8331b62ea');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
