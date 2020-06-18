-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 08:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studentinfo`
--

CREATE TABLE `tbl_studentinfo` (
  `StudentID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Age` int(100) NOT NULL,
  `Birthday` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_studentinfo`
--

INSERT INTO `tbl_studentinfo` (`StudentID`, `FirstName`, `LastName`, `Age`, `Birthday`, `Address`) VALUES
(1, 'Bobroy', 'Lumongsod', 22, 'July 27, 1998', 'Colon Extension'),
(2, 'Zasyl', 'Lumongsod', 23, 'February 24, 1997', 'Colon Extension'),
(3, 'Lowela', 'Avendano', 24, 'March 14, 1996', 'Dauin'),
(4, 'James', 'HardHeaded', 18, 'January 1 , 2000', 'Valencia'),
(5, 'Lebron', 'James', 20, 'March 1, 1999', 'Bagacay'),
(6, 'Renjikyu', 'Hatsune', 23, 'February 29, 2007', 'Dumaguete'),
(7, 'Wilson', 'Debas', 33, 'June 18, 1991', 'Cagayan'),
(8, 'Coco', 'Melon', 25, 'August 13, 1992', 'Cadawinonan'),
(9, 'Tim', 'Pura', 19, 'December 25, 1993', 'Junob'),
(10, 'Bag', 'Ting', 20, 'May 30, 1999', 'Bacong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_studentinfo`
--
ALTER TABLE `tbl_studentinfo`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_studentinfo`
--
ALTER TABLE `tbl_studentinfo`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
