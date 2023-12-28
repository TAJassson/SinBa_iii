-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 04:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--
CREATE DATABASE IF NOT EXISTS `iii` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `iii`;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `userID` int(100000) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `uEngName` varchar(100) NOT NULL,
  `uCHTName` varchar(10) NOT NULL,
  `uCHSName` varchar(10) NOT NULL,
  `uTitle` varchar(100) NOT NULL,
  `uStaffNum` varchar(10) NOT NULL,
  `uRight` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
  `userID` int(100000) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `uGroupID` varchar(10) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `GroupID`;
CREATE TABLE `GroupID` (
  `uGroupID` varchar(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `GroupType` varchar (100),
  `GroupDecs` varchar (100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `Right`;
CREATE TABLE `Right` (
  `uRight` varchar(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `RightDecs` varchar (100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*SQL Insert*/
Insert Right uRight = 1, RightDecs = Users;
Insert Right uRight = 2, RightDecs = Leader;
Insert Right uRight = 3, RightDecs = Manager;
Insert Right uRight = 4, RightDecs = Owner;
Insert Right uRight = 5, RightDecs = SA;
Insert GroupID uGroupID = 0, GroupType = AllUser, GroupDecs = All Users;
Insert GroupID uGroupID = 1, GroupType = CTB_F1_BC, GroupDecs = F1 Bus Captain Users;
Insert GroupID uGroupID = 2, GroupType = CTB_F2_BC, GroupDecs = F2 Bus Captain Users;
Insert GroupID uGroupID = 3, GroupType = CTB_F3_BC, GroupDecs = F3 Bus Captain Users;
Insert GroupID uGroupID = 4, GroupType = CTB_FT_BC, GroupDecs = FullTime Bus Captain Users;
Insert GroupID uGroupID = 5, GroupType = CTB_FT_BC, GroupDecs = PartTime Bus Captain Users;
Insert GroupID uGroupID = 6, GroupType = NWFB_FT_BC, GroupDecs = NWFB Bus Captain Users;
Insert GroupID uGroupID = 7, GroupType = NWFB_FT_BC, GroupDecs = PartTime Bus Captain Users;
Insert GroupID uGroupID = 8, GroupType = CTB_SA, GroupDecs = Station Assistant Users;
Insert GroupID uGroupID = 9, GroupType = CTB_SRA, GroupDecs = Station Regulator Assistant Users;
Insert GroupID uGroupID = 10, GroupType = CTB_SR, GroupDecs = Station Regulator Users;
Insert GroupID uGroupID = 20, GroupType = BackOffice, GroupDecs = All backoffice users;
Insert GroupID uGroupID = 21, GroupType = CTB_OM, GroupDecs = Operation Manager Users;
Insert GroupID uGroupID = 22, GroupType = CTB_AOM, GroupDecs = Assistant Operation Manager Users;
Insert GroupID uGroupID = 23, GroupType = CTB_OS, GroupDecs = Operation supervisor Users;

//
--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
