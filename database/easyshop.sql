-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 09:54 AM
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
-- Database: `easyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `wilaya` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `quantity` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `status` varchar(256) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `quantity` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `vendor_id`, `product_name`, `description`, `price`, `image`, `status`, `create_date`, `update_date`, `quantity`, `category`) VALUES
(56, 16, 'Electric motor', '', 56000, '662ebb898c8bd_photo_2024-04-28_22-10-09-removebg-preview.png', 'inactive', '2024-04-28', '2024-04-28', 2, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_email` varchar(255) NOT NULL,
  `register_date` date NOT NULL,
  `vendor_status` varchar(100) NOT NULL,
  `vendor_password` varchar(256) NOT NULL,
  `points` int(255) UNSIGNED NOT NULL DEFAULT 0,
  `balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `vendor_email`, `register_date`, `vendor_status`, `vendor_password`, `points`, `balance`, `role`) VALUES
(12, 'amine kerour', 'amine@gmail.com', '2024-04-06', 'active', '$2y$10$EaD5BZFiCj5rHz2C2dnvt.FE2pu5g/endFp0ZDh04sDSrQDxU9dM.', 5, 10, 'vendor'),
(15, 'admin', 'o@admin.com', '2024-04-15', 'active', '$2y$10$0./d3wTML9GXT2MOHoQHPe93dqYmQVuccDKZeTZhXTTHJG7EVvBxu', 0, 0, 'admin'),
(16, 'chiheb abiza', 'chiheb@gmail.com', '2024-04-16', 'active', '$2y$10$uSKiNBCwQ7QNOV4VJLB97ObhYpK1/iwPUKf9FMydIO19fZf4AK6ZG', 10, 0, 'vendor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
