-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2024 at 11:32 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Test@1234');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE IF NOT EXISTS `adminlog` (
  `id` int NOT NULL,
  `adminid` int NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(8, NULL, 'B.Tech', 'IT', '2024-03-14 13:20:32'),
(9, NULL, 'B.Tech', 'E&TC', '2024-03-14 13:20:42'),
(10, NULL, 'B.Tech', 'Electrical', '2024-03-14 13:20:52'),
(11, NULL, 'B.Tech', 'Mechanical', '2024-03-14 13:21:01'),
(12, NULL, 'B.Tech', 'Civil', '2024-03-14 13:21:09'),
(13, NULL, 'M.Tech', 'Structural', '2024-03-14 13:21:30'),
(14, NULL, 'B.Tech', 'AI', '2024-03-20 11:48:15'),
(15, NULL, 'B.Tech', 'Automobile', '2024-03-20 12:19:26'),
(16, NULL, 'M.Tech', 'Computer science and Technology', '2024-03-21 11:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE IF NOT EXISTS `query` (
  `regNo` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`regNo`, `fname`, `mname`, `lname`, `contact`, `email`, `message`) VALUES
(1, 'A', 'B', 'C', 1234569877, 'por@gmail.com', 'I have issue about electricity'),
(2, 'Raju', 'B', 'Khot', 1234569877, 'Abc@gmail.com', 'I have issue about electricity');

-- --------------------------------------------------------

--
-- Table structure for table `rector`
--

DROP TABLE IF EXISTS `rector`;
CREATE TABLE IF NOT EXISTS `rector` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rector`
--

INSERT INTO `rector` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'Rector', 'rector@gmail.com', 'Test@123', '2022-04-09 20:31:45', '2024-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomno` int DEFAULT NULL,
  `seater` int DEFAULT NULL,
  `feespm` int DEFAULT NULL,
  `foodstatus` int DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(11, 200, 2, 6000, 0, '2024-03-01', 2, 'IT', 1, 'A', 'B', 'C', 'female', 1234569877, 'por@gmail.com', 1235456548, 'A', 'B', 5896321475, 'kurlap', 'sangli', 'Maharashtra', 415411, 'kurlap', 'sangli', 'Maharashtra', 415411, '2024-03-14 13:24:10', NULL),
(13, 112, NULL, 4000, 0, '2024-03-21', 3, 'IT', 2, 'Raju', 'B', 'Khot', 'male', 1234569877, 'Abc@gmail.com', 1235456548, 'A', 'B', 5896321475, 'Karad', 'sangli', 'Maharashtra', 415411, 'Karad', 'sangli', 'Maharashtra', 415411, '2024-03-20 11:06:09', NULL),
(20, 105, 3, 7500, 0, '2024-03-21', 3, 'Computer science and Technology', 68, 'Rutuja', 'Sanjay', 'Patil', 'female', 8569742536, 'informationtech2002@gmail.com', 9856342658, 'Sanjay', 'father', 8659743251, 'Sangli', 'sangli', 'Maharashtra', 415411, 'Sangli', 'sangli', 'Maharashtra', 415411, '2024-03-21 11:30:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seater` int DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `fees` int DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `room_no` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2016-04-11 22:45:43'),
(2, 2, 201, 6000, '2016-04-12 01:30:47'),
(3, 2, 200, 6000, '2016-04-12 01:30:58'),
(4, 3, 112, 4000, '2016-04-12 01:31:07'),
(5, 5, 132, 2000, '2016-04-12 01:31:15'),
(6, 3, 105, 7500, '2024-03-21 11:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `suggest`
--

DROP TABLE IF EXISTS `suggest`;
CREATE TABLE IF NOT EXISTS `suggest` (
  `id` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `contact` int NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `action` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `suggest`
--

INSERT INTO `suggest` (`id`, `fname`, `contact`, `email`, `message`, `action`) VALUES
(0, 'A', 1234569877, 'por@gmail.com', 'Pay fee', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:02:51'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:49:42'),
(9, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 07:17:32'),
(10, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 08:08:59'),
(11, 21, 'por@gmail.com', 0x3a3a31, '', '', '2024-03-14 12:48:06'),
(12, 21, 'por@gmail.com', 0x3a3a31, '', '', '2024-03-14 13:16:36'),
(13, 23, 'Abc@gmail.com', 0x3a3a31, '', '', '2024-03-20 11:01:22'),
(14, 23, 'Abc@gmail.com', 0x3a3a31, '', '', '2024-03-20 11:15:04'),
(15, 23, 'Abc@gmail.com', 0x3a3a31, '', '', '2024-03-20 12:11:15'),
(16, 25, 'abc@g.com', 0x3a3a31, '', '', '2024-03-20 12:24:10'),
(17, 26, 'informationtech2002@gmail.com', 0x3a3a31, '', '', '2024-03-21 11:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

DROP TABLE IF EXISTS `userregistration`;
CREATE TABLE IF NOT EXISTS `userregistration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Mark` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `Mark`, `password`) VALUES
(10, '108061211', 'Test', 'test', 'kumar', 'male', 1234567890, 'test@gmail.com', 0, 'Test@123'),
(19, '102355', 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 0, '6786786786'),
(20, '586952', 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', 0, '8596185625'),
(21, '1', 'A', 'B', 'C', 'female', 1234569877, 'por@gmail.com', 45, 'Test@123'),
(22, '1', 'A', 'B', 'C', 'female', 1234569877, 'por@gmail.com', 0, '1234569877'),
(23, '2', 'Raju', 'B', 'Khot', 'male', 1234569877, 'Abc@gmail.com', 85, 'Test@123'),
(24, '1', 'A', 'B', 'C', 'others', 1234569877, 'por@gmail.com', 0, '1234569877'),
(25, '1', 'Raju', 'B', 'C', 'female', 1234569877, 'abc@g.com', 54, 'Pass@123'),
(26, '68', 'Rutuja', 'Sanjay', 'Patil', 'female', 8569742536, 'informationtech2002@gmail.com', 95, 'Pass@123'),
(27, '68', 'Rutuja', 'Sanjay', 'Patil', 'female', 8569742536, 'informationtech2002@gmail.com', 0, '8569742536');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
