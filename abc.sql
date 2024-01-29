-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 04:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `acccount`
--

CREATE TABLE `acccount` (
  `ACCCOUNTNUMBER` int(11) NOT NULL,
  `BALANCE` int(11) DEFAULT NULL,
  `CUSTOMERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `acccount`
--

INSERT INTO `acccount` (`ACCCOUNTNUMBER`, `BALANCE`, `CUSTOMERID`) VALUES
(1, 4000, 123),
(2, 2000, 123),
(3, 1000, 124),
(4, 6000, 125),
(5, 9000, 125),
(6, 500, 127),
(7, 800, 127);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `NAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`NAME`, `ADDRESS`, `CITY`, `STATE`, `ID`) VALUES
('Mr.Sola', '12 Lekki', 'Lagos', 'LA', 123),
('Mrs.James', '15 Awolowo', 'Lagos', 'LA', 124),
('Mr.Ade', '43 Gwagwa Ln.', 'Maitama', 'AB', 125),
('Mr.&Mrs. Bayo', '61 Zik Rd.', 'Maitama', 'AB', 127);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acccount`
--
ALTER TABLE `acccount`
  ADD PRIMARY KEY (`ACCCOUNTNUMBER`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acccount`
--
ALTER TABLE `acccount`
  ADD CONSTRAINT `acccount_ibfk_1` FOREIGN KEY (`CUSTOMERID`) REFERENCES `customer` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
