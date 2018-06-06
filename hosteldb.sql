-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2018 at 10:26 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminemail` varchar(50) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `hosteleremail` varchar(50) NOT NULL,
  `bookingdate` date NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `payment` varchar(50) NOT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `roomid` (`roomid`),
  KEY `hosteleremail` (`hosteleremail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `roomid`, `hosteleremail`, `bookingdate`, `check_in`, `check_out`, `payment`) VALUES
(1, 3, 'vijay@gmail.com', '2018-05-14', '2018-06-09', '2018-08-10', 'PAC');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
CREATE TABLE IF NOT EXISTS `facility` (
  `facilityid` int(11) NOT NULL AUTO_INCREMENT,
  `facilityname` varchar(50) NOT NULL,
  `facilitydetails` text NOT NULL,
  `hostelid` int(11) NOT NULL,
  PRIMARY KEY (`facilityid`),
  KEY `hostelid` (`hostelid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facilityid`, `facilityname`, `facilitydetails`, `hostelid`) VALUES
(1, 'ac', 'good', 1),
(2, 'tv', '', 1),
(3, 'parking', 'large space for parking', 1),
(13, 'cooler', '', 3),
(12, 'ac', '', 3),
(8, 'ac', '-', 2),
(9, 'laundry', '-', 2),
(10, 'rooom cleaning', '-', 2),
(11, 'fridge', '-', 2),
(14, 'tv', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `have`
--

DROP TABLE IF EXISTS `have`;
CREATE TABLE IF NOT EXISTS `have` (
  `facilityid` int(11) NOT NULL,
  `roomtypeid` int(11) NOT NULL,
  KEY `facilityid` (`facilityid`),
  KEY `roomtypeid` (`roomtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `have`
--

INSERT INTO `have` (`facilityid`, `roomtypeid`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(3, 3),
(9, 7),
(8, 7),
(11, 6),
(10, 6),
(9, 6),
(8, 6),
(10, 7),
(13, 8),
(12, 9),
(14, 9),
(12, 10),
(14, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `hostelid` int(11) NOT NULL AUTO_INCREMENT,
  `owneremail` varchar(50) NOT NULL,
  `hostelname` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`hostelid`),
  KEY `owneremail` (`owneremail`),
  KEY `owneremail_2` (`owneremail`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostelid`, `owneremail`, `hostelname`, `description`, `location`, `contact`) VALUES
(1, 'arpit1@gmail.com', 'Arpit Hostel', '         \ngood hostel               ', '       talwandi                 ', '2323232323'),
(2, 'arpit1@gmail.com', 'arpit big hostel', '    excellent location                    ', 'mahaveer nagar                        ', '2323123123'),
(3, 'rahul@gmail.com', 'rahul inn', '   awesome facilities                     ', 'indra vihar                       ', '1212232334');

-- --------------------------------------------------------

--
-- Table structure for table `hosteler`
--

DROP TABLE IF EXISTS `hosteler`;
CREATE TABLE IF NOT EXISTS `hosteler` (
  `hosteleremail` varchar(50) NOT NULL,
  `hostelername` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`hosteleremail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hosteler`
--

INSERT INTO `hosteler` (`hosteleremail`, `hostelername`, `gender`, `dob`, `contact`, `password`) VALUES
('arpit@gmail.com', 'arpit', 'M', '1970-01-01', '8012312311', '123'),
('vijay@gmail.com', 'vijay', 'M', '1993-06-21', '1112223334', '123');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
CREATE TABLE IF NOT EXISTS `owner` (
  `owneremail` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`owneremail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owneremail`, `ownername`, `gender`, `dob`, `contact`, `password`) VALUES
('arpit1@gmail.com', 'arpit1', 'M', '1994-09-18', '1234567890', '123'),
('rahul@gmail.com', 'rahul', 'M', '1997-07-19', '1111122222', '123');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `roomtypeid` int(11) NOT NULL,
  `alloted_room_no` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  PRIMARY KEY (`roomid`),
  KEY `roomtypeid` (`roomtypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomtypeid`, `alloted_room_no`, `available`) VALUES
(1, 1, 101, 1),
(2, 1, 102, 1),
(3, 1, 103, 1),
(4, 2, 104, 1),
(5, 2, 105, 1),
(6, 2, 106, 1),
(7, 3, 107, 1),
(8, 3, 108, 1),
(9, 3, 109, 1),
(13, 7, 132, 1),
(12, 7, 131, 1),
(11, 6, 124, 1),
(10, 6, 123, 1),
(14, 8, 1, 1),
(15, 8, 2, 1),
(16, 9, 3, 1),
(17, 9, 4, 1),
(18, 10, 5, 1),
(19, 10, 6, 1),
(20, 10, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE IF NOT EXISTS `roomtype` (
  `roomtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `hostelid` int(11) NOT NULL,
  `roomtypename` varchar(50) NOT NULL,
  `no_of_rooms` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`roomtypeid`),
  KEY `hostelid` (`hostelid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`roomtypeid`, `hostelid`, `roomtypename`, `no_of_rooms`, `price`) VALUES
(1, 1, 'single', 3, 200),
(2, 1, 'double', 3, 150),
(3, 1, 'triple', 3, 100),
(8, 3, 'classic single', 2, 100),
(6, 2, 'single', 2, 300),
(7, 2, 'double', 2, 250),
(9, 3, 'deluxe single', 2, 200),
(10, 3, 'double', 3, 150);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
