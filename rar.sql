-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2018 at 09:15 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `rar`
--

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

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

CREATE TABLE `response_team` (
  `rt_id` int(11) NOT NULL,
  `rt_name` varchar(255) NOT NULL,
  `rt_address` mediumtext NOT NULL,
  `rt_service_id` int(11) NOT NULL COMMENT 'refer from service id',
  `rt_device_id` varchar(255) NOT NULL,
  `rt_last_updated_at` int(15) NOT NULL,
  `rt_phone` varchar(255) NOT NULL,
  `rt_longitude` varchar(50) NOT NULL,
  `rt_latitide` varchar(50) NOT NULL,
  `rt_status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `response_team`
--

INSERT INTO `response_team` (`rt_id`, `rt_name`, `rt_address`, `rt_service_id`, `rt_device_id`, `rt_last_updated_at`, `rt_phone`, `rt_longitude`, `rt_latitide`, `rt_status`) VALUES
(1, 'AMBULANCE', 'Plot No- 68, Iind Floor, Sector 18, Gurugram, Haryana, 122015', 2, 'AKJSAHK98798', 189798888, '9911253578', '28.458181', '77.0633900000001', 1),
(2, 'AMBULANCE', 'Uma Sanjeevani Hospital, 1 Dakshin Marg, DLF City Phase 2, Gurugram, Haryana, 122008', 2, 'AKajaHK98798', 189788888, '9256240176', '28.461214', '77.032947', 1),
(5, 'AMBULANCE', 'General Hospital, Bus Stand Road, Near Shama Restaurant, Gurugram, Haryana, 122001', 2, 'hjhAKajaHK98798', 189785888, '9256260176', '28.4974090000001', '77.0864110000001', 1),
(6, 'DLF Fire Station', 'DLF Gateway Tower, DLF Cyber City, DLF City Phase 3, Gurugram, Haryana, 122002', 1, 'hjhAKajjaHK98798', 1897678888, '9256860176', '28.497981', '77.0937970000001', 1),
(7, 'Fire Station', 'Udyog Vihar Phase 1, Gurugram, Haryana, 122016', 1, 'hjhAKahjjaHK98798', 1897658888, '9256980176', '28.5125420000001', '77.082659', 1),
(8, 'Metro Fire Hub', 'Old Delhi Road, Satguru Enclave, Palam Vihar Extension, Gurugram, Haryana, 122017', 1, 'hjhAKahjjaHK78798', 176658888, '9256980176', '28.497369', '77.062777', 1),
(9, 'DLF Phase 2 Police Station', 'Road No N 14, Akashneem Marg, DLF PH 2, Gurugram, Haryana, 122008', 3, 'kjjshksjha78s7a', 16877726, '9911253578', '28.48742', '77.09119', 1),
(10, 'Police Assistance Booth', 'Mehrauli Gurgaon Road, Sikanderpur Ghosi, Gurugram, Haryana, 122002', 3, 'ajhsgahj87', 176676879, '9911253578', '28.4847380000001', '77.095535', 1),
(11, 'Police Assistance Booth', 'Udyog Vihar Phase 4, Sector 18, Gurugram, Haryana, 122015', 3, 'has87ye782', 17398273, '9911253578', '28.4910120000001', '77.0812510000001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `response_team_location`
--

CREATE TABLE `response_team_location` (
  `rtl_id` int(11) NOT NULL,
  `rtl_rt_id` int(11) NOT NULL,
  `rtl_rt_latitude` varchar(25) DEFAULT NULL,
  `rtl_rt_longitude` varchar(25) DEFAULT NULL,
  `rtl_rt_max_trip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `response_team_location`
--

INSERT INTO `response_team_location` (`rtl_id`, `rtl_rt_id`, `rtl_rt_latitude`, `rtl_rt_longitude`, `rtl_rt_max_trip`) VALUES
(1, 1, '28.458181', '77.0633900000001', 50),
(3, 5, '28.461214', '77.032947', 50),
(4, 2, '28.4974090000001', '77.0864110000001', 50),
(5, 6, '28.497981', '77.0937970000001', 50),
(6, 7, '28.5125420000001', '77.082659', 50),
(7, 8, '28.497369', '77.062777', 50),
(8, 9, '28.48742', '77.09119', NULL),
(9, 10, '28.4847380000001', '77.095535', NULL),
(10, 11, '28.4910120000001', '77.0812510000001', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`) VALUES
(1, 'Fire brigade'),
(2, 'Ambulance'),
(3, 'Police');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

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
-- Indexes for table `response_team`
--
ALTER TABLE `response_team`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `response_team_location`
--
ALTER TABLE `response_team_location`
  ADD PRIMARY KEY (`rtl_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

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
-- AUTO_INCREMENT for table `response_team`
--
ALTER TABLE `response_team`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `response_team_location`
--
ALTER TABLE `response_team_location`
  MODIFY `rtl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
