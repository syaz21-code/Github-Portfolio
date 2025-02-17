-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 01:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uhui_enterprise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(5) NOT NULL,
  `ad_fname` varchar(30) NOT NULL,
  `ad_lname` varchar(30) NOT NULL,
  `ad_username` varchar(30) NOT NULL,
  `ad_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_fname`, `ad_lname`, `ad_username`, `ad_password`) VALUES
(1, 'Syazreeq', 'Akmal', 'syazmal', '123456'),
(2, 'Anna', 'Rokman', 'annarokman', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `i_id` int(5) NOT NULL,
  `i_qty` int(5) NOT NULL DEFAULT 0,
  `i_name` varchar(30) NOT NULL,
  `i_price` decimal(7,2) NOT NULL DEFAULT 0.00,
  `i_cost` decimal(7,2) NOT NULL,
  `i_image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`i_id`, `i_qty`, `i_name`, `i_price`, `i_cost`, `i_image`) VALUES
(2, 5, 'Roti Jagung', 1.20, 0.60, 'jaagung4life.jpg'),
(3, 5, 'Roti Vanilla', 1.20, 0.60, 'vanillaBread.jpg'),
(4, 5, 'Roti Choc', 1.20, 0.60, 'ChocBread.jpg'),
(5, 5, 'Kinder Bueno', 5.30, 3.50, 'kindness.jpg'),
(6, 5, 'Nescafe Ice', 2.00, 1.50, 'kopi.jpg'),
(7, 5, 'Fanta Lemon', 2.30, 1.70, 'lemon.jpg'),
(8, 5, 'Mineral Water', 1.50, 1.00, 'air.jpg'),
(9, 5, '100 Plus', 2.30, 1.40, '100plus.jpg'),
(10, 5, 'Chrysanthemum Tea', 2.30, 1.40, 'chyrsanthemum.jpg'),
(11, 5, 'Bika', 1.50, 0.80, 'bika.jpg'),
(12, 5, 'Milo', 2.30, 1.50, 'milo.jpg'),
(13, 5, 'Super Ring', 1.50, 0.70, 'superRing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(5) NOT NULL,
  `o_date` date NOT NULL,
  `o_month` varchar(15) NOT NULL,
  `o_totprice` decimal(7,2) NOT NULL,
  `o_totcost` decimal(7,2) NOT NULL,
  `o_quantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `o_date`, `o_month`, `o_totprice`, `o_totcost`, `o_quantity`) VALUES
(26, '2023-11-18', '11', 7.20, 3.60, 6),
(27, '2023-11-18', '11', 7.20, 3.60, 6),
(28, '2023-11-18', '11', 7.20, 3.60, 6),
(29, '2023-11-18', '11', 7.90, 5.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oi_id` int(5) NOT NULL,
  `oi_name` varchar(30) NOT NULL,
  `oi_price` decimal(7,2) NOT NULL,
  `oi_quantity` int(4) NOT NULL,
  `o_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oi_id`, `oi_name`, `oi_price`, `oi_quantity`, `o_id`) VALUES
(61, 'Roti Jagung', 1.20, 2, 26),
(62, 'Roti Vanilla', 1.20, 2, 26),
(63, 'Roti Choc', 1.20, 2, 26),
(64, 'Roti Jagung', 1.20, 2, 28),
(65, 'Roti Vanilla', 1.20, 2, 28),
(66, 'Roti Choc', 1.20, 2, 28),
(67, 'Roti Jagung', 1.20, 1, 29),
(68, 'Roti Vanilla', 1.20, 1, 29),
(69, 'Roti Choc', 1.20, 1, 29),
(70, 'Nescafe Ice', 2.00, 1, 29),
(71, 'Fanta Lemon', 2.30, 1, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oi_id`),
  ADD KEY `FKey` (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `i_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `oi_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
