-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 08:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(25, 'Can add task', 7, 'add_task'),
(26, 'Can change task', 7, 'change_task'),
(27, 'Can delete task', 7, 'delete_task'),
(28, 'Can view task', 7, 'view_task');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$cXX6A2uqhFV18OTCXuAsGT$xsVK7RCArw7El62ASHwklzLbVL3rf3STA3WeLv9c6bM=', '2021-10-04 03:51:41.234658', 1, 'thin', '', '', '', 1, 1, '2021-10-01 14:19:08.169204'),
(2, '123', NULL, 0, 'Teo', '', '', 'Teo@gmail.com', 0, 1, '2021-10-02 07:36:11.358066'),
(3, '123', NULL, 0, 'Teo1', '', '', 'Teo@gmail.com', 0, 1, '2021-10-02 07:37:27.159845'),
(7, '', NULL, 0, 'thintra', '', '', '', 0, 1, '2021-10-03 07:17:00.962427'),
(8, '123', NULL, 0, 'Cudau', '', '', 'cudau@gmail.com', 0, 1, '2021-10-04 14:57:56.132617'),
(11, 'pbkdf2_sha256$260000$wIpNppxhqL6CLEColMte69$Vy0I4YnCmpEVdpqo/YqPIpYoF3K4yi4GvyNZEP4qRyE=', NULL, 0, 'Cudau1', '', '', 'cudau@gmail.com', 0, 1, '2021-10-04 15:09:20.215221'),
(13, 'pbkdf2_sha256$260000$qfhgi0y3waloMnOXcypw7u$RhVT09/UhCaqOEumbBWruP21GGy+QlDPokFailuLchM=', NULL, 0, 'Cudau2', '', '', 'cudaugmail.com', 0, 1, '2021-10-04 15:10:34.619515'),
(14, 'pbkdf2_sha256$260000$zeXGsl0mvGCTVDCTp6pTW3$rb3lvj/dhqGj1xkUgg2zp+11KhWSyq0Ukq370Rkn0Ck=', NULL, 0, 'Huy', '', '', 'huy@gmail.com', 0, 1, '2021-10-05 05:52:48.540657');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-02 10:14:00.877513', '1', 'Task object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-10-02 13:13:42.934415', '2', 'Task object (2)', 3, '', 7, 1),
(3, '2021-10-02 15:46:33.646037', '4', 'Task object (4)', 3, '', 7, 1),
(4, '2021-10-02 15:46:33.650038', '3', 'Task object (3)', 3, '', 7, 1),
(5, '2021-10-03 06:59:38.718982', '4', '', 3, '', 4, 1),
(6, '2021-10-03 07:00:54.933829', '5', '', 3, '', 4, 1),
(7, '2021-10-03 07:00:54.938816', '6', 'thintran', 3, '', 4, 1),
(8, '2021-10-03 14:09:43.184936', '6', 'Task object (6)', 3, '', 7, 1),
(9, '2021-10-03 14:09:43.189311', '5', 'Task object (5)', 3, '', 7, 1),
(10, '2021-10-03 14:19:55.721270', '9', 'Task object (9)', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Task', 'task');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-01 13:26:32.277161'),
(2, 'auth', '0001_initial', '2021-10-01 13:26:32.763857'),
(3, 'admin', '0001_initial', '2021-10-01 13:26:32.879556'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-01 13:26:32.888533'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-01 13:26:32.897512'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-01 13:26:32.955714'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-01 13:26:33.005869'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-01 13:26:33.053744'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-01 13:26:33.064995'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-01 13:26:33.110087'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-01 13:26:33.112083'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-01 13:26:33.122054'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-01 13:26:33.142002'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-01 13:26:33.159954'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-01 13:26:33.230073'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-01 13:26:33.245000'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-01 13:26:33.266941'),
(18, 'sessions', '0001_initial', '2021-10-01 13:26:33.311431'),
(19, 'Task', '0001_initial', '2021-10-02 02:40:13.292867'),
(20, 'Task', '0002_alter_task_dateofmodification', '2021-10-02 02:54:13.105291'),
(21, 'Task', '0003_alter_task_dateofcreation', '2021-10-02 12:54:44.326735'),
(22, 'Task', '0004_auto_20211002_2217', '2021-10-02 15:18:09.756082'),
(23, 'Task', '0005_alter_task_iduser', '2021-10-02 15:20:40.042259'),
(24, 'Task', '0006_alter_task_iduser', '2021-10-02 15:21:44.922997'),
(25, 'Task', '0007_alter_task_iduser', '2021-10-02 15:27:54.731032'),
(26, 'Task', '0008_alter_task_id', '2021-10-04 03:20:24.644217');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('zkbumzu8oecc95w47mc4n4wtdfqn2fij', '.eJxVjDsOwjAQBe_iGlnxJ88yJT1nsNbrNQmgRIqTCnF3iJQC2jcz76USbeuQtiZLGos6K6NOv1smfsi0g3Kn6TZrnqd1GbPeFX3Qpq9zkeflcP8OBmrDt469jX1nPayAcuhscBHGcwTBO-GM6nxANbUKFeICFDEAeh8cOlbvD7t8N1E:1mXF0v:p1IMn5q3jScvEYNze0RDsrt6o0olZP17jMx4XwYDQbY', '2021-10-18 03:51:41.243362');

-- --------------------------------------------------------

--
-- Table structure for table `task_task`
--

CREATE TABLE `task_task` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `decription` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dateofcompletion` date NOT NULL,
  `status` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `dateofcreation` date NOT NULL,
  `dateofmodification` date NOT NULL,
  `iduser_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_task`
--

INSERT INTO `task_task` (`id`, `name`, `decription`, `dateofcompletion`, `status`, `dateofcreation`, `dateofmodification`, `iduser_id`) VALUES
(1, 'thin', 'Hom nay toi buon', '2021-10-13', 'COMPLETE', '2021-10-02', '2021-10-02', 2),
(5, 'thin11', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 2),
(7, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 3),
(8, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 3),
(10, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 2),
(11, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 2),
(12, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 2),
(13, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 2),
(14, 'thin', 'Hom nay toi buon', '2021-10-13', 'NEW', '2021-10-02', '2021-10-02', 2),
(17, 'Cong viec', 'Hom nay toi vui', '2021-10-13', 'COMPLETE', '2021-10-02', '2021-10-02', 2),
(22, 'thin11', 'Hom nay toi buon', '2021-10-13', 'COMPLETE', '2021-10-02', '2021-10-02', 2),
(30, 'thin11', 'Hom nay toi buon', '2021-10-13', 'COMPLETE', '2021-10-02', '2021-10-02', 3);

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
-- Indexes for table `task_task`
--
ALTER TABLE `task_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Task_task_iduser_id_bd67b3a4_fk_auth_user_id` (`iduser_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- Constraints for table `task_task`
--
ALTER TABLE `task_task`
  ADD CONSTRAINT `Task_task_iduser_id_bd67b3a4_fk_auth_user_id` FOREIGN KEY (`iduser_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
