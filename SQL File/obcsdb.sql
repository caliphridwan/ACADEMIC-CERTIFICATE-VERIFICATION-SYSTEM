-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 07:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obcsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-05 12:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `NameOfMother` varchar(120) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `NameOfMother`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, '794994267', '2022-12-10', 'Female', 'Garima Singh', 'Max Vaishali Ghazibad', 'Amit Singh', 'Nisha Singh', 'A 122 Heritage Apartment Vaishali Ghaziabad', 'A 122 Heritage Apartment Vaishali Ghaziabad', 1234567890, 'amit0918@gmail.com', '2023-01-05 01:38:35', 'Application approved.', 'Verified', '2023-01-06 01:11:07'),
(2, 1, '155835407', '2022-09-01', 'Male', 'Amit Kumar', 'Laxmi New Delhi', 'Atul Kumar', 'Preeti', 'J123 J block Laxmi Nagar', 'J123 J block Laxmi Nagar', 4758696958, 'atl011@test.com', '2023-01-05 01:46:19', 'Details not verified', 'Rejected', '2023-01-06 01:13:22'),
(5, 4, '205213941', '2022-12-30', 'Female', 'Arnav Singh', 'Max New Delhi', 'Rahul Singh', 'Amita Singh', 'A1232 Xyz Apartment New Delhi', 'A1232 Xyz Apartment New Delhi', 1425365874, 'tett@test.com', '2023-01-07 04:46:11', 'Details verified', 'Verified', '2023-01-07 04:47:23'),
(6, 5, '842035970', '1990-02-15', 'Male', 'Abdulkareem Ridwan Olatunde', 'Kano Nigeria', 'Olabode', 'Olawoyin', 'Kambarawa Katsina', '12293839', 9038543371, 'caliphridwan93@gmail.com', '2023-05-31 14:14:19', 'Congratulations, you have been successfully verified', 'Verified', '2023-05-31 15:34:04'),
(8, 6, '639086706', '1996-12-10', 'Female', 'Nana Aisha', 'Computer Science', 'Bayero University Kano', 'Faculty of Computing', '12, Kabuga, Gwarzo Rd.', '374840', 9052744130, 'nana@gmail.com', '2023-05-31 16:45:29', 'Successful verification', 'Verified', '2023-05-31 16:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(4, 'Amita ', 'Singh', 789412536, 'Ghaziabad UP -201017', 'f925916e2754e5e03f75dd58a5733251', '2023-01-07 04:44:43'),
(5, 'Ridwan', 'Abdulkareem', 9038543371, 'caliphridwan@gmail.com', 'a4a56fee5a7ae7f871614f2b88980c11', '2023-05-31 14:12:28'),
(6, 'Nana', 'Aisha', 9052744130, 'Bayero University Kano', 'a4a56fee5a7ae7f871614f2b88980c11', '2023-05-31 16:28:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
