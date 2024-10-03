-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 04:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarketdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(45) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `status` varchar(210) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(5, 'redmi', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id` int(45) NOT NULL,
  `username` varchar(23) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `username`, `password`, `status`) VALUES
(1, 'sameer', '1234', 'Active'),
(3, 'shaharyar', '1234', 'Active'),
(4, 'muneeb', '1234', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(23) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(12, 'mobile', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product` varchar(230) NOT NULL,
  `description` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `retail_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `barcode` int(30) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `cat_id`, `brand_id`, `cost_price`, `retail_price`, `qty`, `barcode`, `status`) VALUES
(2, 'realme', 'realme', 11, 4, 21000, 20000, 1, 222, 'Active'),
(3, 'redmi', 'ncc', 11, 3, 40000, 41000, 1, 111, 'Active'),
(4, 'redmi note10', 'moblie', 12, 5, 250000, 30000, 9, 333, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(45) NOT NULL,
  `date` varchar(200) NOT NULL,
  `cashier` varchar(200) NOT NULL,
  `subtotal` int(45) NOT NULL,
  `pay` int(56) NOT NULL,
  `balance` int(59) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `cashier`, `subtotal`, `pay`, `balance`) VALUES
(1, '2022/06/13', '', 615000, 619000, 4000),
(2, '2022/06/13', '', 615000, 700000, 85000),
(3, '2022/06/13', '', 410000, 500000, 90000),
(4, '2022/06/13', '', 615000, 700000, 85000),
(5, '2022/06/13', '', 615000, 700000, 85000),
(6, '2022/06/13', '', 369000, 400000, 31000),
(7, '2022/06/13', '', 574000, 600000, 26000),
(8, '2022/06/13', '', 656000, 7000000, 6344000),
(9, '2022/06/13', '', 246000, 300000, 54000),
(10, '2022/06/13', '', 287000, 300000, 13000),
(11, '2022/06/13', '', 123000, 200000, 77000),
(12, '2022/06/13', '', 41000, 500000, 459000),
(13, '2022/06/14', 'sameer', 82000, 900000, 818000),
(14, '2022/06/14', 'sameer', 41000, 5000000, 4959000),
(15, '2022/06/14', 'sameer', 30000, 40000, 10000),
(16, '2022/06/14', 'sameer', 30000, 40000, 10000),
(17, '2022/06/14', 'sameer', 60000, 70000, 10000),
(18, '2022/06/14', 'sameer', 60000, 70000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(45) NOT NULL,
  `sales_id` int(23) NOT NULL,
  `product_id` int(45) NOT NULL,
  `sell_price` int(56) NOT NULL,
  `qty` int(59) NOT NULL,
  `total` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(1, 2, 111, 41000, 15, 615000),
(2, 3, 111, 41000, 10, 410000),
(3, 4, 111, 41000, 15, 615000),
(4, 5, 111, 41000, 15, 615000),
(5, 6, 111, 41000, 9, 369000),
(6, 7, 111, 41000, 14, 574000),
(7, 8, 111, 41000, 16, 656000),
(8, 9, 111, 41000, 6, 246000),
(9, 10, 111, 41000, 7, 287000),
(10, 11, 111, 41000, 3, 123000),
(11, 12, 111, 41000, 1, 41000),
(12, 13, 111, 41000, 2, 82000),
(13, 14, 111, 41000, 1, 41000),
(14, 15, 333, 30000, 1, 30000),
(15, 16, 333, 30000, 1, 30000),
(16, 17, 333, 30000, 2, 60000),
(17, 18, 333, 30000, 2, 60000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
