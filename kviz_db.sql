-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 04:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kviz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add players', 7, 'add_players'),
(26, 'Can change players', 7, 'change_players'),
(27, 'Can delete players', 7, 'delete_players'),
(28, 'Can view players', 7, 'view_players'),
(29, 'Can add player statistics', 8, 'add_playerstatistics'),
(30, 'Can change player statistics', 8, 'change_playerstatistics'),
(31, 'Can delete player statistics', 8, 'delete_playerstatistics'),
(32, 'Can view player statistics', 8, 'view_playerstatistics'),
(33, 'Can add questions', 9, 'add_questions'),
(34, 'Can change questions', 9, 'change_questions'),
(35, 'Can delete questions', 9, 'delete_questions'),
(36, 'Can view questions', 9, 'view_questions'),
(37, 'Can add answers', 10, 'add_answers'),
(38, 'Can change answers', 10, 'change_answers'),
(39, 'Can delete answers', 10, 'delete_answers'),
(40, 'Can view answers', 10, 'view_answers');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$Vn8Wn8UtKPm23WM1NtR5Ht$tIQBVnYneFOA/GFfk481XsPXeL8Y0OCKiTdZuE0oydA=', '2023-07-04 10:37:08.808546', 1, 'kviz_admin', '', '', '', 1, 1, '2023-07-04 10:36:14.325899');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'kviz_app', 'answers'),
(7, 'kviz_app', 'players'),
(8, 'kviz_app', 'playerstatistics'),
(9, 'kviz_app', 'questions'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-04 10:34:32.383575'),
(2, 'auth', '0001_initial', '2023-07-04 10:34:32.825652'),
(3, 'admin', '0001_initial', '2023-07-04 10:34:32.922889'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-04 10:34:32.928874'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-04 10:34:32.934855'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-04 10:34:32.985716'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-04 10:34:33.025958'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-04 10:34:33.040919'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-04 10:34:33.046903'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-04 10:34:33.082807'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-04 10:34:33.085832'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-04 10:34:33.091783'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-04 10:34:33.106771'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-04 10:34:33.120706'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-04 10:34:33.135666'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-04 10:34:33.142675'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-04 10:34:33.158605'),
(18, 'sessions', '0001_initial', '2023-07-04 10:34:33.183537'),
(19, 'kviz_app', '0001_initial', '2023-07-04 12:35:33.058145'),
(20, 'kviz_app', '0002_rename_question_id_answers_question_and_more', '2023-07-04 12:36:13.550741'),
(21, 'kviz_app', '0003_remove_answers_correct_questions_correct_answer', '2023-07-04 13:57:58.030884');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('84iw68zn9ch73bztq4k9w70mmlp5fd93', '.eJxVjEEOwiAQRe_C2hAow0BduvcMBGYGWzVtUtqV8e7apAvd_vfef6mUt3VIW5MljazOyqrT71YyPWTaAd_zdJs1zdO6jEXvij5o09eZ5Xk53L-DIbfhW0eLFbkXNoZ6AWTwIRJ4pOrBuiJFqjcxIERAS8gmgDgJxlEJXefU-wPawjdU:1qGdPA:UoYKrtBunUnbiXAncrcqKfhtbTgzeSoQa9rLChLsPZw', '2023-07-18 10:37:08.810679');

-- --------------------------------------------------------

--
-- Table structure for table `kviz_app_answers`
--

CREATE TABLE `kviz_app_answers` (
  `id` bigint(20) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `question_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kviz_app_answers`
--

INSERT INTO `kviz_app_answers` (`id`, `answer`, `question_id`) VALUES
(1, '1101. jan 1', 34),
(2, '1001. jan. 11', 34),
(3, '1001. jan. 21', 34),
(4, '1001. jan.1', 34),
(5, '1479. október 13-án', 35),
(6, '1467. novenber 5-én', 35),
(7, '1456. március 18-án', 35),
(8, '1256. március 18-án', 35),
(9, 'Egyszemű óriások', 36),
(10, 'Félig ember, félig ló alakú lények', 36),
(11, 'Emberevő óriások', 36),
(12, 'Félig ember, félig macska lények', 36),
(13, 'V. Béla', 37),
(14, 'III. Béla', 37),
(15, 'IV. (Kun) László', 37),
(16, 'IV. Béla', 37),
(17, 'Széchenyi István', 38),
(18, 'Deák Ferenc', 38),
(19, 'Wesselényi Miklós', 38),
(20, 'Petőfi Sándor', 38),
(21, 'Finnország', 39),
(22, 'Svédország', 39),
(23, 'Portugália', 39),
(24, 'Németország', 39),
(25, '66 km', 40),
(26, '88 km', 40),
(27, '120 km', 40),
(28, '77 km', 40),
(29, 'Fertő-tó', 41),
(30, 'Velencei-tó', 41),
(31, 'Tisza-tó', 41),
(32, 'Balaton', 41),
(33, 'Balassagyarmat', 42),
(34, 'Salgótarján', 42),
(35, 'Tatabánya', 42),
(36, 'Vác', 42),
(37, '5 milliárd fő', 43),
(38, '10 milliárd fő', 43),
(39, '8 milliárd fő', 43),
(40, '8 millió fő', 43),
(41, 'Puhatestűek', 44),
(42, 'Ízeltlábúak', 44),
(43, 'Gerinchúrosok', 44),
(44, 'Gerincesek', 44),
(45, 'Déli sarkon', 45),
(46, 'Északi sarkon', 45),
(47, 'Afrikában', 45),
(48, 'Bárhol', 45),
(49, 'Csalánosok', 46),
(50, 'Tökfélék', 46),
(51, 'Burgonyafélék', 46),
(52, 'Pillangósvirágúak', 46),
(53, 'Tüdővel', 47),
(54, 'Kopoltyúval', 47),
(55, 'Bőrön keresztül', 47),
(56, 'Tollon keresztül', 47),
(57, 'Valódi páfrányok', 48),
(58, 'Őspáfrányok', 48),
(59, 'Zsurlók', 48),
(60, 'Tűlevelűek', 48),
(61, '1908 London', 49),
(62, '932 Los Angeles', 49),
(63, '1819 Athén', 49),
(64, '1896 Athén', 49),
(65, '2-0', 50),
(66, '1-0', 50),
(67, '1-1', 50),
(68, '3-0', 50),
(69, 'Londonban', 51),
(70, 'Párizsban', 51),
(71, 'Rio de Janeiroban', 51),
(72, 'Budapesten', 51),
(73, 'Lewis Hamilton', 52),
(74, 'Nico Rosberg', 52),
(75, 'Max Verstappen', 52),
(76, 'Michael Schumacher', 52),
(77, '1', 53),
(78, '4', 53),
(79, '2', 53),
(80, '3', 53),
(81, '2091.09.11', 54),
(82, '2089.09.21', 54),
(83, '2090.09.21', 54),
(84, '2081.09.03', 54),
(85, 'Merkúr', 55),
(86, 'Vénusz', 55),
(87, 'Mars', 55),
(88, 'Föld', 55);

-- --------------------------------------------------------

--
-- Table structure for table `kviz_app_players`
--

CREATE TABLE `kviz_app_players` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kviz_app_players`
--

INSERT INTO `kviz_app_players` (`id`, `name`, `score`) VALUES
(12, 'Tamás', 10200),
(13, 'Zoltán', 1300),
(14, 'Réka', 1600);

-- --------------------------------------------------------

--
-- Table structure for table `kviz_app_playerstatistics`
--

CREATE TABLE `kviz_app_playerstatistics` (
  `id` bigint(20) NOT NULL,
  `correct_answers` int(11) NOT NULL,
  `wrong_answers` int(11) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kviz_app_playerstatistics`
--

INSERT INTO `kviz_app_playerstatistics` (`id`, `correct_answers`, `wrong_answers`, `player_id`) VALUES
(1, 102, 284, 12),
(2, 13, 9, 13),
(3, 16, 6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `kviz_app_questions`
--

CREATE TABLE `kviz_app_questions` (
  `id` bigint(20) NOT NULL,
  `question` varchar(100) NOT NULL,
  `correct_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kviz_app_questions`
--

INSERT INTO `kviz_app_questions` (`id`, `question`, `correct_answer`) VALUES
(34, 'Mikor volt István, királlyá koronázása?', 4),
(35, 'Mikor volt a kenyérmezei csata?', 5),
(36, 'Kik voltak a Küklopszok a görög mitológiában?', 9),
(37, 'Ki volt a második honalapító?', 16),
(38, 'Ki volt Az árvízi hajós?', 19),
(39, 'Melyik ország fővárosa Helsinki?', 21),
(40, 'Milyen hosszú a Balaton?', 28),
(41, 'Mi Magyarország második legnagyobb tava?', 31),
(42, 'Mi Nógrád megye székhelye?', 34),
(43, 'Hozzávetőlegesen mennyi a Föld népessége?', 39),
(44, 'A csigák melyik törzsbe tartoznak?', 41),
(45, 'Hol élnek a pingvinek?', 45),
(46, 'Melyik családba tartozik a paradicsom?', 51),
(47, 'Mivel lélegeznek a madarak?', 53),
(48, 'Az erdei pajzsika melyik rendszertani osztályba tartozik?', 57),
(49, 'Mikor és hol rendezték meg az első nyári olimpiai játékokat?', 64),
(50, 'Mi volt a végeredménye a Magyar-Ausztria mérkőzésnek a 2016-os foci EB-n?', 65),
(51, ' Hol rendezik meg a 2016-os Olimpiai Játékokat?', 71),
(52, 'Ki nyerte a 2016. május 1-i Forma 1-es futamot (orosz nagydíj)?', 74),
(53, 'Hány évente kerül megrendezésre a labdarúgó EB?', 78),
(54, 'Mikor lesz Magyarországon legközelebb teljes napfogyatkozás?', 84),
(55, 'Melyik bolygó van a legközelebb a Naphoz?', 85);

-- --------------------------------------------------------

--
-- Table structure for table `question_statistics`
--

CREATE TABLE `question_statistics` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL DEFAULT 0,
  `wrong_answers` int(11) NOT NULL DEFAULT 0,
  `answered_1` int(11) NOT NULL DEFAULT 0,
  `answered_2` int(11) NOT NULL DEFAULT 0,
  `answered_3` int(11) NOT NULL DEFAULT 0,
  `answered_4` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_statistics`
--

INSERT INTO `question_statistics` (`id`, `question_id`, `correct_answers`, `wrong_answers`, `answered_1`, `answered_2`, `answered_3`, `answered_4`) VALUES
(1, 36, 10, 11, 10, 4, 1, 6),
(2, 43, 8, 11, 3, 5, 8, 3),
(3, 47, 8, 11, 8, 4, 5, 2),
(4, 55, 8, 11, 8, 2, 8, 1),
(5, 41, 3, 16, 3, 5, 3, 8),
(6, 34, 7, 12, 1, 6, 5, 7),
(7, 40, 7, 14, 2, 3, 9, 7),
(8, 53, 3, 16, 5, 3, 7, 4),
(9, 52, 2, 17, 3, 2, 7, 7),
(10, 46, 4, 17, 2, 4, 4, 11),
(11, 49, 7, 12, 3, 4, 5, 7),
(12, 38, 5, 15, 5, 5, 5, 5),
(13, 54, 3, 17, 8, 7, 2, 3),
(14, 45, 4, 15, 4, 5, 4, 6),
(15, 51, 3, 16, 6, 5, 3, 5),
(16, 39, 7, 14, 7, 7, 5, 2),
(17, 48, 4, 16, 4, 7, 6, 3),
(18, 37, 6, 13, 7, 2, 4, 6),
(19, 44, 6, 13, 6, 7, 2, 4),
(20, 42, 9, 11, 4, 9, 3, 4),
(21, 50, 9, 10, 9, 3, 5, 2),
(22, 35, 8, 11, 8, 7, 2, 2);

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
-- Indexes for table `kviz_app_answers`
--
ALTER TABLE `kviz_app_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kviz_app_answers_question_id_7c1d2664_fk_kviz_app_questions_id` (`question_id`);

--
-- Indexes for table `kviz_app_players`
--
ALTER TABLE `kviz_app_players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kviz_app_playerstatistics`
--
ALTER TABLE `kviz_app_playerstatistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kviz_app_playerstati_player_id_0ea303cc_fk_kviz_app_` (`player_id`);

--
-- Indexes for table `kviz_app_questions`
--
ALTER TABLE `kviz_app_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_statistics`
--
ALTER TABLE `question_statistics`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kviz_app_answers`
--
ALTER TABLE `kviz_app_answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `kviz_app_players`
--
ALTER TABLE `kviz_app_players`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kviz_app_playerstatistics`
--
ALTER TABLE `kviz_app_playerstatistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kviz_app_questions`
--
ALTER TABLE `kviz_app_questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `question_statistics`
--
ALTER TABLE `question_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- Constraints for table `kviz_app_answers`
--
ALTER TABLE `kviz_app_answers`
  ADD CONSTRAINT `kviz_app_answers_question_id_7c1d2664_fk_kviz_app_questions_id` FOREIGN KEY (`question_id`) REFERENCES `kviz_app_questions` (`id`);

--
-- Constraints for table `kviz_app_playerstatistics`
--
ALTER TABLE `kviz_app_playerstatistics`
  ADD CONSTRAINT `kviz_app_playerstati_player_id_0ea303cc_fk_kviz_app_` FOREIGN KEY (`player_id`) REFERENCES `kviz_app_players` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
