-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 02:40 AM
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
-- Database: `postharvest_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agricultural_officer`
--

CREATE TABLE `tbl_agricultural_officer` (
  `officerID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `zipcode` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_agricultural_officer`
--

INSERT INTO `tbl_agricultural_officer` (`officerID`, `name`, `phone`, `email`, `city`, `division`, `zipcode`) VALUES
('A0001', 'Nazmul Hossain', '01712345678', 'nazmul@gmail.com', 'Dhaka', 'Dhaka', '1205'),
('A0002', 'Faruk Khan', '01723456789', 'faruk@gmail.com', 'Chattogram', 'Chattogram', '4100'),
('A0003', 'Sharif Ahmed', '01734567890', 'sharif@gmail.com', 'Sylhet', 'Sylhet', '3100'),
('A0004', 'Habibur Rahman', '01745678901', 'habibur@gmail.com', 'Khulna', 'Khulna', '9100'),
('A0005', 'Karim Ullah', '01756789012', 'karim@gmail.com', 'Rajshahi', 'Rajshahi', '6200'),
('A0006', 'Sohail Khan', '01767890123', 'sohail@gmail.com', 'Barisal', 'Barisal', '8200'),
('A0007', 'Saiful Islam', '01778901234', 'saiful@gmail.com', 'Pabna', 'Rajshahi', '6600'),
('A0008', 'Raihan Karim', '01789012345', 'raihan@gmail.com', 'Rangpur', 'Rangpur', '5400'),
('A0009', 'Nazrul Hasan', '01790123456', 'nazrul@gmail.com', 'Mymensingh', 'Mymensingh', '2200'),
('A0010', 'Tanvir Alam', '01801234567', 'tanvir@gmail.com', 'Jessore', 'Khulna', '7400'),
('A0011', 'Jahangir Siddique', '01812345678', 'jahangir@gmail.com', 'Barisal', 'Barisal', '8201'),
('A0012', 'Fahim Khan', '01823456789', 'fahim@gmail.com', 'Dinajpur', 'Rangpur', '5200'),
('A0013', 'Sharmin Akter', '01834567890', 'sharmin@gmail.com', 'Comilla', 'Chattogram', '3500'),
('A0014', 'Karim Ahmed', '01845678901', 'karim@gmail.com', 'Sylhet', 'Sylhet', '3101'),
('A0015', 'Rafiul Islam', '01856789012', 'rafiul@gmail.com', 'Gazipur', 'Dhaka', '1702'),
('A0016', 'Arif Hossain', '01716161616', 'arif.hossain@gmail.com', 'Dhaka', 'Dhaka', '1205'),
('A0017', 'Sadiq Ahmed', '01717171717', 'sadiq.ahmed@gmail.com', 'Chattogram', 'Chattogram', '4100'),
('A0018', 'Mizanur Rahman', '01718181818', 'mizan.rahman@gmail.com', 'Sylhet', 'Sylhet', '3100'),
('A0019', 'Rafiqul Islam', '01719191919', 'rafiqul.islam@gmail.com', 'Khulna', 'Khulna', '9100'),
('A0020', 'Sabbir Khan', '01720202020', 'sabbir.khan@gmail.com', 'Rajshahi', 'Rajshahi', '6200'),
('A0021', 'Farzana Akter', '01721212121', 'farzana.akter@gmail.com', 'Barisal', 'Barisal', '8200'),
('A0022', 'Nasrin Jahan', '01722222222', 'nasrin.jahan@gmail.com', 'Pabna', 'Rajshahi', '6600'),
('A0023', 'Saif Ullah', '01723232323', 'saif.ullah@gmail.com', 'Rangpur', 'Rangpur', '5400'),
('A0024', 'Habibul Bashar', '01724242424', 'habib.bashar@gmail.com', 'Mymensingh', 'Mymensingh', '2200'),
('A0025', 'Ruhul Amin', '01725252525', 'ruhul.amin@gmail.com', 'Jessore', 'Khulna', '7400'),
('A0026', 'Zakir Hossain', '01726262626', 'zakir.hossain@gmail.com', 'Gazipur', 'Dhaka', '1702'),
('A0027', 'Mokhlesur Rahman', '01727272727', 'mokhlesur.rahman@gmail.com', 'Comilla', 'Chattogram', '3500'),
('A0028', 'Shamsur Rahman', '01728282828', 'shamsur.rahman@gmail.com', 'Dinajpur', 'Rangpur', '5200'),
('A0029', 'Rashed Khan', '01729292929', 'rashed.khan@gmail.com', 'Sylhet', 'Sylhet', '3101'),
('A0030', 'Jahidul Islam', '01730303030', 'jahidul.islam@gmail.com', 'Barisal', 'Barisal', '8201');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_batch_inspection`
--

CREATE TABLE `tbl_batch_inspection` (
  `batchID` char(5) NOT NULL,
  `inspectionRemarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_batch_inspection`
--

INSERT INTO `tbl_batch_inspection` (`batchID`, `inspectionRemarks`) VALUES
('B0001', 'Batch quality meets standards.'),
('B0002', 'Basic quality'),
('B0002', 'Minor damage to packaging detected.'),
('B0003', 'Humidity levels slightly elevated.'),
('B0004', 'Batch successfully passed inspection.'),
('B0005', 'Minor pest infestation resolved.'),
('B0006', 'Temperature within acceptable range.'),
('B0007', 'No significant issues detected.'),
('B0008', 'Batch processed with minor delays.'),
('B0009', 'Light exposure slightly higher than expected.'),
('B0010', 'Batch passed inspection with minor packaging flaws.'),
('B0011', 'Moisture levels within acceptable range.'),
('B0012', 'Batch inspection successful, no issues.'),
('B0013', 'Labels not properly aligned.'),
('B0014', 'No issues found, inspection cleared.'),
('B0015', 'Batch quality excellent.'),
('B0015', 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_factory`
--

CREATE TABLE `tbl_factory` (
  `factoryID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `zipcode` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_factory`
--

INSERT INTO `tbl_factory` (`factoryID`, `name`, `capacity`, `city`, `division`, `zipcode`) VALUES
('FCT01', 'Golden Agro Processing', 100000, 'Dhaka', 'Dhaka', '1205'),
('FCT02', 'BRAC AgroTech', 120000, 'Chattogram', 'Chattogram', '4100'),
('FCT03', 'Green Valley Foods', 80000, 'Sylhet', 'Sylhet', '3100'),
('FCT04', 'Fresh Harvest Processing', 150000, 'Khulna', 'Khulna', '9100'),
('FCT05', 'Organic Foods Ltd.', 70000, 'Rajshahi', 'Rajshahi', '6200'),
('FCT06', 'Pabna Food Industries', 90000, 'Pabna', 'Rajshahi', '6600'),
('FCT07', 'Rangpur Processing Unit', 75000, 'Rangpur', 'Rangpur', '5400'),
('FCT08', 'Jessore Agrotech', 110000, 'Jessore', 'Khulna', '7400'),
('FCT09', 'Barisal Agro Processing', 95000, 'Barisal', 'Barisal', '8200'),
('FCT10', 'Dinajpur Food Tech', 85000, 'Dinajpur', 'Rangpur', '5200'),
('FCT11', 'Gazipur Food Mills', 90000, 'Gazipur', 'Dhaka', '1702'),
('FCT12', 'Sylhet Agro Industries', 87000, 'Sylhet', 'Sylhet', '3101'),
('FCT13', 'Comilla Processing Center', 93000, 'Comilla', 'Chattogram', '3500'),
('FCT14', 'Khulna Fresh Agro', 98000, 'Khulna', 'Khulna', '9101'),
('FCT15', 'Rajshahi Organic Mills', 89000, 'Rajshahi', 'Rajshahi', '6201'),
('FCT16', 'Agro Foods Ltd.', 100000, 'Dhaka', 'Dhaka', '1206'),
('FCT17', 'Green Valley Agro', 120000, 'Chattogram', 'Chattogram', '4101'),
('FCT18', 'Sylhet Processing Plant', 95000, 'Sylhet', 'Sylhet', '3101'),
('FCT19', 'Khulna AgroTech', 105000, 'Khulna', 'Khulna', '9101'),
('FCT20', 'Rajshahi Foods Industries', 110000, 'Rajshahi', 'Rajshahi', '6201'),
('FCT21', 'Barisal Food Mills', 98000, 'Barisal', 'Barisal', '8201'),
('FCT22', 'Pabna Processing Unit', 92000, 'Pabna', 'Rajshahi', '6601'),
('FCT23', 'Rangpur Fresh Mills', 115000, 'Rangpur', 'Rangpur', '5401'),
('FCT24', 'Mymensingh AgroTech', 101000, 'Mymensingh', 'Mymensingh', '2201'),
('FCT25', 'Jessore Food Processing', 103000, 'Jessore', 'Khulna', '7401'),
('FCT26', 'Gazipur Food Industries', 118000, 'Gazipur', 'Dhaka', '1703'),
('FCT27', 'Comilla Agro Mills', 95000, 'Comilla', 'Chattogram', '3501'),
('FCT28', 'Dinajpur Agro Processing', 100000, 'Dinajpur', 'Rangpur', '5201'),
('FCT29', 'Sylhet AgroWorld', 97000, 'Sylhet', 'Sylhet', '3102'),
('FCT30', 'Barisal Food World', 99000, 'Barisal', 'Barisal', '8202');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_factory_manager`
--

CREATE TABLE `tbl_factory_manager` (
  `fmanagerID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `factoryID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_factory_manager`
--

INSERT INTO `tbl_factory_manager` (`fmanagerID`, `name`, `phone`, `email`, `factoryID`) VALUES
('FM001', 'Karim Ahmed', '01711112233', 'karim.ahmed@gmail.com', 'FCT01'),
('FM002', 'Nazrul Islam', '01722223344', 'nazrul.islam@gmail.com', 'FCT02'),
('FM003', 'Habib Rahman', '01733334455', 'habib.rahman@gmail.com', 'FCT03'),
('FM004', 'Sohail Khan', '01744445566', 'sohail.khan@gmail.com', 'FCT04'),
('FM005', 'Fahim Siddique', '01755556677', 'fahim.siddique@gmail.com', 'FCT05'),
('FM006', 'Raihan Khan', '01766667788', 'raihan.khan@gmail.com', 'FCT06'),
('FM007', 'Sharif Alam', '01777778899', 'sharif.alam@gmail.com', 'FCT07'),
('FM008', 'Nazmul Haque', '01788889900', 'nazmul.haque@gmail.com', 'FCT08'),
('FM009', 'Shahidul Islam', '01799990011', 'shahidul.islam@gmail.com', 'FCT09'),
('FM010', 'Tanvir Rahman', '01800001122', 'tanvir.rahman@gmail.com', 'FCT10'),
('FM011', 'Jahangir Alam', '01811112233', 'jahangir.alam@gmail.com', 'FCT11'),
('FM012', 'Faruk Ahmed', '01822223344', 'faruk.ahmed@gmail.com', 'FCT12'),
('FM013', 'Saiful Islam', '01833334455', 'saiful.islam@gmail.com', 'FCT13'),
('FM014', 'Habibur Rahman', '01844445566', 'habibur.rahman@gmail.com', 'FCT14'),
('FM015', 'Karim Ullah', '01855556677', 'karim.ullah@gmail.com', 'FCT15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farm`
--

CREATE TABLE `tbl_farm` (
  `farmID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ownername` varchar(255) NOT NULL,
  `sizeoffarm` int(11) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `zipcode` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_farm`
--

INSERT INTO `tbl_farm` (`farmID`, `name`, `ownername`, `sizeoffarm`, `phone`, `email`, `city`, `division`, `zipcode`) VALUES
('F0001', 'Kazi Agro Farm', 'Karim Ahmed', 100000, '01711112233', 'karim@gmail.com', 'Dhaka', 'Dhaka', '1205'),
('F0002', 'BRAC Agro Farm', 'Nazrul Islam', 125000, '01722223344', 'nazrul@gmail.com', 'Chattogram', 'Chattogram', '4100'),
('F0003', 'Green Harvest Farm', 'Habib Rahman', 150000, '01733334455', 'habib@gmail.com', 'Sylhet', 'Sylhet', '3100'),
('F0004', 'Fresh Valley Farm', 'Sohail Khan', 200000, '01744445566', 'sohail@gmail.com', 'Khulna', 'Khulna', '9100'),
('F0005', 'Organic Harvest', 'Fahim Siddique', 175000, '01755556677', 'fahim@gmail.com', 'Rajshahi', 'Rajshahi', '6200'),
('F0006', 'AgroGreen Fields', 'Raihan Khan', 130000, '01766667788', 'raihan@gmail.com', 'Barisal', 'Barisal', '8200'),
('F0007', 'Pabna Agro Industries', 'Sharif Alam', 160000, '01777778899', 'sharif@gmail.com', 'Pabna', 'Rajshahi', '6600'),
('F0008', 'Rangpur Crops', 'Nazmul Haque', 120000, '01788889900', 'nazmul@gmail.com', 'Rangpur', 'Rangpur', '5400'),
('F0009', 'Golden Fields', 'Shahidul Islam', 140000, '01799990011', 'shahidul@gmail.com', 'Mymensingh', 'Mymensingh', '2200'),
('F0010', 'Jessore Harvest', 'Tanvir Rahman', 185000, '01800001122', 'tanvir@gmail.com', 'Jessore', 'Khulna', '7400'),
('F0011', 'Barisal Agro Farm', 'Jahangir Alam', 195000, '01811112233', 'jahangir@gmail.com', 'Barisal', 'Barisal', '8201'),
('F0012', 'Dinajpur Green', 'Faruk Ahmed', 110000, '01822223344', 'faruk@gmail.com', 'Dinajpur', 'Rangpur', '5200'),
('F0013', 'Comilla Fresh', 'Saiful Islam', 145000, '01833334455', 'saiful@gmail.com', 'Comilla', 'Chattogram', '3500'),
('F0014', 'Sylhet Crops', 'Habibur Rahman', 155000, '01844445566', 'habibur@gmail.com', 'Sylhet', 'Sylhet', '3101'),
('F0015', 'Gazipur Organic', 'Karim Ullah', 170000, '01855556677', 'karim@gmail.com', 'Gazipur', 'Dhaka', '1702'),
('F0016', 'Kamal Agro Farm', 'Kamal Hossain', 100000, '01716161616', 'kamal.farm@gmail.com', 'Dhaka', 'Dhaka', '1206'),
('F0017', 'Chattogram Agro Fields', 'Rashed Ahmed', 120000, '01717171717', 'rashed.agro@gmail.com', 'Chattogram', 'Chattogram', '4101'),
('F0018', 'Sylhet Green Harvest', 'Nafis Rahman', 95000, '01718181818', 'nafis.green@gmail.com', 'Sylhet', 'Sylhet', '3101'),
('F0019', 'Golden Harvest Farm', 'Shahidul Islam', 105000, '01719191919', 'shahid.harvest@gmail.com', 'Khulna', 'Khulna', '9101'),
('F0020', 'Rajshahi Agro Industries', 'Nazrul Islam', 110000, '01720202020', 'nazrul.agro@gmail.com', 'Rajshahi', 'Rajshahi', '6201'),
('F0021', 'Barisal Organic Farm', 'Jahangir Alam', 98000, '01721212121', 'jahangir.organic@gmail.com', 'Barisal', 'Barisal', '8201'),
('F0022', 'Pabna Greenfield', 'Fahim Ullah', 92000, '01722222222', 'fahim.green@gmail.com', 'Pabna', 'Rajshahi', '6601'),
('F0023', 'Rangpur Fresh Produce', 'Tanvir Rahman', 115000, '01723232323', 'tanvir.fresh@gmail.com', 'Rangpur', 'Rangpur', '5401'),
('F0024', 'Mymensingh Crops Ltd.', 'Rafiqul Islam', 101000, '01724242424', 'rafiqul.crops@gmail.com', 'Mymensingh', 'Mymensingh', '2201'),
('F0025', 'Jessore Agro Fields', 'Sabbir Khan', 103000, '01725252525', 'sabbir.agro@gmail.com', 'Jessore', 'Khulna', '7401'),
('F0026', 'Gazipur Organic Land', 'Nasrin Jahan', 118000, '01726262626', 'nasrin.land@gmail.com', 'Gazipur', 'Dhaka', '1703'),
('F0027', 'Comilla Fresh Harvest', 'Saif Ullah', 95000, '01727272727', 'saif.harvest@gmail.com', 'Comilla', 'Chattogram', '3501'),
('F0028', 'Dinajpur Greenfields', 'Shamsur Rahman', 100000, '01728282828', 'shamsur.greenfields@gmail.com', 'Dinajpur', 'Rangpur', '5201'),
('F0029', 'Sylhet Fresh Produce', 'Mokhlesur Rahman', 97000, '01729292929', 'mokhlesur.produce@gmail.com', 'Sylhet', 'Sylhet', '3102'),
('F0030', 'Barisal Agro World', 'Jahidul Islam', 99000, '01730303030', 'jahidul.agro@gmail.com', 'Barisal', 'Barisal', '8202');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harvest_batch`
--

CREATE TABLE `tbl_harvest_batch` (
  `batchID` char(5) NOT NULL,
  `agriculturalOfficerID` char(5) NOT NULL,
  `productID` char(5) NOT NULL,
  `farmID` char(5) NOT NULL,
  `storageID` char(5) NOT NULL,
  `processID` char(5) NOT NULL,
  `transportID` char(5) NOT NULL,
  `harvestedAmount` int(11) NOT NULL,
  `harvestedDate` date NOT NULL,
  `transportLoadAmount` int(11) DEFAULT NULL,
  `transportLoadTime` datetime DEFAULT NULL,
  `transportUnloadAmount` int(11) DEFAULT NULL,
  `transportLoadEndTime` datetime DEFAULT NULL,
  `storedInitialAmount` int(11) DEFAULT NULL,
  `storedInitialTime` datetime DEFAULT NULL,
  `storedFinalAmount` int(11) DEFAULT NULL,
  `storedEndTime` datetime DEFAULT NULL,
  `processedInitialAmount` int(11) DEFAULT NULL,
  `processedInitialTime` datetime DEFAULT NULL,
  `processedFinalAmount` int(11) DEFAULT NULL,
  `processedFinalTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_harvest_batch`
--

INSERT INTO `tbl_harvest_batch` (`batchID`, `agriculturalOfficerID`, `productID`, `farmID`, `storageID`, `processID`, `transportID`, `harvestedAmount`, `harvestedDate`, `transportLoadAmount`, `transportLoadTime`, `transportUnloadAmount`, `transportLoadEndTime`, `storedInitialAmount`, `storedInitialTime`, `storedFinalAmount`, `storedEndTime`, `processedInitialAmount`, `processedInitialTime`, `processedFinalAmount`, `processedFinalTime`) VALUES
('B0001', 'A0001', 'P0001', 'F0001', 'S001', 'PP001', 'T001', 50000, '2024-12-01', 49000, '2024-12-02 08:00:00', 48000, '2024-12-02 18:00:00', 47000, '2024-12-03 08:00:00', 46000, '2024-12-03 18:00:00', 45000, '2024-12-04 08:00:00', 44000, '2024-12-04 18:00:00'),
('B0002', 'A0002', 'P0002', 'F0002', 'S002', 'PP002', 'T002', 70000, '2024-12-02', 69000, '2024-12-03 08:00:00', 68000, '2024-12-03 18:00:00', 67000, '2024-12-21 10:00:00', 66000, '2024-12-04 18:00:00', 65000, '2024-12-05 08:00:00', 64000, '2024-12-05 18:00:00'),
('B0003', 'A0003', 'P0003', 'F0003', 'S003', 'PP003', 'T003', 60000, '2024-12-03', 59000, '2024-12-04 08:00:00', 58000, '2024-12-04 18:00:00', 57000, '2024-12-05 08:00:00', 56000, '2024-12-05 18:00:00', 55000, '2024-12-06 08:00:00', 54000, '2024-12-06 18:00:00'),
('B0004', 'A0004', 'P0004', 'F0004', 'S004', 'PP004', 'T004', 80000, '2024-12-04', 79000, '2024-12-05 08:00:00', 78000, '2024-12-05 18:00:00', 77000, '2024-12-06 08:00:00', 76000, '2024-12-06 18:00:00', 75000, '2024-12-07 08:00:00', 74000, '2024-12-07 18:00:00'),
('B0005', 'A0005', 'P0005', 'F0005', 'S005', 'PP005', 'T005', 55000, '2024-12-05', 54000, '2024-12-06 08:00:00', 53000, '2024-12-06 18:00:00', 52000, '2024-12-07 08:00:00', 51000, '2024-12-07 18:00:00', 50000, '2024-12-08 08:00:00', 49000, '2024-12-08 18:00:00'),
('B0006', 'A0006', 'P0006', 'F0006', 'S006', 'PP006', 'T006', 65000, '2024-12-06', 64000, '2024-12-07 08:00:00', 63000, '2024-12-07 18:00:00', 62000, '2024-12-08 08:00:00', 61000, '2024-12-08 18:00:00', 60000, '2024-12-09 08:00:00', 59000, '2024-12-09 18:00:00'),
('B0007', 'A0007', 'P0007', 'F0007', 'S007', 'PP007', 'T007', 75000, '2024-12-07', 74000, '2024-12-08 08:00:00', 73000, '2024-12-08 18:00:00', 72000, '2024-12-09 08:00:00', 71000, '2024-12-09 18:00:00', 70000, '2024-12-10 08:00:00', 69000, '2024-12-10 18:00:00'),
('B0008', 'A0008', 'P0008', 'F0008', 'S008', 'PP008', 'T008', 80000, '2024-12-08', 79000, '2024-12-09 08:00:00', 78000, '2024-12-09 18:00:00', 77000, '2024-12-10 08:00:00', 76000, '2024-12-10 18:00:00', 75000, '2024-12-11 08:00:00', 74000, '2024-12-11 18:00:00'),
('B0009', 'A0009', 'P0009', 'F0009', 'S009', 'PP009', 'T009', 70000, '2024-12-09', 69000, '2024-12-10 08:00:00', 68000, '2024-12-10 18:00:00', 67000, '2024-12-11 08:00:00', 66000, '2024-12-11 18:00:00', 65000, '2024-12-12 08:00:00', 64000, '2024-12-12 18:00:00'),
('B0010', 'A0010', 'P0010', 'F0010', 'S010', 'PP010', 'T010', 90000, '2024-12-10', 89000, '2024-12-11 08:00:00', 88000, '2024-12-11 18:00:00', 87000, '2024-12-12 08:00:00', 86000, '2024-12-12 18:00:00', 85000, '2024-12-13 08:00:00', 84000, '2024-12-13 18:00:00'),
('B0011', 'A0011', 'P0011', 'F0011', 'S011', 'PP011', 'T011', 65000, '2024-12-11', 64000, '2024-12-12 08:00:00', 63000, '2024-12-12 18:00:00', 62000, '2024-12-13 08:00:00', 61000, '2024-12-13 18:00:00', 60000, '2024-12-14 08:00:00', 59000, '2024-12-14 18:00:00'),
('B0012', 'A0012', 'P0012', 'F0012', 'S012', 'PP012', 'T012', 75000, '2024-12-12', 74000, '2024-12-13 08:00:00', 73000, '2024-12-13 18:00:00', 72000, '2024-12-14 08:00:00', 71000, '2024-12-14 18:00:00', 70000, '2024-12-15 08:00:00', 69000, '2024-12-15 18:00:00'),
('B0013', 'A0013', 'P0013', 'F0013', 'S013', 'PP013', 'T016', 80000, '2024-12-13', 234567788, '2024-12-14 08:00:00', 78000, '2024-12-14 18:00:00', 77000, '2024-12-15 08:00:00', 76000, '2024-12-15 18:00:00', 75000, '2024-12-16 08:00:00', 74000, '2024-12-16 18:00:00'),
('B0014', 'A0014', 'P0014', 'F0014', 'S014', 'PP014', 'T014', 60000, '2024-12-14', 200, '2024-12-15 08:00:00', 58000, '2024-12-15 18:00:00', 57000, '2024-12-16 08:00:00', 56000, '2024-12-16 18:00:00', 55000, '2024-12-17 08:00:00', 54000, '2024-12-17 18:00:00'),
('B0015', 'A0015', 'P0015', 'F0015', 'S017', 'PP015', 'T015', 85000, '2024-12-15', 84000, '2024-12-16 08:00:00', 83000, '2024-12-16 18:00:00', 300, '2024-12-21 00:53:56', 81000, '2024-12-17 18:00:00', 80000, '2024-12-18 08:00:00', 79000, '2024-12-18 18:00:00'),
('B0016', 'A0016', 'P0016', 'F0016', 'S030', 'PP016', 'T016', 15000, '2024-12-01', NULL, NULL, NULL, NULL, 1000, '2024-12-20 22:46:50', NULL, NULL, NULL, NULL, NULL, NULL),
('B0017', 'A0017', 'P0017', 'F0017', 'S017', 'PP017', 'T017', 20000, '2024-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0018', 'A0018', 'P0018', 'F0018', 'S018', 'PP018', 'T018', 18000, '2024-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0019', 'A0019', 'P0019', 'F0019', 'S019', 'PP019', 'T019', 22000, '2024-12-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0020', 'A0020', 'P0020', 'F0020', 'S020', 'PP020', 'T020', 19000, '2024-12-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0021', 'A0021', 'P0021', 'F0021', 'S021', 'PP021', 'T021', 21000, '2024-12-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0022', 'A0022', 'P0022', 'F0022', 'S022', 'PP022', 'T022', 23000, '2024-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0023', 'A0023', 'P0023', 'F0023', 'S023', 'PP023', 'T023', 24000, '2024-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0024', 'A0024', 'P0024', 'F0024', 'S024', 'PP024', 'T024', 26000, '2024-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0025', 'A0025', 'P0025', 'F0025', 'S025', 'PP025', 'T025', 27000, '2024-12-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0026', 'A0026', 'P0026', 'F0026', 'S026', 'PP026', 'T026', 28000, '2024-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0027', 'A0027', 'P0027', 'F0027', 'S027', 'PP027', 'T027', 30000, '2024-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0028', 'A0028', 'P0028', 'F0028', 'S028', 'PP028', 'T028', 31000, '2024-12-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0029', 'A0029', 'P0029', 'F0029', 'S029', 'PP029', 'T029', 32000, '2024-12-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('B0030', 'A0030', 'P0030', 'F0030', 'S030', 'PP030', 'T030', 33000, '2024-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harvest_batch_issue`
--

CREATE TABLE `tbl_harvest_batch_issue` (
  `batchID` char(5) NOT NULL,
  `stageIssue` varchar(255) NOT NULL,
  `issueFromTime` datetime NOT NULL,
  `issueToTime` datetime NOT NULL,
  `issueProblem` varchar(200) NOT NULL,
  `issueStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_harvest_batch_issue`
--

INSERT INTO `tbl_harvest_batch_issue` (`batchID`, `stageIssue`, `issueFromTime`, `issueToTime`, `issueProblem`, `issueStatus`) VALUES
('B0001', 'Shipment', '2024-12-01 09:00:00', '2024-12-01 10:30:00', 'Delay due to traffic', 'Resolved'),
('B0001', 'Storage', '2024-12-01 08:00:00', '2024-12-01 10:00:00', 'Humidity too high', 'Resolved'),
('B0002', 'Processing', '2024-12-02 11:00:00', '2024-12-02 12:30:00', 'Machinery breakdown', 'Pending'),
('B0002', 'Shipment', '2024-12-02 11:00:00', '2024-12-02 12:15:00', 'Vehicle breakdown', 'Pending'),
('B0003', 'Shipment', '2024-12-03 08:30:00', '2024-12-03 10:00:00', 'Improper loading of goods', 'Resolved'),
('B0003', 'Transportation', '2024-12-03 09:30:00', '2024-12-03 11:00:00', 'Vehicle delay', 'Resolved'),
('B0004', 'Shipment', '2024-12-04 07:45:00', '2024-12-04 09:00:00', 'Route blocked by construction', 'Resolved'),
('B0004', 'Storage', '2024-12-04 08:00:00', '2024-12-04 10:30:00', 'Pest infestation', 'Resolved'),
('B0005', 'Processing', '2024-12-05 13:00:00', '2024-12-05 14:30:00', 'Power outage', 'Pending'),
('B0005', 'Shipment', '2024-12-05 10:00:00', '2024-12-05 11:30:00', 'Driver unavailable', 'Pending'),
('B0006', 'Shipment', '2024-12-06 08:15:00', '2024-12-06 09:45:00', 'Inadequate cooling in transport', 'Resolved'),
('B0006', 'Transportation', '2024-12-06 08:00:00', '2024-12-06 09:00:00', 'Overloading', 'Resolved'),
('B0007', 'Shipment', '2024-12-07 09:30:00', '2024-12-07 11:00:00', 'Delivery location confusion', 'Resolved'),
('B0007', 'Storage', '2024-12-07 10:00:00', '2024-12-07 12:00:00', 'Temperature instability', 'Resolved'),
('B0008', 'Processing', '2024-12-08 08:30:00', '2024-12-08 10:30:00', 'Equipment maintenance', 'Pending'),
('B0008', 'Shipment', '2024-12-08 07:00:00', '2024-12-08 08:30:00', 'Fuel shortage during transit', 'Pending'),
('B0009', 'Shipment', '2024-12-09 06:45:00', '2024-12-09 08:15:00', 'Packaging damage during loading', 'Resolved'),
('B0009', 'Transportation', '2024-12-09 09:00:00', '2024-12-09 11:30:00', 'Route blockage', 'Resolved'),
('B0010', 'Shipment', '2024-12-10 08:00:00', '2024-12-10 09:30:00', 'Late departure from source', 'Pending'),
('B0010', 'Storage', '2024-12-10 07:00:00', '2024-12-10 08:30:00', 'Humidity too low', 'Resolved'),
('B0011', 'Processing', '2024-12-11 12:00:00', '2024-12-11 14:00:00', 'Worker shortage', 'Pending'),
('B0012', 'Transportation', '2024-12-12 08:00:00', '2024-12-12 10:00:00', 'Vehicle maintenance', 'Resolved'),
('B0013', 'Processing', '2024-12-18 09:34:00', '2024-12-18 23:36:00', 'Electricity Shutdown', 'Resolved'),
('B0013', 'Shipment', '2024-12-12 05:59:00', '2024-12-12 06:00:00', 'Traffic Delay', 'Resolved'),
('B0013', 'Storage', '2024-12-13 11:00:00', '2024-12-13 13:00:00', 'Cooling system failure', 'Resolved'),
('B0013', 'Storage', '2024-12-19 05:54:00', '2024-12-19 19:56:00', 'The Cooling Machine broke', 'Resolved'),
('B0014', 'Processing', '2024-12-14 09:00:00', '2024-12-14 11:00:00', 'Equipment overheating', 'Pending'),
('B0015', 'Transportation', '2024-12-15 10:00:00', '2024-12-15 11:30:00', 'Fuel shortage', 'Resolved'),
('B0016', 'Storage', '2024-12-02 08:00:00', '2024-12-02 10:00:00', 'Humidity too high', 'Pending'),
('B0017', 'Storage', '2024-12-03 09:00:00', '2024-12-03 11:30:00', 'Temperature fluctuation', 'Pending'),
('B0018', 'Storage', '2024-12-04 07:00:00', '2024-12-04 09:00:00', 'Pest infestation detected', 'Pending'),
('B0019', 'Storage', '2024-12-05 10:30:00', '2024-12-05 12:00:00', 'Cooling system failure', 'Pending'),
('B0020', 'Storage', '2024-12-06 08:00:00', '2024-12-06 10:30:00', 'Storage space shortage', 'Pending'),
('B0021', 'Storage', '2024-12-07 09:15:00', '2024-12-07 11:00:00', 'Incorrect stacking of goods', 'Pending'),
('B0022', 'Storage', '2024-12-08 07:30:00', '2024-12-08 09:45:00', 'High moisture levels', 'Pending'),
('B0023', 'Storage', '2024-12-09 08:45:00', '2024-12-09 11:15:00', 'Damaged storage container', 'Pending'),
('B0024', 'Storage', '2024-12-10 09:00:00', '2024-12-10 11:30:00', 'Overcrowding in storage area', 'Pending'),
('B0025', 'Storage', '2024-12-11 08:00:00', '2024-12-11 10:30:00', 'Temperature too low', 'Resolved'),
('B0026', 'Transportation', '2024-12-12 07:00:00', '2024-12-12 09:00:00', 'Vehicle breakdown during transit', 'Pending'),
('B0027', 'Transportation', '2024-12-13 08:30:00', '2024-12-13 10:15:00', 'Fuel shortage', 'Pending'),
('B0028', 'Transportation', '2024-12-14 09:00:00', '2024-12-14 11:00:00', 'Delayed departure from source', 'Pending'),
('B0029', 'Transportation', '2024-12-15 06:45:00', '2024-12-15 08:30:00', 'Road blockage due to construction', 'Pending'),
('B0030', 'Transportation', '2024-12-16 07:30:00', '2024-12-16 09:30:00', 'Packaging damage during loading', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packaging_process`
--

CREATE TABLE `tbl_packaging_process` (
  `processID` char(5) NOT NULL,
  `factoryID` char(5) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime DEFAULT NULL,
  `processType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_packaging_process`
--

INSERT INTO `tbl_packaging_process` (`processID`, `factoryID`, `startTime`, `endTime`, `processType`) VALUES
('PP001', 'FCT01', '2024-12-01 08:00:00', '2024-12-01 18:00:00', 'Packaging'),
('PP002', 'FCT02', '2024-12-02 08:00:00', '2024-12-02 18:00:00', 'Sealing'),
('PP003', 'FCT03', '2024-12-03 08:00:00', '2024-12-03 18:00:00', 'Labeling'),
('PP004', 'FCT04', '2024-12-04 08:00:00', '2024-12-04 18:00:00', 'Inspection'),
('PP005', 'FCT05', '2024-12-05 08:00:00', '2024-12-05 18:00:00', 'Packaging'),
('PP006', 'FCT06', '2024-12-06 08:00:00', '2024-12-06 18:00:00', 'Sealing'),
('PP007', 'FCT07', '2024-12-07 08:00:00', '2024-12-07 18:00:00', 'Labeling'),
('PP008', 'FCT08', '2024-12-08 08:00:00', '2024-12-08 18:00:00', 'Inspection'),
('PP009', 'FCT09', '2024-12-09 08:00:00', '2024-12-09 18:00:00', 'Packaging'),
('PP010', 'FCT10', '2024-12-10 08:00:00', '2024-12-10 18:00:00', 'Sealing'),
('PP011', 'FCT11', '2024-12-11 08:00:00', '2024-12-11 18:00:00', 'Labeling'),
('PP012', 'FCT12', '2024-12-12 08:00:00', '2024-12-12 18:00:00', 'Inspection'),
('PP013', 'FCT13', '2024-12-13 08:00:00', '2024-12-13 18:00:00', 'Packaging'),
('PP014', 'FCT14', '2024-12-14 08:00:00', '2024-12-14 18:00:00', 'Sealing'),
('PP015', 'FCT15', '2024-12-15 08:00:00', '2024-12-15 18:00:00', 'Labeling'),
('PP016', 'FCT16', '2024-12-01 08:00:00', '2024-12-01 18:00:00', 'Packaging'),
('PP017', 'FCT17', '2024-12-02 08:00:00', '2024-12-02 18:00:00', 'Sealing'),
('PP018', 'FCT18', '2024-12-03 08:00:00', '2024-12-03 18:00:00', 'Labeling'),
('PP019', 'FCT19', '2024-12-04 08:00:00', '2024-12-04 18:00:00', 'Inspection'),
('PP020', 'FCT20', '2024-12-05 08:00:00', '2024-12-05 18:00:00', 'Packaging'),
('PP021', 'FCT21', '2024-12-06 08:00:00', '2024-12-06 18:00:00', 'Sealing'),
('PP022', 'FCT22', '2024-12-07 08:00:00', '2024-12-07 18:00:00', 'Labeling'),
('PP023', 'FCT23', '2024-12-08 08:00:00', '2024-12-08 18:00:00', 'Inspection'),
('PP024', 'FCT24', '2024-12-09 08:00:00', '2024-12-09 18:00:00', 'Packaging'),
('PP025', 'FCT25', '2024-12-10 08:00:00', '2024-12-10 18:00:00', 'Sealing'),
('PP026', 'FCT26', '2024-12-11 08:00:00', '2024-12-11 18:00:00', 'Labeling'),
('PP027', 'FCT27', '2024-12-12 08:00:00', '2024-12-12 18:00:00', 'Inspection'),
('PP028', 'FCT28', '2024-12-13 08:00:00', '2024-12-13 18:00:00', 'Packaging'),
('PP029', 'FCT29', '2024-12-14 08:00:00', '2024-12-14 18:00:00', 'Sealing'),
('PP030', 'FCT30', '2024-12-15 08:00:00', '2024-12-15 18:00:00', 'Labeling');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packed_product`
--

CREATE TABLE `tbl_packed_product` (
  `batchID` char(5) NOT NULL,
  `storageID` char(5) NOT NULL,
  `processID` char(5) NOT NULL,
  `shipmentID` char(5) NOT NULL,
  `packagingProcessInitialAmount` int(11) NOT NULL,
  `packagingProcessStartTime` datetime NOT NULL,
  `packagingProcessFinalAmount` int(11) NOT NULL,
  `packagingProcessEndTime` datetime NOT NULL,
  `packedQuality` varchar(255) NOT NULL,
  `packedConditions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_packed_product`
--

INSERT INTO `tbl_packed_product` (`batchID`, `storageID`, `processID`, `shipmentID`, `packagingProcessInitialAmount`, `packagingProcessStartTime`, `packagingProcessFinalAmount`, `packagingProcessEndTime`, `packedQuality`, `packedConditions`) VALUES
('B0001', 'S001', 'PP001', 'SH001', 50000, '2024-12-01 08:00:00', 49000, '2024-12-01 18:00:00', 'High Quality', 'Stored at optimal temperature'),
('B0002', 'S002', 'PP002', 'SH002', 70000, '2024-12-02 08:00:00', 69000, '2024-12-02 18:00:00', 'Medium Quality', 'Humidity controlled'),
('B0003', 'S003', 'PP003', 'SH003', 60000, '2024-12-03 08:00:00', 59000, '2024-12-03 18:00:00', 'High Quality', 'Temperature stabilized'),
('B0004', 'S004', 'PP004', 'SH004', 80000, '2024-12-04 08:00:00', 79000, '2024-12-04 18:00:00', 'Low Quality', 'Minor defects in packaging'),
('B0005', 'S005', 'PP005', 'SH005', 55000, '2024-12-05 08:00:00', 54000, '2024-12-05 18:00:00', 'High Quality', 'Perfect storage conditions'),
('B0006', 'S006', 'PP006', 'SH006', 65000, '2024-12-06 08:00:00', 64000, '2024-12-06 18:00:00', 'Medium Quality', 'Minor humidity issues'),
('B0007', 'S007', 'PP007', 'SH007', 75000, '2024-12-07 08:00:00', 74000, '2024-12-07 18:00:00', 'High Quality', 'Optimal storage conditions'),
('B0008', 'S008', 'PP008', 'SH008', 80000, '2024-12-08 08:00:00', 79000, '2024-12-08 18:00:00', 'Medium Quality', 'Light exposure monitored'),
('B0009', 'S009', 'PP009', 'SH009', 70000, '2024-12-09 08:00:00', 69000, '2024-12-09 18:00:00', 'High Quality', 'Stored in cool environment'),
('B0010', 'S010', 'PP010', 'SH010', 90000, '2024-12-10 08:00:00', 89000, '2024-12-10 18:00:00', 'Low Quality', 'Packaging material defect'),
('B0011', 'S011', 'PP011', 'SH011', 65000, '2024-12-11 08:00:00', 64000, '2024-12-11 18:00:00', 'High Quality', 'Temperature stabilized'),
('B0012', 'S012', 'PP012', 'SH012', 75000, '2024-12-12 08:00:00', 74000, '2024-12-12 18:00:00', 'Medium Quality', 'Humidity controlled'),
('B0013', 'S013', 'PP013', 'SH013', 80000, '2024-12-13 08:00:00', 79000, '2024-12-13 18:00:00', 'High Quality', 'Stored at optimal conditions'),
('B0014', 'S014', 'PP014', 'SH014', 60000, '2024-12-14 08:00:00', 59000, '2024-12-14 18:00:00', 'Medium Quality', 'Pest control applied'),
('B0015', 'S015', 'PP015', 'SH015', 85000, '2024-12-15 08:00:00', 84000, '2024-12-15 18:00:00', 'High Quality', 'Perfect storage conditions');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `croptype` varchar(255) NOT NULL,
  `shelflife` int(11) NOT NULL,
  `optimalCondition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productID`, `name`, `croptype`, `shelflife`, `optimalCondition`) VALUES
('P0001', 'Rice', 'Cereal', 180, 'Low humidity, Cool'),
('P0002', 'Wheat', 'Cereal', 120, 'Dry, Cool'),
('P0003', 'Potato', 'Vegetable', 90, 'High humidity, Cool'),
('P0004', 'Tomato', 'Vegetable', 14, 'Low humidity, Cool'),
('P0005', 'Onion', 'Vegetable', 120, 'Dry, Room Temperature'),
('P0006', 'Garlic', 'Vegetable', 240, 'Dry, Cool'),
('P0007', 'Banana', 'Fruit', 7, 'Room Temperature'),
('P0008', 'Mango', 'Fruit', 14, 'Cool'),
('P0009', 'Pineapple', 'Fruit', 21, 'Cool'),
('P0010', 'Sugarcane', 'Cash Crop', 120, 'Room Temperature'),
('P0011', 'Jute', 'Fiber', 360, 'Dry'),
('P0012', 'Corn', 'Cereal', 180, 'Dry, Cool'),
('P0013', 'Chili', 'Spice', 240, 'Dry, Cool'),
('P0014', 'Tea', 'Cash Crop', 720, 'Dry, Cool'),
('P0015', 'Cotton', 'Fiber', 300, 'Dry'),
('P0016', 'Sunflower', 'Oilseed', 180, 'Low humidity, Cool storage'),
('P0017', 'Barley', 'Cereal', 120, 'Dry, Cool environment'),
('P0018', 'Cabbage', 'Vegetable', 30, 'High humidity, Cool storage'),
('P0019', 'Carrot', 'Vegetable', 60, 'Low temperature, Medium humidity'),
('P0020', 'Papaya', 'Fruit', 7, 'Room temperature'),
('P0021', 'Apple', 'Fruit', 30, 'Low temperature'),
('P0022', 'Spinach', 'Leafy Vegetable', 7, 'High humidity, Cool temperature'),
('P0023', 'Lettuce', 'Leafy Vegetable', 14, 'High humidity, Cool temperature'),
('P0024', 'Peanuts', 'Oilseed', 300, 'Dry, Cool storage'),
('P0025', 'Sugarcane', 'Cash Crop', 120, 'Room temperature'),
('P0026', 'Cucumber', 'Vegetable', 14, 'Low temperature, Medium humidity'),
('P0027', 'Strawberry', 'Fruit', 5, 'High humidity, Low temperature'),
('P0028', 'Chili', 'Spice', 240, 'Dry, Cool storage'),
('P0029', 'Cotton', 'Fiber', 300, 'Dry storage'),
('P0030', 'Jute', 'Fiber', 360, 'Dry storage');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retail_shop`
--

CREATE TABLE `tbl_retail_shop` (
  `retailShopID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shipmentID` char(5) NOT NULL,
  `city` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `zipcode` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_retail_shop`
--

INSERT INTO `tbl_retail_shop` (`retailShopID`, `name`, `shipmentID`, `city`, `division`, `zipcode`) VALUES
('RS001', 'Fresh Mart Dhaka', 'SH001', 'Dhaka', 'Dhaka', '1205'),
('RS002', 'Chattogram Grocery', 'SH002', 'Chattogram', 'Chattogram', '4100'),
('RS003', 'Sylhet Super Store', 'SH003', 'Sylhet', 'Sylhet', '3100'),
('RS004', 'Khulna Fresh Produce', 'SH004', 'Khulna', 'Khulna', '9100'),
('RS005', 'Rajshahi Organic', 'SH005', 'Rajshahi', 'Rajshahi', '6200'),
('RS006', 'Barisal Bazaar', 'SH006', 'Barisal', 'Barisal', '8200'),
('RS007', 'Pabna Retail Hub', 'SH007', 'Pabna', 'Rajshahi', '6600'),
('RS008', 'Gazipur Grocery Store', 'SH008', 'Gazipur', 'Dhaka', '1702'),
('RS009', 'Rangpur Fresh Mart', 'SH009', 'Rangpur', 'Rangpur', '5400'),
('RS010', 'Mymensingh Farmers Market', 'SH010', 'Mymensingh', 'Mymensingh', '2200'),
('RS011', 'Jessore Daily Needs', 'SH011', 'Jessore', 'Khulna', '7400'),
('RS012', 'Comilla Green Store', 'SH012', 'Comilla', 'Chattogram', '3500'),
('RS013', 'Dinajpur Grocery', 'SH013', 'Dinajpur', 'Rangpur', '5200'),
('RS014', 'Barisal Farmers Market', 'SH014', 'Barisal', 'Barisal', '8201'),
('RS015', 'Golden Agro Mart', 'SH015', 'Pabna', 'Rajshahi', '6601');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retail_shop_owner`
--

CREATE TABLE `tbl_retail_shop_owner` (
  `ownerID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `retailShopID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_retail_shop_owner`
--

INSERT INTO `tbl_retail_shop_owner` (`ownerID`, `name`, `phone`, `email`, `retailShopID`) VALUES
('RO001', 'Sajid Karim', '01711111111', 'sajid.karim@gmail.com', 'RS001'),
('RO002', 'Hasan Ahmed', '01722222222', 'hasan.ahmed@gmail.com', 'RS002'),
('RO003', 'Rafiul Islam', '01733333333', 'rafiul.islam@gmail.com', 'RS003'),
('RO004', 'Mahmud Rahman', '01744444444', 'mahmud.rahman@gmail.com', 'RS004'),
('RO005', 'Salim Khan', '01755555555', 'salim.khan@gmail.com', 'RS005'),
('RO006', 'Fahim Siddique', '01766666666', 'fahim.siddique@gmail.com', 'RS006'),
('RO007', 'Rashid Karim', '01777777777', 'rashid.karim@gmail.com', 'RS007'),
('RO008', 'Sharmin Akter', '01788888888', 'sharmin.akter@gmail.com', 'RS008'),
('RO009', 'Habibur Rahman', '01799999999', 'habibur.rahman@gmail.com', 'RS009'),
('RO010', 'Tanvir Ahmed', '01811111111', 'tanvir.ahmed@gmail.com', 'RS010'),
('RO011', 'Faruk Islam', '01822222222', 'faruk.islam@gmail.com', 'RS011'),
('RO012', 'Nazmul Hasan', '01833333333', 'nazmul.hasan@gmail.com', 'RS012'),
('RO013', 'Karim Ullah', '01844444444', 'karim.ullah@gmail.com', 'RS013'),
('RO014', 'Saiful Islam', '01855555555', 'saiful.islam@gmail.com', 'RS014'),
('RO015', 'Mahfuz Rahman', '01866666666', 'mahfuz.rahman@gmail.com', 'RS015');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sensor_reading`
--

CREATE TABLE `tbl_sensor_reading` (
  `batchID` char(5) NOT NULL,
  `sensorStageIdentify` varchar(10) NOT NULL,
  `sensorReadTemp` int(11) NOT NULL,
  `sensorReadTime` datetime NOT NULL,
  `sensorReadHumidity` int(11) NOT NULL,
  `sensorReadLight` varchar(50) NOT NULL,
  `sensorReadMotion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sensor_reading`
--

INSERT INTO `tbl_sensor_reading` (`batchID`, `sensorStageIdentify`, `sensorReadTemp`, `sensorReadTime`, `sensorReadHumidity`, `sensorReadLight`, `sensorReadMotion`) VALUES
('B0001', 'Storage', 10, '2024-12-01 08:00:00', 65, 'Medium', 'None'),
('B0002', 'Processing', 12, '2024-12-02 10:00:00', 60, 'Low', 'Active'),
('B0003', 'Storage', 8, '2024-12-03 12:00:00', 70, 'High', 'None'),
('B0004', 'Transporta', 15, '2024-12-04 09:00:00', 50, 'Medium', 'Active'),
('B0005', 'Storage', 10, '2024-12-05 14:00:00', 55, 'Low', 'None'),
('B0006', 'Processing', 11, '2024-12-06 08:00:00', 60, 'Medium', 'Active'),
('B0007', 'Transporta', 16, '2024-12-07 11:00:00', 40, 'High', 'Active'),
('B0008', 'Storage', 9, '2024-12-08 15:00:00', 65, 'Medium', 'None'),
('B0009', 'Processing', 14, '2024-12-09 13:00:00', 50, 'Low', 'Active'),
('B0010', 'Transporta', 17, '2024-12-10 10:00:00', 55, 'Medium', 'Active'),
('B0011', 'Storage', 12, '2024-12-11 09:00:00', 60, 'High', 'None'),
('B0012', 'Processing', 13, '2024-12-12 12:00:00', 45, 'Low', 'Active'),
('B0013', 'Transporta', 18, '2024-12-13 14:00:00', 40, 'Medium', 'Active'),
('B0014', 'Storage', 10, '2024-12-14 08:00:00', 50, 'Low', 'None'),
('B0015', 'Processing', 14, '2024-12-15 10:00:00', 55, 'Medium', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipment`
--

CREATE TABLE `tbl_shipment` (
  `shipmentID` char(5) NOT NULL,
  `transportID` char(5) NOT NULL,
  `shipmentManagerID` char(5) NOT NULL,
  `loadAmount` int(11) NOT NULL,
  `loadTime` datetime NOT NULL,
  `unloadAmount` int(11) DEFAULT NULL,
  `unloadTime` datetime DEFAULT NULL,
  `shipmentDate` date NOT NULL,
  `deliveryDate` date DEFAULT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shipment`
--

INSERT INTO `tbl_shipment` (`shipmentID`, `transportID`, `shipmentManagerID`, `loadAmount`, `loadTime`, `unloadAmount`, `unloadTime`, `shipmentDate`, `deliveryDate`, `Status`) VALUES
('SH001', 'T001', 'SM001', 45000, '2024-12-02 08:00:00', 44000, '2024-12-02 18:00:00', '2024-12-02', '2024-12-03', 'Completed'),
('SH002', 'T002', 'SM002', 68000, '2024-12-03 08:00:00', 67000, '2024-12-03 18:00:00', '2024-12-03', '2024-12-04', 'Completed'),
('SH003', 'T003', 'SM003', 56000, '2024-12-04 08:00:00', 55000, '2024-12-04 18:00:00', '2024-12-04', '2024-12-05', 'Completed'),
('SH004', 'T004', 'SM004', 77000, '2024-12-05 08:00:00', 76000, '2024-12-05 18:00:00', '2024-12-05', '2024-12-06', 'Pending'),
('SH005', 'T005', 'SM005', 52000, '2024-12-06 08:00:00', 51000, '2024-12-06 18:00:00', '2024-12-06', '2024-12-07', 'Completed'),
('SH006', 'T006', 'SM006', 62000, '2024-12-07 08:00:00', 61000, '2024-12-07 18:00:00', '2024-12-07', '2024-12-08', 'Pending'),
('SH007', 'T007', 'SM007', 72000, '2024-12-08 08:00:00', 71000, '2024-12-08 18:00:00', '2024-12-08', '2024-12-09', 'Pending'),
('SH008', 'T008', 'SM008', 76000, '2024-12-09 08:00:00', 75000, '2024-12-09 18:00:00', '2024-12-09', '2024-12-10', 'Pending'),
('SH009', 'T009', 'SM009', 67000, '2024-12-10 08:00:00', 66000, '2024-12-10 18:00:00', '2024-12-10', '2024-12-11', 'Pending'),
('SH010', 'T010', 'SM010', 86000, '2024-12-11 08:00:00', 85000, '2024-12-11 18:00:00', '2024-12-11', '2024-12-12', 'Pending'),
('SH011', 'T011', 'SM011', 61000, '2024-12-12 08:00:00', 60000, '2024-12-12 18:00:00', '2024-12-12', '2024-12-13', 'Pending'),
('SH012', 'T012', 'SM012', 71000, '2024-12-13 08:00:00', 70000, '2024-12-13 18:00:00', '2024-12-13', '2024-12-14', 'Pending'),
('SH013', 'T013', 'SM013', 77000, '2024-12-14 08:00:00', 76000, '2024-12-14 18:00:00', '2024-12-14', '2024-12-15', 'Pending'),
('SH014', 'T014', 'SM014', 57000, '2024-12-15 08:00:00', 56000, '2024-12-15 18:00:00', '2024-12-15', '2024-12-16', 'Pending'),
('SH015', 'T015', 'SM015', 81000, '2024-12-16 08:00:00', 80000, '2024-12-16 18:00:00', '2024-12-16', '2024-12-17', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipment_manager`
--

CREATE TABLE `tbl_shipment_manager` (
  `shipmentManagerID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shipment_manager`
--

INSERT INTO `tbl_shipment_manager` (`shipmentManagerID`, `name`, `phone`, `email`) VALUES
('SM001', 'Rashid Ahmed', '01712345678', 'rashid@gmail.com'),
('SM002', 'Faruk Khan', '01723456789', 'faruk@gmail.com'),
('SM003', 'Sohail Rahman', '01734567890', 'sohail@gmail.com'),
('SM004', 'Nazmul Haque', '01745678901', 'nazmul@gmail.com'),
('SM005', 'Habib Ullah', '01756789012', 'habib@gmail.com'),
('SM006', 'Fahim Islam', '01767890123', 'fahim@gmail.com'),
('SM007', 'Tanvir Siddique', '01778901234', 'tanvir@gmail.com'),
('SM008', 'Karim Rahman', '01789012345', 'karim@gmail.com'),
('SM009', 'Jahangir Khan', '01790123456', 'jahangir@gmail.com'),
('SM010', 'Imran Hossain', '01801234567', 'imran@gmail.com'),
('SM011', 'Saiful Alam', '01812345678', 'saiful@gmail.com'),
('SM012', 'Sharif Hasan', '01823456789', 'sharif@gmail.com'),
('SM013', 'Raihan Ahmed', '01834567890', 'raihan@gmail.com'),
('SM014', 'Shakib Islam', '01845678901', 'shakib@gmail.com'),
('SM015', 'Tariqul Islam', '01856789012', 'tariqul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_shipment`
--

CREATE TABLE `tbl_shop_shipment` (
  `shopShipmentID` char(5) NOT NULL,
  `shipmentID` char(5) NOT NULL,
  `retailShopID` char(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliveryTime` datetime NOT NULL,
  `actions` varchar(255) NOT NULL,
  `feedback` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shop_shipment`
--

INSERT INTO `tbl_shop_shipment` (`shopShipmentID`, `shipmentID`, `retailShopID`, `status`, `deliveryTime`, `actions`, `feedback`) VALUES
('SS001', 'SH001', 'RS001', 'Delivered', '2024-12-03 10:00:00', 'Confirmed Receipt', 'Products received in good condition'),
('SS002', 'SH002', 'RS002', 'Delivered', '2024-12-04 11:00:00', 'Confirmed Receipt', NULL),
('SS003', 'SH003', 'RS003', 'Delivered', '2024-12-05 12:00:00', 'Confirmed Receipt', 'Receieved Product As Asked'),
('SS004', 'SH004', 'RS004', 'Delivered', '2024-12-06 09:00:00', 'Confirmed Receipt', 'Delivery was late but acceptable'),
('SS005', 'SH005', 'RS005', 'Delivered', '2024-12-07 08:00:00', 'Confirmed Receipt', 'Received In good Condition'),
('SS006', 'SH006', 'RS006', 'Delivered', '2024-12-08 14:00:00', 'Confirmed Receipt', 'Quality was satisfactory'),
('SS007', 'SH007', 'RS007', 'Delivered', '2024-12-09 15:00:00', 'Confirmed Receipt', NULL),
('SS008', 'SH008', 'RS008', 'Pending', '2024-12-10 16:00:00', '', NULL),
('SS009', 'SH009', 'RS009', 'Delivered', '2024-12-11 13:00:00', 'Confirmed Receipt', 'Excellent service'),
('SS010', 'SH010', 'RS010', 'Delivered', '2024-12-12 17:00:00', '', NULL),
('SS011', 'SH011', 'RS011', 'Pending', '2024-12-13 18:00:00', '', NULL),
('SS012', 'SH012', 'RS012', 'Delivered', '2024-12-14 19:00:00', '', NULL),
('SS013', 'SH013', 'RS013', 'Delivered', '2024-12-15 20:00:00', '', NULL),
('SS014', 'SH014', 'RS014', 'Pending', '2024-12-16 21:00:00', '', NULL),
('SS015', 'SH015', 'RS015', 'Delivered', '2024-12-17 22:00:00', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storage`
--

CREATE TABLE `tbl_storage` (
  `storageID` char(5) NOT NULL,
  `capacity` int(11) NOT NULL,
  `currentOccupancy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_storage`
--

INSERT INTO `tbl_storage` (`storageID`, `capacity`, `currentOccupancy`) VALUES
('S001', 200000, 150000),
('S002', 180000, 140000),
('S003', 220000, 180000),
('S004', 250000, 200000),
('S005', 190000, 160000),
('S006', 210000, 170000),
('S007', 230000, 190000),
('S008', 240000, 200000),
('S009', 260000, 210000),
('S010', 270000, 220000),
('S011', 280000, 230000),
('S012', 300000, 250000),
('S013', 310000, 260000),
('S014', 320000, 270000),
('S015', 330000, 280000),
('S016', 200000, 1500),
('S017', 180000, 1400),
('S018', 220000, 1800),
('S019', 250000, 2000),
('S020', 190000, 1600),
('S021', 210000, 1700),
('S022', 230000, 1900),
('S023', 240000, 2000),
('S024', 260000, 2100),
('S025', 270000, 2200),
('S026', 280000, 2300),
('S027', 300000, 2500),
('S028', 310000, 2600),
('S029', 320000, 2700),
('S030', 330000, 2800);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storage_manager`
--

CREATE TABLE `tbl_storage_manager` (
  `managerID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `storageID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_storage_manager`
--

INSERT INTO `tbl_storage_manager` (`managerID`, `name`, `phone`, `email`, `storageID`) VALUES
('SM001', 'Rashid Ahmed', '01712345678', 'rashid@gmail.com', 'S001'),
('SM002', 'Faruk Khan', '01723456789', 'faruk@gmail.com', 'S002'),
('SM003', 'Sohail Rahman', '01734567890', 'sohail@gmail.com', 'S003'),
('SM004', 'Nazmul Haque', '01745678901', 'nazmul@gmail.com', 'S004'),
('SM005', 'Habib Ullah', '01756789012', 'habib@gmail.com', 'S005'),
('SM006', 'Fahim Islam', '01767890123', 'fahim@gmail.com', 'S006'),
('SM007', 'Tanvir Siddique', '01778901234', 'tanvir@gmail.com', 'S007'),
('SM008', 'Karim Rahman', '01789012345', 'karim@gmail.com', 'S008'),
('SM009', 'Jahangir Khan', '01790123456', 'jahangir@gmail.com', 'S009'),
('SM010', 'Imran Hossain', '01801234567', 'imran@gmail.com', 'S010'),
('SM011', 'Saiful Alam', '01812345678', 'saiful@gmail.com', 'S011'),
('SM012', 'Sharif Hasan', '01823456789', 'sharif@gmail.com', 'S012'),
('SM013', 'Raihan Ahmed', '01834567890', 'raihan@gmail.com', 'S013'),
('SM014', 'Shakib Islam', '01845678901', 'shakib@gmail.com', 'S014'),
('SM015', 'Tariqul Islam', '01856789012', 'tariqul@gmail.com', 'S015'),
('SM016', 'Rashid Ahmed', '01716161616', 'rashid.ahmed@gmail.com', 'S016'),
('SM017', 'Faruk Khan', '01717171717', 'faruk.khan@gmail.com', 'S017'),
('SM018', 'Sohail Rahman', '01718181818', 'sohail.rahman@gmail.com', 'S018'),
('SM019', 'Nazmul Haque', '01719191919', 'nazmul.haque@gmail.com', 'S019'),
('SM020', 'Habib Ullah', '01720202020', 'habib.ullah@gmail.com', 'S020'),
('SM021', 'Fahim Islam', '01721212121', 'fahim.islam@gmail.com', 'S021'),
('SM022', 'Tanvir Siddique', '01722222222', 'tanvir.siddique@gmail.com', 'S022'),
('SM023', 'Karim Rahman', '01723232323', 'karim.rahman@gmail.com', 'S023'),
('SM024', 'Jahangir Khan', '01724242424', 'jahangir.khan@gmail.com', 'S024'),
('SM025', 'Imran Hossain', '01725252525', 'imran.hossain@gmail.com', 'S025'),
('SM026', 'Saiful Alam', '01726262626', 'saiful.alam@gmail.com', 'S026'),
('SM027', 'Sharif Hasan', '01727272727', 'sharif.hasan@gmail.com', 'S027'),
('SM028', 'Raihan Ahmed', '01728282828', 'raihan.ahmed@gmail.com', 'S028'),
('SM029', 'Shakib Islam', '01729292929', 'shakib.islam@gmail.com', 'S029'),
('SM030', 'Tariqul Islam', '01730303030', 'tariqul.islam@gmail.com', 'S030');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transport`
--

CREATE TABLE `tbl_transport` (
  `transportID` char(5) NOT NULL,
  `driverName` varchar(255) NOT NULL,
  `vehicleType` varchar(255) NOT NULL,
  `vehicleDetails` varchar(255) NOT NULL,
  `transportManagerID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transport`
--

INSERT INTO `tbl_transport` (`transportID`, `driverName`, `vehicleType`, `vehicleDetails`, `transportManagerID`) VALUES
('T001', 'Shahid Khan', 'Truck', 'Ashok Leyland 14T', 'TM001'),
('T002', 'Nazrul Islam', 'Van', 'Isuzu NPR 6T', 'TM002'),
('T003', 'Habibur Rahman', 'Truck', 'Tata LPT 7.5T', 'TM003'),
('T004', 'Sharif Alam', 'Truck', 'Eicher Pro 10T', 'TM004'),
('T005', 'Fahim Siddique', 'Pickup', 'Toyota Hilux 1T', 'TM005'),
('T006', 'Karim Ullah', 'Van', 'Ford Transit 5T', 'TM006'),
('T007', 'Saiful Islam', 'Truck', 'Mahindra Blazo 8T', 'TM007'),
('T008', 'Raihan Khan', 'Pickup', 'Isuzu D-Max 2T', 'TM008'),
('T009', 'Nazmul Hossain', 'Truck', 'Ashok Leyland 10T', 'TM009'),
('T010', 'Habib Khan', 'Van', 'Suzuki Carry 1.5T', 'TM010'),
('T011', 'Shahidul Islam', 'Pickup', 'Nissan Navara 1.5T', 'TM011'),
('T012', 'Tanvir Alam', 'Truck', 'Tata Ultra 9T', 'TM012'),
('T013', 'Nazrul Hasan', 'Van', 'Mercedes Sprinter 3T', 'TM013'),
('T014', 'Sharmin Akter', 'Truck', 'Eicher Pro 6T', 'TM014'),
('T015', 'Karim Rahman', 'Pickup', 'Toyota Tacoma 1T', 'TM015'),
('T016', 'Rashid Khan', 'Truck', 'Ashok Leyland 12T', 'TM016'),
('T017', 'Habibur Rahman', 'Van', 'Isuzu NPR 5T', 'TM017'),
('T018', 'Sharif Ahmed', 'Truck', 'Tata LPT 7.5T', 'TM018'),
('T019', 'Sohail Islam', 'Truck', 'Eicher Pro 10T', 'TM019'),
('T020', 'Fahim Siddique', 'Pickup', 'Toyota Hilux 1.5T', 'TM020'),
('T021', 'Karim Ullah', 'Van', 'Ford Transit 4T', 'TM021'),
('T022', 'Saiful Islam', 'Truck', 'Mahindra Blazo 9T', 'TM022'),
('T023', 'Raihan Hossain', 'Pickup', 'Isuzu D-Max 2T', 'TM023'),
('T024', 'Nazmul Hossain', 'Truck', 'Ashok Leyland 15T', 'TM024'),
('T025', 'Habib Khan', 'Van', 'Suzuki Carry 1.5T', 'TM025'),
('T026', 'Shahidul Islam', 'Pickup', 'Nissan Navara 2T', 'TM026'),
('T027', 'Tanvir Alam', 'Truck', 'Tata Ultra 10T', 'TM027'),
('T028', 'Nazrul Hasan', 'Van', 'Mercedes Sprinter 3.5T', 'TM028'),
('T029', 'Sharmin Akter', 'Truck', 'Eicher Pro 6T', 'TM029'),
('T030', 'Karim Rahman', 'Pickup', 'Toyota Tacoma 1.2T', 'TM030');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transport_manager`
--

CREATE TABLE `tbl_transport_manager` (
  `managerID` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transport_manager`
--

INSERT INTO `tbl_transport_manager` (`managerID`, `name`, `phone`, `email`) VALUES
('TM001', 'Rashid Ahmed', '01712345678', 'rashid@gmail.com'),
('TM002', 'Faruk Khan', '01723456789', 'faruk@gmail.com'),
('TM003', 'Sohail Rahman', '01734567890', 'sohail@gmail.com'),
('TM004', 'Nazmul Haque', '01745678901', 'nazmul@gmail.com'),
('TM005', 'Habib Ullah', '01756789012', 'habib@gmail.com'),
('TM006', 'Fahim Islam', '01767890123', 'fahim@gmail.com'),
('TM007', 'Tanvir Siddique', '01778901234', 'tanvir@gmail.com'),
('TM008', 'Karim Rahman', '01789012345', 'karim@gmail.com'),
('TM009', 'Jahangir Khan', '01790123456', 'jahangir@gmail.com'),
('TM010', 'Imran Hossain', '01801234567', 'imran@gmail.com'),
('TM011', 'Saiful Alam', '01812345678', 'saiful@gmail.com'),
('TM012', 'Sharif Hasan', '01823456789', 'sharif@gmail.com'),
('TM013', 'Raihan Ahmed', '01834567890', 'raihan@gmail.com'),
('TM014', 'Shakib Islam', '01845678901', 'shakib@gmail.com'),
('TM015', 'Tariqul Islam', '01856789012', 'tariqul@gmail.com'),
('TM016', 'Arif Hossain', '01716161616', 'arif.hossain@gmail.com'),
('TM017', 'Sadiq Ahmed', '01717171717', 'sadiq.ahmed@gmail.com'),
('TM018', 'Mizanur Rahman', '01718181818', 'mizan.rahman@gmail.com'),
('TM019', 'Rafiqul Islam', '01719191919', 'rafiqul.islam@gmail.com'),
('TM020', 'Sabbir Khan', '01720202020', 'sabbir.khan@gmail.com'),
('TM021', 'Farzana Akter', '01721212121', 'farzana.akter@gmail.com'),
('TM022', 'Nasrin Jahan', '01722222222', 'nasrin.jahan@gmail.com'),
('TM023', 'Saif Ullah', '01723232323', 'saif.ullah@gmail.com'),
('TM024', 'Habibul Bashar', '01724242424', 'habib.bashar@gmail.com'),
('TM025', 'Ruhul Amin', '01725252525', 'ruhul.amin@gmail.com'),
('TM026', 'Zakir Hossain', '01726262626', 'zakir.hossain@gmail.com'),
('TM027', 'Mokhlesur Rahman', '01727272727', 'mokhlesur.rahman@gmail.com'),
('TM028', 'Shamsur Rahman', '01728282828', 'shamsur.rahman@gmail.com'),
('TM029', 'Rashed Khan', '01729292929', 'rashed.khan@gmail.com'),
('TM030', 'Jahidul Islam', '01730303030', 'jahidul.islam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_type` enum('Agricultural Officer','Transport Manager','Storage Manager','Shipment Manager','Factory Manager','Retail Shop Owner') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `user_type`, `phone`, `email`, `city`, `division`, `zip_code`, `created_at`, `updated_at`, `password`) VALUES
(2, 'Nick', 'Factory Manager', '01712349876', 'nick@gmail.com', 'Dhaka', 'Dhaka', '1201', '2024-12-20 19:41:39', '2024-12-20 19:41:39', '$2y$10$9Wa9eKzSbxBUEWpGwphns.6.qJXlZUSE/8BfWCRw51HWetop8njRq'),
(5, 'Rick', 'Agricultural Officer', '01712349878', 'rick@gmail.com', 'Dhaka', 'Dhaka', '1201', '2024-12-20 20:12:33', '2024-12-20 20:12:33', '$2y$10$tAi4QQo3ToL1q2Y9ktMAYuxePnifsAQIeggRwjpuYfL7zpXcNseNm'),
(7, 'Nabil', '', '01712349875', 'nabil@gmail.com', 'Dhaka', 'Dhaka', '1201', '2024-12-20 22:14:08', '2024-12-20 22:14:08', '$2y$10$zC4jCNItJOuTJhWf5I4m6e.YILKnQpEvhHQdS/5qrFaYKBkLc0E72'),
(8, 'Nabil Ullah', '', '01712349873', 'nabilullah@gmail.com', 'Dhaka', 'Dhaka', '1201', '2024-12-20 23:47:21', '2024-12-20 23:47:21', '$2y$10$wNsRSJkfa7/CmVQZUFD/VepftWsjaaZzUSeN5AHBjcLgiCC7eUnJ2'),
(10, 'Nina', '', '01712349871', 'nina@gmail.com', 'NY', 'Noakhali', '234', '2024-12-21 00:11:04', '2024-12-21 00:12:21', '$2y$10$w.D3B.wEvnmEASIWu.oThed35w00GIlJDt/HR09X.OLFlk2bgr4W6'),
(11, 'Arafat', 'Agricultural Officer', '01712349865', 'a@gmail.com', 'Barishal', 'Barishal', '3455', '2024-12-21 00:14:01', '2024-12-21 01:07:33', '$2y$10$ZfUIfNVH8VAS4/M.N1LGq.q25pGYD3jJI2AE9PtBfgwV7XX/.X5.G'),
(12, 'Mir', 'Shipment Manager', '01712349866', 'm@gmail.com', 'Barishal', 'Barishal', '3454', '2024-12-21 01:37:22', '2024-12-21 01:37:22', '$2y$10$eNcYZixrxpRgrYkO.WebAeOQ7uZjWks1AXkj9jo/kTAd5wBHVyzbC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agricultural_officer`
--
ALTER TABLE `tbl_agricultural_officer`
  ADD PRIMARY KEY (`officerID`);

--
-- Indexes for table `tbl_batch_inspection`
--
ALTER TABLE `tbl_batch_inspection`
  ADD PRIMARY KEY (`batchID`,`inspectionRemarks`);

--
-- Indexes for table `tbl_factory`
--
ALTER TABLE `tbl_factory`
  ADD PRIMARY KEY (`factoryID`);

--
-- Indexes for table `tbl_factory_manager`
--
ALTER TABLE `tbl_factory_manager`
  ADD PRIMARY KEY (`fmanagerID`),
  ADD KEY `factoryID` (`factoryID`);

--
-- Indexes for table `tbl_farm`
--
ALTER TABLE `tbl_farm`
  ADD PRIMARY KEY (`farmID`);

--
-- Indexes for table `tbl_harvest_batch`
--
ALTER TABLE `tbl_harvest_batch`
  ADD PRIMARY KEY (`batchID`),
  ADD KEY `agriculturalOfficerID` (`agriculturalOfficerID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `farmID` (`farmID`),
  ADD KEY `storageID` (`storageID`),
  ADD KEY `processID` (`processID`),
  ADD KEY `transportID` (`transportID`);

--
-- Indexes for table `tbl_harvest_batch_issue`
--
ALTER TABLE `tbl_harvest_batch_issue`
  ADD PRIMARY KEY (`batchID`,`stageIssue`,`issueFromTime`,`issueToTime`,`issueProblem`,`issueStatus`);

--
-- Indexes for table `tbl_packaging_process`
--
ALTER TABLE `tbl_packaging_process`
  ADD PRIMARY KEY (`processID`),
  ADD KEY `factoryID` (`factoryID`);

--
-- Indexes for table `tbl_packed_product`
--
ALTER TABLE `tbl_packed_product`
  ADD PRIMARY KEY (`batchID`,`storageID`,`processID`,`shipmentID`),
  ADD KEY `storageID` (`storageID`),
  ADD KEY `processID` (`processID`),
  ADD KEY `shipmentID` (`shipmentID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tbl_retail_shop`
--
ALTER TABLE `tbl_retail_shop`
  ADD PRIMARY KEY (`retailShopID`),
  ADD KEY `shipmentID` (`shipmentID`);

--
-- Indexes for table `tbl_retail_shop_owner`
--
ALTER TABLE `tbl_retail_shop_owner`
  ADD PRIMARY KEY (`ownerID`),
  ADD KEY `retailShopID` (`retailShopID`);

--
-- Indexes for table `tbl_sensor_reading`
--
ALTER TABLE `tbl_sensor_reading`
  ADD PRIMARY KEY (`batchID`,`sensorStageIdentify`,`sensorReadTime`,`sensorReadTemp`,`sensorReadHumidity`,`sensorReadLight`,`sensorReadMotion`);

--
-- Indexes for table `tbl_shipment`
--
ALTER TABLE `tbl_shipment`
  ADD PRIMARY KEY (`shipmentID`),
  ADD KEY `transportID` (`transportID`),
  ADD KEY `shipmentManagerID` (`shipmentManagerID`);

--
-- Indexes for table `tbl_shipment_manager`
--
ALTER TABLE `tbl_shipment_manager`
  ADD PRIMARY KEY (`shipmentManagerID`);

--
-- Indexes for table `tbl_shop_shipment`
--
ALTER TABLE `tbl_shop_shipment`
  ADD PRIMARY KEY (`shopShipmentID`),
  ADD KEY `shipmentID` (`shipmentID`),
  ADD KEY `retailShopID` (`retailShopID`);

--
-- Indexes for table `tbl_storage`
--
ALTER TABLE `tbl_storage`
  ADD PRIMARY KEY (`storageID`);

--
-- Indexes for table `tbl_storage_manager`
--
ALTER TABLE `tbl_storage_manager`
  ADD PRIMARY KEY (`managerID`),
  ADD KEY `storageID` (`storageID`);

--
-- Indexes for table `tbl_transport`
--
ALTER TABLE `tbl_transport`
  ADD PRIMARY KEY (`transportID`),
  ADD KEY `transportManagerID` (`transportManagerID`);

--
-- Indexes for table `tbl_transport_manager`
--
ALTER TABLE `tbl_transport_manager`
  ADD PRIMARY KEY (`managerID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_batch_inspection`
--
ALTER TABLE `tbl_batch_inspection`
  ADD CONSTRAINT `tbl_batch_inspection_ibfk_1` FOREIGN KEY (`batchID`) REFERENCES `tbl_harvest_batch` (`batchID`);

--
-- Constraints for table `tbl_factory_manager`
--
ALTER TABLE `tbl_factory_manager`
  ADD CONSTRAINT `tbl_factory_manager_ibfk_1` FOREIGN KEY (`factoryID`) REFERENCES `tbl_factory` (`factoryID`);

--
-- Constraints for table `tbl_harvest_batch`
--
ALTER TABLE `tbl_harvest_batch`
  ADD CONSTRAINT `tbl_harvest_batch_ibfk_1` FOREIGN KEY (`agriculturalOfficerID`) REFERENCES `tbl_agricultural_officer` (`officerID`),
  ADD CONSTRAINT `tbl_harvest_batch_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `tbl_product` (`productID`),
  ADD CONSTRAINT `tbl_harvest_batch_ibfk_3` FOREIGN KEY (`farmID`) REFERENCES `tbl_farm` (`farmID`),
  ADD CONSTRAINT `tbl_harvest_batch_ibfk_4` FOREIGN KEY (`storageID`) REFERENCES `tbl_storage` (`storageID`),
  ADD CONSTRAINT `tbl_harvest_batch_ibfk_5` FOREIGN KEY (`processID`) REFERENCES `tbl_packaging_process` (`processID`),
  ADD CONSTRAINT `tbl_harvest_batch_ibfk_6` FOREIGN KEY (`transportID`) REFERENCES `tbl_transport` (`transportID`);

--
-- Constraints for table `tbl_harvest_batch_issue`
--
ALTER TABLE `tbl_harvest_batch_issue`
  ADD CONSTRAINT `tbl_harvest_batch_issue_ibfk_1` FOREIGN KEY (`batchID`) REFERENCES `tbl_harvest_batch` (`batchID`);

--
-- Constraints for table `tbl_packaging_process`
--
ALTER TABLE `tbl_packaging_process`
  ADD CONSTRAINT `tbl_packaging_process_ibfk_1` FOREIGN KEY (`factoryID`) REFERENCES `tbl_factory` (`factoryID`);

--
-- Constraints for table `tbl_packed_product`
--
ALTER TABLE `tbl_packed_product`
  ADD CONSTRAINT `tbl_packed_product_ibfk_1` FOREIGN KEY (`batchID`) REFERENCES `tbl_harvest_batch` (`batchID`),
  ADD CONSTRAINT `tbl_packed_product_ibfk_2` FOREIGN KEY (`storageID`) REFERENCES `tbl_storage` (`storageID`),
  ADD CONSTRAINT `tbl_packed_product_ibfk_3` FOREIGN KEY (`processID`) REFERENCES `tbl_packaging_process` (`processID`),
  ADD CONSTRAINT `tbl_packed_product_ibfk_4` FOREIGN KEY (`shipmentID`) REFERENCES `tbl_shipment` (`shipmentID`);

--
-- Constraints for table `tbl_retail_shop`
--
ALTER TABLE `tbl_retail_shop`
  ADD CONSTRAINT `tbl_retail_shop_ibfk_1` FOREIGN KEY (`shipmentID`) REFERENCES `tbl_shipment` (`shipmentID`);

--
-- Constraints for table `tbl_retail_shop_owner`
--
ALTER TABLE `tbl_retail_shop_owner`
  ADD CONSTRAINT `tbl_retail_shop_owner_ibfk_1` FOREIGN KEY (`retailShopID`) REFERENCES `tbl_retail_shop` (`retailShopID`);

--
-- Constraints for table `tbl_sensor_reading`
--
ALTER TABLE `tbl_sensor_reading`
  ADD CONSTRAINT `tbl_sensor_reading_ibfk_1` FOREIGN KEY (`batchID`) REFERENCES `tbl_harvest_batch` (`batchID`);

--
-- Constraints for table `tbl_shipment`
--
ALTER TABLE `tbl_shipment`
  ADD CONSTRAINT `tbl_shipment_ibfk_1` FOREIGN KEY (`transportID`) REFERENCES `tbl_transport` (`transportID`),
  ADD CONSTRAINT `tbl_shipment_ibfk_2` FOREIGN KEY (`shipmentManagerID`) REFERENCES `tbl_shipment_manager` (`shipmentManagerID`);

--
-- Constraints for table `tbl_shop_shipment`
--
ALTER TABLE `tbl_shop_shipment`
  ADD CONSTRAINT `tbl_shop_shipment_ibfk_1` FOREIGN KEY (`shipmentID`) REFERENCES `tbl_shipment` (`shipmentID`),
  ADD CONSTRAINT `tbl_shop_shipment_ibfk_2` FOREIGN KEY (`retailShopID`) REFERENCES `tbl_retail_shop` (`retailShopID`);

--
-- Constraints for table `tbl_storage_manager`
--
ALTER TABLE `tbl_storage_manager`
  ADD CONSTRAINT `tbl_storage_manager_ibfk_1` FOREIGN KEY (`storageID`) REFERENCES `tbl_storage` (`storageID`);

--
-- Constraints for table `tbl_transport`
--
ALTER TABLE `tbl_transport`
  ADD CONSTRAINT `tbl_transport_ibfk_1` FOREIGN KEY (`transportManagerID`) REFERENCES `tbl_transport_manager` (`managerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
