-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 04, 2025 at 02:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groupa_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigntomodule`
--

CREATE TABLE `assigntomodule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lecture_name` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `module_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigntomodules`
--

CREATE TABLE `assigntomodules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lecture_name` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `module_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_modules`
--

CREATE TABLE `assign_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lecture_name` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_modules`
--

INSERT INTO `assign_modules` (`id`, `lecture_name`, `department_name`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'T. Kartheepan', 'CSD', 'DSA', '2024-12-07 01:46:07', '2024-12-07 01:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `lecture_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_at` datetime NOT NULL,
  `time_table_id` bigint(20) UNSIGNED NOT NULL,
  `otp_used` bigint(20) UNSIGNED DEFAULT NULL,
  `verification_type` enum('OTP','QR','lecture') NOT NULL,
  `status` enum('present','absent') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `lecture_id`, `attendance_at`, `time_table_id`, `otp_used`, `verification_type`, `status`, `created_at`, `updated_at`) VALUES
(3, 16, 1, '2024-12-15 10:29:16', 16, 21, 'OTP', 'present', '2024-12-15 04:59:16', '2024-12-15 04:59:16'),
(4, 3, 1, '2024-12-21 08:42:16', 5, 25, 'QR', 'present', '2024-12-21 03:12:16', '2024-12-21 03:12:16'),
(5, 16, 1, '2024-12-21 09:46:01', 5, 27, 'QR', 'present', '2024-12-21 04:16:01', '2024-12-21 04:16:01'),
(6, 9, 1, '2024-12-21 09:51:59', 5, 27, 'QR', 'present', '2024-12-21 04:21:59', '2024-12-21 04:21:59'),
(7, 10, 1, '2024-12-21 05:09:39', 16, 30, 'OTP', 'present', '2024-12-20 23:39:39', '2024-12-20 23:39:39'),
(8, 7, 1, '2024-12-21 06:39:33', 1, 31, 'OTP', 'present', '2024-12-21 01:09:33', '2024-12-21 01:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `department_name` varchar(100) NOT NULL,
  `batch_name` varchar(255) NOT NULL,
  `batch_short_date` date NOT NULL,
  `batch_end_date` date NOT NULL,
  `batch_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `prefix`, `department_name`, `batch_name`, `batch_short_date`, `batch_end_date`, `batch_status`, `created_at`, `updated_at`) VALUES
(3, NULL, 'CSD', 'B', '2024-12-05', '2024-12-20', 'Active', '2024-12-03 11:23:19', '2024-12-21 01:08:57'),
(5, NULL, 'CSD', 'A', '2024-12-11', '2025-01-03', 'Active', '2024-12-06 10:07:53', '2024-12-06 10:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_shortname` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_shortname`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business Manegement', 'BD', 'Active', '2024-11-19 09:12:26', '2024-12-21 00:48:33'),
(10, 'Computer science department', 'CSD', 'Inactive', '2024-12-04 07:22:23', '2024-12-04 07:22:31'),
(13, 'Law', 'Law', 'Active', '2024-12-07 00:48:45', '2024-12-07 00:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `lecture_id` bigint(20) UNSIGNED NOT NULL,
  `lecture_name` varchar(255) NOT NULL,
  `lecture_phone_number` int(11) NOT NULL,
  `lecture_gender` enum('Male','Female') NOT NULL,
  `lecture_status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`lecture_id`, `lecture_name`, `lecture_phone_number`, `lecture_gender`, `lecture_status`, `created_at`, `updated_at`) VALUES
(1, 'T. Suresh', 771234567, 'Male', 'Inactive', '2024-12-04 03:19:44', '2024-12-04 07:15:49'),
(2, 'T. Kartheepan', 777654321, 'Male', 'Active', '2024-12-04 03:44:32', '2024-12-04 03:44:32'),
(4, 'Kunarathnam Nivethan', 776878734, 'Male', 'Active', '2024-12-04 07:20:30', '2024-12-04 07:20:30'),
(5, 'R. Pirasanthan', 740578341, 'Male', 'Active', '2024-12-04 07:20:58', '2024-12-04 07:20:58'),
(6, 'R. Pirasanthan', 776878736, 'Male', 'Active', '2024-12-04 07:21:50', '2024-12-04 07:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `lecturehall`
--

CREATE TABLE `lecturehall` (
  `lecturehall_id` bigint(20) UNSIGNED NOT NULL,
  `lecturehall_name` varchar(255) NOT NULL,
  `lecturehall_shortname` varchar(255) NOT NULL,
  `lecturehall_status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecturehall`
--

INSERT INTO `lecturehall` (`lecturehall_id`, `lecturehall_name`, `lecturehall_shortname`, `lecturehall_status`, `created_at`, `updated_at`) VALUES
(1, 'Secound floor Class 3', 'S3', 'Active', '2024-12-02 22:10:09', '2024-12-04 04:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(64, '2014_10_12_000000_create_users_table', 1),
(65, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(66, '2019_08_19_000000_create_failed_jobs_table', 1),
(67, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(68, '2024_11_25_075148_create_stu_table', 1),
(69, '2024_11_26_062818_create_department_table', 1),
(70, '2024_11_29_154548_create_module_table', 1),
(71, '2024_12_03_023257_create_lecturehall_table', 2),
(72, '2024_12_03_053620_create_lecture_table', 3),
(73, '2024_12_03_140255_create_batch_table', 4),
(74, '2024_12_04_034339_create_batches_table', 5),
(75, '2024_12_06_050511_create_slot_table', 6),
(76, '2024_12_06_174855_create_assigntomodule_table', 7),
(78, '2024_12_07_063457_create_assigntomodule_table', 8),
(81, '2024_12_07_070400_create_assign_modules_table', 9),
(82, '2024_12_08_054113_create_attendance_table', 10),
(83, '2024_12_08_054703_create_otps_table', 11),
(84, '2024_12_08_055016_create_students_table', 12),
(85, '2024_12_08_061016_create_time_tables_table', 13),
(87, '2024_12_15_063557_student_users', 14);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `department_shortname` varchar(255) NOT NULL,
  `module_hours` int(11) NOT NULL,
  `module_status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `department_shortname`, `module_hours`, `module_status`, `created_at`, `updated_at`) VALUES
(1, 'ICP', 'CSD', 60, 'Inactive', '2024-12-24 05:01:44', '2024-12-06 10:05:54'),
(2, 'DSPF', 'CSD', 60, 'Active', '2024-12-24 05:01:44', '2024-12-07 22:58:57'),
(4, 'BI', 'CSD', 60, 'Inactive', '2024-12-01 23:26:04', '2024-12-06 10:06:13'),
(8, 'CRP', 'CSD', 60, 'Inactive', '2024-12-05 08:42:53', '2024-12-06 10:06:27'),
(9, 'CRPP', 'BM', 80, 'Active', '2024-12-07 01:24:16', '2024-12-07 01:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lecture_id` bigint(20) UNSIGNED NOT NULL,
  `otp_value` varchar(255) NOT NULL,
  `generated_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `lecture_id`, `otp_value`, `generated_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(19, 1, 'HQKmFe', '2024-12-15 08:30:06', '2024-12-15 08:40:06', '2024-12-15 03:00:06', '2024-12-15 03:00:06'),
(20, 1, 'KAtDES', '2024-12-15 09:55:45', '2024-12-15 10:05:45', '2024-12-15 04:25:45', '2024-12-15 04:25:45'),
(21, 1, '87Gegs', '2024-12-15 10:29:08', '2024-12-15 10:39:08', '2024-12-15 04:59:08', '2024-12-15 04:59:08'),
(22, 1, 'wCtn3u', '2024-12-21 07:43:22', '2024-12-21 07:53:22', '2024-12-21 02:13:22', '2024-12-21 02:13:22'),
(23, 1, 'OAV6Vm', '2024-12-21 08:01:33', '2024-12-21 08:11:33', '2024-12-21 02:31:33', '2024-12-21 02:31:33'),
(24, 1, 'XbzG3B', '2024-12-21 08:16:28', '2024-12-21 08:26:28', '2024-12-21 02:46:28', '2024-12-21 02:46:28'),
(25, 1, 'jpGO7n', '2024-12-21 08:41:52', '2024-12-21 08:51:52', '2024-12-21 03:11:52', '2024-12-21 03:11:52'),
(26, 1, 'HPFBgA', '2024-12-21 09:37:35', '2024-12-21 09:47:35', '2024-12-21 04:07:35', '2024-12-21 04:07:35'),
(27, 1, '8ui80d', '2024-12-21 09:45:19', '2024-12-21 09:55:19', '2024-12-21 04:15:19', '2024-12-21 04:15:19'),
(28, 1, 'uCBSPm', '2024-12-21 10:24:49', '2024-12-21 10:34:49', '2024-12-20 23:24:49', '2024-12-20 23:24:49'),
(29, 1, 'J24jm7', '2024-12-21 10:25:03', '2024-12-21 10:35:03', '2024-12-20 23:25:03', '2024-12-20 23:25:03'),
(30, 1, '5YvD2v', '2024-12-21 10:39:28', '2024-12-21 10:49:28', '2024-12-20 23:39:28', '2024-12-20 23:39:28'),
(31, 1, '1NJYyf', '2024-12-21 12:09:22', '2024-12-21 12:19:22', '2024-12-21 01:09:22', '2024-12-21 01:09:22'),
(32, 1, 'ug4ylV', '2024-12-29 08:23:01', '2024-12-29 08:33:01', '2024-12-29 02:53:01', '2024-12-29 02:53:01'),
(33, 1, 'NLCz9e', '2024-12-29 08:29:16', '2024-12-29 08:39:16', '2024-12-29 02:59:16', '2024-12-29 02:59:16'),
(34, 1, 'TPUjpt', '2024-12-29 08:29:41', '2024-12-29 08:39:41', '2024-12-29 02:59:41', '2024-12-29 02:59:41'),
(35, 1, 'mb0f7J', '2024-12-29 08:29:44', '2024-12-29 08:39:44', '2024-12-29 02:59:44', '2024-12-29 02:59:44'),
(36, 1, 'mB7gkj', '2024-12-29 08:33:20', '2024-12-29 08:43:20', '2024-12-29 03:03:20', '2024-12-29 03:03:20'),
(37, 1, '5VjWnw', '2024-12-29 08:33:32', '2024-12-29 08:43:32', '2024-12-29 03:03:32', '2024-12-29 03:03:32'),
(38, 1, '00Ki8P', '2024-12-29 09:06:06', '2024-12-29 09:16:06', '2024-12-29 03:36:06', '2024-12-29 03:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot_name` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`id`, `slot_name`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 'Slot 1', '09:00:00', '10:30:00', NULL, '2024-12-06 10:10:09'),
(3, 'Slot 2', '10:45:00', '12:15:00', '2024-12-06 05:53:59', '2024-12-06 10:10:57'),
(4, 'Break Time', '12:15:00', '13:15:00', '2024-12-06 10:11:44', '2024-12-06 10:11:44'),
(5, 'Slot 3', '13:15:00', '14:45:00', '2024-12-06 10:12:19', '2024-12-06 10:12:19'),
(6, 'Slot 4', '15:10:00', '16:30:00', '2024-12-06 10:13:23', '2024-12-06 10:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `nic` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `address`, `city_id`, `province`, `postal_code`, `country`, `nic`, `email`, `phone_number`, `whatsapp_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nive', '.', 'Max', '1999-07-23', 'Malusanthy', 40000, 'Northern', '40000', 'Malesia', '992050357V', 'kunarathnamnivethan99@gmail.com', '0766791337', '94766791337', 'active', NULL, NULL),
(2, 'Jane', 'A.', 'Smith', '1995-03-22', '456 Maple Avenue', 2, 'Quebec', 'H3Z 2Y7', 'Canada', '987654321V', 'jane.smith@example.com', '555-2345', '555-6789', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(3, 'Emily', NULL, 'Johnson', '1998-07-08', '789 Pine Road', 3, 'British Columbia', 'V6B 1H6', 'Canada', '123789456V', 'emily.johnson@example.com', '555-3456', '555-7890', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(4, 'Michael', 'B.', 'Brown', '1990-11-05', '101 Oak Street', 4, 'Alberta', 'T2P 3P4', 'Canada', '456123789V', 'michael.brown@example.com', '555-4567', '555-8901', 'inactive', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(5, 'Sarah', NULL, 'Davis', '2002-02-14', '202 Birch Lane', 5, 'Manitoba', 'R3C 4G1', 'Canada', '789456123V', 'sarah.davis@example.com', '555-5678', '555-9012', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(6, 'David', 'C.', 'Wilson', '1999-05-20', '303 Cedar Court', 6, 'Nova Scotia', 'B3H 2Y9', 'Canada', '159753456V', 'david.wilson@example.com', '555-6789', '555-0123', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(7, 'Jessica', NULL, 'Moore', '2001-09-13', '404 Spruce Street', 7, 'Saskatchewan', 'S4P 3Y3', 'Canada', '258456789V', 'jessica.moore@example.com', '555-7890', '555-1234', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(8, 'Daniel', 'D.', 'Taylor', '1994-04-17', '505 Fir Avenue', 8, 'Newfoundland', 'A1C 5H7', 'Canada', '369852147V', 'daniel.taylor@example.com', '555-8901', '555-2345', 'inactive', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(9, 'Laura', NULL, 'Anderson', '1997-12-25', '606 Poplar Drive', 9, 'Prince Edward Island', 'C1A 7M5', 'Canada', '147852369V', 'laura.anderson@example.com', '555-9012', '555-3456', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(10, 'Andrew', 'E.', 'Thomas', '1996-08-19', '707 Chestnut Boulevard', 10, 'New Brunswick', 'E2L 4G9', 'Canada', '321654987V', 'andrew.thomas@example.com', '555-0123', '555-4567', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(11, 'Megan', NULL, 'Harris', '1993-06-10', '808 Beech Street', 11, 'Yukon', 'Y1A 1C5', 'Canada', '654321987V', 'megan.harris@example.com', '555-1234', '555-5678', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(12, 'Steven', 'F.', 'Martin', '1991-01-28', '909 Walnut Way', 12, 'Northwest Territories', 'X1A 2N1', 'Canada', '987321654V', 'steven.martin@example.com', '555-2345', '555-6789', 'inactive', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(13, 'Hannah', NULL, 'Lee', '2003-03-15', '1010 Hemlock Lane', 13, 'Nunavut', 'X0A 0H0', 'Canada', '159357486V', 'hannah.lee@example.com', '555-3456', '555-7890', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(14, 'Ethan', 'G.', 'Clark', '1992-07-23', '1111 Willow Court', 14, 'Ontario', 'N6A 1C6', 'Canada', '753951258V', 'ethan.clark@example.com', '555-4567', '555-8901', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(15, 'Sophia', NULL, 'Walker', '2000-10-31', '1212 Dogwood Drive', 15, 'Quebec', 'G1R 5H7', 'Canada', '852369741V', 'sophia.walker@example.com', '555-5678', '555-9012', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47'),
(16, 'John', NULL, 'Doe', '2000-01-15', '123 Elm Street', 1, 'Ontario', 'K1A 0B1', 'Canada', '123456789V', 'john.doe@example.com', '555-1234', '555-5678', 'active', '2024-12-15 00:56:47', '2024-12-15 00:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_batch`
--

CREATE TABLE `student_batch` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_batch`
--

INSERT INTO `student_batch` (`id`, `student_id`, `batch_id`) VALUES
(1, 1, 3),
(2, 1, 3),
(3, 2, 5),
(4, 3, 3),
(5, 4, 5),
(6, 5, 3),
(7, 6, 5),
(8, 7, 3),
(9, 8, 5),
(10, 9, 3),
(11, 10, 5),
(12, 11, 3),
(13, 12, 5),
(14, 13, 3),
(15, 14, 5),
(16, 15, 3),
(17, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_department`
--

CREATE TABLE `student_department` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_department`
--

INSERT INTO `student_department` (`id`, `student_id`, `department_id`) VALUES
(2, 1, 1),
(3, 2, 10),
(4, 3, 13),
(5, 4, 1),
(6, 5, 10),
(7, 6, 13),
(8, 7, 1),
(9, 8, 10),
(10, 9, 13),
(11, 10, 1),
(12, 11, 10),
(13, 12, 13),
(14, 13, 1),
(15, 14, 10),
(16, 15, 13),
(17, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_users`
--

CREATE TABLE `student_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_users`
--

INSERT INTO `student_users` (`id`, `student_id`, `emailId`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, 'student16@example.com', 'password16', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(2, 3, 'student3@example.com', 'password3', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(3, 9, 'student9@example.com', 'password9', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(4, 13, 'student13@example.com', 'password13', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(5, 6, 'student6@example.com', 'password6', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(6, 7, 'student7@example.com', 'password7', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(7, 10, 'student10@example.com', 'password10', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(8, 8, 'student8@example.com', 'password8', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(9, 4, 'student4@example.com', 'password4', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(10, 11, 'student11@example.com', 'password11', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(11, 14, 'student14@example.com', 'password14', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(12, 5, 'student5@example.com', 'password5', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(13, 15, 'student15@example.com', 'password15', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(14, 12, 'student12@example.com', 'password12', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(15, 2, 'student2@example.com', 'password2', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28'),
(16, 1, 'student1@example.com', 'password1', 'active', '2024-12-15 01:33:28', '2024-12-15 01:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `lecturer_id` bigint(20) UNSIGNED NOT NULL,
  `slot_id` int(11) NOT NULL,
  `classroom` varchar(255) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tables`
--

INSERT INTO `time_tables` (`id`, `prefix`, `batch_id`, `department_id`, `module_id`, `lecturer_id`, `slot_id`, `classroom`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'prefix_1', 3, 1, 1, 1, 1, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(2, 'prefix_2', 5, 10, 1, 1, 3, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(3, 'prefix_3', 3, 13, 1, 1, 5, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(4, 'prefix_4', 5, 1, 1, 1, 6, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(5, 'prefix_5', 3, 10, 1, 1, 1, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(6, 'prefix_6', 5, 13, 1, 1, 3, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(7, 'prefix_7', 3, 1, 1, 1, 5, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(8, 'prefix_8', 5, 10, 1, 1, 6, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(9, 'prefix_9', 3, 13, 1, 1, 1, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(10, 'prefix_10', 5, 1, 1, 1, 3, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(11, 'prefix_11', 3, 10, 1, 1, 6, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(12, 'prefix_12', 5, 13, 1, 1, 1, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(13, 'prefix_13', 3, 1, 1, 1, 3, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(14, 'prefix_14', 5, 10, 1, 1, 5, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(15, 'prefix_15', 3, 13, 1, 1, 6, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30'),
(16, 'prefix_16', 5, 1, 1, 1, 1, 'Classroom 1', 'Sunday', 'Active', '2024-12-15 02:44:30', '2024-12-15 02:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigntomodule`
--
ALTER TABLE `assigntomodule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigntomodules`
--
ALTER TABLE `assigntomodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_modules`
--
ALTER TABLE `assign_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_otp_used_foreign` (`otp_used`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`lecture_id`);

--
-- Indexes for table `lecturehall`
--
ALTER TABLE `lecturehall`
  ADD PRIMARY KEY (`lecturehall_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nic_unique` (`nic`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `student_batch`
--
ALTER TABLE `student_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_department`
--
ALTER TABLE `student_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_users`
--
ALTER TABLE `student_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigntomodule`
--
ALTER TABLE `assigntomodule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigntomodules`
--
ALTER TABLE `assigntomodules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_modules`
--
ALTER TABLE `assign_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `lecture_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lecturehall`
--
ALTER TABLE `lecturehall`
  MODIFY `lecturehall_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stu`
--
ALTER TABLE `stu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_batch`
--
ALTER TABLE `student_batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_department`
--
ALTER TABLE `student_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_users`
--
ALTER TABLE `student_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
