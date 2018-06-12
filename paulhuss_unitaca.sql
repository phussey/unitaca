-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2017 at 11:34 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paulhuss_unitaca`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `Sequence` int(11) NOT NULL,
  `Account` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Type` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`Sequence`, `Account`, `Description`, `Type`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 1000, 'Heating Oil', 'Payable', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 1001, 'Electricity', 'Payable', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 2001, 'Doherty, Fred', 'Receivable', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 3001, 'Doherty, Fred', 'Trust', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 9000, 'Therapists', 'Payable', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `accountscoadirectory`
--

CREATE TABLE `accountscoadirectory` (
  `Sequence` int(11) NOT NULL,
  `MajorAccount` int(11) DEFAULT '0',
  `MinorAccount` int(11) DEFAULT '0',
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AssetAccount` tinyint(3) UNSIGNED DEFAULT NULL,
  `LiabilityAccount` tinyint(3) UNSIGNED DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `accountscoadirectory`
--

INSERT INTO `accountscoadirectory` (`Sequence`, `MajorAccount`, `MinorAccount`, `Description`, `AssetAccount`, `LiabilityAccount`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 1000, 2000, '', 0, 1, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 1000, 7000, '', 1, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 3000, 2000, '', 0, 1, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 4000, 2000, '', 0, 1, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 5000, 5000, '', 0, 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `accountscoamajor`
--

CREATE TABLE `accountscoamajor` (
  `Sequence` int(11) NOT NULL,
  `MajorAccount` int(11) DEFAULT '0',
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `accountscoamajor`
--

INSERT INTO `accountscoamajor` (`Sequence`, `MajorAccount`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 1000, 'Administration', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 2000, 'Payroll', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 3000, 'Inventory', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 4000, 'Maintenance', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 5000, 'Suppliers', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `accountscoaminor`
--

CREATE TABLE `accountscoaminor` (
  `Sequence` int(11) NOT NULL,
  `MinorAccount` int(11) DEFAULT '0',
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `accountscoaminor`
--

INSERT INTO `accountscoaminor` (`Sequence`, `MinorAccount`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 1000, 'Food and Supplies', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 1001, 'Fuels and Oil', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 2000, 'Building Maintenance', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 3000, 'Medical Supplies', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 4000, 'Medical Services', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `accountstransactionsjournal`
--

CREATE TABLE `accountstransactionsjournal` (
  `Sequence` int(11) NOT NULL,
  `PaymentID` int(11) NOT NULL DEFAULT '0',
  `Date` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Description` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `AccountNumber` int(11) NOT NULL DEFAULT '0',
  `ReferenceNumber` int(11) DEFAULT '0',
  `WithdrawalAmount` double DEFAULT NULL,
  `DepositAmount` double DEFAULT NULL,
  `InterestEarned` double DEFAULT NULL,
  `BuyorSellDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `BuyorSellPrice` double DEFAULT NULL,
  `ServiceCharge` double DEFAULT NULL,
  `Taxable` tinyint(3) UNSIGNED DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accountstypesdictionary`
--

CREATE TABLE `accountstypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Type` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `GeneralLedgerAccount` int(11) DEFAULT '0',
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `accountstypesdictionary`
--

INSERT INTO `accountstypesdictionary` (`Sequence`, `Type`, `Description`, `GeneralLedgerAccount`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Ambulance', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Maintenance', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Client', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Supply', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `CalendarDate` char(19) COLLATE latin1_general_ci DEFAULT NULL,
  `DayofWeek` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`CalendarDate`, `DayofWeek`) VALUES
('2001-03-31', 3),
('2000-09-24', 5),
('1980-01-04', 6),
('1980-01-05', 7),
('1980-01-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientbeddiary`
--

CREATE TABLE `clientbeddiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ClientNumber` int(11) DEFAULT NULL,
  `StartDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Section` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Room` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Bed` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientbeddiary`
--

INSERT INTO `clientbeddiary` (`Sequence`, `Residence`, `Client`, `ClientNumber`, `StartDate`, `Section`, `Room`, `Bed`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'UniCare Home', 'Meeker,Steve Charles', 6, '2002-06-06', 'A02', '001', '0001', 0, NULL, 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'UniCare Home', 'Doherty,Fred D.', 10, '2002-06-06', 'A01', '002', '001', 0, NULL, 0, 0, 0, '2002-04-18 20:31:42', '', '', '', '', '', ''),
(4, 'UniCare Home', 'O\'Toole,Mickey', 11, '2002-06-06', 'A04', '001', '002', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Bayside Manor', 'Hussey,Paul', 9, '2002-06-06', 'C01', '003', '002', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Hussey\'s Hostel', 'Meeker, Tom', 8, '2002-06-06', 'A04', '001', '002', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'UniCare Home', 'Garner,James C', 12, '2002-06-06', 'B01', '001', '001', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'UniCare Home', 'Little,Mary', 23, '2002-06-13', 'A01', '002', '007', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Bayside Manor', 'Hudson,Eliza', 20, '2002-06-06', 'A01', '002', '005', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientcontactdirectory`
--

CREATE TABLE `clientcontactdirectory` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ClientNumber` int(11) DEFAULT '0',
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FirstName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddelName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Relationship` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Title` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkPhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkExtension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `HomePhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MobilePhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Birthdate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LastMeetingDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ReferredBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpouseName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Photograph` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientcontactdirectory`
--

INSERT INTO `clientcontactdirectory` (`Sequence`, `Residence`, `ClientNumber`, `client`, `Contact`, `FirstName`, `MiddelName`, `LastName`, `Relationship`, `AddressA`, `AddressB`, `ProvinceState`, `Country`, `PostalCode`, `WorkName`, `Title`, `WorkPhone`, `WorkExtension`, `HomePhone`, `MobilePhone`, `FaxNumber`, `Email`, `WWWAddress`, `Birthdate`, `LastMeetingDate`, `ReferredBy`, `SpouseName`, `Notes`, `Photograph`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '', 1, 'Doherty, Fred', 'Body, Any', '', '', '', 'Father', '', '', 'Newfoundland', 'Canada', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, '', 2, 'Doherty, Fred', 'Doherty, Karen', '', '', '', 'Wife', '', '', 'Newfoundland', 'Canada', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, '', 3, 'Goodyear, Ken', 'Goodyear,', 'Elsie', '', 'Goodyear', 'Wife', '1 Fosters Road', 'Springdale', 'Newfoundland', 'Canada', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, '', 4, 'Fred Doherty', 'Karen Doherty', 'Karen', '', 'Doherty', 'Wife', '', '', 'Newfoundland', 'Canada', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, '', 5, 'Paul Hussey', 'Marie Hussey', 'Marie', 'E.', 'Hussey', 'Wife', '', '', 'Newfoundland', 'China', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clientcontactsdiary`
--

CREATE TABLE `clientcontactsdiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `FullName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FirstName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Salutation` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Province` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Region` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `CompanyName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Title` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkPhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkExtension` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `HomePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MobilePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `EmailName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Birthdate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LastMeetingDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ContactTypeID` int(11) NOT NULL DEFAULT '0',
  `ReferredBy` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Photograph` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `MaritalStatus` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `SpouseName` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SpousesInterests` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `ChildrenNames` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Hometown` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ContactsInterests` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientdeaths`
--

CREATE TABLE `clientdeaths` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `DateofDeath` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `TimeofDeath` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Location` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Cause` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Doctor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Certificate` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientdiabeticrecord`
--

CREATE TABLE `clientdiabeticrecord` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `ChemStripDate` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ChemStripTime` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ChemStripResults` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicationDate` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicationTime` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Medication` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Dosage` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DosageUnits` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PartofBody` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientdietdiary`
--

CREATE TABLE `clientdietdiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT NULL,
  `DietType` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DateAcquired` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `WhichMeal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `GramsCarbohydrates` smallint(6) DEFAULT NULL,
  `GramsProtein` smallint(6) DEFAULT NULL,
  `GramsFat` smallint(6) DEFAULT NULL,
  `TotalCalories` smallint(6) DEFAULT NULL,
  `MilligramsSodium` smallint(6) DEFAULT NULL,
  `Vitamins` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientdietdirectory`
--

CREATE TABLE `clientdietdirectory` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) NOT NULL DEFAULT '0',
  `DietName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DietDescription` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Source` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `WhichMeal` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `FoodCategoryID` int(11) NOT NULL DEFAULT '0',
  `Vegetarian` tinyint(3) UNSIGNED DEFAULT NULL,
  `TimeToPrepare` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberofServings` smallint(6) DEFAULT NULL,
  `CaloriesPerServing` smallint(6) DEFAULT NULL,
  `NutritionalInformation` text COLLATE latin1_general_ci,
  `Ingredients` text COLLATE latin1_general_ci,
  `Instructions` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Utensils` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientdietdirectory`
--

INSERT INTO `clientdietdirectory` (`Sequence`, `Residence`, `client`, `clientNumber`, `DietName`, `DietDescription`, `Source`, `WhichMeal`, `FoodCategoryID`, `Vegetarian`, `TimeToPrepare`, `NumberofServings`, `CaloriesPerServing`, `NutritionalInformation`, `Ingredients`, `Instructions`, `Notes`, `Archive`, `ArchiveDate`, `Utensils`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'UniCare Home', 'Boyle,Jerry D', 14, '', NULL, NULL, 'Sunday Breakfast', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'UniCare Home', 'Boyle,Jerry D', 14, '', NULL, NULL, 'Sunday Breakfast', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientdirectory`
--

CREATE TABLE `clientdirectory` (
  `clientNumber` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientType` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ResidenceCaseWorker` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AgencyCaseWorker` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `GovernmentDepartment` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AgencyFileNumber` int(11) DEFAULT '0',
  `CareLevel` tinyint(3) UNSIGNED DEFAULT NULL,
  `CareCode` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FirstName` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MiddleName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DateofBirth` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact1` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact2` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Sex` varchar(6) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MaritialStatus` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Doctor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SocialInsuranceNumber` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicareNumberA` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `MedicareNumberB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DrugCardNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `DrugCardExpiryDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `PCHFileNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Account` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ResidenceNumber` int(11) DEFAULT '0',
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `PreviousResidence` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Hospital` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Religion` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Church` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Height` smallint(6) DEFAULT '0',
  `HeightUnitofMeasure` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Weight` smallint(6) DEFAULT '0',
  `WeightUnitofMeasure` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Race` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Language` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `BloodType` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Glasses` tinyint(3) UNSIGNED DEFAULT NULL,
  `Contacts` tinyint(3) UNSIGNED DEFAULT NULL,
  `HearingAid` tinyint(3) UNSIGNED DEFAULT NULL,
  `DenturesUpper` tinyint(3) UNSIGNED DEFAULT NULL,
  `DenturesLower` tinyint(3) UNSIGNED DEFAULT NULL,
  `Behaviour` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Ambulation` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Appetite` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SleepingPattern` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Allergies` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialConsiderations` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialNeed` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Photo` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `AdmissionDate` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `AdmissionTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ReleaseDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Bed` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BedFacilityType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientdirectory`
--

INSERT INTO `clientdirectory` (`clientNumber`, `client`, `clientType`, `ResidenceCaseWorker`, `AgencyCaseWorker`, `GovernmentDepartment`, `AgencyFileNumber`, `CareLevel`, `CareCode`, `Status`, `FirstName`, `MiddleName`, `LastName`, `DateofBirth`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `PhoneNumber`, `Extension`, `FaxNumber`, `Contact1`, `Contact2`, `Sex`, `MaritialStatus`, `Doctor`, `SocialInsuranceNumber`, `MedicareNumberA`, `MedicareNumberB`, `DrugCardNumber`, `DrugCardExpiryDate`, `PCHFileNumber`, `Account`, `Email`, `WWWAddress`, `ResidenceNumber`, `Residence`, `PreviousResidence`, `Hospital`, `Religion`, `Church`, `Height`, `HeightUnitofMeasure`, `Weight`, `WeightUnitofMeasure`, `Race`, `Language`, `BloodType`, `Glasses`, `Contacts`, `HearingAid`, `DenturesUpper`, `DenturesLower`, `Behaviour`, `Ambulation`, `Appetite`, `SleepingPattern`, `Allergies`, `SpecialConsiderations`, `SpecialNeed`, `Photo`, `Notes`, `AdmissionDate`, `AdmissionTime`, `ReleaseDate`, `Bed`, `BedFacilityType`, `Archive`, `ArchiveDate`) VALUES
(6, 'Marks, Jim', '1', 'Snow, Diane', NULL, 'Health & Community Services', 0, 0, 'Constant Supervision', '1', 'Steve', 'Charles', 'Meeker', '1955-01-17', 'Cambridge Cres.', NULL, 'Chamberlains', '5', '2', NULL, '709-834-5971', '', '', 'Paul Hussey', NULL, '1', '', 'Dr. John Stone', NULL, '1223123', NULL, NULL, NULL, NULL, 15, '', '', 6, 'UniCare Home', 'Escasoni', '1', '1', 'Roman Catholic Basilica', 72, 'Inch(es)', 180, 'Pound(s)', '1', 'English', 'O-', 0, 0, 0, 0, 0, '', '', '', '', '', NULL, 'Complains a lot :)', '', 'presented to us during the fire in Foxtrap as a potential client. We are awaiting word from DSS as to his status with us. He is quite willing to stay here pending further analysis.More information required.Diet to be set up.', '2002-04-10', '13:43', '2001-04-26', '0017', '', 0, ''),
(14, 'Boyle,Jerry D', '2', 'Jones, Thomas', NULL, NULL, NULL, 0, 'Minimal Assistance', '1', 'Jerry', 'D', 'Boyle', '1943-01-27', '3434 Golf Ave', 'Apt 4', 'Halifax', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. John Stone', NULL, '324234234324', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'UniCare Home', NULL, '3', '1', NULL, 0, NULL, 0, NULL, '1', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Requires daily monitoring', 'Plenty of water', NULL, NULL, '2002-06-05', '8:49', NULL, '', NULL, NULL, NULL),
(8, 'June, Jane', '1', 'Jones, Thomas', NULL, 'Health & Community Services', 0, 0, 'Moderate Assistance', '1', 'Tom', 'O.', 'Meeker', '1949-11-05', '36 Glendale Avenue', NULL, 'Mount Pearl', '5', '2', 'B2S 4R2', '7098342323', '', '', 'Cathy Meeker', NULL, '1', '', 'Dr. Marie Smith', NULL, '34546456456', NULL, NULL, NULL, NULL, 16, '', '', 3, 'UniCare Home', 'WoodFord Manor', '4', '1', 'St. Mary\'s', 70, 'Inch(es)', 180, 'Pound(s)', '1', 'English', 'A+', 0, 0, 0, 0, 0, '', '', '', '', '', 'Important to check for tobacco products', 'Plenty of water', '', 'Notes presented to us during the fire in Foxtrap as a potential client. We are awaiting word from DSS as to his status with us. He is quite willing to stay here pending further analysis.More information required.Diet to be set up.', '2001-04-10', '13:44', '2001-04-26', '0016', '', 0, ''),
(9, 'Husky, Phil', '1', 'Nane, Donna', NULL, 'Health & Community Services', 0, 0, 'Minimal Assistance', '1', 'Phil', NULL, 'Husky', '1954-08-24', '123 Quanta Drive', NULL, 'Physicia', '6', '2', 'A1W1H5', '7098342323', '', '', 'Melanie Hardy', NULL, '1', 'Married', 'Dr. Marie Smith', NULL, '2134', NULL, NULL, NULL, NULL, 14, 'phussey@nf.sympatico.ca', 'http://www3.nf.sympatico.ca', 3, 'Unitaca Home', 'None', '1', '1', 'St. Mary\'s', 71, 'Inch(es)', 195, 'Pound(s)', '2', 'English', 'A+', 1, 0, 0, 1, 0, 'Erratic', '', 'Strong', 'Normal for HTS', 'Misc', NULL, NULL, '', 'Introduced to us during the fire in Foxtrap as a potential client. We are awaiting word from DSS as to his status with us. He is quite willing to stay here pending further analysis.More information required.Diet to be set up.', '2001-04-04', '14:39', '', '0015', '', 0, ''),
(10, 'Doe, Fred ', '1', 'Janes, Donna', NULL, 'Health & Community Services', 0, 0, 'Minimal Assistance', '1', 'Doe', '', 'Fred', '1953-12-12', 'White Lake', NULL, 'Prospect Bay', '6', '2', NULL, '7098342323', '', '', 'Doe, Karen', NULL, '1', 'Married', 'Dr. M. Smyth', NULL, '6456456456', NULL, NULL, NULL, NULL, 8, '', '', 3, 'Unitaca Home', 'Escasoni', '1', '1', 'St. Mary\'s', 71, 'Inch(es)', 190, 'Pound(s)', '1', 'English', 'AB-', 1, 0, 1, 0, 0, '', '', '', '', '', 'Cane and walker to be available at all times', NULL, '', 'Notes presented to us during the fire in Foxtrap as a potential client. We are awaiting word from DSS as to his status with us. He is quite willing to stay here pending further analysis.More information required.Diet to be set up.', '2001-04-04', '13:39', '2001-04-10', '0005', '', 0, ''),
(11, 'O\'Toole,Mickey', '1', 'Marks, Donna', NULL, 'Health & Community Services', 0, 0, 'Dependent', '1', 'Mickey', NULL, 'O\'Toole', '1934-03-02', '123 Downet St', NULL, 'Halifax', '6', '2', 'B2S 4R2', '709-834-2323', '', '', 'P. Hansen', NULL, '1', '', 'Dr. Will Holdem', NULL, '4358765345', NULL, NULL, NULL, NULL, 17, '', '', 3, 'Unitaca Home', 'Husky\'s Hostel', '2', '1', 'St. Mary\'s', 70, 'Inch(es)', 180, 'Pound(s)', '2', 'English', 'AB-', 0, 1, 0, 0, 0, '', '', '', '', '', NULL, NULL, '', 'presented to us during the fire in Foxtrap as a potential client. We are awaiting word from DSS as to his status with us. He is quite willing to stay here pending further analysis.More information required.Diet to be set up.', '2002-04-10', '13:45', '2001-04-26', '', '', 0, ''),
(12, 'Garner,James C', '1', 'Walsh, Mary', NULL, NULL, NULL, 0, 'Minimal Assistance', '1', 'James', 'C', 'Garner', '1923-11-16', '324 Water Street', 'Apartment B', 'Halifax', '6', '2', 'B2S 4R2', NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Willard Edwards', NULL, '1223123', NULL, NULL, NULL, NULL, 121212, NULL, NULL, NULL, 'Bayside Manor', 'None', '1', '1', NULL, 0, NULL, 0, NULL, '1', 'Chinese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cane and walker to be available at all times', 'Supervision during meals', NULL, NULL, '2002-02-02', '0800', NULL, '', NULL, NULL, NULL),
(29, 'Miller,Arthur', '4', 'Marks, Donna', NULL, NULL, NULL, 0, 'Dependent', '1', 'Arthur', NULL, 'Miller', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Willard Holden', NULL, '21323 4234 24234', NULL, NULL, NULL, NULL, 233, NULL, NULL, 0, 'Unitaca Home', NULL, '1', '1', NULL, 0, NULL, 0, NULL, '1', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-26', '14:19:00', NULL, '', NULL, NULL, NULL),
(15, 'Fitzgerald,Edmund', '1', 'Meeker, Donna', NULL, NULL, NULL, 1, 'Constant Supervision', '3', 'Edmund', NULL, 'Fitzgerald', '1934-01-27', '453 Aldernay Landing', NULL, 'Halifax', '6', '2', 'B3J 4E3', NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. William Edwards', NULL, '23457567', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'UniCare Home', NULL, '3', '4', NULL, 0, NULL, 0, NULL, '1', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-05', '8:51', NULL, '', NULL, NULL, NULL),
(16, 'Wiseman,Tom', '4', 'Walsh, Mary', NULL, NULL, NULL, 0, 'Constant Supervision', '1', 'Tom', NULL, 'Wiseman', '1923-12-27', 'Old Bay Bulls Road', NULL, 'St. John\'s', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '32456456', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'UniCare Home', NULL, '1', NULL, NULL, 0, NULL, 0, NULL, '1', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cane and walker to be available at all times', 'Supervision during meals', NULL, NULL, '2002-06-05', '8:59', NULL, '', NULL, NULL, NULL),
(17, 'Doolittle,John', '4', 'Ripley, Dianne', NULL, NULL, NULL, 0, 'Moderate Assistance', '1', 'John', NULL, 'Doolittle', '1942-11-27', '3242 Waverly Cres', NULL, 'Halifax', '6', '2', 'B3J 4E3', NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Marie Smith', NULL, '43534543545', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Bayside Manor', NULL, '3', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Important to check for tobacco products', NULL, NULL, NULL, '2002-06-05', '9:03', NULL, '', NULL, NULL, NULL),
(18, 'Janes,Ken', '4', 'Meeker, Donna', NULL, NULL, NULL, 0, 'Minimal Assistance', '1', 'Ken', NULL, 'Janes', '1942-11-27', '324 Water Street', NULL, 'Halifax', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. William Edwards', NULL, '123243434', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Bayview Manor', NULL, '3', NULL, NULL, 0, NULL, 0, NULL, NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-05', '9:05', NULL, '', NULL, NULL, NULL),
(19, 'Tizzard,Mary', '2', 'Jones, Thomas', NULL, NULL, NULL, 0, 'Independent', '1', 'Mary', NULL, 'Tizzard', '1933-0-16', '123 Downeret St', NULL, 'Halifax', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. John Stone', NULL, '123123123123', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'UniCare Home', NULL, '3', NULL, NULL, 0, NULL, 0, NULL, NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cane and walker to be available at all times', 'Plenty of water', NULL, NULL, '2002-06-05', '9:11', NULL, '', NULL, NULL, NULL),
(20, 'Hudson,Eliza', '2', 'Ripley, Dianne', NULL, NULL, NULL, 0, 'Independent', '2', 'Eliza', NULL, 'Hudson', '1924-01-27', '20 Ken Road', NULL, 'St. John\'s', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Marie Smith', NULL, '45667657567', NULL, NULL, NULL, NULL, 122323, NULL, NULL, NULL, 'Bayside Manor', NULL, '1', NULL, NULL, 0, NULL, 0, NULL, NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-05', '9:13', NULL, '', NULL, NULL, NULL),
(21, 'Spurrel,Harold', '2', 'Ripley, Dianne', NULL, NULL, NULL, 0, 'Dependent', NULL, 'Harold', NULL, 'Spurrel', '1932-01-16', 'Prospect Bay', NULL, 'Halifax', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Marie Smith', NULL, '0957647', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Bayside Manor', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-06', '11:53', NULL, '', NULL, NULL, NULL),
(22, 'Power,Eileen', '2', 'Walsh, Mary', NULL, NULL, NULL, 0, 'Independent', '1', 'Eileen', NULL, 'Power', '1933-0-16', 'Water St', NULL, 'Carbonear', '5', '2', 'A1E 3L3', NULL, NULL, NULL, NULL, NULL, '2', NULL, 'Dr. Marie Smith', NULL, '9898665765', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'UniCare Home', NULL, '1', '1', NULL, 0, NULL, 0, NULL, '1', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Plenty of water', NULL, NULL, '2002-06-06', '13:46', NULL, '', NULL, NULL, NULL),
(23, 'Little,Mary', '5', 'Meeker, Donna', NULL, NULL, NULL, 0, 'Constant Supervision', '1', 'Mary', NULL, 'Little', '1923-12-27', '120 Power Road', NULL, 'Halifax', '6', '2', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, 'Dr. William Edwards', NULL, '321423423432', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'UniCare Home', NULL, '3', '1', NULL, 0, NULL, 0, NULL, '2', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Plenty of water', NULL, NULL, '2002-06-06', '16:31', NULL, '', NULL, NULL, NULL),
(24, 'Thurston,Philip', '1', 'Jones, Thomas', NULL, NULL, NULL, 0, 'Dependent', NULL, 'Philip', NULL, 'Thurston', '1923-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '34343434', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Pre-admission', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Important to check for tobacco products', 'Supervision during meals', NULL, NULL, '2002-06-13', '16:49', NULL, '', NULL, NULL, NULL),
(25, 'Hunt,Helen M', '2', 'Jones, Thomas', NULL, NULL, NULL, 0, 'Dependent', NULL, 'Helen', 'M', 'Hunt', '1933-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. William Edwards', NULL, '98787665', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Pre-admission', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-14', '6:58', NULL, '', NULL, NULL, NULL),
(26, 'Spurrell,Larry', '1', 'Marks, Donna', NULL, NULL, NULL, 0, 'Constant Supervision', NULL, 'L.', NULL, 'Spurrell', '1943-01-27', NULL, NULL, NULL, '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Josh Stone', NULL, '34234234234', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Unitaca Home', NULL, '3', NULL, NULL, 0, NULL, 0, NULL, NULL, 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-17', '15:21', NULL, '', NULL, NULL, NULL),
(28, 'Stapleton,Gene R', '2', 'Jones, Thomas', NULL, NULL, NULL, 0, 'Dependent', NULL, 'Gene', 'R', 'Stapleton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Dr. Willard Edwards', NULL, '3445  5656 53543', NULL, NULL, NULL, NULL, 123, NULL, NULL, 0, 'Unitaca Home', NULL, '1', '1', NULL, 0, NULL, 0, NULL, '1', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shows symptom of fatigue', 'Cane', NULL, NULL, '2002-06-25', '13:35', NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientexercisediary`
--

CREATE TABLE `clientexercisediary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientNumber` int(11) DEFAULT '0',
  `Exercise` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Date` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ExerciseType` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AerobicOrAnaerobic` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TimeExercised` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DistanceTraveled` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `RestingPulse` smallint(6) DEFAULT NULL,
  `MaximumPulse` smallint(6) DEFAULT NULL,
  `CaloriesBurned` smallint(6) DEFAULT NULL,
  `HoursSleep` double DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientexerciseschedule`
--

CREATE TABLE `clientexerciseschedule` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientNumber` int(11) DEFAULT '0',
  `Exercise` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Date` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ExerciseType` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AerobicOrAnaerobic` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `TimeExercised` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DistanceTraveled` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `RestingPulse` smallint(6) DEFAULT NULL,
  `MaximumPulse` smallint(6) DEFAULT NULL,
  `CaloriesBurned` smallint(6) DEFAULT NULL,
  `HoursSleep` double DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientexerciseschedule`
--

INSERT INTO `clientexerciseschedule` (`Sequence`, `Residence`, `client`, `clientNumber`, `Exercise`, `Date`, `ExerciseType`, `AerobicOrAnaerobic`, `TimeExercised`, `DistanceTraveled`, `RestingPulse`, `MaximumPulse`, `CaloriesBurned`, `HoursSleep`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'UniCare Home', 'Boyle,Jerry D', 14, 'Weights', '2002-06-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20 Minute limit', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'UniCare Home', 'Hussey,Paul', 9, 'Cardoi', '2002-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Encourage the poor guy :) he\'s as lazy as can be', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'UniCare Home', 'Doolittle,John', NULL, 'Weights', '2002-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'UniCare Home', 'Meeker,Steve Charles', NULL, 'Aerobics and Weights', '2002-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clienthospitalizationdiary`
--

CREATE TABLE `clienthospitalizationdiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Hospital` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ReasonforStay` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AdmissionDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `AdmissionTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `AdmittingDiagnosis` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AdmittingPhysician` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `AttendingPhysician` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ReleaseCareLevel` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ReleaseDate` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ReleaseTime` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienthospitalizationdiary`
--

INSERT INTO `clienthospitalizationdiary` (`Sequence`, `Residence`, `client`, `clientNumber`, `Hospital`, `ReasonforStay`, `AdmissionDate`, `AdmissionTime`, `AdmittingDiagnosis`, `AdmittingPhysician`, `AttendingPhysician`, `ReleaseCareLevel`, `ReleaseDate`, `ReleaseTime`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '', 'Meeker, Steve', 6, 'QEII', 'Angina', '2002-10-04', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, '', 'Meeker, Steve', 6, 'St. Clares Mercy Hospital', 'Diabetic', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, '', 'Meeker, Steve', 6, 'St. Clares Mercy Hospital', 'Angina', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, '', 'Hussey, Lloyd', 44, 'QEII', 'Arthritic', '', '', '', '', '', '', '14/04/20', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, '', 'Hussey, Lloyd', 44, 'St. Clares Mercy Hospital', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clientlaboratorytestschedule`
--

CREATE TABLE `clientlaboratorytestschedule` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `LabotatoryTest` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Source` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Value` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ValueUnits` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Doctor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Laboratory` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `CollectedDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CollectedTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ResultsDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ResultsTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Reference` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FollowUpDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `FollowUpTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `FollowUpAction` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Comments` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientlaboratorytestschedule`
--

INSERT INTO `clientlaboratorytestschedule` (`Sequence`, `Residence`, `client`, `clientNumber`, `LabotatoryTest`, `Source`, `Value`, `ValueUnits`, `Doctor`, `Laboratory`, `CollectedDate`, `CollectedTime`, `ResultsDate`, `ResultsTime`, `Reference`, `FollowUpDate`, `FollowUpTime`, `FollowUpAction`, `Comments`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '', 'Able, John', 0, '24 hour urine collection', 'Urine', '', '', 'Dr. W. Duff', 'Health Sciences Complex', '2001-04-25', '07:00:07', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, '', 'Able, John', 0, '24 hour urine Cu', 'Urine', '', '', 'Dr. E. B. Edwards', 'Health Sciences Complex', '2001-04-25', '07:01:13', '2001-04-25', '07:40:29', '', '2001-04-25', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, '', 'Able, John', 0, 'ALP', 'Other', '', '', 'Dr. E. W. Williams', 'Health Sciences Complex', '2001-04-25', '07:00:42', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, '', 'Able, John', 0, 'Blood pressure', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, '', 'Able, John', 0, 'carcinoembryonic antigen', 'Blood', '', '', 'Dr. Bill Holden', 'Health Sciences Complex', '2001-04-25', '06:59:30', '2001-04-25', '06:59:39', '', '2001-05-03', '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clientmedicalcharts`
--

CREATE TABLE `clientmedicalcharts` (
  `Sequence` int(11) NOT NULL,
  `ResidenceNumber` int(11) NOT NULL DEFAULT '0',
  `clientNumber` int(11) DEFAULT '0',
  `MedicalEvent` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Attendant` int(11) NOT NULL DEFAULT '0',
  `StartDate` date NOT NULL DEFAULT '0000-00-00',
  `StartTime` time NOT NULL DEFAULT '00:00:00',
  `Weight` int(11) DEFAULT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `BloodPressure` int(11) DEFAULT NULL,
  `Respiration` int(11) DEFAULT NULL,
  `Injury` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Symptom` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ActionTaken` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Medication` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `HeartRate` smallint(6) DEFAULT NULL,
  `SystolicBloodPressure` smallint(6) DEFAULT NULL,
  `DBloodPressure` smallint(6) DEFAULT NULL,
  `PupilsDilated` tinyint(3) UNSIGNED DEFAULT NULL,
  `FollowUpDate` date DEFAULT NULL,
  `FollowUpTime` time DEFAULT NULL,
  `FollowUpAction` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientmedicalcharts`
--

INSERT INTO `clientmedicalcharts` (`Sequence`, `ResidenceNumber`, `clientNumber`, `MedicalEvent`, `Attendant`, `StartDate`, `StartTime`, `Weight`, `Temperature`, `BloodPressure`, `Respiration`, `Injury`, `Symptom`, `ActionTaken`, `Medication`, `HeartRate`, `SystolicBloodPressure`, `DBloodPressure`, `PupilsDilated`, `FollowUpDate`, `FollowUpTime`, `FollowUpAction`, `Archive`, `ArchiveDate`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 3, 14, 'Monitoring', 2, '2002-06-26', '14:13:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 125, 76, NULL, '2002-06-27', '14:13:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, 12, 'Monitoring', 1, '2002-06-26', '14:14:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, 145, 78, NULL, '2002-06-26', '14:14:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 23, 'Blood Pressure', 4, '2002-06-26', '14:15:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 132, 78, NULL, '2002-06-27', '14:15:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 8, 'Monitoring', 4, '2002-06-26', '15:50:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, 135, 76, NULL, '2002-06-26', '15:50:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 8, 'Urine Specimen', 2, '2002-06-26', '15:55:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-26', '15:55:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 25, 'Blood Pressure', 4, '2002-06-26', '15:55:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 132, 75, NULL, '2002-06-26', '15:55:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 3, 29, 'Monitoring', 1, '2002-06-26', '15:56:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 137, 75, NULL, '2002-06-26', '15:56:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, 28, 'Blood Pressure', 4, '2002-06-26', '15:58:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Blood pressure and visual check', NULL, 65, 135, 68, NULL, '2002-06-26', '15:58:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 3, 9, 'Monitoring', 4, '2002-06-26', '15:59:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Blood pressure and visual check', NULL, 67, 125, 75, NULL, '2002-06-26', '15:59:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 3, 12, 'Monitoring', 4, '2002-06-26', '16:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2002-06-26', '16:01:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3, 20, 'Monitoring', 1, '2002-06-26', '16:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 135, 75, NULL, '2002-06-26', '16:01:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 3, 22, 'Vital Signs', 4, '2002-06-26', '16:02:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Blood pressure and visual check', NULL, 65, 137, 75, NULL, '2002-06-26', '16:02:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 3, 26, 'Monitoring', 4, '2002-06-26', '16:07:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 135, 75, NULL, '2002-06-26', '16:07:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 3, 14, 'Monitoring', 2, '2002-06-27', '04:16:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 137, 75, NULL, '2002-06-27', '04:16:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientmedicalconditions`
--

CREATE TABLE `clientmedicalconditions` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `MedicalCondition` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateDiagnosed` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientmedicalconditions`
--

INSERT INTO `clientmedicalconditions` (`Sequence`, `Residence`, `client`, `clientNumber`, `MedicalCondition`, `DateDiagnosed`, `Archive`, `ArchiveDate`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(26, 'UniCare Home', 'Hussey,Paul', 9, 'Angina', '2002-06-06', 0, '', 'Note', 0, 0, 0, '', '', '', '', '', '', ''),
(27, 'UniCare Home', 'Doherty,Fred D.', 10, 'Arthritic', '2002-04-17', 0, '', 'Requires oxygen available', 0, 0, 0, '', '', '', '', '', '', ''),
(32, 'UniCare Home', 'Hussey,Paul', 9, 'Arthritic', '2002-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'UniCare Home', 'Garner,James C', 12, 'Angina', '2002-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'UniCare Home', 'O\'Toole,Mickey', 11, 'Allergy - Pollen', '2002-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'UniCare Home', 'Hudson,Eliza', 20, 'Angina', '2002-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'UniCare Home', 'Boyle,Jerry D', 14, 'Angina', '2002-06-06', NULL, NULL, 'Mr Doyle requires a pacemaker and regular visits to a physician', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Bayside Manor', 'Meeker,Tom O.', 8, 'Arthritic', '2002-06-06', NULL, NULL, 'Often stricken with total paralysis ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'UniCare Home', 'Doolittle,John', 17, 'Arthritic', '2002-06-06', NULL, NULL, 'Requires oxygen available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'UniCare Home', 'Boyle,Jerry D', 14, 'Allergy - Pollen', '2002-06-06', NULL, NULL, 'Jerry has some luck using Neocitran in relieving his symptoms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'UniCare Home', 'Wiseman,Tom', 16, 'Diabetic', '2002-06-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'UniCare Home', 'Boyle,Jerry D', 14, 'Arthritic', '2002-06-10', NULL, NULL, 'Complaining of upset stomach and chest pain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'UniCare Home', 'Spurrel,Harold', 0, 'Diabetic', '2002-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientmedicalincidents`
--

CREATE TABLE `clientmedicalincidents` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientNumber` int(11) DEFAULT '0',
  `MedicalEvent` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Date` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EmployeeNumber` int(11) DEFAULT '0',
  `DateScheduled` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Complete` tinyint(3) UNSIGNED DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientpaysourcedirectory`
--

CREATE TABLE `clientpaysourcedirectory` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientNumber` int(11) DEFAULT '0',
  `Paysource` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Heirarchy` smallint(6) NOT NULL DEFAULT '1',
  `FirstName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddleName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DateofBirth` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccountReceivableNumber` int(11) DEFAULT '0',
  `PaymentPortion` int(11) DEFAULT '0',
  `PaymentMaximum` double DEFAULT NULL,
  `PaymentMinimum` double DEFAULT NULL,
  `PaymentMethod` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientpaysourcesdictionary`
--

CREATE TABLE `clientpaysourcesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Paysource` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientpersonalbelongings`
--

CREATE TABLE `clientpersonalbelongings` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Category` int(11) NOT NULL DEFAULT '0',
  `RoomID` int(11) NOT NULL DEFAULT '0',
  `ItemName` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ItemType` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Manufacturer` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Model` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ModelNumber` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SerialNumber` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DatePurchased` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `PlacePurchased` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PurchasePrice` double DEFAULT NULL,
  `AppraisedValue` double DEFAULT NULL,
  `Insured` tinyint(3) UNSIGNED DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Photograph` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientphonecalldiary`
--

CREATE TABLE `clientphonecalldiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `DateandTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientprescriptionsdiary`
--

CREATE TABLE `clientprescriptionsdiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `PrescriptionNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `DateMedicated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `TimeMedicated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `BrandName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Dosage` int(11) NOT NULL DEFAULT '0',
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosageType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Amount` smallint(6) DEFAULT '0',
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientprescriptionsdirectory`
--

CREATE TABLE `clientprescriptionsdirectory` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `PrescriptionNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PrescriptionDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `PrescribingPhysician` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Instructions` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `BrandName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Dosage` int(11) NOT NULL DEFAULT '0',
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosageType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Amount` smallint(6) DEFAULT '0',
  `Refills` smallint(6) DEFAULT '0',
  `FirstDosageDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `FirstDosageTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Frequency` smallint(6) DEFAULT '1',
  `FrequencyPeriod` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `ExpiryDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CeasedAll` tinyint(3) UNSIGNED DEFAULT NULL,
  `CeasedDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientprescriptionsdirectory`
--

INSERT INTO `clientprescriptionsdirectory` (`Sequence`, `Residence`, `client`, `clientNumber`, `PrescriptionNumber`, `PrescriptionDate`, `PrescribingPhysician`, `Instructions`, `BrandName`, `Dosage`, `UnitofMeasure`, `DosageType`, `Amount`, `Refills`, `FirstDosageDate`, `FirstDosageTime`, `Frequency`, `FrequencyPeriod`, `ExpiryDate`, `CeasedAll`, `CeasedDate`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(30, 'UniCare Home', 'Hudson,Eliza', 20, '23123123', '2002-04-13', 'Dr. Marie Smith', 'Take as instructed by physician', 'Abitrate', 5, 'Milligram(s)', 'Oral', 0, 0, '2020-04-14', '18:21:28', 1, '1', '2367', 0, NULL, NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(36, 'UniCare Home', 'Maker, Charles', 6, '345345', '2020-04-10', 'Dr. John Stone', 'As directed by physician', 'Abacavir', 1, 'Milligram(s)', 'Oral', 30, 0, '2002-04-10', '16:20:29', 1, '2', '2003-04-11', 0, NULL, NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(37, 'Bayside Manor', 'Boyle, Jerry', 14, '123123123', '2020-04-10', 'Dr. Marie Smith', 'As directed by physician', 'Abitrate', 2, 'Milligram(s)', 'Gelcap', 30, 0, '2002-04-10', '19:09:41', 1, '1', '2003-04-11', 0, NULL, NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(45, 'UniCare Home', 'Janes,Ken', 18, '56345325', '2002-06-06', 'Dr. Marie Smith', 'Take as instructed by physician', 'Abacavir', 1, 'Milligram(s)', 'Oral', NULL, NULL, '2002-06-06', NULL, 4, '3', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'UniCare Home', 'Doherty,Fred D.', 10, '4567656', '2002-06-06', 'Dr. John Stone', 'As directed by physician As directed by physician', 'Abitrate', 5, 'Milligram(s)', 'Gelcap', NULL, NULL, '2002-06-06', NULL, 4, '3', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'UniCare Home', 'Hunt,Helen M', 14, '325466', '2002-06-06', 'Dr. John Stone', 'As directed by physician As directed by physician', 'Abitrate', 5, 'Microgram(s)', 'Oral', NULL, NULL, '2002-06-06', NULL, 1, '1', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'UniCare Home', 'Wiseman,Tom', 16, '345345', '2002-06-07', 'Dr. John Stone', 'Take as instructed by physician', 'Abreva', 5, 'Microgram(s)', 'Gelcap', 30, 0, '2002-06-07', NULL, 1, '1', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'UniCare Home', 'Tizzard,Mary', 19, '986554', '2002-06-07', 'Dr. Marie Smith', 'As directed by physician As directed by physician', 'Abbokinase', 5, 'Microgram(s)', 'Oral', NULL, NULL, '2002-06-07', NULL, 4, '3', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'UniCare Home', 'Garner,James C', 21, '75665654', '2002-06-07', 'Dr. Marie Smith', 'As directed by physician As directed by physician', 'Abbokinase', 5, 'Microgram(s)', 'Injection', NULL, NULL, '2002-06-07', NULL, 5, '3', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'UniCare Home', 'Fitzgerald,Edmund', 23, '34534543', '2002-06-07', 'Dr. Marie Smith', 'As directed by physician As directed by physician', 'Abitrate', 5, 'Milligram(s)', 'Injection', NULL, NULL, '2002-06-07', NULL, 1, '4', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'UniCare Home', 'Little,Mary', 14, '345345', '2002-06-07', 'Dr. Marie Smith', 'As directed by physician As directed by physician', 'Abbokinase', 5, 'Milligram(s)', 'Gelcap', NULL, NULL, '2002-06-07', NULL, 1, '1', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'UniCare Home', 'Meeker,Steve Charles', 0, '234455466', '2002-06-25', 'Dr. Marie Smith', 'As Directed by physician', 'Abitrate', 1, 'Milligram(s)', 'Gelcap', NULL, NULL, '2002-06-25', NULL, 1, '3', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'UniCare Home', 'Janes,Ken', 0, '4357678345', '2002-06-25', 'Dr. John Stone', 'As Directed by physician', 'Abitrate', 5, 'Milligram(s)', 'Gelcap', NULL, NULL, '2002-06-25', NULL, NULL, '1', '2367', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientprogressnotes`
--

CREATE TABLE `clientprogressnotes` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `ProgressNoteDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ProgressNoteTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Attendant` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientprogressnotes`
--

INSERT INTO `clientprogressnotes` (`Sequence`, `Residence`, `client`, `clientNumber`, `ProgressNoteDate`, `ProgressNoteTime`, `Attendant`, `Notes`, `Archive`) VALUES
(2, 'UniCare Home', 'Boyle,Jerry D', 14, '2002-04-20', '08:00:00', 'Jones, Thomas', 'Sleeping well', 0),
(4, 'UniCare Home', 'Doherty,Fred D.', 10, '2002-04-20', '08:00:00', 'Meeker, Donna', 'Sleeping well', 0),
(5, 'General Hospital', 'Hudson, Eliza', 20, '2002-04-20', '09:00:00', 'Meeker, Donna', 'Strong appetite', 0),
(6, 'UniCare Home', 'Meeker,Steve Charles', 6, '2002-10-04', '09:00:00', 'Meeker, Donna', 'Healthy Apptetite', 1),
(7, 'UniCare Home', 'Meeker,Steve Charles', 6, '2002-10-04', '14:00:00', 'Meeker, Donna', 'Interest in Exercise program', 1),
(8, 'UniCare Home', 'Garner,James C', 12, '2002-0603', '08:00:00', 'Jones, Thomas', 'Notes ', 0),
(9, 'UniCare Home', 'Doherty,Fred D.', 0, '2002-06-23', '08:30:00', 'Jones, Thomas', 'Complaining of upset stomach and chest pain', 0),
(10, 'UniCare Home', 'Boyle,Jerry D', 0, '2002-06-24', '16:00:00', 'Jones, Thomas', 'Daiily heath monitoring', 0),
(11, 'UniCare Home', 'Spurrell,Larry', 0, '2002-06-24', '16:00:00', 'Ripley, Dianne', 'Leg exercise and cardio workout', 0),
(12, 'UniCare Home', 'Spurrell,Larry', 0, '2002-06-24', '16:00:00', 'Meeker, Donna', 'Complaining of upset stomach and chest pain', 0),
(13, 'UniCare Home', 'Meeker,Tom O.', 0, '2002-06-24', '16:00:00', 'Meeker, Donna', 'Daiily heath monitoring', 0),
(14, 'UniCare Home', 'Spurrel,Harold', 0, '2002-06-24', '16:00:00', 'Meeker, Donna', 'Daiily heath monitoring', 0),
(15, 'UniCare Home', 'Tizzard,Mary', 0, '2002-06-24', '16:00:00', 'Jones, Thomas', 'Daiily heath monitoring', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clientservicedictionary`
--

CREATE TABLE `clientservicedictionary` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientservicedictionary`
--

INSERT INTO `clientservicedictionary` (`Sequence`, `client`, `clientNumber`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Ambulance', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Budgeting', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Dressing', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Eating', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Exercise', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clientservicedirectory`
--

CREATE TABLE `clientservicedirectory` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `clientService` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StartDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `StartTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Cycle` int(11) DEFAULT '0',
  `Frequency` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Priority` smallint(6) DEFAULT '1',
  `Complete` tinyint(3) UNSIGNED DEFAULT NULL,
  `AssistanceLevel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientservicedirectory`
--

INSERT INTO `clientservicedirectory` (`Sequence`, `Residence`, `client`, `clientNumber`, `clientService`, `StartDate`, `StartTime`, `EndDate`, `EndTime`, `Cycle`, `Frequency`, `Priority`, `Complete`, `AssistanceLevel`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(14, '', 'Boyle,Jerry D', 14, 'Bed Maintenance', '2020-04-14', '14:52:00', NULL, NULL, 0, NULL, 1, 0, 'Ambulance', 0, NULL, 0, 0, 0, '', '', '', '', '', '', ''),
(15, '', 'Boyle,Jerry D', 14, 'Bed Maintenance', '2002-06-19', NULL, NULL, NULL, 0, NULL, 1, 0, 'Ambulance', 0, NULL, 0, 0, 0, '', '', '', '', '', '', ''),
(16, '', 'Hussey,Paul', 9, 'Bed Maintenance', '2020-04-14', '21:17:21', NULL, NULL, 0, NULL, 1, 0, 'Ambulance', 0, NULL, 0, 0, 0, '', '', '', '', '', '', ''),
(17, '', 'Little,Mary', 17, 'Bed Maintenance', '2002-05-01', '08:00:00', NULL, NULL, 1, 'Only', 1, 0, 'Ambulance', 0, NULL, 0, 0, 0, '', '', '', '', '', '', ''),
(18, '', 'Boyle,Jerry D', 39, 'Bed Maintenance', '2002-05-04', '08:00:00', NULL, NULL, 1, 'Daily', 1, 0, 'Ambulance', 0, NULL, 0, 0, 0, '', '', '', '', '', '', ''),
(21, '', 'Boyle,Jerry D', 0, 'General Services', '2002-06-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ambulance', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '', 'Boyle,Jerry D', 0, 'Bed Maintenance', '2002-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Taxi Service', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientservicesdiary`
--

CREATE TABLE `clientservicesdiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Service` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `CompletedDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CompletedTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clientstatusdictionary`
--

CREATE TABLE `clientstatusdictionary` (
  `Sequence` int(11) NOT NULL,
  `Status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clientstatusdictionary`
--

INSERT INTO `clientstatusdictionary` (`Sequence`, `Status`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Current client', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Discharged', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Pre-Admission', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Short-Term Leave', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Temporary', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clienttherapydirectory`
--

CREATE TABLE `clienttherapydirectory` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientNumber` int(11) DEFAULT '0',
  `Therapy` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Therapist` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Date` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `AppointmentTime` varchar(19) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LenghtofAppointment` int(11) DEFAULT '0',
  `AssistanceRequired` tinyint(3) UNSIGNED DEFAULT NULL,
  `Assistance` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Fee` double DEFAULT NULL,
  `Complete` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateComplete` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienttherapydirectory`
--

INSERT INTO `clienttherapydirectory` (`Sequence`, `Residence`, `client`, `clientNumber`, `Therapy`, `Therapist`, `Date`, `AppointmentTime`, `LenghtofAppointment`, `AssistanceRequired`, `Assistance`, `Employee`, `Fee`, `Complete`, `DateComplete`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(11, '', 'Goosney, John', 64, 'Chiropracter', 'LeMarchant Chiropractic', '2002-06-04', '09:00:00', 1, 0, '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(12, '', 'Able, John', 39, 'Chiropracter', 'LeMarchant Chiropractic', '2002-05-04', '08:00:00', 0, 1, 'Taxi Service', 'Ripley, Dianne P.', 0, 1, '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(13, '', 'Meeker, Steve', 6, 'Chiropracter', 'LeMarchant Chiropractic', '2002-11-04', '08:00:00', 1, 1, 'Taxi Service', 'Meeker, Donna', 0, 1, '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(14, '', 'Chafe, William', 48, 'Chiropracter', 'LeMarchant Chiropractic', '2002-12-04', '09:00:00', 0, 1, 'Taxi Service', 'Ripley, Dianne P.', 0, 0, '', 'Check legs', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(15, '', 'Meeker, Steve', 6, 'Physiologist', 'Massage Specialties', '2020-04-10', '16:13:44', 0, 1, 'Taxi Service', 'Ripley, Dianne P.', 0, 0, '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clienttransfersdiary`
--

CREATE TABLE `clienttransfersdiary` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `TransferDate` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `TransferTo` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `TransferFrom` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Reason` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienttransfersdiary`
--

INSERT INTO `clienttransfersdiary` (`Sequence`, `client`, `clientNumber`, `TransferDate`, `TransferTo`, `TransferFrom`, `Reason`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Boyle,Jerry D', NULL, '2002-06-23', 'Bayside Manor', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clienttrustaccountsdirectory`
--

CREATE TABLE `clienttrustaccountsdirectory` (
  `AccountNumber` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `TrustAccountType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `OpeningBalance` double DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienttrustaccountsdirectory`
--

INSERT INTO `clienttrustaccountsdirectory` (`AccountNumber`, `client`, `clientNumber`, `TrustAccountType`, `OpeningBalance`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '', 0, 'Savings', 1, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, '', 0, 'Trust', 2, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, '', 0, 'Trust', 3, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, '', 0, 'Savings', 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, '', 0, 'Savings', 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clienttrustaccountstransactions`
--

CREATE TABLE `clienttrustaccountstransactions` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Date` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `DebitAccount` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DebitAmount` double DEFAULT NULL,
  `DebitSource` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `CreditAccount` int(11) DEFAULT '0',
  `CreditAmount` double DEFAULT NULL,
  `CreditSource` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienttrustaccountstransactions`
--

INSERT INTO `clienttrustaccountstransactions` (`Sequence`, `client`, `clientNumber`, `Date`, `DebitAccount`, `DebitAmount`, `DebitSource`, `CreditAccount`, `CreditAmount`, `CreditSource`, `Notes`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Boyle,Jerry D', 0, '2002-05-10', '1', 20, 'Cash', 2, 20, 'Cash', NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Boyle,Jerry D', 0, '2002-05-10', '1', 20, 'Cash', 2, 20, 'Cash', NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Fitzgerald,Edmund', 0, '2002-05-10', '1', 20, 'Cash', 2, 20, 'Check', NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Janes,Ken', 0, '2002-05-10', '1', 45, 'Cash', 4, 45, 'Cash', NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Doolittle,John', 0, '2002-05-11', '1', 564, 'Check', 2, 564, 'Check', NULL, 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clienttrustaccounttypesdictionary`
--

CREATE TABLE `clienttrustaccounttypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `TrustAccountType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienttrustaccounttypesdictionary`
--

INSERT INTO `clienttrustaccounttypesdictionary` (`Sequence`, `TrustAccountType`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Savings', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Trust', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clienttypesdictionary`
--

CREATE TABLE `clienttypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `clientType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `clienttypesdictionary`
--

INSERT INTO `clienttypesdictionary` (`Sequence`, `clientType`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Custodial', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Out-client', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Paliative', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Personal Care', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Special Care', 'Special Care', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clientvisitationsdiary`
--

CREATE TABLE `clientvisitationsdiary` (
  `Sequence` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Date` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Invisitation` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateLastTalkedTo` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberAttending` smallint(6) DEFAULT NULL,
  `NeedDaycare` tinyint(3) UNSIGNED DEFAULT NULL,
  `HealthIssues` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `RoomNumber` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE `Countries` (
  `sequence` int(11) NOT NULL,
  `Country` varchar(44) DEFAULT NULL,
  `Country Code` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`sequence`, `Country`, `Country Code`) VALUES
(1, 'AFGHANISTAN', 'AF'),
(2, 'ALBANIA', 'AL'),
(3, 'ALGERIA', 'DZ'),
(4, 'AMERICAN SAMOA', 'AS'),
(5, 'ANDORRA', 'AD'),
(6, 'ANGOLA', 'AO'),
(7, 'ANTARCTICA', 'AQ'),
(8, 'ANTIGUA AND BARBUDA', 'AG'),
(9, 'ARGENTINA', 'AR'),
(10, 'ARMENIA', 'AM'),
(11, 'ARUBA', 'AW'),
(12, 'AUSTRALIA', 'AU'),
(13, 'AUSTRIA', 'AT'),
(14, 'AZERBAIJAN', 'AZ'),
(15, 'BAHAMAS', 'BS'),
(16, 'BAHRAIN', 'BH'),
(17, 'BANGLADESH', 'BD'),
(18, 'BARBADOS', 'BB'),
(19, 'BELARUS', 'BY'),
(20, 'BELGIUM', 'BE'),
(21, 'BELIZE', 'BZ'),
(22, 'BENIN', 'BJ'),
(23, 'BERMUDA', 'BM'),
(24, 'BHUTAN', 'BT'),
(25, 'BOLIVIA', 'BO'),
(26, 'BOSNIA AND HERZEGOVINA', 'BA'),
(27, 'BOTSWANA', 'BW'),
(28, 'BOUVET ISLAND', 'BV'),
(29, 'BRAZIL', 'BR'),
(30, 'BRITISH INDIAN OCEAN TERRITORY', 'IO'),
(31, 'BRUNEI DARUSSALAM', 'BN'),
(32, 'BULGARIA', 'BG'),
(33, 'BURKINA FASO', 'BF'),
(34, 'BURUNDI', 'BI'),
(35, 'CAMBODIA', 'KH'),
(36, 'CAMEROON', 'CM'),
(37, 'CANADA', 'CA'),
(38, 'CAPE VERDE', 'CV'),
(39, 'CAYMAN ISLANDS', 'KY'),
(40, 'CENTRAL AFRICAN REPUBLIC', 'CF'),
(41, 'CHAD', 'TD'),
(42, 'CHILE', 'CL'),
(43, 'CHINA', 'CN'),
(44, 'CHRISTMAS ISLAND', 'CX'),
(45, 'COCOS (KEELING) ISLANDS', 'CC'),
(46, 'COLOMBIA', 'CO'),
(47, 'COMOROS', 'KM'),
(48, 'CONGO', 'CG'),
(49, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD'),
(50, 'COOK ISLANDS', 'CK'),
(51, 'COSTA RICA', 'CR'),
(52, 'CÔTE D\'IVOIRE', 'CI'),
(53, 'CROATIA', 'HR'),
(54, 'CUBA', 'CU'),
(55, 'CYPRUS', 'CY'),
(56, 'CZECH REPUBLIC', 'CZ'),
(57, 'DENMARK', 'DK'),
(58, 'DJIBOUTI', 'DJ'),
(59, 'DOMINICA', 'DM'),
(60, 'DOMINICAN REPUBLIC', 'DO'),
(61, 'ECUADOR', 'EC'),
(62, 'EGYPT', 'EG'),
(63, 'EL SALVADOR', 'SV'),
(64, 'EQUATORIAL GUINEA', 'GQ'),
(65, 'ERITREA', 'ER'),
(66, 'ESTONIA', 'EE'),
(67, 'ETHIOPIA', 'ET'),
(68, 'FALKLAND ISLANDS (MALVINAS)', 'FK'),
(69, 'FAROE ISLANDS', 'FO'),
(70, 'FIJI', 'FJ'),
(71, 'FINLAND', 'FI'),
(72, 'FRANCE', 'FR'),
(73, 'FRENCH GUIANA', 'GF'),
(74, 'FRENCH POLYNESIA', 'PF'),
(75, 'FRENCH SOUTHERN TERRITORIES', 'TF'),
(76, 'GABON', 'GA'),
(77, 'GAMBIA', 'GM'),
(78, 'GEORGIA', 'GE'),
(79, 'GERMANY', 'DE'),
(80, 'GHANA', 'GH'),
(81, 'GIBRALTAR', 'GI'),
(82, 'GREECE', 'GR'),
(83, 'GREENLAND', 'GL'),
(84, 'GRENADA', 'GD'),
(85, 'GUADELOUPE', 'GP'),
(86, 'GUAM', 'GU'),
(87, 'GUATEMALA', 'GT'),
(88, 'GUINEA', 'GN'),
(89, 'GUINEA-BISSAU', 'GW'),
(90, 'GUYANA', 'GY'),
(91, 'HAITI', 'HT'),
(92, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM'),
(93, 'HONDURAS', 'HN'),
(94, 'HONG KONG', 'HK'),
(95, 'HUNGARY', 'HU'),
(96, 'ICELAND', 'IS'),
(97, 'INDIA', 'IN'),
(98, 'INDONESIA', 'ID'),
(99, 'IRAN, ISLAMIC REPUBLIC OF', 'IR'),
(100, 'IRAQ', 'IQ'),
(101, 'IRELAND', 'IE'),
(102, 'ISRAEL', 'IL'),
(103, 'ITALY', 'IT'),
(104, 'JAMAICA', 'JM'),
(105, 'JAPAN', 'JP'),
(106, 'JORDAN', 'JO'),
(107, 'KAZAKHSTAN', 'KZ'),
(108, 'KENYA', 'KE'),
(109, 'KIRIBATI', 'KI'),
(110, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP'),
(111, 'KOREA, REPUBLIC OF', 'KR'),
(112, 'KUWAIT', 'KW'),
(113, 'KYRGYZSTAN', 'KG'),
(114, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA'),
(115, 'LATVIA', 'LV'),
(116, 'LEBANON', 'LB'),
(117, 'LESOTHO', 'LS'),
(118, 'LIBERIA', 'LR'),
(119, 'LIBYAN ARAB JAMAHIRIYA', 'LY'),
(120, 'LIECHTENSTEIN', 'LI'),
(121, 'LITHUANIA', 'LT'),
(122, 'LUXEMBOURG', 'LU'),
(123, 'MACAO', 'MO'),
(124, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK'),
(125, 'MADAGASCAR', 'MG'),
(126, 'MALAWI', 'MW'),
(127, 'MALAYSIA', 'MY'),
(128, 'MALDIVES', 'MV'),
(129, 'MALI', 'ML'),
(130, 'MALTA', 'MT'),
(131, 'MARSHALL ISLANDS', 'MH'),
(132, 'MARTINIQUE', 'MQ'),
(133, 'MAURITANIA', 'MR'),
(134, 'MAURITIUS', 'MU'),
(135, 'MAYOTTE', 'YT'),
(136, 'MEXICO', 'MX'),
(137, 'MICRONESIA, FEDERATED STATES OF', 'FM'),
(138, 'MOLDOVA, REPUBLIC OF', 'MD'),
(139, 'MONACO', 'MC'),
(140, 'MONGOLIA', 'MN'),
(141, 'MONTENEGRO', 'ME'),
(142, 'MONTSERRAT', 'MS'),
(143, 'MOROCCO', 'MA'),
(144, 'MOZAMBIQUE', 'MZ'),
(145, 'MYANMAR', 'MM'),
(146, 'NAMIBIA', 'NA'),
(147, 'NAURU', 'NR'),
(148, 'NEPAL', 'NP'),
(149, 'NETHERLANDS', 'NL'),
(150, 'NETHERLANDS ANTILLES', 'AN'),
(151, 'NEW CALEDONIA', 'NC'),
(152, 'NEW ZEALAND', 'NZ'),
(153, 'NICARAGUA', 'NI'),
(154, 'NIGER', 'NE'),
(155, 'NIGERIA', 'NG'),
(156, 'NIUE', 'NU'),
(157, 'NORFOLK ISLAND', 'NF'),
(158, 'NORTHERN MARIANA ISLANDS', 'MP'),
(159, 'NORWAY', 'NO'),
(160, 'OMAN', 'OM'),
(161, 'PAKISTAN', 'PK'),
(162, 'PALAU', 'PW'),
(163, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS'),
(164, 'PANAMA', 'PA'),
(165, 'PAPUA NEW GUINEA', 'PG'),
(166, 'PARAGUAY', 'PY'),
(167, 'PERU', 'PE'),
(168, 'PHILIPPINES', 'PH'),
(169, 'PITCAIRN', 'PN'),
(170, 'POLAND', 'PL'),
(171, 'PORTUGAL', 'PT'),
(172, 'PUERTO RICO', 'PR'),
(173, 'QATAR', 'QA'),
(174, 'RÉUNION', 'RE'),
(175, 'ROMANIA', 'RO'),
(176, 'RUSSIAN FEDERATION', 'RU'),
(177, 'RWANDA', 'RW'),
(178, 'SAINT HELENA', 'SH'),
(179, 'SAINT KITTS AND NEVIS', 'KN'),
(180, 'SAINT LUCIA', 'LC'),
(181, 'SAINT PIERRE AND MIQUELON', 'PM'),
(182, 'SAINT VINCENT AND THE GRENADINES', 'VC'),
(183, 'SAMOA', 'WS'),
(184, 'SAN MARINO', 'SM'),
(185, 'SAO TOME AND PRINCIPE', 'ST'),
(186, 'SAUDI ARABIA', 'SA'),
(187, 'SENEGAL', 'SN'),
(188, 'SERBIA', 'RS'),
(189, 'SEYCHELLES', 'SC'),
(190, 'SIERRA LEONE', 'SL'),
(191, 'SINGAPORE', 'SG'),
(192, 'SLOVAKIA', 'SK'),
(193, 'SLOVENIA', 'SI'),
(194, 'SOLOMON ISLANDS', 'SB'),
(195, 'SOMALIA', 'SO'),
(196, 'SOUTH AFRICA', 'ZA'),
(197, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS'),
(198, 'SPAIN', 'ES'),
(199, 'SRI LANKA', 'LK'),
(200, 'SUDAN', 'SD'),
(201, 'SURINAME', 'SR'),
(202, 'SVALBARD AND JAN MAYEN', 'SJ'),
(203, 'SWAZILAND', 'SZ'),
(204, 'SWEDEN', 'SE'),
(205, 'SWITZERLAND', 'CH'),
(206, 'SYRIAN ARAB REPUBLIC', 'SY'),
(207, 'TAIWAN', 'TW'),
(208, 'TAJIKISTAN', 'TJ'),
(209, 'TANZANIA, UNITED REPUBLIC OF', 'TZ'),
(210, 'THAILAND', 'TH'),
(211, 'TIMOR-LESTE', 'TL'),
(212, 'TOGO', 'TG'),
(213, 'TOKELAU', 'TK'),
(214, 'TONGA', 'TO'),
(215, 'TRINIDAD AND TOBAGO', 'TT'),
(216, 'TUNISIA', 'TN'),
(217, 'TURKEY', 'TR'),
(218, 'TURKMENISTAN', 'TM'),
(219, 'TURKS AND CAICOS ISLANDS', 'TC'),
(220, 'TUVALU', 'TV'),
(221, 'UGANDA', 'UG'),
(222, 'UKRAINE', 'UA'),
(223, 'UNITED ARAB EMIRATES', 'AE'),
(224, 'UNITED KINGDOM', 'GB'),
(225, 'UNITED STATES', 'US'),
(226, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM'),
(227, 'URUGUAY', 'UY'),
(228, 'UZBEKISTAN', 'UZ'),
(229, 'VANUATU', 'VU'),
(230, 'VENEZUELA', 'VE'),
(231, 'VIET NAM', 'VN'),
(232, 'VIRGIN ISLANDS, BRITISH', 'VG'),
(233, 'VIRGIN ISLANDS, U.S.', 'VI'),
(234, 'WALLIS AND FUTUNA', 'WF'),
(235, 'WESTERN SAHARA', 'EH'),
(236, 'YEMEN', 'YE'),
(237, 'ZAMBIA', 'ZM'),
(238, 'ZIMBABWE', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `dietfoodgroup`
--

CREATE TABLE `dietfoodgroup` (
  `Sequence` int(11) NOT NULL,
  `FoodGroup` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `dietfoodgroup`
--

INSERT INTO `dietfoodgroup` (`Sequence`, `FoodGroup`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Cheese', '', 0, 0, 0, '', '', '2001-05-12 12:35:29', '', '', '', ''),
(2, 'Dairy', '', 0, 0, 0, '', '', '2001-05-12 12:35:42', '', '', '', ''),
(3, 'Fat', '', 0, 0, 0, '', '', '2001-05-12 12:35:54', '', '', '', ''),
(4, 'Fish', '', 0, 0, 0, '', '', '2001-05-12 12:36:04', '', '', '', ''),
(5, 'Fruit', '', 0, 0, 0, '', '', '2001-05-12 12:36:15', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dietfoodservingdictionary`
--

CREATE TABLE `dietfoodservingdictionary` (
  `Sequence` int(11) NOT NULL,
  `Food` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `FoodGroup` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Per100Grams` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Protien` int(11) DEFAULT '0',
  `Fat` int(11) DEFAULT '0',
  `Carbohydrates` int(11) DEFAULT '0',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `dietfoodservingdictionary`
--

INSERT INTO `dietfoodservingdictionary` (`Sequence`, `Food`, `FoodGroup`, `Per100Grams`, `Protien`, `Fat`, `Carbohydrates`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'ALMOND, DRY ROASTED', 'Grain', '100', 16, 52, 25, 0, 0, 0, '', '', '2001-05-12 12:45:32', '', '', '', ''),
(2, 'AMERICAN CHEESE,Processed', 'Cheese', '100', 22, 32, 2, 0, 0, 0, '', '', '2001-05-12 12:45:32', '', '', '', ''),
(3, 'AMERICAN CHEESE,Processed-Land O Lake', 'Cheese', '100', 21, 30, 2, 0, 0, 0, '', '', '2001-05-12 12:45:32', '', '', '', ''),
(4, 'APPLE BEEF- Beech-Nut', 'Meat', '100', 1, 5, 11, 0, 0, 0, '', '', '2001-05-12 12:45:32', '', '', '', ''),
(5, 'APPLE CHICKEN- Beech-Nut', 'Poultry', '100', 1, 2, 11, 0, 0, 0, '', '', '2001-05-12 12:45:32', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generalchurches`
--

CREATE TABLE `generalchurches` (
  `Sequence` int(11) NOT NULL,
  `Church` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalchurches`
--

INSERT INTO `generalchurches` (`Sequence`, `Church`, `Contact`, `PhoneNumber`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Roman Catholic Basilica', 'Rev. Murphy', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'St. Mary\'s', 'Rev. A. Bradshaw', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Unknown', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generalcountry`
--

CREATE TABLE `generalcountry` (
  `Sequence` int(11) NOT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalcountry`
--

INSERT INTO `generalcountry` (`Sequence`, `Country`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '- Select -', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Canada', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'China', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Cuba', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'England', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generalholidays`
--

CREATE TABLE `generalholidays` (
  `Sequence` int(11) NOT NULL,
  `Holiday` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalholidays`
--

INSERT INTO `generalholidays` (`Sequence`, `Holiday`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '2001-04-07', 'July 4th', 0, 0, 0, '', '', '', '', '', '', ''),
(2, '2001-09-02', 'Labor Day', 0, 0, 0, '', '', '', '', '', '', ''),
(3, '2001-12-25', 'Christmas', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generallanguages`
--

CREATE TABLE `generallanguages` (
  `Sequence` int(11) NOT NULL,
  `Language` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generallanguages`
--

INSERT INTO `generallanguages` (`Sequence`, `Language`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Chinese', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Duetch', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'English', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'French', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Japanese', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generalnews`
--

CREATE TABLE `generalnews` (
  `Sequence` int(11) NOT NULL,
  `Date` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Department` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `NewsItem` text COLLATE latin1_general_ci,
  `NewsItemDetail` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalnews`
--

INSERT INTO `generalnews` (`Sequence`, `Date`, `Department`, `NewsItem`, `NewsItemDetail`, `Archive`) VALUES
(1, '2002-05-29', 'General', 'UniCare announces the implementation of it\'s Web Products', NULL, 0),
(2, '2002-06-03', 'Announcements', 'WWW.ASYSCARE.COM goes live!', NULL, 0),
(3, '2002-06-03', 'Technical', 'User Interface upgrade completed', NULL, 0),
(4, '2002-06-03', 'Nutrition', 'Fathers Day Family meal planned', NULL, 0),
(5, '2002-06-03', 'Housekeeping', 'Cleanup required in basement', NULL, 0),
(7, '2002-06-03', 'Housekeeping', 'Superb job on Mothers Day', NULL, 0),
(8, '2002-06-03', 'Medical', 'Asyscare adopts ICD-10', 'Asyscare adopts ICD-10 Disease and Diagnosis coding  for XML and Hospital information exchange', 0),
(9, '2002-06-04', 'Technical', 'Rick Norman is pleased to announce his partnership with the UniCare Development Team ', NULL, 0),
(10, '2002-06-06', 'Concept', 'New format for Progress Notes to be considered', NULL, 0),
(11, '2002-06-06', 'Housekeeping', 'Cleanup required in basement', NULL, 0),
(12, '2000-12-21', 'Technical', 'Database analysis completed', NULL, 0),
(13, '2002-06-07', 'UniCare  programme', 'Checked out and pronounced an excellent Health Care Management Programme', NULL, 0),
(18, '2002-06-07', 'Technical', 'Exercise schedule complete', NULL, 0),
(25, '2002-06-18', 'Medical', 'Medical News addendum', NULL, 0),
(19, '2002-06-07', 'Management', 'Management meeting Monday', NULL, 0),
(20, '2002-06-08', 'Administration', 'Human Resource module is now complete and available', NULL, 0),
(21, '2002-06-08', 'Setup', 'Setup News system installed', NULL, 0),
(22, '2002-06-08', 'Social', 'Social News system installed', NULL, 0),
(23, '2002-06-08', 'Diet', 'Diet News system installed', NULL, 0),
(24, '2002-06-08', 'Medical', 'Medical News system installed', NULL, 0),
(26, '2002-06-19', 'Technical', 'http://www.pdamd.com/vertical/home.xml', 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test ', 0),
(27, '2002-06-20', 'Medical', 'Beware the dangers of improper oxygen storage', NULL, 0),
(28, '2002-06-23', 'Diet', 'Diet module taken off-line during construction of new module', 'No details available', 0);

-- --------------------------------------------------------

--
-- Table structure for table `generalprovincestate`
--

CREATE TABLE `generalprovincestate` (
  `Sequence` int(11) NOT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalprovincestate`
--

INSERT INTO `generalprovincestate` (`Sequence`, `ProvinceState`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Quebec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'British Columbia', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Montreal', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'New Brunswick', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Newfoundland', 0, 0, 0, '', '', '', '', '', '', ''),
(6, 'Nova Scotia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Prince Edward Island', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, ' Prince Edward Island', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Alberta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `generalraces`
--

CREATE TABLE `generalraces` (
  `Sequence` int(11) NOT NULL,
  `Race` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalraces`
--

INSERT INTO `generalraces` (`Sequence`, `Race`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Caucasian', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'African American', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Chinese', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Japanese', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Other', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generalreligions`
--

CREATE TABLE `generalreligions` (
  `Sequence` int(11) NOT NULL,
  `Religion` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalreligions`
--

INSERT INTO `generalreligions` (`Sequence`, `Religion`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Anglican', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Jehovahs Witness', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Muslim', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'None', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Pentecostal', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generalunitofmeasuredictionary`
--

CREATE TABLE `generalunitofmeasuredictionary` (
  `Sequence` int(11) NOT NULL,
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Standard` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `generalunitofmeasuredictionary`
--

INSERT INTO `generalunitofmeasuredictionary` (`Sequence`, `UnitofMeasure`, `Standard`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Centimerer(s)', 'Metric', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Feet', 'English', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Furlong', 'English', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Gallon(s)', 'English', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Gram(s)', 'Metric', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `governmentdepartmentsdirectory`
--

CREATE TABLE `governmentdepartmentsdirectory` (
  `Sequence` int(11) NOT NULL,
  `GovernmentDepartment` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `GovernmentName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DepartmentName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicareNumberA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicareNumberB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Account` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `governmentdepartmentsdirectory`
--

INSERT INTO `governmentdepartmentsdirectory` (`Sequence`, `GovernmentDepartment`, `GovernmentName`, `DepartmentName`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `PhoneNumber`, `Extension`, `FaxNumber`, `Contact`, `MedicareNumberA`, `MedicareNumberB`, `Account`, `Email`, `WWWAddress`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Health & Community Services', 'Government of Nfld & Lab.', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Social Services', 'Government of Nfld & Lab.', '', '', '', '', 'Newfoundland', 'Canada', '', '', '', '', '', '', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Languages`
--

CREATE TABLE `Languages` (
  `sequence` int(11) NOT NULL,
  `Language` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `LanguageCodes` varchar(2) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Languages`
--

INSERT INTO `Languages` (`sequence`, `Language`, `LanguageCodes`) VALUES
(0, 'Abkhazian', 'ab'),
(0, 'Afar', 'aa'),
(0, 'Afrikaans', 'af'),
(0, 'Albanian', 'sq'),
(0, 'Amharic', 'am'),
(0, 'Arabic', 'ar'),
(0, 'Aragonese', 'an'),
(0, 'Armenian', 'hy'),
(0, 'Assamese', 'as'),
(0, 'Aymara', 'ay'),
(0, 'Azerbaijani', 'az'),
(0, 'Bashkir', 'ba'),
(0, 'Basque', 'eu'),
(0, 'Bengali (Bangla)', 'bn'),
(0, 'Bhutani', 'dz'),
(0, 'Bihari', 'bh'),
(0, 'Bislama', 'bi'),
(0, 'Breton', 'br'),
(0, 'Bulgarian', 'bg'),
(0, 'Burmese', 'my'),
(0, 'Byelorussian (Belarusian)', 'be'),
(0, 'Cambodian', 'km'),
(0, 'Catalan', 'ca'),
(0, 'Cherokee', ' '),
(0, 'Chewa', ' '),
(0, 'Chinese', 'zh'),
(0, 'Chinese (Simplified)', 'zh'),
(0, 'Chinese (Traditional)', 'zh'),
(0, 'Corsican', 'co'),
(0, 'Croatian', 'hr'),
(0, 'Czech', 'cs'),
(0, 'Danish', 'da'),
(0, 'Divehi', ' '),
(0, 'Dutch', 'nl'),
(0, 'Edo', ' '),
(0, 'English', 'en'),
(0, 'Esperanto', 'eo'),
(0, 'Estonian', 'et'),
(0, 'Faeroese', 'fo'),
(0, 'Farsi', 'fa'),
(0, 'Fiji', 'fj'),
(0, 'Finnish', 'fi'),
(0, 'Flemish', ' '),
(0, 'French', 'fr'),
(0, 'Frisian', 'fy'),
(0, 'Fulfulde', ' '),
(0, 'Galician', 'gl'),
(0, 'Gaelic (Scottish)', 'gd'),
(0, 'Gaelic (Manx)', 'gv'),
(0, 'Georgian', 'ka'),
(0, 'German', 'de'),
(0, 'Greek', 'el'),
(0, 'Greenlandic', 'kl'),
(0, 'Guarani', 'gn'),
(0, 'Gujarati', 'gu'),
(0, 'Haitian Creole', 'ht'),
(0, 'Hausa', 'ha'),
(0, 'Hawaiian', ' '),
(0, 'Hebrew', 'he'),
(0, 'Hindi', 'hi'),
(0, 'Hungarian', 'hu'),
(0, 'Ibibio', ' '),
(0, 'Icelandic', 'is'),
(0, 'Ido', 'io'),
(0, 'Igbo', ' '),
(0, 'Indonesian', 'id'),
(0, 'Interlingua', 'ia'),
(0, 'Interlingue', 'ie'),
(0, 'Inuktitut', 'iu'),
(0, 'Inupiak', 'ik'),
(0, 'Irish', 'ga'),
(0, 'Italian', 'it'),
(0, 'Japanese', 'ja'),
(0, 'Javanese', 'jv'),
(0, 'Kannada', 'kn'),
(0, 'Kanuri', ' '),
(0, 'Kashmiri', 'ks'),
(0, 'Kazakh', 'kk'),
(0, 'Kinyarwanda (Ruanda)', 'rw'),
(0, 'Kirghiz', 'ky'),
(0, 'Kirundi (Rundi)', 'rn'),
(0, 'Konkani', ' '),
(0, 'Korean', 'ko'),
(0, 'Kurdish', 'ku'),
(0, 'Laothian', 'lo'),
(0, 'Latin', 'la'),
(0, 'Latvian (Lettish)', 'lv'),
(0, 'Limburgish ( Limburger)', 'li'),
(0, 'Lingala', 'ln'),
(0, 'Lithuanian', 'lt'),
(0, 'Macedonian', 'mk'),
(0, 'Malagasy', 'mg'),
(0, 'Malay', 'ms'),
(0, 'Malayalam', 'ml'),
(0, 'Maltese', 'mt'),
(0, 'Maori', 'mi'),
(0, 'Marathi', 'mr'),
(0, 'Moldavian', 'mo'),
(0, 'Mongolian', 'mn'),
(0, 'Nauru', 'na'),
(0, 'Nepali', 'ne'),
(0, 'Norwegian', 'no'),
(0, 'Occitan', 'oc'),
(0, 'Oriya', 'or'),
(0, 'Oromo (Afaan Oromo)', 'om'),
(0, 'Papiamentu', ' '),
(0, 'Pashto (Pushto)', 'ps'),
(0, 'Polish', 'pl'),
(0, 'Portuguese', 'pt'),
(0, 'Punjabi', 'pa'),
(0, 'Quechua', 'qu'),
(0, 'Rhaeto-Romance', 'rm'),
(0, 'Romanian', 'ro'),
(0, 'Russian', 'ru'),
(0, 'Sami (Lappish)', ' '),
(0, 'Samoan', 'sm'),
(0, 'Sangro', 'sg'),
(0, 'Sanskrit', 'sa'),
(0, 'Serbian', 'sr'),
(0, 'Serbo-Croatian', 'sh'),
(0, 'Sesotho', 'st'),
(0, 'Setswana', 'tn'),
(0, 'Shona', 'sn'),
(0, 'Sichuan Yi', 'ii'),
(0, 'Sindhi', 'sd'),
(0, 'Sinhalese', 'si'),
(0, 'Siswati', 'ss'),
(0, 'Slovak', 'sk'),
(0, 'Slovenian', 'sl'),
(0, 'Somali', 'so'),
(0, 'Spanish', 'es'),
(0, 'Sundanese', 'su'),
(0, 'Swahili (Kiswahili)', 'sw'),
(0, 'Swedish', 'sv'),
(0, 'Syriac', ' '),
(0, 'Tagalog', 'tl'),
(0, 'Tajik', 'tg'),
(0, 'Tamazight', ' '),
(0, 'Tamil', 'ta'),
(0, 'Tatar', 'tt'),
(0, 'Telugu', 'te'),
(0, 'Thai', 'th'),
(0, 'Tibetan', 'bo'),
(0, 'Tigrinya', 'ti'),
(0, 'Tonga', 'to'),
(0, 'Tsonga', 'ts'),
(0, 'Turkish', 'tr'),
(0, 'Turkmen', 'tk'),
(0, 'Twi', 'tw'),
(0, 'Uighur', 'ug'),
(0, 'Ukrainian', 'uk'),
(0, 'Urdu', 'ur'),
(0, 'Uzbek', 'uz'),
(0, 'Venda', ' '),
(0, 'Vietnamese', 'vi'),
(0, 'Volapük', 'vo'),
(0, 'Wallon', 'wa'),
(0, 'Welsh', 'cy'),
(0, 'Wolof', 'wo'),
(0, 'Xhosa', 'xh'),
(0, 'Yi', ' '),
(0, 'Yiddish', 'yi'),
(0, 'Yoruba', 'yo'),
(0, 'Zulu', 'zu'),
(0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalassistanceleveldictionary`
--

CREATE TABLE `medicalassistanceleveldictionary` (
  `Sequence` int(11) NOT NULL,
  `AssistanceLevel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalassistanceleveldictionary`
--

INSERT INTO `medicalassistanceleveldictionary` (`Sequence`, `AssistanceLevel`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Maximum', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Minimal', 'Minimal assistance', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Moderate', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'None', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Total', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalbloodtypedictionary`
--

CREATE TABLE `medicalbloodtypedictionary` (
  `Sequence` int(11) NOT NULL,
  `BloodType` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalbloodtypedictionary`
--

INSERT INTO `medicalbloodtypedictionary` (`Sequence`, `BloodType`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'A-', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'A+', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'AB-', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'AB+', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'B-', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcarecode`
--

CREATE TABLE `medicalcarecode` (
  `Sequence` int(11) NOT NULL,
  `CareCode` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Description` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalcarecode`
--

INSERT INTO `medicalcarecode` (`Sequence`, `CareCode`, `Description`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Constant Supervision', 'Needs constant supervision in order to complete the task', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Dependent', 'Unable to complete the task even when assistance is provided', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Independent', 'Able to perform all aspects of task independently, may use special devices', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Minimal Assistance', 'Needs some assistance at all times in order to complete the task', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Moderate Assistance', 'Needs assistance at intervals to complete the taks', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcarecomponent`
--

CREATE TABLE `medicalcarecomponent` (
  `Sequence` int(11) NOT NULL,
  `CareComponent` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalcarecomponent`
--

INSERT INTO `medicalcarecomponent` (`Sequence`, `CareComponent`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Medical Status', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Mental/Sensory/Percptual', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Personal Functions', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcarelevel`
--

CREATE TABLE `medicalcarelevel` (
  `Sequence` int(11) NOT NULL,
  `clientLevel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalcarelevel`
--

INSERT INTO `medicalcarelevel` (`Sequence`, `clientLevel`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'I', 'Level I', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'II', 'Level II', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'III', 'Level III', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'IV', 'Level IV', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcarelevelcomponent`
--

CREATE TABLE `medicalcarelevelcomponent` (
  `Sequence` int(11) NOT NULL,
  `CareLevel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `CareComponent` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalcarelevelcomponent`
--

INSERT INTO `medicalcarelevelcomponent` (`Sequence`, `CareLevel`, `CareComponent`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'I', 'Personal Functions', 'Is independently mobile, with or without mechanical aids, inclusive of a wheelchair', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'I', 'Personal Functions', 'May need specialized aids for independently transferring', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'I', 'Personal Functions', 'May require limited assistance with bathing, dressing, and/or grooming', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'I', 'Personal Functions', 'May require reminder for routine toileting', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'I', 'Personal Functions', 'May require minimal assistance with toileting', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalclinicstaffdirectory`
--

CREATE TABLE `medicalclinicstaffdirectory` (
  `Sequence` int(11) NOT NULL,
  `FullName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FirstName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddleName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Address1` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Address2` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Province` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Region` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `ClinicName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicareNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Title` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkPhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkExtension` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `HomePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MobilePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Birthdate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LastMeetingDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `DoctorType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ReferredBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Photo` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalclinicstaffdirectory`
--

INSERT INTO `medicalclinicstaffdirectory` (`Sequence`, `FullName`, `FirstName`, `MiddleName`, `LastName`, `Address1`, `Address2`, `City`, `Province`, `Country`, `PostalCode`, `Region`, `ClinicName`, `MedicareNumber`, `Title`, `WorkPhone`, `WorkExtension`, `HomePhone`, `MobilePhone`, `FaxNumber`, `Email`, `Birthdate`, `LastMeetingDate`, `DoctorType`, `ReferredBy`, `Notes`, `Photo`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Dr. Jane Doe', 'Jane', 'M.', 'Doe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Dr. John Doe', 'John', 'J.', 'Doe', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalconditionsdictionary`
--

CREATE TABLE `medicalconditionsdictionary` (
  `Sequence` int(11) NOT NULL,
  `MedicalCondition` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialNeedA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialNeedB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialNeedC` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialNeedD` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpecialNeedE` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalconditionsdictionary`
--

INSERT INTO `medicalconditionsdictionary` (`Sequence`, `MedicalCondition`, `Description`, `SpecialNeedA`, `SpecialNeedB`, `SpecialNeedC`, `SpecialNeedD`, `SpecialNeedE`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Allergy - Pollen', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-05-01 19:18:32', '', '', '', ''),
(2, 'Angina', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:47:18', '', '', '', ''),
(3, 'Arthritic', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-05-01 15:10:15', '', '', '', ''),
(4, 'Cancer', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-05-01 15:10:30', '', '', '', ''),
(5, 'Diabetic', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:47:07', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldiagnosticsdictionary`
--

CREATE TABLE `medicaldiagnosticsdictionary` (
  `Sequence` int(11) NOT NULL,
  `Diagnostic` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `Preparation` text COLLATE latin1_general_ci,
  `Fasting` tinyint(3) UNSIGNED DEFAULT NULL,
  `FastingTime` smallint(6) DEFAULT '0',
  `FastingTimePeriod` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldiagnosticsdictionary`
--

INSERT INTO `medicaldiagnosticsdictionary` (`Sequence`, `Diagnostic`, `Description`, `Preparation`, `Fasting`, `FastingTime`, `FastingTimePeriod`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '/Q scan', '', '', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, '17-hydroxycorticosteroids', '', '', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, '17-ketosteroids', '', '', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, '17-KS', '', '', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, '17-OH progesterone', '', '', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldiseasecategorydictionary`
--

CREATE TABLE `medicaldiseasecategorydictionary` (
  `Sequence` int(11) NOT NULL,
  `Category` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldiseasecategorydictionary`
--

INSERT INTO `medicaldiseasecategorydictionary` (`Sequence`, `Category`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Adrenal Gland Disorders', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Alzheimer\'s Disease', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Arthritis & Rheumatic Diseases', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Cancer', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Dermatology', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldiseasedictionary`
--

CREATE TABLE `medicaldiseasedictionary` (
  `Sequence` int(11) NOT NULL,
  `Disease` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `Category` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SymptomPrimary` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SymptomSecondary` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Remedy` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldiseasedictionary`
--

INSERT INTO `medicaldiseasedictionary` (`Sequence`, `Disease`, `Description`, `Category`, `SymptomPrimary`, `SymptomSecondary`, `Remedy`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Aarskog syndrome', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Aarskog-Scott syndrome', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Aase syndrome', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Aase-Smith syndrome', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'AAT deficiency', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldoctordictionary`
--

CREATE TABLE `medicaldoctordictionary` (
  `Sequence` int(11) NOT NULL,
  `DoctorType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AreaOfSpecialty` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldoctordictionary`
--

INSERT INTO `medicaldoctordictionary` (`Sequence`, `DoctorType`, `AreaOfSpecialty`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'General Physician', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Gynecologist', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Surgeon', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Urologist', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldosagetypesdictionary`
--

CREATE TABLE `medicaldosagetypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `DosageType` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldosagetypesdictionary`
--

INSERT INTO `medicaldosagetypesdictionary` (`Sequence`, `DosageType`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Gelcap', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Injection', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Oral', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Patch', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Supository', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldrugcategorydictionary`
--

CREATE TABLE `medicaldrugcategorydictionary` (
  `Sequence` int(11) NOT NULL,
  `DrugCategory` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldrugcategorydictionary`
--

INSERT INTO `medicaldrugcategorydictionary` (`Sequence`, `DrugCategory`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Inhalation', '', 0, 0, 0, '', '', '2001-04-30 12:33:19', '', '', '', ''),
(2, 'Injection', '', 0, 0, 0, '', '', '2001-04-30 12:33:26', '', '', '', ''),
(3, 'Nasal', '', 0, 0, 0, '', '', '2001-04-30 12:33:39', '', '', '', ''),
(4, 'Opthalmalic', '', 0, 0, 0, '', '', '2001-04-30 12:33:44', '', '', '', ''),
(5, 'Systemic', '', 0, 0, 0, '', '', '2001-04-30 12:33:05', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldrugdictionary`
--

CREATE TABLE `medicaldrugdictionary` (
  `Sequence` int(11) NOT NULL,
  `BrandName` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `GenericName` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `YearIntroduced` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `DIN` varchar(8) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DrugFamily` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DrugCategory` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PrescriptionRequired` tinyint(3) UNSIGNED DEFAULT NULL,
  `Interaction1` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Interaction2` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Interaction3` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Interaction4` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `IntendedEffect` text COLLATE latin1_general_ci,
  `LocationofAction` text COLLATE latin1_general_ci,
  `MethodofAction` text COLLATE latin1_general_ci,
  `TimeforAction` int(11) DEFAULT '0',
  `SideEffects` text COLLATE latin1_general_ci,
  `AdverseEffects` text COLLATE latin1_general_ci,
  `HabitForming` tinyint(3) UNSIGNED DEFAULT NULL,
  `OverdoseEffect` text COLLATE latin1_general_ci,
  `OverdoseRemedy` text COLLATE latin1_general_ci,
  `AlcoholInteraction` tinyint(3) UNSIGNED DEFAULT NULL,
  `PatientRestriction` text COLLATE latin1_general_ci,
  `InteractionNotes` text COLLATE latin1_general_ci,
  `Storage` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldrugdictionary`
--

INSERT INTO `medicaldrugdictionary` (`Sequence`, `BrandName`, `GenericName`, `YearIntroduced`, `DIN`, `DrugFamily`, `DrugCategory`, `PrescriptionRequired`, `Interaction1`, `Interaction2`, `Interaction3`, `Interaction4`, `IntendedEffect`, `LocationofAction`, `MethodofAction`, `TimeforAction`, `SideEffects`, `AdverseEffects`, `HabitForming`, `OverdoseEffect`, `OverdoseRemedy`, `AlcoholInteraction`, `PatientRestriction`, `InteractionNotes`, `Storage`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(17, 'Abacavir', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:00:48', '', '', '', ''),
(18, 'Abbokinase', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:00:48', '', '', '', ''),
(19, 'Abbokinase Open-Cath', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:00:48', '', '', '', ''),
(21, 'Abitrate', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:00:48', '', '', '', ''),
(22, 'Abreva', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', 0, '', '', 0, '', '', '', '', 0, 0, 0, '', '', '2001-04-30 12:00:48', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldrugdosagesdictionary`
--

CREATE TABLE `medicaldrugdosagesdictionary` (
  `Sequence` int(11) NOT NULL,
  `BrandName` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Dosage` int(11) NOT NULL DEFAULT '0',
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosageType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldrugdosagesdictionary`
--

INSERT INTO `medicaldrugdosagesdictionary` (`Sequence`, `BrandName`, `Dosage`, `UnitofMeasure`, `DosageType`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '10 Benzagel', 10, 'Milligram(s)', 'Tablet', 0, 0, 0, '', '', '2001-04-30 12:26:54', '', '', '', ''),
(2, '10 Benzagel', 20, 'Milligram(s)', 'Tablet', 0, 0, 0, '', '', '2001-04-30 12:26:54', '', '', '', ''),
(3, '10 Benzagel', 30, 'Milligram(s)', 'Tablet', 0, 0, 0, '', '', '2001-04-30 12:26:54', '', '', '', ''),
(4, '10 Benzagel', 40, 'Milligram(s)', 'Tablet', 0, 0, 0, '', '', '2001-04-30 12:26:54', '', '', '', ''),
(5, '10 Benzagel', 50, 'Milligram(s)', 'Tablet', 0, 0, 0, '', '', '2001-04-30 12:26:54', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaldrugfamilydictionary`
--

CREATE TABLE `medicaldrugfamilydictionary` (
  `Sequence` int(11) NOT NULL,
  `DrugFamily` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaldrugfamilydictionary`
--

INSERT INTO `medicaldrugfamilydictionary` (`Sequence`, `DrugFamily`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Adrenocortical Steroid', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Analgesic', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Antacids', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Anti-anginal', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Antibiotic', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalhospitalsdirectory`
--

CREATE TABLE `medicalhospitalsdirectory` (
  `Sequence` int(11) NOT NULL,
  `Hospital` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Type` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `ContactName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AdministrativeDirector` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Photo` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalhospitalsdirectory`
--

INSERT INTO `medicalhospitalsdirectory` (`Sequence`, `Hospital`, `Type`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `ContactName`, `AdministrativeDirector`, `PhoneNumber`, `Extension`, `FaxNumber`, `Email`, `WWWAddress`, `Notes`, `Photo`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Health Science Complex', 'General and Emergency', 'Prince Philip Drive', '', '', 'Newfoundland', 'Canada', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Janeway', 'Childrens', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'QEII', 'Clinic', '', '', '', 'Nova Scotia', 'Canada', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'St. Clares Mercy Hospital', 'General', '455 Lemarchant Road', '', 'St. John\'s', 'Newfoundland', 'Canada', 'A1E1A1', 'Regina Powell', 'Judith Harvey', '7095764454', '', '7985764455', 'email@stclares.gov', 'WWW.STCLARES.GOV', 'Meduim size primary care facility. CAT, MRI', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Vancouver Helalth Center', 'Emergency', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(6, '- Select -', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicalidc9substancedictionary`
--

CREATE TABLE `medicalidc9substancedictionary` (
  `Sequence` int(11) NOT NULL,
  `Substance` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Poisoning` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Accident` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Therpeutic` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `SuicideAttempt` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Assault` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Undetermined` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalidc9substancedictionary`
--

INSERT INTO `medicalidc9substancedictionary` (`Sequence`, `Substance`, `Poisoning`, `Accident`, `Therpeutic`, `SuicideAttempt`, `Assault`, `Undetermined`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Ammonium fumes (any usage)', '987.8', 'E869.8', '-', 'E952.8', 'E962.2', 'E982.8', 0, 0, 0, '', '', '2001-05-01 13:42:34', '', '', '', ''),
(2, 'Ammonium industrial', '983.2', 'E864.2', '-', 'E950.7', 'E962.1', 'E980.6', 0, 0, 0, '', '', '2001-05-01 13:42:34', '', '', '', ''),
(3, 'Ammonium ichthyosulronate', '976.4', 'E858.7', 'E946.4', 'E950.4', 'E962.0', 'E980.4', 0, 0, 0, '', '', '2001-05-01 13:42:34', '', '', '', ''),
(4, 'Ammonium mandelate', '961.9', 'E857', 'E931.9', 'E950.4', 'E962.0', 'E980.4', 0, 0, 0, '', '', '2001-05-01 13:42:34', '', '', '', ''),
(5, 'Amobarbital', '967.0', 'E851', 'E937.0', 'E950.1', 'E962.0', 'E980.1', 0, 0, 0, '', '', '2001-05-01 13:42:34', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalincidentsdictionary`
--

CREATE TABLE `medicalincidentsdictionary` (
  `Sequence` int(11) NOT NULL,
  `MedicalIncident` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalincidentsdictionary`
--

INSERT INTO `medicalincidentsdictionary` (`Sequence`, `MedicalIncident`, `Description`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(2, 'Monitoring', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Urine Specimen', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Vital Signs', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Blood Pressure', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(6, 'Saline Drip', 'Saline Drip', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalinjuryclassificationdictionary`
--

CREATE TABLE `medicalinjuryclassificationdictionary` (
  `Sequence` int(11) NOT NULL,
  `InjuryClassificatiuon` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalinjuryclassificationdictionary`
--

INSERT INTO `medicalinjuryclassificationdictionary` (`Sequence`, `InjuryClassificatiuon`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Abuse', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Accidental', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Fall', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Hygiene', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Natural Aging', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalinjurydictionary`
--

CREATE TABLE `medicalinjurydictionary` (
  `Sequence` int(11) NOT NULL,
  `Injury` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(75) COLLATE latin1_general_ci DEFAULT NULL,
  `LongDescription` text COLLATE latin1_general_ci,
  `InjuryClassificatiuon` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Emergency` tinyint(3) UNSIGNED DEFAULT NULL,
  `ImmediateTreatment` text COLLATE latin1_general_ci,
  `Notes` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalinjurydictionary`
--

INSERT INTO `medicalinjurydictionary` (`Sequence`, `Injury`, `Description`, `LongDescription`, `InjuryClassificatiuon`, `Emergency`, `ImmediateTreatment`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Allergic reactions', '', '', 'Natural Aging', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Amputation, traumatic', '', '', 'Accidental', 1, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Animal bites', '', '', 'Accidental', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'basilar skull fracture', '', '', 'Accidental', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'bedbug bite', '', '', 'Hygiene', 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicallaboratorydirectory`
--

CREATE TABLE `medicallaboratorydirectory` (
  `Sequence` int(11) NOT NULL,
  `Laboratory` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Doctor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicareNumberA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicareNumberB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Account` int(11) DEFAULT '0',
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Photo` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicallaboratorydirectory`
--

INSERT INTO `medicallaboratorydirectory` (`Sequence`, `Laboratory`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `PhoneNumber`, `Extension`, `FaxNumber`, `Contact`, `Doctor`, `MedicareNumberA`, `MedicareNumberB`, `Account`, `Email`, `WWWAddress`, `Photo`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Grace', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Health Sciences Complex', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Janeway', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'St. Clares Mercy Hospital', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicallaboratorysourcesdictionary`
--

CREATE TABLE `medicallaboratorysourcesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Source` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicallaboratorytestsources`
--

CREATE TABLE `medicallaboratorytestsources` (
  `Sequence` int(11) NOT NULL,
  `Source` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicallaboratorytestsources`
--

INSERT INTO `medicallaboratorytestsources` (`Sequence`, `Source`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Blood', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Cerebrolspinal Fluid', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Feces', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Joint Fluid', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Other', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalpartofbodydictionary`
--

CREATE TABLE `medicalpartofbodydictionary` (
  `Sequence` int(11) NOT NULL,
  `PartofBody` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicalpharmaciesdirectory`
--

CREATE TABLE `medicalpharmaciesdirectory` (
  `Sequence` int(11) NOT NULL,
  `Pharmacy` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Operator` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Title` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Region` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Phone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MobilePhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalpharmaciesdirectory`
--

INSERT INTO `medicalpharmaciesdirectory` (`Sequence`, `Pharmacy`, `Operator`, `Title`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `PostalCode`, `Region`, `Country`, `Phone`, `Extension`, `MobilePhone`, `FaxNumber`, `Email`, `WWWAddress`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Lawtons - Topsail Road', 'Sobey\'s', 'Lawtons', '1345 Topsail Road', '', 'Mount Pearl', 'Newfoundland', 'A1W1H3', 'Nfld', 'Canada', '7097221232', '', '', '', 'email@lawtons.com', 'WWW.LAWTONS.COM', 'Open 24 hrs.', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Shoppers - Villa Nova', 'Owner', 'Shoppers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Value Drugs', 'A. Body', 'Mr.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalphysiciandirectory`
--

CREATE TABLE `medicalphysiciandirectory` (
  `Sequence` int(11) NOT NULL,
  `Doctor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Title` varchar(10) COLLATE latin1_general_ci DEFAULT 'Dr.',
  `FirstName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddleName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Address1` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Address2` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `ClinicName` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Region` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkPhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkExtension` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `HomePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MobilePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Birthdate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `DoctorType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Photo` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalphysiciandirectory`
--

INSERT INTO `medicalphysiciandirectory` (`Sequence`, `Doctor`, `Title`, `FirstName`, `MiddleName`, `LastName`, `Address1`, `Address2`, `City`, `ProvinceState`, `Country`, `PostalCode`, `ClinicName`, `Region`, `WorkPhone`, `WorkExtension`, `HomePhone`, `MobilePhone`, `FaxNumber`, `Email`, `WWWAddress`, `Birthdate`, `DoctorType`, `Notes`, `Photo`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Dr. John Stone', 'Dr.', 'John', '', 'Stone', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'General Physician', '', '', 0, 0, 0, '', '', '2001-05-01 18:36:41', '', '', '', ''),
(2, 'Dr. Marie Smith', 'Dr.', 'Marie', '', 'Smith', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-05-01 19:43:16', '', '', '', ''),
(3, 'Dr. William Edwards', 'Dr.', 'William', '', 'Edwards', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-05-01 19:43:35', '', '', '', ''),
(4, 'Dr. William Holden', 'Dr.', 'William', '', 'Holden', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '2001-05-01 19:42:57', '', '', '', ''),
(5, '- Select -', 'Dr.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicalpoisioningdictionary`
--

CREATE TABLE `medicalpoisioningdictionary` (
  `Sequence` int(11) NOT NULL,
  `Poisioning` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Action` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalpoisioningdictionary`
--

INSERT INTO `medicalpoisioningdictionary` (`Sequence`, `Poisioning`, `Description`, `Action`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Acetaminophen overdose', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Acetomeroctol overdose', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Acetone ingestion', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Adrenergic bronchodilators overdose', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'After shaves', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalspecialneedsdictionary`
--

CREATE TABLE `medicalspecialneedsdictionary` (
  `Sequence` int(11) NOT NULL,
  `SpecialNeed` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicalsurgerydictionary`
--

CREATE TABLE `medicalsurgerydictionary` (
  `Sequence` int(11) NOT NULL,
  `Surgery` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `SurgeryType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Preparation` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostOpAttention` text COLLATE latin1_general_ci,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalsurgerydictionary`
--

INSERT INTO `medicalsurgerydictionary` (`Sequence`, `Surgery`, `SurgeryType`, `Preparation`, `PostOpAttention`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'A/P repair', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'abdominal birth', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'abdominal delivery', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Abdominal exploration', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'abdominal hysterectomy', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalsurgerytypedictionary`
--

CREATE TABLE `medicalsurgerytypedictionary` (
  `Sequence` int(11) NOT NULL,
  `SurgeryType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalsurgerytypedictionary`
--

INSERT INTO `medicalsurgerytypedictionary` (`Sequence`, `SurgeryType`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Appendectomy', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalsymptomsdictionary`
--

CREATE TABLE `medicalsymptomsdictionary` (
  `Sequence` int(11) NOT NULL,
  `Symptom` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PossibleCause` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `EmergencyCondition` tinyint(3) UNSIGNED DEFAULT NULL,
  `ImmediateAction` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalsymptomsdictionary`
--

INSERT INTO `medicalsymptomsdictionary` (`Sequence`, `Symptom`, `PossibleCause`, `EmergencyCondition`, `ImmediateAction`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Abdomen, swollen', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Abdominal bloating', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'abdominal cramps', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'abdominal distention', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Abdominal fullness prematurely after meals', '', 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaltherapiesdictionary`
--

CREATE TABLE `medicaltherapiesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Therapy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaltherapiesdictionary`
--

INSERT INTO `medicaltherapiesdictionary` (`Sequence`, `Therapy`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Aromatherapy', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Chiropracter', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Foot Massage', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Hot Bath', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Massage', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaltherapistsdirectory`
--

CREATE TABLE `medicaltherapistsdirectory` (
  `Sequence` int(11) NOT NULL,
  `Therapist` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddleName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Started` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `HSTNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Account` int(11) DEFAULT '0',
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Hospital` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaltherapistsdirectory`
--

INSERT INTO `medicaltherapistsdirectory` (`Sequence`, `Therapist`, `Contact`, `MiddleName`, `LastName`, `Started`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `PhoneNumber`, `Extension`, `FaxNumber`, `HSTNumber`, `Account`, `Email`, `WWWAddress`, `Hospital`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Halliday Personal Care Home', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'LeMarchant Chiropractic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Massage Specialties', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Residence', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Villa Nova Physiotherapy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicaltherapistsservicesdirectory`
--

CREATE TABLE `medicaltherapistsservicesdirectory` (
  `Sequence` int(11) NOT NULL,
  `Therapist` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Therapy` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Fee` double NOT NULL DEFAULT '0',
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicaltherapistsservicesdirectory`
--

INSERT INTO `medicaltherapistsservicesdirectory` (`Sequence`, `Therapist`, `Therapy`, `Fee`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Halliday Personal Care Home', 'Aromatherapy', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'LeMarchant Chiropractic', 'Chiropracter', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Massage Specialties', 'Massage', 20, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Residence', 'Aromatherapy', 10, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Villa Nova Physiotherapy', 'Foot Massage', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicalunitofmeasure`
--

CREATE TABLE `medicalunitofmeasure` (
  `Sequence` int(11) NOT NULL,
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Standard` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `medicalunitofmeasure`
--

INSERT INTO `medicalunitofmeasure` (`Sequence`, `UnitofMeasure`, `Standard`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Gram(s)', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Microgram(s)', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Milligram(s)', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Millilitre(s)', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicarecodesdictionary`
--

CREATE TABLE `medicarecodesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Code` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PayRateA` double DEFAULT NULL,
  `PayRateB` double DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `DefaultResidence` int(11) DEFAULT '0',
  `LastResidence` int(11) DEFAULT '0',
  `Lastclient` int(11) DEFAULT '0',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`DefaultResidence`, `LastResidence`, `Lastclient`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(3, 3, 39, 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceaccomodationdictionary`
--

CREATE TABLE `resourceaccomodationdictionary` (
  `Sequence` int(11) NOT NULL,
  `Accomodations` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceaccomodationdictionary`
--

INSERT INTO `resourceaccomodationdictionary` (`Sequence`, `Accomodations`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Apartment', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Off-premises', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Private', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Semi-Private', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Single Room Occupancy', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceaccountsdirectory`
--

CREATE TABLE `resourceaccountsdirectory` (
  `Number` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `clientNumber` int(11) DEFAULT '0',
  `Type` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceaccountsdirectory`
--

INSERT INTO `resourceaccountsdirectory` (`Number`, `client`, `clientNumber`, `Type`, `Description`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(5, 'Able, John', 0, '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(6, 'Boyle, Jerry', 0, '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(7, 'Chafe, William', 0, '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(8, 'Doherty, Fred', 0, '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(9, 'Goodyear, Kenneth', 0, '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceaccreditation`
--

CREATE TABLE `resourceaccreditation` (
  `Sequence` int(11) NOT NULL,
  `AccreditationDate` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Hospital` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Doctor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccreditationCategory` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceaccreditation`
--

INSERT INTO `resourceaccreditation` (`Sequence`, `AccreditationDate`, `Hospital`, `Doctor`, `AccreditationCategory`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '', 'Health Science Complex', 'Dr. Bill Holden', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceassistancedictionary`
--

CREATE TABLE `resourceassistancedictionary` (
  `Sequence` int(11) NOT NULL,
  `Assistance` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Fee` double DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceassistancedictionary`
--

INSERT INTO `resourceassistancedictionary` (`Sequence`, `Assistance`, `Fee`, `Description`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Ambulance', 50, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Taxi Service', 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcebedfacilitytypesdictionary`
--

CREATE TABLE `resourcebedfacilitytypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `BedFacilityType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcebedfacilitytypesdictionary`
--

INSERT INTO `resourcebedfacilitytypesdictionary` (`Sequence`, `BedFacilityType`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Respite', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Subsidized', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Unsubisidized', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcebedtypesdictionary`
--

CREATE TABLE `resourcebedtypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `BedType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcebedtypesdictionary`
--

INSERT INTO `resourcebedtypesdictionary` (`Sequence`, `BedType`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Double', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Queen', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Single', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceclassdictionary`
--

CREATE TABLE `resourceclassdictionary` (
  `Sequence` int(11) NOT NULL,
  `Class` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceclassdictionary`
--

INSERT INTO `resourceclassdictionary` (`Sequence`, `Class`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Elderly', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Mixed Population', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Class I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Class II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Class III', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resourcedeliverieslog`
--

CREATE TABLE `resourcedeliverieslog` (
  `Sequence` int(11) NOT NULL,
  `PurchaseOrderNumber` int(11) NOT NULL DEFAULT '0',
  `EmployeeNumber` int(11) NOT NULL DEFAULT '0',
  `ShippedVia` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ShipperTrackingCode` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ShipDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ShipperPhoneNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ShippedFrom` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DestinationAddress` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `DestinationCity` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceStateCode` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DestinationPostalCode` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DestinationCountry` varchar(50) COLLATE latin1_general_ci DEFAULT 'Canada',
  `ArrivalDateTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CurrentLocation` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PackageDimensions` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PackageWeight` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PickUpLocation` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `PickUpDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ReceivedBy` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `FreightCharge` double DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcedepartmentdirectory`
--

CREATE TABLE `resourcedepartmentdirectory` (
  `Sequence` int(11) NOT NULL,
  `Department` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcedepartmentdirectory`
--

INSERT INTO `resourcedepartmentdirectory` (`Sequence`, `Department`, `Description`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Kitchen', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Laundry', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Other', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Sanitation', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Transportation', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcedirectory`
--

CREATE TABLE `resourcedirectory` (
  `ResidenceNumber` int(11) NOT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DefaultResidence` tinyint(3) UNSIGNED DEFAULT '0',
  `ResidenceLevel` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Location` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Region` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Licensee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Title` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `Phone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `WorkExtension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `HomePhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MobilePhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `FireEmergency` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `MedicalEmergency` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `OtherEmergency` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StartDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberofUnits` int(11) DEFAULT '0',
  `UnitsUnoccupied` int(11) DEFAULT '0',
  `NumberonStaff` int(11) DEFAULT '0',
  `DoctorsonStaff` int(11) DEFAULT '0',
  `Type` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Photograph` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `SubsudizedRegularBeds` int(11) DEFAULT '0',
  `SRBOccupied` int(11) DEFAULT '0',
  `NonSubsidizedBeds` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `NSBOccupied` int(11) DEFAULT '0',
  `StructuralLevel` int(11) DEFAULT '0',
  `Structure` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WheelChairAccesible` tinyint(3) UNSIGNED DEFAULT NULL,
  `AccomodationsA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccomodationsB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccomodationsC` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccomodationsD` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccomodationsE` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ApprovedLevelI` tinyint(3) UNSIGNED DEFAULT NULL,
  `ApprovedLevelIBeds` int(11) DEFAULT '0',
  `ApprovedLevelII` tinyint(3) UNSIGNED DEFAULT NULL,
  `ApprovedLevelIIBeds` int(11) DEFAULT '0',
  `ApprovedLevelIII` tinyint(3) UNSIGNED DEFAULT NULL,
  `ApprovedLevelIIIBeds` int(11) DEFAULT '0',
  `ApprovedLevelIV` tinyint(3) UNSIGNED DEFAULT NULL,
  `ApprovedLevelIVBeds` int(11) DEFAULT '0',
  `GenderMix` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Class` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcedirectory`
--

INSERT INTO `resourcedirectory` (`ResidenceNumber`, `Residence`, `DefaultResidence`, `ResidenceLevel`, `Location`, `Region`, `Description`, `Licensee`, `Title`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `Phone`, `WorkExtension`, `HomePhone`, `MobilePhone`, `FaxNumber`, `FireEmergency`, `MedicalEmergency`, `OtherEmergency`, `Email`, `StartDate`, `NumberofUnits`, `UnitsUnoccupied`, `NumberonStaff`, `DoctorsonStaff`, `Type`, `Photograph`, `Notes`, `SubsudizedRegularBeds`, `SRBOccupied`, `NonSubsidizedBeds`, `NSBOccupied`, `StructuralLevel`, `Structure`, `WheelChairAccesible`, `AccomodationsA`, `AccomodationsB`, `AccomodationsC`, `AccomodationsD`, `AccomodationsE`, `ApprovedLevelI`, `ApprovedLevelIBeds`, `ApprovedLevelII`, `ApprovedLevelIIBeds`, `ApprovedLevelIII`, `ApprovedLevelIIIBeds`, `ApprovedLevelIV`, `ApprovedLevelIVBeds`, `GenderMix`, `Class`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Bayside Manor', 0, '', 'Long Pond', 'St. John\'s Region', 'Boyd Canning', '', '', 'P.O. Box 502', '', 'Manuels', 'Newfoundland', 'Canada', 'A1W1N1', '7098344013', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', 36, 0, '', 0, 2, 'Story', 0, 'Private', 'Semi-Private', 'Ward - 1 to 3', '', '', 1, 36, 0, 0, 1, 0, 0, 0, 'Both', '', 0, 0, 0, '2001-04-29 16:05:41', 'Admin', '2001-06-10 06:45:56', 'Admin', '', '', ''),
(2, 'Bayview Manor', 0, NULL, 'Kelligrews', 'St. John\'s Region', 'Carol Ann Lewis', NULL, NULL, 'P.O. Box 359', '', 'Holyrood', 'Newfoundland', 'Canada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '', NULL, 20, 0, '2', 0, 1, 'Ground Level', 0, 'Ward', '', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, '', 'Mixed Population', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Unitaca Home', 1, 'II', 'Halifax', 'St. John\'s Region', 'IT Appliances for Health Care Providers', 'Unitaca', 'Owner', 'P.O. Box 468', '', 'Manuels', 'Newfoundland', 'Canada', 'A1W1I6', '7098342349', NULL, '902-471-3761', NULL, NULL, '911', '911', '7098349111', 'admin@unitaca.com', NULL, 20, 0, 0, NULL, NULL, '', NULL, 20, 0, '', 0, 2, 'Story', 1, 'Private', 'Semi-Private', 'Ward - 3 bed', '', '', 1, 20, 0, 0, 0, 0, 0, 0, 'Both', 'Mixed Population', 0, 0, 0, '2001-04-29 16:10:35', 'Admin', '2001-05-04 10:09:36', 'Admin', '', '', ''),
(4, 'Husky\'s Hostel', 0, 'III', 'Collinstown', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'None', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(8, 'Cozy Corner Home', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Pre-admission', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resourcefacilitytypedictionary`
--

CREATE TABLE `resourcefacilitytypedictionary` (
  `Sequence` int(11) NOT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `TypeMemo` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcefacilitytypedictionary`
--

INSERT INTO `resourcefacilitytypedictionary` (`Sequence`, `Description`, `TypeMemo`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Intensive Care', 'Intensive Care', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Nursing Home', 'General Nursing Care', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Paliative Care', 'Paliative Care', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Respite', 'Respite', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcefeesdirectory`
--

CREATE TABLE `resourcefeesdirectory` (
  `Sequence` int(11) NOT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Charge` double DEFAULT NULL,
  `TaxRate1` int(11) DEFAULT '0',
  `Tax1RateDescription` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `TaxRate2` int(11) DEFAULT '0',
  `Tax2RateDescription` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Memo` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcefeesdirectory`
--

INSERT INTO `resourcefeesdirectory` (`Sequence`, `Description`, `Charge`, `TaxRate1`, `Tax1RateDescription`, `TaxRate2`, `Tax2RateDescription`, `Memo`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Bath', 25, 2, 'HST', 0, '', 'Bath', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Breakfast', 0, 0, 'HST', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Dinner', 0, 0, 'HST', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Fee 5', 0, 0, 'HST', 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Fee 6', 0, 0, 'HST', 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcehrdutycategorydictionary`
--

CREATE TABLE `resourcehrdutycategorydictionary` (
  `Sequence` int(11) NOT NULL,
  `DutyCategory` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcehrdutycategorydictionary`
--

INSERT INTO `resourcehrdutycategorydictionary` (`Sequence`, `DutyCategory`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Food Services Duties', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'General Domestic Duties', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'client Duties', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Security Duties', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcehrdutydictionary`
--

CREATE TABLE `resourcehrdutydictionary` (
  `Sequence` int(11) NOT NULL,
  `Duty` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DutyCategory` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `DutiesSubCategory` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcehrdutydictionary`
--

INSERT INTO `resourcehrdutydictionary` (`Sequence`, `Duty`, `DutyCategory`, `DutiesSubCategory`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'check hourly all exits, make sure they are free', 'Security Duties', 'General', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'clean dishware, utensils, cookware after each meal', 'Food Services Duties', 'Sanitation', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'encourage the client to consume their meals and', 'Food Services Duties', 'client Care', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'perform regular housekeeping tasks (vacuuming. Cle', 'General Domestic Duties', 'General', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Prepare and serve meals and snacks for the residen', 'Food Services Duties', 'client Meal Planning', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcehrdutysubcategorydictionary`
--

CREATE TABLE `resourcehrdutysubcategorydictionary` (
  `Sequence` int(11) NOT NULL,
  `DutiesSubCategory` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcehrdutysubcategorydictionary`
--

INSERT INTO `resourcehrdutysubcategorydictionary` (`Sequence`, `DutiesSubCategory`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Food Storage', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'General', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'client Care', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'client Meal Planning', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'client Meal Preparation', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcehrtaskschedule`
--

CREATE TABLE `resourcehrtaskschedule` (
  `Sequence` int(11) NOT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ResidenceTask` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StartDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `StartTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Cycle` int(11) DEFAULT '0',
  `Frequency` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Priority` smallint(6) DEFAULT '1',
  `Complete` tinyint(3) UNSIGNED DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcehrtaskschedule`
--

INSERT INTO `resourcehrtaskschedule` (`Sequence`, `Employee`, `ResidenceTask`, `StartDate`, `StartTime`, `EndDate`, `EndTime`, `Cycle`, `Frequency`, `Priority`, `Complete`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(20, 'Jones, Thomas', 'Dispense Medication', '2001-04-24', '08:00:00', '', '', 6, 'Daily', 1, 1, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(21, 'Meeker, Donna', 'Administration', '2001-04-24', '08:00:00', '', '', 1, 'Daily', 1, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(23, 'Jones, Thomas', 'Administration', '2001-04-25', '08:00:00', '2001-04-25', '09:00:00', 1, 'Weelky', 1, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(24, 'Jones, Thomas', 'Bathing Assistance', '2001-04-26', '13:18:15', '', '', 1, 'Weelky', 1, 0, 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(25, 'Ripley, Dianne P.', 'Administration', '2001-04-29', '21:08:58', '', '', 0, 'Daily', 1, 0, 0, '', 0, 0, 0, '', '', '2001-04-29 21:08:56', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcehrtaskschedulediary`
--

CREATE TABLE `resourcehrtaskschedulediary` (
  `Sequence` int(11) NOT NULL,
  `ResidenceTask` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `StartDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `StartTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Priority` int(11) DEFAULT '0',
  `Comments` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcehrtypesdictionary`
--

CREATE TABLE `resourcehrtypesdictionary` (
  `Sequence` int(11) NOT NULL,
  `EmployeeType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcehrtypesdictionary`
--

INSERT INTO `resourcehrtypesdictionary` (`Sequence`, `EmployeeType`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Administrator', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Care Giver - Part Time', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Caregiver', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Caregiver - Emergency', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Maintenance', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcehumanresourcedirectory`
--

CREATE TABLE `resourcehumanresourcedirectory` (
  `Number` int(11) NOT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Residence` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PositionTitle` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SocialSecurityNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `NationalEmplNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateofBirth` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `FirstName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddleName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `HomePhone` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateHired` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Enabled` tinyint(3) UNSIGNED DEFAULT NULL,
  `OnCall` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateofTermination` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `TerminationReason` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `HourlyRate` double DEFAULT NULL,
  `OvertimeRate` double DEFAULT NULL,
  `BillingRate` double DEFAULT NULL,
  `Deductions` smallint(6) DEFAULT NULL,
  `Supervisor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SpouseName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `EmrgcyContactName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `EmrgcyContactPhone` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Photograph` text COLLATE latin1_general_ci,
  `Notes` text COLLATE latin1_general_ci,
  `EmployeeType` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcehumanresourcedirectory`
--

INSERT INTO `resourcehumanresourcedirectory` (`Number`, `Employee`, `Residence`, `PositionTitle`, `SocialSecurityNumber`, `NationalEmplNumber`, `DateofBirth`, `FirstName`, `MiddleName`, `LastName`, `AddressA`, `AddressB`, `City`, `ProvinceState`, `Country`, `PostalCode`, `HomePhone`, `Email`, `WWWAddress`, `DateHired`, `Enabled`, `OnCall`, `DateofTermination`, `TerminationReason`, `Salary`, `HourlyRate`, `OvertimeRate`, `BillingRate`, `Deductions`, `Supervisor`, `SpouseName`, `EmrgcyContactName`, `EmrgcyContactPhone`, `Photograph`, `Notes`, `EmployeeType`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Walker, Donna', 'Unitaca Home', 'Operator', '110959012', NULL, NULL, 'Donna', NULL, 'Walker', 'Cambridge Cres', NULL, 'Chamber', 'Newfoundland', 'Canada', 'A1W1H9', '709-834-5971', NULL, '', NULL, 1, 1, NULL, NULL, 12, 20, 0, 0, 0, NULL, 'Steve', NULL, NULL, '', NULL, 'Administrator', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Jones, Thomas', 'Unitaca Home', NULL, '119878343', '123432870', '1955-05-23', 'Thomas', 'A', 'Jones', '1224 Keystone Way', NULL, 'Halifax', 'Nova Scotia', 'Canada', 'A1A1A1', '902-420-0555', NULL, '', NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, 0, NULL, 'Jane', NULL, NULL, '', NULL, 'Caregiver', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Walsh, Mary', 'Unitaca Home', NULL, NULL, NULL, NULL, 'Mary', NULL, 'Walsh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, 'Caregiver', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Ripley, Dianne', 'Unitaca Home', NULL, NULL, NULL, NULL, 'Dianne', 'P.', 'Ripley', NULL, NULL, NULL, 'Alberta', 'Canada', NULL, NULL, NULL, '', NULL, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, 'Caregiver', 0, 0, 0, '', '', '', '', '', '', ''),
(7, NULL, 'Unitaca Home', 'Asst to Shift Leader', NULL, NULL, NULL, 'Deane', 'C', 'Cluney', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Care Giver - Part Ti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resourcemeadirectory`
--

CREATE TABLE `resourcemeadirectory` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `clientNumber` int(11) DEFAULT '0',
  `Served` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Source` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WhichMeal` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FoodCategory` int(11) DEFAULT NULL,
  `Vegetarian` tinyint(3) UNSIGNED DEFAULT NULL,
  `TimeToPrepare` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberofServings` smallint(6) DEFAULT NULL,
  `CaloriesPerServing` smallint(6) DEFAULT NULL,
  `NutritionalInformation` text COLLATE latin1_general_ci,
  `Ingredients` text COLLATE latin1_general_ci,
  `Instructions` text COLLATE latin1_general_ci,
  `Utensils` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcemealdictionary`
--

CREATE TABLE `resourcemealdictionary` (
  `Sequence` int(11) NOT NULL,
  `Meal` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StartTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Rate` int(11) DEFAULT '0',
  `Memo` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcemealdictionary`
--

INSERT INTO `resourcemealdictionary` (`Sequence`, `Meal`, `StartTime`, `EndTime`, `Rate`, `Memo`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Breakfast', '06:00:00', '09:00:00', 15, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Christmas', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Dinner', '16:00:00', '19:00:00', 15, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Lunch', '11:00:00', '13:30:00', 10, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Midnight Snack', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcemealschedule`
--

CREATE TABLE `resourcemealschedule` (
  `Sequence` int(11) NOT NULL,
  `Residence` text COLLATE latin1_general_ci NOT NULL,
  `Name` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MealServed` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Source` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WhichMeal` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FoodCategory` int(11) DEFAULT NULL,
  `Vegetarian` tinyint(3) UNSIGNED DEFAULT NULL,
  `TimeToPrepare` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberofServings` smallint(6) DEFAULT NULL,
  `CaloriesPerServing` smallint(6) DEFAULT NULL,
  `NutritionalInformation` text COLLATE latin1_general_ci,
  `Ingredients` text COLLATE latin1_general_ci,
  `Instructions` text COLLATE latin1_general_ci,
  `Utensils` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcemealschedule`
--

INSERT INTO `resourcemealschedule` (`Sequence`, `Residence`, `Name`, `MealServed`, `Description`, `Source`, `WhichMeal`, `FoodCategory`, `Vegetarian`, `TimeToPrepare`, `NumberofServings`, `CaloriesPerServing`, `NutritionalInformation`, `Ingredients`, `Instructions`, `Utensils`, `Archive`, `ArchiveDate`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, '', 'Sunday Breakfast', 'Breakfast', NULL, NULL, 'Sunday Breakfast', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resourcemealschedulediary`
--

CREATE TABLE `resourcemealschedulediary` (
  `Sequence` int(11) NOT NULL,
  `Name` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MealServed` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Source` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WhichMeal` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FoodCategory` int(11) DEFAULT NULL,
  `Vegetarian` tinyint(3) UNSIGNED DEFAULT NULL,
  `TimeToPrepare` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberofServings` smallint(6) DEFAULT NULL,
  `CaloriesPerServing` smallint(6) DEFAULT NULL,
  `NutritionalInformation` text COLLATE latin1_general_ci,
  `Ingredients` text COLLATE latin1_general_ci,
  `Instructions` text COLLATE latin1_general_ci,
  `Utensils` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcemedicationsinventory`
--

CREATE TABLE `resourcemedicationsinventory` (
  `Sequence` int(11) NOT NULL,
  `BrandName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Pharmacy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Discontinued` tinyint(3) UNSIGNED DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcemedicationsinventory`
--

INSERT INTO `resourcemedicationsinventory` (`Sequence`, `BrandName`, `Pharmacy`, `Discontinued`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Acet Codeine 60', 'Shoppers - Villa Nova', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Aleve', 'Shoppers - Villa Nova', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Biaxin', 'Value Drugs', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Questran', 'Value Drugs', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Sof-Lax', 'Value Drugs', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcemedicationsinventorystock`
--

CREATE TABLE `resourcemedicationsinventorystock` (
  `Sequence` int(11) NOT NULL,
  `Medication` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Dosage` int(11) NOT NULL DEFAULT '0',
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DosageType` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StockNumber` int(11) NOT NULL DEFAULT '0',
  `UnitsInStock` int(11) DEFAULT NULL,
  `UnitsOnOrder` int(11) DEFAULT NULL,
  `UnitCost` double DEFAULT NULL,
  `UnitPrice` double DEFAULT NULL,
  `ReorderLevel` int(11) DEFAULT NULL,
  `Discontinued` tinyint(3) UNSIGNED DEFAULT NULL,
  `LeadTimeDays` int(11) DEFAULT '0',
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcemedicationsinventorystock`
--

INSERT INTO `resourcemedicationsinventorystock` (`Sequence`, `Medication`, `Dosage`, `UnitofMeasure`, `DosageType`, `StockNumber`, `UnitsInStock`, `UnitsOnOrder`, `UnitCost`, `UnitPrice`, `ReorderLevel`, `Discontinued`, `LeadTimeDays`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(2, 'Accupril', 2, 'Milligram(s)', 'Tablet', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Accupril', 3, 'Milligram(s)', 'Tablet', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Accupril', 4, 'Milligram(s)', 'Tablet', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Accupril', 5, 'Milligram(s)', 'Tablet', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(6, 'Accupril', 6, 'Milligram(s)', 'Tablet', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaysourcesdirectory`
--

CREATE TABLE `resourcepaysourcesdirectory` (
  `Sequence` int(11) NOT NULL,
  `client` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Paysource` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Heirarchy` smallint(6) NOT NULL DEFAULT '1',
  `FirstName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `MiddleName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `LastName` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `DateofBirth` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Extension` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Contact` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AccountReceivableNumber` int(11) DEFAULT '0',
  `PaymentPortion` int(11) DEFAULT '0',
  `PaymentMaximum` double DEFAULT NULL,
  `PaymentMinimum` double DEFAULT NULL,
  `PaymentMethod` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourceregiondirectory`
--

CREATE TABLE `resourceregiondirectory` (
  `Sequence` int(11) NOT NULL,
  `Region` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceregiondirectory`
--

INSERT INTO `resourceregiondirectory` (`Sequence`, `Region`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Central Region', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Eastern Region', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Grenfell Reqional Health Serv.', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Health Labrador Corp.', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'St. John\'s Region', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceroomsdirectory`
--

CREATE TABLE `resourceroomsdirectory` (
  `Sequence` int(11) NOT NULL,
  `Room` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Residence` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Location` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Size` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `UnitofMeasure` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MaximumBeds` smallint(6) DEFAULT '0',
  `MinimumBeds` smallint(6) DEFAULT '0',
  `Maximumclients` smallint(6) DEFAULT '0',
  `Minimumclients` smallint(6) DEFAULT '0',
  `DailyFee` double DEFAULT NULL,
  `DailyCost` double DEFAULT NULL,
  `WeeklyFee` double DEFAULT NULL,
  `WeeklyCost` double DEFAULT NULL,
  `MonthlyFee` double DEFAULT NULL,
  `MonthlyCost` double DEFAULT NULL,
  `YealyFee` double DEFAULT NULL,
  `YearlyCost` double DEFAULT NULL,
  `LastPainted` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Conditions` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcesecuritydiary`
--

CREATE TABLE `resourcesecuritydiary` (
  `Sequence` int(11) NOT NULL,
  `SecurityItem` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Date` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Time` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `RequiresAttention` tinyint(3) UNSIGNED DEFAULT NULL,
  `Remarks` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcesecuritydictionary`
--

CREATE TABLE `resourcesecuritydictionary` (
  `Sequence` int(11) NOT NULL,
  `SecurityCheck` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcesecuritydictionary`
--

INSERT INTO `resourcesecuritydictionary` (`Sequence`, `SecurityCheck`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Basement Area', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'BathFacility', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Corriders, Furnace Room', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Elecreical, Furnace', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Emergency Lights Test', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcesecuritydirectory`
--

CREATE TABLE `resourcesecuritydirectory` (
  `Sequence` int(11) NOT NULL,
  `SecurityItem` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StartDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `StartTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `FrequencyCycle` int(11) DEFAULT '0',
  `Frequency` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Employee` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Instructions` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Discontinue` tinyint(3) UNSIGNED DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcesecuritydirectory`
--

INSERT INTO `resourcesecuritydirectory` (`Sequence`, `SecurityItem`, `StartDate`, `StartTime`, `EndDate`, `EndTime`, `FrequencyCycle`, `Frequency`, `Employee`, `Instructions`, `Discontinue`, `Archive`, `ArchiveDate`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'BathFacility', '2001-12-12', '06:00:00', '', '', 0, '', 'Walsh, Mary', '', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Corriders, Furnace Room', '2001-12-12', '06:00:00', '', '', 0, '', 'Jones, Thomas', 'Check', 0, 0, '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceservicecategoriesdictionary`
--

CREATE TABLE `resourceservicecategoriesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Category` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceservicecategoriesdictionary`
--

INSERT INTO `resourceservicecategoriesdictionary` (`Sequence`, `Category`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Bed Maintenance', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'General Services', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Nursing Care', '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Other', '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Travel', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceservicefrequenciesdictionary`
--

CREATE TABLE `resourceservicefrequenciesdictionary` (
  `Sequence` int(11) NOT NULL,
  `Frequency` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Minutes` int(11) DEFAULT '0',
  `Hourly` int(11) DEFAULT '0',
  `Daily` tinyint(3) UNSIGNED DEFAULT NULL,
  `Weekly` tinyint(3) UNSIGNED DEFAULT NULL,
  `Monthly` tinyint(3) UNSIGNED DEFAULT NULL,
  `Yearly` tinyint(3) UNSIGNED DEFAULT NULL,
  `SkipWeekends` tinyint(3) UNSIGNED DEFAULT NULL,
  `SkipHolidays` tinyint(3) UNSIGNED DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceservicefrequenciesdictionary`
--

INSERT INTO `resourceservicefrequenciesdictionary` (`Sequence`, `Frequency`, `Minutes`, `Hourly`, `Daily`, `Weekly`, `Monthly`, `Yearly`, `SkipWeekends`, `SkipHolidays`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Daily', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Hourly', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Monthly', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Yearly', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcestructuredictionary`
--

CREATE TABLE `resourcestructuredictionary` (
  `Sequence` int(11) NOT NULL,
  `Structure` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcestructuredictionary`
--

INSERT INTO `resourcestructuredictionary` (`Sequence`, `Structure`, `Description`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Ground Level', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Split Level', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Story', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcesupplierdictionary`
--

CREATE TABLE `resourcesupplierdictionary` (
  `Sequence` int(11) NOT NULL,
  `Supplier` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ContactName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `ContactTitle` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressA` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `AddressB` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `City` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `PostalCode` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `ProvinceState` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Country` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `PhoneNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `MobileNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FaxNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Terms` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcesupplierdictionary`
--

INSERT INTO `resourcesupplierdictionary` (`Sequence`, `Supplier`, `ContactName`, `ContactTitle`, `AddressA`, `AddressB`, `City`, `PostalCode`, `ProvinceState`, `Country`, `PhoneNumber`, `MobileNumber`, `FaxNumber`, `Terms`, `Email`, `WWWAddress`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Dicks & Co.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Dominion', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Sobeys', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcesupplyinventory`
--

CREATE TABLE `resourcesupplyinventory` (
  `Sequence` int(11) NOT NULL,
  `Supply` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Category` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StorageRoom` int(11) DEFAULT NULL,
  `Name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Type` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Supplier` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Manufacturer` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Model` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ModelNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `SerialNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DatePurchased` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `PlacePurchased` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `PurchasePrice` double DEFAULT NULL,
  `AppraisedValue` double DEFAULT NULL,
  `Insured` tinyint(3) UNSIGNED DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `Photograph` text COLLATE latin1_general_ci,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resourcetaskfrequenciesdirectory`
--

CREATE TABLE `resourcetaskfrequenciesdirectory` (
  `Sequence` int(11) NOT NULL,
  `Frequency` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Minutes` int(11) DEFAULT '0',
  `Hourly` int(11) DEFAULT '0',
  `Daily` tinyint(3) UNSIGNED DEFAULT NULL,
  `Weekly` tinyint(3) UNSIGNED DEFAULT NULL,
  `Monthly` tinyint(3) UNSIGNED DEFAULT NULL,
  `Yearly` tinyint(3) UNSIGNED DEFAULT NULL,
  `SkipWeekends` tinyint(3) UNSIGNED DEFAULT NULL,
  `SkipHolidays` tinyint(3) UNSIGNED DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcetaskfrequenciesdirectory`
--

INSERT INTO `resourcetaskfrequenciesdirectory` (`Sequence`, `Frequency`, `Minutes`, `Hourly`, `Daily`, `Weekly`, `Monthly`, `Yearly`, `SkipWeekends`, `SkipHolidays`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'As Needed', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Daily', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Day(s)', 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Hour(s)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Millisecond(s)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourcetasksdictionary`
--

CREATE TABLE `resourcetasksdictionary` (
  `Sequence` int(11) NOT NULL,
  `ResidenceTask` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `BaseLineTime` int(11) DEFAULT '0',
  `Frequency` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `FeeA` double DEFAULT NULL,
  `FeeB` double DEFAULT NULL,
  `FeeC` double DEFAULT NULL,
  `Description` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourcetasksdictionary`
--

INSERT INTO `resourcetasksdictionary` (`Sequence`, `ResidenceTask`, `BaseLineTime`, `Frequency`, `FeeA`, `FeeB`, `FeeC`, `Description`, `Archive`, `ArchiveDate`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Administration', 0, '', 0, 0, 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Ambulance', 0, '', 0, 0, 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Banking', 0, '', 0, 0, 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(4, 'Bathing Assistance', 0, '', 0, 0, 0, 'Assistance with bathing', 0, '', 0, 0, 0, '', '', '', '', '', '', ''),
(5, 'Clean Kitchen', 0, '', 0, 0, 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resourceworkshiftsdictionary`
--

CREATE TABLE `resourceworkshiftsdictionary` (
  `Sequence` int(11) NOT NULL,
  `Shift` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `StartTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `EndTime` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `resourceworkshiftsdictionary`
--

INSERT INTO `resourceworkshiftsdictionary` (`Sequence`, `Shift`, `StartTime`, `EndTime`, `Notes`, `LockRecord`, `HideRecord`, `DeleteRecord`, `DateCreated`, `CreatedBy`, `DateModified`, `ModifiedBy`, `AuthorityToAdd`, `AuthorityToDelete`, `AuthorityToEdit`) VALUES
(1, 'Day', '08:00:00', '17:00:00', '', 0, 0, 0, '', '', '', '', '', '', ''),
(2, 'Evening', '16:00:00', '12:00:00', '', 0, 0, 0, '', '', '', '', '', '', ''),
(3, 'Night', '00:00:00', '08:00:00', '', 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `SecurityLevel` int(11) DEFAULT '0',
  `PasswordLastChangeDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Residence` text COLLATE latin1_general_ci,
  `LastAccess` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Archive` tinyint(3) UNSIGNED DEFAULT NULL,
  `ArchiveDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`ID`, `UserName`, `Password`, `SecurityLevel`, `PasswordLastChangeDate`, `Residence`, `LastAccess`, `Archive`, `ArchiveDate`) VALUES
(1, 'paul', 'A1gheh01', 1, '2016-08-06', 'Unitaca Home', '2016-08-06', 0, ''),
(2, 'paul2', 'A1gheh01', 2, '2016-08-06', 'Unitaca Home', '2016-08-06', 0, ''),
(3, 'paul3', 'A1gheh01', 3, '2016-08-06', 'Unitaca Home', '2016-08-06', 0, ''),
(5, 'guest', 'guest', 2, '2016-08-06', 'Unitaca Home', '2016-08-06', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `security_view`
--

CREATE TABLE `security_view` (
  `ID` int(11) DEFAULT NULL,
  `UserName` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `LastAccess` varchar(19) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `LastDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `LastA` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LastB` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `LastC` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`LastDate`, `LastA`, `LastB`, `LastC`) VALUES
('1985-06-23', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `unicarelicenseagreement`
--

CREATE TABLE `unicarelicenseagreement` (
  `Sequence` int(11) NOT NULL,
  `LicenseNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `LicenseeName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DDDate` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Notes` text COLLATE latin1_general_ci,
  `WWWAddress` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DomainName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `IPAddress` varchar(19) COLLATE latin1_general_ci DEFAULT '255.255.255.0',
  `ComputerPhoneNumber` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `NumberSeats` int(11) DEFAULT '0',
  `Password` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `LockRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `HideRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DeleteRecord` tinyint(3) UNSIGNED DEFAULT NULL,
  `DateCreated` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `CreatedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `DateModified` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `ModifiedBy` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToAdd` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToDelete` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `AuthorityToEdit` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `accountscoadirectory`
--
ALTER TABLE `accountscoadirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `accountscoamajor`
--
ALTER TABLE `accountscoamajor`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `accountscoaminor`
--
ALTER TABLE `accountscoaminor`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `accountstransactionsjournal`
--
ALTER TABLE `accountstransactionsjournal`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `AccountID` (`AccountNumber`),
  ADD KEY `PaymentID` (`PaymentID`),
  ADD KEY `TransactionDate` (`Date`);

--
-- Indexes for table `accountstypesdictionary`
--
ALTER TABLE `accountstypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientbeddiary`
--
ALTER TABLE `clientbeddiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientcontactdirectory`
--
ALTER TABLE `clientcontactdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientcontactsdiary`
--
ALTER TABLE `clientcontactsdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientdeaths`
--
ALTER TABLE `clientdeaths`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientdiabeticrecord`
--
ALTER TABLE `clientdiabeticrecord`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientdietdiary`
--
ALTER TABLE `clientdietdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientdietdirectory`
--
ALTER TABLE `clientdietdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientdirectory`
--
ALTER TABLE `clientdirectory`
  ADD PRIMARY KEY (`clientNumber`);

--
-- Indexes for table `clientexercisediary`
--
ALTER TABLE `clientexercisediary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientexerciseschedule`
--
ALTER TABLE `clientexerciseschedule`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clienthospitalizationdiary`
--
ALTER TABLE `clienthospitalizationdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientlaboratorytestschedule`
--
ALTER TABLE `clientlaboratorytestschedule`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientmedicalcharts`
--
ALTER TABLE `clientmedicalcharts`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientmedicalconditions`
--
ALTER TABLE `clientmedicalconditions`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientmedicalincidents`
--
ALTER TABLE `clientmedicalincidents`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientpaysourcedirectory`
--
ALTER TABLE `clientpaysourcedirectory`
  ADD PRIMARY KEY (`Sequence`),
  ADD UNIQUE KEY `client` (`client`),
  ADD KEY `LastName` (`LastName`);

--
-- Indexes for table `clientpaysourcesdictionary`
--
ALTER TABLE `clientpaysourcesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientpersonalbelongings`
--
ALTER TABLE `clientpersonalbelongings`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientphonecalldiary`
--
ALTER TABLE `clientphonecalldiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientprescriptionsdiary`
--
ALTER TABLE `clientprescriptionsdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientprescriptionsdirectory`
--
ALTER TABLE `clientprescriptionsdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientprogressnotes`
--
ALTER TABLE `clientprogressnotes`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientservicedictionary`
--
ALTER TABLE `clientservicedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientservicedirectory`
--
ALTER TABLE `clientservicedirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientservicesdiary`
--
ALTER TABLE `clientservicesdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientstatusdictionary`
--
ALTER TABLE `clientstatusdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clienttherapydirectory`
--
ALTER TABLE `clienttherapydirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clienttransfersdiary`
--
ALTER TABLE `clienttransfersdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clienttrustaccountsdirectory`
--
ALTER TABLE `clienttrustaccountsdirectory`
  ADD PRIMARY KEY (`AccountNumber`),
  ADD KEY `AccountNumber` (`AccountNumber`);

--
-- Indexes for table `clienttrustaccountstransactions`
--
ALTER TABLE `clienttrustaccountstransactions`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clienttrustaccounttypesdictionary`
--
ALTER TABLE `clienttrustaccounttypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clienttypesdictionary`
--
ALTER TABLE `clienttypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `clientvisitationsdiary`
--
ALTER TABLE `clientvisitationsdiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `Countries`
--
ALTER TABLE `Countries`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dietfoodgroup`
--
ALTER TABLE `dietfoodgroup`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `dietfoodservingdictionary`
--
ALTER TABLE `dietfoodservingdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalchurches`
--
ALTER TABLE `generalchurches`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalcountry`
--
ALTER TABLE `generalcountry`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalholidays`
--
ALTER TABLE `generalholidays`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generallanguages`
--
ALTER TABLE `generallanguages`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalnews`
--
ALTER TABLE `generalnews`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalprovincestate`
--
ALTER TABLE `generalprovincestate`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalraces`
--
ALTER TABLE `generalraces`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `Race` (`Race`);

--
-- Indexes for table `generalreligions`
--
ALTER TABLE `generalreligions`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `generalunitofmeasuredictionary`
--
ALTER TABLE `generalunitofmeasuredictionary`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `Standard` (`Standard`);

--
-- Indexes for table `governmentdepartmentsdirectory`
--
ALTER TABLE `governmentdepartmentsdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `Languages`
--
ALTER TABLE `Languages`
  ADD KEY `sequence` (`sequence`);

--
-- Indexes for table `medicalassistanceleveldictionary`
--
ALTER TABLE `medicalassistanceleveldictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalbloodtypedictionary`
--
ALTER TABLE `medicalbloodtypedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalcarecode`
--
ALTER TABLE `medicalcarecode`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `CareCode` (`CareCode`);

--
-- Indexes for table `medicalcarecomponent`
--
ALTER TABLE `medicalcarecomponent`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalcarelevel`
--
ALTER TABLE `medicalcarelevel`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalcarelevelcomponent`
--
ALTER TABLE `medicalcarelevelcomponent`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalclinicstaffdirectory`
--
ALTER TABLE `medicalclinicstaffdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalconditionsdictionary`
--
ALTER TABLE `medicalconditionsdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldiagnosticsdictionary`
--
ALTER TABLE `medicaldiagnosticsdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldiseasecategorydictionary`
--
ALTER TABLE `medicaldiseasecategorydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldiseasedictionary`
--
ALTER TABLE `medicaldiseasedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldoctordictionary`
--
ALTER TABLE `medicaldoctordictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldosagetypesdictionary`
--
ALTER TABLE `medicaldosagetypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldrugcategorydictionary`
--
ALTER TABLE `medicaldrugcategorydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldrugdictionary`
--
ALTER TABLE `medicaldrugdictionary`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `DIN` (`DIN`);

--
-- Indexes for table `medicaldrugdosagesdictionary`
--
ALTER TABLE `medicaldrugdosagesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaldrugfamilydictionary`
--
ALTER TABLE `medicaldrugfamilydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalhospitalsdirectory`
--
ALTER TABLE `medicalhospitalsdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalidc9substancedictionary`
--
ALTER TABLE `medicalidc9substancedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalincidentsdictionary`
--
ALTER TABLE `medicalincidentsdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalinjuryclassificationdictionary`
--
ALTER TABLE `medicalinjuryclassificationdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalinjurydictionary`
--
ALTER TABLE `medicalinjurydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicallaboratorydirectory`
--
ALTER TABLE `medicallaboratorydirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicallaboratorysourcesdictionary`
--
ALTER TABLE `medicallaboratorysourcesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicallaboratorytestsources`
--
ALTER TABLE `medicallaboratorytestsources`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalpartofbodydictionary`
--
ALTER TABLE `medicalpartofbodydictionary`
  ADD PRIMARY KEY (`Sequence`),
  ADD UNIQUE KEY `Site` (`PartofBody`);

--
-- Indexes for table `medicalpharmaciesdirectory`
--
ALTER TABLE `medicalpharmaciesdirectory`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `PharmacyCode` (`Pharmacy`);

--
-- Indexes for table `medicalphysiciandirectory`
--
ALTER TABLE `medicalphysiciandirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalpoisioningdictionary`
--
ALTER TABLE `medicalpoisioningdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalspecialneedsdictionary`
--
ALTER TABLE `medicalspecialneedsdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalsurgerydictionary`
--
ALTER TABLE `medicalsurgerydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalsurgerytypedictionary`
--
ALTER TABLE `medicalsurgerytypedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalsymptomsdictionary`
--
ALTER TABLE `medicalsymptomsdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaltherapiesdictionary`
--
ALTER TABLE `medicaltherapiesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicaltherapistsdirectory`
--
ALTER TABLE `medicaltherapistsdirectory`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `LastName` (`LastName`);

--
-- Indexes for table `medicaltherapistsservicesdirectory`
--
ALTER TABLE `medicaltherapistsservicesdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `medicalunitofmeasure`
--
ALTER TABLE `medicalunitofmeasure`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `Standard` (`Standard`);

--
-- Indexes for table `medicarecodesdictionary`
--
ALTER TABLE `medicarecodesdictionary`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `resourceaccomodationdictionary`
--
ALTER TABLE `resourceaccomodationdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourceaccountsdirectory`
--
ALTER TABLE `resourceaccountsdirectory`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `AccountName` (`client`);

--
-- Indexes for table `resourceaccreditation`
--
ALTER TABLE `resourceaccreditation`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourceassistancedictionary`
--
ALTER TABLE `resourceassistancedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcebedfacilitytypesdictionary`
--
ALTER TABLE `resourcebedfacilitytypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcebedtypesdictionary`
--
ALTER TABLE `resourcebedtypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourceclassdictionary`
--
ALTER TABLE `resourceclassdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcedeliverieslog`
--
ALTER TABLE `resourcedeliverieslog`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `DestinationPostalCode` (`DestinationPostalCode`),
  ADD KEY `EmployeeID` (`EmployeeNumber`),
  ADD KEY `OrderID` (`PurchaseOrderNumber`),
  ADD KEY `ShipperTrackingCode` (`ShipperTrackingCode`);

--
-- Indexes for table `resourcedepartmentdirectory`
--
ALTER TABLE `resourcedepartmentdirectory`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `DepartmentCode` (`Department`);

--
-- Indexes for table `resourcedirectory`
--
ALTER TABLE `resourcedirectory`
  ADD PRIMARY KEY (`ResidenceNumber`),
  ADD UNIQUE KEY `CaregiverCode` (`Residence`),
  ADD KEY `ContactTypeID` (`Type`),
  ADD KEY `NumberonStaff` (`NumberonStaff`),
  ADD KEY `PostalCode` (`PostalCode`);

--
-- Indexes for table `resourcefacilitytypedictionary`
--
ALTER TABLE `resourcefacilitytypedictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcefeesdirectory`
--
ALTER TABLE `resourcefeesdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcehrdutycategorydictionary`
--
ALTER TABLE `resourcehrdutycategorydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcehrdutydictionary`
--
ALTER TABLE `resourcehrdutydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcehrdutysubcategorydictionary`
--
ALTER TABLE `resourcehrdutysubcategorydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcehrtaskschedule`
--
ALTER TABLE `resourcehrtaskschedule`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcehrtaskschedulediary`
--
ALTER TABLE `resourcehrtaskschedulediary`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `TaskID` (`ResidenceTask`);

--
-- Indexes for table `resourcehrtypesdictionary`
--
ALTER TABLE `resourcehrtypesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcehumanresourcedirectory`
--
ALTER TABLE `resourcehumanresourcedirectory`
  ADD PRIMARY KEY (`Number`);

--
-- Indexes for table `resourcemeadirectory`
--
ALTER TABLE `resourcemeadirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcemealdictionary`
--
ALTER TABLE `resourcemealdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcemealschedule`
--
ALTER TABLE `resourcemealschedule`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcemealschedulediary`
--
ALTER TABLE `resourcemealschedulediary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcemedicationsinventory`
--
ALTER TABLE `resourcemedicationsinventory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcemedicationsinventorystock`
--
ALTER TABLE `resourcemedicationsinventorystock`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcepaysourcesdirectory`
--
ALTER TABLE `resourcepaysourcesdirectory`
  ADD PRIMARY KEY (`Sequence`),
  ADD UNIQUE KEY `client` (`client`),
  ADD KEY `LastName` (`LastName`);

--
-- Indexes for table `resourceregiondirectory`
--
ALTER TABLE `resourceregiondirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourceroomsdirectory`
--
ALTER TABLE `resourceroomsdirectory`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `Room` (`Room`);

--
-- Indexes for table `resourcesecuritydiary`
--
ALTER TABLE `resourcesecuritydiary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcesecuritydictionary`
--
ALTER TABLE `resourcesecuritydictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcesecuritydirectory`
--
ALTER TABLE `resourcesecuritydirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourceservicecategoriesdictionary`
--
ALTER TABLE `resourceservicecategoriesdictionary`
  ADD PRIMARY KEY (`Sequence`),
  ADD UNIQUE KEY `ProductCategoryCode` (`Category`);

--
-- Indexes for table `resourceservicefrequenciesdictionary`
--
ALTER TABLE `resourceservicefrequenciesdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcestructuredictionary`
--
ALTER TABLE `resourcestructuredictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcesupplierdictionary`
--
ALTER TABLE `resourcesupplierdictionary`
  ADD PRIMARY KEY (`Sequence`),
  ADD KEY `SupplierName` (`Supplier`);

--
-- Indexes for table `resourcesupplyinventory`
--
ALTER TABLE `resourcesupplyinventory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcetaskfrequenciesdirectory`
--
ALTER TABLE `resourcetaskfrequenciesdirectory`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourcetasksdictionary`
--
ALTER TABLE `resourcetasksdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `resourceworkshiftsdictionary`
--
ALTER TABLE `resourceworkshiftsdictionary`
  ADD PRIMARY KEY (`Sequence`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `unicarelicenseagreement`
--
ALTER TABLE `unicarelicenseagreement`
  ADD PRIMARY KEY (`Sequence`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `accountscoadirectory`
--
ALTER TABLE `accountscoadirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `accountscoamajor`
--
ALTER TABLE `accountscoamajor`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `accountscoaminor`
--
ALTER TABLE `accountscoaminor`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `accountstransactionsjournal`
--
ALTER TABLE `accountstransactionsjournal`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `accountstypesdictionary`
--
ALTER TABLE `accountstypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `clientbeddiary`
--
ALTER TABLE `clientbeddiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `clientcontactdirectory`
--
ALTER TABLE `clientcontactdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clientcontactsdiary`
--
ALTER TABLE `clientcontactsdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientdeaths`
--
ALTER TABLE `clientdeaths`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientdiabeticrecord`
--
ALTER TABLE `clientdiabeticrecord`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientdietdiary`
--
ALTER TABLE `clientdietdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientdietdirectory`
--
ALTER TABLE `clientdietdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `clientdirectory`
--
ALTER TABLE `clientdirectory`
  MODIFY `clientNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `clientexercisediary`
--
ALTER TABLE `clientexercisediary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientexerciseschedule`
--
ALTER TABLE `clientexerciseschedule`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `clienthospitalizationdiary`
--
ALTER TABLE `clienthospitalizationdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clientlaboratorytestschedule`
--
ALTER TABLE `clientlaboratorytestschedule`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clientmedicalcharts`
--
ALTER TABLE `clientmedicalcharts`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `clientmedicalconditions`
--
ALTER TABLE `clientmedicalconditions`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `clientmedicalincidents`
--
ALTER TABLE `clientmedicalincidents`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientpaysourcedirectory`
--
ALTER TABLE `clientpaysourcedirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientpaysourcesdictionary`
--
ALTER TABLE `clientpaysourcesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientpersonalbelongings`
--
ALTER TABLE `clientpersonalbelongings`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientphonecalldiary`
--
ALTER TABLE `clientphonecalldiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientprescriptionsdiary`
--
ALTER TABLE `clientprescriptionsdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientprescriptionsdirectory`
--
ALTER TABLE `clientprescriptionsdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `clientprogressnotes`
--
ALTER TABLE `clientprogressnotes`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `clientservicedictionary`
--
ALTER TABLE `clientservicedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clientservicedirectory`
--
ALTER TABLE `clientservicedirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `clientservicesdiary`
--
ALTER TABLE `clientservicesdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientstatusdictionary`
--
ALTER TABLE `clientstatusdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clienttherapydirectory`
--
ALTER TABLE `clienttherapydirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `clienttransfersdiary`
--
ALTER TABLE `clienttransfersdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clienttrustaccountsdirectory`
--
ALTER TABLE `clienttrustaccountsdirectory`
  MODIFY `AccountNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clienttrustaccountstransactions`
--
ALTER TABLE `clienttrustaccountstransactions`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clienttrustaccounttypesdictionary`
--
ALTER TABLE `clienttrustaccounttypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `clienttypesdictionary`
--
ALTER TABLE `clienttypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clientvisitationsdiary`
--
ALTER TABLE `clientvisitationsdiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Countries`
--
ALTER TABLE `Countries`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `dietfoodgroup`
--
ALTER TABLE `dietfoodgroup`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dietfoodservingdictionary`
--
ALTER TABLE `dietfoodservingdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `generalchurches`
--
ALTER TABLE `generalchurches`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `generalcountry`
--
ALTER TABLE `generalcountry`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `generalholidays`
--
ALTER TABLE `generalholidays`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `generallanguages`
--
ALTER TABLE `generallanguages`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `generalnews`
--
ALTER TABLE `generalnews`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `generalprovincestate`
--
ALTER TABLE `generalprovincestate`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `generalraces`
--
ALTER TABLE `generalraces`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `generalreligions`
--
ALTER TABLE `generalreligions`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `generalunitofmeasuredictionary`
--
ALTER TABLE `generalunitofmeasuredictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `governmentdepartmentsdirectory`
--
ALTER TABLE `governmentdepartmentsdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Languages`
--
ALTER TABLE `Languages`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicalassistanceleveldictionary`
--
ALTER TABLE `medicalassistanceleveldictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalbloodtypedictionary`
--
ALTER TABLE `medicalbloodtypedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalcarecode`
--
ALTER TABLE `medicalcarecode`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalcarecomponent`
--
ALTER TABLE `medicalcarecomponent`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medicalcarelevel`
--
ALTER TABLE `medicalcarelevel`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medicalcarelevelcomponent`
--
ALTER TABLE `medicalcarelevelcomponent`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalclinicstaffdirectory`
--
ALTER TABLE `medicalclinicstaffdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `medicalconditionsdictionary`
--
ALTER TABLE `medicalconditionsdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldiagnosticsdictionary`
--
ALTER TABLE `medicaldiagnosticsdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldiseasecategorydictionary`
--
ALTER TABLE `medicaldiseasecategorydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldiseasedictionary`
--
ALTER TABLE `medicaldiseasedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldoctordictionary`
--
ALTER TABLE `medicaldoctordictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medicaldosagetypesdictionary`
--
ALTER TABLE `medicaldosagetypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldrugcategorydictionary`
--
ALTER TABLE `medicaldrugcategorydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldrugdictionary`
--
ALTER TABLE `medicaldrugdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `medicaldrugdosagesdictionary`
--
ALTER TABLE `medicaldrugdosagesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaldrugfamilydictionary`
--
ALTER TABLE `medicaldrugfamilydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalhospitalsdirectory`
--
ALTER TABLE `medicalhospitalsdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medicalidc9substancedictionary`
--
ALTER TABLE `medicalidc9substancedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalincidentsdictionary`
--
ALTER TABLE `medicalincidentsdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medicalinjuryclassificationdictionary`
--
ALTER TABLE `medicalinjuryclassificationdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalinjurydictionary`
--
ALTER TABLE `medicalinjurydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicallaboratorydirectory`
--
ALTER TABLE `medicallaboratorydirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medicallaboratorysourcesdictionary`
--
ALTER TABLE `medicallaboratorysourcesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicallaboratorytestsources`
--
ALTER TABLE `medicallaboratorytestsources`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalpartofbodydictionary`
--
ALTER TABLE `medicalpartofbodydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicalpharmaciesdirectory`
--
ALTER TABLE `medicalpharmaciesdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medicalphysiciandirectory`
--
ALTER TABLE `medicalphysiciandirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalpoisioningdictionary`
--
ALTER TABLE `medicalpoisioningdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalspecialneedsdictionary`
--
ALTER TABLE `medicalspecialneedsdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicalsurgerydictionary`
--
ALTER TABLE `medicalsurgerydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalsurgerytypedictionary`
--
ALTER TABLE `medicalsurgerytypedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `medicalsymptomsdictionary`
--
ALTER TABLE `medicalsymptomsdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaltherapiesdictionary`
--
ALTER TABLE `medicaltherapiesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaltherapistsdirectory`
--
ALTER TABLE `medicaltherapistsdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicaltherapistsservicesdirectory`
--
ALTER TABLE `medicaltherapistsservicesdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicalunitofmeasure`
--
ALTER TABLE `medicalunitofmeasure`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `medicarecodesdictionary`
--
ALTER TABLE `medicarecodesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourceaccomodationdictionary`
--
ALTER TABLE `resourceaccomodationdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourceaccountsdirectory`
--
ALTER TABLE `resourceaccountsdirectory`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `resourceaccreditation`
--
ALTER TABLE `resourceaccreditation`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `resourceassistancedictionary`
--
ALTER TABLE `resourceassistancedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `resourcebedfacilitytypesdictionary`
--
ALTER TABLE `resourcebedfacilitytypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `resourcebedtypesdictionary`
--
ALTER TABLE `resourcebedtypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `resourceclassdictionary`
--
ALTER TABLE `resourceclassdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcedeliverieslog`
--
ALTER TABLE `resourcedeliverieslog`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourcedepartmentdirectory`
--
ALTER TABLE `resourcedepartmentdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcedirectory`
--
ALTER TABLE `resourcedirectory`
  MODIFY `ResidenceNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `resourcefacilitytypedictionary`
--
ALTER TABLE `resourcefacilitytypedictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `resourcefeesdirectory`
--
ALTER TABLE `resourcefeesdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcehrdutycategorydictionary`
--
ALTER TABLE `resourcehrdutycategorydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `resourcehrdutydictionary`
--
ALTER TABLE `resourcehrdutydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcehrdutysubcategorydictionary`
--
ALTER TABLE `resourcehrdutysubcategorydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcehrtaskschedule`
--
ALTER TABLE `resourcehrtaskschedule`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `resourcehrtaskschedulediary`
--
ALTER TABLE `resourcehrtaskschedulediary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourcehrtypesdictionary`
--
ALTER TABLE `resourcehrtypesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcehumanresourcedirectory`
--
ALTER TABLE `resourcehumanresourcedirectory`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `resourcemeadirectory`
--
ALTER TABLE `resourcemeadirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourcemealdictionary`
--
ALTER TABLE `resourcemealdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcemealschedule`
--
ALTER TABLE `resourcemealschedule`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `resourcemealschedulediary`
--
ALTER TABLE `resourcemealschedulediary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourcemedicationsinventory`
--
ALTER TABLE `resourcemedicationsinventory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcemedicationsinventorystock`
--
ALTER TABLE `resourcemedicationsinventorystock`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `resourcepaysourcesdirectory`
--
ALTER TABLE `resourcepaysourcesdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourceregiondirectory`
--
ALTER TABLE `resourceregiondirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourceroomsdirectory`
--
ALTER TABLE `resourceroomsdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcesecuritydiary`
--
ALTER TABLE `resourcesecuritydiary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourcesecuritydictionary`
--
ALTER TABLE `resourcesecuritydictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcesecuritydirectory`
--
ALTER TABLE `resourcesecuritydirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `resourceservicecategoriesdictionary`
--
ALTER TABLE `resourceservicecategoriesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourceservicefrequenciesdictionary`
--
ALTER TABLE `resourceservicefrequenciesdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `resourcestructuredictionary`
--
ALTER TABLE `resourcestructuredictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `resourcesupplierdictionary`
--
ALTER TABLE `resourcesupplierdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `resourcesupplyinventory`
--
ALTER TABLE `resourcesupplyinventory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resourcetaskfrequenciesdirectory`
--
ALTER TABLE `resourcetaskfrequenciesdirectory`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourcetasksdictionary`
--
ALTER TABLE `resourcetasksdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `resourceworkshiftsdictionary`
--
ALTER TABLE `resourceworkshiftsdictionary`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `unicarelicenseagreement`
--
ALTER TABLE `unicarelicenseagreement`
  MODIFY `Sequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
