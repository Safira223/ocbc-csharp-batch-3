-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 09:49 PM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
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
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerNumber`, `customerName`, `contactLastName`, `contactFirstName`, `phone`, `addressLine1`, `addressLine2`, `city`, `state`, `postalCode`, `country`, `employeeNumber`, `creditLimit`) VALUES
(501, 'Sabri Alim', 'Sabri', 'Alim', 83728378, 'Jl. Arjuna', 'Kebon Jeruk', 'Jakarta Barat', 'DKI Jakarta', 38499, 'Indonesia', 401, 30000),
(502, 'Rachmat Efendi', 'Rachmat', 'Efendi', 87264849, 'Jl. Sudimara', 'Kemanggisan', 'Jakarta Barat', 'DKI Jakarta', 38499, 'Indonesia', 401, 25000),
(503, 'Saefudin Zuhri', 'Saefudin', 'Zuhri', 82537388, 'Jl. Pelopor', 'Jagakarsa', 'Jakarta Selatan', 'DKI Jakarta', 46837, 'Indonesia', 402, 12000),
(504, 'Nono', 'Nono', 'Nurohmat', 81273849, 'Jl. Alpukat', 'Bintaro', 'Jakarta Selatan', 'DKI Jakarta', 48297, 'Indonesia', 403, 16000);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `officeCode` int(11) DEFAULT NULL,
  `reportsTo` varchar(100) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `extension` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `firstName`, `lastName`, `email`, `officeCode`, `reportsTo`, `jobTitle`, `extension`) VALUES
(401, 'Hafizah', 'Safira', 'fira@gmail.com', 302, 'Direktur', 'Manajer', 'ada'),
(402, 'Devira', 'Asha', 'asha@gmail.com', 302, 'Asisten', 'Manajer', 'tidak ada'),
(403, 'Galih', 'Briantoro', 'galih@gmail.com', 301, 'Gudang', 'Asisten', 'ada'),
(404, 'Haikal', 'Ramadhan', 'haikal@gmail.com', 303, 'Gudang', 'Asisten', 'tidak ada');

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
  `territory` varchar(20) DEFAULT NULL,
  `countryOffice` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`officeCode`, `cityOffice`, `phoneOffice`, `addressOffice1`, `addressOffice2`, `stateOffice`, `postal_code`, `territory`, `countryOffice`) VALUES
(301, 'Jakarta Barat', 81239389, 'Jl.Sudirman', 'Kebon Jeruk', 'DKI Jakarta', 48929, '20 hektar', 'Indonesia'),
(302, 'Tangerang Selatan', 82134896, 'Jl.Mangga', 'BSD', 'Banten', 46573, '10 hektar', 'Indonesia'),
(303, 'Jakarta Pusat', 813748989, 'Jl.Prambanan', 'Senayan', 'DKI Jakarta', 37493, '10 hektar', 'Indonesia'),
(304, 'Bandung', 812738378, 'Jl.Dago Atas', 'Dago', 'Jawa Barat', 36487, '25 hektar', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderNumber` int(11) DEFAULT NULL,
  `productCode` int(11) DEFAULT NULL,
  `quantityOrdered` int(11) DEFAULT NULL,
  `priceEach` int(20) DEFAULT NULL,
  `orderLineNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderNumber`, `productCode`, `quantityOrdered`, `priceEach`, `orderLineNumber`) VALUES
(601, 202, 2, 2000000, 20),
(602, 205, 1, 6500000, 22),
(603, 204, 1, 1400000, 24);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `requiredDate` date DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `customerNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderNumber`, `orderDate`, `requiredDate`, `shippedDate`, `status`, `comments`, `customerNumber`) VALUES
(601, '2022-03-24', '2022-03-25', '2022-04-12', 'bagus', 'kualitas oke', 504),
(602, '2022-03-25', '2022-03-31', '2022-04-20', 'dimodifikasi', 'tampilan bagus', 502),
(603, '2022-03-26', '2022-03-28', '2022-04-16', 'aman', 'bagus', 502);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `checkNumber` int(11) NOT NULL,
  `customerNumber` int(11) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`checkNumber`, `customerNumber`, `paymentDate`, `amount`) VALUES
(701, 504, '2022-04-26', 2000000),
(702, 503, '2022-04-28', 3600000),
(703, 502, '2022-04-30', 6500000);

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLine` int(11) NOT NULL,
  `textDescription` varchar(100) DEFAULT NULL,
  `htmlDescription` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`) VALUES
(101, 'Toyota', 'toyota.html', 'kijang.jpg'),
(102, 'Honda', 'honda.html', 'honda.jpg'),
(103, 'Nissan', 'nissan.html', 'nissan.jpg'),
(104, 'Suzuki', 'suzuki.html', 'suzuki.jpg'),
(105, 'Mitsubishi', 'mitsubishi.html', 'mitsubishi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` int(11) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productLine` int(11) DEFAULT NULL,
  `productScale` int(11) DEFAULT NULL,
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
(201, 'Kijang', 101, 4, 'astra', 'berkualitas', 20, 200000000, 1600000),
(202, 'Agya', 101, 5, 'astra', 'sporty', 15, 460000000, 3500000),
(203, 'Avanza', 101, 2, 'astra', 'simple', 100, 38000000, 120000),
(204, 'Jazz', 102, 3, 'honda', 'simple', 250, 300000000, 6100000),
(205, 'Pajero', 105, 5, 'mitsubishi', 'sporty', 10, 960000000, 8000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD KEY `orderNumber` (`orderNumber`),
  ADD KEY `productCode` (`productCode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`checkNumber`),
  ADD KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
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
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`employeeNumber`) REFERENCES `employees` (`employeeNumber`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productCode`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productLine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
