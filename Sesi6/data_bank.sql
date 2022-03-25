-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 10:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerNumber` int(11) NOT NULL,
  `customerName` varchar(125) DEFAULT NULL,
  `contactLastName` varchar(50) DEFAULT NULL,
  `contactFirstName` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `addressLine1` varchar(30) DEFAULT NULL,
  `addressLine2` varchar(30) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `employeeNumber` int(11) DEFAULT NULL,
  `creditLimit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `employeeNumber`, `creditLimit`) VALUES
(10389, 'saefudin', 'saefudin', 'zuhri', 8464889, 'arjuna', 'kobon jeruk', 'jakbar', 'jakarta', 37844, 'indonesia', 839, 20000),
(10390, 'sabri', 'sabri', 'alim', 8237283, 'prambanan', 'kemanggisan', 'jaksel', 'jakarta', 37846, 'indonesia', 839, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `officeCode` int(11) DEFAULT NULL,
  `reportsTo` varchar(100) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `email`, `officeCode`, `reportsTo`, `jobTitle`) VALUES
(837, 'fira', 'safira', 'fira@gmail.com', 698, 'atasan', 'editor'),
(838, 'devira', 'asha', 'devira@gmail.com', 697, 'direktur', 'komisaris'),
(839, 'galih', 'briantoro', 'galih@gmail.com', 698, 'atasan', 'editor');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` int(11) NOT NULL,
  `cityOffice` varchar(25) DEFAULT NULL,
  `phoneOffice` int(11) DEFAULT NULL,
  `addressOffice1` varchar(30) DEFAULT NULL,
  `addressOffice2` varchar(30) DEFAULT NULL,
  `stateOffice` varchar(25) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `territory` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `cityOffice`, `phoneOffice`, `addressOffice1`, `addressOffice2`, `stateOffice`, `postal_code`, `territory`) VALUES
(697, 'jakbar', 893888, 'sudimara', 'kebon jeruk', 'jakarta', 73888, '200 m'),
(698, 'tangsel', 8347788, 'pamulang', 'tansel', 'tangsel', 36888, '150 m');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderNumber` int(11) DEFAULT NULL,
  `productCode` int(11) DEFAULT NULL,
  `quantityOrdered` int(11) DEFAULT NULL,
  `priceEach` int(20) DEFAULT NULL,
  `orderLineNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`OrderNumber`, `productCode`, `quantityOrdered`, `priceEach`, `orderLineNumber`) VALUES
(784, 201, 1, 20000, 40),
(783, 203, 2, 46000, 67);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderNumber` int(11) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `customerNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderNumber`, `orderDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(783, '2022-03-26', '2022-03-30', 'oke', 'bagus', 10390),
(784, '2022-04-04', '2022-04-14', 'aman', 'barang bagus', 10390);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `checkNumber` int(11) NOT NULL,
  `customerNumber` int(11) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`checkNumber`, `customerNumber`, `paymentDate`, `amount`) VALUES
(948, 10390, '2022-04-12', 200000),
(949, 10389, '2022-04-26', 2400000);

-- --------------------------------------------------------

--
-- Table structure for table `productline`
--

CREATE TABLE `productline` (
  `productLine` int(11) NOT NULL,
  `textDescription` varchar(100) DEFAULT NULL,
  `htmlDescription` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productline`
--

INSERT INTO `productline` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
(101, 'honda', 'honda.html', 'honda.jpg'),
(102, 'yamaha', 'yamaha.html', 'yamaha.jpg'),
(103, 'nissan', 'nissan.html', 'nissan.jpg'),
(105, 'suzuki', 'suzuki.html', 'suzuki.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` int(11) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productLine` int(11) DEFAULT NULL,
  `productScale` varchar(100) DEFAULT NULL,
  `productVendor` varchar(50) DEFAULT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `quantityInStock` int(11) DEFAULT NULL,
  `buyPrice` int(20) DEFAULT NULL,
  `msrp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `msrp`) VALUES
(201, 'jazz', 101, 'empat', 'honda', 'oke', 100, 100000, 28000),
(202, 'avanza', 105, 'lima', 'suzuki', 'bagus', 200, 40000000, 20000),
(203, 'avanza', 105, '4', 'suzuki', 'bagus', 230, 400000, 34000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerNumber`),
  ADD KEY `employeeNumber` (`employeeNumber`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `officeCode` (`officeCode`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`officeCode`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `OrderNumber` (`OrderNumber`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`checkNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `productline`
--
ALTER TABLE `productline`
  ADD PRIMARY KEY (`productLine`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `productLine` (`productLine`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`employeeNumber`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`OrderNumber`) REFERENCES `orders` (`OrderNumber`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customer` (`customerNumber`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customer` (`customerNumber`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLine`) REFERENCES `productline` (`productLine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
