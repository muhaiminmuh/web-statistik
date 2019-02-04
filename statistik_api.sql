-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2019 at 04:57 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `statistik_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `statistik_api`
--

CREATE TABLE `statistik_api` (
  `id_statistik` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `os` varchar(30) NOT NULL,
  `browser` varchar(130) NOT NULL,
  `isp` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `region` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `timezone` text NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik_api`
--

INSERT INTO `statistik_api` (`id_statistik`, `ip`, `os`, `browser`, `isp`, `country`, `region`, `city`, `latitude`, `longitude`, `timezone`, `date_create`) VALUES
(4, '159.253.145.183', 'test', 'test', 'SoftLayer', 'Netherlands', 'North Holland', 'Amsterdam', 52.3556, 4.9135, 'Europe/Amsterdam', '2019-01-30 16:03:54'),
(5, '112.215.36.145', 'Linux', 'Google Chrome v.60.0.3112.116', 'WestHost, Inc.', 'Indonesia', 'Jakarta', 'Rw 01', -6.2262401580811, 106.82499694824, 'Asia/Jakarta', '2019-02-01 03:54:59'),
(6, '23.235.227.109', 'Unknown', 'Mozilla Firefox v.47.0', 'Secured Servers LLC', 'United States', 'Arizona', 'Tempe', 33.421501159668, -111.97399902344, 'America/Phoenix', '2019-02-01 03:56:03'),
(7, '209.95.56.51', 'Unknown', 'Google Chrome v.71.0.3578.98', 'WestHost, Inc.', 'United States', 'Illinois', 'Chicago', 41.878101348877, -87.62979888916, 'America/Chicago', '2019-02-01 03:56:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `statistik_api`
--
ALTER TABLE `statistik_api`
  ADD PRIMARY KEY (`id_statistik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `statistik_api`
--
ALTER TABLE `statistik_api`
  MODIFY `id_statistik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
