-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2018 at 12:10 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2018-10-07 15:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06'),
(4, 'anik@gmail.com', 1, '12', '12', 'n', 2, '2018-10-10 15:54:04'),
(5, 'anik@gmail.com', 6, 'ad', 'asf', 'asd', 1, '2018-10-10 15:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Boxy', '2018-10-07 15:16:54', '2018-10-10 15:50:29'),
(9, 'Alto', '2018-10-13 20:13:42', NULL),
(11, 'Suzuki', '2018-10-13 20:26:56', NULL),
(12, 'Dzire', '2018-10-13 20:37:46', NULL),
(13, 'Ertiga', '2018-10-13 20:43:43', NULL),
(14, 'Mircrobus', '2018-10-13 20:49:22', NULL),
(15, 'Wagonr', '2018-10-13 20:56:12', NULL),
(16, 'Swift', '2018-10-13 21:00:55', NULL),
(17, 'Ambulance', '2018-10-13 21:04:11', NULL),
(18, 'Covered van', '2018-10-13 21:09:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Dhaka,Bangladesh																							', 'contact@gmail.com', '01928527900');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'Jobayed hasan', 'Jobayed@gmail.com', '01928527900', 'anik', '2018-10-07 15:14:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to&nbsp;</font><b style=\"font-size: 1em;\"><span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Bismillah\r\nauto car rent and buy service</span></b><span style=\"font-size: 1em; text-indent: -0.25in;\">&nbsp;web-based system is use to the car rent and\r\ncar buying order from any place in Bangladesh. In our life maximum time we need\r\nto car rent for daily life. And sometimes we need to car for buy. At this\r\nmoment, our country people are most interested for buying car. We need to\r\ndifferent type of car for buy or rent for come here various type of cars for\r\ndifferent price for buy and rent. In our city life jam is the most common\r\nproblem in our life and finding the rental car is so difficult. So, I make this\r\nsystem with two category of car- buy and rent. People using this system can\r\neasily find the different type of car for buy or rent as their need. So, I\r\nconcern about this system.</span></p><p class=\"MsoListParagraph\" style=\"text-align:justify;text-indent:-.25in;\r\nline-height:200%;mso-list:l0 level1 lfo1\"><o:p></o:p></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">This web-based system is use to the car rent and\r\ncar buying order from any place in Bangladesh. In our life maximum time we need\r\nto car rent for daily life. And sometimes we need to car for buy.</span>'),
(3, 'About Us ', 'aboutus', '<p class=\"MsoListParagraph\" style=\"text-align:justify;text-indent:-.25in;\r\nline-height:200%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\">§<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]-->This system coverage the particular side likes –\r\nCustomer and driver registration from, customer comment about this system and\r\nproduct. Admin can set driver under to a car. Admin set about product details\r\nand see all customers complain and commendation. User can show all review of\r\nproduct. Also, registered user can giving review to the about of system and\r\nproduct. Admin can set the driver car and schedule and ensure valid driver\r\ndetails and driving license.<b><br clear=\"all\" style=\"mso-special-character:line-break;page-break-before:always\">\r\n</b><o:p></o:p></p>'),
(11, 'FAQs', 'faqs', '<div style=\"text-align: justify;\"><span style=\"font-size: large;\">What is the&nbsp;</span><span style=\"font-size: large; color: inherit; font-family: inherit; text-align: left;\">Bismillah </span><span style=\"font-size: large; color: inherit; font-family: inherit; text-align: left;\">auto car rent and buy service?</span><br></div><div style=\"text-align: justify;\"><span style=\"line-height: 107%; font-family: Arial, sans-serif; font-size: small;\">This web-based system is use to the car rent and\r\ncar buying order from any place in Bangladesh.</span><span style=\"font-size: large; color: inherit; font-family: inherit; text-align: left;\"><br></span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2017-06-18 07:46:05', 1),
(3, 'anik@gmail.com', 'hi', '2018-10-10 15:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj Kumar', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2017-06-26 21:02:58'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Anuj Kumar', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'New Delhi', 'New Delhi', 'New Delhi', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Anuj Kumar', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'New Delhi', 'Delhi', 'Delhi', '2017-06-17 20:03:36', '2017-06-26 19:18:14'),
(5, 'Jobayed hasan', 'jobayedhasan@gmail.com', '202cb962ac59075b964b07152d234b70', '0192852790', NULL, NULL, NULL, NULL, '2018-10-07 16:02:22', NULL),
(6, 'Jobayed hasan', 'anik@gmail.com', '202cb962ac59075b964b07152d234b70', '0192852790', NULL, NULL, NULL, NULL, '2018-10-10 15:43:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(6, 'Boxy', 8, 'This is wonderful car.', 12300, 'CNG', 2018, 8, '570e45d9dd0895bc088b4803-750-562.jpg', '570e45d9dd0895bc088b4803-750-562.jpg', '570e45d9dd0895bc088b4803-750-562.jpg', '570e45d9dd0895bc088b4803-750-562.jpg', '570e45d9dd0895bc088b4803-750-562.jpg', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 15:51:09', '2018-10-10 15:48:56'),
(7, 'New Alto40', 9, 'This awesome car for tour.', 5000, 'Petrol', 2018, 4, 'Alto1.jpg', 'Alto2.jpg', 'Alto3.jpg', 'Alto4.jpg', 'Alto5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2018-10-13 20:17:37', '2018-10-13 20:24:48'),
(8, 'Suzuki ciaz', 11, 'this provide Comfort journey.', 4500, 'Diesel', 2018, 3, 'Suzuki1.jpg', 'Suzuki2.jpg', 'Suzuki3.jpg', 'Suzuki4.jpg', 'Suzuki5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2018-10-13 20:36:35', NULL),
(9, 'Dzire-A560', 12, 'Best touring car.', 6000, 'Diesel', 2017, 5, 'Dzire1.jpg', 'Dzire2.jpg', 'Dzire3.jpg', 'Dzire4.jpg', 'Dzire5.jpg', NULL, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, '2018-10-13 20:41:41', NULL),
(10, 'Ertiga500c', 13, 'For Comfort journey .', 7000, 'CNG', 2018, 7, 'Ertiga1.jpg', 'Ertiga2.jpg', 'Ertiga3.jpg', 'Ertiga4.jpg', 'Ertiga5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2018-10-13 20:46:52', NULL),
(11, 'Mircrobus-mod12', 14, 'Best for family function use.', 5500, 'CNG', 2017, 12, 'Mircrobus5.jpg', 'Mircrobus2.jpg', 'Mircrobus1.jpg', 'Mircrobus3.jpg', 'Mircrobus4.jpg', 1, NULL, NULL, 1, NULL, 1, 1, NULL, 1, 1, 1, 1, '2018-10-13 20:54:06', NULL),
(12, 'Wagonr-110', 15, 'Touring car.', 9000, 'Diesel', 2018, 5, 'Wagonr1.jpg', 'Wagonr2.jpg', 'Wagonr3.jpg', 'Wagonr4.jpg', 'Wagonr5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2018-10-13 21:00:01', NULL),
(13, 'Swift-hot new', 16, 'Comfort journey .', 4000, 'Petrol', 2018, 5, 'Swift1.jpg', 'Swift2.jpg', 'Swift3.jpg', 'Swift4.jpg', 'Swift5.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, '2018-10-13 21:03:21', NULL),
(14, 'Mircro ambulance', 17, 'Mircro ambulance with ICO convenience.', 3000, 'Petrol', 2017, 3, 'Ambulance1.jpg', 'Ambulance2.jpg', 'Ambulance3.jpg', 'Ambulance4.jpg', 'Ambulance5.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2018-10-13 21:08:48', NULL),
(15, 'Carrier car', 18, 'Covered van using for product is delivered.', 10000, 'Petrol', 2017, 1, 'Covered van1.jpg', 'Covered van2.jpg', 'Covered van3.jpg', 'Covered van4.jpg', 'Covered van5.jpg', NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, '2018-10-13 21:15:17', '2018-10-13 21:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
