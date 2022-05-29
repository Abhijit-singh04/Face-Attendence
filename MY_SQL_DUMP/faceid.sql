-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 08:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `faceid`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `event_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MISIS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `event_name`, `MISIS`, `date`, `check_in`, `check_out`) VALUES
(25, 'HFD-LAB', 'M00650922', '2020-05-04', '10:00:51', '20:47:25'),
(26, 'HFD-LAB', 'M00650922', '2020-05-04', '10:00:51', '20:47:25'),
(27, 'HFD-LAB', 'M00650922', '2020-05-04', '10:00:51', '20:47:25'),
(30, 'HFD-LAB', 'M00650922', '2020-05-04', '18:38:22', '20:47:25'),
(54, 'HFD-LAB', 'M00650922', '2020-05-04', '20:27:53', '20:47:25'),
(55, 'HFD-LAB', 'M00650922', '2020-05-04', '20:53:44', NULL),
(72, 'ITX LAB', 'M00650922', '2020-05-04', '22:06:11', '22:07:49'),
(74, 'hfd', 'M00650922', '2020-05-06', '11:27:01', NULL),
(75, 'testing', 'M00650922', '2022-05-09', '23:49:13', NULL),
(76, 'testing', 'unknown', '2022-05-09', '23:49:27', NULL),
(77, 'testing 2', 'M00650922', '2022-05-11', '13:47:35', '13:50:35'),
(78, 'testing 2', '29475692', '2022-05-11', '13:47:46', '13:55:35'),
(79, 'testing 2', 'M00653333', '2022-05-11', '13:49:02', '13:59:35'),
(80, 'testing 2', 'M00567811', '2022-05-11', '13:49:02', '14:09:35'),
(81, 'test3', 'unknown', '2022-05-16', '12:11:26', NULL),
(82, 'test3', '12', '2022-05-16', '12:11:48', NULL),
(83, 'testing 4', 'unknown', '2022-05-18', '14:14:30', NULL),
(84, 'testing 4', '12', '2022-05-18', '14:14:32', NULL),
(85, 'testing 4', '13', '2022-05-18', '14:14:44', NULL),
(86, 'no meeting', 'unknown', '2022-05-26', '13:10:14', NULL),
(87, 'no meeting', '12', '2022-05-26', '13:10:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `calender_events`
--

CREATE TABLE `calender_events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_startTime` time NOT NULL,
  `event_endTime` time NOT NULL,
  `user` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calender_events`
--

INSERT INTO `calender_events` (`event_id`, `event_name`, `event_date`, `event_startTime`, `event_endTime`, `user`) VALUES
(351, 'CSD-Lecture', '2020-05-20', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(352, 'AI-LAB', '2020-05-26', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(353, 'AI LECTURE', '2020-06-01', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(354, 'Guest Lecture ', '2020-06-10', '10:00:00', '13:00:00', 'shriyanarang03@gmail.com'),
(355, 'AI lecture', '2020-06-08', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(356, 'BIS lecture', '2020-06-10', '10:45:00', '12:45:00', 'shriyanarang03@gmail.com'),
(357, 'ITX Lecture', '2020-06-12', '10:30:00', '11:30:00', 'shriyanarang03@gmail.com'),
(358, 'ITX-LECTURE', '2020-06-15', '12:00:00', '14:00:00', 'shriyanarang03@gmail.com'),
(359, 'ROBOTICS LECTURE', '2020-06-18', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(360, 'BIS- LAB', '2020-06-23', '10:00:00', '13:00:00', 'shriyanarang03@gmail.com'),
(361, 'CSD-Lecture', '2020-05-20', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(362, 'AI LECTURE', '2020-06-01', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(363, 'AI-LAB', '2020-05-26', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(364, 'ITX-LECTURE', '2020-06-15', '12:00:00', '14:00:00', 'shriyanarang03@gmail.com'),
(365, 'ROBOTICS LECTURE', '2020-06-18', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(366, 'Guest Lecture ', '2020-06-10', '10:00:00', '13:00:00', 'shriyanarang03@gmail.com'),
(367, 'ITX Lecture', '2020-06-12', '10:30:00', '11:30:00', 'shriyanarang03@gmail.com'),
(368, 'BIS lecture', '2020-06-10', '10:45:00', '12:45:00', 'shriyanarang03@gmail.com'),
(369, 'AI lecture', '2020-06-08', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(370, 'BIS- LAB', '2020-06-23', '10:00:00', '13:00:00', 'shriyanarang03@gmail.com'),
(371, 'ITX LAB', '2020-05-04', '22:30:00', '23:30:00', 'shriyanarang03@gmail.com'),
(372, 'Guest Lecture ', '2020-06-10', '10:00:00', '13:00:00', 'shriyanarang03@gmail.com'),
(373, 'BIS lecture', '2020-06-10', '10:45:00', '12:45:00', 'shriyanarang03@gmail.com'),
(374, 'ITX Lecture', '2020-06-12', '10:30:00', '11:30:00', 'shriyanarang03@gmail.com'),
(375, 'ITX-LECTURE', '2020-06-15', '12:00:00', '14:00:00', 'shriyanarang03@gmail.com'),
(376, 'CSD-Lecture', '2020-05-20', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(377, 'AI-LAB', '2020-05-26', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(378, 'AI LECTURE', '2020-06-01', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(379, 'AI lecture', '2020-06-08', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(380, 'ROBOTICS LECTURE', '2020-06-18', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(381, 'ITX LAB', '2020-05-04', '22:30:00', '23:30:00', 'shriyanarang03@gmail.com'),
(382, 'CSD-Lecture', '2020-05-20', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(383, 'AI-LAB', '2020-05-26', '08:00:00', '11:00:00', 'shriyanarang03@gmail.com'),
(384, 'AI LECTURE', '2020-06-01', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(385, 'AI lecture', '2020-06-08', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(386, 'Guest Lecture ', '2020-06-10', '10:00:00', '13:00:00', 'shriyanarang03@gmail.com'),
(387, 'BIS lecture', '2020-06-10', '10:45:00', '12:45:00', 'shriyanarang03@gmail.com'),
(388, 'ITX Lecture', '2020-06-12', '10:30:00', '11:30:00', 'shriyanarang03@gmail.com'),
(389, 'ITX-LECTURE', '2020-06-15', '12:00:00', '14:00:00', 'shriyanarang03@gmail.com'),
(390, 'ROBOTICS LECTURE', '2020-06-18', '08:00:00', '09:00:00', 'shriyanarang03@gmail.com'),
(431, 'Microsoft Engage 2022 Initial Connect', '2022-05-10', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(432, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(433, 'Microsoft Engage 2022 Initial Connect', '2022-05-10', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(434, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(435, 'FW: Microsoft Engage 2022 Initial Connect', '2022-05-10', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(436, 'testing', '2022-05-09', '23:15:00', '00:15:00', '2001.abhijitsingh@gmail.com'),
(437, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(438, 'testing 2', '2022-05-11', '23:45:00', '00:45:00', '2001.abhijitsingh@gmail.com'),
(439, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(440, 'testing 2', '2022-05-11', '23:45:00', '00:45:00', '2001.abhijitsingh@gmail.com'),
(441, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(442, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(443, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(444, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(445, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(446, 'Microsoft Engage 2022 Weekly Connects', '2022-05-17', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(447, 'Microsoft Engage 2022 Weekly Connects', '2022-05-14', '11:00:00', '12:00:00', '2001.abhijitsingh@gmail.com'),
(448, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(449, 'Microsoft Engage 2022 Weekly Connects', '2022-05-14', '11:00:00', '12:00:00', '2001.abhijitsingh@gmail.com'),
(450, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(451, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(452, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(453, 'Microsoft Engage 2022 Weekly Connects', '2022-05-17', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(454, 'Microsoft Engage 2022 Weekly Connects', '2022-05-14', '11:00:00', '12:00:00', '2001.abhijitsingh@gmail.com'),
(455, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(456, 'Microsoft Engage 2022 Weekly Connects', '2022-05-17', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(457, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(458, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(459, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(460, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(461, 'Microsoft Engage 2022 Weekly Connects', '2022-05-17', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(462, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(463, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(464, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(465, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(466, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(467, 'Microsoft Engage 2022 Weekly Connects', '2022-05-17', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(468, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(469, 'test3', '2022-05-16', '11:30:00', '12:15:00', '2001.abhijitsingh@gmail.com'),
(470, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(471, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', 'shri@microsoft.in'),
(472, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', 'shri@microsoft.in'),
(473, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', 'shri@microsoft.in'),
(474, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', 'shri@microsoft.in'),
(475, 'testing 4', '2022-05-18', '14:00:00', '15:00:00', 'shri@microsoft.in'),
(476, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', 'shri@microsoft.in'),
(477, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', 'shri@microsoft.in'),
(478, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', 'shri@microsoft.in'),
(479, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', 'shri@microsoft.in'),
(480, 'Microsoft Engage 2022 Weekly Connects', '2022-05-20', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(481, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(482, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(483, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(484, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(485, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(486, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(487, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(488, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(489, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(490, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(491, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(492, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(493, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(494, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(495, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(496, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(497, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(498, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(499, 'testing 5', '2022-05-22', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(500, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(501, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(502, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(503, 'testing 5', '2022-05-22', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(504, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(505, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(506, 'loda manish', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(507, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(508, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(509, 'Engage 1:1 with Abhijit Singh', '2022-05-23', '18:00:00', '18:30:00', '2001.abhijitsingh@gmail.com'),
(510, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(511, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(512, 'Engage 1:1 with Abhijit Singh', '2022-05-23', '18:00:00', '18:30:00', '2001.abhijitsingh@gmail.com'),
(513, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(514, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(515, 'Abhi', '2022-05-23', '16:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(516, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(517, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(518, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(519, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(520, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(521, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(522, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(523, 'Microsoft Engage 2022 Weekly Connects', '2022-05-24', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(524, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(525, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(526, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(527, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(528, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(529, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(530, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(531, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(532, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(533, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(534, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(535, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(536, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(537, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(538, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(539, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(540, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(541, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(542, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(543, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(544, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(545, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(546, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(547, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(548, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(549, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(550, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(551, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(552, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(553, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(554, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(555, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(556, 'kwjfbvalivbakdnfvadlfvjbvljbdalkvnjdalkfvbadlfvbaevijbfjivnfievbeivbebveirjvberivberibvekrvrvervnejr', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(557, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(558, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(559, 'kwjfbvalivbakdnfvadlfvjbvljbdalkvnjdalkfvbadlfvbaevijbfjivnfievbeivbebveirjvberivberibvekrvrvervnejr', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(560, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(561, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(562, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(563, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(564, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(565, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(566, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(567, 'thw wat dwe sfgv sdfs name of the name of he way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(568, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(569, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(570, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(571, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(572, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(573, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(574, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(575, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(576, 'thw wat dwe sfgv sdfs name of the name of he way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(577, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(578, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(579, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(580, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(581, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(582, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(583, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(584, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(585, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(586, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(587, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(588, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(589, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(590, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(591, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(592, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(593, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(594, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(595, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(596, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(597, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(598, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(599, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(600, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(601, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(602, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(603, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(604, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(605, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(606, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(607, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(608, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(609, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(610, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(611, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(612, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(613, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(614, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(615, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(616, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(617, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(618, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(619, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(620, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(621, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(622, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(623, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(624, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(625, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(626, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(627, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(628, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(629, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(630, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(631, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(632, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(633, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(634, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(635, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(636, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(637, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(638, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(639, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(640, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(641, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(642, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(643, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(644, 'free lecture', '2022-05-24', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com'),
(645, 'abcd', '2022-05-25', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(646, 'thw wathe way of life abhijit and ', '2022-05-25', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(647, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(648, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(649, 'abhi', '2022-05-25', '19:30:00', '20:30:00', '2001.abhijitsingh@gmail.com'),
(650, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(651, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(652, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(653, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(654, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(655, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(656, 'jeet', '2022-05-25', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(657, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(658, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(659, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(660, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(661, 'no meeting', '2022-05-26', '14:30:00', '15:30:00', '2001.abhijitsingh@gmail.com'),
(662, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(663, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(664, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(665, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(666, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(667, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(668, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(669, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(670, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(671, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(672, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(673, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(674, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(675, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(676, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(677, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(678, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(679, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(680, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(681, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(682, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(683, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(684, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(685, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(686, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(687, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(688, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(689, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(690, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(691, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(692, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(693, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(694, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(695, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(696, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(697, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(698, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(699, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(700, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(701, 'Patharbaaz', '2022-05-26', '19:00:00', '20:00:00', '2001.abhijitsingh@gmail.com'),
(702, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(703, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', '2001.abhijitsingh@gmail.com'),
(704, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(705, 'Microsoft Engage 2022 Weekly Connects', '2022-05-27', '17:00:00', '18:00:00', 'joshi@gmail.com'),
(706, 'birthday', '2022-06-05', '18:30:00', '19:30:00', 'joshi@gmail.com'),
(707, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(708, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(709, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(710, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(711, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(712, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(713, 'toni', '2022-05-27', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(714, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(715, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(716, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(717, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(718, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(719, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(720, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(721, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(722, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(723, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(724, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(725, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(726, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(727, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(728, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(729, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(730, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(731, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(732, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(733, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(734, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(735, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(736, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(737, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(738, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(739, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(740, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(741, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(742, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(743, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(744, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(745, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(746, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(747, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(748, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(749, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(750, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(751, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(752, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(753, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(754, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(755, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(756, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(757, 'problem', '2022-05-28', '04:25:00', '05:25:00', '2001.abhijitsingh@gmail.com'),
(758, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(759, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(760, 'meet one', '2022-05-28', '13:30:00', '14:30:00', '2001.abhijitsingh@gmail.com'),
(761, 'meet 2', '2022-05-28', '16:00:00', '17:00:00', '2001.abhijitsingh@gmail.com'),
(762, 'meet 3', '2022-05-28', '17:30:00', '18:30:00', '2001.abhijitsingh@gmail.com'),
(763, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(764, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(765, 'Microsoft Engage 2022 Weekly Connects', '2022-05-28', '15:00:00', '16:00:00', '2001.abhijitsingh@gmail.com'),
(766, '3rd', '2022-05-28', '20:00:00', '21:00:00', '2001.abhijitsingh@gmail.com'),
(767, '2nd', '2022-05-28', '20:30:00', '21:30:00', '2001.abhijitsingh@gmail.com'),
(768, 'birthday', '2022-06-05', '18:30:00', '19:30:00', '2001.abhijitsingh@gmail.com'),
(769, '4th', '2022-05-28', '22:30:00', '23:30:00', '2001.abhijitsingh@gmail.com'),
(770, '4th', '2022-05-28', '23:00:00', '00:00:00', '2001.abhijitsingh@gmail.com'),
(771, '3rd', '2022-05-28', '21:30:00', '22:30:00', '2001.abhijitsingh@gmail.com'),
(772, '5th', '2022-05-28', '23:30:00', '00:30:00', '2001.abhijitsingh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Abhijit Singh', '2001.abhijitsingh@gmail.com', 'hello world!!!!!!!!', '2022-05-27 05:59:20'),
(2, ' Singh', 'abhijitsingh@gmail.com', 'namaste india', '2022-05-27 06:10:16'),
(3, ' Singh', 'abhijitsingh@gmail.com', 'namaste india', '2022-05-27 06:10:41'),
(4, 'singh', '2001.abhijitsingh@gmail.co', 'become', '2022-05-27 06:11:37'),
(5, 'raman', 'allow@gmail.com', 'good website!!', '2022-05-27 06:20:38'),
(6, 'Abhijit Singh', '2001.abhijitsingh@gmail.com', 'good product !!', '2022-05-28 08:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`) VALUES
(1, 'DSA24'),
(2, 'MICRO24'),
(3, 'JAVA24'),
(4, 'PBL24');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `MISIS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_firstName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_lastName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`MISIS`, `student_firstName`, `student_lastName`, `student_email`) VALUES
('M005675643', 'Bill ', 'Gates', 'Billgates@microsoft'),
('M00567811', 'Paul', 'Allen', 'Paulallen@microsoft'),
('M00567889', 'Andrew ', 'Herbert', 'AndrewHerbert@microsoft'),
('M00567899', 'Anders', 'Hejlsberg', 'AndersHejlsberg@microsoft '),
('M00650367', 'Bongshin ', 'Lee', 'BongshinLee@microsoft'),
('M00650922', 'Abhijit', 'singh', 'Abhijitsingh@gmail.com'),
('M00650966', 'Bob', 'Greenberg', 'BobGreenberg@microsoft'),
('M00653333', 'Bill', 'Hilf', 'BillHilf@microsoft'),
('M00657893', 'Andrea', 'Lewis', 'AndreaLewis@microsoft'),
('M00659833', 'Chris', 'Hecker', 'ChrisHecker@microsoft');

-- --------------------------------------------------------

--
-- Table structure for table `students_module`
--

CREATE TABLE `students_module` (
  `MISIS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students_module`
--

INSERT INTO `students_module` (`MISIS`, `module_id`) VALUES
('M00650922', 3),
('M00650922', 1),
('M00650922', 2),
('M00650922', 4),
('M005675643', 2),
('M005675643', 1),
('M00567811', 4),
('M00567811', 1),
('M00567811', 3),
('M00567889', 3),
('M00567889', 1),
('M00567899', 1),
('M00567899', 3),
('M00650367', 3),
('M00650367', 2),
('M00650367', 4),
('M00659833', 3),
('M00659833', 4),
('M00650966', 2),
('M00650966', 3),
('M00657893', 1),
('M00657893', 2),
('M00657893', 3),
('M00657893', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `name`, `email`, `password`) VALUES
(13, 'shriyaa', 'sh@r', '$2b$12$HMzhjO3djnlhaQ9VydRoVeOLQ9p7hP8PFIzHLmiIJQHP/ffZVgugy'),
(18, 'Batul Malik', 'batulmalik@outlook.com', '$2b$12$nng6rgYLtEdWkQhZU8miNupQJIuHByfvy1b3s3EFYcKWrJ68N8R5i'),
(19, 'ddd', 'd@d', '$2b$12$P8gH9zHqqDJBNPqhsnItzuP5mEKBnrVhQAJ6oEWXWuXg1Lhd98roW'),
(20, 'Shriya', 'shriyanarang03@gmail.com', '$2b$12$GUC7ySe/qXuKUp4/r1sNdum37cCmQ2v7SfIAG2nKQIRwYQMOoOBm6'),
(22, 'shekhar', 'shekhar@gmail.com', '$2b$12$jTy0W3kzg.rq8pAQPBB9LO9l51HNojGuFbDsz.McGrqZMzrboEuhi'),
(23, 'toni', 'toni@gmail.com', '$2b$12$FuAGDqoV4mZ1sTmaqkjdIO.zPlLCrdmO8b174JKeQJKhO2Od3VrTS'),
(24, 'Abhijit Singh', '2001.abhijitsingh@gmail.com', '$2b$12$e8zgwKqn9uDeQ1XQhQbBneNERE3R6rEhF8SfW/T4SvdvDYZaMBgta'),
(25, 'reema', 'reema@gmail', '$2b$12$pmMpDdRGCX.ARDhzye975.9KrofF286zVh1eN01NeY1hXud0cdZmW'),
(26, 'shri', 'shri@microsoft.in', '$2b$12$LuREtZgmWVEM7MzeGJ5YR.VXHudRr5DN9hSe/sq/dBbhsaTKYnNKW'),
(27, 'efwe', '1313@sdvd', '$2b$12$d/yGGhSM.xvPVOASBELQtOuMAIYUNDnJVA9g7wOIdbK.mLOlAUjee'),
(28, 'abhishek', 'abhishek@gmai.com', '$2b$12$K5ePekqh0jrwGkttn53mO.q5ASYU/X0Rz9Gv3yzKPXtD31tXJ5s8.'),
(29, 'aefs', 'zdf@g', '$2b$12$hTtAvV5K9a8KJO8lk16g7OgKWDIVu4BMs4wiz2tmegkbYjcBm5SGO'),
(31, 'abhi', 'asn@qq', '$2b$12$cYPdCtde2h4S57vKJjpWiutcM0ScQ69Hl9OqOifWNNxSn7AnIPh5q'),
(32, 'kjbdjbk', 'adelajh@kjb', '$2b$12$kc9Mzyuo8qBjiFUNftz1Ieoj1jsxtkP9ikWzdYqQGYYtk.21OVye2'),
(33, 'priyank', 'priyank@d', '$2b$12$78cyA6qi.dttRw9IaxzIzufAp71cjd4l6WbWyIPtqAx0lYufNdAIu'),
(34, 'joshi', 'joshi@gmail.com', '$2b$12$S4XEh44rUG2GTS8USmX.6O7JtYjZ7IpJK3K6T.U8qbWIBXuz.3rUi'),
(35, 'shiwanshu', 'shiwanshu@123', '$2b$12$AlhgUNAEzSIlp7yclTNL6eAnbVgijDSPKyaNyIZ8VnACr7S2Q.t.a'),
(36, 'abhijit', 'qbhijit@gmail.com', '$2b$12$q9WM4zErmtRzNNnZW8CeN.m.5xq6dx.mb1/8pPk8qvfJorJrQnlaa'),
(37, 'toni', 'abhijitsingh@gmail.com', '$2b$12$jDd2Dj50G3BJ4GxIxQ5xuO26Wvv8RVFFIiA1FoKVxZpAuXRDyNUgW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `calender_events`
--
ALTER TABLE `calender_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_name_idx` (`event_name`),
  ADD KEY `user_idx` (`user`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`,`module_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`MISIS`),
  ADD UNIQUE KEY `MISIS_UNIQUE` (`MISIS`),
  ADD UNIQUE KEY `student_email_UNIQUE` (`student_email`);

--
-- Indexes for table `students_module`
--
ALTER TABLE `students_module`
  ADD KEY `MISIS_idx` (`MISIS`),
  ADD KEY `module_id_idx` (`module_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `stud_office_email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `calender_events`
--
ALTER TABLE `calender_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calender_events`
--
ALTER TABLE `calender_events`
  ADD CONSTRAINT `user` FOREIGN KEY (`user`) REFERENCES `user` (`email`);

--
-- Constraints for table `students_module`
--
ALTER TABLE `students_module`
  ADD CONSTRAINT `MISIS` FOREIGN KEY (`MISIS`) REFERENCES `student` (`MISIS`),
  ADD CONSTRAINT `module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`);
COMMIT;
