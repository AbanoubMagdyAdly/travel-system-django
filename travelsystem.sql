-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2019 at 04:51 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication_users`
--

CREATE TABLE `authentication_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_is_blocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Can add users', 1, 'add_users'),
(2, 'Can change users', 1, 'change_users'),
(3, 'Can delete users', 1, 'delete_users'),
(4, 'Can add comments', 2, 'add_comments'),
(5, 'Can change comments', 2, 'change_comments'),
(6, 'Can delete comments', 2, 'delete_comments'),
(7, 'Can add user_ experiences', 3, 'add_user_experiences'),
(8, 'Can change user_ experiences', 3, 'change_user_experiences'),
(9, 'Can delete user_ experiences', 3, 'delete_user_experiences'),
(10, 'Can add rides', 4, 'add_rides'),
(11, 'Can change rides', 4, 'change_rides'),
(12, 'Can delete rides', 4, 'delete_rides'),
(13, 'Can add reservations', 5, 'add_reservations'),
(14, 'Can change reservations', 5, 'change_reservations'),
(15, 'Can delete reservations', 5, 'delete_reservations'),
(16, 'Can add cities', 6, 'add_cities'),
(17, 'Can change cities', 6, 'change_cities'),
(18, 'Can delete cities', 6, 'delete_cities'),
(19, 'Can add countries', 7, 'add_countries'),
(20, 'Can change countries', 7, 'change_countries'),
(21, 'Can delete countries', 7, 'delete_countries'),
(22, 'Can add locations', 8, 'add_locations'),
(23, 'Can change locations', 8, 'change_locations'),
(24, 'Can delete locations', 8, 'delete_locations'),
(25, 'Can add hotel', 9, 'add_hotel'),
(26, 'Can change hotel', 9, 'change_hotel'),
(27, 'Can delete hotel', 9, 'delete_hotel'),
(28, 'Can add log entry', 10, 'add_logentry'),
(29, 'Can change log entry', 10, 'change_logentry'),
(30, 'Can delete log entry', 10, 'delete_logentry'),
(31, 'Can add permission', 11, 'add_permission'),
(32, 'Can change permission', 11, 'change_permission'),
(33, 'Can delete permission', 11, 'delete_permission'),
(34, 'Can add group', 12, 'add_group'),
(35, 'Can change group', 12, 'change_group'),
(36, 'Can delete group', 12, 'delete_group'),
(37, 'Can add user', 13, 'add_user'),
(38, 'Can change user', 13, 'change_user'),
(39, 'Can delete user', 13, 'delete_user'),
(40, 'Can add content type', 14, 'add_contenttype'),
(41, 'Can change content type', 14, 'change_contenttype'),
(42, 'Can delete content type', 14, 'delete_contenttype'),
(43, 'Can add session', 15, 'add_session'),
(44, 'Can change session', 15, 'change_session'),
(45, 'Can delete session', 15, 'delete_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `user_experience_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_user_experiences`
--

CREATE TABLE `blog_user_experiences` (
  `id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `city_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car_rental_rides`
--

CREATE TABLE `car_rental_rides` (
  `id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `from_location` int(11) NOT NULL,
  `ride_date` date NOT NULL,
  `ride_time` time(6) NOT NULL,
  `to_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(10, 'admin', 'logentry'),
(12, 'auth', 'group'),
(11, 'auth', 'permission'),
(13, 'auth', 'user'),
(1, 'authentication', 'users'),
(2, 'blog', 'comments'),
(3, 'blog', 'user_experiences'),
(4, 'car_rental', 'rides'),
(14, 'contenttypes', 'contenttype'),
(5, 'hotel_reservation', 'reservations'),
(6, 'places', 'cities'),
(7, 'places', 'countries'),
(9, 'places', 'hotel'),
(8, 'places', 'locations'),
(15, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2019-02-14 09:39:22.968027'),
(2, 'auth', '0001_initial', '2019-02-14 09:39:31.773123'),
(3, 'admin', '0001_initial', '2019-02-14 09:39:33.627062'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-14 09:39:33.761076'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-02-14 09:39:35.086886'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-02-14 09:39:35.210684'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-02-14 09:39:35.344625'),
(8, 'auth', '0004_alter_user_username_opts', '2019-02-14 09:39:35.392435'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-02-14 09:39:35.847939'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-02-14 09:39:35.871130'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-02-14 09:39:35.908061'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-02-14 09:39:36.852192'),
(13, 'authentication', '0001_initial', '2019-02-14 09:39:37.169589'),
(14, 'authentication', '0002_auto_20190214_0900', '2019-02-14 09:39:43.294660'),
(15, 'authentication', '0003_auto_20190214_0923', '2019-02-14 09:39:45.316638'),
(16, 'authentication', '0004_users_user_is_blocked', '2019-02-14 09:39:45.855969'),
(17, 'places', '0001_initial', '2019-02-14 09:39:48.477932'),
(18, 'places', '0002_auto_20190213_1420', '2019-02-14 09:39:50.443195'),
(19, 'blog', '0001_initial', '2019-02-14 09:39:55.676911'),
(20, 'blog', '0002_user_experiences_rate', '2019-02-14 09:39:57.063042'),
(21, 'car_rental', '0001_initial', '2019-02-14 09:40:02.930047'),
(22, 'car_rental', '0002_remove_rides_from_location', '2019-02-14 09:40:03.557428'),
(23, 'car_rental', '0003_auto_20190214_0931', '2019-02-14 09:40:05.934705'),
(24, 'car_rental', '0004_auto_20190214_0931', '2019-02-14 09:40:07.339738'),
(25, 'hotel_reservation', '0001_initial', '2019-02-14 09:40:08.647751'),
(26, 'hotel_reservation', '0002_auto_20190213_1420', '2019-02-14 09:40:09.453161'),
(27, 'hotel_reservation', '0003_reservations', '2019-02-14 09:40:11.520226'),
(28, 'hotel_reservation', '0004_auto_20190214_0929', '2019-02-14 09:40:13.674562'),
(29, 'sessions', '0001_initial', '2019-02-14 09:40:15.278351');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_reservation_reservations`
--

CREATE TABLE `hotel_reservation_reservations` (
  `id` int(11) NOT NULL,
  `no_of_persons` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `places_cities`
--

CREATE TABLE `places_cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  `country_id_id` int(11) NOT NULL,
  `city_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places_cities`
--

INSERT INTO `places_cities` (`id`, `city_name`, `country_id_id`, `city_rate`) VALUES
(1, 'Apia', 2, 0),
(2, 'Alofi', 4, 0),
(3, 'Avarua', 5, 0),
(4, 'Papeete', 9, 0),
(5, 'Adak', 1, 0),
(6, 'Apia', 2, 0),
(7, 'Pago Pago', 1, 0),
(8, 'Alofi', 4, 0),
(9, 'Avarua', 5, 0),
(10, 'Honolulu', 1, 0),
(11, 'Hilo', 1, 0),
(12, 'Anchorage', 1, 0),
(13, 'Papeete', 9, 0),
(14, 'Fairbanks', 1, 0),
(15, 'Sitka', 1, 0),
(16, 'Whitehorse', 12, 0),
(17, 'Juneau', 1, 0),
(18, 'Adamstown', 1, 0),
(19, 'Vancouver', 12, 0),
(20, 'Portland', 1, 0),
(21, 'San Francisco', 1, 0),
(22, 'Seattle', 1, 0),
(23, 'Sacramento', 1, 0),
(24, 'Los Angeles', 1, 0),
(25, 'Riverside', 1, 0),
(26, 'San Diego', 1, 0),
(27, 'Tijuana', 23, 0),
(28, 'Mexicali', 23, 0),
(29, 'Las Vegas', 1, 0),
(30, 'Yellowknife', 12, 0),
(31, 'Calgary', 12, 0),
(32, 'Edmonton', 12, 0),
(33, 'Phoenix', 1, 0),
(34, 'Salt Lake city_name', 1, 0),
(35, 'Tucson', 1, 0),
(36, 'Hanga Roa', 32, 0),
(37, 'Saskatoon', 12, 0),
(38, 'Albuquerque', 1, 0),
(39, 'El Paso', 1, 0),
(40, 'Chihuahua', 23, 0),
(41, 'Denver', 1, 0),
(42, 'Durango', 23, 0),
(43, 'Regina', 12, 0),
(44, 'Zapopan', 23, 0),
(45, 'Guadalajara', 23, 0),
(46, 'Monterrey', 23, 0),
(47, 'Mexico city_name', 23, 0),
(48, 'San Antonio', 1, 0),
(49, 'Puebla', 23, 0),
(50, 'Austin', 1, 0),
(51, 'Oklahoma city_name', 1, 0),
(52, 'Wichita', 1, 0),
(53, 'Winnipeg', 12, 0),
(54, 'Dallas', 1, 0),
(55, 'Veracruz', 23, 0),
(56, 'Houston', 1, 0),
(57, 'Kansas city_name', 1, 0),
(58, 'Minneapolis', 1, 0),
(59, 'Quetzaltenango', 55, 0),
(60, 'Guatemala city_name', 55, 0),
(61, 'New Orleans', 1, 0),
(62, 'Memphis', 1, 0),
(63, 'Mérida', 23, 0),
(64, 'San Salvador', 60, 0),
(65, 'Belmopan', 61, 0),
(66, 'Belize city_name', 61, 0),
(67, 'Milwaukee', 1, 0),
(68, 'Chicago', 1, 0),
(69, 'Tegucigalpa', 65, 0),
(70, 'Nashville', 1, 0),
(71, 'Managua', 67, 0),
(72, 'Indianapolis', 1, 0),
(73, 'Louisville', 1, 0),
(74, 'Cincinnati', 1, 0),
(75, 'Atlanta', 1, 0),
(76, 'San José', 72, 0),
(77, 'Detroit', 1, 0),
(78, 'Columbus', 1, 0),
(79, 'Tampa', 1, 0),
(80, 'Havana', 76, 0),
(81, 'Cleveland', 1, 0),
(82, 'Jacksonville', 1, 0),
(83, 'George Town', 79, 0),
(84, 'Charlotte', 1, 0),
(85, 'Miami', 1, 0),
(86, 'Pittsburgh', 1, 0),
(87, 'Guayaquil', 83, 0),
(88, 'Panama city_name', 84, 0),
(89, 'Toronto', 12, 0),
(90, 'Buffalo', 1, 0),
(91, 'Raleigh', 1, 0),
(92, 'Quito', 83, 0),
(93, 'Rochester', 1, 0),
(94, 'Nassau', 90, 0),
(95, 'Washington', 1, 0),
(96, 'Lima', 92, 0),
(97, 'Kingston', 93, 0),
(98, 'Baltimore', 1, 0),
(99, 'Cali', 95, 0),
(100, 'Virginia Beach', 1, 0),
(101, 'Ottawa', 12, 0),
(102, 'Medellín', 95, 0),
(103, 'Cartagena', 95, 0),
(104, 'Philadelphia', 1, 0),
(105, 'Barranquilla', 95, 0),
(106, 'Forked River', 1, 0),
(107, 'Jersey city_name', 1, 0),
(108, 'Bogotá', 95, 0),
(109, 'Montreal', 12, 0),
(110, 'Iquitos', 92, 0),
(111, 'Valdivia', 32, 0),
(112, 'Concepción', 32, 0),
(113, 'Cusco', 92, 0),
(114, 'Maracaibo', 110, 0),
(115, 'Valparaíso', 32, 0),
(116, 'Arequipa', 92, 0),
(117, 'Providence', 1, 0),
(118, 'La Serena', 32, 0),
(119, 'Cockburn Town', 115, 0),
(120, 'Boston', 1, 0),
(121, 'Punta Arenas', 32, 0),
(122, 'Santiago', 32, 0),
(123, 'Antofagasta', 32, 0),
(124, 'Iquique', 32, 0),
(125, 'Oranjestad', 121, 0),
(126, 'Santo Domingo', 122, 0),
(127, 'Rio Branco', 123, 0),
(128, 'Willemstad', 124, 0),
(129, 'Calama', 32, 0),
(130, 'Mendoza', 126, 0),
(131, 'Iqaluit', 12, 0),
(132, 'Ushuaia', 126, 0),
(133, 'La Paz', 129, 0),
(134, 'Puerto Williams', 32, 0),
(135, 'Caracas', 110, 0),
(136, 'Fredericton', 12, 0),
(137, 'San Juan', 133, 0),
(138, 'Saint John', 134, 0),
(139, 'Sucre', 129, 0),
(140, 'Charlotte Amalie', 1, 0),
(141, 'Hamilton', 137, 0),
(142, 'Road Town', 138, 0),
(143, 'Córdoba', 126, 0),
(144, 'Porto Velho', 123, 0),
(145, 'Charlottetown', 12, 0),
(146, 'The Valley', 142, 0),
(147, 'Basse-Terre', 143, 0),
(148, 'Bahía Blanca', 126, 0),
(149, 'St. John\'s', 12, 0),
(150, 'San Fernando', 146, 0),
(151, 'Roseau', 147, 0),
(152, 'Chaguanas', 146, 0),
(153, 'Kingstown', 149, 0),
(154, 'Castries', 150, 0),
(155, 'Rosario', 126, 0),
(156, 'Boa Vista', 123, 0),
(157, 'Manaus', 123, 0),
(158, 'Bridgetown', 154, 0),
(159, 'Buenos Aires', 126, 0),
(160, 'Stanley', 156, 0),
(161, 'Asunción', 157, 0),
(162, 'Saint-Pierre', 158, 0),
(163, 'Montevideo', 159, 0),
(164, 'Cuiabá', 123, 0),
(165, 'Paramaribo', 161, 0),
(166, 'Campo Grande', 123, 0),
(167, 'Chuí', 123, 0),
(168, 'Pelotas', 123, 0),
(169, 'Cayenne', 165, 0),
(170, 'Nuuk', 166, 0),
(171, 'Porto Alegre', 123, 0),
(172, 'Macapá', 123, 0),
(173, 'Assis', 169, 0),
(174, 'Curitiba', 123, 0),
(175, 'Belém', 123, 0),
(176, 'Brasília', 123, 0),
(177, 'Campinas', 123, 0),
(178, 'São Paulo', 123, 0),
(179, 'Vitória', 123, 0),
(180, 'Ilhéus', 123, 0),
(181, 'Fortaleza', 123, 0),
(182, 'Maceió', 123, 0),
(183, 'Recife', 123, 0),
(184, 'Ponta Delgada', 180, 0),
(185, 'Praia', 123, 0),
(186, 'Reykjavík', 182, 0),
(187, 'Dakar', 183, 0),
(188, 'Thiès', 183, 0),
(189, 'Serekunda', 185, 0),
(190, 'Brikama', 185, 0),
(191, 'Banjul', 185, 0),
(192, 'Nouakchott', 188, 0),
(193, 'Bissau', 189, 0),
(194, 'Conakry', 190, 0),
(195, 'Freetown', 191, 0),
(196, 'El Aaiún', 192, 0),
(197, 'Monrovia', 193, 0),
(198, 'Lisbon', 180, 0),
(199, 'Porto', 123, 0),
(200, 'Bamako', 196, 0),
(201, 'Casablanca', 197, 0),
(202, 'Koulikoro', 196, 0),
(203, 'Rabat', 197, 0),
(204, 'Tórshavn', 200, 0),
(205, 'Dublin', 201, 0),
(206, 'Seville', 202, 0),
(207, 'Belfast', 203, 0),
(208, 'Jamestown', 1, 0),
(209, 'Gibraltar', 205, 0),
(210, 'Yamoussoukro', 206, 0),
(211, 'Douglas', 207, 0),
(212, 'Málaga', 202, 0),
(213, 'Glasgow', 203, 0),
(214, 'Abidjan', 206, 0),
(215, 'Madrid', 202, 0),
(216, 'Cardiff', 203, 0),
(217, 'Edinburgh', 203, 0),
(218, 'Timbuktu', 196, 0),
(219, 'Liverpool', 203, 0),
(220, 'Bilbao', 202, 0),
(221, 'Manchester', 203, 0),
(222, 'Aberdeen', 203, 0),
(223, 'Birmingham', 203, 0),
(224, 'Leeds', 203, 0),
(225, 'Nantes', 221, 0),
(226, 'Ouagadougou', 222, 0),
(227, 'Tamale', 223, 0),
(228, 'Valencia', 202, 0),
(229, 'Accra', 223, 0),
(230, 'London', 203, 0),
(231, 'Greenwich', 203, 0),
(232, 'Lomé', 228, 0),
(233, 'Toulouse', 221, 0),
(234, 'Ibiza', 202, 0),
(235, 'Niamey', 231, 0),
(236, 'Barcelona', 202, 0),
(237, 'Paris', 221, 0),
(238, 'Cotonou', 234, 0),
(239, 'Porto-Novo', 234, 0),
(240, 'Palma', 202, 0),
(241, 'Algiers', 237, 0),
(242, 'Lagos', 238, 0),
(243, 'Ibadan', 238, 0),
(244, 'The Hague', 240, 0),
(245, 'Brussels', 241, 0),
(246, 'Antwerp', 241, 0),
(247, 'Rotterdam', 240, 0),
(248, 'Lyon', 221, 0),
(249, 'Amsterdam', 240, 0),
(250, 'Marseille', 221, 0),
(251, 'Bergen', 247, 0),
(252, 'Geneva', 248, 0),
(253, 'São Tomé', 123, 0),
(254, 'Düsseldorf', 250, 0),
(255, 'Cologne', 250, 0),
(256, 'Cannes', 221, 0),
(257, 'Nice', 221, 0),
(258, 'Monaco', 254, 0),
(259, 'Bern', 123, 0),
(260, 'Abuja', 238, 0),
(261, 'Enugu', 238, 0),
(262, 'Turin', 169, 0),
(263, 'Strasbourg', 221, 0),
(264, 'Kano', 238, 0),
(265, 'Zürich', 248, 0),
(266, 'Frankfurt', 250, 0),
(267, 'Malabo', 263, 0),
(268, 'Stuttgart', 250, 0),
(269, 'Milan', 169, 0),
(270, 'Libreville', 266, 0),
(271, 'Vaduz', 267, 0),
(272, 'Douala', 268, 0),
(273, 'Hanover', 250, 0),
(274, 'Hamburg', 250, 0),
(275, 'Tunis', 271, 0),
(276, 'Aarhus', 272, 0),
(277, 'Oslo', 247, 0),
(278, 'Innsbruck', 274, 0),
(279, 'Yaoundé', 268, 0),
(280, 'Munich', 250, 0),
(281, 'Gothenburg', 277, 0),
(282, 'Leipzig', 250, 0),
(283, 'Rome', 169, 0),
(284, 'Copenhagen', 272, 0),
(285, 'Malmö', 277, 0),
(286, 'Salzburg', 274, 0),
(287, 'Tripoli', 283, 0),
(288, 'Luanda', 284, 0),
(289, 'Berlin', 250, 0),
(290, 'Dresden', 250, 0),
(291, 'Naples', 169, 0),
(292, 'Linz', 274, 0),
(293, 'Prague', 289, 0),
(294, 'Sabha', 283, 0),
(295, 'Birkirkara', 291, 0),
(296, 'Ljubljana', 292, 0),
(297, 'Valletta', 291, 0),
(298, 'N\'Djamena', 294, 0),
(299, 'Brazzaville', 295, 0),
(300, 'Kinshasa', 296, 0),
(301, 'Graz', 274, 0),
(302, 'Longyearbyen', 298, 0),
(303, 'Zagreb', 299, 0),
(304, 'Vienna', 274, 0),
(305, 'Bratislava', 301, 0),
(306, 'Stockholm', 277, 0),
(307, 'Sarajevo', 303, 0),
(308, 'Cape Town', 304, 0),
(309, 'Bangui', 305, 0),
(310, 'Budapest', 306, 0),
(311, 'Podgorica', 307, 0),
(312, 'Tirana', 308, 0),
(313, 'Kraków', 309, 0),
(314, 'Belgrade', 310, 0),
(315, 'Kaliningrad', 311, 0),
(316, 'Warsaw', 309, 0),
(317, 'Pristina', 313, 0),
(318, 'Skopje', 314, 0),
(319, 'Sofia', 315, 0),
(320, 'Athens', 316, 0),
(321, 'Tampere', 317, 0),
(322, 'Lviv', 318, 0),
(323, 'Riga', 319, 0),
(324, 'Espoo', 317, 0),
(325, 'Tallinn', 321, 0),
(326, 'Helsinki', 317, 0),
(327, 'Vilnius', 323, 0),
(328, 'Port Elizabeth', 304, 0),
(329, 'Livingstone', 325, 0),
(330, 'Gaborone', 326, 0),
(331, 'Bucharest', 327, 0),
(332, 'Bloemfontein', 304, 0),
(333, 'Tartu', 329, 0),
(334, 'Lubumbashi', 296, 0),
(335, 'Maseru', 331, 0),
(336, 'Francistown', 326, 0),
(337, 'Minsk', 333, 0),
(338, 'Johannesburg', 304, 0),
(339, 'Pretoria', 304, 0),
(340, 'Lusaka', 325, 0),
(341, 'Ndola', 325, 0),
(342, 'Bulawayo', 338, 0),
(343, 'Istanbul', 339, 0),
(344, 'Bursa', 339, 0),
(345, 'Bujumbura', 341, 0),
(346, 'Tiraspol', 342, 0),
(347, 'Alexandria', 343, 0),
(348, 'Kigali', 344, 0),
(349, 'Saint Petersburg', 311, 0),
(350, 'Odessa', 318, 0),
(351, 'Harare', 338, 0),
(352, 'Durban', 304, 0),
(353, 'Mbabane', 349, 0),
(354, 'Lobamba', 349, 0),
(355, 'Cairo', 343, 0),
(356, 'Manzini', 349, 0),
(357, 'Port Said', 343, 0),
(358, 'Konya', 339, 0),
(359, 'Omdurman', 355, 0),
(360, 'Khartoum', 355, 0),
(361, 'Suez', 343, 0),
(362, 'Maputo', 358, 0),
(363, 'Luxor', 343, 0),
(364, 'Ankara', 339, 0),
(365, 'Mwanza', 361, 0),
(366, 'Murmansk', 311, 0),
(367, 'Nicosia', 363, 0),
(368, 'Lilongwe', 364, 0),
(369, 'Simferopol', 318, 0),
(370, 'Gaza', 366, 0),
(371, 'Mersin', 339, 0),
(372, 'Tel Aviv', 368, 0),
(373, 'Blantyre', 364, 0),
(374, 'Jerusalem', 368, 0),
(375, 'Adana', 339, 0),
(376, 'Beirut', 372, 0),
(377, 'Dodoma', 361, 0),
(378, 'Amman', 374, 0),
(379, 'Damascus', 329, 0),
(380, 'Kharkiv', 318, 0),
(381, 'Nairobi', 377, 0),
(382, 'Gaziantep', 339, 0),
(383, 'Moscow', 311, 0),
(384, 'Addis Ababa', 380, 0),
(385, 'Asmara', 381, 0),
(386, 'Jeddah', 382, 0),
(387, 'Zanzibar city_name', 361, 0),
(388, 'Medina', 382, 0),
(389, 'Mecca', 382, 0),
(390, 'Sukhumi', 386, 0),
(391, 'Moroni', 387, 0),
(392, 'Baghdad', 388, 0),
(393, 'Hargeisa', 389, 0),
(394, 'Yerevan', 390, 0),
(395, 'Tbilisi', 386, 0),
(396, 'Mamoudzou', 392, 0),
(397, 'Mogadishu', 389, 0),
(398, 'Tabriz', 394, 0),
(399, 'Riyadh', 382, 0),
(400, 'Stepanakert', 396, 0),
(401, 'Antananarivo', 397, 0),
(402, 'Basra', 388, 0),
(403, 'Baku', 396, 0),
(404, 'Dammam', 382, 0),
(405, 'Samara', 311, 0),
(406, 'Manama', 402, 0),
(407, 'Tehran', 394, 0),
(408, 'Doha', 404, 0),
(409, 'Abu Dhabi', 405, 0),
(410, 'Dubai', 405, 0),
(411, 'Saint-Denis', 158, 0),
(412, 'Perm', 311, 0),
(413, 'Port Louis', 409, 0),
(414, 'Ashgabat', 410, 0),
(415, 'Muscat', 411, 0),
(416, 'Nukus', 412, 0),
(417, 'Mashhad', 394, 0),
(418, 'Yekaterinburg', 311, 0),
(419, 'Kandahar', 415, 0),
(420, 'Karachi', 416, 0),
(421, 'Hyderabad', 417, 0),
(422, 'Dushanbe', 418, 0),
(423, 'Kabul', 415, 0),
(424, 'Tashkent', 412, 0),
(425, 'Astana', 421, 0),
(426, 'Multan', 416, 0),
(427, 'Peshawar', 416, 0),
(428, 'Namangan', 412, 0),
(429, 'Ahmedabad', 417, 0),
(430, 'Mumbai', 417, 0),
(431, 'Surat', 417, 0),
(432, 'Faisalabad', 416, 0),
(433, 'Rawalpindi', 416, 0),
(434, 'Islamabad', 416, 0),
(435, 'Omsk', 311, 0),
(436, 'Pune', 417, 0),
(437, 'Lahore', 416, 0),
(438, 'Bishkek', 434, 0),
(439, 'Srinagar', 417, 0),
(440, 'Amritsar', 417, 0),
(441, 'Jaipur', 417, 0),
(442, 'Ludhiana', 417, 0),
(443, 'Almaty', 421, 0),
(444, 'New Delhi', 417, 0),
(445, 'Bangalore', 417, 0),
(446, 'Nagpur', 417, 0),
(447, 'Colombo', 443, 0),
(448, 'Chennai', 417, 0),
(449, 'Kanpur', 417, 0),
(450, 'Kandy', 443, 0),
(451, 'Lucknow', 417, 0),
(452, 'Batticaloa', 443, 0),
(453, 'Novosibirsk', 311, 0),
(454, 'Patna', 417, 0),
(455, 'Kathmandu', 451, 0),
(456, 'Ürümqi', 452, 0),
(457, 'Norilsk', 311, 0),
(458, 'Gangtok', 417, 0),
(459, 'Shigatse', 452, 0),
(460, 'Thimphu', 456, 0),
(461, 'Dhaka', 457, 0),
(462, 'Lhasa', 452, 0),
(463, 'Agartala', 417, 0),
(464, 'Guwahati', 417, 0),
(465, 'Chittagong', 457, 0),
(466, 'Shillong', 417, 0),
(467, 'Port Blair', 417, 0),
(468, 'Dibrugarh', 417, 0),
(469, 'Banda Aceh', 465, 0),
(470, 'Yangon', 466, 0),
(471, 'Medan', 465, 0),
(472, 'Chiang Mai', 468, 0),
(473, 'Surat Thani', 468, 0),
(474, 'Padang', 465, 0),
(475, 'Hat Yai', 468, 0),
(476, 'Bangkok', 468, 0),
(477, 'Pattaya', 468, 0),
(478, 'Ipoh', 79, 0),
(479, 'Pekanbaru', 465, 0),
(480, 'Bratsk', 311, 0),
(481, 'Kuala Lumpur', 79, 0),
(482, 'Xining', 452, 0),
(483, 'Nakhon Ratchasima', 468, 0),
(484, 'Kota Bharu', 79, 0),
(485, 'Vientiane', 481, 0),
(486, 'Kunming', 452, 0),
(487, 'Udon Thani', 468, 0),
(488, 'Johor Bahru', 79, 0),
(489, 'Lanzhou', 452, 0),
(490, 'Singapore', 486, 0),
(491, 'Siem Reap', 487, 0),
(492, 'Chengdu', 452, 0),
(493, 'Palembang', 465, 0),
(494, 'Phnom Penh', 487, 0),
(495, 'Hanoi', 491, 0),
(496, 'Chongqing', 452, 0),
(497, 'Hai Phong', 491, 0),
(498, 'Ho Chi Minh city_name', 491, 0),
(499, 'Jakarta', 465, 0),
(500, 'Bogor', 465, 0),
(501, 'Ulan Bator', 497, 0),
(502, 'Bandung', 465, 0),
(503, 'Da Nang', 491, 0),
(504, 'Nanning', 452, 0),
(505, 'Pontianak', 465, 0),
(506, 'Kuching', 79, 0),
(507, 'Semarang', 465, 0),
(508, 'Taiyuan', 452, 0),
(509, 'Malang', 465, 0),
(510, 'Surabaya', 465, 0),
(511, 'Guangzhou', 452, 0),
(512, 'Macau', 508, 0),
(513, 'Zhengzhou', 452, 0),
(514, 'Dongguan', 452, 0),
(515, 'Miri', 79, 0),
(516, 'Shenzhen', 452, 0),
(517, 'Hong Kong', 156, 0),
(518, 'Wuhan', 452, 0),
(519, 'Handan', 452, 0),
(520, 'Shijiazhuang', 452, 0),
(521, 'Bandar Seri Begawan', 517, 0),
(522, 'Denpasar', 465, 0),
(523, 'Mandurah', 207, 0),
(524, 'Perth', 207, 0),
(525, 'Kota Kinabalu', 79, 0),
(526, 'Beijing', 452, 0),
(527, 'Balikpapan', 465, 0),
(528, 'Jinan', 452, 0),
(529, 'Tianjin', 452, 0),
(530, 'Port Hedland', 207, 0),
(531, 'Nanjing', 452, 0),
(532, 'Makassar', 465, 0),
(533, 'Hangzhou', 452, 0),
(534, 'Kaohsiung', 530, 0),
(535, 'Qingdao', 452, 0),
(536, 'Taichung', 530, 0),
(537, 'Manila', 263, 0),
(538, 'Quezon city_name', 263, 0),
(539, 'Shanghai', 452, 0),
(540, 'Taipei', 530, 0),
(541, 'Dalian', 452, 0),
(542, 'Iloilo city_name', 263, 0),
(543, 'Zamboanga city_name', 263, 0),
(544, 'Shenyang', 452, 0),
(545, 'Tagbilaran', 263, 0),
(546, 'Cebu city_name', 263, 0),
(547, 'Changchun', 452, 0),
(548, 'Dili', 196, 0),
(549, 'Pyongyang', 545, 0),
(550, 'Davao city_name', 263, 0),
(551, 'Kaesong', 545, 0),
(552, 'Harbin', 452, 0),
(553, 'Incheon', 549, 0),
(554, 'Seoul', 549, 0),
(555, 'Wonsan', 545, 0),
(556, 'Okinawa', 552, 0),
(557, 'Ambon', 465, 0),
(558, 'Daegu', 549, 0),
(559, 'Busan', 549, 0),
(560, 'Yakutsk', 311, 0),
(561, 'Chongjin', 545, 0),
(562, 'Fukuoka', 552, 0),
(563, 'Darwin', 207, 0),
(564, 'Vladivostok', 311, 0),
(565, 'Hiroshima', 552, 0),
(566, 'Melekeok', 562, 0),
(567, 'Kobe', 552, 0),
(568, 'Osaka', 552, 0),
(569, 'Kyoto', 552, 0),
(570, 'Nagoya', 552, 0),
(571, 'Adelaide', 207, 0),
(572, 'Yokohama', 552, 0),
(573, 'Kawasaki', 552, 0),
(574, 'Jayapura', 465, 0),
(575, 'Sapporo', 552, 0),
(576, 'Geelong', 207, 0),
(577, 'Hagåtña', 1, 0),
(578, 'Dededo', 1, 0),
(579, 'Melbourne', 207, 0),
(580, 'Saipan', 1, 0),
(581, 'Cairns', 207, 0),
(582, 'Townsville', 207, 0),
(583, 'Port Moresby', 579, 0),
(584, 'Hobart', 207, 0),
(585, 'Canberra', 207, 0),
(586, 'Rockhampton', 207, 0),
(587, 'Magadan', 311, 0),
(588, 'Wollongong', 207, 0),
(589, 'Sydney', 207, 0),
(590, 'Newcastle', 203, 0),
(591, 'Weno', 587, 0),
(592, 'Brisbane', 207, 0),
(593, 'Gold Coast', 207, 0),
(594, 'Palikir', 587, 0),
(595, 'Honiara', 591, 0),
(596, 'Nouméa', 592, 0),
(597, 'Invercargill', 593, 0),
(598, 'Dunedin', 593, 0),
(599, 'Majuro', 595, 0),
(600, 'Christchurch', 593, 0),
(601, 'Wellington', 593, 0),
(602, 'Auckland', 593, 0),
(603, 'Suva', 599, 0),
(604, 'Funafuti', 600, 0),
(605, 'Labasa', 599, 0),
(606, 'Nuku?alofa', 602, 0),
(607, 'St. Louis', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `places_countries`
--

CREATE TABLE `places_countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places_countries`
--

INSERT INTO `places_countries` (`id`, `country_name`) VALUES
(1, 'United States'),
(2, 'Samoa'),
(3, 'United States'),
(4, 'Niue'),
(5, 'Cook Islands'),
(6, 'United States'),
(7, 'United States'),
(8, 'United States'),
(9, 'French Polynesia'),
(10, 'United States'),
(11, 'United States'),
(12, 'Canada'),
(13, 'United States'),
(14, 'United States'),
(15, 'Canada'),
(16, 'United States'),
(17, 'United States'),
(18, 'United States'),
(19, 'United States'),
(20, 'United States'),
(21, 'United States'),
(22, 'United States'),
(23, 'Mexico'),
(24, 'Mexico'),
(25, 'United States'),
(26, 'Canada'),
(27, 'Canada'),
(28, 'Canada'),
(29, 'United States'),
(30, 'United States'),
(31, 'United States'),
(32, 'Chile'),
(33, 'Canada'),
(34, 'United States'),
(35, 'United States'),
(36, 'Mexico'),
(37, 'United States'),
(38, 'Mexico'),
(39, 'Canada'),
(40, 'Mexico'),
(41, 'Mexico'),
(42, 'Mexico'),
(43, 'Mexico'),
(44, 'United States'),
(45, 'Mexico'),
(46, 'United States'),
(47, 'United States'),
(48, 'United States'),
(49, 'Canada'),
(50, 'United States'),
(51, 'Mexico'),
(52, 'United States'),
(53, 'United States'),
(54, 'United States'),
(55, 'Guatemala'),
(56, 'Guatemala'),
(57, 'United States'),
(58, 'United States'),
(59, 'Mexico'),
(60, 'El Salvador'),
(61, 'Belize'),
(62, 'Belize'),
(63, 'United States'),
(64, 'United States'),
(65, 'Honduras'),
(66, 'United States'),
(67, 'Nicaragua'),
(68, 'United States'),
(69, 'United States'),
(70, 'United States'),
(71, 'United States'),
(72, 'Costa Rica'),
(73, 'United States'),
(74, 'United States'),
(75, 'United States'),
(76, 'Cuba'),
(77, 'United States'),
(78, 'United States'),
(79, 'Malaysia'),
(80, 'United States'),
(81, 'United States'),
(82, 'United States'),
(83, 'Ecuador'),
(84, 'Panama'),
(85, 'Canada'),
(86, 'United States'),
(87, 'United States'),
(88, 'Ecuador'),
(89, 'United States'),
(90, 'The Bahamas'),
(91, 'United States'),
(92, 'Peru'),
(93, 'Jamaica'),
(94, 'United States'),
(95, 'Colombia'),
(96, 'United States'),
(97, 'Canada'),
(98, 'Colombia'),
(99, 'Colombia'),
(100, 'United States'),
(101, 'Colombia'),
(102, 'United States'),
(103, 'United States'),
(104, 'Colombia'),
(105, 'Canada'),
(106, 'Peru'),
(107, 'Chile'),
(108, 'Chile'),
(109, 'Peru'),
(110, 'Venezuela'),
(111, 'Chile'),
(112, 'Peru'),
(113, 'United States'),
(114, 'Chile'),
(115, 'Turks and Caicos Islands'),
(116, 'United States'),
(117, 'Chile'),
(118, 'Chile'),
(119, 'Chile'),
(120, 'Chile'),
(121, 'Aruba'),
(122, 'Dominican Republic'),
(123, 'Brazil'),
(124, 'Netherlands Antilles'),
(125, 'Chile'),
(126, 'Argentina'),
(127, 'Canada'),
(128, 'Argentina'),
(129, 'Bolivia'),
(130, 'Chile'),
(131, 'Venezuela'),
(132, 'Canada'),
(133, 'Puerto Rico'),
(134, 'Grenada'),
(135, 'Bolivia'),
(136, 'United States'),
(137, 'Bermuda'),
(138, 'British Virgin Islands'),
(139, 'Argentina'),
(140, 'Brazil'),
(141, 'Canada'),
(142, 'Anguilla'),
(143, 'Guadeloupe'),
(144, 'Argentina'),
(145, 'Canada'),
(146, 'Trinidad and Tobago'),
(147, 'Dominica'),
(148, 'Trinidad and Tobago'),
(149, 'Saint Vincent and the Grenadines'),
(150, 'St. Lucia'),
(151, 'Argentina'),
(152, 'Brazil'),
(153, 'Brazil'),
(154, 'Barbados'),
(155, 'Argentina'),
(156, 'Hong Kong'),
(157, 'Paraguay'),
(158, 'Réunion'),
(159, 'Uruguay'),
(160, 'Brazil'),
(161, 'Suriname'),
(162, 'Brazil'),
(163, 'Brazil'),
(164, 'Brazil'),
(165, 'French Guiana'),
(166, 'Greenland'),
(167, 'Brazil'),
(168, 'Brazil'),
(169, 'Italy'),
(170, 'Brazil'),
(171, 'Brazil'),
(172, 'Brazil'),
(173, 'Brazil'),
(174, 'Brazil'),
(175, 'Brazil'),
(176, 'Brazil'),
(177, 'Brazil'),
(178, 'Brazil'),
(179, 'Brazil'),
(180, 'Portugal'),
(181, 'Brazil'),
(182, 'Iceland'),
(183, 'Senegal'),
(184, 'Senegal'),
(185, 'The Gambia'),
(186, 'The Gambia'),
(187, 'The Gambia'),
(188, 'Mauritania'),
(189, 'Guinea-Bissau'),
(190, 'Guinea'),
(191, 'Sierra Leone'),
(192, 'Western Sahara'),
(193, 'Liberia'),
(194, 'Portugal'),
(195, 'Brazil'),
(196, 'Mali'),
(197, 'Morocco'),
(198, 'Mali'),
(199, 'Morocco'),
(200, 'Faroe Islands'),
(201, 'Ireland'),
(202, 'Spain'),
(203, 'United Kingdom'),
(204, 'United States'),
(205, 'Gibraltar'),
(206, 'Côte d\'Ivoire'),
(207, 'Australia'),
(208, 'Spain'),
(209, 'United Kingdom'),
(210, 'Côte d\'Ivoire'),
(211, 'Spain'),
(212, 'United Kingdom'),
(213, 'United Kingdom'),
(214, 'Mali'),
(215, 'United Kingdom'),
(216, 'Spain'),
(217, 'United Kingdom'),
(218, 'United Kingdom'),
(219, 'United Kingdom'),
(220, 'United Kingdom'),
(221, 'France'),
(222, 'Burkina Faso'),
(223, 'Ghana'),
(224, 'Spain'),
(225, 'Ghana'),
(226, 'United Kingdom'),
(227, 'United Kingdom'),
(228, 'Togo'),
(229, 'France'),
(230, 'Spain'),
(231, 'Niger'),
(232, 'Spain'),
(233, 'France'),
(234, 'Benin'),
(235, 'Benin'),
(236, 'Spain'),
(237, 'Algeria'),
(238, 'Nigeria'),
(239, 'Nigeria'),
(240, 'Netherlands'),
(241, 'Belgium'),
(242, 'Belgium'),
(243, 'Netherlands'),
(244, 'France'),
(245, 'Netherlands'),
(246, 'France'),
(247, 'Norway'),
(248, 'Switzerland'),
(249, 'Brazil'),
(250, 'Germany'),
(251, 'Germany'),
(252, 'France'),
(253, 'France'),
(254, 'Monaco'),
(255, 'Brazil'),
(256, 'Nigeria'),
(257, 'Nigeria'),
(258, 'Italy'),
(259, 'France'),
(260, 'Nigeria'),
(261, 'Switzerland'),
(262, 'Germany'),
(263, 'Philippines'),
(264, 'Germany'),
(265, 'Italy'),
(266, 'Gabon'),
(267, 'Liechtenstein'),
(268, 'Cameroon'),
(269, 'Germany'),
(270, 'Germany'),
(271, 'Tunisia'),
(272, 'Denmark'),
(273, 'Norway'),
(274, 'Austria'),
(275, 'Cameroon'),
(276, 'Germany'),
(277, 'Sweden'),
(278, 'Germany'),
(279, 'Italy'),
(280, 'Denmark'),
(281, 'Sweden'),
(282, 'Austria'),
(283, 'Libya'),
(284, 'Angola'),
(285, 'Germany'),
(286, 'Germany'),
(287, 'Italy'),
(288, 'Austria'),
(289, 'Czech Republic'),
(290, 'Libya'),
(291, 'Malta'),
(292, 'Slovenia'),
(293, 'Malta'),
(294, 'Chad'),
(295, 'Republic of the Congo'),
(296, 'Democratic Republic of the Congo'),
(297, 'Austria'),
(298, 'Svalbard and Jan Mayen'),
(299, 'Croatia'),
(300, 'Austria'),
(301, 'Slovakia'),
(302, 'Sweden'),
(303, 'Bosnia and Herzegovina'),
(304, 'South Africa'),
(305, 'Central African Republic'),
(306, 'Hungary'),
(307, 'Montenegro'),
(308, 'Albania'),
(309, 'Poland'),
(310, 'Serbia'),
(311, 'Russia'),
(312, 'Poland'),
(313, 'Kosovo'),
(314, 'Macedonia'),
(315, 'Bulgaria'),
(316, 'Greece'),
(317, 'Finland'),
(318, 'Ukraine'),
(319, 'Latvia'),
(320, 'Finland'),
(321, 'Estonia'),
(322, 'Finland'),
(323, 'Lithuania'),
(324, 'South Africa'),
(325, 'Zambia'),
(326, 'Botswana'),
(327, 'Romania'),
(328, 'South Africa'),
(329, 'Syria'),
(330, 'Democratic Republic of the Congo'),
(331, 'Lesotho'),
(332, 'Botswana'),
(333, 'Belarus'),
(334, 'South Africa'),
(335, 'South Africa'),
(336, 'Zambia'),
(337, 'Zambia'),
(338, 'Zimbabwe'),
(339, 'Turkey'),
(340, 'Turkey'),
(341, 'Burundi'),
(342, 'Moldova'),
(343, 'Egypt'),
(344, 'Rwanda'),
(345, 'Russia'),
(346, 'Ukraine'),
(347, 'Zimbabwe'),
(348, 'South Africa'),
(349, 'Swaziland'),
(350, 'Swaziland'),
(351, 'Egypt'),
(352, 'Swaziland'),
(353, 'Egypt'),
(354, 'Turkey'),
(355, 'Sudan'),
(356, 'Sudan'),
(357, 'Egypt'),
(358, 'Mozambique'),
(359, 'Egypt'),
(360, 'Turkey'),
(361, 'Tanzania'),
(362, 'Russia'),
(363, 'Cyprus'),
(364, 'Malawi'),
(365, 'Ukraine'),
(366, 'Palestine'),
(367, 'Turkey'),
(368, 'Israel'),
(369, 'Malawi'),
(370, 'Israel'),
(371, 'Turkey'),
(372, 'Lebanon'),
(373, 'Tanzania'),
(374, 'Jordan'),
(375, 'Syria'),
(376, 'Ukraine'),
(377, 'Kenya'),
(378, 'Turkey'),
(379, 'Russia'),
(380, 'Ethiopia'),
(381, 'Eritrea'),
(382, 'Saudi Arabia'),
(383, 'Tanzania'),
(384, 'Saudi Arabia'),
(385, 'Saudi Arabia'),
(386, 'Georgia'),
(387, 'Comoros'),
(388, 'Iraq'),
(389, 'Somalia'),
(390, 'Armenia'),
(391, 'Georgia'),
(392, 'Mayotte'),
(393, 'Somalia'),
(394, 'Iran'),
(395, 'Saudi Arabia'),
(396, 'Azerbaijan'),
(397, 'Madagascar'),
(398, 'Iraq'),
(399, 'Azerbaijan'),
(400, 'Saudi Arabia'),
(401, 'Russia'),
(402, 'Bahrain'),
(403, 'Iran'),
(404, 'Qatar'),
(405, 'United Arab Emirates'),
(406, 'United Arab Emirates'),
(407, 'Réunion'),
(408, 'Russia'),
(409, 'Mauritius'),
(410, 'Turkmenistan'),
(411, 'Oman'),
(412, 'Uzbekistan'),
(413, 'Iran'),
(414, 'Russia'),
(415, 'Afghanistan'),
(416, 'Pakistan'),
(417, 'India'),
(418, 'Tajikistan'),
(419, 'Afghanistan'),
(420, 'Uzbekistan'),
(421, 'Kazakhstan'),
(422, 'Pakistan'),
(423, 'Pakistan'),
(424, 'Uzbekistan'),
(425, 'India'),
(426, 'India'),
(427, 'India'),
(428, 'Pakistan'),
(429, 'Pakistan'),
(430, 'Pakistan'),
(431, 'Russia'),
(432, 'India'),
(433, 'Pakistan'),
(434, 'Kyrgyzstan'),
(435, 'India'),
(436, 'India'),
(437, 'India'),
(438, 'India'),
(439, 'Kazakhstan'),
(440, 'India'),
(441, 'India'),
(442, 'India'),
(443, 'Sri Lanka'),
(444, 'India'),
(445, 'India'),
(446, 'Sri Lanka'),
(447, 'India'),
(448, 'Sri Lanka'),
(449, 'Russia'),
(450, 'India'),
(451, 'Nepal'),
(452, 'China'),
(453, 'Russia'),
(454, 'India'),
(455, 'China'),
(456, 'Bhutan'),
(457, 'Bangladesh'),
(458, 'China'),
(459, 'India'),
(460, 'India'),
(461, 'Bangladesh'),
(462, 'India'),
(463, 'India'),
(464, 'India'),
(465, 'Indonesia'),
(466, 'Myanmar'),
(467, 'Indonesia'),
(468, 'Thailand'),
(469, 'Thailand'),
(470, 'Indonesia'),
(471, 'Thailand'),
(472, 'Thailand'),
(473, 'Thailand'),
(474, 'Malaysia'),
(475, 'Indonesia'),
(476, 'Russia'),
(477, 'Malaysia'),
(478, 'China'),
(479, 'Thailand'),
(480, 'Malaysia'),
(481, 'Laos'),
(482, 'China'),
(483, 'Thailand'),
(484, 'Malaysia'),
(485, 'China'),
(486, 'Singapore'),
(487, 'Cambodia'),
(488, 'China'),
(489, 'Indonesia'),
(490, 'Cambodia'),
(491, 'Vietnam'),
(492, 'China'),
(493, 'Vietnam'),
(494, 'Vietnam'),
(495, 'Indonesia'),
(496, 'Indonesia'),
(497, 'Mongolia'),
(498, 'Indonesia'),
(499, 'Vietnam'),
(500, 'China'),
(501, 'Indonesia'),
(502, 'Malaysia'),
(503, 'Indonesia'),
(504, 'China'),
(505, 'Indonesia'),
(506, 'Indonesia'),
(507, 'China'),
(508, 'Macau'),
(509, 'China'),
(510, 'China'),
(511, 'Malaysia'),
(512, 'China'),
(513, 'Hong Kong'),
(514, 'China'),
(515, 'China'),
(516, 'China'),
(517, 'Brunei'),
(518, 'Indonesia'),
(519, 'Australia'),
(520, 'Australia'),
(521, 'Malaysia'),
(522, 'China'),
(523, 'Indonesia'),
(524, 'China'),
(525, 'China'),
(526, 'Australia'),
(527, 'China'),
(528, 'Indonesia'),
(529, 'China'),
(530, 'Taiwan'),
(531, 'China'),
(532, 'Taiwan'),
(533, 'Philippines'),
(534, 'Philippines'),
(535, 'China'),
(536, 'Taiwan'),
(537, 'China'),
(538, 'Philippines'),
(539, 'Philippines'),
(540, 'China'),
(541, 'Philippines'),
(542, 'Philippines'),
(543, 'China'),
(544, 'Mali'),
(545, 'North Korea'),
(546, 'Philippines'),
(547, 'North Korea'),
(548, 'China'),
(549, 'South Korea'),
(550, 'South Korea'),
(551, 'North Korea'),
(552, 'Japan'),
(553, 'Indonesia'),
(554, 'South Korea'),
(555, 'South Korea'),
(556, 'Russia'),
(557, 'North Korea'),
(558, 'Japan'),
(559, 'Australia'),
(560, 'Russia'),
(561, 'Japan'),
(562, 'Palau'),
(563, 'Japan'),
(564, 'Japan'),
(565, 'Japan'),
(566, 'Japan'),
(567, 'Australia'),
(568, 'Japan'),
(569, 'Japan'),
(570, 'Indonesia'),
(571, 'Japan'),
(572, 'Australia'),
(573, 'United States'),
(574, 'United States'),
(575, 'Australia'),
(576, 'United States'),
(577, 'Australia'),
(578, 'Australia'),
(579, 'Papua New Guinea'),
(580, 'Australia'),
(581, 'Australia'),
(582, 'Australia'),
(583, 'Russia'),
(584, 'Australia'),
(585, 'Australia'),
(586, 'United Kingdom'),
(587, 'Federated States of Micronesia'),
(588, 'Australia'),
(589, 'Australia'),
(590, 'Federated States of Micronesia'),
(591, 'Solomon Islands'),
(592, 'New Caledonia'),
(593, 'New Zealand'),
(594, 'New Zealand'),
(595, 'Marshall Islands'),
(596, 'New Zealand'),
(597, 'New Zealand'),
(598, 'New Zealand'),
(599, 'Fiji'),
(600, 'Tuvalu'),
(601, 'Fiji'),
(602, 'Tonga'),
(603, 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `places_hotel`
--

CREATE TABLE `places_hotel` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `hotel_ranking` int(11) NOT NULL,
  `city_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `places_locations`
--

CREATE TABLE `places_locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `city_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `country_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `country_name`) VALUES
(1, 'United States'),
(2, 'Samoa'),
(3, 'United States'),
(4, 'Niue'),
(5, 'Cook Islands'),
(6, 'United States'),
(7, 'United States'),
(8, 'United States'),
(9, 'French Polynesia'),
(10, 'United States'),
(11, 'United States'),
(12, 'Canada'),
(13, 'United States'),
(14, 'United States'),
(15, 'Canada'),
(16, 'United States'),
(17, 'United States'),
(18, 'United States'),
(19, 'United States'),
(20, 'United States'),
(21, 'United States'),
(22, 'United States'),
(23, 'Mexico'),
(24, 'Mexico'),
(25, 'United States'),
(26, 'Canada'),
(27, 'Canada'),
(28, 'Canada'),
(29, 'United States'),
(30, 'United States'),
(31, 'United States'),
(32, 'Chile'),
(33, 'Canada'),
(34, 'United States'),
(35, 'United States'),
(36, 'Mexico'),
(37, 'United States'),
(38, 'Mexico'),
(39, 'Canada'),
(40, 'Mexico'),
(41, 'Mexico'),
(42, 'Mexico'),
(43, 'Mexico'),
(44, 'United States'),
(45, 'Mexico'),
(46, 'United States'),
(47, 'United States'),
(48, 'United States'),
(49, 'Canada'),
(50, 'United States'),
(51, 'Mexico'),
(52, 'United States'),
(53, 'United States'),
(54, 'United States'),
(55, 'Guatemala'),
(56, 'Guatemala'),
(57, 'United States'),
(58, 'United States'),
(59, 'Mexico'),
(60, 'El Salvador'),
(61, 'Belize'),
(62, 'Belize'),
(63, 'United States'),
(64, 'United States'),
(65, 'Honduras'),
(66, 'United States'),
(67, 'Nicaragua'),
(68, 'United States'),
(69, 'United States'),
(70, 'United States'),
(71, 'United States'),
(72, 'Costa Rica'),
(73, 'United States'),
(74, 'United States'),
(75, 'United States'),
(76, 'Cuba'),
(77, 'United States'),
(78, 'United States'),
(79, 'Malaysia'),
(80, 'United States'),
(81, 'United States'),
(82, 'United States'),
(83, 'Ecuador'),
(84, 'Panama'),
(85, 'Canada'),
(86, 'United States'),
(87, 'United States'),
(88, 'Ecuador'),
(89, 'United States'),
(90, 'The Bahamas'),
(91, 'United States'),
(92, 'Peru'),
(93, 'Jamaica'),
(94, 'United States'),
(95, 'Colombia'),
(96, 'United States'),
(97, 'Canada'),
(98, 'Colombia'),
(99, 'Colombia'),
(100, 'United States'),
(101, 'Colombia'),
(102, 'United States'),
(103, 'United States'),
(104, 'Colombia'),
(105, 'Canada'),
(106, 'Peru'),
(107, 'Chile'),
(108, 'Chile'),
(109, 'Peru'),
(110, 'Venezuela'),
(111, 'Chile'),
(112, 'Peru'),
(113, 'United States'),
(114, 'Chile'),
(115, 'Turks and Caicos Islands'),
(116, 'United States'),
(117, 'Chile'),
(118, 'Chile'),
(119, 'Chile'),
(120, 'Chile'),
(121, 'Aruba'),
(122, 'Dominican Republic'),
(123, 'Brazil'),
(124, 'Netherlands Antilles'),
(125, 'Chile'),
(126, 'Argentina'),
(127, 'Canada'),
(128, 'Argentina'),
(129, 'Bolivia'),
(130, 'Chile'),
(131, 'Venezuela'),
(132, 'Canada'),
(133, 'Puerto Rico'),
(134, 'Grenada'),
(135, 'Bolivia'),
(136, 'United States'),
(137, 'Bermuda'),
(138, 'British Virgin Islands'),
(139, 'Argentina'),
(140, 'Brazil'),
(141, 'Canada'),
(142, 'Anguilla'),
(143, 'Guadeloupe'),
(144, 'Argentina'),
(145, 'Canada'),
(146, 'Trinidad and Tobago'),
(147, 'Dominica'),
(148, 'Trinidad and Tobago'),
(149, 'Saint Vincent and the Grenadines'),
(150, 'St. Lucia'),
(151, 'Argentina'),
(152, 'Brazil'),
(153, 'Brazil'),
(154, 'Barbados'),
(155, 'Argentina'),
(156, 'Hong Kong'),
(157, 'Paraguay'),
(158, 'Réunion'),
(159, 'Uruguay'),
(160, 'Brazil'),
(161, 'Suriname'),
(162, 'Brazil'),
(163, 'Brazil'),
(164, 'Brazil'),
(165, 'French Guiana'),
(166, 'Greenland'),
(167, 'Brazil'),
(168, 'Brazil'),
(169, 'Italy'),
(170, 'Brazil'),
(171, 'Brazil'),
(172, 'Brazil'),
(173, 'Brazil'),
(174, 'Brazil'),
(175, 'Brazil'),
(176, 'Brazil'),
(177, 'Brazil'),
(178, 'Brazil'),
(179, 'Brazil'),
(180, 'Portugal'),
(181, 'Brazil'),
(182, 'Iceland'),
(183, 'Senegal'),
(184, 'Senegal'),
(185, 'The Gambia'),
(186, 'The Gambia'),
(187, 'The Gambia'),
(188, 'Mauritania'),
(189, 'Guinea-Bissau'),
(190, 'Guinea'),
(191, 'Sierra Leone'),
(192, 'Western Sahara'),
(193, 'Liberia'),
(194, 'Portugal'),
(195, 'Brazil'),
(196, 'Mali'),
(197, 'Morocco'),
(198, 'Mali'),
(199, 'Morocco'),
(200, 'Faroe Islands'),
(201, 'Ireland'),
(202, 'Spain'),
(203, 'United Kingdom'),
(204, 'United States'),
(205, 'Gibraltar'),
(206, 'Côte d\'Ivoire'),
(207, 'Australia'),
(208, 'Spain'),
(209, 'United Kingdom'),
(210, 'Côte d\'Ivoire'),
(211, 'Spain'),
(212, 'United Kingdom'),
(213, 'United Kingdom'),
(214, 'Mali'),
(215, 'United Kingdom'),
(216, 'Spain'),
(217, 'United Kingdom'),
(218, 'United Kingdom'),
(219, 'United Kingdom'),
(220, 'United Kingdom'),
(221, 'France'),
(222, 'Burkina Faso'),
(223, 'Ghana'),
(224, 'Spain'),
(225, 'Ghana'),
(226, 'United Kingdom'),
(227, 'United Kingdom'),
(228, 'Togo'),
(229, 'France'),
(230, 'Spain'),
(231, 'Niger'),
(232, 'Spain'),
(233, 'France'),
(234, 'Benin'),
(235, 'Benin'),
(236, 'Spain'),
(237, 'Algeria'),
(238, 'Nigeria'),
(239, 'Nigeria'),
(240, 'Netherlands'),
(241, 'Belgium'),
(242, 'Belgium'),
(243, 'Netherlands'),
(244, 'France'),
(245, 'Netherlands'),
(246, 'France'),
(247, 'Norway'),
(248, 'Switzerland'),
(249, 'Brazil'),
(250, 'Germany'),
(251, 'Germany'),
(252, 'France'),
(253, 'France'),
(254, 'Monaco'),
(255, 'Brazil'),
(256, 'Nigeria'),
(257, 'Nigeria'),
(258, 'Italy'),
(259, 'France'),
(260, 'Nigeria'),
(261, 'Switzerland'),
(262, 'Germany'),
(263, 'Philippines'),
(264, 'Germany'),
(265, 'Italy'),
(266, 'Gabon'),
(267, 'Liechtenstein'),
(268, 'Cameroon'),
(269, 'Germany'),
(270, 'Germany'),
(271, 'Tunisia'),
(272, 'Denmark'),
(273, 'Norway'),
(274, 'Austria'),
(275, 'Cameroon'),
(276, 'Germany'),
(277, 'Sweden'),
(278, 'Germany'),
(279, 'Italy'),
(280, 'Denmark'),
(281, 'Sweden'),
(282, 'Austria'),
(283, 'Libya'),
(284, 'Angola'),
(285, 'Germany'),
(286, 'Germany'),
(287, 'Italy'),
(288, 'Austria'),
(289, 'Czech Republic'),
(290, 'Libya'),
(291, 'Malta'),
(292, 'Slovenia'),
(293, 'Malta'),
(294, 'Chad'),
(295, 'Republic of the Congo'),
(296, 'Democratic Republic of the Congo'),
(297, 'Austria'),
(298, 'Svalbard and Jan Mayen'),
(299, 'Croatia'),
(300, 'Austria'),
(301, 'Slovakia'),
(302, 'Sweden'),
(303, 'Bosnia and Herzegovina'),
(304, 'South Africa'),
(305, 'Central African Republic'),
(306, 'Hungary'),
(307, 'Montenegro'),
(308, 'Albania'),
(309, 'Poland'),
(310, 'Serbia'),
(311, 'Russia'),
(312, 'Poland'),
(313, 'Kosovo'),
(314, 'Macedonia'),
(315, 'Bulgaria'),
(316, 'Greece'),
(317, 'Finland'),
(318, 'Ukraine'),
(319, 'Latvia'),
(320, 'Finland'),
(321, 'Estonia'),
(322, 'Finland'),
(323, 'Lithuania'),
(324, 'South Africa'),
(325, 'Zambia'),
(326, 'Botswana'),
(327, 'Romania'),
(328, 'South Africa'),
(329, 'Syria'),
(330, 'Democratic Republic of the Congo'),
(331, 'Lesotho'),
(332, 'Botswana'),
(333, 'Belarus'),
(334, 'South Africa'),
(335, 'South Africa'),
(336, 'Zambia'),
(337, 'Zambia'),
(338, 'Zimbabwe'),
(339, 'Turkey'),
(340, 'Turkey'),
(341, 'Burundi'),
(342, 'Moldova'),
(343, 'Egypt'),
(344, 'Rwanda'),
(345, 'Russia'),
(346, 'Ukraine'),
(347, 'Zimbabwe'),
(348, 'South Africa'),
(349, 'Swaziland'),
(350, 'Swaziland'),
(351, 'Egypt'),
(352, 'Swaziland'),
(353, 'Egypt'),
(354, 'Turkey'),
(355, 'Sudan'),
(356, 'Sudan'),
(357, 'Egypt'),
(358, 'Mozambique'),
(359, 'Egypt'),
(360, 'Turkey'),
(361, 'Tanzania'),
(362, 'Russia'),
(363, 'Cyprus'),
(364, 'Malawi'),
(365, 'Ukraine'),
(366, 'Palestine'),
(367, 'Turkey'),
(368, 'Israel'),
(369, 'Malawi'),
(370, 'Israel'),
(371, 'Turkey'),
(372, 'Lebanon'),
(373, 'Tanzania'),
(374, 'Jordan'),
(375, 'Syria'),
(376, 'Ukraine'),
(377, 'Kenya'),
(378, 'Turkey'),
(379, 'Russia'),
(380, 'Ethiopia'),
(381, 'Eritrea'),
(382, 'Saudi Arabia'),
(383, 'Tanzania'),
(384, 'Saudi Arabia'),
(385, 'Saudi Arabia'),
(386, 'Georgia'),
(387, 'Comoros'),
(388, 'Iraq'),
(389, 'Somalia'),
(390, 'Armenia'),
(391, 'Georgia'),
(392, 'Mayotte'),
(393, 'Somalia'),
(394, 'Iran'),
(395, 'Saudi Arabia'),
(396, 'Azerbaijan'),
(397, 'Madagascar'),
(398, 'Iraq'),
(399, 'Azerbaijan'),
(400, 'Saudi Arabia'),
(401, 'Russia'),
(402, 'Bahrain'),
(403, 'Iran'),
(404, 'Qatar'),
(405, 'United Arab Emirates'),
(406, 'United Arab Emirates'),
(407, 'Réunion'),
(408, 'Russia'),
(409, 'Mauritius'),
(410, 'Turkmenistan'),
(411, 'Oman'),
(412, 'Uzbekistan'),
(413, 'Iran'),
(414, 'Russia'),
(415, 'Afghanistan'),
(416, 'Pakistan'),
(417, 'India'),
(418, 'Tajikistan'),
(419, 'Afghanistan'),
(420, 'Uzbekistan'),
(421, 'Kazakhstan'),
(422, 'Pakistan'),
(423, 'Pakistan'),
(424, 'Uzbekistan'),
(425, 'India'),
(426, 'India'),
(427, 'India'),
(428, 'Pakistan'),
(429, 'Pakistan'),
(430, 'Pakistan'),
(431, 'Russia'),
(432, 'India'),
(433, 'Pakistan'),
(434, 'Kyrgyzstan'),
(435, 'India'),
(436, 'India'),
(437, 'India'),
(438, 'India'),
(439, 'Kazakhstan'),
(440, 'India'),
(441, 'India'),
(442, 'India'),
(443, 'Sri Lanka'),
(444, 'India'),
(445, 'India'),
(446, 'Sri Lanka'),
(447, 'India'),
(448, 'Sri Lanka'),
(449, 'Russia'),
(450, 'India'),
(451, 'Nepal'),
(452, 'China'),
(453, 'Russia'),
(454, 'India'),
(455, 'China'),
(456, 'Bhutan'),
(457, 'Bangladesh'),
(458, 'China'),
(459, 'India'),
(460, 'India'),
(461, 'Bangladesh'),
(462, 'India'),
(463, 'India'),
(464, 'India'),
(465, 'Indonesia'),
(466, 'Myanmar'),
(467, 'Indonesia'),
(468, 'Thailand'),
(469, 'Thailand'),
(470, 'Indonesia'),
(471, 'Thailand'),
(472, 'Thailand'),
(473, 'Thailand'),
(474, 'Malaysia'),
(475, 'Indonesia'),
(476, 'Russia'),
(477, 'Malaysia'),
(478, 'China'),
(479, 'Thailand'),
(480, 'Malaysia'),
(481, 'Laos'),
(482, 'China'),
(483, 'Thailand'),
(484, 'Malaysia'),
(485, 'China'),
(486, 'Singapore'),
(487, 'Cambodia'),
(488, 'China'),
(489, 'Indonesia'),
(490, 'Cambodia'),
(491, 'Vietnam'),
(492, 'China'),
(493, 'Vietnam'),
(494, 'Vietnam'),
(495, 'Indonesia'),
(496, 'Indonesia'),
(497, 'Mongolia'),
(498, 'Indonesia'),
(499, 'Vietnam'),
(500, 'China'),
(501, 'Indonesia'),
(502, 'Malaysia'),
(503, 'Indonesia'),
(504, 'China'),
(505, 'Indonesia'),
(506, 'Indonesia'),
(507, 'China'),
(508, 'Macau'),
(509, 'China'),
(510, 'China'),
(511, 'Malaysia'),
(512, 'China'),
(513, 'Hong Kong'),
(514, 'China'),
(515, 'China'),
(516, 'China'),
(517, 'Brunei'),
(518, 'Indonesia'),
(519, 'Australia'),
(520, 'Australia'),
(521, 'Malaysia'),
(522, 'China'),
(523, 'Indonesia'),
(524, 'China'),
(525, 'China'),
(526, 'Australia'),
(527, 'China'),
(528, 'Indonesia'),
(529, 'China'),
(530, 'Taiwan'),
(531, 'China'),
(532, 'Taiwan'),
(533, 'Philippines'),
(534, 'Philippines'),
(535, 'China'),
(536, 'Taiwan'),
(537, 'China'),
(538, 'Philippines'),
(539, 'Philippines'),
(540, 'China'),
(541, 'Philippines'),
(542, 'Philippines'),
(543, 'China'),
(544, 'Mali'),
(545, 'North Korea'),
(546, 'Philippines'),
(547, 'North Korea'),
(548, 'China'),
(549, 'South Korea'),
(550, 'South Korea'),
(551, 'North Korea'),
(552, 'Japan'),
(553, 'Indonesia'),
(554, 'South Korea'),
(555, 'South Korea'),
(556, 'Russia'),
(557, 'North Korea'),
(558, 'Japan'),
(559, 'Australia'),
(560, 'Russia'),
(561, 'Japan'),
(562, 'Palau'),
(563, 'Japan'),
(564, 'Japan'),
(565, 'Japan'),
(566, 'Japan'),
(567, 'Australia'),
(568, 'Japan'),
(569, 'Japan'),
(570, 'Indonesia'),
(571, 'Japan'),
(572, 'Australia'),
(573, 'United States'),
(574, 'United States'),
(575, 'Australia'),
(576, 'United States'),
(577, 'Australia'),
(578, 'Australia'),
(579, 'Papua New Guinea'),
(580, 'Australia'),
(581, 'Australia'),
(582, 'Australia'),
(583, 'Russia'),
(584, 'Australia'),
(585, 'Australia'),
(586, 'United Kingdom'),
(587, 'Federated States of Micronesia'),
(588, 'Australia'),
(589, 'Australia'),
(590, 'Federated States of Micronesia'),
(591, 'Solomon Islands'),
(592, 'New Caledonia'),
(593, 'New Zealand'),
(594, 'New Zealand'),
(595, 'Marshall Islands'),
(596, 'New Zealand'),
(597, 'New Zealand'),
(598, 'New Zealand'),
(599, 'Fiji'),
(600, 'Tuvalu'),
(601, 'Fiji'),
(602, 'Tonga'),
(603, 'United States');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication_users`
--
ALTER TABLE `authentication_users`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_user_experience_id_i_4ceaa5b8_fk_blog_user` (`user_experience_id_id`),
  ADD KEY `blog_comments_user_id_id_00db7ae9_fk_authentication_users_id` (`user_id_id`);

--
-- Indexes for table `blog_user_experiences`
--
ALTER TABLE `blog_user_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_user_experiences_city_id_id_32349e4c_fk_places_cities_id` (`city_id_id`),
  ADD KEY `blog_user_experience_user_id_id_275dd6d2_fk_authentic` (`user_id_id`);

--
-- Indexes for table `car_rental_rides`
--
ALTER TABLE `car_rental_rides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_rental_rides_user_id_id_455b9681_fk_authentication_users_id` (`user_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

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
-- Indexes for table `hotel_reservation_reservations`
--
ALTER TABLE `hotel_reservation_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_reservation_re_hotel_id_ee9cd097_fk_places_ho` (`hotel_id`),
  ADD KEY `hotel_reservation_re_user_id_bb319e57_fk_authentic` (`user_id`);

--
-- Indexes for table `places_cities`
--
ALTER TABLE `places_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_cities_country_id_id_39ad4fc8_fk_places_countries_id` (`country_id_id`);

--
-- Indexes for table `places_countries`
--
ALTER TABLE `places_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places_hotel`
--
ALTER TABLE `places_hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_hotel_city_id_id_d445d063_fk_places_cities_id` (`city_id_id`);

--
-- Indexes for table `places_locations`
--
ALTER TABLE `places_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_locations_city_id_id_a81a4f45_fk_places_cities_id` (`city_id_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication_users`
--
ALTER TABLE `authentication_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_user_experiences`
--
ALTER TABLE `blog_user_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `car_rental_rides`
--
ALTER TABLE `car_rental_rides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `hotel_reservation_reservations`
--
ALTER TABLE `hotel_reservation_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `places_cities`
--
ALTER TABLE `places_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;
--
-- AUTO_INCREMENT for table `places_countries`
--
ALTER TABLE `places_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
--
-- AUTO_INCREMENT for table `places_hotel`
--
ALTER TABLE `places_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `places_locations`
--
ALTER TABLE `places_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
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
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_user_experience_id_i_4ceaa5b8_fk_blog_user` FOREIGN KEY (`user_experience_id_id`) REFERENCES `blog_user_experiences` (`id`),
  ADD CONSTRAINT `blog_comments_user_id_id_00db7ae9_fk_authentication_users_id` FOREIGN KEY (`user_id_id`) REFERENCES `authentication_users` (`id`);

--
-- Constraints for table `blog_user_experiences`
--
ALTER TABLE `blog_user_experiences`
  ADD CONSTRAINT `blog_user_experience_user_id_id_275dd6d2_fk_authentic` FOREIGN KEY (`user_id_id`) REFERENCES `authentication_users` (`id`),
  ADD CONSTRAINT `blog_user_experiences_city_id_id_32349e4c_fk_places_cities_id` FOREIGN KEY (`city_id_id`) REFERENCES `places_cities` (`id`);

--
-- Constraints for table `car_rental_rides`
--
ALTER TABLE `car_rental_rides`
  ADD CONSTRAINT `car_rental_rides_user_id_id_455b9681_fk_authentication_users_id` FOREIGN KEY (`user_id_id`) REFERENCES `authentication_users` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hotel_reservation_reservations`
--
ALTER TABLE `hotel_reservation_reservations`
  ADD CONSTRAINT `hotel_reservation_re_hotel_id_ee9cd097_fk_places_ho` FOREIGN KEY (`hotel_id`) REFERENCES `places_hotel` (`id`),
  ADD CONSTRAINT `hotel_reservation_re_user_id_bb319e57_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_users` (`id`);

--
-- Constraints for table `places_cities`
--
ALTER TABLE `places_cities`
  ADD CONSTRAINT `places_cities_country_id_id_39ad4fc8_fk_places_countries_id` FOREIGN KEY (`country_id_id`) REFERENCES `places_countries` (`id`);

--
-- Constraints for table `places_hotel`
--
ALTER TABLE `places_hotel`
  ADD CONSTRAINT `places_hotel_city_id_id_d445d063_fk_places_cities_id` FOREIGN KEY (`city_id_id`) REFERENCES `places_cities` (`id`);

--
-- Constraints for table `places_locations`
--
ALTER TABLE `places_locations`
  ADD CONSTRAINT `places_locations_city_id_id_a81a4f45_fk_places_cities_id` FOREIGN KEY (`city_id_id`) REFERENCES `places_cities` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
