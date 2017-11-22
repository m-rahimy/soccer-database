-- phpMyAdmin SQL Dump
-- version 4.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2017 at 09:19 PM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sport`
--
CREATE DATABASE IF NOT EXISTS `Sport` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `Sport`;

-- --------------------------------------------------------

--
-- Table structure for table `ban_history`
--

CREATE TABLE `ban_history` (
  `_id_` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `_from` date DEFAULT NULL,
  `_to` date DEFAULT NULL,
  `cause` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `staff_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL DEFAULT '0',
  `_from` date DEFAULT NULL,
  `salary` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `_id` int(11) NOT NULL DEFAULT '0',
  `local_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `en_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fa_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_oversee`
--

CREATE TABLE `field_oversee` (
  `match_id` int(11) NOT NULL DEFAULT '0',
  `referee_id` int(11) NOT NULL DEFAULT '0',
  `referee_role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `_id` int(11) NOT NULL DEFAULT '0',
  `year` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `league_type`
--

CREATE TABLE `league_type` (
  `_id` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_area` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `match_holds_in_stadium`
--

CREATE TABLE `match_holds_in_stadium` (
  `match_id` int(11) DEFAULT NULL,
  `stadium_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `non_playing_staff`
--

CREATE TABLE `non_playing_staff` (
  `_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oversee`
--

CREATE TABLE `oversee` (
  `match_id` int(11) NOT NULL DEFAULT '0',
  `referee_id` int(11) NOT NULL DEFAULT '0',
  `report` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_number`
--

CREATE TABLE `phone_number` (
  `phone_number` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `place_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `_name_` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_replacement`
--

CREATE TABLE `player_replacement` (
  `in_player_id` int(11) NOT NULL,
  `out_player_id` int(11) NOT NULL,
  `MATCH_id` int(11) NOT NULL DEFAULT '0',
  `replacement_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playing_position`
--

CREATE TABLE `playing_position` (
  `_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plays_in_match`
--

CREATE TABLE `plays_in_match` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `MATCH_id` int(11) NOT NULL DEFAULT '0',
  `score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plays_in_team`
--

CREATE TABLE `plays_in_team` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `team_id` int(11) NOT NULL DEFAULT '0',
  `_from` date DEFAULT NULL,
  `_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `punished_by_card`
--

CREATE TABLE `punished_by_card` (
  `_id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `match_id` int(11) DEFAULT NULL,
  `card_type_id` int(11) DEFAULT NULL,
  `_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referee`
--

CREATE TABLE `referee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `establish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_match`
--

CREATE TABLE `team_match` (
  `id` int(11) NOT NULL,
  `team_1` int(11) DEFAULT NULL,
  `team_2` int(11) DEFAULT NULL,
  `held_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_match_in_league`
--

CREATE TABLE `team_match_in_league` (
  `league_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ban_history`
--
ALTER TABLE `ban_history`
  ADD PRIMARY KEY (`_id_`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`staff_id`,`team_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `field_oversee`
--
ALTER TABLE `field_oversee`
  ADD PRIMARY KEY (`match_id`,`referee_id`),
  ADD KEY `referee_id` (`referee_id`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `league_type`
--
ALTER TABLE `league_type`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `match_holds_in_stadium`
--
ALTER TABLE `match_holds_in_stadium`
  ADD KEY `match_id` (`match_id`),
  ADD KEY `stadium_id` (`stadium_id`);

--
-- Indexes for table `non_playing_staff`
--
ALTER TABLE `non_playing_staff`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `oversee`
--
ALTER TABLE `oversee`
  ADD PRIMARY KEY (`match_id`,`referee_id`),
  ADD KEY `referee_id` (`referee_id`);

--
-- Indexes for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`phone_number`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`post`);

--
-- Indexes for table `player_replacement`
--
ALTER TABLE `player_replacement`
  ADD PRIMARY KEY (`in_player_id`,`out_player_id`,`MATCH_id`),
  ADD KEY `out_player_id` (`out_player_id`),
  ADD KEY `MATCH_id` (`MATCH_id`);

--
-- Indexes for table `playing_position`
--
ALTER TABLE `playing_position`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `plays_in_match`
--
ALTER TABLE `plays_in_match`
  ADD PRIMARY KEY (`player_id`,`MATCH_id`),
  ADD KEY `MATCH_id` (`MATCH_id`);

--
-- Indexes for table `plays_in_team`
--
ALTER TABLE `plays_in_team`
  ADD PRIMARY KEY (`player_id`,`team_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `punished_by_card`
--
ALTER TABLE `punished_by_card`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `match_id` (`match_id`),
  ADD KEY `card_type_id` (`card_type_id`);

--
-- Indexes for table `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_match`
--
ALTER TABLE `team_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_1` (`team_1`),
  ADD KEY `team_2` (`team_2`);

--
-- Indexes for table `team_match_in_league`
--
ALTER TABLE `team_match_in_league`
  ADD PRIMARY KEY (`league_id`,`match_id`),
  ADD KEY `match_id` (`match_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ban_history`
--
ALTER TABLE `ban_history`
  ADD CONSTRAINT `ban_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`_id`);

--
-- Constraints for table `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `coaches_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `non_playing_staff` (`_id`);

--
-- Constraints for table `field_oversee`
--
ALTER TABLE `field_oversee`
  ADD CONSTRAINT `field_oversee_ibfk_2` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`id`),
  ADD CONSTRAINT `field_oversee_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `team_match` (`id`);

--
-- Constraints for table `league`
--
ALTER TABLE `league`
  ADD CONSTRAINT `league_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `league_type` (`_id`);

--
-- Constraints for table `match_holds_in_stadium`
--
ALTER TABLE `match_holds_in_stadium`
  ADD CONSTRAINT `match_holds_in_stadium_ibfk_2` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`_id`),
  ADD CONSTRAINT `match_holds_in_stadium_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `team_match` (`id`);

--
-- Constraints for table `oversee`
--
ALTER TABLE `oversee`
  ADD CONSTRAINT `oversee_ibfk_2` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`id`),
  ADD CONSTRAINT `oversee_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `team_match` (`id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`post`) REFERENCES `playing_position` (`_id`);

--
-- Constraints for table `player_replacement`
--
ALTER TABLE `player_replacement`
  ADD CONSTRAINT `player_replacement_ibfk_3` FOREIGN KEY (`MATCH_id`) REFERENCES `team_match` (`id`),
  ADD CONSTRAINT `player_replacement_ibfk_1` FOREIGN KEY (`in_player_id`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `player_replacement_ibfk_2` FOREIGN KEY (`out_player_id`) REFERENCES `player` (`id`);

--
-- Constraints for table `plays_in_match`
--
ALTER TABLE `plays_in_match`
  ADD CONSTRAINT `plays_in_match_ibfk_2` FOREIGN KEY (`MATCH_id`) REFERENCES `team_match` (`id`),
  ADD CONSTRAINT `plays_in_match_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`);

--
-- Constraints for table `plays_in_team`
--
ALTER TABLE `plays_in_team`
  ADD CONSTRAINT `plays_in_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `plays_in_team_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`);

--
-- Constraints for table `punished_by_card`
--
ALTER TABLE `punished_by_card`
  ADD CONSTRAINT `punished_by_card_ibfk_3` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`_id`),
  ADD CONSTRAINT `punished_by_card_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `punished_by_card_ibfk_2` FOREIGN KEY (`match_id`) REFERENCES `team_match` (`id`);

--
-- Constraints for table `stadium`
--
ALTER TABLE `stadium`
  ADD CONSTRAINT `stadium_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`_id`);

--
-- Constraints for table `team_match`
--
ALTER TABLE `team_match`
  ADD CONSTRAINT `team_match_ibfk_1` FOREIGN KEY (`team_1`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `team_match_ibfk_2` FOREIGN KEY (`team_2`) REFERENCES `team` (`id`);

--
-- Constraints for table `team_match_in_league`
--
ALTER TABLE `team_match_in_league`
  ADD CONSTRAINT `team_match_in_league_ibfk_3` FOREIGN KEY (`league_id`) REFERENCES `league` (`_id`),
  ADD CONSTRAINT `team_match_in_league_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `team_match` (`id`),
  ADD CONSTRAINT `team_match_in_league_ibfk_2` FOREIGN KEY (`match_id`) REFERENCES `team_match` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
