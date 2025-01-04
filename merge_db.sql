-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2025 at 08:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icpbcas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_uses`
--

CREATE TABLE `admin_uses` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `student_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_uses`
--

INSERT INTO `admin_uses` (`id`, `student_id`, `student_number`, `total_fees`, `registration_fees`, `installment`, `discount`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '3456', '56889', '56', '87', '56789', '2025-01-02', NULL, '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, '3456', '56889', '56', '87', '56789', '2025-01-02', NULL, '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, '3456', '56889', '56', '87', '56789', '2025-01-02', NULL, '2025-01-02 00:50:39', '2025-01-02 00:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_checklists`
--

CREATE TABLE `applicant_checklists` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `newspaper` tinyint(1) DEFAULT NULL,
  `seminar` tinyint(1) DEFAULT NULL,
  `social_media` tinyint(1) DEFAULT NULL,
  `open_events` tinyint(1) DEFAULT NULL,
  `bcas_website` tinyint(1) DEFAULT NULL,
  `leaflets` tinyint(1) DEFAULT NULL,
  `student_review` tinyint(1) DEFAULT NULL,
  `radio` tinyint(1) DEFAULT NULL,
  `other` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_checklists`
--

INSERT INTO `applicant_checklists` (`id`, `student_id`, `newspaper`, `seminar`, `social_media`, `open_events`, `bcas_website`, `leaflets`, `student_review`, `radio`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openingBalance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_times`
--

CREATE TABLE `course_times` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_types`
--

CREATE TABLE `course_types` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `course_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `address_line` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `student_id`, `first_name`, `last_name`, `relationship`, `address`, `address_line`, `city`, `province`, `postal_code`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'ghghk', 'jhffgh', 'fgdf', 'fgghf', 'fghf', 'fg', 'fg', 4567, 'dfgfh@gmail.com', '454658', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'ghghk', 'jhffgh', 'fgdf', 'fgghf', 'fghf', 'fg', 'fg', 4567, 'dfgfh@gmail.com', '454658', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'ghghk', 'jhffgh', 'fgdf', 'fgghf', 'fghf', 'fg', 'fg', 4567, 'dfgfh@gmail.com', '454658', '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint UNSIGNED NOT NULL,
  `expenseTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joined_froms`
--

CREATE TABLE `joined_froms` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `joined_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2024_12_06_190653_create_students_table', 1),
(6, '2024_12_07_063507_create_emergency_contacts_table', 1),
(7, '2024_12_07_063832_create_course_times_table', 1),
(8, '2024_12_07_063948_create_course_types_table', 1),
(9, '2024_12_07_064128_create_name_of_courses_table', 1),
(10, '2024_12_07_064252_create_cities_table', 1),
(11, '2024_12_07_064359_create_qualifications_table', 1),
(12, '2024_12_07_064544_create_other_qualifications_table', 1),
(13, '2024_12_07_064713_create_joined_froms_table', 1),
(14, '2024_12_07_064943_create_applicant_checklists_table', 1),
(15, '2024_12_07_065101_create_personal_statements_table', 1),
(16, '2024_12_07_065423_create_who_will_pays_table', 1),
(17, '2024_12_07_065706_create_admin_uses_table', 1),
(18, '2024_12_13_040042_create_tests_table', 1),
(21, '2025_01_01_120934_create_student_images_table', 1),
(22, '2025_01_01_121345_create_student_nics_table', 1),
(23, '2025_01_01_121454_create_student_date_of_birth_certificates_table', 1),
(31, '2014_10_12_000000_create_users_table', 2),
(32, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(33, '2019_08_19_000000_create_failed_jobs_table', 2),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(35, '2024_12_14_200240_create_bank_accounts_table', 2),
(36, '2024_12_15_061627_create_expense_types_table', 2),
(37, '2025_01_02_160517_create_payments_table', 2),
(38, '2025_01_02_172027_create_student_payments_details_table', 2),
(39, '2025_01_02_172343_create_transactions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `name_of_courses`
--

CREATE TABLE `name_of_courses` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `preferred_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_applied_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_number` int DEFAULT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `name_of_courses`
--

INSERT INTO `name_of_courses` (`id`, `student_id`, `preferred_mode`, `program_applied_for`, `student_number`, `course_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'fulltime', 'diploma', 2345, 'ghghk jhffgh', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'fulltime', 'diploma', 2345, 'ghghk jhffgh', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'fulltime', 'diploma', 2345, 'ghghk jhffgh', '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `other_qualifications`
--

CREATE TABLE `other_qualifications` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `qualifications` longtext COLLATE utf8mb4_unicode_ci,
  `qualifications_line` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_qualifications`
--

INSERT INTO `other_qualifications` (`id`, `student_id`, `qualifications`, `qualifications_line`, `created_at`, `updated_at`) VALUES
(1, 1, 'ghghk jhffgh', NULL, '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'ghghk jhffgh', NULL, '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'ghghk jhffgh', NULL, '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_statements`
--

CREATE TABLE `personal_statements` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `course_reason` longtext COLLATE utf8mb4_unicode_ci,
  `self` tinyint(1) DEFAULT NULL,
  `parents` tinyint(1) DEFAULT NULL,
  `spouse` tinyint(1) DEFAULT NULL,
  `other` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_statements`
--

INSERT INTO `personal_statements` (`id`, `student_id`, `course_reason`, `self`, `parents`, `spouse`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 'dffg', 1, 0, 0, 0, '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'dffg', 1, 0, 0, 0, '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'dffg', 1, 0, 0, 0, '2025-01-02 00:50:39', '2025-01-02 00:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `olexam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olpath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alpath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `student_id`, `olexam`, `olpath`, `alexam`, `alpath`, `created_at`, `updated_at`) VALUES
(1, 1, 'GCE O/L', 'docs/documents/kjghjb.pdf', 'GCE A/L', 'docs/documents/kjghjb.pdf', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'GCE O/L', 'docs/documents/kjghjb.pdf', 'GCE A/L', 'docs/documents/kjghjb.pdf', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'GCE O/L', 'docs/documents/kjghjb.pdf', 'GCE A/L', 'docs/documents/kjghjb.pdf', '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `zoho_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nic_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `address_line` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `zoho_no`, `nic_no`, `department`, `batch`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `address`, `address_line`, `city`, `province`, `postal_code`, `country`, `email`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(2, '1023945', '982293294v', 'CSD', 'TopUp', 'senthilselvan', NULL, 'Varanan', '1998-08-16', 'Neervely', 'Keniyadi, Lane', 'Jaffna', 'Northern', '40000', 'Srilanka', 'vaaranan8@gmail.com', '0774241242', 1, '2025-01-02 00:49:29', '2025-01-02 00:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_date_of_birth_certificates`
--

CREATE TABLE `student_date_of_birth_certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `date_of_birth_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_date_of_birth_certificates`
--

INSERT INTO `student_date_of_birth_certificates` (`id`, `student_id`, `date_of_birth_certificate`, `created_at`, `updated_at`) VALUES
(1, 1, 'docs/documets/1735797359.pdf', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'docs/documets/1735798769.pdf', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'docs/documets/1735798838.pdf', '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `student_images`
--

CREATE TABLE `student_images` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_images`
--

INSERT INTO `student_images` (`id`, `student_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'docs/image/1735797359.jpg', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'docs/image/1735798769.jpg', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'docs/image/1735798838.jpg', '2025-01-02 00:50:38', '2025-01-02 00:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `student_nics`
--

CREATE TABLE `student_nics` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `nic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_nics`
--

INSERT INTO `student_nics` (`id`, `student_id`, `nic`, `created_at`, `updated_at`) VALUES
(1, 1, 'docs/documets/1735797359.pdf', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'docs/documets/1735798769.pdf', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'docs/documets/1735798839.pdf', '2025-01-02 00:50:39', '2025-01-02 00:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `student_payments_details`
--

CREATE TABLE `student_payments_details` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `last_payment_date` date DEFAULT NULL,
  `last_paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `arrears` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `full_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `next_due_date` date DEFAULT NULL,
  `next_due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_payments_details`
--

INSERT INTO `student_payments_details` (`id`, `student_id`, `last_payment_date`, `last_paid_amount`, `arrears`, `total_paid`, `full_amount`, `balance`, `next_due_date`, `next_due_amount`, `created_at`, `updated_at`) VALUES
(1, 2, '2025-01-03', 5000.00, 5000.00, 96000.00, 350000.00, 236000.00, '2025-01-03', 13500.00, '2024-09-10 18:03:19', '2025-01-02 20:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `payment_type_id` enum('MonthlyInstallment','UniPayment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_by` enum('Card','Cash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Completed','Failed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `student_id`, `payment_type_id`, `date`, `amount`, `payment_by`, `invoice_no`, `note`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 'MonthlyInstallment', '2025-01-02', 8000.00, 'Cash', 'BPAY4', NULL, 'Completed', '2025-01-03 14:14:49', '2025-01-02 14:14:49'),
(6, 2, 'MonthlyInstallment', '2025-01-03', 5000.00, 'Cash', 'BPAY6', NULL, 'Completed', '2025-01-02 20:32:15', '2025-01-02 20:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `who_will_pays`
--

CREATE TABLE `who_will_pays` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `address_official` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scholarship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `who_will_pays`
--

INSERT INTO `who_will_pays` (`id`, `student_id`, `name`, `address`, `address_official`, `city`, `Province`, `postal_code`, `country`, `phone_number`, `email`, `scholarship`, `created_at`, `updated_at`) VALUES
(1, 1, 'ghghk jhffgh', 'fgghf', 'fghf', 'fg', 'gfh', 4567, 'india', '012354', 'dfgfh@gmail.com', '1', '2025-01-02 00:25:59', '2025-01-02 00:25:59'),
(2, 2, 'ghghk jhffgh', 'fgghf', 'fghf', 'fg', 'gfh', 4567, 'india', '012354', 'dfgfh@gmail.com', '1', '2025-01-02 00:49:29', '2025-01-02 00:49:29'),
(3, 3, 'ghghk jhffgh', 'fgghf', 'fghf', 'fg', 'gfh', 4567, 'india', '012354', 'dfgfh@gmail.com', '1', '2025-01-02 00:50:39', '2025-01-02 00:50:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_uses`
--
ALTER TABLE `admin_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_checklists`
--
ALTER TABLE `applicant_checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_times`
--
ALTER TABLE `course_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_types`
--
ALTER TABLE `course_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `joined_froms`
--
ALTER TABLE `joined_froms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `name_of_courses`
--
ALTER TABLE `name_of_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_qualifications`
--
ALTER TABLE `other_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personal_statements`
--
ALTER TABLE `personal_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_date_of_birth_certificates`
--
ALTER TABLE `student_date_of_birth_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_images`
--
ALTER TABLE `student_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_nics`
--
ALTER TABLE `student_nics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payments_details`
--
ALTER TABLE `student_payments_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_payments_details_student_id_foreign` (`student_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `who_will_pays`
--
ALTER TABLE `who_will_pays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_uses`
--
ALTER TABLE `admin_uses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `applicant_checklists`
--
ALTER TABLE `applicant_checklists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_times`
--
ALTER TABLE `course_times`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_types`
--
ALTER TABLE `course_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joined_froms`
--
ALTER TABLE `joined_froms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `name_of_courses`
--
ALTER TABLE `name_of_courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `other_qualifications`
--
ALTER TABLE `other_qualifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_statements`
--
ALTER TABLE `personal_statements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_date_of_birth_certificates`
--
ALTER TABLE `student_date_of_birth_certificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_images`
--
ALTER TABLE `student_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_nics`
--
ALTER TABLE `student_nics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_payments_details`
--
ALTER TABLE `student_payments_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `who_will_pays`
--
ALTER TABLE `who_will_pays`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_payments_details`
--
ALTER TABLE `student_payments_details`
  ADD CONSTRAINT `student_payments_details_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
