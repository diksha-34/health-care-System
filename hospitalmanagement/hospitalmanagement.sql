-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 10:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `patientid` int(100) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `gender1` varchar(100) NOT NULL,
  `doctor1` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `special` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`patientid`, `name1`, `email1`, `gender1`, `doctor1`, `date`, `time`, `city`, `special`) VALUES
(6, 'Anshu jain', 'rthj@gmail.com', 'female', 'Irene', '0558-04-23', '9:00-9:30', 'lud', 'nutritionist');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(100) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `gender1` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `specials` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `name1`, `email1`, `gender1`, `phone`, `designation`, `degree`, `specials`) VALUES
(4, 'paras sharma', 'paras2@gmail.com', 'male', '0123456788', 'Doctor', 'MBBS', 'ENT');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `name1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `patientsid` int(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender1` varchar(100) NOT NULL,
  `sample` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `ids` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `medicalid` int(100) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender1` varchar(100) NOT NULL,
  `patienttype` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`medicalid`, `name1`, `email1`, `phone`, `gender1`, `patienttype`, `issue`, `city`, `Date`) VALUES
(2, 'DIKSHA', 'rajendersharma95700@gmail.com', '06353004557', 'female', 'normal', 'Medicine', 'jallandhar', '5755-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `name1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `gender1` varchar(100) NOT NULL,
  `password1` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`name1`, `email1`, `gender1`, `password1`, `usertype`) VALUES
('sd', 'dikshavashist2007@gmail.com', 'female', 'b64d565d2e60c80519a9b6f8d6874ebde50c6bd3', 'user'),
('doctor', 'doctor@gmail.com', 'female', 'ce21e8ac8c5d52bfa4ee6e4fd4286477f05d1ba1', 'admin'),
('nidhi', 'nidhi@gmail.com', 'female', 'caa658133d58dfe94800673daba77abf7b51a174', 'user'),
('paras', 'paras2@gmail.com', 'male', 'b64d565d2e60c80519a9b6f8d6874ebde50c6bd3', 'user'),
('DIKSHA', 'rajendersharma95700@gmail.com', 'female', 'e00ed6c00294adf1b52709943d9157ed9507ae13', 'user'),
('saloni', 'saloni@gmail.com', 'female', 'da5964c8030fc1e329d6a419af2398eef1803499', 'user'),
('simar sidhu', 'simar@gmail.com', 'female', '6cc4810dfe398cf6424793e2508f70ef067585c3', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`patientid`),
  ADD UNIQUE KEY `email1` (`email1`,`special`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`ids`),
  ADD UNIQUE KEY `patientsid` (`patientsid`,`disease`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD PRIMARY KEY (`medicalid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`email1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `patientid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `ids` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `medicalid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
