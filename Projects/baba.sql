-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 03:02 PM
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
-- Database: `baba`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) UNSIGNED NOT NULL,
  `username` varchar(45) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `password` varchar(45) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `name` varchar(45) COLLATE utf16_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_mysql561_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`) VALUES
(9, 'dp', '95687afb5d9a2a9fa39038f991640b0c', ''),
(11, 'kpp', '26b568e4192a164d5b3eacdbd632bc2', 'kpp');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_p`
--

CREATE TABLE `forgot_p` (
  `id` int(30) NOT NULL,
  `email` varchar(255) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `code` varchar(10) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `expire` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_mysql561_ci;

--
-- Dumping data for table `forgot_p`
--

INSERT INTO `forgot_p` (`id`, `email`, `code`, `expire`) VALUES
(1, 'kishor@gmail.com', '532713', 1681450038),
(2, 'kishorprajapati1014@gmail.com', '248569', 1681450170),
(3, 'kishorprajapati1014@gmail.com', '391869', 1681450515),
(4, 'kishorprajapati1014@gmail.com', '468135', 1681450620),
(5, 'kishorprajapati1014@gmail.com', '173721', 1681452577),
(6, 'kishorprajapati1014@gmail.com', '836872', 1681456607),
(7, 'kishorprajapati1014@gmail.com', '597871', 1681458924);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `qty` int(255) NOT NULL,
  `o_date` datetime NOT NULL,
  `status` varchar(255) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `c_name` varchar(255) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `c_contact` varchar(20) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `c_email` varchar(30) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `c_address` varchar(300) COLLATE utf16_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_mysql561_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(43) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `price` int(255) NOT NULL,
  `description` varchar(2000) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `section` varchar(30) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `fectured` varchar(30) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `active` varchar(30) COLLATE utf16_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_mysql561_ci;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`id`, `name`, `price`, `description`, `image_name`, `section`, `fectured`, `active`) VALUES
(12, 'fgh', 44, 'qwdfb', 'no image', '13', 'no', 'no'),
(13, 'jc', 0, '', 'Product4725.jpg', '13', 'no', 'no'),
(14, '', 1000, '', 'product2148.png', '14', 'no', 'no'),
(15, 'mobile phone', 12, 'jsdhcusjvvsv', 'product2372.jpg', '16', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `image_name` varchar(100) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `fectured` varchar(15) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `active` varchar(15) COLLATE utf16_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_mysql561_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`, `image_name`, `fectured`, `active`) VALUES
(13, 'electric', 'Section6119.png', 'yes', 'yes'),
(14, 'Agriculture', 'Section2796.jpg', 'yes', 'yes'),
(16, 'device', 'Section4424.jpg', 'yes', 'yes'),
(17, 'car', 'Section9046.jpg', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `id` int(25) NOT NULL,
  `fname` varchar(45) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `sname` varchar(45) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `email` varchar(56) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `password` varchar(56) COLLATE utf16_croatian_mysql561_ci NOT NULL,
  `username` varchar(56) COLLATE utf16_croatian_mysql561_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_croatian_mysql561_ci;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`id`, `fname`, `sname`, `email`, `password`, `username`) VALUES
(23, 'jk', 'ksd', 'kishor@gmail.com', 'kp', 'kp'),
(24, 'wedf', 'fwe', 'kishorprajapati1014@gmail.com', '$2y$10$6PYcjhIDsBwHUIk1XzbmCeYcjqZSVU.HTbpREa1HoGt8m19Yp', 'kp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_p`
--
ALTER TABLE `forgot_p`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `forgot_p`
--
ALTER TABLE `forgot_p`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro`
--
ALTER TABLE `pro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
