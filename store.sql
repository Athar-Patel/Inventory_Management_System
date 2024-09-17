-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 01:06 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT '0',
  `brand_status` int(11) NOT NULL DEFAULT '0',
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`, `companyid`) VALUES
(1, 'test', 1, 1, 5437265),
(2, 'HP', 1, 1, 5437265),
(3, 'Zebronics', 2, 1, 5437265),
(4, 'DELL', 1, 1, 5437265),
(5, 'boAt', 1, 1, 5437265),
(6, 'SanDisk', 1, 1, 5437265);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT '0',
  `categories_status` int(11) NOT NULL DEFAULT '0',
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`, `companyid`) VALUES
(1, 'test1', 1, 2, 5437265),
(2, 'test1', 1, 1, 5437265),
(3, 'Mouse', 1, 1, 5437265),
(5, 'Monitor', 1, 1, 5437265),
(6, 'Keyboard', 1, 1, 5437265),
(7, 'Headphones', 1, 1, 5437265),
(8, 'Pendrive', 1, 1, 5437265);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_place` int(11) NOT NULL,
  `gstn` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `payment_place`, `gstn`, `order_status`, `user_id`, `companyid`) VALUES
(3, '2023-04-30', 'BVP', '123456789', '366.00', '65.88', '431.88', '1', '430.88', '300', '130.88', 2, 2, 1, '65.88', 1, 1, 5437265),
(4, '2023-04-29', 'dd', '123456780', '1466.00', '263.88', '1729.88', '29', '1700.88', '100', '1600.88', 2, 3, 1, '263.88', 1, 1, 5437265),
(5, '2023-04-29', 'ok', '789456123', '12994.00', '2338.92', '15332.92', '32', '15300.92', '0', '15300.92', 2, 3, 1, '2338.92', 1, 1, 5437265),
(6, '2023-04-30', 'asd', '456789123', '50500.00', '9090.00', '59590.00', '0', '59590.00', '9590', '50000.00', 1, 2, 2, '9090.00', 1, 1, 5437265),
(7, '2023-05-01', 'qwe', '123789456', '20000.00', '3600.00', '23600.00', '0', '23600.00', '0', '23600.00', 3, 3, 1, '3600.00', 1, 1, 5437265),
(8, '2023-05-01', 'zxc', '741852963', '36000.00', '6480.00', '42480.00', '80', '42400.00', '400', '42000.00', 2, 1, 1, '6480.00', 1, 1, 5437265);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT '0',
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`, `companyid`) VALUES
(13, 1, 1, '1', '122', '122.00', 2, 0),
(14, 1, 1, '1', '122', '122.00', 2, 0),
(15, 1, 1, '1', '122', '122.00', 2, 0),
(16, 2, 1, '1', '122', '122.00', 2, 0),
(17, 2, 1, '1', '122', '122.00', 2, 0),
(18, 2, 1, '1', '122', '122.00', 2, 0),
(22, 4, 2, '2', '550', '1100.00', 1, 0),
(23, 4, 1, '3', '122', '366.00', 1, 0),
(24, 5, 2, '5', '550', '2750.00', 1, 0),
(25, 5, 1, '2', '122', '244.00', 1, 0),
(26, 5, 3, '10', '1000', '10000.00', 1, 0),
(27, 6, 2, '10', '550', '5500.00', 1, 0),
(28, 6, 5, '5', '7000', '35000.00', 1, 0),
(29, 6, 3, '2', '1000', '2000.00', 1, 0),
(30, 6, 4, '2', '4000', '8000.00', 1, 0),
(31, 7, 3, '10', '1000', '10000.00', 1, 0),
(32, 7, 7, '10', '1000', '10000.00', 1, 0),
(33, 8, 8, '10', '800', '8000.00', 1, 0),
(34, 8, 4, '2', '4000', '8000.00', 1, 0),
(35, 8, 6, '2', '10000', '20000.00', 1, 0),
(36, 3, 1, '1', '122', '122.00', 1, 5437265),
(37, 3, 1, '1', '122', '122.00', 1, 5437265),
(38, 3, 1, '1', '122', '122.00', 1, 5437265);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`, `companyid`) VALUES
(1, 'test', '../assests/images/stock/16494709285ec3834885aef.jpg', 1, 2, '52', '122', 2, 2, 5437265),
(2, 'HP S500 Wireless Mouse', '../assests/images/stock/5521644d1a339c787.jpg', 2, 3, '33', '550', 1, 1, 5437265),
(3, 'Dell Wireless Mouse-WM126', '../assests/images/stock/3223644d1eee64114.jpg', 4, 3, '28', '1000', 1, 1, 5437265),
(4, 'Zebronics Zeb-A19HD LED | Monitor (With HDMI)', '../assests/images/stock/32727644d379ccaa4a.jpg', 3, 5, '96', '4000', 1, 1, 5437265),
(5, 'TNFHD HP Monitor 22 YH with HDMI', '../assests/images/stock/5790644d387fba504.png', 2, 5, '65', '7000', 1, 1, 5437265),
(6, 'DELL 24 INCH WIDESCREEN MONITOR WITH BUILT-IN SPEAKERS', '../assests/images/stock/8342644d3a4d780a8.jpg', 4, 5, '98', '10000', 2, 1, 5437265),
(7, 'Zeb-Transformer ', '../assests/images/stock/17431644d3b38d56aa.jpg', 3, 3, '90', '1000', 1, 1, 5437265),
(8, 'boAt Rockerz 410 Bluetooth Headset with Mic', '../assests/images/stock/23763644fa16fc707d.jpg', 5, 7, '90', '800', 1, 1, 5437265),
(9, 'SanDisk Cruzer Blade 8GB USB Pendrive', '../assests/images/stock/16644fa32a58cd8.jpg', 6, 8, '60', '300', 1, 1, 5437265);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `companyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `companyid`) VALUES
(0, 'eee', 'eee', 'eee@d.com', 5437265),
(1, 'admin', '1234', '', 5437265),
(2, 'waqie', '1235', '', 123456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
