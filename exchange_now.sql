-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 06:39 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exchange_now`
--
DROP DATABASE IF EXISTS exchange_now;
CREATE DATABASE IF NOT EXISTS exchange_now;
USE exchange_now;
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_NAME` varchar(30) DEFAULT NULL,
  `ADMIN_EMAIL` varchar(100) NOT NULL,
  `ADMIN_PASSWORD` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_NAME`, `ADMIN_EMAIL`, `ADMIN_PASSWORD`) VALUES
('Mahir', 'mahir123@gmail.com', '12345'),
('Nuzhat', 'nuzhat123@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `casing`
--

CREATE TABLE `casing` (
  `CASING_ID` int(20) NOT NULL,
  `CASING_NAME` varchar(30) DEFAULT NULL,
  `CASING_PRICE` int(11) DEFAULT NULL,
  `CASE_TYPE` varchar(20) DEFAULT NULL,
  `SUPPORTED_MAINBOARD_TYPE` varchar(50) DEFAULT NULL,
  `POWER_SUPPLY_BUILTIN` varchar(10) DEFAULT NULL,
  `CASING_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `casing`
--

INSERT INTO `casing` (`CASING_ID`, `CASING_NAME`, `CASING_PRICE`, `CASE_TYPE`, `SUPPORTED_MAINBOARD_TYPE`, `POWER_SUPPLY_BUILTIN`, `CASING_CATAGORY`) VALUES
(1111, 'Crown Micro', 1900, 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 'YES', 1),
(1112, 'Crown Micro', 2000, 'Mini Tower', ' Micro-ATX, Mini-ITX', 'YES', 0),
(1113, 'Delux', 1800, 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 'YES', 1),
(1114, 'Value Top', 1900, 'Mid Tower', 'ATX', 'NO', 1),
(1115, 'Value Top', 1800, 'Mid Tower', 'Micro-ATX', 'YES', 1),
(1116, 'Delux', 1500, 'Mid Tower', 'ATX', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_NAME` varchar(30) DEFAULT NULL,
  `CUST_EMAIL` varchar(100) NOT NULL,
  `CUST_PASSWORD` varchar(30) DEFAULT NULL,
  `CUST_LOCATION` varchar(30) DEFAULT NULL,
  `CUST_INTEREST` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_NAME`, `CUST_EMAIL`, `CUST_PASSWORD`, `CUST_LOCATION`, `CUST_INTEREST`) VALUES
('Mahir', 'mahir123@gmail.com', '12345', 'Rajshahi', 'Graphics Card'),
('Nuzhat', 'nuzhat123@gmail.com', '1234', 'DHAKA', 'Headphone');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `CUST_NAME` varchar(20) NOT NULL,
  `CUST_EMAIL` varchar(100) NOT NULL,
  `ORDER_DELIVER_ADDRESS` varchar(200) NOT NULL,
  `CONTACT_NUMBER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`CUST_NAME`, `CUST_EMAIL`, `ORDER_DELIVER_ADDRESS`, `CONTACT_NUMBER`) VALUES
('', '', '', ''),
('Polok', 'polok@gmail.com', 'Notunbazaar Bus Stand, Dhaka', '01234567890'),
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_history`
--

CREATE TABLE `exchange_history` (
  `Product_No` int(11) NOT NULL,
  `Client_Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Product_TYPE` varchar(30) NOT NULL,
  `Product_Descrption` varchar(500) DEFAULT NULL,
  `Pick_UP_ADDRESS` varchar(200) DEFAULT NULL,
  `Contact_Number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exchange_history`
--

INSERT INTO `exchange_history` (`Product_No`, `Client_Name`, `Email`, `Product_TYPE`, `Product_Descrption`, `Pick_UP_ADDRESS`, `Contact_Number`) VALUES
(1, 'Polok', 'polok0011@gmail.com', 'Monitor', '18 inch monitor', 'Notunbazaar Bus Stand, Dhaka', '01122334455'),
(2, 'Maria', 'maria11@gmail.com', 'headphone', 'Bluetooth Headphone', 'Mohakhali Bus Stand, Dhaka', '01234567890'),
(3, 'Mimi', 'mim1100@gmail.com', 'SSD', '128 GB Storage', 'Mohakhali Bus Stand, Dhaka', '01234567890'),
(4, 'Pavel', 'pavel123@gmail.com', 'Graphics Card', '4GB Graphics Card', 'Mirpuir', '028053104'),
(5, '', '', '', '', '', ''),
(6, 'shirsho', 'shirsho123@gmail.com', 'Monitor', '20 inch monitor', 'Notunbazaar Bus Stand, Dhaka', '01234567890'),
(7, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `graphics_card`
--

CREATE TABLE `graphics_card` (
  `GPU_ID` int(20) NOT NULL,
  `GPU_NAME` varchar(30) DEFAULT NULL,
  `GPU_PRICE` int(11) DEFAULT NULL,
  `MEMORY` int(11) DEFAULT NULL,
  `MEMORYTYPE` varchar(10) DEFAULT NULL,
  `MAX_RESOLUTION` varchar(30) DEFAULT NULL,
  `GPU_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graphics_card`
--

INSERT INTO `graphics_card` (`GPU_ID`, `GPU_NAME`, `GPU_PRICE`, `MEMORY`, `MEMORYTYPE`, `MAX_RESOLUTION`, `GPU_CATAGORY`) VALUES
(1111, 'ASUS', 5000, 2, 'DDR5', '2560x1600', 1),
(1112, 'ASUS', 6000, 2, 'GDDR5', '3840x2160', 0),
(1113, 'Gigabyte', 8000, 2, 'GDDR5', '3840x2160', 1),
(1114, 'Gigabyte', 19000, 4, 'GDDR6', '7680x4320', 1),
(1115, 'Gigabyte', 4500, 2, 'GDDR5', '4096x2160', 1),
(1116, 'MSI', 3000, 2, 'DDR2', '2560*1800', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hdd`
--

CREATE TABLE `hdd` (
  `HDD_ID` int(20) NOT NULL,
  `HDD_STORAGE` varchar(20) DEFAULT NULL,
  `HDD_PRICE` int(11) DEFAULT NULL,
  `HDD_NAME` varchar(20) DEFAULT NULL,
  `HDD_CATAGORY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hdd`
--

INSERT INTO `hdd` (`HDD_ID`, `HDD_STORAGE`, `HDD_PRICE`, `HDD_NAME`, `HDD_CATAGORY`) VALUES
(1111, '500 GB', 3200, 'Toshiba', 1),
(1112, '1TB', 3500, 'Toshiba', 1),
(1113, '1TB', 3500, 'SeaGate', 1),
(1114, '1TB', 4000, 'Toshiba', 1),
(1115, '1TB', 4200, 'SeaGate', 0),
(1116, '1TB', 2000, 'Toshiba', 0);

-- --------------------------------------------------------

--
-- Table structure for table `headphone`
--

CREATE TABLE `headphone` (
  `HP_ID` int(20) NOT NULL,
  `HP_NAME` varchar(30) DEFAULT NULL,
  `HP_PRICE` int(11) DEFAULT NULL,
  `HP_TYPE` varchar(100) DEFAULT NULL,
  `MODEL` varchar(50) DEFAULT NULL,
  `HP_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `headphone`
--

INSERT INTO `headphone` (`HP_ID`, `HP_NAME`, `HP_PRICE`, `HP_TYPE`, `MODEL`, `HP_CATAGORY`) VALUES
(1111, 'RAPOO', 2820, 'Wired Gaming Headset', 'Rapoo VPRO VH200', 1),
(1112, 'EDIFIER', 3000, 'Single Port HeadPhone', 'Edifier G2 Gaming', 1),
(1113, 'RAPOO', 4180, 'Wired USB Gaming Headset', 'Rapoo VPRO VH600', 1),
(1114, 'EDIFIER', 5320, ' Bluetooth Headphones', 'Edifier W820BT', 0),
(1115, 'HAVIT', 1125, 'Bluetooth Earphone', 'Havit i37', 1),
(1116, 'Edifier', 2500, 'Bluetooth Headphone', 'Edifier 68bhBT', 0),
(1117, 'Fantech', 2000, 'Wired Gaming ', 'Fantech HG11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `monitor`
--

CREATE TABLE `monitor` (
  `MONITOR_ID` int(20) NOT NULL,
  `MONITOR_NAME` varchar(30) DEFAULT NULL,
  `MONITOR_PRICE` int(11) DEFAULT NULL,
  `RESOLUTION` varchar(30) DEFAULT NULL,
  `INPUT_TYPE` varchar(20) DEFAULT NULL,
  `SCREEN_SIZE` double NOT NULL,
  `MONITOR_CATAGORY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitor`
--

INSERT INTO `monitor` (`MONITOR_ID`, `MONITOR_NAME`, `MONITOR_PRICE`, `RESOLUTION`, `INPUT_TYPE`, `SCREEN_SIZE`, `MONITOR_CATAGORY`) VALUES
(1111, 'ASUS', 16000, '1920x1080 (WxH) FHD', 'VGA AND HDMI', 23.5, 1),
(1112, 'HP', 7100, '1920x1080 (WxH) FHD', 'VGA', 20.7, 1),
(1113, 'HP', 6665, '1600x900 (WxH) HD', 'VGA', 18.5, 0),
(1114, 'ASUS', 7270, '1366x768 (WxH) HD', 'VGA', 19.5, 1),
(1115, 'DELL', 6190, '1366x768 (WxH) HD', 'HDMI', 18, 0),
(1116, 'HP', 2500, '1600*900(W*H)HD', 'VGA', 18, 0),
(1117, 'DELL', 2500, '1600*1200(W*H)HD', 'HDMI', 18, 0),
(1118, 'HP', 4000, '1080 * 1900', 'HDMI', 18, 0),
(1119, 'HP', 4000, '1080 * 1900', 'HDMI', 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `MTH_ID` int(20) NOT NULL,
  `MTH_NAME` varchar(30) DEFAULT NULL,
  `MTH_PRICE` int(11) DEFAULT NULL,
  `GENERATION` varchar(10) DEFAULT NULL,
  `MEMORY_TYPE` varchar(10) DEFAULT NULL,
  `MEMORY_SLOT` int(11) DEFAULT NULL,
  `MEMORY_MAX` int(11) DEFAULT NULL,
  `MTH_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`MTH_ID`, `MTH_NAME`, `MTH_PRICE`, `GENERATION`, `MEMORY_TYPE`, `MEMORY_SLOT`, `MEMORY_MAX`, `MTH_CATAGORY`) VALUES
(1111, 'Gigabyte', 8500, '8th', 'DDR4', 2, 32, 1),
(1112, 'ASUS', 11000, '8th', 'DDR4', 4, 64, 1),
(1113, 'Gigabyte', 13000, '9th', 'DDR4', 4, 64, 1),
(1114, 'ASUS', 5000, '4th', 'DDR3', 2, 16, 1),
(1115, 'Gigabyte', 5000, '4th', 'DDR3', 2, 8, 1),
(1116, 'ASUS', 2500, '8th', 'DDR3', 2, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `power_supply`
--

CREATE TABLE `power_supply` (
  `PS_ID` int(20) NOT NULL,
  `PS_NAME` varchar(30) DEFAULT NULL,
  `PS_PRICE` int(11) DEFAULT NULL,
  `WATTAGE` int(11) DEFAULT NULL,
  `MODULAR` varchar(10) DEFAULT NULL,
  `EFFICIENCY` varchar(30) DEFAULT NULL,
  `PS_CATAGORY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power_supply`
--

INSERT INTO `power_supply` (`PS_ID`, `PS_NAME`, `PS_PRICE`, `WATTAGE`, `MODULAR`, `EFFICIENCY`, `PS_CATAGORY`) VALUES
(1111, 'Cooler Master', 5800, 550, 'Non', '80 Plus Bronze Certified', 1),
(1112, 'Cooler Master', 6000, 550, 'Semi', '80 Plus Bronze Certified', 1),
(1113, 'Thermaltake', 6600, 650, 'Non', '80 Plus Bronze Certified', 1),
(1114, 'Thermaltake', 6100, 600, 'Semi', '80 Plus Bronze Certified', 0),
(1115, 'Cooler Master', 4500, 550, 'Semi', '80 Plus White Certified', 0),
(1116, 'Thermaltake', 2000, 500, 'Non', '80 Plus Bronze Certified', 0);

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE `processor` (
  `P_ID` int(20) NOT NULL,
  `P_NAME` varchar(20) DEFAULT NULL,
  `P_PRICE` int(11) DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CORE` int(11) DEFAULT NULL,
  `P_TYPE` varchar(10) DEFAULT NULL,
  `P_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`P_ID`, `P_NAME`, `P_PRICE`, `CACHE_SIZE`, `CORE`, `P_TYPE`, `P_CATAGORY`) VALUES
(1111, 'AMD', 8000, 4, 4, '3rd GEN', 1),
(1112, 'INTEL', 10000, 4, 4, '8th GEN', 1),
(1113, 'INTEL', 13000, 9, 6, '9th GEN', 1),
(1114, 'AMD', 10000, 16, 4, '3rd GEN', 1),
(1115, 'INTEL', 17000, 12, 6, '10th GEN', 0),
(1116, 'AMD', 2500, 5, 4, '10 Gen', 0),
(1117, 'AMD', 3000, 2, 2, '10 Gen', 0),
(1118, 'Intel', 3000, 10, 2, '5', 0),
(1122, '', 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `PR_NAME` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `COMMENT` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`PR_NAME`, `TYPE`, `USERNAME`, `COMMENT`) VALUES
('INTEL', 'Processor', 'Mahir', 'Cheap. Good quality. Nice. '),
('RAPOO', 'Headphone', 'Nuzhat', 'Bad. Too loud.'),
('ASUS', 'Monitor', 'Miraj', 'Good product. I bought 2nd hand but its quality is very good.'),
('HP', 'Monitor', 'Rahima', 'Good.'),
('ASUS', 'Monitor', 'Ayan', 'Very Good');

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `RAM_ID` int(20) NOT NULL,
  `RAM_NAME` varchar(30) DEFAULT NULL,
  `RAM_PRICE` int(11) DEFAULT NULL,
  `BUS_SPEED` int(11) DEFAULT NULL,
  `RAM_TYPE` varchar(10) DEFAULT NULL,
  `CAPACITY` int(11) DEFAULT NULL,
  `RAM_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`RAM_ID`, `RAM_NAME`, `RAM_PRICE`, `BUS_SPEED`, `RAM_TYPE`, `CAPACITY`, `RAM_CATAGORY`) VALUES
(1111, 'G.SKILL', 3500, 3200, 'DDR4', 2, 1),
(1112, 'COSAIR', 5000, 3200, 'DDR4', 8, 1),
(1113, 'G.SKILL', 5200, 3200, 'DDR4', 8, 1),
(1114, 'G.SKILL', 6000, 36000, 'DDR4', 8, 1),
(1115, 'COSAIR', 6000, 3200, 'DDR4', 8, 0),
(1116, 'Cosair', 2000, 3000, 'DDR3', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ssd`
--

CREATE TABLE `ssd` (
  `SSD_ID` int(20) NOT NULL,
  `SSD_STORAGE` int(11) DEFAULT NULL,
  `SSD_PRICE` int(11) DEFAULT NULL,
  `SSD_NAME` varchar(20) DEFAULT NULL,
  `SSD_CATAGORY` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ssd`
--

INSERT INTO `ssd` (`SSD_ID`, `SSD_STORAGE`, `SSD_PRICE`, `SSD_NAME`, `SSD_CATAGORY`) VALUES
(1111, 120, 2300, 'ADATA', 1),
(1112, 120, 2000, 'Transcend', 1),
(1113, 128, 2900, 'Gighabyte', 1),
(1114, 128, 3000, 'Transcend', 1),
(1115, 128, 2500, 'Gigabyte', 0),
(1116, 120, 1500, 'Transcend', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casing`
--
ALTER TABLE `casing`
  ADD PRIMARY KEY (`CASING_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_EMAIL`);

--
-- Indexes for table `exchange_history`
--
ALTER TABLE `exchange_history`
  ADD PRIMARY KEY (`Product_No`);

--
-- Indexes for table `graphics_card`
--
ALTER TABLE `graphics_card`
  ADD PRIMARY KEY (`GPU_ID`);

--
-- Indexes for table `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`HDD_ID`);

--
-- Indexes for table `headphone`
--
ALTER TABLE `headphone`
  ADD PRIMARY KEY (`HP_ID`);

--
-- Indexes for table `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`MONITOR_ID`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`MTH_ID`);

--
-- Indexes for table `power_supply`
--
ALTER TABLE `power_supply`
  ADD PRIMARY KEY (`PS_ID`);

--
-- Indexes for table `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`RAM_ID`);

--
-- Indexes for table `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`SSD_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casing`
--
ALTER TABLE `casing`
  MODIFY `CASING_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `exchange_history`
--
ALTER TABLE `exchange_history`
  MODIFY `Product_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `graphics_card`
--
ALTER TABLE `graphics_card`
  MODIFY `GPU_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `HDD_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `headphone`
--
ALTER TABLE `headphone`
  MODIFY `HP_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT for table `monitor`
--
ALTER TABLE `monitor`
  MODIFY `MONITOR_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;

--
-- AUTO_INCREMENT for table `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `MTH_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `power_supply`
--
ALTER TABLE `power_supply`
  MODIFY `PS_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `processor`
--
ALTER TABLE `processor`
  MODIFY `P_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1123;

--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `RAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `ssd`
--
ALTER TABLE `ssd`
  MODIFY `SSD_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
