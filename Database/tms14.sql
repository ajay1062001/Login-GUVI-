-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 06:10 PM
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
-- Database: `tms14`
--

-- --------------------------------------------------------

--
-- Table structure for table `definition`
--

CREATE TABLE `definition` (
  `Id` int(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Value` varchar(100) NOT NULL,
  `Status` varchar(12) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `definition`
--

INSERT INTO `definition` (`Id`, `Type`, `Value`, `Status`) VALUES
(1203, 'Categories', 'Customer', 'InActive'),
(1204, 'Categories', 'Internal', 'Active'),
(1205, 'Categories', 'Prospect', 'Active'),
(1207, 'ConnectTo', 'Support', 'Active'),
(1208, 'ConnectTo', 'SMS', 'Active'),
(1209, 'ConnectTo', 'License', 'Active'),
(1210, 'ConnectTo', 'Domain', 'Active'),
(1211, 'ConnectTo', 'WalkThru', 'Active'),
(1213, 'ConnectTo', 'Hosting', 'Active'),
(1214, 'ConnectTo', 'Installation', 'Active'),
(1215, 'ConnectTo', 'Migration', 'Active'),
(1216, 'ConnectTo', 'Invoice', 'Active'),
(1217, 'ConnectTo', 'Payment', 'Active'),
(1218, 'Categories', 'Business', 'Active'),
(1219, 'ConnectTo', 'Gopi', 'Active'),
(1220, 'ConnectTo', '123', 'InActive'),
(1221, 'Categories', 'shylu', 'Active'),
(1222, 'ConnectTo', 'css', 'Active'),
(1223, 'Categories', 'ajay', 'Active'),
(1224, 'ConnectTo', 'ajay1', 'Active'),
(1225, 'Categories', 'jay', 'Active'),
(1226, 'ConnectTo', 'buddy', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `resetpassword`
--

CREATE TABLE `resetpassword` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resetpassword`
--

INSERT INTO `resetpassword` (`id`, `code`, `email`) VALUES
(112, '160db197462755', 'ciarprotech@gmail.com'),
(113, '160db246de8d2a', 'ciarprotech@gmail.com'),
(114, '160e195d3c1d3b', 'ajayajkannan.004@gmail.com'),
(115, '160e1968229aad', 'ajayajkannan.004@gmail.com'),
(116, '160e19725de12b', 'ajayajkannan.004@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `Id` int(100) NOT NULL,
  `Priority` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `UserId` varchar(1000) NOT NULL,
  `Categories` varchar(100) NOT NULL,
  `ConnectTo` varchar(100) NOT NULL,
  `Note` varchar(1000) NOT NULL,
  `StartTime` varchar(1000) NOT NULL,
  `EndTime` varchar(1000) NOT NULL,
  `TimeLimit` varchar(1000) NOT NULL,
  `FinishedTime(hr)` varchar(1000) NOT NULL,
  `Option1` varchar(100) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Op1Status` varchar(100) NOT NULL,
  `Status` varchar(1000) NOT NULL,
  `Created` datetime NOT NULL DEFAULT current_timestamp(),
  `Modified` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`Id`, `Priority`, `Date`, `UserId`, `Categories`, `ConnectTo`, `Note`, `StartTime`, `EndTime`, `TimeLimit`, `FinishedTime(hr)`, `Option1`, `Description`, `Op1Status`, `Status`, `Created`, `Modified`) VALUES
(1, 'L', '30 June 2021', 'jay', 'Customer', 'WalkThru', 'My Task for Rangaa DC My Task for Rangaa DC', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'Action 1', 'False', 'Completed', '2021-06-30 22:50:49', '13 July 2021'),
(3, 'M', '1 July 2021', 'jay', 'Internal', 'Domain', 'Ciarpro Tech Website', '', '2021-07-14 08:05:18', '', '', 'SMS/WA', 'A', 'False', 'NotStarted', '2021-07-01 13:59:57', '1 July 2021'),
(4, 'M', '1 July 2021', 'jay', 'Customer', 'Hosting', 'New BlueHost', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'A', 'False', 'Cancelled', '2021-07-01 14:34:55', '1 July 2021'),
(5, 'H', '1 July 2021', 'jay', 'Prospect', 'WalkThru', 'PMS  Standard', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Email', ' My update 1', 'False', 'NotStarted', '2021-07-01 14:41:25', '1 July 2021'),
(6, 'H', '1 July 2021', 'jay', 'Internal', 'License', 'New License', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Email', 'My Undate 2', 'False', 'NotStarted', '2021-07-01 15:01:10', '1 July 2021'),
(7, 'H', '2 July 2021', 'jay', 'Prospect', 'Support', 'DB migration', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'SMS/WA', 'hey', 'False', 'Completed', '2021-07-01 15:01:55', '4 July 2021'),
(9, 'M', '1 July 2021', 'Amar', 'Internal', 'Gopi', 'Vinayaga', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'spoken with  Madam', 'False', 'NotStarted', '2021-07-01 21:33:57', '4 July 2021'),
(10, 'L', '1 July 2021', 'jay', 'Prospect', 'WalkThru', 'i love you', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'hiii', 'False', 'InProgress', '2021-07-01 22:38:20', '4 July 2021'),
(11, 'L', '4 July 2021', 'jay', 'Prospect', 'Invoice', 'hey cool', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'heybus', 'True', 'NotStarted', '2021-07-04 14:51:00', '4 July 2021'),
(12, 'L', '4 July 2021', 'jay', 'Prospect', 'Installation', 'ajaijda', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'a', 'True', 'NotStarted', '2021-07-04 14:51:00', '4 July 2021'),
(13, 'L', '4 July 2021', 'jay', 'Categorie', 'Installation', 'hye cool', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Email', 'a', 'True', 'NotStarted', '2021-07-04 14:51:00', '4 July 2021'),
(14, 'M', '4 July 2021', 'ajay', 'shylu', 'css', 'checking  aj', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'ajay', 'True', 'NotStarted', '2021-07-04 19:13:10', '14 July 2021'),
(15, 'M', '4 July 2021', 'ajay', 'shylu', 'License', 'hey 2', '', '2021-07-14 08:05:18', '', '', 'Call', '2', 'False', 'InProgress', '2021-07-04 19:14:09', '4 July 2021'),
(17, 'M', '4 July 2021', 'ajay', 'shylu', 'Invoice', 'sdsd4', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Email', '4', 'False', 'Completed', '2021-07-04 19:14:09', '4 July 2021'),
(18, 'M', '4 July 2021', 'ajay', 'shylu', 'Domain', 'sdsdsd5', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Email', '5', 'True', 'Cancelled', '2021-07-04 19:14:09', '4 July 2021'),
(19, 'L', '4 July 2021', 'jay', 'Business', 'Domain', 'sdsdsds', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'buudy', 'True', 'NotStarted', '2021-07-04 19:14:29', '4 July 2021'),
(20, 'L', '20 July 2021', 'ajay', 'ajay', 'Domain', 'ghdsaihd', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'date', 'False', 'InProgress', '2021-07-04 19:15:19', '4 July 2021'),
(21, 'L', '4 July 2021', 'ajay', 'Prospect', 'buddy', 'hey buudy', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', ' My update 1', 'False', 'NotStarted', '2021-07-04 19:24:29', '4 July 2021'),
(22, 'L', '4 July 2021', 'ajay', 'jay', 'Invoice', 'cool', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', ' My update 1', 'True', 'InReview', '2021-07-04 19:24:29', '4 July 2021'),
(23, 'L', '4 July 2021', 'gopi', 'Internal', 'Domain', 'welcome gopi', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Email', ' My update 1', 'True', 'NotStarted', '2021-07-04 20:20:16', '4 July 2021'),
(24, 'L', '4 July 2021', 'gopi', 'shylu', 'WalkThru', 'thankyou', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'SMS/WA', ' My update 1', 'True', 'NotStarted', '2021-07-04 20:20:43', '4 July 2021'),
(25, 'L', '4 July 2021', 'ajay', 'Business', 'Hosting', 'time picker', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'SMS/WA', 'a', 'False', 'NotStarted', '2021-07-13 15:28:19', '13 July 2021'),
(26, 'L', '4 July 2021', 'ajay', 'shylu', 'WalkThru', 'hye ', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'b', 'False', 'NotStarted', '2021-07-13 15:29:41', '13 July 2021'),
(27, 'L', '13 July 2021', 'ajay', 'Business', 'Hosting', '2hrs', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '2', '', 'Call', '3', 'False', 'NotStarted', '2021-07-13 15:53:34', '13 July 2021'),
(28, 'L', '13 July 2021', 'ajay', 'Business', 'Hosting', 'hey', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '1', '', 'Call', 'time', 'True', 'NotStarted', '2021-07-13 16:04:28', '14 July 2021'),
(29, 'L', '13 July 2021', 'Amar', 'Business', 'Domain', 'a', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '1', '', 'Call', 'asas', 'False', 'NotStarted', '2021-07-13 16:06:02', '13 July 2021'),
(30, 'L', '13 July 2021', 'ajay', 'jay', 'WalkThru', '3', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '3', '', 'Call', '3', 'False', 'NotStarted', '2021-07-13 16:09:15', '13 July 2021'),
(31, 'L', '13 July 2021', 'gopi', 'Business', 'Domain', 'start bhio', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '7', '', 'Call', 'dsad', 'False', 'NotStarted', '2021-07-13 16:10:26', '13 July 2021'),
(32, 'L', '13 July 2021', 'Amar', 'Business', 'Hosting', 'shylu ajaya', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '8', '', 'Call', 'fsgsgdfs', 'False', 'NotStarted', '2021-07-13 16:11:36', '13 July 2021'),
(33, 'L', '13 July 2021', 'Amar', 'Prospect', 'Hosting', 'dsfdsfdsf', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '4', '', 'Call', 'dsf', 'False', 'NotStarted', '2021-07-13 16:12:49', '13 July 2021'),
(34, 'L', '13 July 2021', 'Amar', 'Prospect', 'License', 'sfdsfsd', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '12', '', 'SMS/WA', 'fdsgsfg', 'False', 'NotStarted', '2021-07-13 16:15:49', '13 July 2021'),
(35, 'L', '13 July 2021', 'Amar', 'Prospect', 'WalkThru', 'timeout', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '2', '', 'SMS/WA', 'giygku', 'False', 'NotStarted', '2021-07-13 16:17:01', '13 July 2021'),
(36, 'L', '13 July 2021', 'gopi', 'Business', 'SMS', 'asdasd', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '3', '', 'Meet', 'sdafsdf', 'False', 'NotStarted', '2021-07-13 16:18:22', '13 July 2021'),
(37, 'L', '13 July 2021', 'Amar', 'Business', 'Domain', 'asdfadfda', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '3', '', 'Email', 'sdfdsf', 'False', 'NotStarted', '2021-07-13 16:19:48', '13 July 2021'),
(38, 'L', '13 July 2021', 'ajay', 'Prospect', 'WalkThru', 'dsfdsf', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'SMS/WA', 'cxvcxv', 'True', 'NotStarted', '2021-07-13 21:28:30', '13 July 2021'),
(39, 'L', '13 July 2021', 'ajay', 'Prospect', 'ajay1', 'edfdsfsdf', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'works good', 'True', 'NotStarted', '2021-07-13 21:29:37', '13 July 2021'),
(40, 'L', '13 July 2021', 'ajay', 'shylu', 'css', 'dafdfad', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'dsfdsfdsf', 'False', 'NotStarted', '2021-07-13 21:40:56', '13 July 2021'),
(41, 'L', '14 July 2021', 'Amar', 'shylu', 'License', 'dsfdsfsd', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'dsfdsfds', 'False', 'NotStarted', '2021-07-14 10:48:33', '14 July 2021'),
(42, 'L', '14 July 2021', 'ajay', 'Prospect', 'Domain', 'baby', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'SMS/WA', 'halena', 'True', 'NotStarted', '2021-07-14 11:11:23', '14 July 2021'),
(43, 'L', '14 July 2021', 'ajay', 'ajay', 'Support', 'asdfasdfasf', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'SMS/WA', 'dsfdsfds', 'False', 'NotStarted', '2021-07-14 11:15:48', '14 July 2021'),
(44, 'L', '14 July 2021', 'ajay', 'Business', 'Domain', 'dsfdsfdsf', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'dafsf', 'True', 'NotStarted', '2021-07-14 11:21:01', '14 July 2021'),
(45, 'L', '14 July 2021', 'ajay', 'Internal', 'License', 'dsfsfds', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'dafsfajy', 'True', 'NotStarted', '2021-07-14 11:24:21', '14 July 2021'),
(46, 'L', '14 July 2021', 'ajay', 'Prospect', 'SMS', 'hey bye', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'fuck1', 'True', 'NotStarted', '2021-07-14 11:28:19', '14 July 2021'),
(47, 'L', '14 July 2021', 'ajay', 'Prospect', 'SMS', 'dsfdsf4535', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Meet', 'dsfdsf', 'False', 'NotStarted', '2021-07-14 11:30:45', '14 July 2021'),
(48, 'L', '14 July 2021', 'ajay', 'Business', 'Hosting', 'hp', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'hery cool', 'False', 'NotStarted', '2021-07-14 11:32:01', '14 July 2021'),
(49, 'L', '14 July 2021', 'ajay', 'Prospect', 'Domain', 'sdfdsfds', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'dsfdsfdsf', 'False', 'NotStarted', '2021-07-14 11:34:10', '14 July 2021'),
(50, 'L', '14 July 2021', 'ajay', 'Prospect', 'SMS', 'dsfsdfsdf', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'gopi done da', 'False', 'NotStarted', '2021-07-14 11:34:51', '14 July 2021'),
(51, 'L', '14 July 2021', 'ajay', 'Prospect', 'WalkThru', 'baby ', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '', '', 'Call', 'kanmani', 'True', 'NotStarted', '2021-07-14 11:35:18', '14 July 2021'),
(52, 'L', '14 July 2021', 'ajay', 'Internal', 'Payment', 'fdgdfg', '2021-07-14 08:05:18', '2021-07-14 08:05:18', '3', '', 'Call', 'gdfgdfgdfg', 'True', 'NotStarted', '2021-07-14 11:47:53', '14 July 2021'),
(53, 'L', '14 July 2021', 'ajay', 'jay', 'Migration', 'pettai', '2021-07-14 09:00:06', '2021-07-14 09:00:06', '', '', 'Email', 'sdfdsf', 'True', 'NotStarted', '2021-07-14 12:16:02', '14 July 2021'),
(54, 'L', '14 July 2021', 'ajay', 'jay', 'Gopi', 'power cut', '2021-07-14 08:49:52', '2021-07-14 08:49:52', '', '', 'Email', 'eset', 'True', 'Cancelled', '2021-07-14 12:19:52', '14 July 2021'),
(55, 'L', '14 July 2021', 'ajay', 'Internal', 'Hosting', 'fdsfsdf1', '2021-07-14 08:59:36', '2021-07-14 08:59:36', '4', '', 'Email', 'gdfgdfgdf1', 'False', 'NotStarted', '2021-07-14 12:20:53', '14 July 2021'),
(56, 'L', '14 July 2021', 'ajay', 'Prospect', 'ajay1', 'dsfdsf2', '2021-07-14 08:59:44', '2021-07-14 08:59:44', '4', '', 'Email', 'dsfdsf2', 'False', 'InReview', '2021-07-14 12:20:53', '14 July 2021'),
(57, 'L', '14 July 2021', 'ajay', 'shylu', 'Gopi', 'dsfsdfsd', '', '', '', '', 'Call', 'dsfsdffd', 'False', 'NotStarted', '2021-07-14 12:30:20', '14 July 2021'),
(58, 'L', '14 July 2021', 'ajay', 'Prospect', 'SMS', 'sdfsdfdsf', '', '', '2', '', 'Call', 'hey buudy', 'True', 'NotStarted', '2021-07-14 20:37:28', '14 July 2021'),
(59, 'L', '14 July 2021', 'ajay', 'shylu', 'Domain', '1', '', '', '4', '', 'Call', '78', 'False', 'NotStarted', '2021-07-14 20:41:15', '14 July 2021'),
(60, 'L', '14 July 2021', 'ajay', 'ajay', 'WalkThru', '2', '', '', '4', '', 'Meet', '34', 'False', 'Completed', '2021-07-14 20:41:15', '14 July 2021'),
(61, 'L', '14 July 2021', 'ajay', 'Prospect', 'Domain', '3', '', '', '4', '', 'SMS/WA', '453', 'False', 'InProgress', '2021-07-14 20:41:15', '14 July 2021'),
(62, 'L', '14 July 2021', 'ajay', 'Prospect', 'Domain', '4', '', '', '4', '', 'SMS/WA', '543534', 'False', 'Cancelled', '2021-07-14 20:41:15', '14 July 2021'),
(63, 'L', '14 July 2021', 'Amar', 'Prospect', 'License', 'dsfdsfds', '', '', '3', '', 'Call', 'dsfdsf', 'False', 'NotStarted', '2021-07-14 20:52:49', '14 July 2021'),
(64, 'L', '14 July 2021', 'ajay', 'jay', 'buddy', 'hp laptop', '2021-07-14 17:26:29', '', '', '', 'Call', 'asa', 'False', 'InReview', '2021-07-14 20:56:29', '14 July 2021');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(100) NOT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'Active',
  `exp date` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `age`, `email`, `phone`, `password`, `usertype`, `Status`, `exp date`, `created_at`) VALUES
(6, 'Jay', 'Admin', '', 'ciarprotech@gmail.com', '9043003200', '$2y$10$Ncu7KPDufmgrwnWSJLiz.u7aPoLTOgnGvqRv0HOf4Apy7quhJ9xrm', 'Admin', 'Active', '', '2021-05-20 13:21:17'),
(35, 'jay', 'jay', '', 'jayaksam@gmail.com', '9043003200', '$2y$10$1Nd/6bvSQmuMGQ2kRqDpdOa64s.GCX/vLNH1veIw3l/4E.Q16ttQ.', 'User', 'Active', '', '2021-06-08 19:35:58'),
(36, 'Amarnath', 'Amar', '', 'amarnathtgpl@gmail.com', '9043003090', '$2y$10$iwbbnhDUrEueN6PfWtHON.FERTYGHy6REPgUlzspBLyPhD4RMFbcG', 'User', 'Active', '', '2021-07-01 21:32:51'),
(37, 'Ajay', 'ajay', '', 'ajayajkannan.004@gmail.com', '67697695555', '$2y$10$ZN/bOZ794xWefn.wYgGESuh0GjjTC3hbO6g77m5N.MaRpwbXYobeS', 'User', 'Active', '', '2021-07-04 16:34:41'),
(38, 'ajay', 'gopi', '', 'gopi@gmail.com', '9787105400', '$2y$10$MEp2iDCs0W8Ipy27oZPfK.u6732EBnv.eYoTO0mMNTu1kCUh3.6I2', 'User', 'Active', '', '2021-07-04 19:19:58'),
(39, 'ajay ravi', 'ajayravi', '13', 'rajaybe@gmail.com', '9787105400', '$2y$10$AxkK1PfJFkEakSWkdX1Qa.xk.O5wsGmGKFehOaAExxnll7o7UXwGu', 'User', 'Active', '', '2021-09-21 21:13:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `definition`
--
ALTER TABLE `definition`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `resetpassword`
--
ALTER TABLE `resetpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `definition`
--
ALTER TABLE `definition`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1227;

--
-- AUTO_INCREMENT for table `resetpassword`
--
ALTER TABLE `resetpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
