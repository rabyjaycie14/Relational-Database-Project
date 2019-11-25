-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2019 at 04:15 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `XYZ`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADDRESS`
--

CREATE TABLE `ADDRESS` (
  `AddressID` int(11) NOT NULL,
  `Street_No` int(11) NOT NULL,
  `Street_Name` varchar(25) NOT NULL,
  `City` varchar(20) NOT NULL,
  `_State` varchar(2) NOT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ADDRESS`
--

INSERT INTO `ADDRESS` (`AddressID`, `Street_No`, `Street_Name`, `City`, `_State`, `ZipCode`) VALUES
(1, 1, 'STREETNAME1', 'CITY1', 'MI', 41835),
(2, 2, 'STREETNAME2', 'CITY2', 'MI', 41835),
(3, 3, 'STREETNAME3', 'CITY3', 'MI', 41835),
(4, 4, 'STREETNAME4', 'CITY4', 'MI', 41835),
(5, 5, 'STREETNAME5', 'CITY5', 'MI', 41835);

-- --------------------------------------------------------

--
-- Table structure for table `CONTACT_INFO`
--

CREATE TABLE `CONTACT_INFO` (
  `ContactID` int(11) NOT NULL,
  `Emails` varchar(55) NOT NULL,
  `Phone_No` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CONTACT_INFO`
--

INSERT INTO `CONTACT_INFO` (`ContactID`, `Emails`, `Phone_No`) VALUES
(1, 'EMAIL1', 'PHONENO1'),
(2, 'EMAIL2', 'PHONENO2'),
(3, 'EMAIL3', 'PHONENO3'),
(4, 'EMAIL4', 'PHONENO4'),
(5, 'EMAIL5', 'PHONENO5');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `SSN` int(11) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `ContactID` int(11) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Emp_ID` int(11) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Gender` char(2) NOT NULL,
  `Job_Title` varchar(25) DEFAULT NULL,
  `Hire_Date` date NOT NULL,
  `Birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`SSN`, `AddressID`, `ContactID`, `FName`, `LName`, `Emp_ID`, `Salary`, `Gender`, `Job_Title`, `Hire_Date`, `Birthdate`) VALUES
(123678910, 1, 1, 'FNAME1', 'LNAME1', 1, 20000, 'M', 'SOFTWARE ENGINEER', '2001-01-01', '1910-10-10'),
(223678910, 1, 1, 'FNAME2', 'LNAME2', 2, 40000, 'F', 'SOFTWARE ENGINEER', '2002-02-02', '1920-10-20'),
(323678910, 1, 1, 'FNAME3', 'LNAME3', 3, 60000, 'M', 'SOFTWARE ENGINEER', '2003-03-03', '1930-10-20'),
(345118765, 1, 1, 'Joe', 'Muller', 6, 24690, 'M', 'Worker', '2018-11-11', '1999-11-11'),
(423678910, 1, 1, 'FNAME4', 'LNAME4', 4, 80000, 'F', 'SOFTWARE ENGINEER', '2004-04-04', '1940-10-20'),
(523678910, 1, 1, 'FNAME5', 'LNAME5', 5, 100000, 'M', 'SOFTWARE ENGINEER', '2005-05-05', '1950-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `MANAGER`
--

CREATE TABLE `MANAGER` (
  `ProjectID` int(11) NOT NULL,
  `ProjectStatusWeek` varchar(255) NOT NULL,
  `NumProjectManage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MANAGER`
--

INSERT INTO `MANAGER` (`ProjectID`, `ProjectStatusWeek`, `NumProjectManage`) VALUES
(1, 'PROJECTSTATUSWEEK1', 1),
(2, 'PROJECTSTATUSWEEK2', 2),
(3, 'PROJECTSTATUSWEEK3', 3),
(4, 'PROJECTSTATUSWEEK4', 4),
(5, 'PROJECTSTATUSWEEK5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `MILESTONE`
--

CREATE TABLE `MILESTONE` (
  `ProjectID` int(11) NOT NULL,
  `MilestoneID` int(11) NOT NULL,
  `MName` varchar(55) NOT NULL,
  `Planned` date NOT NULL,
  `Actual` date NOT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MILESTONE`
--

INSERT INTO `MILESTONE` (`ProjectID`, `MilestoneID`, `MName`, `Planned`, `Actual`, `Comment`) VALUES
(1, 1, 'MNAME1', '2019-11-17', '2019-11-17', 'COMMENT1'),
(2, 2, 'MNAME2', '2019-11-17', '2019-11-17', 'COMMENT2'),
(3, 3, 'MNAME3', '2019-11-17', '2019-11-17', 'COMMENT3'),
(4, 4, 'MNAME4', '2019-11-17', '2019-11-17', 'COMMENT4'),
(5, 5, 'MNAME5', '2019-11-17', '2019-11-17', 'COMMENT5');

-- --------------------------------------------------------

--
-- Table structure for table `PROJBUDGET`
--

CREATE TABLE `PROJBUDGET` (
  `PBnumber` int(11) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  `ActualSpent` int(11) NOT NULL,
  `PlannedBudget` int(11) NOT NULL,
  `BudgetRemaining` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PROJBUDGET`
--

INSERT INTO `PROJBUDGET` (`PBnumber`, `ProjectID`, `ActualSpent`, `PlannedBudget`, `BudgetRemaining`) VALUES
(2, 2, 2000, 2000, 0),
(3, 3, 3000, 3000, 0),
(4, 4, 4000, 4000, 0),
(5, 5, 5000, 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT`
--

CREATE TABLE `PROJECT` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(255) NOT NULL,
  `ProjectStatus` varchar(255) NOT NULL,
  `ScopeStatus` varchar(255) NOT NULL,
  `ResourceStatus` varchar(255) NOT NULL,
  `StatusComment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PROJECT`
--

INSERT INTO `PROJECT` (`ProjectID`, `ProjectName`, `ProjectStatus`, `ScopeStatus`, `ResourceStatus`, `StatusComment`) VALUES
(1, 'PROJNAME1', 'PROJSTATUS1', 'SCOPESTATUS1', 'RESOURCESTATUS1', 'STATUSCOMMENT1'),
(2, 'PROJNAME2', 'PROJSTATUS2', 'SCOPESTATUS2', 'RESOURCESTATUS2', 'STATUSCOMMENT2'),
(3, 'PROJNAME3', 'PROJSTATUS3', 'SCOPESTATUS3', 'RESOURCESTATUS3', 'STATUSCOMMENT3'),
(4, 'PROJNAME4', 'PROJSTATUS4', 'SCOPESTATUS4', 'RESOURCESTATUS4', 'STATUSCOMMENT4'),
(5, 'PROJNAME5', 'PROJSTATUS5', 'SCOPESTATUS5', 'RESOURCESTATUS5', 'STATUSCOMMENT5');

-- --------------------------------------------------------

--
-- Table structure for table `WORKS_ON`
--

CREATE TABLE `WORKS_ON` (
  `ProjectID` int(11) NOT NULL,
  `SSN` int(11) NOT NULL,
  `Hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `WORKS_ON`
--

INSERT INTO `WORKS_ON` (`ProjectID`, `SSN`, `Hours`) VALUES
(1, 123678910, 80),
(2, 223678910, 80),
(3, 323678910, 80),
(4, 423678910, 80),
(5, 523678910, 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADDRESS`
--
ALTER TABLE `ADDRESS`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `CONTACT_INFO`
--
ALTER TABLE `CONTACT_INFO`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `AddressID` (`AddressID`),
  ADD KEY `ContactID` (`ContactID`);

--
-- Indexes for table `MANAGER`
--
ALTER TABLE `MANAGER`
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Indexes for table `MILESTONE`
--
ALTER TABLE `MILESTONE`
  ADD PRIMARY KEY (`MilestoneID`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Indexes for table `PROJBUDGET`
--
ALTER TABLE `PROJBUDGET`
  ADD PRIMARY KEY (`PBnumber`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Indexes for table `PROJECT`
--
ALTER TABLE `PROJECT`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Indexes for table `WORKS_ON`
--
ALTER TABLE `WORKS_ON`
  ADD KEY `SSN` (`SSN`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `ADDRESS` (`AddressID`),
  ADD CONSTRAINT `EMPLOYEE_ibfk_2` FOREIGN KEY (`ContactID`) REFERENCES `CONTACT_INFO` (`ContactID`);

--
-- Constraints for table `MANAGER`
--
ALTER TABLE `MANAGER`
  ADD CONSTRAINT `MANAGER_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `PROJECT` (`ProjectID`);

--
-- Constraints for table `MILESTONE`
--
ALTER TABLE `MILESTONE`
  ADD CONSTRAINT `MILESTONE_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `PROJECT` (`ProjectID`);

--
-- Constraints for table `PROJBUDGET`
--
ALTER TABLE `PROJBUDGET`
  ADD CONSTRAINT `PROJBUDGET_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `PROJECT` (`ProjectID`);

--
-- Constraints for table `WORKS_ON`
--
ALTER TABLE `WORKS_ON`
  ADD CONSTRAINT `WORKS_ON_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `EMPLOYEE` (`SSN`),
  ADD CONSTRAINT `WORKS_ON_ibfk_2` FOREIGN KEY (`ProjectID`) REFERENCES `PROJECT` (`ProjectID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
