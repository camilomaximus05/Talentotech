-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 04:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `environmentaldatacolombia`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'Antioquia'),
(2, 'Cundinamarca'),
(3, 'Valle del Cauca'),
(4, 'Santander'),
(5, 'Boyacá'),
(6, 'Magdalena'),
(7, 'Nariño'),
(8, 'Caldas'),
(9, 'Tolima'),
(10, 'Risaralda'),
(11, 'Huila'),
(12, 'Cesar'),
(13, 'La Guajira'),
(14, 'Meta'),
(15, 'Quindío');

-- --------------------------------------------------------

--
-- Table structure for table `measurements`
--

CREATE TABLE `measurements` (
  `MeasurementID` int(11) NOT NULL,
  `StationID` int(11) NOT NULL,
  `MeasurementDate` date NOT NULL,
  `MeasurementType` varchar(50) NOT NULL,
  `Value` decimal(10,2) NOT NULL,
  `Unit` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `measurements`
--

INSERT INTO `measurements` (`MeasurementID`, `StationID`, `MeasurementDate`, `MeasurementType`, `Value`, `Unit`) VALUES
(1, 1, '2025-02-01', 'Temperature', 23.50, 'Celsius'),
(2, 1, '2025-02-01', 'PM2.5', 12.30, 'µg/m3'),
(3, 2, '2025-02-01', 'Temperature', 19.20, 'Celsius'),
(4, 3, '2025-02-01', 'Humidity', 82.50, '%'),
(5, 4, '2025-02-01', 'Wind Speed', 5.40, 'km/h'),
(6, 5, '2025-02-01', 'Rainfall', 12.80, 'mm'),
(7, 1, '2025-02-02', 'Temperature', 22.10, 'Celsius'),
(8, 1, '2025-02-02', 'PM2.5', 14.60, 'µg/m3'),
(9, 1, '2025-02-03', 'Humidity', 75.30, '%'),
(10, 2, '2025-02-02', 'Temperature', 18.50, 'Celsius'),
(11, 2, '2025-02-02', 'Rainfall', 10.20, 'mm'),
(12, 2, '2025-02-03', 'Wind Speed', 3.50, 'km/h'),
(13, 3, '2025-02-02', 'Temperature', 24.30, 'Celsius'),
(14, 3, '2025-02-02', 'PM2.5', 10.80, 'µg/m3'),
(15, 3, '2025-02-03', 'Humidity', 80.40, '%'),
(16, 4, '2025-02-02', 'Temperature', 21.00, 'Celsius'),
(17, 4, '2025-02-02', 'Wind Speed', 4.70, 'km/h'),
(18, 4, '2025-02-03', 'PM10', 20.50, 'µg/m3'),
(19, 5, '2025-02-02', 'Rainfall', 15.00, 'mm'),
(20, 5, '2025-02-02', 'Temperature', 19.80, 'Celsius'),
(21, 5, '2025-02-03', 'Humidity', 85.20, '%'),
(22, 6, '2025-02-02', 'Temperature', 28.30, 'Celsius'),
(23, 6, '2025-02-03', 'Humidity', 70.10, '%'),
(24, 7, '2025-02-02', 'PM2.5', 16.00, 'µg/m3'),
(25, 8, '2025-02-03', 'Temperature', 17.40, 'Celsius'),
(26, 9, '2025-02-02', 'Wind Speed', 6.10, 'km/h'),
(27, 10, '2025-02-03', 'Rainfall', 12.40, 'mm');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `StationID` int(11) NOT NULL,
  `StationName` varchar(100) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `Latitude` decimal(9,6) DEFAULT NULL,
  `Longitude` decimal(9,6) DEFAULT NULL,
  `Altitude` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`StationID`, `StationName`, `DepartmentID`, `Latitude`, `Longitude`, `Altitude`) VALUES
(1, 'Station A', 1, 6.251840, -75.563592, 1500),
(2, 'Station B', 2, 4.711000, -74.072100, 2600),
(3, 'Station C', 3, 3.437220, -76.522500, 1000),
(4, 'Station D', 4, 7.119349, -73.122741, 1300),
(5, 'Station E', 5, 5.544640, -73.357130, 2800),
(6, 'Station F', 1, 6.300000, -75.400000, 1450),
(7, 'Station G', 2, 4.650000, -74.090000, 2550),
(8, 'Station H', 3, 3.500000, -76.550000, 1100),
(9, 'Station I', 4, 7.120000, -73.120000, 1400),
(10, 'Station J', 5, 5.540000, -73.360000, 2850),
(11, 'Station K', 6, 11.240000, -74.200000, 10),
(12, 'Station L', 7, 1.210000, -77.270000, 2500),
(13, 'Station M', 8, 5.060000, -75.520000, 2150),
(14, 'Station N', 9, 4.450000, -75.230000, 1900),
(15, 'Station O', 10, 5.220000, -75.700000, 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `measurements`
--
ALTER TABLE `measurements`
  ADD PRIMARY KEY (`MeasurementID`),
  ADD KEY `StationID` (`StationID`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`StationID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `measurements`
--
ALTER TABLE `measurements`
  MODIFY `MeasurementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `StationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `measurements`
--
ALTER TABLE `measurements`
  ADD CONSTRAINT `measurements_ibfk_1` FOREIGN KEY (`StationID`) REFERENCES `stations` (`StationID`);

--
-- Constraints for table `stations`
--
ALTER TABLE `stations`
  ADD CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
