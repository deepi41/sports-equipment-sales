-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2026 at 07:28 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `godon`
--

CREATE TABLE IF NOT EXISTS `godon` (
  `hsnsac` int(8) NOT NULL,
  `sname` varchar(12) NOT NULL,
  `dc` varchar(25) NOT NULL,
  `q` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `godon`
--

INSERT INTO `godon` (`hsnsac`, `sname`, `dc`, `q`) VALUES
(111, 'Badminton', 'adults', 8),
(124, 'Volley Ball', 'kids', 10),
(126, 'Cricket', 'adults', 76);

-- --------------------------------------------------------

--
-- Table structure for table `pcompany`
--

CREATE TABLE IF NOT EXISTS `pcompany` (
  `ccode` int(6) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `address` varchar(27) NOT NULL,
  `cnumber` varchar(15) NOT NULL,
  `eid` varchar(15) NOT NULL,
  `cperson` varchar(10) NOT NULL,
  `gstno` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcompany`
--

INSERT INTO `pcompany` (`ccode`, `cname`, `address`, `cnumber`, `eid`, `cperson`, `gstno`) VALUES
(637, 'jivi', '4t,salem', '6847360946', 'tv@gmail.com', 'vaani', '96484'),
(874, 'tigo', '34j', '07146876975', 'tr@gmail.com', 'deepi', '742874362');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `ino` int(4) NOT NULL,
  `hsnsac` int(8) NOT NULL,
  `sname` varchar(12) NOT NULL,
  `dc` varchar(25) NOT NULL,
  `pcost` float(8,2) NOT NULL,
  `gst` float(5,2) NOT NULL,
  `q` int(10) NOT NULL,
  `amt` float(11,2) NOT NULL,
  `tamt` float(11,2) NOT NULL,
  `date` date NOT NULL,
  `ccode` int(6) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `address` varchar(27) NOT NULL,
  `cnumber` varchar(12) NOT NULL,
  `gstno` varchar(16) NOT NULL,
  `gstamt` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`ino`, `hsnsac`, `sname`, `dc`, `pcost`, `gst`, `q`, `amt`, `tamt`, `date`, `ccode`, `cname`, `address`, `cnumber`, `gstno`, `gstamt`) VALUES
(112, 120, 'Tennies', 'adults', 679.00, 5.00, 9, 3395.00, 3564.75, '2026-01-30', 637, 'jivi', '4t,salem', '6847360946', '96484', 169.75),
(112, 111, 'Badminton', 'kids', 749.67, 12.00, 87, 8996.04, 10075.56, '2026-01-30', 874, 'tigo', '34j', '07146876975', '742874362', 1079.52),
(113, 120, 'Cricket', 'adults', 679.00, 5.00, 7, 3395.00, 3564.75, '2026-01-30', 637, 'jivi', '4t,salem', '6847360946', '96484', 169.75),
(114, 126, 'Hockey', 'teen', 732.67, 18.00, 45, 32970.15, 38904.77, '2026-01-31', 874, 'tigo', '34j', '07146876975', '742874362', 5934.63),
(115, 126, 'volley ball', 'adults', 732.67, 18.00, 76, 55682.92, 65705.84, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 10022.92),
(116, 111, 'Badminton', 'kids', 749.67, 12.00, 34, 25488.78, 28547.43, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 3058.65),
(117, 111, 'Badminton', 'kids', 749.67, 12.00, 4, 2998.68, 3358.52, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 359.84),
(118, 111, 'Badminton', 'kids', 749.67, 12.00, 6, 4498.02, 5037.78, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 539.76),
(119, 124, 'volley ball', 'adults', 568.98, 12.00, 9, 5120.82, 5735.32, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 614.50),
(120, 111, 'cricket', 'adults', 749.67, 12.00, 9, 6747.03, 7556.67, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 809.64),
(121, 124, 'Badminton', 'kids', 568.98, 12.00, 5, 2844.90, 3186.29, '2026-02-02', 637, 'jivi', '4t,salem', '6847360946', '96484', 341.39),
(122, 126, 'Tennis', 'adults', 732.67, 18.00, 76, 55682.92, 65705.84, '2026-02-02', 874, 'tigo', '34j', '07146876975', '742874362', 10022.92);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `bill` int(11) NOT NULL,
  `date` date NOT NULL,
  `hsnsac` int(8) NOT NULL,
  `sname` varchar(12) NOT NULL,
  `dc` varchar(25) NOT NULL,
  `scost` float(9,2) NOT NULL,
  `gst` float(5,2) NOT NULL,
  `q` int(10) NOT NULL,
  `samt` float NOT NULL,
  `tamt` float(11,2) NOT NULL,
  `gstamt` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`bill`, `date`, `hsnsac`, `sname`, `dc`, `scost`, `gst`, `q`, `samt`, `tamt`, `gstamt`) VALUES
(1102, '2026-02-02', 111, 'Badminton', 'kids', 749.67, 12.00, 85, 63721.9, 71368.59, 7646.63),
(1103, '2026-02-02', 124, 'Tennis', 'adults', 568.98, 12.00, 64, 36414.7, 40784.48, 4369.77),
(1104, '2026-02-02', 124, 'Badminton', 'kids', 568.98, 12.00, 87, 49501.3, 55441.41, 5940.15),
(1105, '2026-02-02', 111, 'Volley ball', 'adults', 749.67, 12.00, 76, 56974.9, 63811.91, 6836.99),
(1106, '2026-02-02', 124, 'Hockey', 'Teen', 568.98, 12.00, 75, 42673.5, 47794.32, 5120.82),
(1107, '2026-02-02', 111, 'Cricket', 'adults', 749.67, 12.00, 76, 56974.9, 63811.91, 6836.99),
(1108, '2026-02-02', 126, 'Hockey ', 'teen', 732.67, 18.00, 4, 2930.68, 3458.20, 527.52),
(1109, '2026-02-02', 111, 'Cricket', 'adults', 749.67, 12.00, 6, 4498.02, 5037.78, 539.76),
(1110, '2026-02-02', 111, 'Badminton', 'kids', 749.67, 12.00, 7, 5247.69, 5877.41, 629.72),
(1111, '2026-02-02', 124, 'Volley ball', 'adults', 568.98, 12.00, 4, 2275.92, 2549.03, 273.11),
(1111, '2026-02-02', 111, 'tennis', 'adults', 749.67, 12.00, 2, 1499.34, 1679.26, 179.92),
(1112, '2026-02-02', 111, 'Badminton', 'kids', 749.67, 12.00, 2, 1499.34, 1679.26, 179.92);

-- --------------------------------------------------------

--
-- Table structure for table `sdetails`
--

CREATE TABLE IF NOT EXISTS `sdetails` (
  `hsnsac` int(8) NOT NULL,
  `sname` varchar(12) NOT NULL,
  `dc` varchar(25) NOT NULL,
  `pcost` float(7,2) NOT NULL,
  `scost` float(9,2) NOT NULL,
  `gst` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sdetails`
--

INSERT INTO `sdetails` (`hsnsac`, `sname`, `dc`, `pcost`, `scost`, `gst`) VALUES
(120, 'Tennis', 'adults', 679.00, 769.89, 5.00),
(111, 'Badminton', 'kids', 749.67, 347.64, 12.00),
(124, 'Volley ball', 'adults', 568.98, 669.00, 12.00),
(126, 'Hockey', 'teen', 732.67, 164.86, 18.00),
(765, 'Cricket', 'adults', 667.76, 769.78, 12.00);
