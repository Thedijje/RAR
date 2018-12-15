-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2018 at 06:07 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rar`
--
CREATE DATABASE IF NOT EXISTS `rar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rar`;

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
CREATE TABLE `incidents` (
  `i_id` int(11) NOT NULL,
  `i_user_devide_id` int(11) DEFAULT NULL,
  `i_photo` varchar(200) DEFAULT NULL,
  `i_authenticity_score` varchar(6) DEFAULT NULL,
  `i_longitude` float DEFAULT NULL,
  `i_latitude` float DEFAULT NULL,
  `i_timestamp` varchar(15) DEFAULT NULL,
  `i_heading` int(11) DEFAULT NULL,
  `i_address` varchar(500) DEFAULT NULL,
  `i_altitude` int(11) DEFAULT NULL,
  `i_status` tinyint(4) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `incident_images`
--

DROP TABLE IF EXISTS `incident_images`;
CREATE TABLE `incident_images` (
  `ii_id` int(11) NOT NULL,
  `ii_incident_id` int(11) DEFAULT NULL,
  `ii_image` varchar(200) DEFAULT NULL,
  `ii_status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

DROP TABLE IF EXISTS `incident_status`;
CREATE TABLE `incident_status` (
  `s_id` int(11) NOT NULL,
  `s_incident_id` int(11) DEFAULT NULL,
  `s_response_team_id` int(11) DEFAULT NULL,
  `s_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `response_team`
--

DROP TABLE IF EXISTS `response_team`;
CREATE TABLE `response_team` (
  `rt_id` int(11) NOT NULL,
  `rt_name` int(11) NOT NULL,
  `rt_address` int(11) NOT NULL,
  `rt_area` int(11) NOT NULL,
  `rt_type` int(11) NOT NULL,
  `rt_device_id` int(11) NOT NULL,
  `rt_last_updated_at` int(11) NOT NULL,
  `rt_phone` int(11) NOT NULL,
  `rt_status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `response_team_location`
--

DROP TABLE IF EXISTS `response_team_location`;
CREATE TABLE `response_team_location` (
  `rtl_id` int(11) NOT NULL,
  `rtl_rt_latitude` int(11) DEFAULT NULL,
  `rtl_rt_longitude` int(11) DEFAULT NULL,
  `rtl_rt_max_trip` int(11) DEFAULT NULL,
  `rtl_rt_type` int(11) DEFAULT NULL,
  `rtl_rt_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `status_id` int(10) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`, `enable`) VALUES
(1, 'Active', 1),
(2, 'Inactive', 1),
(3, 'Pending', 1),
(4, 'Rejected', 1),
(5, 'Failed', 1),
(6, 'Suspension requested', 1),
(7, 'Suspended', 1),
(8, 'Paid', 1),
(9, 'Deleted', 1),
(10, 'Processed', 1),
(11, 'Expired', 1),
(12, 'Ended', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `incident_images`
--
ALTER TABLE `incident_images`
  ADD PRIMARY KEY (`ii_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `response_team_location`
--
ALTER TABLE `response_team_location`
  ADD PRIMARY KEY (`rtl_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incident_images`
--
ALTER TABLE `incident_images`
  MODIFY `ii_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incident_status`
--
ALTER TABLE `incident_status`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `response_team_location`
--
ALTER TABLE `response_team_location`
  MODIFY `rtl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
