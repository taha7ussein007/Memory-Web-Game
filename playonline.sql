-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2016 at 08:12 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `playonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `responder_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `response` text,
  `comp_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resp_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responder_id` (`responder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `game_room`
--

CREATE TABLE IF NOT EXISTS `game_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `max_players` int(11) NOT NULL,
  `host_id` int(11) NOT NULL,
  `host_ip` varchar(1000) NOT NULL,
  `game_state` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `game_state` (`game_state`),
  KEY `host_id` (`host_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `game_state`
--

CREATE TABLE IF NOT EXISTS `game_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `game_state`
--

INSERT INTO `game_state` (`id`, `state`) VALUES
(1, 'Wait'),
(2, 'Cancelled'),
(3, 'Ready'),
(4, 'Started'),
(5, 'Paused'),
(6, 'Aborted'),
(7, 'Finished');

-- --------------------------------------------------------

--
-- Table structure for table `log_history`
--

CREATE TABLE IF NOT EXISTS `log_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(200) NOT NULL,
  `state` tinyint(1) NOT NULL COMMENT 'login 0 or logout 1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `publisher` (`publisher`),
  KEY `publisher_2` (`publisher`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `publisher`, `title`, `content`, `timestamp`) VALUES
(1, 3, 'ahmed ', 'this the post', '2016-03-21 16:10:05'),
(2, 3, 'Taha', 'try this post', '2016-03-21 16:13:28'),
(3, 3, 'blapblapblap', 'this is my post', '2016-03-21 16:27:13'),
(4, 3, 'ahmed ', 'what about this ', '2016-03-21 16:30:58'),
(5, 3, 'Omer', 'podspgsgupsfgopfsgod', '2016-03-21 18:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `room_players`
--

CREATE TABLE IF NOT EXISTS `room_players` (
  `player_id` int(11) NOT NULL,
  `player_ip` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `is_ready` tinyint(1) NOT NULL,
  `score` int(11) NOT NULL,
  KEY `player_id` (`player_id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '4',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '1',
  `subscribed` tinyint(1) NOT NULL DEFAULT '1',
  `profile_link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `mobile`, `password`, `type`, `active`, `premium`, `online`, `subscribed`, `profile_link`) VALUES
(1, 'ahmed1', 'ahmed1', 'ahmed1@ya.com', '0111111111', '1234', 4, 1, 0, 1, 1, NULL),
(2, 'ahmed2', 'ahmed2', 'ahmed2@ya.com', '0111111', '1234', 4, 1, 0, 1, 0, NULL),
(3, 'ahmed3', 'ahmed3', 'ahmed3@ya.com', '011111111', '1234', 4, 1, 0, 1, 1, NULL),
(4, 'ahmed4', 'ahmed4', 'ahmed4@ya.com', '01111111', '1234', 4, 1, 0, 1, 1, NULL),
(5, 'omer1', 'omer1', 'omer1@gm.com', '022222222', '1234', 4, 1, 0, 1, 1, NULL),
(6, 'omer2', 'omer2', 'omer2@gm.omo', '022222', '1234', 4, 1, 0, 1, 1, NULL),
(7, 'omer3', 'omer3', 'omer3@gm.mm', '02222', '1234', 4, 1, 0, 1, 1, NULL),
(8, 'Taha', 'Taha Hussein', 'taha1@yahoo.coom', '0111255', '1234', 4, 1, 0, 1, 1, NULL),
(9, 'Amer', 'Mohamed Amar', 'amar1@yahoo.com', '0122122', '1234', 4, 1, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE IF NOT EXISTS `user_post` (
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`,`post_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`user_id`, `post_id`) VALUES
(1, 3),
(1, 3),
(2, 3),
(2, 3),
(3, 3),
(3, 3),
(4, 3),
(4, 3),
(5, 3),
(5, 3),
(6, 3),
(6, 3),
(7, 3),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type`) VALUES
(1, 'Admin'),
(2, 'GM'),
(3, 'Tech'),
(4, 'Player');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`responder_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_room`
--
ALTER TABLE `game_room`
  ADD CONSTRAINT `game_room_ibfk_1` FOREIGN KEY (`game_state`) REFERENCES `game_state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_room_ibfk_2` FOREIGN KEY (`host_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log_history`
--
ALTER TABLE `log_history`
  ADD CONSTRAINT `log_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`publisher`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_players`
--
ALTER TABLE `room_players`
  ADD CONSTRAINT `room_players_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_players_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `game_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`type`) REFERENCES `user_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
