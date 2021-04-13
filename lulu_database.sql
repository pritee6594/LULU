-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 03:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lulu_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `colors` text NOT NULL,
  `desc` text NOT NULL,
  `pub_date` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_1` varchar(150) NOT NULL,
  `image_2` varchar(150) NOT NULL,
  `image_3` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`id`, `name`, `price`, `discount`, `stock`, `colors`, `desc`, `pub_date`, `category_id`, `image_1`, `image_2`, `image_3`) VALUES
(2, 'Top 1', '200.00', 10, 20, 'blue multi colors', 'Very better product...\r\n', '2021-03-26 20:14:17', 6, 'c0fb3f384e8a52b8b5e7.jpg', '57c0ed40b0803c7fe245.jpg', '633ebcd71edb55c74018.jpg'),
(3, 'Top 2', '200.00', 10, 10, 'Red multi colors', 'Very better product...', '2021-03-26 20:14:59', 6, 'bfc6180de62dd8f3546c.jpg', '4c58f2c9cb7f70a61466.jpg', 'b84ebf97dc7c182cb822.jpg'),
(9, 'md', '200.00', 10, 200, 'Blue', 'description', '2021-03-28 16:30:45', 10, '2755d08d5a25e15d493e.jpg', '3b424bb63e4b66db9541.jpg', 'd7aca48cb6f4e3eb0774.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(10, 'dresses'),
(6, 'tops');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `orders` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `invoice`, `status`, `customer_id`, `date_created`, `orders`) VALUES
(1, '19e8247a7c', 'Pending', 3, '2021-03-28 00:50:42', '{\"6\": {\"color\": \"multi\", \"colors\": \"multi\", \"discount\": 20, \"image\": \"74b569630083a6e3733e.jpg\", \"name\": \"bottom1\", \"price\": 200.0, \"quantity\": \"10\"}}'),
(2, '83ead3f899', 'Pending', 3, '2021-03-28 00:56:38', '{\"6\": {\"color\": \"multi\", \"colors\": \"multi\", \"discount\": 20, \"image\": \"74b569630083a6e3733e.jpg\", \"name\": \"bottom1\", \"price\": 200.0, \"quantity\": 1}}'),
(3, '8690db8370', 'Pending', 3, '2021-03-28 01:21:45', '{\"6\": {\"color\": \"multi\", \"colors\": \"multi\", \"discount\": 20, \"image\": \"74b569630083a6e3733e.jpg\", \"name\": \"bottom1\", \"price\": 200.0, \"quantity\": 2}}'),
(4, '4b0bbcf86c', 'Pending', 1, '2021-03-28 02:02:15', '{\"6\": {\"color\": \"multi\", \"colors\": \"multi\", \"discount\": 20, \"image\": \"74b569630083a6e3733e.jpg\", \"name\": \"bottom1\", \"price\": 200.0, \"quantity\": 2}}'),
(5, '039bbf410c', 'Pending', 1, '2021-03-28 02:38:15', '{\"3\": {\"color\": \"Red multi colors\", \"colors\": \"Red multi colors\", \"discount\": 130, \"image\": \"bfc6180de62dd8f3546c.jpg\", \"name\": \"Top 2\", \"price\": 200.0, \"quantity\": 1}}'),
(6, 'e7e7b14632', 'Pending', 1, '2021-03-28 16:04:02', '{\"3\": {\"color\": \"Red multi colors\", \"colors\": \"Red multi colors\", \"discount\": 10, \"image\": \"bfc6180de62dd8f3546c.jpg\", \"name\": \"Top 2\", \"price\": 200.0, \"quantity\": \"5\"}}'),
(7, '9cab3bdf49', 'Pending', 1, '2021-03-28 16:06:01', '{\"2\": {\"color\": \"blue multi colors\", \"colors\": \"blue multi colors\", \"discount\": 100, \"image\": \"c0fb3f384e8a52b8b5e7.jpg\", \"name\": \"Top 1\", \"price\": 200.0, \"quantity\": 1}}'),
(8, '46e5ba5893', 'Pending', 1, '2021-03-28 16:08:21', '{\"2\": {\"color\": \"blue multi colors\", \"colors\": \"blue multi colors\", \"discount\": 100, \"image\": \"c0fb3f384e8a52b8b5e7.jpg\", \"name\": \"Top 1\", \"price\": 200.0, \"quantity\": \"1\"}}'),
(9, '008c0228e1', 'Pending', 1, '2021-03-28 16:12:33', '{\"2\": {\"color\": \"blue multi colors\", \"colors\": \"blue multi colors\", \"discount\": 100, \"image\": \"c0fb3f384e8a52b8b5e7.jpg\", \"name\": \"Top 1\", \"price\": 200.0, \"quantity\": \"2\"}}'),
(10, 'd861dc8a77', 'Pending', 1, '2021-03-28 16:14:02', '{\"2\": {\"color\": \"blue multi colors\", \"colors\": \"blue multi colors\", \"discount\": 100, \"image\": \"c0fb3f384e8a52b8b5e7.jpg\", \"name\": \"Top 1\", \"price\": 200.0, \"quantity\": \"2\"}}'),
(11, 'ad4089d32a', 'Pending', 1, '2021-03-28 16:23:48', '{\"2\": {\"color\": \"blue multi colors\", \"colors\": \"blue multi colors\", \"discount\": 10, \"image\": \"c0fb3f384e8a52b8b5e7.jpg\", \"name\": \"Top 1\", \"price\": 200.0, \"quantity\": 1}}'),
(12, '5aece45737', 'Pending', 1, '2021-03-28 16:37:43', '{\"3\": {\"color\": \"Red multi colors\", \"colors\": \"Red multi colors\", \"discount\": 10, \"image\": \"bfc6180de62dd8f3546c.jpg\", \"name\": \"Top 2\", \"price\": 200.0, \"quantity\": 1}}'),
(13, 'ce662e8236', 'Pending', 1, '2021-03-28 17:29:21', '{\"3\": {\"color\": \"Red multi colors\", \"colors\": \"Red multi colors\", \"discount\": 10, \"image\": \"bfc6180de62dd8f3546c.jpg\", \"name\": \"Top 2\", \"price\": 200.0, \"quantity\": 1}}'),
(14, '9a6a7cf0a3', 'Pending', 1, '2021-03-28 17:31:06', '{\"2\": {\"color\": \"blue multi colors\", \"colors\": \"blue multi colors\", \"discount\": 10, \"image\": \"c0fb3f384e8a52b8b5e7.jpg\", \"name\": \"Top 1\", \"price\": 200.0, \"quantity\": 1}}');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `username`, `email`, `password`, `country`, `city`, `contact`, `address`, `zipcode`, `profile`, `date_created`) VALUES
(1, 'bilal akbar', 'muq123', 'programmersman1094@gmail.com', '$2b$12$8Bbiun4fEkQ94R/YtRUNGOhs4Riq2WwP5ht29r7u/QNkJ8omvEqOC', 'Pakistan', 'sheikhupura', '05637646378', 'sheikhupura, bxj', '39350', 'profile.jpg', '2021-03-28 02:02:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`invoice`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD CONSTRAINT `addproduct_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
