-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 10:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greensuper`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'yasiru perera', 'ysn@gmail.com', 'very good site');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `id` int(11) NOT NULL,
  `payer` varchar(100) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`id`, `payer`, `transaction`, `shipping`, `description`) VALUES
(1, 'yasiru', '800.00', '461/G Nagahawatta Road, Pitipana Uthura, Homagama', ''),
(2, 'yasiru', '800.00', '461/G Nagahawatta Road, Pitipana Uthura, Homagama', ''),
(3, 'yasiru', '800.00', '461/G Nagahawatta Road, Pitipana Uthura, Homagama', ' Banana - 1 Chicken  - 1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `stock_amount` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `tags` varchar(45) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `availability` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `item_name`, `stock_amount`, `weight`, `price`, `category`, `tags`, `comments`, `discount`, `availability`, `image`) VALUES
(39, 'Banana', 4000, 1, 150, 'Fruits', 'Featured', 'Very good for health>>>>>>>>>>>>>', 20, 'INSTOCK', 'product-2.jpg'),
(40, 'Chicken ', 4000, 1, 450, 'Meat', 'Featured', 'Good Condition>>>>>>>>>>>>', 45, 'INSTOCK', 'product-1.jpg'),
(41, 'Oranges', 4500, 1, 120, 'Fruits', 'Discount', 'Very good>>>>>>>>>>', 25, 'INSTOCK', 'product-11.jpg'),
(42, 'Lemon', 5000, 1, 140, 'Fruits', 'Discount', 'Good Condition>>>>>>>>', 14, 'INSTOCK', 'product-3.jpg'),
(43, 'Cabbages', 5000, 1, 400, 'Vegetables', 'Discount', 'Good Condition>', 25, 'INSTOCK', 'image9.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'sachin', 'rjsnfernando@gmail.com', 'sachin', 'customer'),
(2, 'admin', 'rjsnfernando@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
