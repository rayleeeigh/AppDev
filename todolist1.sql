-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 03:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todolist1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `code`, `username`, `password`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(11, 'F2JzalhoNe7ZHQz4UOkLLY0KLOmb3NRl', 'rayleeeigh', '', '2021-04-23 12:33:23', '2021-04-23 12:33:23', NULL),
(12, 'RjpH3jezAXMKhOWyKjoxfz8w92rWrBXb', 'jettdiff', '', '2021-04-23 12:37:32', '2021-04-23 12:37:32', '2021-04-23 12:37:40'),
(16, 'Y0fF3f5JnHl4FB8YMgrKgC7SRrFLwPf8', 'sagedif', '123', '2021-04-23 12:38:13', '2021-04-23 12:38:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210422075137-create_accounts_table.js'),
('20210422075747-create_tasks_table.js');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `taskID` bigint(20) NOT NULL,
  `taskDesc` varchar(255) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  `createdAt` datetime NOT NULL,
  `completedAt` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`taskID`, `taskDesc`, `status`, `createdAt`, `completedAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Banorant', 'Complete', '2021-04-22 09:26:30', NULL, 2021, NULL),
(2, 'dota', 'Incomplete', '2021-04-22 13:58:57', '2021-04-22 13:58:57', NULL, '2021-04-23 12:28:04'),
(4, 'Poogers', 'Complete', '2021-04-22 14:07:22', NULL, 2021, '2021-04-23 12:21:03'),
(5, 'Otin', 'Complete', '2021-04-23 11:29:46', NULL, 2021, '2021-04-23 11:40:38'),
(6, 'skrrrt', 'Complete', '2021-04-23 11:30:16', NULL, 2021, '2021-04-23 11:40:03'),
(7, 'shet', 'Complete', '2021-04-23 11:31:01', NULL, 2021, '2021-04-23 11:40:43'),
(8, 'ahh', 'Complete', '2021-04-23 11:31:50', NULL, 2021, '2021-04-23 11:40:47'),
(9, 'lastnaniha', 'Complete', '2021-04-23 11:32:17', NULL, 2021, '2021-04-23 11:40:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`taskID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `taskID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
