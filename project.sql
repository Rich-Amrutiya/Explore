-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 04:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `domestic_package`
--

CREATE TABLE `domestic_package` (
  `id` int(11) NOT NULL,
  `image1` varchar(400) NOT NULL,
  `image2` varchar(400) NOT NULL,
  `image3` varchar(400) NOT NULL,
  `price` varchar(10) NOT NULL,
  `duration` varchar(60) NOT NULL,
  `place_name` varchar(60) NOT NULL,
  `link` varchar(400) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT 100,
  `departure_place` varchar(60) NOT NULL DEFAULT 'Ahmedabad,Gujarat',
  `departure_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domestic_package`
--

INSERT INTO `domestic_package` (`id`, `image1`, `image2`, `image3`, `price`, `duration`, `place_name`, `link`, `limit`, `departure_place`, `departure_date`) VALUES
(17, 'Domestic\\Leh_Ladakh1.jpg', 'Domestic\\Leh_Ladakh2.jpg', 'Domestic\\Leh_Ladakh3.jpg', '10,630', '5D/4N', 'Leh-Ladakh', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(18, 'Domestic\\Gujarat1.jpg', 'Domestic\\Gujarat2.jpg', 'Domestic\\Gujarat3.jpg', '5,999', '6D/5N', 'Gujarat', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(19, 'Domestic\\Kerala1.jpg', 'Domestic\\Kerala2.jpg', 'Domestic\\Kerala3.jpg', '20,999', '7D/6N', 'Kerala', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(20, 'Domestic\\Sikkim1.jpg', 'Domestic\\Sikkim2.jpg', 'Domestic\\Sikkim3.webp', '24,599', '7D/6N', 'Sikkim', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(21, 'Domestic\\Goa1.jpg', 'Domestic\\Goa2.jpg', 'Domestic\\Goa3.webp', '10,998', '5D/4N', 'Goa', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(22, 'Domestic\\Rajasthan1.jpg', 'Domestic\\Rajasthan2.jpg', 'Domestic\\Rajasthan3.webp', '14,299', '5D/4N', 'Rajasthan', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(23, 'Domestic\\Maharashtra1.jpg', 'Domestic\\Maharashtra2.jpg', 'Domestic\\Maharashtra3.jpg', '20,198', '6D/5N', 'Maharashtra', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(24, 'Domestic\\South_India1.webp', 'Domestic\\South_India2.jpg', 'Domestic\\South_India3.webp', '17,299', '7D/6N', 'South India', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(25, 'Domestic\\North_East1.jpg', 'Domestic\\North_East2.jpg', 'Domestic\\North_East3.jpg', '30,999', '9D/8N', 'North-East', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(26, 'Domestic\\Manali1.jpeg', 'Domestic\\Manali2.jpeg', 'Domestic\\Manali3.jpg', '10,999', '5D/4N', 'Manali', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(27, 'Domestic\\Delhi_UP1.jpg', 'Domestic\\Delhi_UP2.jpg', 'Domestic\\Delhi_UP3.jpg', '15,499', '5D/4N', 'Delhi - U.P.', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', ''),
(28, 'Domestic\\CharDham4.jpg', 'Domestic\\CharDham2.jpg', 'Domestic\\CharDham3.jpg', '12,999', '5D/4N', 'Chardham', 'trip_details2.php', 100, 'Ahmedabad,Gujarat', '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file_path`) VALUES
(2, 'dir/read_cookie.php'),
(3, 'dir/set_cookie.php'),
(4, 'dir/set_session.php'),
(5, 'dir/bogo.pdf'),
(6, 'dir/codes.zip'),
(7, 'dir/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `international_package`
--

CREATE TABLE `international_package` (
  `id` int(11) NOT NULL,
  `image1` varchar(400) NOT NULL,
  `image2` varchar(400) NOT NULL,
  `image3` varchar(400) NOT NULL,
  `price` varchar(10) NOT NULL,
  `duration` varchar(60) NOT NULL,
  `place_name` varchar(60) NOT NULL,
  `link` varchar(400) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT 100,
  `departure_place` varchar(60) NOT NULL DEFAULT 'Ahmedabad,Gujarat',
  `departure_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `international_package`
--

INSERT INTO `international_package` (`id`, `image1`, `image2`, `image3`, `price`, `duration`, `place_name`, `link`, `limit`, `departure_place`, `departure_date`) VALUES
(5, 'International\\Italy1.jpg', 'International\\Italy2.jpg', 'International\\Italy3.jpg', '1,29,990', '9D/8N', 'Italy', 'trip_details.php', 100, '', ''),
(6, 'International\\Bali1.jpg', 'International\\Bali2.jpg', 'International\\Bali3.jpg', '47,630', '6D/5N', 'Bali', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(7, 'International\\South_Africa1.jpg', 'International\\South_Africa2.jpg', 'International\\South_Africa3.jpg', '1,78,990', '8D/7N', 'South Africa', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(8, 'International\\Australia1.jpg', 'International\\Australia2.jpeg', 'International\\Australia3.jpg', '1,10,630', '10D/9N', 'Australia', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(9, 'International\\Maldives1.jpg', 'International\\Maldives2.jpg', 'International\\Maldives3.jpeg', '80,990', '5D/4N', 'Maldives', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(10, 'International\\Singapore1.jpg', 'International\\Singapore2.jpg', 'International\\Singapore3.jpg', '78,199', '6D/5N', 'Singapore', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(11, 'International\\Europe1.jpg', 'International\\Europe2.jpg', 'International\\Europe3.jpg', '2,06,990', '13D/12N', 'Europe', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(12, 'International\\Thailand1.jpg', 'International\\Thailand2.jpeg', 'International\\Thailand3.jpg', '52,464', '6D/5N', 'Thailand', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(13, 'International\\Dubai1.jpg', 'International\\Dubai2.jpg', 'International\\Dubai3.jpg', '1,78,990', '7D/6N', 'Dubai', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(14, 'International\\U.K.1.jpg', 'International\\U.K.2.jpeg', 'International\\U.K.3.jpg', '2,05,990', '10D/9N', 'U.K.', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(15, 'International\\Jordan1.jpg', 'International\\Jordan2.jpg', 'International\\Jordan3.jpg', '73,912', '8D/7N', 'Jordan', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(16, 'International\\DisneyLand1.jpg', 'International\\DisneyLand2.jpg', 'International\\DisneyLand3.jpg', '50,999', '6D/5N', 'Hongkong-Disneyland', 'trip_details.php', 100, 'Ahmedabad,Gujarat', ''),
(29, '', '', '', '1', '20 Years', 'Lakhman', 'trip_details.php', 1, 'Ahmedabad,Gujarat', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Rich', 'r@gmail.com', '$2y$10$cSzRTBS9DLcG9SJig8kLhuyjsQo3hvxIdqphDrfxxJRjEM5vsD3/i'),
(2, 'Mahek_G', 'mahek101@gmail.com', '$2y$10$rfDSdjLZQf/ToiQx6U7gOOH8Ak7brcV0zG/cBWzHPxieYvI3sFHIi'),
(6, 'rich_101', 'rich@gmail.com', '$2y$10$DG5/PC9NUCS/3j78zEZSo.sD5Azv14j/zLGygCUoo8gWZyPCnaIj2'),
(7, 'mahek', 'm@gmail.com', '$2y$10$TjOZKPX2vOMIKMgkyiWcNO/7tlbyZi7res7fNAOUdEdCyEeMPEJNe'),
(8, 'drashti', 'drashti@gmail.com', '$2y$10$Qh2l9lt5xKySTog1DjDalu4QVJZGM1Ytl2AMJ2679lZv6qEZTk/Ua'),
(9, 'devanshi', 'd@gmail.com', '$2y$10$YOgSbZlMq6yWT3OUt1diFe2tu4PKjSJ4yE.MQy8SbQI9x5RQ4/98O'),
(10, 'meet', 'm1@gmail.com', '$2y$10$tNCj68P.m04bOE5jOOWsHeUlqhGZWIxDHXIssrABEYtMLAu7rLxl2'),
(11, 'ddu', 'ddu@gmail.com', '$2y$10$JspANN9sskNOuCfx8SbLeu7cVuyZ.IQnOYDAUl/NenfctlwuER8nK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domestic_package`
--
ALTER TABLE `domestic_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `international_package`
--
ALTER TABLE `international_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domestic_package`
--
ALTER TABLE `domestic_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `international_package`
--
ALTER TABLE `international_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
