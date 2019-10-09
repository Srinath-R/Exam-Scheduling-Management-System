-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2019 at 04:00 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$mysVzvloE9Ph3NJZHSkA9OLvtbZDkW7V7jyMizCqP9EjeKOieTXnq', '2019-06-23 09:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_name` varchar(10) NOT NULL,
  `degree` varchar(10) DEFAULT NULL,
  `branch_hod` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_name`, `degree`, `branch_hod`) VALUES
('AEROSPACE', 'Btech', 'D'),
('CHEMISTRY', 'SCIENCE', 'F'),
('CSE', 'Btech', 'COl P N KUMAR'),
('EandI', 'Btech', 'C'),
('ECE', 'Btech', 'B'),
('EEE', 'Btech', 'A'),
('MECH', 'Btech', 'P Raj'),
('PHYSICS', 'SCIENCE', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `room_id` varchar(10) DEFAULT NULL,
  `alotted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`room_id`, `alotted`) VALUES
('A303', 0),
('A304', 0),
('A305', 0),
('A306', 0),
('A307', 0),
('A308', 0),
('A309', 0),
('A310', 0),
('A311', 0),
('A312', 0),
('A313', 0),
('A314', 0),
('A315', 0),
('A316', 0),
('A317', 0),
('A318', 0),
('A319', 0),
('A320', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(20) DEFAULT NULL,
  `branch_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `branch_name`) VALUES
('15Cse302', 'DBMS', 'CSE'),
('15Cse303', 'ALGO', 'CSE'),
('15Cse304', 'TOC', 'CSE'),
('15Cse305', 'OOPS', 'CSE'),
('15Cse306', 'SYSDESIGN', 'CSE'),
('15Cse307', 'COA', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `exam_room`
--

CREATE TABLE `exam_room` (
  `room_id` varchar(20) NOT NULL,
  `student_roll` varchar(20) NOT NULL,
  `faculty_id_roll` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `scheduler_id` int(11) NOT NULL,
  `exam_date` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` varchar(10) NOT NULL,
  `faculty_name` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `designation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `phone_no`, `email`, `designation`) VALUES
('cse109', 'Indra', '7896541238', 'ik@mail.com', 'Assoc. Prof'),
('cse354', 'sri', '98765', 'sri@mail.com', 'hod'),
('u4cse101', 'bharath', '12345', 'bharaths email', 'Sr Prof'),
('u4cse103', 'newton', '12347', 'newton email', 'Asst Prof'),
('u4cse104', 'ram', '12348', 'ram email', 'Sr Prof'),
('u4cse105', 'teja', '12349', 'teja email', 'Sr Prof'),
('u4cse107', 'ajay', '12351', 'ajay email', 'Prof'),
('u4cse108', 'aswin', '12352', 'aswin email', 'Sr Prof'),
('u4cse109', 'vishnu', '12353', 'vishnu email', 'Sr Prof'),
('u4cse110', 'vikram', '12354', 'vikram email', 'Prof'),
('u4cse111', 'abc', '242553', 'abc@gmail.com', 'prof');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_course`
--

CREATE TABLE `faculty_course` (
  `faculty_id` varchar(10) NOT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_course`
--

INSERT INTO `faculty_course` (`faculty_id`, `course_id`, `semester`) VALUES
('u4cse101', '15Cse302', '5');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_timetable`
--

CREATE TABLE `faculty_timetable` (
  `faculty_id` varchar(10) NOT NULL,
  `faculty_name` varchar(30) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `Day` varchar(20) NOT NULL,
  `Hours` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_timetable`
--

INSERT INTO `faculty_timetable` (`faculty_id`, `faculty_name`, `semester`, `Day`, `Hours`) VALUES
('123', 'Tejas', '2', 'Friday', '10:00-11:00'),
('123', 'Tejas', '3', 'Friday', '11:00-12:00'),
('123', 'Tejas', '4', 'Friday', '12:00-13:00'),
('123', 'Tejas', '5', 'Friday', '14:00-15:00'),
('123', 'Tejas', '6', 'Friday', '15:00-16:00'),
('123', 'Tejas', '1', 'Friday', '9:00-10:00'),
('123', 'Tejas', '2', 'Monday', '10:00-11:00'),
('123', 'Tejas', '3', 'Monday', '11:00-12:00'),
('123', 'Tejas', '4', 'Monday', '12:00-13:00'),
('123', 'Tejas', '5', 'Monday', '14:00-15:00'),
('123', 'Tejas', '6', 'Monday', '15:00-16:00'),
('123', 'Tejas', '1', 'Monday', '9:00-10:00'),
('123', 'Tejas', '2', 'Thursday', '10:00-11:00'),
('123', 'Tejas', '3', 'Thursday', '11:00-12:00'),
('123', 'Tejas', '4', 'Thursday', '12:00-13:00'),
('123', 'Tejas', '5', 'Thursday', '14:00-15:00'),
('123', 'Tejas', '6', 'Thursday', '15:00-16:00'),
('123', 'Tejas', '1', 'Thursday', '9:00-10:00'),
('123', 'Tejas', '2', 'Tuesday', '10:00-11:00'),
('123', 'Tejas', '3', 'Tuesday', '11:00-12:00'),
('123', 'Tejas', '4', 'Tuesday', '12:00-13:00'),
('123', 'Tejas', '5', 'Tuesday', '14:00-15:00'),
('123', 'Tejas', '6', 'Tuesday', '15:00-16:00'),
('123', 'Tejas', '1', 'Tuesday', '9:00-10:00'),
('123', 'Tejas', '2', 'Wednesday', '10:00-11:00'),
('123', 'Tejas', '3', 'Wednesday', '11:00-12:00'),
('123', 'Tejas', '4', 'Wednesday', '12:00-13:00'),
('123', 'Tejas', '5', 'Wednesday', '14:00-15:00'),
('123', 'Tejas', '6', 'Wednesday', '15:00-16:00'),
('123', 'Tejas', '1', 'Wednesday', '9:00-10:00'),
('cse109', 'ik', '2', 'Friday', '10:00-11:00'),
('cse109', 'ik', '3', 'Friday', '11:00-12:00'),
('cse109', 'ik', '4', 'Friday', '12:00-13:00'),
('cse109', 'ik', '5', 'Friday', '14:00-15:00'),
('cse109', 'ik', '6', 'Friday', '15:00-16:00'),
('cse109', 'ik', '1', 'Friday', '9:00-10:00'),
('cse109', 'ik', '2', 'Monday', '10:00-11:00'),
('cse109', 'ik', '3', 'Monday', '11:00-12:00'),
('cse109', 'ik', '4', 'Monday', '12:00-13:00'),
('cse109', 'ik', '5', 'Monday', '14:00-15:00'),
('cse109', 'ik', '6', 'Monday', '15:00-16:00'),
('cse109', 'ik', '1', 'Monday', '9:00-10:00'),
('cse109', 'ik', '2', 'Thursday', '10:00-11:00'),
('cse109', 'ik', '3', 'Thursday', '11:00-12:00'),
('cse109', 'ik', '4', 'Thursday', '12:00-13:00'),
('cse109', 'ik', '5', 'Thursday', '14:00-15:00'),
('cse109', 'ik', '6', 'Thursday', '15:00-16:00'),
('cse109', 'ik', '1', 'Thursday', '9:00-10:00'),
('cse109', 'ik', '2', 'Tuesday', '10:00-11:00'),
('cse109', 'ik', '3', 'Tuesday', '11:00-12:00'),
('cse109', 'ik', '4', 'Tuesday', '12:00-13:00'),
('cse109', 'ik', '5', 'Tuesday', '14:00-15:00'),
('cse109', 'ik', '6', 'Tuesday', '15:00-16:00'),
('cse109', 'ik', '1', 'Tuesday', '9:00-10:00'),
('cse109', 'ik', '2', 'Wednesday', '10:00-11:00'),
('cse109', 'ik', '3', 'Wednesday', '11:00-12:00'),
('cse109', 'ik', '4', 'Wednesday', '12:00-13:00'),
('cse109', 'ik', '5', 'Wednesday', '14:00-15:00'),
('cse109', 'ik', '6', 'Wednesday', '15:00-16:00'),
('cse109', 'ik', '1', 'Wednesday', '9:00-10:00'),
('cse354', 'sri', '2', 'Friday', '10:00-11:00'),
('cse354', 'sri', '3', 'Friday', '11:00-12:00'),
('cse354', 'sri', '4', 'Friday', '12:00-13:00'),
('cse354', 'sri', '5', 'Friday', '14:00-15:00'),
('cse354', 'sri', '6', 'Friday', '15:00-16:00'),
('cse354', 'sri', '1', 'Friday', '9:00-10:00'),
('cse354', 'sri', '2', 'Monday', '10:00-11:00'),
('cse354', 'sri', '3', 'Monday', '11:00-12:00'),
('cse354', 'sri', '4', 'Monday', '12:00-13:00'),
('cse354', 'sri', '5', 'Monday', '14:00-15:00'),
('cse354', 'sri', '6', 'Monday', '15:00-16:00'),
('cse354', 'sri', '1', 'Monday', '9:00-10:00'),
('cse354', 'sri', '2', 'Thursday', '10:00-11:00'),
('cse354', 'sri', '3', 'Thursday', '11:00-12:00'),
('cse354', 'sri', '4', 'Thursday', '12:00-13:00'),
('cse354', 'sri', '5', 'Thursday', '14:00-15:00'),
('cse354', 'sri', '6', 'Thursday', '15:00-16:00'),
('cse354', 'sri', '1', 'Thursday', '9:00-10:00'),
('cse354', 'sri', '2', 'Tuesday', '10:00-11:00'),
('cse354', 'sri', '3', 'Tuesday', '11:00-12:00'),
('cse354', 'sri', '4', 'Tuesday', '12:00-13:00'),
('cse354', 'sri', '5', 'Tuesday', '14:00-15:00'),
('cse354', 'sri', '6', 'Tuesday', '15:00-16:00'),
('cse354', 'sri', '1', 'Tuesday', '9:00-10:00'),
('cse354', 'sri', '2', 'Wednesday', '10:00-11:00'),
('cse354', 'sri', '3', 'Wednesday', '11:00-12:00'),
('cse354', 'sri', '4', 'Wednesday', '12:00-13:00'),
('cse354', 'sri', '5', 'Wednesday', '14:00-15:00'),
('cse354', 'sri', '6', 'Wednesday', '15:00-16:00'),
('cse354', 'sri', '1', 'Wednesday', '9:00-10:00'),
('u4cse101', 'bharath', '2', 'Friday', '10:00-11:00'),
('u4cse101', 'bharath', '3', 'Friday', '11:00-12:00'),
('u4cse101', 'bharath', '4', 'Friday', '12:00-13:00'),
('u4cse101', 'bharath', '5', 'Friday', '14:00-15:00'),
('u4cse101', 'bharath', '6', 'Friday', '15:00-16:00'),
('u4cse101', 'bharath', '1', 'Friday', '9:00-10:00'),
('u4cse101', 'bharath', '2', 'Monday', '10:00-11:00'),
('u4cse101', 'bharath', '3', 'Monday', '11:00-12:00'),
('u4cse101', 'bharath', '4', 'Monday', '12:00-13:00'),
('u4cse101', 'bharath', '5', 'Monday', '14:00-15:00'),
('u4cse101', 'bharath', '6', 'Monday', '15:00-16:00'),
('u4cse101', 'bharath', '1', 'Monday', '9:00-10:00'),
('u4cse101', 'bharath', '2', 'Thursday', '10:00-11:00'),
('u4cse101', 'bharath', '3', 'Thursday', '11:00-12:00'),
('u4cse101', 'bharath', '4', 'Thursday', '12:00-13:00'),
('u4cse101', 'bharath', '5', 'Thursday', '14:00-15:00'),
('u4cse101', 'bharath', '6', 'Thursday', '15:00-16:00'),
('u4cse101', 'bharath', '1', 'Thursday', '9:00-10:00'),
('u4cse101', 'bharath', '2', 'Tuesday', '10:00-11:00'),
('u4cse101', 'bharath', '3', 'Tuesday', '11:00-12:00'),
('u4cse101', 'bharath', '4', 'Tuesday', '12:00-13:00'),
('u4cse101', 'bharath', '5', 'Tuesday', '14:00-15:00'),
('u4cse101', 'bharath', '6', 'Tuesday', '15:00-16:00'),
('u4cse101', 'bharath', '1', 'Tuesday', '9:00-10:00'),
('u4cse101', 'bharath', '2', 'Wednesday', '10:00-11:00'),
('u4cse101', 'bharath', '3', 'Wednesday', '11:00-12:00'),
('u4cse101', 'bharath', '4', 'Wednesday', '12:00-13:00'),
('u4cse101', 'bharath', '5', 'Wednesday', '14:00-15:00'),
('u4cse101', 'bharath', '6', 'Wednesday', '15:00-16:00'),
('u4cse101', 'bharath', '1', 'Wednesday', '9:00-10:00'),
('u4cse103', 'newton', '2', 'Friday', '10:00-11:00'),
('u4cse103', 'newton', '3', 'Friday', '11:00-12:00'),
('u4cse103', 'newton', '4', 'Friday', '12:00-13:00'),
('u4cse103', 'newton', '5', 'Friday', '14:00-15:00'),
('u4cse103', 'newton', '6', 'Friday', '15:00-16:00'),
('u4cse103', 'newton', '1', 'Friday', '9:00-10:00'),
('u4cse103', 'newton', '2', 'Monday', '10:00-11:00'),
('u4cse103', 'newton', '3', 'Monday', '11:00-12:00'),
('u4cse103', 'newton', '4', 'Monday', '12:00-13:00'),
('u4cse103', 'newton', '5', 'Monday', '14:00-15:00'),
('u4cse103', 'newton', '6', 'Monday', '15:00-16:00'),
('u4cse103', 'newton', '1', 'Monday', '9:00-10:00'),
('u4cse103', 'newton', '2', 'Thursday', '10:00-11:00'),
('u4cse103', 'newton', '3', 'Thursday', '11:00-12:00'),
('u4cse103', 'newton', '4', 'Thursday', '12:00-13:00'),
('u4cse103', 'newton', '5', 'Thursday', '14:00-15:00'),
('u4cse103', 'newton', '6', 'Thursday', '15:00-16:00'),
('u4cse103', 'newton', '1', 'Thursday', '9:00-10:00'),
('u4cse103', 'newton', '2', 'Tuesday', '10:00-11:00'),
('u4cse103', 'newton', '3', 'Tuesday', '11:00-12:00'),
('u4cse103', 'newton', '4', 'Tuesday', '12:00-13:00'),
('u4cse103', 'newton', '5', 'Tuesday', '14:00-15:00'),
('u4cse103', 'newton', '6', 'Tuesday', '15:00-16:00'),
('u4cse103', 'newton', '1', 'Tuesday', '9:00-10:00'),
('u4cse103', 'newton', '2', 'Wednesday', '10:00-11:00'),
('u4cse103', 'newton', '3', 'Wednesday', '11:00-12:00'),
('u4cse103', 'newton', '4', 'Wednesday', '12:00-13:00'),
('u4cse103', 'newton', '5', 'Wednesday', '14:00-15:00'),
('u4cse103', 'newton', '6', 'Wednesday', '15:00-16:00'),
('u4cse103', 'newton', '1', 'Wednesday', '9:00-10:00'),
('u4cse104', 'ram', '2', 'Friday', '10:00-11:00'),
('u4cse104', 'ram', '3', 'Friday', '11:00-12:00'),
('u4cse104', 'ram', '4', 'Friday', '12:00-13:00'),
('u4cse104', 'ram', '5', 'Friday', '14:00-15:00'),
('u4cse104', 'ram', '6', 'Friday', '15:00-16:00'),
('u4cse104', 'ram', '1', 'Friday', '9:00-10:00'),
('u4cse104', 'ram', '2', 'Monday', '10:00-11:00'),
('u4cse104', 'ram', '3', 'Monday', '11:00-12:00'),
('u4cse104', 'ram', '4', 'Monday', '12:00-13:00'),
('u4cse104', 'ram', '5', 'Monday', '14:00-15:00'),
('u4cse104', 'ram', '6', 'Monday', '15:00-16:00'),
('u4cse104', 'ram', '1', 'Monday', '9:00-10:00'),
('u4cse104', 'ram', '2', 'Thursday', '10:00-11:00'),
('u4cse104', 'ram', '3', 'Thursday', '11:00-12:00'),
('u4cse104', 'ram', '4', 'Thursday', '12:00-13:00'),
('u4cse104', 'ram', '5', 'Thursday', '14:00-15:00'),
('u4cse104', 'ram', '6', 'Thursday', '15:00-16:00'),
('u4cse104', 'ram', '1', 'Thursday', '9:00-10:00'),
('u4cse104', 'ram', '2', 'Tuesday', '10:00-11:00'),
('u4cse104', 'ram', '3', 'Tuesday', '11:00-12:00'),
('u4cse104', 'ram', '4', 'Tuesday', '12:00-13:00'),
('u4cse104', 'ram', '5', 'Tuesday', '14:00-15:00'),
('u4cse104', 'ram', '6', 'Tuesday', '15:00-16:00'),
('u4cse104', 'ram', '1', 'Tuesday', '9:00-10:00'),
('u4cse104', 'ram', '2', 'Wednesday', '10:00-11:00'),
('u4cse104', 'ram', '3', 'Wednesday', '11:00-12:00'),
('u4cse104', 'ram', '4', 'Wednesday', '12:00-13:00'),
('u4cse104', 'ram', '5', 'Wednesday', '14:00-15:00'),
('u4cse104', 'ram', '6', 'Wednesday', '15:00-16:00'),
('u4cse104', 'ram', '1', 'Wednesday', '9:00-10:00'),
('u4cse105', 'teja', '2', 'Friday', '10:00-11:00'),
('u4cse105', 'teja', '3', 'Friday', '11:00-12:00'),
('u4cse105', 'teja', '4', 'Friday', '12:00-13:00'),
('u4cse105', 'teja', '5', 'Friday', '14:00-15:00'),
('u4cse105', 'teja', '6', 'Friday', '15:00-16:00'),
('u4cse105', 'teja', '1', 'Friday', '9:00-10:00'),
('u4cse105', 'teja', '2', 'Monday', '10:00-11:00'),
('u4cse105', 'teja', '3', 'Monday', '11:00-12:00'),
('u4cse105', 'teja', '4', 'Monday', '12:00-13:00'),
('u4cse105', 'teja', '5', 'Monday', '14:00-15:00'),
('u4cse105', 'teja', '6', 'Monday', '15:00-16:00'),
('u4cse105', 'teja', '1', 'Monday', '9:00-10:00'),
('u4cse105', 'teja', '2', 'Thursday', '10:00-11:00'),
('u4cse105', 'teja', '3', 'Thursday', '11:00-12:00'),
('u4cse105', 'teja', '4', 'Thursday', '12:00-13:00'),
('u4cse105', 'teja', '5', 'Thursday', '14:00-15:00'),
('u4cse105', 'teja', '6', 'Thursday', '15:00-16:00'),
('u4cse105', 'teja', '1', 'Thursday', '9:00-10:00'),
('u4cse105', 'teja', '2', 'Tuesday', '10:00-11:00'),
('u4cse105', 'teja', '3', 'Tuesday', '11:00-12:00'),
('u4cse105', 'teja', '4', 'Tuesday', '12:00-13:00'),
('u4cse105', 'teja', '5', 'Tuesday', '14:00-15:00'),
('u4cse105', 'teja', '6', 'Tuesday', '15:00-16:00'),
('u4cse105', 'teja', '1', 'Tuesday', '9:00-10:00'),
('u4cse105', 'teja', '2', 'Wednesday', '10:00-11:00'),
('u4cse105', 'teja', '3', 'Wednesday', '11:00-12:00'),
('u4cse105', 'teja', '4', 'Wednesday', '12:00-13:00'),
('u4cse105', 'teja', '5', 'Wednesday', '14:00-15:00'),
('u4cse105', 'teja', '6', 'Wednesday', '15:00-16:00'),
('u4cse105', 'teja', '1', 'Wednesday', '9:00-10:00'),
('u4cse107', 'ajay', '2', 'Friday', '10:00-11:00'),
('u4cse107', 'ajay', '3', 'Friday', '11:00-12:00'),
('u4cse107', 'ajay', '4', 'Friday', '12:00-13:00'),
('u4cse107', 'ajay', '5', 'Friday', '14:00-15:00'),
('u4cse107', 'ajay', '6', 'Friday', '15:00-16:00'),
('u4cse107', 'ajay', '1', 'Friday', '9:00-10:00'),
('u4cse107', 'ajay', '2', 'Monday', '10:00-11:00'),
('u4cse107', 'ajay', '3', 'Monday', '11:00-12:00'),
('u4cse107', 'ajay', '4', 'Monday', '12:00-13:00'),
('u4cse107', 'ajay', '5', 'Monday', '14:00-15:00'),
('u4cse107', 'ajay', '6', 'Monday', '15:00-16:00'),
('u4cse107', 'ajay', '1', 'Monday', '9:00-10:00'),
('u4cse107', 'ajay', '2', 'Thursday', '10:00-11:00'),
('u4cse107', 'ajay', '3', 'Thursday', '11:00-12:00'),
('u4cse107', 'ajay', '4', 'Thursday', '12:00-13:00'),
('u4cse107', 'ajay', '5', 'Thursday', '14:00-15:00'),
('u4cse107', 'ajay', '6', 'Thursday', '15:00-16:00'),
('u4cse107', 'ajay', '1', 'Thursday', '9:00-10:00'),
('u4cse107', 'ajay', '2', 'Tuesday', '10:00-11:00'),
('u4cse107', 'ajay', '3', 'Tuesday', '11:00-12:00'),
('u4cse107', 'ajay', '4', 'Tuesday', '12:00-13:00'),
('u4cse107', 'ajay', '5', 'Tuesday', '14:00-15:00'),
('u4cse107', 'ajay', '6', 'Tuesday', '15:00-16:00'),
('u4cse107', 'ajay', '1', 'Tuesday', '9:00-10:00'),
('u4cse107', 'ajay', '2', 'Wednesday', '10:00-11:00'),
('u4cse107', 'ajay', '3', 'Wednesday', '11:00-12:00'),
('u4cse107', 'ajay', '4', 'Wednesday', '12:00-13:00'),
('u4cse107', 'ajay', '5', 'Wednesday', '14:00-15:00'),
('u4cse107', 'ajay', '6', 'Wednesday', '15:00-16:00'),
('u4cse107', 'ajay', '1', 'Wednesday', '9:00-10:00'),
('u4cse108', 'aswin', '2', 'Friday', '10:00-11:00'),
('u4cse108', 'aswin', '3', 'Friday', '11:00-12:00'),
('u4cse108', 'aswin', '4', 'Friday', '12:00-13:00'),
('u4cse108', 'aswin', '5', 'Friday', '14:00-15:00'),
('u4cse108', 'aswin', '6', 'Friday', '15:00-16:00'),
('u4cse108', 'aswin', '1', 'Friday', '9:00-10:00'),
('u4cse108', 'aswin', '2', 'Monday', '10:00-11:00'),
('u4cse108', 'aswin', '3', 'Monday', '11:00-12:00'),
('u4cse108', 'aswin', '4', 'Monday', '12:00-13:00'),
('u4cse108', 'aswin', '5', 'Monday', '14:00-15:00'),
('u4cse108', 'aswin', '6', 'Monday', '15:00-16:00'),
('u4cse108', 'aswin', '1', 'Monday', '9:00-10:00'),
('u4cse108', 'aswin', '2', 'Thursday', '10:00-11:00'),
('u4cse108', 'aswin', '3', 'Thursday', '11:00-12:00'),
('u4cse108', 'aswin', '4', 'Thursday', '12:00-13:00'),
('u4cse108', 'aswin', '5', 'Thursday', '14:00-15:00'),
('u4cse108', 'aswin', '6', 'Thursday', '15:00-16:00'),
('u4cse108', 'aswin', '1', 'Thursday', '9:00-10:00'),
('u4cse108', 'aswin', '2', 'Tuesday', '10:00-11:00'),
('u4cse108', 'aswin', '3', 'Tuesday', '11:00-12:00'),
('u4cse108', 'aswin', '4', 'Tuesday', '12:00-13:00'),
('u4cse108', 'aswin', '5', 'Tuesday', '14:00-15:00'),
('u4cse108', 'aswin', '6', 'Tuesday', '15:00-16:00'),
('u4cse108', 'aswin', '1', 'Tuesday', '9:00-10:00'),
('u4cse108', 'aswin', '2', 'Wednesday', '10:00-11:00'),
('u4cse108', 'aswin', '3', 'Wednesday', '11:00-12:00'),
('u4cse108', 'aswin', '4', 'Wednesday', '12:00-13:00'),
('u4cse108', 'aswin', '5', 'Wednesday', '14:00-15:00'),
('u4cse108', 'aswin', '6', 'Wednesday', '15:00-16:00'),
('u4cse108', 'aswin', '1', 'Wednesday', '9:00-10:00'),
('u4cse109', 'vishnu', '2', 'Friday', '10:00-11:00'),
('u4cse109', 'vishnu', '3', 'Friday', '11:00-12:00'),
('u4cse109', 'vishnu', '4', 'Friday', '12:00-13:00'),
('u4cse109', 'vishnu', '5', 'Friday', '14:00-15:00'),
('u4cse109', 'vishnu', '6', 'Friday', '15:00-16:00'),
('u4cse109', 'vishnu', '1', 'Friday', '9:00-10:00'),
('u4cse109', 'vishnu', '2', 'Monday', '10:00-11:00'),
('u4cse109', 'vishnu', '3', 'Monday', '11:00-12:00'),
('u4cse109', 'vishnu', '4', 'Monday', '12:00-13:00'),
('u4cse109', 'vishnu', '5', 'Monday', '14:00-15:00'),
('u4cse109', 'vishnu', '6', 'Monday', '15:00-16:00'),
('u4cse109', 'vishnu', '1', 'Monday', '9:00-10:00'),
('u4cse109', 'vishnu', '2', 'Thursday', '10:00-11:00'),
('u4cse109', 'vishnu', '3', 'Thursday', '11:00-12:00'),
('u4cse109', 'vishnu', '4', 'Thursday', '12:00-13:00'),
('u4cse109', 'vishnu', '5', 'Thursday', '14:00-15:00'),
('u4cse109', 'vishnu', '6', 'Thursday', '15:00-16:00'),
('u4cse109', 'vishnu', '1', 'Thursday', '9:00-10:00'),
('u4cse109', 'vishnu', '2', 'Tuesday', '10:00-11:00'),
('u4cse109', 'vishnu', '3', 'Tuesday', '11:00-12:00'),
('u4cse109', 'vishnu', '4', 'Tuesday', '12:00-13:00'),
('u4cse109', 'vishnu', '5', 'Tuesday', '14:00-15:00'),
('u4cse109', 'vishnu', '6', 'Tuesday', '15:00-16:00'),
('u4cse109', 'vishnu', '1', 'Tuesday', '9:00-10:00'),
('u4cse109', 'vishnu', '2', 'Wednesday', '10:00-11:00'),
('u4cse109', 'vishnu', '3', 'Wednesday', '11:00-12:00'),
('u4cse109', 'vishnu', '4', 'Wednesday', '12:00-13:00'),
('u4cse109', 'vishnu', '5', 'Wednesday', '14:00-15:00'),
('u4cse109', 'vishnu', '6', 'Wednesday', '15:00-16:00'),
('u4cse109', 'vishnu', '1', 'Wednesday', '9:00-10:00'),
('u4cse110', 'vikram', '2', 'Friday', '10:00-11:00'),
('u4cse110', 'vikram', '3', 'Friday', '11:00-12:00'),
('u4cse110', 'vikram', '4', 'Friday', '12:00-13:00'),
('u4cse110', 'vikram', '5', 'Friday', '14:00-15:00'),
('u4cse110', 'vikram', '6', 'Friday', '15:00-16:00'),
('u4cse110', 'vikram', '1', 'Friday', '9:00-10:00'),
('u4cse110', 'vikram', '2', 'Monday', '10:00-11:00'),
('u4cse110', 'vikram', '3', 'Monday', '11:00-12:00'),
('u4cse110', 'vikram', '4', 'Monday', '12:00-13:00'),
('u4cse110', 'vikram', '5', 'Monday', '14:00-15:00'),
('u4cse110', 'vikram', '6', 'Monday', '15:00-16:00'),
('u4cse110', 'vikram', '1', 'Monday', '9:00-10:00'),
('u4cse110', 'vikram', '2', 'Thursday', '10:00-11:00'),
('u4cse110', 'vikram', '3', 'Thursday', '11:00-12:00'),
('u4cse110', 'vikram', '4', 'Thursday', '12:00-13:00'),
('u4cse110', 'vikram', '5', 'Thursday', '14:00-15:00'),
('u4cse110', 'vikram', '6', 'Thursday', '15:00-16:00'),
('u4cse110', 'vikram', '1', 'Thursday', '9:00-10:00'),
('u4cse110', 'vikram', '2', 'Tuesday', '10:00-11:00'),
('u4cse110', 'vikram', '3', 'Tuesday', '11:00-12:00'),
('u4cse110', 'vikram', '4', 'Tuesday', '12:00-13:00'),
('u4cse110', 'vikram', '5', 'Tuesday', '14:00-15:00'),
('u4cse110', 'vikram', '6', 'Tuesday', '15:00-16:00'),
('u4cse110', 'vikram', '1', 'Tuesday', '9:00-10:00'),
('u4cse110', 'vikram', '2', 'Wednesday', '10:00-11:00'),
('u4cse110', 'vikram', '3', 'Wednesday', '11:00-12:00'),
('u4cse110', 'vikram', '4', 'Wednesday', '12:00-13:00'),
('u4cse110', 'vikram', '5', 'Wednesday', '14:00-15:00'),
('u4cse110', 'vikram', '6', 'Wednesday', '15:00-16:00'),
('u4cse110', 'vikram', '1', 'Wednesday', '9:00-10:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `friday`
-- (See below for the actual view)
--
CREATE TABLE `friday` (
`faculty_id` varchar(10)
,`faculty_name` varchar(30)
,`semester` varchar(20)
,`Day` varchar(20)
,`Hours` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `monday`
-- (See below for the actual view)
--
CREATE TABLE `monday` (
`faculty_id` varchar(10)
,`faculty_name` varchar(30)
,`semester` varchar(20)
,`Day` varchar(20)
,`Hours` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(30) DEFAULT NULL,
  `branch_name` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `branch_name`, `semester`) VALUES
('u4cse13332', 'Amrit', 'MECH', '5'),
('u4cse15632', 'sid', 'ECE', '4'),
('u4cse16332', 'sad', 'EEE', '3'),
('u4cse17326', 'Indra', 'CSE', '5'),
('u4cse17327', 'bharath', 'CSE', '5'),
('u4cse17329', 'groot', 'CSE', '5'),
('u4cse17330', 'vikram', 'CSE', '5'),
('u4cse17331', 'srinath', 'CSE', '5'),
('u4cse17332', 'newton', 'CSE', '5'),
('u4cse17361', 'Srinath R', 'CSE', '5');

-- --------------------------------------------------------

--
-- Stand-in structure for view `thursday`
-- (See below for the actual view)
--
CREATE TABLE `thursday` (
`faculty_id` varchar(10)
,`faculty_name` varchar(30)
,`semester` varchar(20)
,`Day` varchar(20)
,`Hours` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `weekday` varchar(10) DEFAULT NULL,
  `hours` varchar(10) DEFAULT NULL,
  `faculty_id` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `branch_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`weekday`, `hours`, `faculty_id`, `semester`, `branch_name`) VALUES
('Monday', '1', 'u4cse101', '', ''),
('Tuesday', '1', 'u4cse101', '', ''),
('Wednesday', '1', 'u4cse101', '', ''),
('Thursday', '1', 'u4cse101', '', ''),
('Friday', '1', 'u4cse101', '', ''),
('Monday', '1', 'u4cse101', '', ''),
('Tuesday', '1', 'u4cse101', '', ''),
('Wednesday', '1', 'u4cse101', '', ''),
('Thursday', '1', 'u4cse101', '', ''),
('Friday', '1', 'u4cse101', '', ''),
('Monday', '1', 'u4cse101', '', ''),
('Tuesday', '1', 'u4cse101', '', ''),
('Wednesday', '1', 'u4cse101', '', ''),
('Thursday', '1', 'u4cse101', '', ''),
('Friday', '1', 'u4cse101', '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tuesday`
-- (See below for the actual view)
--
CREATE TABLE `tuesday` (
`faculty_id` varchar(10)
,`faculty_name` varchar(30)
,`semester` varchar(20)
,`Day` varchar(20)
,`Hours` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wednesday`
-- (See below for the actual view)
--
CREATE TABLE `wednesday` (
`faculty_id` varchar(10)
,`faculty_name` varchar(30)
,`semester` varchar(20)
,`Day` varchar(20)
,`Hours` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `friday`
--
DROP TABLE IF EXISTS `friday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `friday`  AS  select `faculty_timetable`.`faculty_id` AS `faculty_id`,`faculty_timetable`.`faculty_name` AS `faculty_name`,`faculty_timetable`.`semester` AS `semester`,`faculty_timetable`.`Day` AS `Day`,`faculty_timetable`.`Hours` AS `Hours` from `faculty_timetable` where ((`faculty_timetable`.`semester` = '1') and (`faculty_timetable`.`Hours` = '9:00-10:00') and (`faculty_timetable`.`Day` = 'friday')) ;

-- --------------------------------------------------------

--
-- Structure for view `monday`
--
DROP TABLE IF EXISTS `monday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monday`  AS  select `faculty_timetable`.`faculty_id` AS `faculty_id`,`faculty_timetable`.`faculty_name` AS `faculty_name`,`faculty_timetable`.`semester` AS `semester`,`faculty_timetable`.`Day` AS `Day`,`faculty_timetable`.`Hours` AS `Hours` from `faculty_timetable` where ((`faculty_timetable`.`semester` = '1') and (`faculty_timetable`.`Hours` = '9:00-10:00') and (`faculty_timetable`.`Day` = 'monday')) ;

-- --------------------------------------------------------

--
-- Structure for view `thursday`
--
DROP TABLE IF EXISTS `thursday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `thursday`  AS  select `faculty_timetable`.`faculty_id` AS `faculty_id`,`faculty_timetable`.`faculty_name` AS `faculty_name`,`faculty_timetable`.`semester` AS `semester`,`faculty_timetable`.`Day` AS `Day`,`faculty_timetable`.`Hours` AS `Hours` from `faculty_timetable` where ((`faculty_timetable`.`semester` = '1') and (`faculty_timetable`.`Hours` = '9:00-10:00') and (`faculty_timetable`.`Day` = 'thursday')) ;

-- --------------------------------------------------------

--
-- Structure for view `tuesday`
--
DROP TABLE IF EXISTS `tuesday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tuesday`  AS  select `faculty_timetable`.`faculty_id` AS `faculty_id`,`faculty_timetable`.`faculty_name` AS `faculty_name`,`faculty_timetable`.`semester` AS `semester`,`faculty_timetable`.`Day` AS `Day`,`faculty_timetable`.`Hours` AS `Hours` from `faculty_timetable` where ((`faculty_timetable`.`semester` = '1') and (`faculty_timetable`.`Hours` = '9:00-10:00') and (`faculty_timetable`.`Day` = 'tuesday')) ;

-- --------------------------------------------------------

--
-- Structure for view `wednesday`
--
DROP TABLE IF EXISTS `wednesday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wednesday`  AS  select `faculty_timetable`.`faculty_id` AS `faculty_id`,`faculty_timetable`.`faculty_name` AS `faculty_name`,`faculty_timetable`.`semester` AS `semester`,`faculty_timetable`.`Day` AS `Day`,`faculty_timetable`.`Hours` AS `Hours` from `faculty_timetable` where ((`faculty_timetable`.`semester` = '1') and (`faculty_timetable`.`Hours` = '9:00-10:00') and (`faculty_timetable`.`Day` = 'wednesday')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_name`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `branch_name` (`branch_name`);

--
-- Indexes for table `exam_room`
--
ALTER TABLE `exam_room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`scheduler_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`,`phone_no`,`email`);

--
-- Indexes for table `faculty_course`
--
ALTER TABLE `faculty_course`
  ADD PRIMARY KEY (`faculty_id`,`semester`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `faculty_timetable`
--
ALTER TABLE `faculty_timetable`
  ADD PRIMARY KEY (`faculty_id`,`Day`,`Hours`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `branch_name` (`branch_name`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD KEY `faculty_id` (`faculty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`);

--
-- Constraints for table `faculty_course`
--
ALTER TABLE `faculty_course`
  ADD CONSTRAINT `faculty_course_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
  ADD CONSTRAINT `faculty_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`);

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
