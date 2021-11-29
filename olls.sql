-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 09:09 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olls`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Admins'),
(3, 'Clients'),
(5, 'Doc-verifier'),
(2, 'Land-Owners'),
(4, 'Land-verifier'),
(6, 'Waiting for Verification');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 10),
(10, 1, 12),
(11, 1, 13),
(12, 1, 14),
(13, 1, 15),
(14, 1, 16),
(15, 1, 17),
(16, 1, 18),
(17, 1, 19),
(18, 1, 20),
(19, 1, 21),
(20, 1, 22),
(21, 1, 23),
(22, 1, 24),
(23, 2, 12),
(24, 2, 17),
(25, 2, 18),
(26, 2, 19),
(27, 2, 20),
(28, 2, 21),
(29, 2, 22),
(30, 2, 24),
(31, 3, 1),
(32, 3, 12),
(33, 3, 17),
(34, 3, 18),
(35, 3, 19),
(36, 3, 20),
(37, 3, 21),
(38, 3, 22),
(39, 3, 24),
(86, 4, 1),
(87, 4, 16),
(88, 4, 17),
(89, 4, 18),
(90, 4, 20),
(91, 4, 21),
(92, 4, 22),
(93, 4, 24),
(47, 5, 1),
(48, 5, 16),
(49, 5, 17),
(50, 5, 18),
(51, 5, 20),
(52, 5, 21),
(53, 5, 22),
(54, 5, 24),
(59, 6, 28),
(55, 6, 36),
(56, 6, 40),
(57, 6, 52),
(58, 6, 56);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add state', 7, 'add_state'),
(26, 'Can change state', 7, 'change_state'),
(27, 'Can delete state', 7, 'delete_state'),
(28, 'Can view state', 7, 'view_state'),
(29, 'Can add auth_user', 8, 'add_auth_user'),
(30, 'Can change auth_user', 8, 'change_auth_user'),
(31, 'Can delete auth_user', 8, 'delete_auth_user'),
(32, 'Can view auth_user', 8, 'view_auth_user'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add user profile', 11, 'add_userprofile'),
(42, 'Can change user profile', 11, 'change_userprofile'),
(43, 'Can delete user profile', 11, 'delete_userprofile'),
(44, 'Can view user profile', 11, 'view_userprofile'),
(45, 'Can add extended profile', 11, 'add_extendedprofile'),
(46, 'Can change extended profile', 11, 'change_extendedprofile'),
(47, 'Can delete extended profile', 11, 'delete_extendedprofile'),
(48, 'Can view extended profile', 11, 'view_extendedprofile'),
(49, 'Can add extendeduser', 12, 'add_extendeduser'),
(50, 'Can change extendeduser', 12, 'change_extendeduser'),
(51, 'Can delete extendeduser', 12, 'delete_extendeduser'),
(52, 'Can view extendeduser', 12, 'view_extendeduser'),
(53, 'Can add user_data', 13, 'add_user_data'),
(54, 'Can change user_data', 13, 'change_user_data'),
(55, 'Can delete user_data', 13, 'delete_user_data'),
(56, 'Can view user_data', 13, 'view_user_data'),
(57, 'Can add land data', 14, 'add_landdata'),
(58, 'Can change land data', 14, 'change_landdata'),
(59, 'Can delete land data', 14, 'delete_landdata'),
(60, 'Can view land data', 14, 'view_landdata'),
(61, 'Can add Land Data', 15, 'add_landdata'),
(62, 'Can change Land Data', 15, 'change_landdata'),
(63, 'Can delete Land Data', 15, 'delete_landdata'),
(64, 'Can view Land Data', 15, 'view_landdata'),
(65, 'Can add category', 16, 'add_category'),
(66, 'Can change category', 16, 'change_category'),
(67, 'Can delete category', 16, 'delete_category'),
(68, 'Can view category', 16, 'view_category'),
(69, 'Can add Land Data', 17, 'add_land_data'),
(70, 'Can change Land Data', 17, 'change_land_data'),
(71, 'Can delete Land Data', 17, 'delete_land_data'),
(72, 'Can view Land Data', 17, 'view_land_data'),
(73, 'Can add category', 18, 'add_category'),
(74, 'Can change category', 18, 'change_category'),
(75, 'Can delete category', 18, 'delete_category'),
(76, 'Can view category', 18, 'view_category'),
(77, 'Can add Land Data', 19, 'add_land_data'),
(78, 'Can change Land Data', 19, 'change_land_data'),
(79, 'Can delete Land Data', 19, 'delete_land_data'),
(80, 'Can view Land Data', 19, 'view_land_data'),
(81, 'Can add applied_data', 20, 'add_applied_data'),
(82, 'Can change applied_data', 20, 'change_applied_data'),
(83, 'Can delete applied_data', 20, 'delete_applied_data'),
(84, 'Can view applied_data', 20, 'view_applied_data'),
(85, 'Can add applied', 21, 'add_applied'),
(86, 'Can change applied', 21, 'change_applied'),
(87, 'Can delete applied', 21, 'delete_applied'),
(88, 'Can view applied', 21, 'view_applied'),
(89, 'Can add Verification', 22, 'add_verification'),
(90, 'Can change Verification', 22, 'change_verification'),
(91, 'Can delete Verification', 22, 'delete_verification'),
(92, 'Can view Verification', 22, 'view_verification'),
(93, 'Can add payment_data', 23, 'add_payment_data'),
(94, 'Can change payment_data', 23, 'change_payment_data'),
(95, 'Can delete payment_data', 23, 'delete_payment_data'),
(96, 'Can view payment_data', 23, 'view_payment_data');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$9Wjeq74jBCEw$704+s3EXlQzFAkQzXhx/n3o/MRGDfHiJU/Az5YS3OOg=', '2020-11-27 19:29:00.571408', 1, 'Forhad', 'Forhad', 'Hossain', 'engforhad1@gmail.com', 1, 1, '2020-09-09 09:14:38.000000'),
(54, 'pbkdf2_sha256$216000$p2RYDCeBNzDg$o7u8kIYvHFZ5kg7ZmVmZK1lk4QS8Bzi5zEh8aR6X138=', '2020-12-08 11:13:22.427717', 0, 'client', 'Forhad', 'Hossain', 'client@gmail.com', 0, 1, '2020-10-18 19:02:39.564271'),
(55, 'pbkdf2_sha256$216000$EDIFHbZwv2Qk$HgsjiiDVW4zD68W+3GORrtO55nXPnxA6GP8z4LgOiNY=', '2020-12-05 07:56:11.162727', 0, 'landowner', 'Forhad', 'Hossain', 'landowner@gmail.com', 0, 1, '2020-10-18 19:06:48.022711'),
(56, 'pbkdf2_sha256$216000$kqoXtvBdPMmh$licPUEfmIk6Lohaszvyw+cPdbwrCf9An5YAB+kbvjQk=', '2020-12-08 07:59:46.476705', 1, 'admin', 'Forhad', 'Hossain', 'admin@gmail.com', 1, 1, '2020-10-18 19:08:27.000000'),
(57, 'pbkdf2_sha256$216000$aG2uB5Ox5aXF$SI9pG7oIRrcwmzZIb4Hyg1kh2puMDjslq8oVMiUYovM=', '2020-11-19 12:46:18.391152', 0, 'test', 'test', 'test', 'test@gmail.com', 0, 1, '2020-10-19 20:13:19.140021'),
(60, 'pbkdf2_sha256$216000$PCeaKf4WTcwo$nEDr5u1+FxMDksXuuswmgAGVzGJWSlqO+RbXYTpngzU=', '2020-11-30 13:34:47.351424', 0, 'doc', 'Doc', 'Verifier', 'doc-verifier@gmail.com', 0, 1, '2020-10-23 06:14:02.000000'),
(63, 'pbkdf2_sha256$216000$4BHkK0QC4rxC$sJxEZE2LZjOhJd32UekBQ5NwaRPsq1eMuNYqPci3dkI=', '2020-11-30 13:34:17.676050', 0, 'verifier', 'Forhad', 'Verifier', 'verifier@gmail.com', 0, 1, '2020-11-18 22:06:04.000000'),
(67, 'pbkdf2_sha256$216000$q4TDLVhZ481d$cjhHVx5s14bkE/MdtXjsMGdHMB7otj67xOdQX+wcIPc=', '2020-11-24 05:48:27.003814', 0, 'ovi', 'Fahmida', 'khanam', 'ovi@gmail.com', 0, 1, '2020-11-24 05:48:13.033101');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 54, 3),
(18, 55, 2),
(20, 56, 1),
(19, 56, 2),
(21, 56, 3),
(22, 56, 4),
(23, 56, 5),
(24, 57, 3),
(28, 60, 5),
(42, 63, 4),
(46, 67, 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(57, 56, 1),
(58, 56, 2),
(60, 56, 4),
(61, 56, 5),
(62, 56, 6),
(64, 56, 8),
(65, 56, 9),
(66, 56, 10),
(67, 56, 11),
(68, 56, 12),
(69, 56, 13),
(70, 56, 14),
(71, 56, 15),
(72, 56, 16),
(73, 56, 17),
(74, 56, 18),
(75, 56, 19),
(76, 56, 20),
(77, 56, 21),
(78, 56, 22),
(79, 56, 23),
(80, 56, 24),
(81, 56, 25),
(82, 56, 26),
(83, 56, 27),
(84, 56, 28),
(85, 56, 29),
(86, 56, 30),
(87, 56, 31),
(88, 56, 32),
(89, 56, 33),
(90, 56, 34),
(91, 56, 35),
(92, 56, 36),
(93, 56, 37),
(94, 56, 38),
(95, 56, 39),
(96, 56, 40),
(97, 56, 41),
(98, 56, 42),
(99, 56, 43),
(100, 56, 44),
(101, 56, 45),
(102, 56, 46),
(103, 56, 47),
(104, 56, 48),
(105, 56, 49),
(106, 56, 50),
(107, 56, 51),
(108, 56, 52),
(109, 56, 53),
(110, 56, 54),
(111, 56, 55),
(112, 56, 56),
(113, 56, 57),
(114, 56, 58),
(115, 56, 59),
(116, 56, 60),
(131, 60, 26),
(132, 60, 28),
(130, 60, 56),
(127, 60, 64),
(128, 60, 72),
(129, 60, 80),
(239, 63, 26),
(240, 63, 28),
(238, 63, 56),
(235, 63, 64),
(236, 63, 72),
(237, 63, 80);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-12 07:00:37.214218', '2', 'pappo', 3, '', 4, 1),
(2, '2020-09-15 06:57:48.907567', '1', 'Admins', 1, '[{"added": {}}]', 3, 1),
(3, '2020-09-15 07:01:49.051526', '2', 'Land-Owners', 1, '[{"added": {}}]', 3, 1),
(4, '2020-09-15 07:03:11.626739', '3', 'Clients', 1, '[{"added": {}}]', 3, 1),
(5, '2020-09-15 07:05:44.309807', '4', 'Surveyor', 1, '[{"added": {}}]', 3, 1),
(6, '2020-09-15 07:08:12.964624', '5', 'Doc-verifier', 1, '[{"added": {}}]', 3, 1),
(7, '2020-10-07 18:00:54.682806', '29', 'test', 3, '', 4, 1),
(8, '2020-10-08 12:33:26.616280', '40', 'hossain', 3, '', 4, 1),
(9, '2020-10-08 12:33:26.629273', '41', 'test', 3, '', 4, 1),
(10, '2020-10-08 12:46:51.662586', '43', 'hossain', 3, '', 4, 1),
(11, '2020-10-08 12:46:51.673583', '42', 'test', 3, '', 4, 1),
(12, '2020-10-08 12:52:18.595288', '44', 'test', 3, '', 4, 1),
(13, '2020-10-13 18:56:06.156302', '46', 'test', 3, '', 4, 1),
(14, '2020-10-13 19:31:07.369156', '47', 'test', 3, '', 4, 1),
(15, '2020-10-13 19:55:06.753247', '49', 'pappo', 3, '', 4, 1),
(16, '2020-10-13 19:55:06.765241', '48', 'test', 3, '', 4, 1),
(17, '2020-10-14 16:47:57.245862', '46', 'test', 3, '', 4, 1),
(18, '2020-10-15 06:20:39.943810', '46', 'test', 3, '', 4, 1),
(19, '2020-10-15 06:41:45.696580', '47', 'test', 3, '', 4, 1),
(20, '2020-10-15 06:45:46.063516', '48', 'test', 3, '', 4, 1),
(21, '2020-10-15 09:27:32.265624', '49', 'test', 3, '', 4, 1),
(22, '2020-10-16 06:39:02.892548', '50', 'test', 2, '[{"changed": {"fields": ["Superuser status", "Groups", "User permissions"]}}]', 4, 1),
(23, '2020-10-16 06:40:43.701398', '50', 'test', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1),
(26, '2020-10-17 07:34:22.996881', '45', 'hossain', 2, '[{"changed": {"fields": ["First name"]}}]', 4, 1),
(27, '2020-10-17 15:52:46.677189', '51', 'pappo', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1),
(28, '2020-10-17 15:53:05.407314', '51', 'pappo', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1),
(29, '2020-10-18 18:53:04.573970', '45', 'hossain', 3, '', 4, 1),
(30, '2020-10-18 18:53:04.586961', '51', 'pappo', 3, '', 4, 1),
(31, '2020-10-18 18:53:04.595956', '50', 'test', 3, '', 4, 1),
(32, '2020-10-18 18:53:04.604949', '53', 'testing', 3, '', 4, 1),
(33, '2020-10-18 19:10:02.377400', '56', 'admin', 2, '[{"changed": {"fields": ["Staff status", "Superuser status", "Groups", "User permissions"]}}]', 4, 1),
(34, '2020-10-18 19:12:48.152028', '1', 'Forhad', 2, '[]', 4, 56),
(35, '2020-10-18 19:22:29.098883', '6', 'Waiting for Verification', 1, '[{"added": {}}]', 3, 56),
(36, '2020-10-19 18:59:34.885122', '1', 'Pond', 1, '[{"added": {}}]', 16, 1),
(37, '2020-10-21 15:35:33.971000', 'Pond', 'Pond', 1, '[{"added": {}}]', 16, 56),
(38, '2020-10-21 18:57:59.723287', 'Pond', 'Pond', 1, '[{"added": {}}]', 18, 1),
(39, '2020-10-21 19:04:21.578429', 'Farm', 'Farm', 1, '[{"added": {}}]', 18, 1),
(40, '2020-10-21 19:04:41.984735', 'Land', 'Land', 1, '[{"added": {}}]', 18, 1),
(41, '2020-10-22 18:09:27.472910', '58', 'surveyor', 1, '[{"added": {}}]', 4, 56),
(42, '2020-10-22 18:10:55.739036', '58', 'surveyor', 3, '', 4, 1),
(43, '2020-10-22 18:19:02.539104', '59', 'surveyor', 2, '[{"changed": {"fields": ["Staff status", "Groups", "User permissions", "Last login"]}}]', 4, 1),
(44, '2020-10-22 18:19:31.470408', '59', 'surveyor', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1),
(45, '2020-10-22 18:35:31.673014', '59', 'surveyor', 2, '[{"changed": {"fields": ["Staff status"]}}]', 4, 1),
(46, '2020-10-23 06:16:56.675215', '60', 'doc', 2, '[{"changed": {"fields": ["Groups", "User permissions"]}}]', 4, 56),
(47, '2020-10-26 14:01:48.585799', 'Rice Farming', 'Rice Farming', 1, '[{"added": {}}]', 18, 56),
(48, '2020-10-26 14:02:06.765114', 'Fisheries', 'Fisheries', 1, '[{"added": {}}]', 18, 56),
(49, '2020-10-26 14:02:22.856709', 'Poultry', 'Poultry', 1, '[{"added": {}}]', 18, 56),
(50, '2020-10-26 14:02:52.338760', 'Goat Farming', 'Goat Farming', 1, '[{"added": {}}]', 18, 56),
(51, '2020-10-26 14:03:13.937118', 'Cow Farming', 'Cow Farming', 1, '[{"added": {}}]', 18, 56),
(52, '2020-10-26 14:03:45.088487', 'Vegetables Farming', 'Vegetables Farming', 1, '[{"added": {}}]', 18, 56),
(53, '2020-10-26 15:10:05.122567', 'Land', 'Land', 3, '', 18, 56),
(54, '2020-10-26 15:10:05.400080', 'Pond', 'Pond', 3, '', 18, 56),
(55, '2020-10-26 16:59:56.726065', '2147483647', 'Land_Data object (2147483647)', 1, '[{"added": {}}]', 19, 56),
(56, '2020-10-27 17:36:36.663032', '0', 'Land_Data object (0)', 1, '[{"added": {}}]', 19, 1),
(57, '2020-10-27 17:47:55.309714', '2', 'Land_Data object (2)', 1, '[{"added": {}}]', 19, 1),
(58, '2020-10-27 18:23:19.169117', '3', 'Land_Data object (3)', 3, '', 19, 1),
(59, '2020-10-27 18:23:28.717327', '2', 'Land_Data object (2)', 3, '', 19, 1),
(60, '2020-10-27 18:25:38.495623', '1', 'Land_Data object (1)', 3, '', 19, 1),
(61, '2020-10-27 18:30:56.953776', '0', 'Land_Data object (0)', 1, '[{"added": {}}]', 19, 56),
(62, '2020-10-27 18:40:32.670129', '1', 'Land_Data object (1)', 2, '[]', 19, 56),
(63, '2020-11-03 07:26:17.334313', '1', 'land', 3, '', 19, 56),
(64, '2020-11-03 16:26:58.589145', '6', 'Land Available for rent', 2, '[{"changed": {"fields": ["Slug", "Size", "Area"]}}]', 19, 56),
(65, '2020-11-04 05:32:27.554750', '7', 'Land for farming', 2, '[{"changed": {"fields": ["Slug", "Allow status", "Area"]}}]', 19, 1),
(66, '2020-11-04 07:38:58.067868', '55', 'Land Available for rent', 2, '[{"changed": {"fields": ["Slug", "Allow status", "Area"]}}]', 19, 56),
(67, '2020-11-13 14:46:46.569459', '9', '54', 3, '', 20, 1),
(68, '2020-11-13 14:46:46.576494', '8', '54', 3, '', 20, 1),
(69, '2020-11-13 14:46:46.581472', '7', '54', 3, '', 20, 1),
(70, '2020-11-15 20:11:34.231045', '61', 'Road Side land', 2, '[{"changed": {"fields": ["Title", "Slug", "Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(71, '2020-11-16 14:21:01.399459', '68', 'Land Available', 2, '[{"changed": {"fields": ["Title", "Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(72, '2020-11-16 14:53:20.266395', '69', 'Roadside Land with pond', 2, '[{"changed": {"fields": ["Slug", "Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(73, '2020-11-16 16:38:01.759362', '70', 'This land with pond  is available', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(74, '2020-11-18 18:12:28.563036', '59', 'verifier', 2, '[{"changed": {"fields": ["Username"]}}]', 4, 56),
(75, '2020-11-18 18:13:36.617817', '59', 'verifier', 2, '[{"changed": {"fields": ["Last name"]}}]', 4, 56),
(76, '2020-11-18 20:30:17.540985', '4', 'Land Verifier', 2, '[{"changed": {"fields": ["Name"]}}]', 3, 56),
(77, '2020-11-18 20:30:57.374593', '59', 'verifier', 2, '[]', 4, 56),
(78, '2020-11-18 20:32:32.472982', '62', 'test123', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(79, '2020-11-18 20:34:55.905836', '62', 'test123', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(80, '2020-11-18 20:39:48.865080', '7', 'Land-Verifier', 1, '[{"added": {}}]', 3, 56),
(81, '2020-11-18 20:40:21.813414', '59', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(82, '2020-11-18 20:42:04.416676', '59', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(83, '2020-11-18 20:47:19.399926', '59', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(84, '2020-11-18 20:51:59.898025', '4', 'Land Verifier', 2, '[{"changed": {"fields": ["Permissions"]}}]', 3, 56),
(85, '2020-11-18 20:52:28.591141', '59', 'verifier', 2, '[]', 4, 56),
(86, '2020-11-18 20:54:33.294863', '62', 'test123', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(87, '2020-11-18 20:56:18.569689', '62', 'test123', 2, '[{"changed": {"fields": ["User permissions"]}}]', 4, 56),
(88, '2020-11-18 21:01:23.757813', '7', 'Land-Verifier', 2, '[{"changed": {"fields": ["Permissions"]}}]', 3, 56),
(89, '2020-11-18 21:01:48.669874', '59', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(90, '2020-11-18 21:03:02.530000', '62', 'test123', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(91, '2020-11-18 21:12:13.912513', '59', 'verifier', 2, '[{"changed": {"fields": ["Groups", "User permissions"]}}]', 4, 56),
(92, '2020-11-18 21:45:32.531564', '59', 'verifier', 3, '', 4, 56),
(93, '2020-11-18 22:01:39.524132', '7', 'Land-Verifier', 3, '', 3, 56),
(94, '2020-11-18 22:02:10.825237', '62', 'test123', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(95, '2020-11-18 22:07:32.350968', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(96, '2020-11-18 22:14:06.479013', '4', 'Land Verifier', 2, '[{"changed": {"fields": ["Permissions"]}}]', 3, 56),
(97, '2020-11-18 22:14:30.824399', '4', 'Land-Verifier', 2, '[{"changed": {"fields": ["Name"]}}]', 3, 56),
(98, '2020-11-18 22:15:17.096912', '63', 'verifier', 2, '[]', 4, 56),
(99, '2020-11-18 22:18:25.110277', '63', 'verifier', 2, '[{"changed": {"fields": ["User permissions"]}}]', 4, 56),
(100, '2020-11-18 22:18:48.191801', '63', 'verifier', 2, '[]', 4, 56),
(101, '2020-11-18 22:40:40.427496', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(102, '2020-11-18 22:48:14.119918', '4', 'Land-verifier', 2, '[{"changed": {"fields": ["Name", "Permissions"]}}]', 3, 1),
(103, '2020-11-18 22:48:49.953361', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1),
(104, '2020-11-18 22:50:02.031909', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(105, '2020-11-19 06:35:34.065927', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(106, '2020-11-19 06:37:32.337711', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(107, '2020-11-19 06:41:05.466297', '63', 'verifier', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 56),
(108, '2020-11-22 19:57:08.424512', '14', 'Roadside Land with pond', 2, '[{"changed": {"fields": ["Area", "Monthly charge", "Soil type", "Detail addr"]}}]', 19, 56),
(109, '2020-11-22 20:05:59.397680', '10', 'cow Farm', 2, '[{"changed": {"fields": ["Title", "Slug", "Allow status", "Area", "Monthly charge", "Soil type", "Detail addr"]}}]', 19, 56),
(110, '2020-11-22 20:09:56.800192', '55', 'Test title', 2, '[{"changed": {"fields": ["Slug", "Allow status", "Area", "Monthly charge", "Soil type", "Detail addr"]}}]', 19, 56),
(111, '2020-11-22 22:36:24.465583', '20', 'Poultry Farm', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(112, '2020-11-22 22:36:36.505018', '19', 'Land for vegetables farm', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(113, '2020-11-24 05:46:55.257058', '65', 'ovi', 3, '', 4, 56),
(114, '2020-11-24 06:12:25.997256', '62', 'test123', 3, '', 4, 56),
(115, '2020-11-24 06:12:26.003274', '64', 'test456', 3, '', 4, 56),
(116, '2020-11-24 19:35:01.622687', '4', 'payment_data object (4)', 1, '[{"added": {}}]', 23, 56),
(117, '2020-11-24 19:42:05.722397', '14', 'Roadside Land with pond', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(118, '2020-11-24 19:44:33.259090', '4', 'payment_data object (4)', 2, '[]', 23, 56),
(119, '2020-11-24 19:46:33.903419', '4', 'payment_data object (4)', 3, '', 23, 56),
(120, '2020-11-24 19:49:38.185274', '6', 'payment_data object (6)', 1, '[{"added": {}}]', 23, 56),
(121, '2020-11-24 19:53:21.072723', '6', 'payment_data object (6)', 3, '', 23, 56),
(122, '2020-11-24 19:54:28.531837', '204', 'applied_data object (204)', 3, '', 20, 56),
(123, '2020-11-24 19:54:28.538833', '203', 'applied_data object (203)', 3, '', 20, 56),
(124, '2020-11-24 19:54:28.545830', '202', 'applied_data object (202)', 3, '', 20, 56),
(125, '2020-11-24 19:54:28.551825', '201', 'applied_data object (201)', 3, '', 20, 56),
(126, '2020-11-24 19:54:28.559821', '200', 'applied_data object (200)', 3, '', 20, 56),
(127, '2020-11-24 19:54:28.567048', '199', 'applied_data object (199)', 3, '', 20, 56),
(128, '2020-11-24 19:54:28.572854', '198', 'applied_data object (198)', 3, '', 20, 56),
(129, '2020-11-24 19:54:28.579692', '197', 'applied_data object (197)', 3, '', 20, 56),
(130, '2020-11-24 19:54:28.596554', '196', 'applied_data object (196)', 3, '', 20, 56),
(131, '2020-11-24 20:04:28.041766', '8', 'payment_data object (8)', 1, '[{"added": {}}]', 23, 56),
(132, '2020-11-24 22:59:15.892050', '8', 'payment_data object (8)', 3, '', 23, 56),
(133, '2020-11-24 23:09:05.846532', '9', 'payment_data object (9)', 1, '[{"added": {}}]', 23, 56),
(134, '2020-11-25 08:40:33.650355', '9', 'payment_data object (9)', 3, '', 23, 56),
(135, '2020-11-25 08:40:58.167452', '10', 'payment_data object (10)', 1, '[{"added": {}}]', 23, 56),
(136, '2020-11-26 03:45:30.781783', '10', 'payment_data object (10)', 3, '', 23, 56),
(137, '2020-11-28 13:58:55.441324', '20', 'Poultry Farm', 3, '', 19, 56),
(138, '2020-11-28 13:58:55.450319', '19', 'Land for vegetables farm', 3, '', 19, 56),
(139, '2020-11-28 13:58:55.456295', '16', 'Fisheries Pond', 3, '', 19, 56),
(140, '2020-11-28 13:58:55.462291', '15', 'This land with pond  is available', 3, '', 19, 56),
(141, '2020-11-28 13:58:55.469287', '14', 'Roadside Land with pond', 3, '', 19, 56),
(142, '2020-11-28 13:58:55.475284', '13', 'Land Available', 3, '', 19, 56),
(143, '2020-11-28 13:58:55.482280', '12', 'Test dat', 3, '', 19, 56),
(144, '2020-11-28 13:58:55.488276', '11', 'Test dat', 3, '', 19, 56),
(145, '2020-11-28 13:58:55.495272', '10', 'cow Farm', 3, '', 19, 56),
(146, '2020-11-28 13:58:55.502268', '9', 'ksjfkljdskfk', 3, '', 19, 56),
(147, '2020-11-28 13:58:55.509264', '8', 'Farming', 3, '', 19, 56),
(148, '2020-11-28 13:58:55.516260', '7', 'test', 3, '', 19, 56),
(149, '2020-11-28 13:58:55.523256', '6', 'Road Side land', 3, '', 19, 56),
(150, '2020-11-28 13:58:55.530252', '5', 'Bangladesh', 3, '', 19, 56),
(151, '2020-11-28 13:58:55.537248', '4', 'Test title', 3, '', 19, 56),
(152, '2020-11-28 13:58:55.544244', '3', 'Land Available for rent', 3, '', 19, 56),
(153, '2020-11-28 13:58:55.551240', '2', 'Land for farming', 3, '', 19, 56),
(154, '2020-11-28 13:58:55.567231', '1', 'Project id test', 3, '', 19, 56),
(155, '2020-11-28 13:59:48.006895', '15', 'This', 3, '', 22, 56),
(156, '2020-11-28 13:59:48.014078', '14', 'Land', 3, '', 22, 56),
(157, '2020-11-28 13:59:48.021083', '13', 'Project', 3, '', 22, 56),
(158, '2020-11-28 13:59:48.027139', '12', 'Project', 3, '', 22, 56),
(159, '2020-11-28 13:59:48.033816', '11', 'Project', 3, '', 22, 56),
(160, '2020-11-28 13:59:48.040565', '10', 'Project', 3, '', 22, 56),
(161, '2020-11-28 13:59:48.047567', '9', 'Road Side land', 3, '', 22, 56),
(162, '2020-11-28 13:59:48.053564', '8', 'Road Side land', 3, '', 22, 56),
(163, '2020-11-28 13:59:48.060558', '7', 'Road Side land', 3, '', 22, 56),
(164, '2020-11-28 13:59:48.066555', '6', 'Road Side land', 3, '', 22, 56),
(165, '2020-11-28 13:59:48.072552', '5', 'Road Side land', 3, '', 22, 56),
(166, '2020-11-28 13:59:48.079548', '4', 'Road Side land', 3, '', 22, 56),
(167, '2020-11-28 13:59:48.085544', '3', 'Road Side land', 3, '', 22, 56),
(168, '2020-11-28 13:59:48.091694', '2', 'Bangladesh', 3, '', 22, 56),
(169, '2020-11-28 13:59:48.097798', '1', 'Bangladesh', 3, '', 22, 56),
(170, '2020-11-28 14:06:56.682787', '1', 'payment_data object (1)', 1, '[{"added": {}}]', 23, 56),
(171, '2020-11-28 14:08:55.111630', '21', 'Land For Rice Farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge", "Month", "Year"]}}]', 19, 56),
(172, '2020-11-28 14:10:11.171676', '21', 'Land For Rice Farming', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(173, '2020-11-28 14:28:16.281082', '18', 'Land', 2, '[{"changed": {"fields": ["Loc ver"]}}]', 22, 56),
(174, '2020-11-28 14:28:30.906569', '17', 'Land', 2, '[{"changed": {"fields": ["Loc ver"]}}]', 22, 56),
(175, '2020-11-28 14:28:47.664565', '16', 'Land', 2, '[{"changed": {"fields": ["Loc ver"]}}]', 22, 56),
(176, '2020-11-28 14:32:29.308826', '24', 'Land Available', 2, '[{"changed": {"fields": ["Area", "Monthly charge", "Month", "Year"]}}]', 19, 56),
(177, '2020-11-28 14:32:49.691308', '23', 'Land For Poultry farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge", "Month", "Year"]}}]', 19, 56),
(178, '2020-11-28 14:33:25.131638', '23', 'Land For Poultry farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(179, '2020-11-28 14:33:35.939905', '21', 'Land For Rice Farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(180, '2020-11-28 14:33:55.148884', '22', 'Land for Farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge", "Month", "Year"]}}]', 19, 56),
(181, '2020-11-28 14:34:03.051513', '23', 'Land For Poultry farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(182, '2020-11-28 14:34:13.694188', '24', 'Land Available', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(183, '2020-11-28 14:36:56.067078', '2', 'payment_data object (2)', 1, '[{"added": {}}]', 23, 56),
(184, '2020-11-28 14:39:05.370867', '18', 'Land', 2, '[]', 22, 56),
(185, '2020-11-28 14:39:23.134281', '18', 'Land', 2, '[]', 22, 56),
(186, '2020-11-28 14:39:38.620014', '16', 'Land', 2, '[]', 22, 56),
(187, '2020-11-28 14:39:53.468547', '17', 'Land', 2, '[]', 22, 56),
(188, '2020-11-28 14:40:20.066461', '24', 'Land Available', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(189, '2020-11-28 14:40:37.773602', '23', 'Land For Poultry farming', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(190, '2020-11-28 14:40:52.223417', '22', 'Land for Farming', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56),
(191, '2020-11-28 14:41:01.649218', '21', 'Land For Rice Farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(192, '2020-11-28 14:41:09.870583', '24', 'Land Available', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(193, '2020-11-28 14:41:16.530058', '23', 'Land For Poultry farming', 2, '[{"changed": {"fields": ["Area", "Monthly charge"]}}]', 19, 56),
(194, '2020-11-30 13:35:57.468014', '26', 'khulshi land', 2, '[{"changed": {"fields": ["Allow status", "Area", "Monthly charge"]}}]', 19, 56);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(16, 'Data', 'category'),
(15, 'Data', 'landdata'),
(17, 'Data', 'land_data'),
(14, 'DataHandling', 'landdata'),
(8, 'Home', 'auth_user'),
(11, 'Home', 'extendedprofile'),
(12, 'Home', 'extendeduser'),
(9, 'Home', 'profile'),
(7, 'Home', 'state'),
(10, 'Home', 'user'),
(13, 'Home', 'user_data'),
(21, 'Land_Data', 'applied'),
(20, 'Land_Data', 'applied_data'),
(18, 'Land_Data', 'category'),
(19, 'Land_Data', 'land_data'),
(23, 'Land_Data', 'payment_data'),
(22, 'Land_Data', 'verification'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-09 09:11:18.306827'),
(2, 'auth', '0001_initial', '2020-09-09 09:11:18.529417'),
(3, 'admin', '0001_initial', '2020-09-09 09:11:19.249350'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-09 09:11:20.036275'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-09 09:11:20.070254'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-09 09:11:20.215137'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-09 09:11:20.428656'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-09 09:11:20.602600'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-09 09:11:20.617592'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-09 09:11:20.689508'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-09 09:11:20.696485'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-09 09:11:20.711480'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-09 09:11:20.791773'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-09 09:11:20.873613'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-09 09:11:20.952695'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-09 09:11:20.967717'),
(17, 'sessions', '0001_initial', '2020-09-09 09:11:21.004699'),
(18, 'Home', '0001_initial', '2020-09-19 16:03:50.881446'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2020-09-19 16:03:51.121389'),
(20, 'Home', '0002_auto_20201001_0127', '2020-09-30 19:27:42.513265'),
(21, 'Home', '0003_auth_user', '2020-10-01 17:21:20.415094'),
(22, 'Home', '0004_delete_auth_user', '2020-10-02 18:54:56.299273'),
(23, 'Home', '0005_profile', '2020-10-02 19:20:18.931231'),
(24, 'Home', '0006_auto_20201004_2043', '2020-10-04 14:43:40.641423'),
(25, 'Home', '0007_auto_20201004_2058', '2020-10-04 14:58:36.863413'),
(26, 'Home', '0008_delete_user', '2020-10-04 16:17:23.984783'),
(27, 'Home', '0009_user', '2020-10-04 18:52:51.787409'),
(28, 'Home', '0010_auto_20201005_0054', '2020-10-04 18:54:26.529218'),
(29, 'Home', '0002_auto_20201005_1535', '2020-10-05 09:35:21.934594'),
(30, 'Home', '0002_auto_20201005_1919', '2020-10-05 13:20:29.445653'),
(31, 'Home', '0002_auto_20201005_1941', '2020-10-05 13:41:36.577637'),
(32, 'Home', '0003_auto_20201005_2253', '2020-10-05 16:54:04.704279'),
(33, 'Home', '0004_auto_20201005_2338', '2020-10-05 17:40:22.279670'),
(34, 'Home', '0005_auto_20201005_2340', '2020-10-05 17:40:22.331636'),
(35, 'Home', '0002_auto_20201006_1210', '2020-10-06 06:11:20.956754'),
(36, 'Home', '0002_auto_20201006_1228', '2020-10-06 06:28:42.684385'),
(37, 'Home', '0003_auto_20201006_1231', '2020-10-06 06:31:11.402227'),
(38, 'Home', '0002_extendedprofile_full_name', '2020-10-07 16:23:22.962573'),
(39, 'Home', '0003_extendedprofile_phone_num', '2020-10-07 16:27:54.277075'),
(40, 'Home', '0004_extendedprofile_img', '2020-10-13 15:55:37.495402'),
(41, 'Home', '0005_auto_20201014_0046', '2020-10-13 18:47:11.428435'),
(42, 'Home', '0005_auto_20201014_2218', '2020-10-14 16:18:26.879923'),
(43, 'Home', '0005_auto_20201015_1437', '2020-10-15 08:38:12.423245'),
(44, 'Home', '0005_auto_20201015_1451', '2020-10-15 08:51:39.438374'),
(45, 'Home', '0006_auto_20201015_1526', '2020-10-15 09:27:05.134274'),
(50, 'Data', '0001_initial', '2020-10-19 19:16:56.376715'),
(51, 'Data', '0002_auto_20201021_2207', '2020-10-21 16:07:42.702135'),
(52, 'Land_Data', '0001_initial', '2020-10-21 18:46:27.979188'),
(53, 'Land_Data', '0002_auto_20201022_0047', '2020-10-21 18:47:15.746952'),
(54, 'Land_Data', '0003_auto_20201022_0054', '2020-10-21 18:54:14.342984'),
(55, 'Land_Data', '0004_auto_20201022_0056', '2020-10-21 18:57:04.108649'),
(56, 'Land_Data', '0005_auto_20201022_0103', '2020-10-21 19:03:06.018592'),
(57, 'Land_Data', '0006_land_data_area', '2020-10-26 14:40:17.500485'),
(58, 'Land_Data', '0007_auto_20201027_1930', '2020-10-27 13:30:31.304271'),
(59, 'Land_Data', '0008_auto_20201027_1931', '2020-10-27 13:31:35.155669'),
(60, 'Land_Data', '0009_auto_20201027_1933', '2020-10-27 13:33:29.472826'),
(61, 'Land_Data', '0010_auto_20201027_1935', '2020-10-27 13:35:09.574756'),
(62, 'Land_Data', '0002_auto_20201027_2303', '2020-10-27 17:03:36.712591'),
(63, 'Land_Data', '0002_auto_20201027_2327', '2020-10-27 17:27:28.337619'),
(64, 'Home', '0002_extendedprofile_applied_for', '2020-11-11 07:21:24.593228'),
(65, 'Land_Data', '0002_applied_data', '2020-11-11 15:31:18.000181'),
(66, 'Land_Data', '0002_auto_20201112_0106', '2020-11-11 19:06:17.936170'),
(67, 'Land_Data', '0003_auto_20201112_0132', '2020-11-11 19:32:12.121072'),
(68, 'Land_Data', '0004_auto_20201112_1311', '2020-11-12 07:25:35.538459'),
(69, 'Land_Data', '0002_auto_20201112_1330', '2020-11-12 07:30:17.622416'),
(70, 'Land_Data', '0003_auto_20201112_1333', '2020-11-12 07:33:29.561539'),
(71, 'Land_Data', '0004_auto_20201112_1336', '2020-11-12 07:36:27.458045'),
(72, 'Land_Data', '0002_auto_20201112_1356', '2020-11-12 07:56:35.702091'),
(73, 'Land_Data', '0002_auto_20201112_1834', '2020-11-12 12:34:40.892312'),
(74, 'Land_Data', '0002_auto_20201112_1954', '2020-11-12 13:54:38.252291'),
(75, 'Land_Data', '0002_land_data_project_id', '2020-11-12 15:41:01.315002'),
(76, 'Land_Data', '0003_auto_20201112_2143', '2020-11-12 15:43:31.746732'),
(77, 'Land_Data', '0004_remove_land_data_project_id', '2020-11-12 15:59:43.129196'),
(78, 'Land_Data', '0005_auto_20201113_2042', '2020-11-13 14:47:18.282016'),
(79, 'Land_Data', '0006_auto_20201113_2046', '2020-11-13 14:47:18.446592'),
(80, 'Land_Data', '0007_auto_20201113_2047', '2020-11-13 14:47:18.677751'),
(81, 'Land_Data', '0008_auto_20201113_2114', '2020-11-13 15:14:42.490521'),
(82, 'Land_Data', '0009_land_data_project_id', '2020-11-13 17:13:04.214093'),
(83, 'Land_Data', '0010_remove_land_data_project_id', '2020-11-13 18:01:35.891038'),
(84, 'Land_Data', '0011_auto_20201114_0004', '2020-11-13 18:04:12.901494'),
(85, 'Land_Data', '0012_auto_20201116_1717', '2020-11-16 11:18:03.200106'),
(86, 'Land_Data', '0013_auto_20201116_1909', '2020-11-16 13:11:10.720688'),
(87, 'Land_Data', '0014_auto_20201116_1918', '2020-11-16 13:18:35.752820'),
(88, 'Land_Data', '0015_remove_land_data_slug', '2020-11-16 13:23:37.631680'),
(89, 'Land_Data', '0016_auto_20201116_1925', '2020-11-16 13:25:10.767042'),
(90, 'Land_Data', '0002_land_data_slug', '2020-11-16 14:51:10.365701'),
(91, 'Land_Data', '0002_land_data_soil_type', '2020-11-18 06:03:15.268412'),
(92, 'Land_Data', '0003_auto_20201118_1219', '2020-11-18 06:19:59.144145'),
(93, 'Home', '0003_remove_extendedprofile_applied_for', '2020-11-18 18:33:57.461648'),
(94, 'Home', '0004_auto_20201119_0205', '2020-11-18 20:06:10.505945'),
(95, 'Land_Data', '0002_auto_20201119_0313', '2020-11-18 21:15:32.916124'),
(96, 'Land_Data', '0002_auto_20201119_0336', '2020-11-18 21:42:54.670497'),
(97, 'Land_Data', '0003_auto_20201119_0346', '2020-11-18 21:54:08.467226'),
(98, 'Land_Data', '0002_auto_20201119_0357', '2020-11-18 21:57:27.452750'),
(99, 'Land_Data', '0002_auto_20201119_1529', '2020-11-19 09:29:19.119979'),
(100, 'Land_Data', '0003_auto_20201119_1535', '2020-11-19 09:35:21.727873'),
(101, 'Land_Data', '0004_auto_20201119_1702', '2020-11-19 11:02:51.632443'),
(102, 'Land_Data', '0005_auto_20201119_1705', '2020-11-19 11:05:13.220280'),
(103, 'Land_Data', '0002_auto_20201119_1751', '2020-11-19 11:54:01.210807'),
(104, 'Land_Data', '0002_applied_data_owner_id', '2020-11-19 12:18:25.756702'),
(105, 'Land_Data', '0002_auto_20201120_1453', '2020-11-20 08:53:21.421880'),
(106, 'Land_Data', '0003_auto_20201120_1533', '2020-11-20 09:33:20.450352'),
(107, 'Land_Data', '0004_auto_20201120_1517', '2020-11-20 09:18:21.526224'),
(108, 'Land_Data', '0005_auto_20201120_1530', '2020-11-20 09:31:00.834521'),
(109, 'Land_Data', '0006_auto_20201120_1625', '2020-11-20 10:25:12.691709'),
(110, 'Land_Data', '0002_remove_land_data_id', '2020-11-22 22:28:05.615024'),
(111, 'Land_Data', '0003_land_data_id', '2020-11-22 22:28:49.734376'),
(112, 'Land_Data', '0004_auto_20201123_1632', '2020-11-23 10:33:15.209555'),
(113, 'Land_Data', '0005_auto_20201123_1638', '2020-11-23 10:38:17.231533'),
(114, 'Land_Data', '0006_payment_data', '2020-11-24 19:17:49.263129'),
(115, 'Land_Data', '0007_auto_20201125_0121', '2020-11-24 19:21:40.422760'),
(116, 'Land_Data', '0008_auto_20201125_0132', '2020-11-24 19:32:57.123146'),
(117, 'Land_Data', '0009_auto_20201125_0147', '2020-11-24 19:47:19.189881'),
(118, 'Land_Data', '0010_auto_20201125_0154', '2020-11-24 19:55:03.856050'),
(119, 'Land_Data', '0011_auto_20201125_0203', '2020-11-24 20:03:31.853809'),
(120, 'Land_Data', '0012_land_data_payment_status', '2020-11-24 20:19:12.710943'),
(121, 'Land_Data', '0013_auto_20201125_0230', '2020-11-24 20:30:21.742750'),
(122, 'Land_Data', '0014_auto_20201125_1422', '2020-11-25 08:23:16.187980'),
(123, 'Land_Data', '0015_payment_data_monthly_charge', '2020-11-25 08:27:51.955347'),
(124, 'Land_Data', '0016_auto_20201128_1215', '2020-11-28 06:15:23.965378'),
(125, 'Land_Data', '0017_auto_20201128_1309', '2020-11-28 07:09:54.793776'),
(126, 'Land_Data', '0018_auto_20201128_1327', '2020-11-28 07:27:08.814237'),
(127, 'Land_Data', '0019_auto_20201128_1339', '2020-11-28 07:55:31.644005'),
(128, 'Land_Data', '0020_applied_data_project_title', '2020-11-28 09:34:34.002700'),
(129, 'Land_Data', '0021_auto_20201128_1718', '2020-11-28 11:18:42.217650'),
(130, 'Land_Data', '0022_auto_20201128_1813', '2020-11-28 12:13:41.335502'),
(131, 'Land_Data', '0023_auto_20201128_1815', '2020-11-28 12:15:18.256956'),
(132, 'Land_Data', '0024_auto_20201129_0036', '2020-11-28 18:37:54.919674'),
(133, 'Land_Data', '0025_payment_data_agreement_status', '2020-11-29 11:58:18.506056'),
(134, 'Land_Data', '0026_verification_map_location', '2020-11-30 10:05:45.464808'),
(135, 'Land_Data', '0027_auto_20201130_1620', '2020-11-30 10:20:47.132970'),
(136, 'Land_Data', '0028_auto_20201130_1620', '2020-11-30 10:20:47.161961'),
(137, 'Land_Data', '0029_auto_20201130_1648', '2020-11-30 10:48:43.478308');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('027b33l9ih75yviemttd67trrhrya45x', '.eJxVjEEOwiAURO_C2hD4lBZcuu8ZCB8-UjWQlHZlvLs06UJ3k3lv5s2c37fs9karWyK7Mq3Z5bdEH55UDhIfvtwrD7Vs64L8UPhJG59rpNftdP8Osm-5r8FLQVGmMAWDhlLoQRkwVkiQYgRIFnsOiQahpTRoBx1HQDUBWZUU-3wBDg83pA:1kUxsu:itS1g3u7YIIXP17S0B5Cmu-eEISo23aFEQNax0OPQCs', '2020-11-03 20:05:28.089090'),
('031yr1ciwzqjghqajtfjgcijpdhsnv3e', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kVz1i:JL6oXalCiXF3eCaY0yzHlWkwnebgaiqkJsSu9fxsW1A', '2020-11-06 15:30:46.935313'),
('0docqj1c2tcmxynk3hinvu1ys0jpl6ai', 'e30:1kT0W8:8Kqho4m7KtdJhBNeaVFUpgc-_NGJOC3sYBYqYB-ouiw', '2020-10-29 10:29:52.326276'),
('0luonw2tkywyjbzvklkyb581ubt6iayi', 'e30:1kT0cN:_a5-hab3t8V_9hJaMgK50oPHwNWRXL6k_1QKw_PIr7Y', '2020-10-29 10:36:19.968460'),
('0rm291v203me5zbbs373u0rvjm5yiu9f', 'e30:1kfSn4:73dxkDk0SuQCSjZqYQP-ZxyehF0-4WjdDbPvIuoer50', '2020-12-02 19:06:50.501863'),
('1agjzc0i9qhmbh5i2gkb4f8uhjnvf4am', 'e30:1kT5P5:BtZdZOV1mkt3hlr-gUIwwA9Pwpkd530Mf_qb8_Tw5Tw', '2020-10-29 15:42:55.372180'),
('1m16a1bgmdzaamf64qd1glbjqubkjyxs', 'e30:1kRWES:6dJzIbcmv7q542a5U65CRyTBscisRK9CVdaHKz8B_qA', '2020-10-25 07:57:28.757430'),
('1wwcsdcv5je5z0n726y2w1s7psedeevt', 'e30:1kfSix:3Q8ooBqisxjWqUec7050Uk1RnUtw0bjbyNbBkRwmGYo', '2020-12-02 19:02:35.131181'),
('1ylx949i73mj02uzn4cbadaxn9vb4m2d', 'e30:1kT0fs:htRav31rRVSZ9hQrw35KqEQWLmA-qX3Q_HZIyjD6P0M', '2020-10-29 10:39:56.645488'),
('204cewstxq4ktwrmvd3bsbcoae10x93q', '.eJxVjMEOwiAQRP-FsyEtZEE8evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdFAR1-i0J01PqTviB9d50anWZJ9K7og_a9a2xvK6H-3dQsJdtjQnIW3Yoki34bByatGUAYhMMkBA4GVxiCyE7OiP5YUzWcg5jtqg-XzNmOPs:1kVfVm:PnHkvSp5sxgkN20tyjAZ7lHRoUXEa0bp2UV4XPVQYMI', '2020-11-05 18:40:30.443251'),
('2fbgk031cbzjpbdh0ytc0ha4vtpgwlca', 'e30:1kTQap:Qe2PH9m2uZPiKXJxhca3uHakJfcNaZqYGnPJj3hohTo', '2020-10-30 14:20:27.723231'),
('2hdximu7nkzn9a1q3fn2i1abcymj77ia', 'e30:1kZqgQ:-C3iKl3G5xy7OklFG8babAuG-nIPHuvSwMuF21ymf4M', '2020-11-17 07:24:46.233290'),
('2l0n7bn8lj2ig6sysjwqot0yvj80q4nt', 'e30:1kTJ1u:pbFJMEl-hPkjJgXD6RgLX0J9BA2xy9Wh15SOwOvYIw4', '2020-10-30 06:15:54.020003'),
('2uu2vbnylymf310q21kajk92ag3019df', 'e30:1kT14D:-sbVPdCyPC6W5OxDQEAkhAO_-uXc0AeAmyx9kvYOAiQ', '2020-10-29 11:05:05.077854'),
('34esbqjk6m72wfhsf9qts062i76ta1bt', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kVwQG:2ldv7GmSYYCHOxCBAzoUV0XKyh_p8FCcFumY36IxJV0', '2020-11-06 12:43:56.554862'),
('4a2ahu96tplkx1q24jbjw73lqteuu7u8', 'e30:1kTL5t:FV7FwXQw5w781wbvXjH-Ow94Y3saUtmTuwMJM7eIfRw', '2020-10-30 08:28:09.284152'),
('4cn9iebpu5spn5qbuuw465j9as45n7ey', 'e30:1kfTAM:dmR__DI87X5IPPj6MdCPF859OTeOLsy8NjVrq0Ut9kM', '2020-12-02 19:30:54.407672'),
('4gd2oyndnqer3ixpl0z1mb8tqwqdb2nk', 'e30:1kRWA3:7TVGGVn4vQ1Vf4021roMdrVI8rvKxBZcfRJcnzFS4so', '2020-10-25 07:52:55.570728'),
('4yqpn1g2eg7xrmvbqjdwr7i5gyttpe9i', 'e30:1kLXfD:iVnvbPFExDvCo_xYC5x3Zi3Cy__q-k-KsoBaLM4I5Co', '2020-10-08 20:16:23.389677'),
('5j6wds1ty80oebxr2iigjvqdh3vld4qe', 'e30:1kfTAh:ydwD422a9FScjL8SB52ihwBQ0fTe3CZXqaB1NNCREz8', '2020-12-02 19:31:15.811335'),
('5r6nyo14u86mkhlvc6j0ipbwhkcm7r7d', '.eJxVjDsOwjAQBe_iGlmsseOYkj5nsPYHDiBHipMKcXeIlALaNzPvZTKuS8lr0zmPYs4mRHP4HQn5oXUjcsd6myxPdZlHsptid9rsMIk-L7v7d1CwlW-NHpMqdOhPkISjBhBiRyreUbxyoC6iQp8AegF2EFCDHFliFERG8_4ANRo5dQ:1kZEih:nMgmdOmXOUb0B0gWwet_gvB3ldn_I3aDEWUJ_7CNok0', '2020-11-15 14:52:35.900018'),
('5w8jdsubcaobz1vtngh90owkc05id3if', '.eJxVjDsOwjAQBe_iGlmsseOYkj5nsPYHDiBHipMKcXeIlALaNzPvZTKuS8lr0zmPYs4mRHP4HQn5oXUjcsd6myxPdZlHsptid9rsMIk-L7v7d1CwlW-NHpMqdOhPkISjBhBiRyreUbxyoC6iQp8AegF2EFCDHFliFERG8_4ANRo5dQ:1kYwUZ:3wWePqNy1dYGWjTz6HAMNYrJIYh2P3lYuV_dL5nGVpY', '2020-11-14 19:24:47.723558'),
('6ay1wt3qd6ltu9rkaragzp488kcv8j0x', 'e30:1kTh1C:2wgqST1oxthUkf20hfw_FzgVQIkMmwXotLOgBkky7bI', '2020-10-31 07:52:46.221047'),
('6gyrj5o8uzq39x9jvsx91qxjuv2m2t53', '.eJxVjMsOwiAQRf-FtSED5enSvd9AYGCkaiAp7cr479qkC93ec859sRC3tYZtlCXMmZ2ZYKffLUV8lLaDfI_t1jn2ti5z4rvCDzr4tefyvBzu30GNo35rr4vwkhAlARF4R8qgU2i1SRkikYDsJ221A2lR-TIZoa0yyQmAoif2_gDhuDck:1kP8jM:KptwDqrJ2szwGgxJUN5KBj5L2uqHjK-mj5tB5ZadYws', '2020-10-18 18:27:32.309574'),
('6jm9y8jhbol59pcne4x3iht7qve2h57p', 'e30:1kVqaZ:q7EtTWcdqzgyg1ntF_AVOPgmdBzgOEHjX7Uet4c9di0', '2020-11-06 06:30:11.609433'),
('6r1zgm3ne2dqn5mg3jnnv6pkcubirxhu', '.eJxVjDsOwjAQRO_iGln-4I8o6TmDtV7v4gBypDipEHfHkVJAOW_ezFsk2Naatk5Lmoq4CK_E6RdmwCe1vSkPaPdZ4tzWZcpyV-TRdnmbC72uh_t3UKHXsbbaBQWsmdzZIHpPaJSyIxS2jtHqHAGCch5UMJl9iRQ4DkbF5RjF5wsDpThf:1kVxAf:YMCTYpU92jLeg-uddeRJCuz8X3U6OqjHqjvcpjHunPk', '2020-11-06 13:31:53.191200'),
('6wzbbqksuml51hkf982wrdo9xbraxea0', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kgXwp:IMgoS3Fewhk4G71NeXjcFXiSg2IY5As1F5OEo0orFd0', '2020-12-05 18:49:23.419867'),
('6x7yfajwwus7d13wk5ovxqomnqwisb6x', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kijbg:hhRB4aEuTpjnEyPWpsrxDdXYVfKbZ1U0q-Ukg76PA_4', '2020-12-11 19:40:36.599557'),
('6xm8me8g4tj9hd3tv7zwsekda78mtz8i', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kdy3H:Ctx6t8H0zO6Pem9uh-66DBrpe427Zy49Tb43q0k1LOI', '2020-11-28 16:05:23.007774'),
('70nm0566ms0nfebc2nheljxf3ie9k9pl', 'e30:1kLXHy:B1q1SX1iNqTopLUw1VVT10CjTceCih6wAY1-ul3fMi0', '2020-10-08 19:52:22.475738'),
('738htv5mal1aooipa67ak6pd0i9tx4de', '.eJxVjDsOwjAQBe_iGlnrb2xK-pzB8q4XHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0FXEW1onT74iZHtx2Uu653WZJc1uXCeWuyIN2Oc6Fn5fD_TuouddvrZyGoj0BeKtKxKy0CcCBMBpWBgFj8Z4GiITG5oDGKUJmO8BVBWLx_gDuwjft:1kQVgP:8ZWS2A_C3BmdaVwMQ2MqMoDcY28ZBiwiFaw8pXA0YH0', '2020-10-22 13:10:09.671774'),
('74dmoytvtwoj58ui4aqodry0a03zia0w', 'NjNkMDc5NDA0NTcyOGM4OTA1YWU1ZWFmNDQ2NzM5ZTllNDJmM2UyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTE1NGVmN2NjMDkxMmI0ZGMzZDBiMGNmYTVhYzY2M2Q0NGU4YTdjIn0=', '2020-09-23 16:19:49.579831'),
('7j3h4wua2y39jh7lr8l4mcv85k3yz87t', 'e30:1kfSMn:AIZl9RQCX5mgXHrAD-N6vDkff93GaQo5Q6yn_qUB7uY', '2020-12-02 18:39:41.390310'),
('7jure99ue0l8k4kz38jumausf9hhh1cd', '.eJxVjMsOwiAQRf-FtSED5enSvd9AYGCkaiAp7cr479qkC93ec859sRC3tYZtlCXMmZ2ZYKffLUV8lLaDfI_t1jn2ti5z4rvCDzr4tefyvBzu30GNo35rr4vwkhAlARF4R8qgU2i1SRkikYDsJ221A2lR-TIZoa0yyQmAoif2_gDhuDck:1kNbXE:QlPFskvPPdi64rOasJlaXZ9hy5Nr7aNSGj1uHW_p5Kw', '2020-10-14 12:48:40.642092'),
('7vdl6iq6bgb9ihyrlsxob3fgmyjnhxzj', 'e30:1kfT5Z:R4wV46kSHx7Kipgf9o8QnWRAHBq6NhlPmlZ8KfYT8zg', '2020-12-02 19:25:57.313709'),
('7y96qd7qdrctcybe88o9itq4dgvmmnbo', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1khz9m:CNdEZ3owYWIP0qv2erV7AxcIAA5qkCxuQHRaY4HikPM', '2020-12-09 18:04:42.763327'),
('84za5sgcc1ujcipv9psq4yatanxhmk0f', 'e30:1kfT65:y2R5oxzeIgCK2WGj8cPMttRFl7i02SqWrEYHW2HudV8', '2020-12-02 19:26:29.075579'),
('8jo9asy39lhvpkuua0a19f1rshiu870z', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kcjG2:0DltY3e39HFlhlOSIWU1gnRi3Zp3y79SMs_nxGLGW4c', '2020-11-25 06:05:26.243464'),
('8o3cao1w6sctyf2zgjgblebw57vadpt1', 'e30:1kRW1I:rn2aOglBJTdHZzEoYAvJZNTsso9lZfRyH9gbBhRdQro', '2020-10-25 07:43:52.730413'),
('8vqoxm7mrqghjbwl11uu3argxlpywqu8', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kbkc0:7yXOGkM7A-B4G5wUzH1KjxDX8PTxSzErpD9oyXsUFRw', '2020-11-22 13:20:04.980640'),
('8wrwpc1vi4jllhmy5yd5hssax7pksju9', 'e30:1kfSNK:2o1HyK7ufUhsBa_vmhVP3xjZzgNV_IKQaAQKokEYomU', '2020-12-02 18:40:14.589346'),
('94jvzdov2xes8xzbutsugxiglqf8w7zk', 'e30:1kZfXi:P1dI9UKq3DK3yEZC4h2poKq1mWqwKHR7Jmf_VlCkCrI', '2020-11-16 19:31:02.080693'),
('9a48z54alqpsxbq2bpe6xhfiy00dm3r5', 'e30:1kXclw:ud_xqv1IB1o3XlBKVnCtCauvZkQYWukNXGST6WBTYcs', '2020-11-11 04:09:16.531709'),
('9iyvhgd3geuqvygti7ik6yd6skbw6vft', 'e30:1kRWCh:gruxL-MCHljNN1M3NlVvEzJRUOlWsx5uLwVSzXdzyrA', '2020-10-25 07:55:39.779126'),
('9kilcxto16ls9uxnqzlkmegq58gp09a8', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kZfci:x2W4gAZNb_iE8fP07amBYMxmPJ6EdYKoShM0qxiKQNU', '2020-11-16 19:36:12.387426'),
('9ktx95d8fgex5kpn8ampzc95ybrkjodv', '.eJxVjMEOwiAQRP-FsyEghAWP3v0GssuCVA1NSntq_Hcl6UGPM-_N7CLitta49bzEicVFGBCn35IwPXMbhB_Y7rNMc1uXieRQ5EG7vM2cX9fD_Tuo2OtYa1N0IKsCOADDJbtgrAZjAzkC5PM3ZaaSOCmVPLpSwKL3HNAWH8T7AwGROFY:1kQU0S:vKo_a7EgruaaTHHFiRop0DN4--OBEUZ9t18ZefvDllI', '2020-10-22 11:22:44.212613'),
('9mv2jcvr9ksgir7cd3086c69vrzejg3k', '.eJxVjDsOwjAQBe_iGlnrb2xK-pzB8q4XHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0FXEW1onT74iZHtx2Uu653WZJc1uXCeWuyIN2Oc6Fn5fD_TuouddvrZyGoj0BeKtKxKy0CcCBMBpWBgFj8Z4GiITG5oDGKUJmO8BVBWLx_gDuwjft:1kRWKw:dQEUr96F175A151mc_EclTVjTNBPjNNIXhQ_qUYcdVE', '2020-10-25 08:04:10.270696'),
('9pzjg0rmmw8j335fhqfknplk5bhmfb7y', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1klSnS:PcKN6UN_wSfGdT5E1aMcYd2ZOAXBKFBbKheffV9zTFY', '2020-12-19 08:20:02.176065'),
('9tcgzozzz3ckkk5qpfudmlkhi2cc6hz4', 'e30:1kRVxB:FcJ-PXrkwgfOJiDsxHKouWdaOERvfFTlmLLU0UZ2j4g', '2020-10-25 07:39:37.496629'),
('a7knzms2zgt3shyfdiix51x9zq60apy5', '.eJxVjMEOwiAQRP-FsyEtZEE8evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdFAR1-i0J01PqTviB9d50anWZJ9K7og_a9a2xvK6H-3dQsJdtjQnIW3Yoki34bByatGUAYhMMkBA4GVxiCyE7OiP5YUzWcg5jtqg-XzNmOPs:1kddS2:o7GLCfvgIy5Qph-7820oQ_WZQe77QK-xge2cPTypA5o', '2020-11-27 18:05:34.139610'),
('aknpx5thaoed4drkd1xh4qfzz1aex0dn', 'e30:1kRW4O:WKtQL6f8Sp2VEepz8hHMnOizd7KIUMseNncCA7hloaA', '2020-10-25 07:47:04.878152'),
('an6it5raryuuoj4vnk46osclj7gqyeov', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kbJqL:aZSM8JDAAffQWKj5Bny_N5n-ex67PzJXzQF_ZNcLQ8A', '2020-11-21 08:45:05.306489'),
('axx9i86q4547a5ix5t7iniqbj5luy9e7', 'e30:1kfTQH:dlna7L75XPmjn8X80TghYWGKI3w4W2QQPNG-SPzOBjw', '2020-12-02 19:47:21.391477'),
('b6g5xvmz137iq73j0ymyu90qndrr45wu', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kmavq:9uw0XuKL-QBDu25Sf-Yalpc86FbszHMVOndgVCpRJMc', '2020-12-22 11:13:22.477542'),
('bb4cll4jmfj9vq2sqgj9hdtr02rr4yaa', 'e30:1kTQQk:og_GuLE8sGCUSIx0k0l4lVG6rlgAG3au3e3H6rnb7tI', '2020-10-30 14:10:02.317665'),
('bgrx1mbm08cxh3omzp5kqh0hinfgjkng', 'NjNkMDc5NDA0NTcyOGM4OTA1YWU1ZWFmNDQ2NzM5ZTllNDJmM2UyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTE1NGVmN2NjMDkxMmI0ZGMzZDBiMGNmYTVhYzY2M2Q0NGU4YTdjIn0=', '2020-09-23 09:16:24.357577'),
('bijcred8ezp5gb5ckyc21y3q6r6oxemh', 'e30:1kT5Pz:GgNAfBruqYjAoaAI6TH7ZSwcRq2FnxAWmHjG2F9xMRs', '2020-10-29 15:43:51.046038'),
('bqbfe9q8c5rc8b2igkywdt7022dslwqt', 'e30:1kfSyo:3AQ4zEmg53uU7c4UWVrPj-nPPEPHpDdw7BT06TuVqo8', '2020-12-02 19:18:58.286900'),
('btc2lw7rd6nxbj2fy08snnwp7axk89ep', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kXTiA:36Q96mNfPbTCzxfZ18AOeSuSu56NBNMe-cbePWhVZGc', '2020-11-10 18:28:46.259635'),
('btgag0jxnvslvca4acj1qgmqien7b8j1', '.eJxVjMsOwiAQRf-FtSED5enSvd9AYGCkaiAp7cr479qkC93ec859sRC3tYZtlCXMmZ2ZYKffLUV8lLaDfI_t1jn2ti5z4rvCDzr4tefyvBzu30GNo35rr4vwkhAlARF4R8qgU2i1SRkikYDsJ221A2lR-TIZoa0yyQmAoif2_gDhuDck:1kPQUI:AVEZinEC9vDQJ3901u6C3XoPwJHieW9xuogElwXP0HI', '2020-10-19 13:25:10.177588'),
('c527908hha4bajgfuiaskfe0q0tm4ilf', 'e30:1kRVxo:2PIJBrnXLrUW9Cb32PVYtwoJ_1893v-WI_vhWmEUkMI', '2020-10-25 07:40:16.812725'),
('c8wqstmmlea39u8n3mbc3v224p2e2ffj', 'e30:1kRW37:IUHlBDzCNnlY731w-JisOAXRoLJ8UAaOAXnB38Zsxns', '2020-10-25 07:45:45.768540'),
('cu0bx2qlbt42fg8tjf6qhwgc8kgcp7uz', 'e30:1kLXJQ:LvEktXajkFpYQKNqQp-u3CEqZPOb933wvNzD0iHWhg8', '2020-10-08 19:53:52.710581'),
('d5xwiy7rd32fbt394ljysrxyfg5xlk7a', '.eJxVjEEOwiAURO_C2hD4lBZcuu8ZCB8-UjWQlHZlvLs06UJ3k3lv5s2c37fs9karWyK7Mq3Z5bdEH55UDhIfvtwrD7Vs64L8UPhJG59rpNftdP8Osm-5r8FLQVGmMAWDhlLoQRkwVkiQYgRIFnsOiQahpTRoBx1HQDUBWZUU-3wBDg83pA:1kWZ0K:SsJW5x8Y8u312Wbvx--MdLosrCawdnOMwfehJLTNh54', '2020-11-08 05:55:44.370828'),
('d7zzo5dt6q22olhpcylp59tc1jf16m2x', 'e30:1kfSY1:Dqlg-Y16RHg4qlPC4ZiSpvtII9Yxx1dDjpDE_86Anbc', '2020-12-02 18:51:17.886034'),
('de7am11m6kvun7hlt37n6u7k81gz206j', 'e30:1kfSkn:diHQleSP-kQ_gwgx9EvqulcU0KB4tUo6xt6lqCOax5U', '2020-12-02 19:04:29.121844'),
('dhwwbevkrijjl636136chwmvuwxzqnwr', '.eJxVjDsOwjAQRO_iGln-4I8o6TmDtV7v4gBypDipEHfHkVJAOW_ezFsk2Naatk5Lmoq4CK_E6RdmwCe1vSkPaPdZ4tzWZcpyV-TRdnmbC72uh_t3UKHXsbbaBQWsmdzZIHpPaJSyIxS2jtHqHAGCch5UMJl9iRQ4DkbF5RjF5wsDpThf:1kg1sV:QZBh5nTvEaBkABkJc8WQDQsDu-6S2PRRk4RPDCqiww4', '2020-12-04 08:34:47.389943'),
('dilrla4164x27jqfp53y7eacju13fo35', 'e30:1kVfFZ:1qJNFy0WVeGpGqI5ezCNY7i8pEwb9eLR2aT3sVYJ81s', '2020-11-05 18:23:45.597575'),
('do4i75aj3gq726wmqo4hecha8tte6bt3', 'e30:1kZqdi:cRkJlrOoBNIJ30BEhvxF2oqWEutAo-GfK_IxaAKI1rU', '2020-11-17 07:21:58.918862'),
('dt98vebzwwfxc4t03lp2gsnmnkd3bh79', 'e30:1kfSTO:IDy6rYoZrT0ItEjLEWGKP6-n3EzD3YwxigrAKWFX5tg', '2020-12-02 18:46:30.578153'),
('du2ci5xpi9vp0d2m78lstbevsml4h0fy', 'e30:1kfTV1:3BnvJPnzn4b-NSNqaSdbZkRTLXbR4iWhsJED6w_W5y4', '2020-12-02 19:52:15.447039'),
('dzehnr297q2a3avqmtioy0r04ns4agsu', '.eJxVjEEOwiAURO_C2hD4lBZcuu8ZCB8-UjWQlHZlvLs06UJ3k3lv5s2c37fs9karWyK7Mq3Z5bdEH55UDhIfvtwrD7Vs64L8UPhJG59rpNftdP8Osm-5r8FLQVGmMAWDhlLoQRkwVkiQYgRIFnsOiQahpTRoBx1HQDUBWZUU-3wBDg83pA:1kfqMt:msTilEqCINDiZQfP-20_7k3gzWFCQFgbkF0ZsS1OCGs', '2020-12-03 20:17:23.858347'),
('e0e310arnky8wlgwvipjyvyh0oe65v8i', 'e30:1kQESy:cwfZYzrRswhmo6eM5srYZMIc_75cScaA0sPmUtUVVko', '2020-10-21 18:47:08.385271'),
('e226vh2v8fn177tqwb1h3ramc62iwwhe', 'e30:1kfTRo:nTuOgT34Bph3-LVEOEUEeZypzw2L6UbjYwWabjeXBfY', '2020-12-02 19:48:56.636973'),
('e47mjaj8gtix01mphcjeh6z2mal38iiw', 'e30:1kT15e:jybYNBoaouOWUrJWwvebCvGNEjHMnWwLMzwUcuFjEAs', '2020-10-29 11:06:34.214892'),
('e682urf2mkn8wqiy3n1w676ibiu5rqnd', '.eJxVjDsOwyAQRO9CHSHAfEzK9D4D2oUlOImwZOwqyt2DJRdJOfPezJsF2LcS9kZrmBO7MjOwy2-JEJ9UD5IeUO8Lj0vd1hn5ofCTNj4tiV630_07KNBKX1th3Qga3RiVdhlSDx7BGj-gcB4USQUy20xZKZNikqKbTlC2UqLQ7PMFBPw3_g:1kTgxN:r6xp6y0NlKv7-44LxYTOvKj7DdGoQthPO8HBagUpV6w', '2020-10-31 07:48:49.136399'),
('e7qr4j1fb554aargrzy4l9fl8mo1qsuw', 'e30:1kVf28:mawjEGhuf4GjPu-GlIU0tkudxtww3ToZFncLkzMNlYE', '2020-11-05 18:09:52.043257'),
('ecnuyhioko3wedhp9om095kkepp9o4i9', 'e30:1kfTGd:-kfW6UHkrJANxYe17amF3WrYAZ2Azt1UsWthSTP7gHs', '2020-12-02 19:37:23.637488'),
('edinx6dp5gk8jf5gmh0wtufmyo80vcj4', '.eJxVjEEOwiAURO_C2hD4lBZcuu8ZCB8-UjWQlHZlvLs06UJ3k3lv5s2c37fs9karWyK7Mq3Z5bdEH55UDhIfvtwrD7Vs64L8UPhJG59rpNftdP8Osm-5r8FLQVGmMAWDhlLoQRkwVkiQYgRIFnsOiQahpTRoBx1HQDUBWZUU-3wBDg83pA:1kdEql:1t1V9sHTSuiyvYBUG9U2miEHxmHc23ZSSxFufSmvnYA', '2020-11-26 15:49:27.991748'),
('f95y8lwfdfd3698ulu1h3qfa1fqc5wh4', 'e30:1kTJ1c:zJy4oC28rqMsD46s0X2fZ2awNnAHFJau7WHNwxQWCKg', '2020-10-30 06:15:36.264262'),
('frittj98mm8z3np0bqgptno3vax18bpv', 'e30:1kTL5L:N9733LmPyn3XrbEWIDM5tXAEvyrcoBWSZGJeQ_tb_5A', '2020-10-30 08:27:35.981177'),
('fu2wlozh3qm9oqabf799jrudgtjzu2km', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kcX8X:gEr2DwwinooCnXUgFbrQ6vm1m46Ca2fZQ5yEaIvAv4c', '2020-11-24 17:08:53.773494'),
('gkh7nikr8632m8t05i6bv8djeqoxg7io', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kf78T:mc_q2eSs6NdeCQDBz2TuGE8ucV9H-IuTzFLsNLOmZis', '2020-12-01 19:59:29.292662'),
('gllyv58gdhfqs6wimcsjf0yemwjelryk', 'e30:1kfTJH:mEFIxICr_y4wJXAOM0wmBboVRIp6IoBD4fxIOyGjjIY', '2020-12-02 19:40:07.240996'),
('gpgtj6bl237if72omiv9q3snni6d101u', 'e30:1kfTFW:7b7DTZa27A7wMScsGs5JyQ3f9Cta0Hb3NW5c0fDYrlw', '2020-12-02 19:36:14.273987'),
('gqceujry3ka1f8zjt1mebzd2z930way7', 'e30:1kZfXD:yVeiI7ZvDmDjVQlvgi5W2-xMe-JbPYXvRjwoj_XQTAI', '2020-11-16 19:30:31.930934'),
('hm90551bn4ghujwpsv9b9jftdnoik0t8', 'e30:1kfSZb:d9vLrbMD6wTo9eaWzAmfNcKcDGTTkSN72vyUCxWurO4', '2020-12-02 18:52:55.446292'),
('hqrz4djvge4sr22j4hsfz6kavuf5nmjr', 'e30:1kfSuK:8nTDZDUVOpVOCoCC3PPCbM2owEFiOFg2EFxd7u0o7us', '2020-12-02 19:14:20.663349'),
('hxanhmyff1f46zy2phuu4n41au3ch2ha', 'e30:1kTMnE:aVFNi9lvg_urDMAG38MfEOETmv4TYO-5lizR9ai0RB4', '2020-10-30 10:17:00.544083'),
('i71gsq5u47nzz7m144nwcxnoeis9cpgz', 'e30:1kXcaJ:fiE-1zOP9E-h8b8RVm3jLKwGBUmyjdhny3hwdeSAEmM', '2020-11-11 03:57:15.839419'),
('ivu2bbnu0bft7v95xz34d3ess4yuy5yc', '.eJxVjDsOwjAQRO_iGln-4I8o6TmDtV7v4gBypDipEHfHkVJAOW_ezFsk2Naatk5Lmoq4CK_E6RdmwCe1vSkPaPdZ4tzWZcpyV-TRdnmbC72uh_t3UKHXsbbaBQWsmdzZIHpPaJSyIxS2jtHqHAGCch5UMJl9iRQ4DkbF5RjF5wsDpThf:1keCau:ddYi_6f7vHRpqhQF3KnNRP79ZpklORLsMBvrEN8APRY', '2020-11-29 07:37:04.498300'),
('ixe8soonkuj6zu4dmxpyrk87k9qgufv6', '.eJxVjDsOwjAQRO_iGln-4I8o6TmDtV7v4gBypDipEHfHkVJAOW_ezFsk2Naatk5Lmoq4CK_E6RdmwCe1vSkPaPdZ4tzWZcpyV-TRdnmbC72uh_t3UKHXsbbaBQWsmdzZIHpPaJSyIxS2jtHqHAGCch5UMJl9iRQ4DkbF5RjF5wsDpThf:1kg2kv:lR7Ugeuf1chS_SNPMlmnlgiJmUQVrOgyh-tcS3HdtaQ', '2020-12-04 09:31:01.333207'),
('j6lwhkqy95yx4gpqhb10sr4pkif739m0', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1keOLU:G49dXoQtMaLTvkzFPCQRg26sGmW2tWAQR_HdlfU3Vmk', '2020-11-29 20:09:56.330767'),
('jb9hwr0xcgz6iv1t1qi55no8500bjdhz', 'e30:1kTQF0:I-DJdbHRqAPMOTHJ44oAuJqeYWOKFvwOR-DAyVP1F0c', '2020-10-30 13:57:54.784398'),
('jen83zf3nespfzjx309b4u2ip8hsak2e', 'e30:1kT5Rs:-ECRh2RMMEkNzmlzmFF53pBRLraO0y8gAhaShJwximM', '2020-10-29 15:45:48.396352'),
('jn48t4ogfywt5pwdtb392hbfs6b397du', '.eJxVjDsOwjAQRO_iGln-4I8o6TmDtV7v4gBypDipEHfHkVJAOW_ezFsk2Naatk5Lmoq4CK_E6RdmwCe1vSkPaPdZ4tzWZcpyV-TRdnmbC72uh_t3UKHXsbbaBQWsmdzZIHpPaJSyIxS2jtHqHAGCch5UMJl9iRQ4DkbF5RjF5wsDpThf:1kgO6n:PO_I8Ifr5ebTg1QyeEfgC-FZa6ARXewdAop68XfhE_o', '2020-12-05 08:19:01.041390'),
('kh0bhvozb826b32qsscbbrvgqzsfr1aw', 'e30:1kRWBu:D-av3Yh1USwq7ztTT5IDdC08b31dTq1CWRElRseBIgQ', '2020-10-25 07:54:50.482489'),
('ktzc37dowfrduph0t0nxkn6eft1g5ast', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kawy1:XMHaJaOQINzhO32ihFQDdKgn2bzaU2rJUsjmmqhOt2c', '2020-11-20 08:19:29.563190'),
('laothaeywx18pxz951eohpuy1msdg9j2', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kfjn2:jhBIChcys3g8WpC3U54gxOybZqtmsK-Vctm3f4lMHKM', '2020-12-03 13:15:56.864326'),
('lzggugax4ts0ok0tyiecz1m1zpmwnzob', 'e30:1kfSpK:nId1cVL3uxTU7MNY9A9DpgrLtv4M0_ynHx9M_upEMtM', '2020-12-02 19:09:10.390956'),
('m12coap18gyjpqf1rpm6q2zo9omssrlq', 'e30:1kfTVU:tD1_AxVZ39WBVAfA7pKohNEgi9JzdDFMtMA8Pa-_ks0', '2020-12-02 19:52:44.487214'),
('mbwu6wrzbsju70lvniy1a4spxp3hqamv', 'e30:1kfSnQ:rgrpkWjZCeLlhrm5L7SUcispPLH62sEMEY_jPayhAok', '2020-12-02 19:07:12.952823'),
('mfj0gfb9p5xsaiv1se8e7014pqyt08yu', 'e30:1kfSlz:suFl1INPdXi04tThrrsOKdr6c8D1EBfBYqlEWBDI9QI', '2020-12-02 19:05:43.202917'),
('mi64wjytt75pho8vt34a5bvqxmi0gx4c', 'e30:1kZqeX:KPgd1YPNtBTJRDFJTDOLDh8w9xBYr2F--EIKnDl7GKM', '2020-11-17 07:22:49.602921'),
('mja0u7b13nh708ap6b1icf8ci4su9rb0', 'e30:1kLXST:MyUlHT-lcXHS96JabHSdi_BawDGk1AGSc7A1Zcxx6zU', '2020-10-08 20:03:13.632970'),
('mlnya7dgdsdffivd047j4htgnw9wdh5b', 'e30:1kT5X0:MBYPh58dzsydLpCXRpVPadYbM_jqrB7o1XUcGoo5OzE', '2020-10-29 15:51:06.315831'),
('mwg4jye5vymfq6u689qtzgnz8rhbh8ss', 'e30:1kT5FQ:UnxpMYdoOo1lc0vV0MwVHOzy06NPxvT79WH9eFjofKY', '2020-10-29 15:32:56.170560'),
('n0p8iptswnyp1wt5dj6gdiv2xj8txhon', 'e30:1kfTGF:iSz167Ark_75Yv2wvYRvZgkODQEiFTuh4SFV_0kZjnw', '2020-12-02 19:36:59.576245'),
('oqqmnpcw4kuvwgnficdwj7s1jg2xdhvz', 'e30:1kfSov:96g7xqJvjDPfD41x-9Ueg7izCJo1t3dUXziCwDawNYQ', '2020-12-02 19:08:45.879805'),
('ouj8p53uwh92qafa0svq0wukj53tfpst', '.eJxVjEEOwiAURO_C2hD4lBZcuu8ZCB8-UjWQlHZlvLs06UJ3k3lv5s2c37fs9karWyK7Mq3Z5bdEH55UDhIfvtwrD7Vs64L8UPhJG59rpNftdP8Osm-5r8FLQVGmMAWDhlLoQRkwVkiQYgRIFnsOiQahpTRoBx1HQDUBWZUU-3wBDg83pA:1kZqkt:ylnvjBY_4JLBHRIe10cVzK_cY72jbDPPFpu-U2iHDiQ', '2020-11-17 07:29:23.423646'),
('oxgto4xhvhfsdht8551pdw2wqm64c1ux', 'e30:1kfT0l:wP07YETty-1UwfxwTSsTzfeVHaJdTFJo9l2MnTw8kWo', '2020-12-02 19:20:59.433968'),
('oz6n6yju74gn4nc674ratad1uwe1hdl9', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kd6GO:7pz5eCqWljrU2bm-lKclEEv7qIP52XIQYvob1Sh10D8', '2020-11-26 06:39:20.703370'),
('p9qtpw5ndoegp5u9uhorelvs005ujod7', '.eJxVjDsOwjAQRO_iGln-4I8o6TmDtV7v4gBypDipEHfHkVJAOW_ezFsk2Naatk5Lmoq4CK_E6RdmwCe1vSkPaPdZ4tzWZcpyV-TRdnmbC72uh_t3UKHXsbbaBQWsmdzZIHpPaJSyIxS2jtHqHAGCch5UMJl9iRQ4DkbF5RjF5wsDpThf:1kVupy:sFa68D7DR7_ZPvmxATt79_MELIjrQbtl2MRJDz2MTXs', '2020-11-06 11:02:22.865982'),
('phx8g2fwdi1cfd25lhf466y904ylkkll', 'e30:1kT13X:6HNF74oJ47dqN32ZutXeqYcfjHApydgwskFgUudZOIQ', '2020-10-29 11:04:23.448866'),
('pivjjb5i6z6cyn52ssrzk6f9398wqi7o', '.eJxVjDsOwjAQBe_iGlmsseOYkj5nsPYHDiBHipMKcXeIlALaNzPvZTKuS8lr0zmPYs4mRHP4HQn5oXUjcsd6myxPdZlHsptid9rsMIk-L7v7d1CwlW-NHpMqdOhPkISjBhBiRyreUbxyoC6iQp8AegF2EFCDHFliFERG8_4ANRo5dQ:1kXm67:yk4w4yCsgbFOLrX9NOn1Kpg8Tyf-EOQvw2HXz5ZJnLQ', '2020-11-11 14:06:43.887979'),
('py3wxlxrw9v5c2fshcpnhszv8l36kmxi', 'e30:1kbNmN:GoyBHqQIFYn7JpBOAaE9GESqWu2ToaXhUavKtrupdUo', '2020-11-21 12:57:15.502010'),
('q3897n4h1jki4lyuqbi1g5eezzjn7swz', 'e30:1kRW8U:ZyvQUmNLc13HJza4JQN71f492zl0ljaHdoqOgaO4a1k', '2020-10-25 07:51:18.747551'),
('qmml886ui1etal510ehyngtg9cvx00vt', 'e30:1kTPm5:obHqDQ0l3qRFk64vi933yoRy0tbve9yR2h21eMnD2EU', '2020-10-30 13:28:01.418770'),
('rcm9pncc12roxmulpeeywabncl7jfc1o', 'e30:1kfddr:401An81pS2Dna4Xl2Au3wMu9scUJORyLrLBTUJ8xV98', '2020-12-03 06:42:03.629664'),
('rlb13w15nsj0nod62gx6dvrqh5nxcn1d', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kgySA:NkaYKdjhMKjzICEXXs6bLf_rj5g7rN0kje2_xATH-rM', '2020-12-06 23:07:30.231419'),
('rt42q0zo0stwrp2yds9y54gnxih9bsgs', 'e30:1kT5Qy:s-0IC16ZXpYdhY_F-GWmCjxEcwUZDMheujy5OnX48Fw', '2020-10-29 15:44:52.460616'),
('rtllxtlyeoukj71p6fjd65bj007ha1zp', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kcvsU:P09uz7HJDr63-qp3KE_oXm4swbgjNJFBXaHTAi6YUFo', '2020-11-25 19:33:58.637904'),
('rwj8mivf87iyk01eywrnoo7txu9b881h', 'e30:1kfTCh:uCFkxCL6us2jK41cahVsnxs9zGsZWjx5MMd0MgZGfJw', '2020-12-02 19:33:19.803467'),
('srj5xm3sl85hfwu7ccam8hl4auqmmfa0', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kbNp9:5h0gn3xgjZnxVYeENbMhUUuZaE82KJJCCTc0m_HTmWM', '2020-11-21 13:00:07.519652'),
('stxgzb2yqnl7cqweeikgnl3enxukfbls', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1khhR4:2xzcMFpB8stFpLYvYCiqh5jivxXA3ycppu11IWg-0KY', '2020-12-08 23:09:22.030608'),
('t5v6a3xrly1pym1e0qhubx335egi45o4', 'e30:1kLXGA:BEI8cUJ3ygDnED8cSefJMdW2xq5LdVFFzKXf2R9e0sk', '2020-10-08 19:50:30.169523'),
('t7gv6srz988ox25wteq77cufmxl7ddg1', '.eJxVjEEOgjAQRe_StWnoQKcdl-49AxnaGYsaSCisjHdXEha6_e-9_zI9b2vptypLP2ZzNtia0-84cHrItJN85-k22zRP6zIOdlfsQau9zlmel8P9Oyhcy7d2jbL4mLwopQ5dFu8cCIXUASgTKLUSaEBVQmgUIgVAjIweANtg3h8PGDdv:1kj6gx:-h0uC1H-zP9x8lyuyiGpg5pB4iruYgEvrffn_AdagHE', '2020-12-12 20:19:35.279579'),
('u74443qxwrkhvma3bnas1hyvluwm8v65', 'e30:1kT15J:DysnRw4DPp_8cc_hLjQm9zcWhywA7fg9TSlTlRxLFZ0', '2020-10-29 11:06:13.882617'),
('u7mxytoyv4p85x390kb55s8lsl2yw3sf', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kX2Ig:3vOpR4IyKZGU_r9x-D5rcKu9PnFx8OrHw5fmuOw2X3Q', '2020-11-09 13:12:38.136364'),
('ucjov4j91bpowy12bt9tenb01m3eqpeq', 'e30:1kfT81:2XLiQIXzs8xDmkeXi7SIA-kyHBbYBzOQ5TQt1ByGMKs', '2020-12-02 19:28:29.926734'),
('unp4wat07fu4d6dwlk4uf0369hwy7ne6', '.eJxVjEEOwiAURO_C2hD4lBZcuu8ZCB8-UjWQlHZlvLs06UJ3k3lv5s2c37fs9karWyK7Mq3Z5bdEH55UDhIfvtwrD7Vs64L8UPhJG59rpNftdP8Osm-5r8FLQVGmMAWDhlLoQRkwVkiQYgRIFnsOiQahpTRoBx1HQDUBWZUU-3wBDg83pA:1keGg9:9a5CekmvN8CNNVBFnf0FQpYHaN6eAz8ltfH9Ujbxk_s', '2020-11-29 11:58:45.425582'),
('vrrrncvdn7nqzac0kgooi0jhubgmixgy', 'e30:1kRW22:3Jwi3PPyZPASCw7LRc_zpwoWNp01P5bl8VqOw9nDqlw', '2020-10-25 07:44:38.552746'),
('w0ms3rmbgwu592hy0g22iuow0laivxbn', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1keuif:cr92OtV1Ug3Xt1d5QFaj3Wde0fDkcKpvnFe18BsVCXs', '2020-12-01 06:44:01.871396'),
('w3ixewp3jhcljbyq4yldhdfcx40bovbz', 'e30:1kLXBR:R5IC-tGEmbxRpnjL-aN38SNINS1IV2c5BPhNiQjJoG0', '2020-10-08 19:45:37.792113'),
('wd0tfnlhigs02qydpjk84peo4oy68vnq', 'e30:1kfSQa:5F4zYNHt4UE0jLpTMLtiMNqTVKSw7OJZDuq6KCXrcF4', '2020-12-02 18:43:36.135439'),
('x3vslvgdw05a1kf4pg2fgw0aj23w3xb8', 'e30:1kfT1J:vBOrA2sQYOE-QZf2ZaMZxagowDLCgdJE6zpzDrwlOpk', '2020-12-02 19:21:33.410454'),
('xcrjm4x5d2vym3gj8yhnf1a7w8gn9dln', 'e30:1kT541:KZB0tyqAEykOVrLuih7L0VYFnDcPCMgs0V_pvRs5X8Q', '2020-10-29 15:21:09.110610'),
('xns0zrga1bwuvpe952l6v8dzhdtj00gw', 'e30:1kTLBp:Dx81NxNCzksuSr7dJP5sIEZOip3XKRHtSVoAuAHskSM', '2020-10-30 08:34:17.706325'),
('xq95bm4kihynsqwvj59r25j866q5ubpy', '.eJxVjEEOwiAQRe_C2hBEyhSX7j0DGWYGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWg1OH3zEhPaRuhO9Yb01Tq8s8Jb0peqddXxvL87K7fwcFe_nWjsAQ0DHLySGnEdi6gCnQkFmQfeCQjc9iTeYRiByCTZwZPAs48ur9AUJ6OdA:1kbNLo:eLnEEdvR5NJpUlELnQ2oEdz9E5cdl0KMkPv4mXBn_4M', '2020-11-21 12:29:48.175637'),
('xtohapj20qkzubikqsebg4n4kwh31ckm', 'e30:1kfTPi:ug9pOSmkHjG_X7MY6_-D12zC3dhzRAQGtRsr-LskwUM', '2020-12-02 19:46:46.592276'),
('xtr91sg6zlsu9h6dv3w99vxmex3moe54', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kehUv:O9hXbegJClzA9XLcag3_St3t7iHQwQpMlYo2rzYs2FI', '2020-11-30 16:36:57.790020'),
('y0f7524xbn8jti57htfx3xs48xzhscxj', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1kUaR6:MTvDqH5GDnrJqxxphJ81wCgk35OLO2MuZ5VmebNUgew', '2020-11-02 19:03:12.647154'),
('y8qiadrw5pjrq9zyes5pb7u2effcg24i', 'e30:1kRWJ3:Dntw6-dcsOZN8bUJVXrzQrvhwBN3GDgu4WvTeSZeGQU', '2020-10-25 08:02:13.820418'),
('yf0p5mpi2iqoeks9njn5slqtk7s50bwf', '.eJxVjMsOwiAQRf-FtSEO5VFcuu83EGYGpGogKe3K-O_apAvd3nPOfYkQt7WEraclzCwuwlhx-h0x0iPVnfA91luT1Oq6zCh3RR60y6lxel4P9--gxF6-dQK22eezQ0VKq5EMacBsE7OBnAdQDkHphEhx9F6DZzI4DMZ644CseH8AIXU4QA:1khIdQ:ixxkdx9M5v9pDA5vVArOcnqDgXXKJSwQrn7W9_XNv3U', '2020-12-07 20:40:28.933119'),
('yfunggqqmyhmal2fgjgn3g74bpktxg5w', 'e30:1kfSjs:kmcT9x7YUF2jzz0ECCyLCJuizoCFk9GEMA_5f7fpCNM', '2020-12-02 19:03:32.035313'),
('yhbicrn3sfonjosqlyss1wg9pqgfeva3', 'e30:1kfSiF:0qBEgl0cO2H_Akj0N8lYL0ZQRgXzJJj8IAppLSEMmiQ', '2020-12-02 19:01:51.371771'),
('yz8wys3sjvf31ucyfcrqzawixy8pgtix', 'e30:1kfSYb:v1NPI0DUFlnWlYEm554tRw5FPlBAINYq3JJH-2yvqBg', '2020-12-02 18:51:53.872775'),
('z78jci8uu9j51vl9kjlrjzzwjuywnn49', 'e30:1kXcj8:vf1SJ9xm3Cy-XksDHTLfJDWmkRFjltFBB09QyMSBJYU', '2020-11-11 04:06:22.440410'),
('z83254dc50grthd7fpj3hzlx7phdiih2', 'e30:1kT14s:ebkEY_riwK4Yy0AvwgzbVjcKiYSGARJEjkcw3qKdIHc', '2020-10-29 11:05:46.066210'),
('z9zyivr7atyrlfzeu0dv00zns2r8bwpd', '.eJxVjMEOwiAQRP-FsyEghAWP3v0GssuCVA1NSntq_Hcl6UGPM-_N7CLitta49bzEicVFGBCn35IwPXMbhB_Y7rNMc1uXieRQ5EG7vM2cX9fD_Tuo2OtYa1N0IKsCOADDJbtgrAZjAzkC5PM3ZaaSOCmVPLpSwKL3HNAWH8T7AwGROFY:1kQEiy:efAEEexVH67Fq7L0X_1OsJNUo9Bklalqk9uYN2vYIrM', '2020-10-21 19:03:40.096004'),
('zdbrat5c6aandlb54jcxzzn6t0uytslp', 'e30:1kTQH3:Ntai9ghxPfkXe8ld3UvBk1fFTcXQ98LU4H1VIF-Nn4Y', '2020-10-30 14:00:01.354215'),
('ziks1072nawbqsvh3qxkr0gybrl7yxz3', 'e30:1kfSgn:EVvlNbagfaPoc-pOLheJFhsw-PGSb51DWzZKbnA-xoI', '2020-12-02 19:00:21.441706');

-- --------------------------------------------------------

--
-- Table structure for table `home_extendedprofile`
--

CREATE TABLE `home_extendedprofile` (
  `nid` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_extendedprofile`
--

INSERT INTO `home_extendedprofile` (`nid`, `user_id`, `full_name`, `phone_num`, `img`) VALUES
('1', 1, 'Forhad (admin)', '01879978907', 'Profile_pic/2_3xBjWP2.jpg'),
('1345678910111', 56, 'Forhad Hossain  (admin)', '01879978907', 'Profile_pic/25117----f_1.jpg'),
('4646566465665', 57, 'test', '01864564656', 'Profile_pic/avatar5.png'),
('4649894654698', 63, 'Forhad', '01235646546', 'Profile_pic/avatar5.png'),
('6465465544466', 67, 'Fahmida', '01856554665', 'Profile_pic/avatar2_jDHO68O.png'),
('8545645456465', 54, 'Forhad', '01654646565', 'Profile_pic/avatar5.png'),
('9878985646979', 55, 'Forhad', '01549849844', 'Profile_pic/images_2.jpeg'),
('9878998445465', 60, 'Doc', '01845646546', 'Profile_pic/avatar5.png');

-- --------------------------------------------------------

--
-- Table structure for table `land_data_applied_data`
--

CREATE TABLE `land_data_applied_data` (
  `id` int(11) NOT NULL,
  `project_id_id` int(11) NOT NULL,
  `monthly_charge` varchar(250) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `project_title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_data_applied_data`
--

INSERT INTO `land_data_applied_data` (`id`, `project_id_id`, `monthly_charge`, `user`, `project_title`) VALUES
(11, 21, '15000', '54', 'Land For Rice Farming'),
(12, 24, '2000', '54', 'Land Available'),
(13, 21, '15000', '54', 'Land For Rice Farming'),
(14, 21, '15000', '54', 'Land For Rice Farming');

-- --------------------------------------------------------

--
-- Table structure for table `land_data_category`
--

CREATE TABLE `land_data_category` (
  `id` int(11) NOT NULL,
  `name` varchar(74) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_data_category`
--

INSERT INTO `land_data_category` (`id`, `name`) VALUES
(0, 'Cow Farming'),
(0, 'Farm'),
(0, 'Fisheries'),
(0, 'Goat Farming'),
(0, 'Poultry'),
(0, 'Rice Farming'),
(0, 'Vegetables Farming');

-- --------------------------------------------------------

--
-- Table structure for table `land_data_land_data`
--

CREATE TABLE `land_data_land_data` (
  `title` varchar(250) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `published` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `size` varchar(250) DEFAULT NULL,
  `location` varchar(15) DEFAULT NULL,
  `land_img` varchar(100) DEFAULT NULL,
  `dolil_img` varchar(100) DEFAULT NULL,
  `khotian_img` varchar(100) DEFAULT NULL,
  `allow_status` tinyint(1) DEFAULT NULL,
  `category_id` varchar(74) NOT NULL,
  `area` varchar(11) DEFAULT NULL,
  `monthly_charge` varchar(11) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `soil_type` varchar(250) DEFAULT NULL,
  `detail_addr` varchar(250) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `map_latitude` varchar(250) DEFAULT NULL,
  `map_longitude` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_data_land_data`
--

INSERT INTO `land_data_land_data` (`title`, `project_id`, `published`, `created`, `updated`, `size`, `location`, `land_img`, `dolil_img`, `khotian_img`, `allow_status`, `category_id`, `area`, `monthly_charge`, `slug`, `soil_type`, `detail_addr`, `id`, `month`, `year`, `map_latitude`, `map_longitude`) VALUES
('Land For Rice Farming', 21, '2020-11-28 14:04:15.000000', '2020-11-28 14:04:15.007001', '2020-11-28 14:41:01.646221', '50000', 'Chattagram', 'Land_pic/1532100350_8YbiLQd.jpg', 'Land_dolil_pic/01_cdgUarQ.jpg', 'Land_khotian_pic/Khatian-Bangladesh_yj8Ks4H.jpg', 1, 'Rice-Farming', '50000', '15000', 'land-for-rice-farming', 'Floodplain_soil', 'hamzar bari ,chittagong', 55, 5, 1, '22.372216', '91.759430'),
('Land for Farming', 22, '2020-11-28 14:16:11.000000', '2020-11-28 14:16:11.736826', '2020-11-28 14:40:52.220420', '5000', 'Khulna', 'Land_pic/IMG_1145_EjRsM6s.JPG', 'Land_dolil_pic/01_U3ESEs5.jpg', 'Land_khotian_pic/Khatian-Bangladesh_d7hdP9e.jpg', 1, 'Rice-Farming,Goat-Farming', '5000', '2000', 'land-for-farming', 'Clayey_Soil', 'Boiradash para, Khulna', 55, 6, 2, '22.848740', '89.544502'),
('Land For Poultry farming', 23, '2020-11-28 14:20:46.000000', '2020-11-28 14:20:46.588188', '2020-11-28 14:41:16.527059', '10000', 'Dhaka', 'Land_pic/IMG_1145_ATyuTxA.JPG', 'Land_dolil_pic/01_5UUA4N9.jpg', 'Land_khotian_pic/Khatian-Bangladesh_g68GFy2.jpg', 1, 'Poultry', '10000', '3000', 'land-for-poultry-farming', 'Sandy_soil', 'Milk Vita road ,Dhaka,1216', 55, 6, 5, '23.738585', '90.490507'),
('Land Available', 24, '2020-11-28 14:25:29.000000', '2020-11-28 14:25:29.204273', '2020-11-28 14:41:09.867566', '10000', 'Barisal', 'Land_pic/bd-rice-1_QiVnPbT.jfif', 'Land_dolil_pic/01_eGnzDuY.jpg', 'Land_khotian_pic/Khatian-Bangladesh_Y1G7d6O.jpg', 1, 'Rice-Farming,Vegetables-Farming', '10000', '2000', 'land-available', 'Clayey_Soil', 'Mia bari,North sagordi, barisal', 55, 2, 2, '22.679292', '90.332944'),
('khulshi land', 25, '2020-11-30 13:28:15.544390', '2020-11-30 13:28:15.545385', '2020-11-30 13:28:15.545385', '50000000', 'Chattagram', 'Land_pic/goose.jpg', 'Land_dolil_pic/01_fgPM8mR.jpg', 'Land_khotian_pic/Khatian-Bangladesh_PDj6RKJ.jpg', 0, '', '50000000', '5000', 'khulshi-land', 'Floodplain_soil', 'khushi', 55, 5, 2, '22.361284', '91.811847'),
('khulshi land', 26, '2020-11-30 13:33:58.000000', '2020-11-30 13:33:58.615364', '2020-11-30 13:35:57.463018', '62664', 'Chattagram', 'Land_pic/IMG_1145_M90yDlw.JPG', 'Land_dolil_pic/01_d8GpNel.jpg', 'Land_khotian_pic/Khatian-Bangladesh_rongfnX.jpg', 1, 'Poultry', '62664', '2000', 'khulshi-land', 'Sandy_soil', 'khulshi land', 55, 6, 1, '22.361284', '91.811847');

-- --------------------------------------------------------

--
-- Table structure for table `land_data_payment_data`
--

CREATE TABLE `land_data_payment_data` (
  `id` int(11) NOT NULL,
  `project_id_id` int(11) NOT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `amount` int(250) DEFAULT NULL,
  `monthly_charge` varchar(250) DEFAULT NULL,
  `agreement_status` tinyint(1)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_data_payment_data`
--

INSERT INTO `land_data_payment_data` (`id`, `project_id_id`, `payment_status`, `amount`, `monthly_charge`, `agreement_status`) VALUES
(1, 21, 1, NULL, '15000', 1),
(2, 24, 1, NULL, '2000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `land_data_payment_data_user`
--

CREATE TABLE `land_data_payment_data_user` (
  `id` int(11) NOT NULL,
  `payment_data_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_data_payment_data_user`
--

INSERT INTO `land_data_payment_data_user` (`id`, `payment_data_id`, `user_id`) VALUES
(1, 1, 54),
(2, 2, 54);

-- --------------------------------------------------------

--
-- Table structure for table `land_data_verification`
--

CREATE TABLE `land_data_verification` (
  `id` int(11) NOT NULL,
  `project_id_id` int(11) NOT NULL,
  `loc_ver` varchar(15) DEFAULT NULL,
  `status_ver` varchar(15) DEFAULT NULL,
  `land_size_ver` varchar(15) DEFAULT NULL,
  `land_ver_com` varchar(250) DEFAULT NULL,
  `doc_ver` varchar(15) DEFAULT NULL,
  `doc_ver_com` varchar(250) DEFAULT NULL,
  `doc_ver_usr` varchar(250) DEFAULT NULL,
  `land_ver_usr` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_data_verification`
--

INSERT INTO `land_data_verification` (`id`, `project_id_id`, `loc_ver`, `status_ver`, `land_size_ver`, `land_ver_com`, `doc_ver`, `doc_ver_com`, `doc_ver_usr`, `land_ver_usr`) VALUES
(51, 22, 'Verified', 'Verified', 'Verified', NULL, NULL, NULL, NULL, '63'),
(54, 21, 'Verified', 'Verified', 'Verified', NULL, NULL, NULL, NULL, '63'),
(56, 22, NULL, NULL, NULL, NULL, 'Verified', NULL, '60', NULL),
(58, 23, NULL, NULL, NULL, NULL, 'Verified', NULL, '60', NULL),
(61, 25, 'Verified', 'Verified', 'Verified', NULL, NULL, NULL, NULL, '63'),
(62, 25, NULL, NULL, NULL, NULL, 'Verified', NULL, '60', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_extendedprofile`
--
ALTER TABLE `home_extendedprofile`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `Home_extendedprofile_user_id_5f5fc845` (`user_id`);

--
-- Indexes for table `land_data_applied_data`
--
ALTER TABLE `land_data_applied_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Land_Data_applied_data_project_id_id_d17f2c6b` (`project_id_id`);

--
-- Indexes for table `land_data_category`
--
ALTER TABLE `land_data_category`
  ADD PRIMARY KEY (`name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `land_data_land_data`
--
ALTER TABLE `land_data_land_data`
  ADD PRIMARY KEY (`project_id`),
  ADD UNIQUE KEY `project_id_3` (`project_id`),
  ADD KEY `Land_Data_land_data_category_id_23cd83e8` (`category_id`),
  ADD KEY `Land_Data_land_data_slug_5fa650a5` (`slug`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `project_id_2` (`project_id`);

--
-- Indexes for table `land_data_payment_data`
--
ALTER TABLE `land_data_payment_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Land_Data_payment_data_project_id_id_32b4f22a_uniq` (`project_id_id`);

--
-- Indexes for table `land_data_payment_data_user`
--
ALTER TABLE `land_data_payment_data_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Land_Data_payment_data_u_payment_data_id_user_id_fc685a0f_uniq` (`payment_data_id`,`user_id`),
  ADD KEY `Land_Data_payment_data_user_user_id_8152747c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `land_data_verification`
--
ALTER TABLE `land_data_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Land_Data_verification_project_id_id_4d193149` (`project_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `land_data_applied_data`
--
ALTER TABLE `land_data_applied_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `land_data_land_data`
--
ALTER TABLE `land_data_land_data`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `land_data_payment_data`
--
ALTER TABLE `land_data_payment_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `land_data_payment_data_user`
--
ALTER TABLE `land_data_payment_data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `land_data_verification`
--
ALTER TABLE `land_data_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `land_data_applied_data`
--
ALTER TABLE `land_data_applied_data`
  ADD CONSTRAINT `Land_Data_applied_da_project_id_id_d17f2c6b_fk_Land_Data` FOREIGN KEY (`project_id_id`) REFERENCES `land_data_land_data` (`project_id`);

--
-- Constraints for table `land_data_payment_data`
--
ALTER TABLE `land_data_payment_data`
  ADD CONSTRAINT `Land_Data_payment_da_project_id_id_32b4f22a_fk_Land_Data` FOREIGN KEY (`project_id_id`) REFERENCES `land_data_land_data` (`project_id`);

--
-- Constraints for table `land_data_payment_data_user`
--
ALTER TABLE `land_data_payment_data_user`
  ADD CONSTRAINT `Land_Data_payment_da_payment_data_id_75703d15_fk_Land_Data` FOREIGN KEY (`payment_data_id`) REFERENCES `land_data_payment_data` (`id`),
  ADD CONSTRAINT `Land_Data_payment_data_user_user_id_8152747c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `land_data_verification`
--
ALTER TABLE `land_data_verification`
  ADD CONSTRAINT `Land_Data_verificati_project_id_id_4d193149_fk_Land_Data` FOREIGN KEY (`project_id_id`) REFERENCES `land_data_land_data` (`project_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
