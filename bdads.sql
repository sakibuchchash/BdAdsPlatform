-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 06:37 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdads`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Can add ads', 1, 'add_ads'),
(2, 'Can change ads', 1, 'change_ads'),
(3, 'Can delete ads', 1, 'delete_ads'),
(4, 'Can view ads', 1, 'view_ads'),
(5, 'Can add user', 2, 'add_user'),
(6, 'Can change user', 2, 'change_user'),
(7, 'Can delete user', 2, 'delete_user'),
(8, 'Can view user', 2, 'view_user'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session');

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
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'contenttypes', 'contenttype'),
(1, 'MySystem', 'ads'),
(2, 'MySystem', 'user'),
(7, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2019-04-19 01:12:33.638719'),
(2, 'contenttypes', '0002_remove_content_type_name', '2019-04-19 01:12:34.607528'),
(3, 'auth', '0001_initial', '2019-04-19 01:12:37.929369'),
(4, 'auth', '0002_alter_permission_name_max_length', '2019-04-19 01:12:38.775576'),
(5, 'auth', '0003_alter_user_email_max_length', '2019-04-19 01:12:38.837977'),
(6, 'auth', '0004_alter_user_username_opts', '2019-04-19 01:12:38.898178'),
(7, 'auth', '0005_alter_user_last_login_null', '2019-04-19 01:12:39.007378'),
(8, 'auth', '0006_require_contenttypes_0002', '2019-04-19 01:12:39.069779'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2019-04-19 01:12:39.128980'),
(10, 'auth', '0008_alter_user_username_max_length', '2019-04-19 01:12:39.289382'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2019-04-19 01:12:39.329582'),
(12, 'MySystem', '0001_initial', '2019-04-19 01:12:46.277448'),
(13, 'admin', '0001_initial', '2019-04-19 01:12:48.685672'),
(14, 'admin', '0002_logentry_remove_auto_add', '2019-04-19 01:12:48.775673'),
(15, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-19 01:12:48.945075'),
(16, 'sessions', '0001_initial', '2019-04-19 01:12:49.622682');

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
('94p4uupzu5r1ffadm60yxcefdu524pnm', 'ZjU3N2JiNjJmYWU4OWM0OTg1NjMwMGMzOGI2ZDM4Y2Q0NTk4N2E2ZDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNWRhNGE5Y2E0MzkzYzYzOWJjYTRjNThmMWE3YjY1ZWI3YzExMjhlIn0=', '2019-05-03 04:33:09.254098');

-- --------------------------------------------------------

--
-- Table structure for table `mysystem_ads`
--

CREATE TABLE `mysystem_ads` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `adtype` varchar(200) NOT NULL,
  `adCategory` varchar(200) NOT NULL,
  `is_news` tinyint(1) NOT NULL,
  `is_video` tinyint(1) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `is_booked` tinyint(1) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `text` longtext,
  `image` varchar(100) DEFAULT NULL,
  `booked_by` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mysystem_ads`
--

INSERT INTO `mysystem_ads` (`id`, `title`, `adtype`, `adCategory`, `is_news`, `is_video`, `is_paid`, `is_accepted`, `is_booked`, `price`, `created_date`, `text`, `image`, `booked_by`, `publisher_id`) VALUES
(1, '1st page - 2 row 1st column : 3*4 cm', 'Image', 'Education', 1, 0, 0, 0, 0, 20000, '2019-04-19 03:21:38.976479', NULL, '', NULL, 6),
(2, '1st page - 2 row 1st column - 5*5 cm', 'Image', 'Education', 1, 0, 0, 0, 0, 30000, '2019-04-19 03:22:20.764869', NULL, '', NULL, 6),
(3, '1st page - 1st row 2nd column - 4*5 cm', 'Image', 'Education', 1, 0, 0, 0, 0, 40000, '2019-04-19 03:23:15.013972', NULL, '', NULL, 6),
(4, '3rd page - 2 row 1st column - 5*5 cm', 'Image', 'Education', 1, 0, 0, 0, 0, 50000, '2019-04-19 03:24:43.083009', NULL, '', NULL, 6),
(5, 'front page - 4th row 1st column - 4*8 cm', 'Image', 'Business', 1, 0, 0, 0, 0, 50000, '2019-04-19 03:26:29.669106', NULL, '', NULL, 6),
(6, '2nd page - 1st row 2nd column - 3*3 cm', 'Image', 'Education', 1, 0, 0, 0, 0, 40500, '2019-04-19 03:47:16.264350', NULL, '', NULL, 6),
(7, '1st Page - 2nd row 3rd column : 3*3 cm', 'Image', 'Education', 1, 0, 0, 0, 0, 30000, '2019-04-19 04:13:27.476218', NULL, '', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mysystem_user`
--

CREATE TABLE `mysystem_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_customer` tinyint(1) NOT NULL,
  `is_publisher` tinyint(1) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `publisher_type` varchar(100) DEFAULT NULL,
  `mobile_No` varchar(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mysystem_user`
--

INSERT INTO `mysystem_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_customer`, `is_publisher`, `image`, `publisher_type`, `mobile_No`, `rating`) VALUES
(1, 'pbkdf2_sha256$120000$OHeSayhrnKgJ$Kgz2zcHP3RVu1AoOAVHc4Tk531lwCnvgdq3voFSHR8k=', '2019-04-19 02:43:18.116059', 0, 'Ittefaq', 'Ittefaq', '', 'ittefaq@gmail.com', 0, 1, '2019-04-19 02:43:17.341015', 0, 1, '', 'Newspaper', '01911777867', NULL),
(2, 'pbkdf2_sha256$120000$1ny9XiZdzhi4$rGJVUwBkLYRIrQhsN3KS+rGjKimHg51MTD95Y52R5vM=', '2019-04-19 02:45:37.925719', 0, 'ChanneiI', 'Channel I', '', 'channeli@gmail.com', 0, 1, '2019-04-19 02:45:37.074670', 0, 1, '', 'Televison', '01918171615', NULL),
(3, 'pbkdf2_sha256$120000$jMrApx6vV2RY$2rKMsDCx/bbwm51ZRbj0oKA3mJLRmbhyqDWqUwLAxOE=', '2019-04-19 02:47:38.130309', 0, 'ntv', 'NTv', '', 'ntv@gmail.com', 0, 1, '2019-04-19 02:47:37.444270', 0, 1, '', 'Televison', '01918171615', NULL),
(4, 'pbkdf2_sha256$120000$W1W1u6QawU7P$Gj0EygK317DpYc5Zy3HMCkocDK3J5kS78hGKWCYj47w=', '2019-04-19 02:49:19.263130', 0, 'diptotv', 'Dipto Tv', '', 'diptotv@gmail.com', 0, 1, '2019-04-19 02:49:18.303075', 0, 1, '', 'Televison', '01918171615', NULL),
(5, 'pbkdf2_sha256$120000$ht9KKivwXE1t$miGHoy8d9wFgUWeFtfC0deBACU/ZmwKWBaw0j/taWc8=', '2019-04-19 02:50:55.512927', 0, 'facebook', 'Facebook', '', 'facebook@gmail.com', 0, 1, '2019-04-19 02:50:54.778885', 0, 1, '', 'Online Media', '01918171615', NULL),
(6, 'pbkdf2_sha256$120000$7rfZLgNT39sU$68JJ/VB9p/rQqGciUh/1IK067jjIVB6XEsZBPMtu+yk=', '2019-04-19 04:32:19.364072', 0, 'ProthomAlo', 'Prothom Alo', '', '', 0, 1, '2019-04-19 03:14:26.416104', 0, 1, '', 'Newspaper', '01511', NULL),
(7, 'pbkdf2_sha256$120000$3xNWaj7REbNA$KfsqyFL+C+AXjP/3QdN8j/SvE7DxVBhol3uJlwfqEns=', '2019-04-19 04:33:09.186094', 0, 'UnitedIU', 'United University', '', '', 0, 1, '2019-04-19 03:16:11.344362', 1, 0, '', NULL, '0151', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mysystem_user_groups`
--

CREATE TABLE `mysystem_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mysystem_user_user_permissions`
--

CREATE TABLE `mysystem_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_MySystem_user_id` (`user_id`);

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
-- Indexes for table `mysystem_ads`
--
ALTER TABLE `mysystem_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MySystem_ads_publisher_id_8c508b02_fk_MySystem_user_id` (`publisher_id`);

--
-- Indexes for table `mysystem_user`
--
ALTER TABLE `mysystem_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mysystem_user_groups`
--
ALTER TABLE `mysystem_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MySystem_user_groups_user_id_group_id_b91f5305_uniq` (`user_id`,`group_id`),
  ADD KEY `MySystem_user_groups_group_id_9cd65bc2_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `mysystem_user_user_permissions`
--
ALTER TABLE `mysystem_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MySystem_user_user_permi_user_id_permission_id_135baac4_uniq` (`user_id`,`permission_id`),
  ADD KEY `MySystem_user_user_p_permission_id_3a24c11c_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mysystem_ads`
--
ALTER TABLE `mysystem_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mysystem_user`
--
ALTER TABLE `mysystem_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mysystem_user_groups`
--
ALTER TABLE `mysystem_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mysystem_user_user_permissions`
--
ALTER TABLE `mysystem_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_MySystem_user_id` FOREIGN KEY (`user_id`) REFERENCES `mysystem_user` (`id`);

--
-- Constraints for table `mysystem_ads`
--
ALTER TABLE `mysystem_ads`
  ADD CONSTRAINT `MySystem_ads_publisher_id_8c508b02_fk_MySystem_user_id` FOREIGN KEY (`publisher_id`) REFERENCES `mysystem_user` (`id`);

--
-- Constraints for table `mysystem_user_groups`
--
ALTER TABLE `mysystem_user_groups`
  ADD CONSTRAINT `MySystem_user_groups_group_id_9cd65bc2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `MySystem_user_groups_user_id_c1c50dd4_fk_MySystem_user_id` FOREIGN KEY (`user_id`) REFERENCES `mysystem_user` (`id`);

--
-- Constraints for table `mysystem_user_user_permissions`
--
ALTER TABLE `mysystem_user_user_permissions`
  ADD CONSTRAINT `MySystem_user_user_p_permission_id_3a24c11c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `MySystem_user_user_p_user_id_51b04f51_fk_MySystem_` FOREIGN KEY (`user_id`) REFERENCES `mysystem_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
