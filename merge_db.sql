-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 01:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icp_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_uses`
--

CREATE TABLE `admin_uses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_number` varchar(255) DEFAULT NULL,
  `total_fees` varchar(255) DEFAULT NULL,
  `registration_fees` varchar(255) DEFAULT NULL,
  `installment` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_uses`
--

INSERT INTO `admin_uses` (`id`, `student_id`, `student_number`, `total_fees`, `registration_fees`, `installment`, `discount`, `join_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(9, 9, '402', '67', '7', '58', '75', '1986-07-04', '2000-09-05', 1, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, '767', '16', '37', '13', '14', '2003-01-12', '1994-09-22', 1, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_checklists`
--

CREATE TABLE `applicant_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
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
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-03 04:21:21', '2025-01-03 05:29:57'),
(9, 9, 0, 0, 0, 0, 1, 0, 0, 0, 0, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, NULL, 1, NULL, 1, 1, 1, 1, 1, NULL, '2025-01-03 11:05:00', '2025-01-03 11:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `accountNo` varchar(255) DEFAULT NULL,
  `openingBalance` varchar(255) DEFAULT NULL,
  `actionBy` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_times`
--

CREATE TABLE `course_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_types`
--

CREATE TABLE `course_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_type_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `address_line` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `student_id`, `first_name`, `last_name`, `relationship`, `address`, `address_line`, `city`, `province`, `postal_code`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES
(9, 9, 'Coby', 'Graham', 'Id sed nulla harum', 'Cumque dolore praese', 'Accusamus irure sunt', 'Ut consequatur cons', 'Ipsum porro libero', 95581, 'ruqisu@mailinator.com', '775544788', '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, 'Aladdin', 'Orr', 'Odio rerum dolores o', 'Ipsum quod elit sun', 'Molestiae neque expe', 'Dolor expedita obcae', 'Odit exercitationem', 31213, 'givyp@mailinator.com', '9278545544', '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenseTypeName` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `joined_froms`
--

CREATE TABLE `joined_froms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `joined_from` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
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
(19, '2024_12_14_200240_create_bank_accounts_table', 1),
(20, '2024_12_15_061627_create_expense_types_table', 1),
(21, '2025_01_01_120934_create_student_images_table', 1),
(22, '2025_01_01_121345_create_student_nics_table', 1),
(23, '2025_01_01_121454_create_student_date_of_birth_certificates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `name_of_courses`
--

CREATE TABLE `name_of_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `preferred_mode` varchar(255) DEFAULT NULL,
  `program_applied_for` varchar(255) DEFAULT NULL,
  `student_number` int(11) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `name_of_courses`
--

INSERT INTO `name_of_courses` (`id`, `student_id`, `preferred_mode`, `program_applied_for`, `student_number`, `course_name`, `created_at`, `updated_at`) VALUES
(9, 9, 'fulltime', 'hnd', 29775541, 'Randall Newman', '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, 'fulltime', 'diploma', 188, 'Meghan Byers', '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `other_qualifications`
--

CREATE TABLE `other_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `qualifications` longtext DEFAULT NULL,
  `qualifications_line` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_qualifications`
--

INSERT INTO `other_qualifications` (`id`, `student_id`, `qualifications`, `qualifications_line`, `created_at`, `updated_at`) VALUES
(9, 9, 'Gary Santana', 'Gary Santana', '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, 'Martha Roth', NULL, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

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
-- Table structure for table `personal_statements`
--

CREATE TABLE `personal_statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_reason` longtext DEFAULT NULL,
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
(9, 9, 'Anim itaque aliquam', 0, 0, 1, 1, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, 'Aute nulla atque lab', NULL, 1, NULL, 1, '2025-01-03 11:05:00', '2025-01-03 11:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `olexam` varchar(255) DEFAULT NULL,
  `olpath` varchar(255) DEFAULT NULL,
  `alexam` varchar(255) DEFAULT NULL,
  `alpath` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `student_id`, `olexam`, `olpath`, `alexam`, `alpath`, `created_at`, `updated_at`) VALUES
(9, 9, 'GCE O/L', NULL, 'GCE A/L', 'docs/documents/Pirathap DSP[1].docx', '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, 'GCE O/L', NULL, 'GCE A/L', NULL, '2025-01-03 11:05:00', '2025-01-03 11:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zoho_no` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `address_line` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `nic_number` varchar(255) DEFAULT NULL,
  `qr_code` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `zoho_no`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `address`, `address_line`, `city`, `province`, `postal_code`, `country`, `email`, `phone_number`, `nic_number`, `qr_code`, `status`, `created_at`, `updated_at`) VALUES
(9, '666', 'Ursula', 'Noel Buckley', 'Owens', '2016-February-10', 'Quod velit est neque', 'Corporis vel volupta', 'Quia voluptatem ea m', 'In sint voluptatem d', '91685', 'Atque voluptatem co', 'miqyvy@mailinator.com', '0775544789', '15', 'data:image/png;base64,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', 1, '2025-01-03 11:01:11', '2025-01-03 11:01:11'),
(10, '194', 'Bevis', 'Laurel Landry', 'George', '2014-February-11', 'Iusto qui dolore quo', 'Ea libero consequat', 'Non laborum Sint a', 'Assumenda inventore', '85712', 'Quibusdam quis eos', 'masyvehy@mailinator.com', '9278545543', '79', 'data:image/png;base64,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', 1, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_date_of_birth_certificates`
--

CREATE TABLE `student_date_of_birth_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `date_of_birth_certificate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_date_of_birth_certificates`
--

INSERT INTO `student_date_of_birth_certificates` (`id`, `student_id`, `date_of_birth_certificate`, `created_at`, `updated_at`) VALUES
(9, 9, NULL, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, NULL, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_images`
--

CREATE TABLE `student_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_images`
--

INSERT INTO `student_images` (`id`, `student_id`, `image`, `created_at`, `updated_at`) VALUES
(9, 9, NULL, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, NULL, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_nics`
--

CREATE TABLE `student_nics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `nic` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_nics`
--

INSERT INTO `student_nics` (`id`, `student_id`, `nic`, `created_at`, `updated_at`) VALUES
(9, 9, NULL, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, NULL, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `who_will_pays`
--

CREATE TABLE `who_will_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `address_official` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `scholarship` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `who_will_pays`
--

INSERT INTO `who_will_pays` (`id`, `student_id`, `name`, `address`, `address_official`, `city`, `Province`, `postal_code`, `country`, `phone_number`, `email`, `scholarship`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-03 04:21:21', '2025-01-03 05:29:57'),
(9, 9, 'Ayanna Knapp', 'Quaerat id quasi qui', 'Doloribus et sequi i', 'Mollit adipisicing c', 'Repellendus Soluta', 10475, 'Nulla cupidatat pari', '775544788', 'kuketafu@mailinator.com', 1, '2025-01-03 11:01:12', '2025-01-03 11:01:12'),
(10, 10, 'Damon Bender', 'Sequi ullamco autem', 'Velit labore odit du', 'Nemo alias quasi qui', 'Mollitia quo assumen', 69791, 'Eos eum quis non ut', '9278545544', 'voweto@mailinator.com', 1, '2025-01-03 11:05:00', '2025-01-03 11:05:00');

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
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `applicant_checklists`
--
ALTER TABLE `applicant_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_times`
--
ALTER TABLE `course_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_types`
--
ALTER TABLE `course_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joined_froms`
--
ALTER TABLE `joined_froms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `name_of_courses`
--
ALTER TABLE `name_of_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `other_qualifications`
--
ALTER TABLE `other_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_statements`
--
ALTER TABLE `personal_statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_date_of_birth_certificates`
--
ALTER TABLE `student_date_of_birth_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_images`
--
ALTER TABLE `student_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_nics`
--
ALTER TABLE `student_nics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `who_will_pays`
--
ALTER TABLE `who_will_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
