-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2024 at 11:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TicketTamer`
--

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `discount_name` varchar(100) NOT NULL,
  `discount_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parking_type`
--

CREATE TABLE `parking_type` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `parking_name` varchar(100) NOT NULL,
  `parking_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parking_type`
--

INSERT INTO `parking_type` (`id`, `date`, `parking_name`, `parking_rate`) VALUES
(1, '2024-05-16 10:59:44', 'Motorcycle', 20),
(2, '2024-05-16 11:00:21', 'Tricycle', 30),
(3, '2024-05-16 11:00:21', 'Van', 50),
(4, '2024-05-16 11:00:43', 'Sedan', 50),
(5, '2024-05-16 11:00:43', 'Pickup', 60);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `transaction_code` varchar(100) NOT NULL,
  `ticket_date` datetime NOT NULL,
  `ticket_plate_no` varchar(100) NOT NULL,
  `ticket_date_start` datetime NOT NULL,
  `ticket_date_end` datetime NOT NULL,
  `ticket_no_hours` int(7) NOT NULL,
  `ticket_rate` double NOT NULL,
  `ticket_total_amount` double NOT NULL,
  `ticket_qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `transaction_code`, `ticket_date`, `ticket_plate_no`, `ticket_date_start`, `ticket_date_end`, `ticket_no_hours`, `ticket_rate`, `ticket_total_amount`, `ticket_qr_code`) VALUES
(17, 'TMR45743', '2024-05-17 02:24:28', '2365126', '2024-05-17 08:24:00', '2024-05-17 11:24:00', 3, 50, 2000, '3'),
(18, 'TMR69813', '2024-05-17 02:40:21', 'hahsah', '2024-05-17 08:40:00', '2024-05-17 11:40:00', 3, 30, 90, '2'),
(20, 'TMR67537', '2024-05-11 03:51:56', 'asa', '2024-05-17 09:51:00', '2024-05-18 01:51:00', 16, 50, 4800, '3'),
(21, 'TMR36489', '2024-05-17 03:55:23', 'a', '2024-05-17 09:55:00', '2024-05-17 09:55:00', 0, 50, 0, '3'),
(22, 'TMR58235', '2024-05-17 04:00:59', 'a', '2024-05-17 10:00:00', '2024-05-18 03:00:00', 17, 20, 340, '1'),
(23, 'TMR15323', '2024-05-12 01:21:39', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 1500, '3'),
(24, 'TMR53076', '2024-05-18 01:21:40', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 150, '3'),
(25, 'TMR27680', '2024-05-18 01:21:40', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 150, '3'),
(26, 'TMR57588', '2024-05-18 01:21:40', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 150, '3'),
(27, 'TMR54362', '2024-05-18 01:21:41', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 150, '3'),
(28, 'TMR18013', '2024-05-12 01:21:43', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 2200, '3'),
(29, 'TMR20850', '2024-05-13 01:21:43', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 3500, '3'),
(30, 'TMR26711', '2024-05-18 01:21:43', '1232', '2024-05-18 07:20:00', '2024-05-18 10:20:00', 3, 50, 150, '3'),
(31, 'TMR34363', '2024-05-18 01:22:06', 'asass', '2024-05-18 07:21:00', '2024-05-18 10:21:00', 3, 50, 150, '4'),
(32, 'TMR50472', '2024-05-18 01:22:24', 'asss', '2024-05-18 07:22:00', '2024-05-18 11:22:00', 4, 20, 80, '1'),
(33, 'TMR42362', '2024-05-18 01:24:36', '12232133133', '2024-05-18 07:24:00', '2024-05-18 07:24:00', 0, 50, 0, '4'),
(34, 'TMR94155', '2024-05-18 01:27:00', '12232133133', '2024-05-18 07:24:00', '2024-05-18 11:24:00', 4, 50, 200, '4'),
(35, 'TMR19518', '2024-05-18 01:27:51', 'as', '2024-05-18 07:27:00', '2024-05-18 10:27:00', 3, 20, 60, '1'),
(36, 'TMR44392', '2024-05-18 01:28:12', 'as', '2024-05-18 07:27:00', '2024-05-18 10:27:00', 3, 20, 60, '1'),
(37, 'TMR99699', '2024-05-18 01:31:47', 'asas', '2024-05-18 07:31:00', '2024-05-18 11:31:00', 4, 50, 200, '3'),
(38, 'TMR32141', '2024-05-18 01:32:06', 'as', '2024-05-18 07:31:00', '2024-05-18 11:31:00', 4, 30, 120, '2'),
(39, 'TMR75415', '2024-05-18 01:38:04', 'asass', '2024-05-18 07:37:00', '2024-05-18 11:37:00', 4, 50, 200, '3'),
(40, 'TMR41324', '2024-05-18 01:46:28', 'asasa', '2024-05-18 07:46:00', '2024-05-18 10:46:00', 3, 30, 90, '2'),
(41, 'TMR37257', '2024-05-18 01:48:10', 'asasas', '2024-05-18 07:48:00', '2024-05-18 10:48:00', 3, 50, 150, '3'),
(42, 'TMR82232', '2024-05-13 01:48:49', 'KBL12WER', '2024-05-18 07:48:00', '2024-05-18 11:48:00', 4, 50, 200, '4'),
(43, 'TMR52897', '2024-05-18 01:49:52', 'LYT12AS1', '2024-05-18 07:49:00', '2024-05-18 11:49:00', 4, 20, 80, '1'),
(44, 'TMR71780', '2024-05-11 01:51:55', 'klAs5612', '2024-05-18 07:51:00', '2024-05-18 10:51:00', 3, 50, 150, '4'),
(45, 'TMR16318', '2024-05-18 01:52:34', 'jfvgh12', '2024-05-18 07:52:00', '2024-05-18 10:52:00', 3, 50, 150, '4'),
(46, 'TMR13355', '2024-05-18 01:55:08', 'as678sad', '2024-05-18 07:54:00', '2024-05-19 09:55:00', 26, 50, 1301, '4'),
(47, 'TMR64857', '2024-05-18 01:55:29', 'asass', '2024-05-18 07:55:00', '2024-05-19 11:55:00', 28, 50, 1400, '4'),
(48, 'TMR57068', '2024-05-18 01:57:26', 'asas', '2024-05-18 07:57:00', '2024-05-18 07:57:00', 0, 50, 0, '4'),
(49, 'TMR29335', '2024-05-18 01:58:28', 'asasas', '2024-05-18 07:58:00', '2024-05-18 11:58:00', 4, 60, 240, '5'),
(50, 'TMR97060', '2024-05-18 02:03:04', 'asasasasas', '2024-05-18 08:02:00', '2024-05-18 08:02:00', 0, 20, 0, '1'),
(51, 'TMR58497', '2024-05-18 02:03:46', 'asa213', '2024-05-18 08:03:00', '2024-05-18 08:03:00', 0, 30, 0, '2'),
(52, 'TMR10243', '2024-05-18 02:04:22', 'asa123', '2024-05-18 08:04:00', '2024-05-18 08:04:00', 0, 20, 0, '1'),
(53, 'TMR85653', '2024-05-18 02:05:37', 'asasa', '2024-05-18 08:05:00', '2024-05-18 08:05:00', 0, 20, 0, '1'),
(54, 'TMR43854', '2024-05-18 02:06:40', 'sasasas', '2024-05-18 08:06:00', '2024-05-18 08:06:00', 0, 20, 0, '1'),
(55, 'TMR33321', '2024-05-18 02:08:16', 'sadsa12', '2024-05-18 08:08:00', '2024-05-18 08:08:00', 0, 60, 0, '5'),
(56, 'TMR82350', '2024-05-18 02:09:36', 'asdsa213', '2024-05-18 08:09:00', '2024-05-18 08:09:00', 0, 50, 0, '4'),
(57, 'TMR30933', '2024-05-18 02:10:05', 'asd21', '2024-05-09 08:09:00', '2024-05-18 08:10:00', 0, 60, 1000, '5'),
(58, 'TMR56753', '2024-05-18 02:16:44', 'xczvdasfdfs', '2024-05-18 08:16:00', '2024-05-18 08:16:00', 0, 20, 0, '1'),
(59, 'TMR65854', '2024-05-18 02:19:24', 'asas', '2024-05-18 08:19:00', '2024-05-18 08:19:00', 0, 20, 0, '1'),
(60, 'TMR68001', '2024-05-18 02:19:58', 'asas', '2024-05-18 08:19:00', '2024-05-18 08:19:00', 0, 50, 0, '4'),
(61, 'TMR80068', '2024-05-18 02:22:07', 'asass', '2024-05-18 08:21:00', '2024-05-18 08:22:00', 0, 20, 0.4, '1'),
(62, 'TMR34304', '2024-05-18 02:58:27', 'asdf12', '2024-05-18 08:58:00', '2024-05-18 11:58:00', 3, 50, 150, '3'),
(63, 'TMR81307', '2024-05-18 02:59:10', 'wdt234', '2024-05-18 08:58:00', '2024-05-18 08:59:00', 0, 30, 0.6, '2'),
(64, 'TMR50958', '2024-05-18 02:59:36', 'dfsa23r', '2024-05-18 08:59:00', '2024-05-18 11:59:00', 3, 60, 180, '5'),
(65, 'TMR52991', '2024-05-18 03:00:21', 'sadadsadd', '2024-05-18 09:00:00', '2024-05-19 09:00:00', 24, 60, 1440, '5'),
(66, 'TMR82765', '2024-05-18 03:00:50', 'sdaf', '2024-05-18 09:00:00', '2024-05-19 01:00:00', 16, 50, 800, '4'),
(67, 'TMR42391', '2024-05-18 08:45:37', 'jk12r32', '2024-05-18 14:45:00', '2024-05-18 19:45:00', 5, 50, 250, '4'),
(68, 'TMR64810', '2024-05-18 08:46:13', 'kj1232p', '2024-05-18 14:46:00', '2024-05-18 19:46:00', 5, 20, 100, '1'),
(69, 'TMR19776', '2024-05-18 08:46:45', 'kl4512', '2024-05-18 14:46:00', '2024-05-18 19:46:00', 5, 20, 100, '1'),
(70, 'TMR33084', '2024-05-18 09:21:37', '', '2024-05-18 15:21:00', '2024-05-18 20:21:00', 5, 50, 250, '4'),
(71, 'TMR89879', '2024-05-18 09:22:28', 'hja12sad', '2024-05-18 15:22:00', '2024-05-18 19:22:00', 4, 60, 240, '5'),
(72, 'TMR49728', '2024-05-18 11:00:06', '12712as12', '2024-05-18 16:59:00', '2024-05-18 22:59:00', 6, 50, 300, '3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_fname` varchar(255) DEFAULT NULL,
  `user_lname` varchar(255) DEFAULT NULL,
  `user_contact` varchar(20) DEFAULT NULL,
  `user_address` text DEFAULT NULL,
  `user_profile` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `user_password`, `user_fname`, `user_lname`, `user_contact`, `user_address`, `user_profile`) VALUES
(1, 'papik_123', 'papik@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'Papik', 'Bato Batopik', '09120912091', 'Barangay Pinagpala, Loyal St. ', 'profile.jpg'),
(2, 'kurt_nathan', 'kurt_nathan@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'Kurt', 'Nathan', '09120912091', 'Barangay Ilang Ilang, Malolos Bulacan', 'kurt.jpg'),
(3, 'keyser_123', 'keyser@gmail.com', '123', 'Keyser', 'Charles', '09120912091', 'Sampaloc, Metro Manila', 'keyser.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `date`, `user_id`, `status`) VALUES
(3, '2024-05-18 16:07:35', 1, 'login'),
(4, '2024-05-18 16:07:56', 1, 'login'),
(5, '2024-05-18 16:09:29', 1, 'login'),
(6, '2024-05-18 16:11:55', 1, 'login'),
(7, '2024-05-18 16:12:25', 1, 'login'),
(8, '2024-05-18 16:12:29', 1, 'logout'),
(9, '2024-05-18 16:14:11', 1, 'login'),
(10, '2024-05-18 16:16:15', 1, 'logout'),
(11, '2024-05-18 16:20:24', 1, 'logout'),
(12, '2024-05-18 16:20:33', 1, 'login'),
(13, '2024-05-18 16:37:47', 1, 'login'),
(14, '2024-05-18 16:45:31', 1, 'logout'),
(15, '2024-05-18 16:47:14', 1, 'login'),
(16, '2024-05-18 16:53:01', 1, 'logout'),
(17, '2024-05-18 16:59:49', 1, 'login'),
(18, '2024-05-18 17:09:31', 1, 'logout');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_type`
--
ALTER TABLE `parking_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_type`
--
ALTER TABLE `parking_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
