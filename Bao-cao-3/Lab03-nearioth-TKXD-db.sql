-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2021 at 10:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TKXD-Lab3-Neariroth-dtb`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_NearirothR`
--

CREATE TABLE `book_NearirothR` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` varchar(45) NOT NULL,
  `coverType` varchar(45) NOT NULL,
  `publishDate` datetime NOT NULL,
  `numOfPages` int(11) NOT NULL,
  `language` varchar(45) NOT NULL,
  `bookCategory` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_NearirothR`
--

CREATE TABLE `cart_NearirothR` (
  `id` int(11) UNSIGNED NOT NULL,
  `cardCode` varchar(15) NOT NULL,
  `owner` varchar(45) NOT NULL,
  `cwCode` varchar(3) NOT NULL,
  `dateExpired` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cd_NearirothR`
--

CREATE TABLE `cd_NearirothR` (
  `id` int(11) UNSIGNED NOT NULL,
  `artist` varchar(45) NOT NULL,
  `recordLabel` varchar(45) NOT NULL,
  `musicType` varchar(45) NOT NULL,
  `releaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryinfo_NearirothR`
--

CREATE TABLE `deliveryinfo_NearirothR` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `province` varchar(45) NOT NULL,
  `instructions` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dvd_NearirothR`
--

CREATE TABLE `dvd_NearirothR` (
  `id` int(11) UNSIGNED NOT NULL,
  `discType` varchar(45) NOT NULL,
  `director` varchar(45) NOT NULL,
  `runtime` int(11) NOT NULL,
  `studio` varchar(45) NOT NULL,
  `subtitle` varchar(45) NOT NULL,
  `releaseDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_NearirothR`
--

CREATE TABLE `invoice_NearirothR` (
  `id` int(10) UNSIGNED NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `orderId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `media_NearirothR`
--

CREATE TABLE `media_NearirothR` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `value` int(11) NOT NULL,
  `imageUrl` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordermedia_NearirothR`
--

CREATE TABLE `ordermedia_NearirothR` (
  `orderID` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mediaId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_NearirothR`
--

CREATE TABLE `order_NearirothR` (
  `id` int(10) UNSIGNED NOT NULL,
  `shippingFees` varchar(45) NOT NULL,
  `deliveryInfoId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymenttransaction_NearirothR`
--

CREATE TABLE `paymenttransaction_NearirothR` (
  `id` int(10) UNSIGNED NOT NULL,
  `createAt` datetime NOT NULL,
  `content` varchar(45) NOT NULL,
  `method` varchar(45) NOT NULL,
  `cartId` int(10) UNSIGNED NOT NULL,
  `invoiceId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_NearirothR`
--
ALTER TABLE `book_NearirothR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_NearirothR`
--
ALTER TABLE `cart_NearirothR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_NearirothR`
--
ALTER TABLE `cd_NearirothR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryinfo_NearirothR`
--
ALTER TABLE `deliveryinfo_NearirothR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dvd_NearirothR`
--
ALTER TABLE `dvd_NearirothR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_NearirothR`
--
ALTER TABLE `invoice_NearirothR`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `media_NearirothR`
--
ALTER TABLE `media_NearirothR`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordermedia_NearirothR`
--
ALTER TABLE `ordermedia_NearirothR`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `mediaId` (`mediaId`);

--
-- Indexes for table `order_NearirothR`
--
ALTER TABLE `order_NearirothR`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveryInfoId` (`deliveryInfoId`);

--
-- Indexes for table `paymenttransaction_NearirothR`
--
ALTER TABLE `paymenttransaction_NearirothR`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartId` (`cartId`),
  ADD KEY `invoiceId` (`invoiceId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_NearirothR`
--
ALTER TABLE `book_NearirothR`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_NearirothR`
--
ALTER TABLE `cart_NearirothR`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cd_NearirothR`
--
ALTER TABLE `cd_NearirothR`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryinfo_NearirothR`
--
ALTER TABLE `deliveryinfo_NearirothR`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dvd_NearirothR`
--
ALTER TABLE `dvd_NearirothR`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_NearirothR`
--
ALTER TABLE `invoice_NearirothR`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_NearirothR`
--
ALTER TABLE `media_NearirothR`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordermedia_NearirothR`
--
ALTER TABLE `ordermedia_NearirothR`
  MODIFY `orderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_NearirothR`
--
ALTER TABLE `order_NearirothR`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymenttransaction_NearirothR`
--
ALTER TABLE `paymenttransaction_NearirothR`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_NearirothR`
--
ALTER TABLE `book_NearirothR`
  ADD CONSTRAINT `book_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `media_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_NearirothR`
--
ALTER TABLE `cart_NearirothR`
  ADD CONSTRAINT `cart_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `paymenttransaction_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deliveryinfo_NearirothR`
--
ALTER TABLE `deliveryinfo_NearirothR`
  ADD CONSTRAINT `deliveryinfo_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `order_NearirothR` (`deliveryInfoId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dvd_NearirothR`
--
ALTER TABLE `dvd_NearirothR`
  ADD CONSTRAINT `dvd_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `media_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_NearirothR`
--
ALTER TABLE `invoice_NearirothR`
  ADD CONSTRAINT `invoice_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `order_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_NearirothR`
--
ALTER TABLE `media_NearirothR`
  ADD CONSTRAINT `media_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `cd_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordermedia_NearirothR`
--
ALTER TABLE `ordermedia_NearirothR`
  ADD CONSTRAINT `ordermedia_NearirothR_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `media_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_NearirothR`
--
ALTER TABLE `order_NearirothR`
  ADD CONSTRAINT `order_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `ordermedia_NearirothR` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymenttransaction_NearirothR`
--
ALTER TABLE `paymenttransaction_NearirothR`
  ADD CONSTRAINT `paymenttransaction_NearirothR_ibfk_1` FOREIGN KEY (`id`) REFERENCES `invoice_NearirothR` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
