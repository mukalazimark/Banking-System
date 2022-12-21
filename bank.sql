-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 04:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AccountNo` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Balance` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`AccountNo`, `Name`, `Balance`) VALUES
(0, 'marko', 12500),
(0, 'jane', 150000),
(0, 'jovia', 5000),
(0, 'patricia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `AccountId` int(6) NOT NULL,
  `Name` text NOT NULL,
  `Sex` text NOT NULL,
  `Nationality` text NOT NULL,
  `Pin` int(5) NOT NULL,
  `Residence` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`AccountId`, `Name`, `Sex`, `Nationality`, `Pin`, `Residence`) VALUES
(1, 'mukalazi', 'male', 'ugandan', 1234, 'ntinda'),
(2, 'macmuka', 'female', 'ugandan', 1235, 'banda'),
(3, 'marko', 'male', 'ugandan', 0, 'lugonjo'),
(4, 'jane', 'female', 'kenyan', 2222, 'nairobi'),
(5, 'jovia', 'female', 'nigerian', 4444, 'Abuja'),
(6, 'tom', 'male', 'ugandan', 1234, 'kamuli'),
(7, 'patricia', 'female', 'ugandan', 1234, 'busega');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`AccountId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `AccountId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
