-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 01:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recordsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes_types`
--

CREATE TABLE `attributes_types` (
  `id` bigint(20) NOT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `code` varchar(36) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attributes_types`
--

INSERT INTO `attributes_types` (`id`, `uuid`, `code`, `description`, `created`, `updated`) VALUES
(48, 'f4d3f428-4e7a-11ec-a811-d8cb8aef7c12', 'Address', 'address', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(49, 'f4d4c216-4e7a-11ec-a811-d8cb8aef7c12', 'Age', 'age', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(50, 'f4d5a124-4e7a-11ec-a811-d8cb8aef7c12', 'Gender', 'gender', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(51, 'f4d68905-4e7a-11ec-a811-d8cb8aef7c12', 'Name', 'name', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(52, 'f4d7b68e-4e7a-11ec-a811-d8cb8aef7c12', 'name', 'name', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(53, 'f4d86c7f-4e7a-11ec-a811-d8cb8aef7c12', 'Degree', 'degree', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(54, 'f4d91bf0-4e7a-11ec-a811-d8cb8aef7c12', 'Height', 'height', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(55, 'f4d9c825-4e7a-11ec-a811-d8cb8aef7c12', 'number', 'number', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(56, 'f4daa5a8-4e7a-11ec-a811-d8cb8aef7c12', 'Number', 'number', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(57, 'f4db9f8f-4e7a-11ec-a811-d8cb8aef7c12', 'Alias', 'alias', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(58, 'f4dc7ede-4e7a-11ec-a811-d8cb8aef7c12', 'contact', 'contact', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(59, 'f4dd4e1a-4e7a-11ec-a811-d8cb8aef7c12', 'connection', 'connection', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(60, 'f4de4159-4e7a-11ec-a811-d8cb8aef7c12', 'device', 'device', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(61, 'f4df01e8-4e7a-11ec-a811-d8cb8aef7c12', 'phone', 'phone', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(62, 'f4dfe9a2-4e7a-11ec-a811-d8cb8aef7c12', 'laptop', 'laptop', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(63, 'f4e0af5d-4e7a-11ec-a811-d8cb8aef7c12', 'pc', 'pc', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(64, 'f4e1831b-4e7a-11ec-a811-d8cb8aef7c12', 'parts', 'parts', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(65, 'f4e246cd-4e7a-11ec-a811-d8cb8aef7c12', 'ram', 'ram', '2021-11-26 03:47:26', '2021-11-26 03:47:26'),
(66, 'f4e2f3cf-4e7a-11ec-a811-d8cb8aef7c12', 'username', 'username', '2021-11-26 03:47:26', '2021-11-26 03:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `entities_details`
--

CREATE TABLE `entities_details` (
  `id` bigint(20) NOT NULL,
  `entities_main_id` varchar(36) DEFAULT NULL,
  `attributes_types_id` varchar(36) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entities_details`
--

INSERT INTO `entities_details` (`id`, `entities_main_id`, `attributes_types_id`, `value`, `created`, `updated`) VALUES
(71, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d3f428-4e7a-11ec-a811-d8cb8aef7c12', 'address', '2021-11-26 06:38:31', '2021-11-26 06:38:31'),
(72, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d4c216-4e7a-11ec-a811-d8cb8aef7c12', 'age', '2021-11-26 06:38:31', '2021-11-26 06:38:31'),
(73, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d5a124-4e7a-11ec-a811-d8cb8aef7c12', 'gender', '2021-11-26 06:38:53', '2021-11-26 06:38:53'),
(74, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d7b68e-4e7a-11ec-a811-d8cb8aef7c12', 'name', '2021-11-26 06:38:53', '2021-11-26 06:38:53'),
(75, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d9c825-4e7a-11ec-a811-d8cb8aef7c12', 'number', '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(76, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d86c7f-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(77, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d91bf0-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(78, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4d68905-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(79, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4daa5a8-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(80, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4db9f8f-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(81, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4dc7ede-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(82, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4dd4e1a-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(83, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4de4159-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(84, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4df01e8-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(85, '0002b061-4e78-11ec-a811-d8cb8aef7c12', 'f4dfe9a2-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(87, 'b16ad80b-4e77-11ec-a811-d8cb8aef7c12', 'f4d4c216-4e7a-11ec-a811-d8cb8aef7c12', NULL, '2021-11-28 16:47:39', '2021-11-28 16:47:39'),
(88, 'b16ad80b-4e77-11ec-a811-d8cb8aef7c12', 'f4d68905-4e7a-11ec-a811-d8cb8aef7c12', 'name', '2021-11-28 16:57:06', '2021-11-28 16:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `entities_main`
--

CREATE TABLE `entities_main` (
  `id` bigint(20) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `entities_types_id` varchar(36) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entities_main`
--

INSERT INTO `entities_main` (`id`, `uuid`, `entities_types_id`, `created`, `updated`) VALUES
(10, 'b16ad80b-4e77-11ec-a811-d8cb8aef7c12', '48c5f8df-4e61-11ec-a811-d8cb8aef7c12', '2021-11-26 13:13:43', '2021-11-26 13:13:43'),
(11, 'e892df3e-4e77-11ec-a811-d8cb8aef7c12', '48c5f8df-4e61-11ec-a811-d8cb8aef7c12', '2021-11-26 13:15:16', '2021-11-26 13:15:16'),
(12, 'f0e8e37e-4e77-11ec-a811-d8cb8aef7c12', '6247d80f-4e61-11ec-a811-d8cb8aef7c12', '2021-11-26 13:15:30', '2021-11-26 13:15:30'),
(13, 'f89726f6-4e77-11ec-a811-d8cb8aef7c12', '63d98c25-4e61-11ec-a811-d8cb8aef7c12', '2021-11-26 13:15:43', '2021-11-26 13:15:43'),
(14, '0002b061-4e78-11ec-a811-d8cb8aef7c12', '651d60f8-4e61-11ec-a811-d8cb8aef7c12', '2021-11-26 13:15:55', '2021-11-26 13:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `entities_types`
--

CREATE TABLE `entities_types` (
  `id` bigint(20) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entities_types`
--

INSERT INTO `entities_types` (`id`, `uuid`, `type`, `description`, `created`, `updated`) VALUES
(27, '30ee53f9-4e60-11ec-a811-d8cb8aef7c12', 'Developer', 'Researching, designing, implementing, and managing software programs. Testing and evaluating new programs. Identifying areas for modification in existing programs and subsequently developing these mod', '2021-11-26 03:23:56', '2021-11-26 03:23:56'),
(47, '48c5f8df-4e61-11ec-a811-d8cb8aef7c12', 'Programmer', 'Also known as software engineers or systems programmers, computer programmers are tasked with designing and creating software programs, integrating systems and software, training end-users, analyzing ', '2021-11-26 10:33:19', '2021-11-26 10:33:19'),
(48, '6247d80f-4e61-11ec-a811-d8cb8aef7c12', 'Manager', 'The manager is an employee who is responsible for planning, directing, and overseeing the operations and fiscal health of a business unit, division, department, or operating unit within an organizatio', '2021-11-26 10:34:02', '2021-11-26 10:34:02'),
(49, '63d98c25-4e61-11ec-a811-d8cb8aef7c12', 'Designer', 'A designer plays a key role in a creative company. Using elements like typography, illustration, photography and layouts, a designer always has an extremely creative mind that can absorb visual trends', '2021-11-26 10:34:04', '2021-11-26 10:34:04'),
(50, '651d60f8-4e61-11ec-a811-d8cb8aef7c12', 'Janitor', 'A Janitor, or Cleaner, is responsible for maintaining a cleanly facility by completing a variety of cleaning tasks. Their duties include mopping and vacuuming floors, cleaning surfaces with disinfecta', '2021-11-26 10:34:06', '2021-11-26 10:34:06'),
(51, '68004df5-4e61-11ec-a811-d8cb8aef7c12', 'Nurse', 'Nurses promote health, prevent disease and help patients cope with illness. ... Nurses advocate for their patients and patients\' families. They develop and manage nursing care plans and instruct patie', '2021-11-26 10:34:11', '2021-11-26 10:34:11'),
(52, '6850c55b-4e61-11ec-a811-d8cb8aef7c12', 'Doctor', 'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. They examine patients, review their medical history, diagno', '2021-11-26 10:34:12', '2021-11-26 10:34:12'),
(53, '68972a48-4e61-11ec-a811-d8cb8aef7c12', 'Technicians', 'Technicians are skilled professionals employed in almost every industry. They repair, install, replace, and service different systems and equipment. Technicians typically work alongside other skilled ', '2021-11-26 10:34:12', '2021-11-26 10:34:12'),
(54, '68c7c55e-4e61-11ec-a811-d8cb8aef7c12', 'Repairman', 'one who repairs specifically : one whose occupation is to make repairs in a mechanism.', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(55, '68f1041b-4e61-11ec-a811-d8cb8aef7c12', 'Judge', 'a person who is in charge of a trial in a court and decides how a person who is guilty of a crime should be punished', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(56, '6917b6a2-4e61-11ec-a811-d8cb8aef7c12', 'Police', 'Police typically are responsible for maintaining public order and safety, enforcing the law, and preventing, detecting, and investigating criminal activities.', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(57, '6944a176-4e61-11ec-a811-d8cb8aef7c12', 'Driver', 'Responsibilities. Map out driving routes ahead of time to determine the most expedient trip. Pick up clients from the place and at the time they\'ve requested.', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(58, '696b9736-4e61-11ec-a811-d8cb8aef7c12', 'Seaman', 'sailor, mariner. 2a : any of the three ranks below petty officer in the navy or coast guard. b : an enlisted man in the navy or coast guard ranking above a seaman apprentice', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(59, '69957a9b-4e61-11ec-a811-d8cb8aef7c12', 'Diver', 'driver', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(60, '69c8a407-4e61-11ec-a811-d8cb8aef7c12', 'cabler', 'cabler', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(61, '69f2a93d-4e61-11ec-a811-d8cb8aef7c12', 'Vendor', 'vendor', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(62, '6a22e0d0-4e61-11ec-a811-d8cb8aef7c12', 'Clerk', 'clerk', '2021-11-26 10:34:15', '2021-11-26 10:34:15'),
(63, '6a52bf02-4e61-11ec-a811-d8cb8aef7c12', 'Teacher', 'teacher', '2021-11-26 10:34:15', '2021-11-26 10:34:15'),
(64, '6a804b62-4e61-11ec-a811-d8cb8aef7c12', 'Instructor', 'instructor', '2021-11-26 10:34:15', '2021-11-26 10:34:15'),
(65, '6ab0652c-4e61-11ec-a811-d8cb8aef7c12', 'Auditor', 'auditor', '2021-11-26 10:34:16', '2021-11-26 10:34:16'),
(66, '6ae14bfb-4e61-11ec-a811-d8cb8aef7c12', 'Audit', 'audit', '2021-11-26 10:34:16', '2021-11-26 10:34:16'),
(67, '6b11ae55-4e61-11ec-a811-d8cb8aef7c12', 'Backend', 'backend', '2021-11-26 10:34:16', '2021-11-26 10:34:16'),
(68, '6b47d8df-4e61-11ec-a811-d8cb8aef7c12', 'Frontend', 'frontend', '2021-11-26 10:34:17', '2021-11-26 10:34:17'),
(69, '6b8ec367-4e61-11ec-a811-d8cb8aef7c12', 'Admin', 'admin desc', '2021-11-26 10:34:17', '2021-11-26 10:34:17'),
(75, '68004df5-4e61-11ec-a811-d8cb8aef7c12', 'Nurse', 'Nurses promote health, prevent disease and help patients cope with illness. ... Nurses advocate for their patients and patients\' families. They develop and manage nursing care plans and instruct patie', '2021-11-26 10:34:11', '2021-11-26 10:34:11'),
(76, '6850c55b-4e61-11ec-a811-d8cb8aef7c12', 'Doctor', 'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. They examine patients, review their medical history, diagno', '2021-11-26 10:34:12', '2021-11-26 10:34:12'),
(77, '68972a48-4e61-11ec-a811-d8cb8aef7c12', 'Technicians', 'Technicians are skilled professionals employed in almost every industry. They repair, install, replace, and service different systems and equipment. Technicians typically work alongside other skilled ', '2021-11-26 10:34:12', '2021-11-26 10:34:12'),
(78, '68c7c55e-4e61-11ec-a811-d8cb8aef7c12', 'Repairman', 'one who repairs specifically : one whose occupation is to make repairs in a mechanism.', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(79, '68f1041b-4e61-11ec-a811-d8cb8aef7c12', 'Judge', ' a person who is in charge of a trial in a court and decides how a person who is guilty of a crime should be punished, or who makes decisions on legal matters: a British high-court judge. a U.S. Supre', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(80, '6917b6a2-4e61-11ec-a811-d8cb8aef7c12', 'Police', 'Police typically are responsible for maintaining public order and safety, enforcing the law, and preventing, detecting, and investigating criminal activities. These functions are known as policing. Po', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(81, '6944a176-4e61-11ec-a811-d8cb8aef7c12', 'Driver', 'Responsibilities. Map out driving routes ahead of time to determine the most expedient trip. Pick up clients from the place and at the time they\'ve requested. Collect payments and issue receipts. Assi', '2021-11-26 10:34:13', '2021-11-26 10:34:13'),
(82, '696b9736-4e61-11ec-a811-d8cb8aef7c12', 'Seaman', 'sailor, mariner. 2a : any of the three ranks below petty officer in the navy or coast guard. b : an enlisted man in the navy or coast guard ranking above a seaman apprentice and below a petty officer.', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(83, '69957a9b-4e61-11ec-a811-d8cb8aef7c12', 'Diver', 'Divers work underwater, performing many jobs. ... Divers are also members of scientific research teams, collecting or photographing fish, vegetation, or minerals. They also repair ships below the wate', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(84, '69c8a407-4e61-11ec-a811-d8cb8aef7c12', 'cabler', 'A cable is a thick wire, or a group of wires inside a rubber or plastic covering, which is used to carry electricity or electronic signals. ... Cable is used to refer to television systems in which th', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(85, '69f2a93d-4e61-11ec-a811-d8cb8aef7c12', 'Vendor', 'A vendor is a general term used to describe any supplier of goods or services. A vendor sells products or services to another company or individual. ... A manufacturer that turns raw materials into a ', '2021-11-26 10:34:14', '2021-11-26 10:34:14'),
(86, '6a22e0d0-4e61-11ec-a811-d8cb8aef7c12', 'Clerk', 'A Clerk, or Bookkeeper, is responsible for performing administrative tasks to support daily business operations. Their duties include responding to phone calls or emails, maintaining an organized fili', '2021-11-26 10:34:15', '2021-11-26 10:34:15'),
(87, '6a52bf02-4e61-11ec-a811-d8cb8aef7c12', 'Teacher', 'A teacher is responsible for preparing lesson plans and educating students at all levels. Their duties include assigning homework, grading tests, and documenting progress. Teachers must be able to ins', '2021-11-26 10:34:15', '2021-11-26 10:34:15'),
(88, '6a804b62-4e61-11ec-a811-d8cb8aef7c12', 'Instructor', 'Instructor is the title for an individual responsible for teaching students in a particular subject area. Instructors teach courses in their area of expertise and develop an instructional plan and ass', '2021-11-26 10:34:15', '2021-11-26 10:34:15'),
(89, '6ab0652c-4e61-11ec-a811-d8cb8aef7c12', 'Auditor', 'Auditors are responsible for tracking the cash flow and accounts of companies to ensure that they are being recorded and processed correctly, that assets are protected through appropriate control meas', '2021-11-26 10:34:16', '2021-11-26 10:34:16'),
(90, '6ae14bfb-4e61-11ec-a811-d8cb8aef7c12', 'Audit', 'Definition: Audit is the examination or inspection of various books of accounts by an auditor followed by physical checking of inventory to make sure that all departments are following documented syst', '2021-11-26 10:34:16', '2021-11-26 10:34:16'),
(91, '6b11ae55-4e61-11ec-a811-d8cb8aef7c12', 'Backend', 'Back end developers are responsible for creating and maintaining technology at the back end of a website (the server, database and application). The attractive visuals created by designers, UX profess', '2021-11-26 10:34:16', '2021-11-26 10:34:16'),
(92, '6b47d8df-4e61-11ec-a811-d8cb8aef7c12', 'Frontend', 'Front end developers are computer programmers who specialize in website design. Front end developer duties include determining the structure and design of web pages, striking a balance between functio', '2021-11-26 10:34:17', '2021-11-26 10:34:17'),
(93, '6b8ec367-4e61-11ec-a811-d8cb8aef7c12', 'Admin', 'What is an Administrator? An Administrator provides office support to either an individual or team and is vital for the smooth-running of a business. Their duties may include fielding telephone calls,', '2021-11-26 10:34:17', '2021-11-26 10:34:17');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_records`
-- (See below for the actual view)
--
CREATE TABLE `vw_records` (
`val1` varchar(200)
,`val2` varchar(200)
,`val3` varchar(200)
,`val4` varchar(200)
,`type` varchar(50)
,`entities_types_id` varchar(36)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_records`
--
DROP TABLE IF EXISTS `vw_records`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Dnicosia10`@`localhost` SQL SECURITY DEFINER VIEW `vw_records`  AS SELECT DISTINCT `aty1`.`value` AS `val1`, `aty2`.`value` AS `val2`, `aty3`.`value` AS `val3`, `aty4`.`value` AS `val4`, `ety`.`type` AS `type`, `em`.`entities_types_id` AS `entities_types_id` FROM ((((((`entities_main` `em` join `entities_details` `ed` on(`em`.`uuid` = `ed`.`entities_main_id`)) join `entities_details` `aty1` on(`aty1`.`value` = 'name')) join `entities_details` `aty2` on(`aty2`.`value` = 'age')) join `entities_details` `aty3` on(`aty3`.`value` = 'address')) join `entities_details` `aty4` on(`aty4`.`value` = 'number')) join `entities_types` `ety`) WHERE `ety`.`uuid` = `em`.`entities_types_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes_types`
--
ALTER TABLE `attributes_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `entities_details`
--
ALTER TABLE `entities_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_types_id` (`attributes_types_id`),
  ADD KEY `entities_main_id` (`entities_main_id`),
  ADD KEY `entities_main_id_2` (`entities_main_id`);

--
-- Indexes for table `entities_main`
--
ALTER TABLE `entities_main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_types_id` (`entities_types_id`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexes for table `entities_types`
--
ALTER TABLE `entities_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `description` (`description`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes_types`
--
ALTER TABLE `attributes_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `entities_details`
--
ALTER TABLE `entities_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `entities_main`
--
ALTER TABLE `entities_main`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `entities_types`
--
ALTER TABLE `entities_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities_details`
--
ALTER TABLE `entities_details`
  ADD CONSTRAINT `entities_details_ibfk_1` FOREIGN KEY (`entities_main_id`) REFERENCES `entities_main` (`uuid`),
  ADD CONSTRAINT `entities_details_ibfk_2` FOREIGN KEY (`attributes_types_id`) REFERENCES `attributes_types` (`uuid`);

--
-- Constraints for table `entities_main`
--
ALTER TABLE `entities_main`
  ADD CONSTRAINT `entities_main_ibfk_1` FOREIGN KEY (`entities_types_id`) REFERENCES `entities_types` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
