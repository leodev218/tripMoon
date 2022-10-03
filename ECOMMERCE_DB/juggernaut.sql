-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 03, 2022 at 12:27 AM
-- Server version: 8.0.29
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `juggernaut`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
  `busId` int NOT NULL AUTO_INCREMENT,
  `busName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sectors` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busMail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busPhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busStatus` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  PRIMARY KEY (`busId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`busId`, `busName`, `sectors`, `busMail`, `busPhone`, `busStatus`, `createdAt`, `updatedAt`, `clientId`) VALUES
(1, 'CADENA DE SUPERMERCADOS Y DROGUERIAS X NOMBRE', 'COMESTIBLES - BIOQUIMICOS - VENTAS', 'busMail@mail.com', '1234567890', 1, '2022-10-02 19:23:49', '2022-10-02 19:23:49', 1),
(2, 'CADENA DE SUPERMERCADOS Y DROGUERIAS X NOMBRE', 'COMESTIBLES - BIOQUIMICOS - VENTAS', 'busMail@mail.com', '1234567890', 1, '2022-10-02 19:25:27', '2022-10-02 19:25:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `businessgroup`
--

DROP TABLE IF EXISTS `businessgroup`;
CREATE TABLE IF NOT EXISTS `businessgroup` (
  `busgId` int NOT NULL AUTO_INCREMENT,
  `busgName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sector` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busgMail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busgPhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busgStatus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `busId` int DEFAULT NULL,
  PRIMARY KEY (`busgId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `businessgroup`
--

INSERT INTO `businessgroup` (`busgId`, `busgName`, `sector`, `busgMail`, `busgPhone`, `busgStatus`, `createdAt`, `updatedAt`, `busId`) VALUES
(1, 'drogreias', 'bioquimica ventas', 'mail_test@mail.com', '1234567890', '1', '2022-10-02 19:23:49', '2022-10-02 19:23:49', 1),
(2, 'drogreias', 'bioquimica ventas', 'mail_test@mail.com', '1234567890', '1', '2022-10-02 19:25:27', '2022-10-02 19:25:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `carId` int NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`carId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carsregist`
--

DROP TABLE IF EXISTS `carsregist`;
CREATE TABLE IF NOT EXISTS `carsregist` (
  `registId` int NOT NULL AUTO_INCREMENT,
  `carId` int DEFAULT NULL,
  `createdAt` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemId` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `costPlus` double DEFAULT NULL,
  `qtyLess` int DEFAULT NULL,
  `costLess` double DEFAULT NULL,
  `promo` int DEFAULT NULL,
  `promValue` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `subTotal` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `paymenMethod` int DEFAULT NULL,
  `changePay` double DEFAULT NULL,
  `payWith` double DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `deliveryCode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentStatus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numberOfItems` int DEFAULT NULL,
  `package` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceFee` double DEFAULT NULL,
  `deliveryFree` double DEFAULT NULL,
  `operationalModel` int DEFAULT NULL,
  `closedCar` json DEFAULT NULL,
  `unit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iva` double DEFAULT NULL,
  PRIMARY KEY (`registId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `catalogId` int NOT NULL AUTO_INCREMENT,
  `categoryId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `specialPrice` double DEFAULT NULL,
  `maxQty` int DEFAULT NULL,
  `specialMaxQty` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `boost` double DEFAULT NULL,
  `clickMultiplier` int DEFAULT NULL,
  `subQty` int DEFAULT NULL,
  `subUnit` int DEFAULT NULL,
  `location` int DEFAULT NULL,
  `promotion` int DEFAULT NULL,
  `minQty` int DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `securityStock` int DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `batchOf` int DEFAULT NULL,
  PRIMARY KEY (`catalogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryType` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryReference` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `storeId` int DEFAULT NULL,
  `creatredAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `boost` double DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `clienId` int NOT NULL AUTO_INCREMENT,
  `clientName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clientStatus` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `clientMail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`clienId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clienId`, `clientName`, `clientStatus`, `createdAt`, `updatedAt`, `clientMail`) VALUES
(1, 'Client Test', 1, '2022-10-02 19:23:49', '2022-10-02 19:23:49', 'mailTest@mail.com'),
(2, 'Client Test', 1, '2022-10-02 19:25:27', '2022-10-02 19:25:27', 'mailTest@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` int DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nutritionalDetails` longtext COLLATE utf8_unicode_ci,
  `ean1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `brand` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referenceStock` int DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `storeId` int NOT NULL AUTO_INCREMENT,
  `storeName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storePhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeMail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lati` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeAddress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countyId` int DEFAULT NULL,
  `cityId` int DEFAULT NULL,
  `storeState` int DEFAULT NULL,
  `zipCode` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `serviceFee` double DEFAULT NULL,
  `operationalModel` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opening` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `closing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busgId` int DEFAULT NULL,
  `minimumOrderAmount` double DEFAULT NULL,
  `maximumOrderAmount` double DEFAULT NULL,
  `freeDelivery` double DEFAULT NULL,
  `dynamicParams` json DEFAULT NULL,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`storeId`, `storeName`, `storePhone`, `storeMail`, `longi`, `lati`, `storeAddress`, `countyId`, `cityId`, `storeState`, `zipCode`, `createdAt`, `updatedAt`, `serviceFee`, `operationalModel`, `opening`, `closing`, `busgId`, `minimumOrderAmount`, `maximumOrderAmount`, `freeDelivery`, `dynamicParams`) VALUES
(1, 'TIENDA_TEST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-02 19:25:27', '2022-10-02 19:25:27', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `userStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userPass` longtext COLLATE utf8_unicode_ci,
  `uniqueCode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `firstName`, `lastName`, `mail`, `phoneNumber`, `createdAt`, `updatedAt`, `userStatus`, `userPass`, `uniqueCode`, `clientId`) VALUES
(1, 'UserTest', 'User', 'Test', 'mail_test@mail.com', 1234567890, '2022-10-02 19:22:49', '2022-10-02 19:22:49', 'ACTIVE', 'VQBzAHUAYQByAGkAbwBUAGUAcwB0AA==', 'UNIQUE_CODE_BY_CLIENT', 1),
(2, 'UserTest', 'User', 'Test', 'mail_test@mail.com', 1234567890, '2022-10-02 19:23:49', '2022-10-02 19:23:49', 'ACTIVE', 'VQBzAHUAYQByAGkAbwBUAGUAcwB0AA==', 'UNIQUE_CODE_BY_CLIENT', 1),
(3, 'UserTest', 'User', 'Test', 'mail_test@mail.com', 1234567890, '2022-10-02 19:25:27', '2022-10-02 19:25:27', 'ACTIVE', 'VQBzAHUAYQByAGkAbwBUAGUAcwB0AA==', 'UNIQUE_CODE_BY_CLIENT', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
