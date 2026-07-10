-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2026 at 07:47 PM
-- Server version: 8.0.46
-- PHP Version: 8.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `state_of_origin` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `local_govt` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `next_of_kin` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jamb_score` int DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admission_status` tinyint(1) DEFAULT '0' COMMENT '0=Pending, 1=Admitted, 2=Declined',
  `class` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Nursery',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `date_of_birth`, `gender`, `phone`, `address`, `state_of_origin`, `local_govt`, `next_of_kin`, `jamb_score`, `profile_image`, `admission_status`, `class`, `created_at`) VALUES
(1, 'Kwame', '', 'Mensah', 'kwame.mensah1@ghana.edu', '2018-05-12', 'Male', '0241234567', '12 Kumasi Road, Ashanti', 'Ashanti', 'Kumasi', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=1', 0, 'Nursery 1', '2026-06-24 19:28:07'),
(2, 'Ama', '', 'Osei', 'ama.osei2@ghana.edu', '2019-08-23', 'Female', '0241234568', '34 Obuasi Road, Ashanti', 'Ashanti', 'Obuasi', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=2', 1, 'Nursery 1', '2026-06-24 19:28:07'),
(3, 'Yaw', '', 'Appiah', 'yaw.appiah3@ghana.edu', '2018-11-02', 'Male', '0241234569', '56 Odu Road, Ashanti', 'Ashanti', 'Odu', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=3', 0, 'Nursery 1', '2026-06-24 19:28:07'),
(4, 'Akua', '', 'Asante', 'akua.asante4@ghana.edu', '2019-01-15', 'Female', '0241234570', '78 Ejisu Road, Ashanti', 'Ashanti', 'Ejisu', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=4', 2, 'Nursery 1', '2026-06-24 19:28:07'),
(5, 'Kofi', '', 'Adjei', 'kofi.adjei5@ghana.edu', '2018-09-30', 'Male', '0241234571', '90 Mampong Road, Ashanti', 'Ashanti', 'Mampong', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=5', 0, 'Nursery 1', '2026-06-24 19:28:07'),
(6, 'Esi', '', 'Tetteh', 'esi.tetteh6@ghana.edu', '2019-07-19', 'Female', '0241234572', '21 Konongo Road, Ashanti', 'Ashanti', 'Konongo', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=6', 1, 'Nursery 1', '2026-06-24 19:28:07'),
(7, 'Kojo', '', 'Quaye', 'kojo.quaye7@ghana.edu', '2018-03-11', 'Male', '0241234573', '43 Sunyani Road, Brong-Ahafo', 'Brong-Ahafo', 'Sunyani', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=7', 0, 'Nursery 1', '2026-06-24 19:28:07'),
(8, 'Abena', '', 'Sarpong', 'abena.sarpong8@ghana.edu', '2019-12-25', 'Female', '0241234574', '65 Techiman Road, Brong-Ahafo', 'Brong-Ahafo', 'Techiman', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=8', 0, 'Nursery 1', '2026-06-24 19:28:07'),
(9, 'Kwaku', '', 'Boateng', 'kwaku.boateng9@ghana.edu', '2018-06-07', 'Male', '0241234575', '87 Berekum Road, Brong-Ahafo', 'Brong-Ahafo', 'Berekum', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=9', 1, 'Nursery 1', '2026-06-24 19:28:07'),
(10, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo10@ghana.edu', '2019-04-18', 'Female', '0241234576', '98 Dormaa Road, Brong-Ahafo', 'Brong-Ahafo', 'Dormaa', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=10', 0, 'Nursery 1', '2026-06-24 19:28:07'),
(11, 'Kweku', '', 'Agyemang', 'kweku.agyemang11@ghana.edu', '2017-02-14', 'Male', '0241234577', '11 Cape Coast Road, Central', 'Central', 'Cape Coast', 'Akosua Agyemang', 0, 'https://i.pravatar.cc/300?img=11', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(12, 'Afia', '', 'Acheampong', 'afia.acheampong12@ghana.edu', '2018-10-20', 'Female', '0241234578', '22 Sekondi-Takoradi Road, Central', 'Central', 'Sekondi-Takoradi', 'Kwame Acheampong', 0, 'https://i.pravatar.cc/300?img=12', 2, 'Nursery 2', '2026-06-24 19:28:07'),
(13, 'Kobina', '', 'Boadi', 'kobina.boadi13@ghana.edu', '2017-08-08', 'Male', '0241234579', '33 Elmina Road, Central', 'Central', 'Elmina', 'Ama Boadi', 0, 'https://i.pravatar.cc/300?img=13', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(14, 'Efua', '', 'Dankwa', 'efua.dankwa14@ghana.edu', '2018-03-25', 'Female', '0241234580', '44 Mfantsiman Road, Central', 'Central', 'Mfantsiman', 'Kofi Dankwa', 0, 'https://i.pravatar.cc/300?img=14', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(15, 'Kwesi', '', 'Oduro', 'kwesi.oduro15@ghana.edu', '2017-12-12', 'Male', '0241234581', '55 Abura Road, Central', 'Central', 'Abura', 'Esi Oduro', 0, 'https://i.pravatar.cc/300?img=15', 1, 'Nursery 2', '2026-06-24 19:28:07'),
(16, 'Akosua', '', 'Asare', 'akosua.asare16@ghana.edu', '2018-07-01', 'Female', '0241234582', '66 Komenda Road, Central', 'Central', 'Komenda', 'Kojo Asare', 0, 'https://i.pravatar.cc/300?img=16', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(17, 'Yaw', '', 'Amoah', 'yaw.amoah17@ghana.edu', '2017-09-19', 'Male', '0241234583', '77 Koforidua Road, Eastern', 'Eastern', 'Koforidua', 'Adwoa Amoah', 0, 'https://i.pravatar.cc/300?img=17', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(18, 'Adjoa', '', 'Opoku', 'adjoa.opoku18@ghana.edu', '2018-05-05', 'Female', '0241234584', '88 Akwatia Road, Eastern', 'Eastern', 'Akwatia', 'Kwaku Opoku', 0, 'https://i.pravatar.cc/300?img=18', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(19, 'Kofi', '', 'Kumi', 'kofi.kumi19@ghana.edu', '2017-11-23', 'Male', '0241234585', '99 Nsawam Road, Eastern', 'Eastern', 'Nsawam', 'Akua Kumi', 0, 'https://i.pravatar.cc/300?img=19', 2, 'Nursery 2', '2026-06-24 19:28:07'),
(20, 'Ama', '', 'Djan', 'ama.djan20@ghana.edu', '2018-02-17', 'Female', '0241234586', '10 Suhum Road, Eastern', 'Eastern', 'Suhum', 'Kweku Djan', 0, 'https://i.pravatar.cc/300?img=20', 0, 'Nursery 2', '2026-06-24 19:28:07'),
(21, 'Kwame', '', 'Mensah', 'kwame.mensah21@ghana.edu', '2016-06-18', 'Male', '0241234587', '21 Accra Road, Greater Accra', 'Greater Accra', 'Accra', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=21', 0, 'KG 1', '2026-06-24 19:28:07'),
(22, 'Ama', '', 'Osei', 'ama.osei22@ghana.edu', '2017-09-22', 'Female', '0241234588', '32 Tema Road, Greater Accra', 'Greater Accra', 'Tema', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=22', 1, 'KG 1', '2026-06-24 19:28:07'),
(23, 'Yaw', '', 'Appiah', 'yaw.appiah23@ghana.edu', '2016-12-08', 'Male', '0241234589', '43 Ga East Road, Greater Accra', 'Greater Accra', 'Ga East', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=23', 0, 'KG 1', '2026-06-24 19:28:07'),
(24, 'Akua', '', 'Asante', 'akua.asante24@ghana.edu', '2017-03-15', 'Female', '0241234590', '54 Ga West Road, Greater Accra', 'Greater Accra', 'Ga West', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=24', 0, 'KG 1', '2026-06-24 19:28:07'),
(25, 'Kofi', '', 'Adjei', 'kofi.adjei25@ghana.edu', '2016-08-28', 'Male', '0241234591', '65 Ashaiman Road, Greater Accra', 'Greater Accra', 'Ashaiman', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=25', 2, 'KG 1', '2026-06-24 19:28:07'),
(26, 'Esi', '', 'Tetteh', 'esi.tetteh26@ghana.edu', '2017-11-11', 'Female', '0241234592', '76 Adenta Road, Greater Accra', 'Greater Accra', 'Adenta', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=26', 0, 'KG 1', '2026-06-24 19:28:07'),
(27, 'Kojo', '', 'Quaye', 'kojo.quaye27@ghana.edu', '2016-04-05', 'Male', '0241234593', '87 Tamale Road, Northern', 'Northern', 'Tamale', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=27', 0, 'KG 1', '2026-06-24 19:28:07'),
(28, 'Abena', '', 'Sarpong', 'abena.sarpong28@ghana.edu', '2017-07-20', 'Female', '0241234594', '98 Yendi Road, Northern', 'Northern', 'Yendi', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=28', 0, 'KG 1', '2026-06-24 19:28:07'),
(29, 'Kwaku', '', 'Boateng', 'kwaku.boateng29@ghana.edu', '2016-10-10', 'Male', '0241234595', '12 Savelugu Road, Northern', 'Northern', 'Savelugu', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=29', 1, 'KG 1', '2026-06-24 19:28:07'),
(30, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo30@ghana.edu', '2017-01-25', 'Female', '0241234596', '23 Gushiegu Road, Northern', 'Northern', 'Gushiegu', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=30', 0, 'KG 1', '2026-06-24 19:28:07'),
(31, 'Kweku', '', 'Agyemang', 'kweku.agyemang31@ghana.edu', '2015-05-14', 'Male', '0241234597', '34 Bolgatanga Road, Upper East', 'Upper East', 'Bolgatanga', 'Akosua Agyemang', 0, 'https://i.pravatar.cc/300?img=31', 0, 'KG 2', '2026-06-24 19:28:07'),
(32, 'Afia', '', 'Acheampong', 'afia.acheampong32@ghana.edu', '2016-08-22', 'Female', '0241234598', '45 Bawku Road, Upper East', 'Upper East', 'Bawku', 'Kwame Acheampong', 0, 'https://i.pravatar.cc/300?img=32', 0, 'KG 2', '2026-06-24 19:28:07'),
(33, 'Kobina', '', 'Boadi', 'kobina.boadi33@ghana.edu', '2015-11-09', 'Male', '0241234599', '56 Navrongo Road, Upper East', 'Upper East', 'Navrongo', 'Ama Boadi', 0, 'https://i.pravatar.cc/300?img=33', 1, 'KG 2', '2026-06-24 19:28:07'),
(34, 'Efua', '', 'Dankwa', 'efua.dankwa34@ghana.edu', '2016-03-18', 'Female', '0241234600', '67 Zuarungu Road, Upper East', 'Upper East', 'Zuarungu', 'Kofi Dankwa', 0, 'https://i.pravatar.cc/300?img=34', 0, 'KG 2', '2026-06-24 19:28:07'),
(35, 'Kwesi', '', 'Oduro', 'kwesi.oduro35@ghana.edu', '2015-09-27', 'Male', '0241234601', '78 Binduri Road, Upper East', 'Upper East', 'Binduri', 'Esi Oduro', 0, 'https://i.pravatar.cc/300?img=35', 2, 'KG 2', '2026-06-24 19:28:07'),
(36, 'Akosua', '', 'Asare', 'akosua.asare36@ghana.edu', '2016-12-05', 'Female', '0241234602', '89 Wa Road, Upper West', 'Upper West', 'Wa', 'Kojo Asare', 0, 'https://i.pravatar.cc/300?img=36', 0, 'KG 2', '2026-06-24 19:28:07'),
(37, 'Yaw', '', 'Amoah', 'yaw.amoah37@ghana.edu', '2015-02-14', 'Male', '0241234603', '92 Lawra Road, Upper West', 'Upper West', 'Lawra', 'Adwoa Amoah', 0, 'https://i.pravatar.cc/300?img=37', 0, 'KG 2', '2026-06-24 19:28:07'),
(38, 'Adjoa', '', 'Opoku', 'adjoa.opoku38@ghana.edu', '2016-06-21', 'Female', '0241234604', '13 Nandom Road, Upper West', 'Upper West', 'Nandom', 'Kwaku Opoku', 0, 'https://i.pravatar.cc/300?img=38', 0, 'KG 2', '2026-06-24 19:28:07'),
(39, 'Kofi', '', 'Kumi', 'kofi.kumi39@ghana.edu', '2015-10-30', 'Male', '0241234605', '24 Jirapa Road, Upper West', 'Upper West', 'Jirapa', 'Akua Kumi', 0, 'https://i.pravatar.cc/300?img=39', 0, 'KG 2', '2026-06-24 19:28:07'),
(40, 'Ama', '', 'Djan', 'ama.djan40@ghana.edu', '2016-04-12', 'Female', '0241234606', '35 Lambussie Road, Upper West', 'Upper West', 'Lambussie', 'Kweku Djan', 0, 'https://i.pravatar.cc/300?img=40', 1, 'KG 2', '2026-06-24 19:28:07'),
(41, 'Kwame', '', 'Mensah', 'kwame.mensah41@ghana.edu', '2014-07-16', 'Male', '0241234607', '46 Ho Road, Volta', 'Volta', 'Ho', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=41', 0, 'Primary 1', '2026-06-24 19:28:07'),
(42, 'Ama', '', 'Osei', 'ama.osei42@ghana.edu', '2015-10-24', 'Female', '0241234608', '57 Keta Road, Volta', 'Volta', 'Keta', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=42', 0, 'Primary 1', '2026-06-24 19:28:07'),
(43, 'Yaw', '', 'Appiah', 'yaw.appiah43@ghana.edu', '2014-01-09', 'Male', '0241234609', '68 Akatsi Road, Volta', 'Volta', 'Akatsi', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=43', 2, 'Primary 1', '2026-06-24 19:28:07'),
(44, 'Akua', '', 'Asante', 'akua.asante44@ghana.edu', '2015-05-28', 'Female', '0241234610', '79 Hohoe Road, Volta', 'Volta', 'Hohoe', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=44', 0, 'Primary 1', '2026-06-24 19:28:07'),
(45, 'Kofi', '', 'Adjei', 'kofi.adjei45@ghana.edu', '2014-09-14', 'Male', '0241234611', '81 Kpando Road, Volta', 'Volta', 'Kpando', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=45', 0, 'Primary 1', '2026-06-24 19:28:07'),
(46, 'Esi', '', 'Tetteh', 'esi.tetteh46@ghana.edu', '2015-12-02', 'Female', '0241234612', '92 Denu Road, Volta', 'Volta', 'Denu', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=46', 1, 'Primary 1', '2026-06-24 19:28:07'),
(47, 'Kojo', '', 'Quaye', 'kojo.quaye47@ghana.edu', '2014-03-20', 'Male', '0241234613', '14 Sekondi Road, Western', 'Western', 'Sekondi', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=47', 0, 'Primary 1', '2026-06-24 19:28:07'),
(48, 'Abena', '', 'Sarpong', 'abena.sarpong48@ghana.edu', '2015-08-07', 'Female', '0241234614', '25 Tarkwa Road, Western', 'Western', 'Tarkwa', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=48', 0, 'Primary 1', '2026-06-24 19:28:07'),
(49, 'Kwaku', '', 'Boateng', 'kwaku.boateng49@ghana.edu', '2014-11-25', 'Male', '0241234615', '36 Axim Road, Western', 'Western', 'Axim', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=49', 0, 'Primary 1', '2026-06-24 19:28:07'),
(50, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo50@ghana.edu', '2015-02-10', 'Female', '0241234616', '47 Shama Road, Western', 'Western', 'Shama', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=50', 0, 'Primary 1', '2026-06-24 19:28:07'),
(51, 'Kweku', '', 'Agyemang', 'kweku.agyemang51@ghana.edu', '2013-06-22', 'Male', '0241234617', '58 Nkroful Road, Western', 'Western', 'Nkroful', 'Akosua Agyemang', 0, 'https://i.pravatar.cc/300?img=51', 0, 'Primary 2', '2026-06-24 19:28:07'),
(52, 'Afia', '', 'Acheampong', 'afia.acheampong52@ghana.edu', '2014-09-13', 'Female', '0241234618', '69 Bibiani Road, Western', 'Western', 'Bibiani', 'Kwame Acheampong', 0, 'https://i.pravatar.cc/300?img=52', 1, 'Primary 2', '2026-06-24 19:28:07'),
(53, 'Kobina', '', 'Boadi', 'kobina.boadi53@ghana.edu', '2013-12-01', 'Male', '0241234619', '72 Kumasi Road, Ashanti', 'Ashanti', 'Kumasi', 'Ama Boadi', 0, 'https://i.pravatar.cc/300?img=53', 0, 'Primary 2', '2026-06-24 19:28:07'),
(54, 'Efua', '', 'Dankwa', 'efua.dankwa54@ghana.edu', '2014-03-19', 'Female', '0241234620', '83 Obuasi Road, Ashanti', 'Ashanti', 'Obuasi', 'Kofi Dankwa', 0, 'https://i.pravatar.cc/300?img=54', 0, 'Primary 2', '2026-06-24 19:28:07'),
(55, 'Kwesi', '', 'Oduro', 'kwesi.oduro55@ghana.edu', '2013-08-27', 'Male', '0241234621', '94 Odu Road, Ashanti', 'Ashanti', 'Odu', 'Esi Oduro', 0, 'https://i.pravatar.cc/300?img=55', 2, 'Primary 2', '2026-06-24 19:28:07'),
(56, 'Akosua', '', 'Asare', 'akosua.asare56@ghana.edu', '2014-11-15', 'Female', '0241234622', '16 Ejisu Road, Ashanti', 'Ashanti', 'Ejisu', 'Kojo Asare', 0, 'https://i.pravatar.cc/300?img=56', 0, 'Primary 2', '2026-06-24 19:28:07'),
(57, 'Yaw', '', 'Amoah', 'yaw.amoah57@ghana.edu', '2013-02-08', 'Male', '0241234623', '27 Mampong Road, Ashanti', 'Ashanti', 'Mampong', 'Adwoa Amoah', 0, 'https://i.pravatar.cc/300?img=57', 0, 'Primary 2', '2026-06-24 19:28:07'),
(58, 'Adjoa', '', 'Opoku', 'adjoa.opoku58@ghana.edu', '2014-05-25', 'Female', '0241234624', '38 Konongo Road, Ashanti', 'Ashanti', 'Konongo', 'Kwaku Opoku', 0, 'https://i.pravatar.cc/300?img=58', 0, 'Primary 2', '2026-06-24 19:28:07'),
(59, 'Kofi', '', 'Kumi', 'kofi.kumi59@ghana.edu', '2013-10-03', 'Male', '0241234625', '49 Sunyani Road, Brong-Ahafo', 'Brong-Ahafo', 'Sunyani', 'Akua Kumi', 0, 'https://i.pravatar.cc/300?img=59', 0, 'Primary 2', '2026-06-24 19:28:07'),
(60, 'Ama', '', 'Djan', 'ama.djan60@ghana.edu', '2014-01-20', 'Female', '0241234626', '51 Techiman Road, Brong-Ahafo', 'Brong-Ahafo', 'Techiman', 'Kweku Djan', 0, 'https://i.pravatar.cc/300?img=60', 0, 'Primary 2', '2026-06-24 19:28:07'),
(61, 'Kwame', '', 'Mensah', 'kwame.mensah61@ghana.edu', '2012-07-11', 'Male', '0241234627', '62 Berekum Road, Brong-Ahafo', 'Brong-Ahafo', 'Berekum', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=61', 0, 'Primary 3', '2026-06-24 19:28:07'),
(62, 'Ama', '', 'Osei', 'ama.osei62@ghana.edu', '2013-10-29', 'Female', '0241234628', '73 Dormaa Road, Brong-Ahafo', 'Brong-Ahafo', 'Dormaa', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=62', 1, 'Primary 3', '2026-06-24 19:28:07'),
(63, 'Yaw', '', 'Appiah', 'yaw.appiah63@ghana.edu', '2012-03-05', 'Male', '0241234629', '84 Nkoranza Road, Brong-Ahafo', 'Brong-Ahafo', 'Nkoranza', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=63', 0, 'Primary 3', '2026-06-24 19:28:07'),
(64, 'Akua', '', 'Asante', 'akua.asante64@ghana.edu', '2013-06-17', 'Female', '0241234630', '95 Wenchi Road, Brong-Ahafo', 'Brong-Ahafo', 'Wenchi', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=64', 0, 'Primary 3', '2026-06-24 19:28:07'),
(65, 'Kofi', '', 'Adjei', 'kofi.adjei65@ghana.edu', '2012-09-24', 'Male', '0241234631', '17 Cape Coast Road, Central', 'Central', 'Cape Coast', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=65', 2, 'Primary 3', '2026-06-24 19:28:07'),
(66, 'Esi', '', 'Tetteh', 'esi.tetteh66@ghana.edu', '2013-12-12', 'Female', '0241234632', '28 Sekondi-Takoradi Road, Central', 'Central', 'Sekondi-Takoradi', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=66', 0, 'Primary 3', '2026-06-24 19:28:07'),
(67, 'Kojo', '', 'Quaye', 'kojo.quaye67@ghana.edu', '2012-04-30', 'Male', '0241234633', '39 Elmina Road, Central', 'Central', 'Elmina', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=67', 0, 'Primary 3', '2026-06-24 19:28:07'),
(68, 'Abena', '', 'Sarpong', 'abena.sarpong68@ghana.edu', '2013-08-08', 'Female', '0241234634', '41 Mfantsiman Road, Central', 'Central', 'Mfantsiman', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=68', 0, 'Primary 3', '2026-06-24 19:28:07'),
(69, 'Kwaku', '', 'Boateng', 'kwaku.boateng69@ghana.edu', '2012-11-16', 'Male', '0241234635', '52 Abura Road, Central', 'Central', 'Abura', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=69', 0, 'Primary 3', '2026-06-24 19:28:07'),
(70, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo70@ghana.edu', '2013-02-04', 'Female', '0241234636', '63 Komenda Road, Central', 'Central', 'Komenda', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=70', 0, 'Primary 3', '2026-06-24 19:28:07'),
(71, 'Kweku', '', 'Agyemang', 'kweku.agyemang71@ghana.edu', '2011-06-10', 'Male', '0241234637', '74 Koforidua Road, Eastern', 'Eastern', 'Koforidua', 'Akosua Agyemang', 0, 'https://i.pravatar.cc/300?img=71', 0, 'Primary 4', '2026-06-24 19:28:07'),
(72, 'Afia', '', 'Acheampong', 'afia.acheampong72@ghana.edu', '2012-09-22', 'Female', '0241234638', '85 Akwatia Road, Eastern', 'Eastern', 'Akwatia', 'Kwame Acheampong', 0, 'https://i.pravatar.cc/300?img=72', 0, 'Primary 4', '2026-06-24 19:28:07'),
(73, 'Kobina', '', 'Boadi', 'kobina.boadi73@ghana.edu', '2011-12-28', 'Male', '0241234639', '96 Nsawam Road, Eastern', 'Eastern', 'Nsawam', 'Ama Boadi', 0, 'https://i.pravatar.cc/300?img=73', 1, 'Primary 4', '2026-06-24 19:28:07'),
(74, 'Efua', '', 'Dankwa', 'efua.dankwa74@ghana.edu', '2012-03-15', 'Female', '0241234640', '18 Suhum Road, Eastern', 'Eastern', 'Suhum', 'Kofi Dankwa', 0, 'https://i.pravatar.cc/300?img=74', 0, 'Primary 4', '2026-06-24 19:28:07'),
(75, 'Kwesi', '', 'Oduro', 'kwesi.oduro75@ghana.edu', '2011-07-03', 'Male', '0241234641', '29 Aburi Road, Eastern', 'Eastern', 'Aburi', 'Esi Oduro', 0, 'https://i.pravatar.cc/300?img=75', 2, 'Primary 4', '2026-06-24 19:28:07'),
(76, 'Akosua', '', 'Asare', 'akosua.asare76@ghana.edu', '2012-10-19', 'Female', '0241234642', '31 Asamankese Road, Eastern', 'Eastern', 'Asamankese', 'Kojo Asare', 0, 'https://i.pravatar.cc/300?img=76', 0, 'Primary 4', '2026-06-24 19:28:07'),
(77, 'Yaw', '', 'Amoah', 'yaw.amoah77@ghana.edu', '2011-01-27', 'Male', '0241234643', '42 Accra Road, Greater Accra', 'Greater Accra', 'Accra', 'Adwoa Amoah', 0, 'https://i.pravatar.cc/300?img=77', 0, 'Primary 4', '2026-06-24 19:28:07'),
(78, 'Adjoa', '', 'Opoku', 'adjoa.opoku78@ghana.edu', '2012-05-13', 'Female', '0241234644', '53 Tema Road, Greater Accra', 'Greater Accra', 'Tema', 'Kwaku Opoku', 0, 'https://i.pravatar.cc/300?img=78', 0, 'Primary 4', '2026-06-24 19:28:07'),
(79, 'Kofi', '', 'Kumi', 'kofi.kumi79@ghana.edu', '2011-09-08', 'Male', '0241234645', '64 Ga East Road, Greater Accra', 'Greater Accra', 'Ga East', 'Akua Kumi', 0, 'https://i.pravatar.cc/300?img=79', 0, 'Primary 4', '2026-06-24 19:28:07'),
(80, 'Ama', '', 'Djan', 'ama.djan80@ghana.edu', '2012-12-26', 'Female', '0241234646', '75 Ga West Road, Greater Accra', 'Greater Accra', 'Ga West', 'Kweku Djan', 0, 'https://i.pravatar.cc/300?img=80', 0, 'Primary 4', '2026-06-24 19:28:07'),
(81, 'Kwame', '', 'Mensah', 'kwame.mensah81@ghana.edu', '2010-05-09', 'Male', '0241234647', '86 Ashaiman Road, Greater Accra', 'Greater Accra', 'Ashaiman', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=81', 0, 'Primary 5', '2026-06-24 19:28:07'),
(82, 'Ama', '', 'Osei', 'ama.osei82@ghana.edu', '2011-08-21', 'Female', '0241234648', '97 Adenta Road, Greater Accra', 'Greater Accra', 'Adenta', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=82', 1, 'Primary 5', '2026-06-24 19:28:07'),
(83, 'Yaw', '', 'Appiah', 'yaw.appiah83@ghana.edu', '2010-11-05', 'Male', '0241234649', '19 Tamale Road, Northern', 'Northern', 'Tamale', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=83', 0, 'Primary 5', '2026-06-24 19:28:07'),
(84, 'Akua', '', 'Asante', 'akua.asante84@ghana.edu', '2011-02-27', 'Female', '0241234650', '22 Yendi Road, Northern', 'Northern', 'Yendi', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=84', 0, 'Primary 5', '2026-06-24 19:28:07'),
(85, 'Kofi', '', 'Adjei', 'kofi.adjei85@ghana.edu', '2010-07-13', 'Male', '0241234651', '33 Savelugu Road, Northern', 'Northern', 'Savelugu', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=85', 2, 'Primary 5', '2026-06-24 19:28:07'),
(86, 'Esi', '', 'Tetteh', 'esi.tetteh86@ghana.edu', '2011-10-30', 'Female', '0241234652', '44 Gushiegu Road, Northern', 'Northern', 'Gushiegu', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=86', 0, 'Primary 5', '2026-06-24 19:28:07'),
(87, 'Kojo', '', 'Quaye', 'kojo.quaye87@ghana.edu', '2010-03-18', 'Male', '0241234653', '55 Tolon Road, Northern', 'Northern', 'Tolon', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=87', 0, 'Primary 5', '2026-06-24 19:28:07'),
(88, 'Abena', '', 'Sarpong', 'abena.sarpong88@ghana.edu', '2011-06-25', 'Female', '0241234654', '66 Karaga Road, Northern', 'Northern', 'Karaga', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=88', 0, 'Primary 5', '2026-06-24 19:28:07'),
(89, 'Kwaku', '', 'Boateng', 'kwaku.boateng89@ghana.edu', '2010-09-16', 'Male', '0241234655', '77 Bolgatanga Road, Upper East', 'Upper East', 'Bolgatanga', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=89', 0, 'Primary 5', '2026-06-24 19:28:07'),
(90, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo90@ghana.edu', '2011-12-12', 'Female', '0241234656', '88 Bawku Road, Upper East', 'Upper East', 'Bawku', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=90', 0, 'Primary 5', '2026-06-24 19:28:07'),
(91, 'Kweku', '', 'Agyemang', 'kweku.agyemang91@ghana.edu', '2009-04-07', 'Male', '0241234657', '99 Navrongo Road, Upper East', 'Upper East', 'Navrongo', 'Akosua Agyemang', 0, 'https://i.pravatar.cc/300?img=91', 0, 'Primary 6', '2026-06-24 19:28:07'),
(92, 'Afia', '', 'Acheampong', 'afia.acheampong92@ghana.edu', '2010-07-19', 'Female', '0241234658', '11 Zuarungu Road, Upper East', 'Upper East', 'Zuarungu', 'Kwame Acheampong', 0, 'https://i.pravatar.cc/300?img=92', 0, 'Primary 6', '2026-06-24 19:28:07'),
(93, 'Kobina', '', 'Boadi', 'kobina.boadi93@ghana.edu', '2009-10-31', 'Male', '0241234659', '22 Binduri Road, Upper East', 'Upper East', 'Binduri', 'Ama Boadi', 0, 'https://i.pravatar.cc/300?img=93', 1, 'Primary 6', '2026-06-24 19:28:07'),
(94, 'Efua', '', 'Dankwa', 'efua.dankwa94@ghana.edu', '2010-02-15', 'Female', '0241234660', '33 Wa Road, Upper West', 'Upper West', 'Wa', 'Kofi Dankwa', 0, 'https://i.pravatar.cc/300?img=94', 0, 'Primary 6', '2026-06-24 19:28:07'),
(95, 'Kwesi', '', 'Oduro', 'kwesi.oduro95@ghana.edu', '2009-06-22', 'Male', '0241234661', '44 Lawra Road, Upper West', 'Upper West', 'Lawra', 'Esi Oduro', 0, 'https://i.pravatar.cc/300?img=95', 2, 'Primary 6', '2026-06-24 19:28:07'),
(96, 'Akosua', '', 'Asare', 'akosua.asare96@ghana.edu', '2010-09-08', 'Female', '0241234662', '55 Nandom Road, Upper West', 'Upper West', 'Nandom', 'Kojo Asare', 0, 'https://i.pravatar.cc/300?img=96', 0, 'Primary 6', '2026-06-24 19:28:07'),
(97, 'Yaw', '', 'Amoah', 'yaw.amoah97@ghana.edu', '2009-12-26', 'Male', '0241234663', '66 Jirapa Road, Upper West', 'Upper West', 'Jirapa', 'Adwoa Amoah', 0, 'https://i.pravatar.cc/300?img=97', 0, 'Primary 6', '2026-06-24 19:28:07'),
(98, 'Adjoa', '', 'Opoku', 'adjoa.opoku98@ghana.edu', '2010-03-14', 'Female', '0241234664', '77 Lambussie Road, Upper West', 'Upper West', 'Lambussie', 'Kwaku Opoku', 0, 'https://i.pravatar.cc/300?img=98', 0, 'Primary 6', '2026-06-24 19:28:07'),
(99, 'Kofi', '', 'Kumi', 'kofi.kumi99@ghana.edu', '2009-07-02', 'Male', '0241234665', '88 Ho Road, Volta', 'Volta', 'Ho', 'Akua Kumi', 0, 'https://i.pravatar.cc/300?img=99', 0, 'Primary 6', '2026-06-24 19:28:07'),
(100, 'Ama', '', 'Djan', 'ama.djan100@ghana.edu', '2010-10-10', 'Female', '0241234666', '99 Keta Road, Volta', 'Volta', 'Keta', 'Kweku Djan', 222, 'https://i.pravatar.cc/300?img=100', 0, 'Primary 6', '2026-06-24 19:28:07'),
(101, 'Kwame', '', 'Mensah', 'kwame.mensah101@ghana.edu', '2008-01-28', 'Male', '0241234667', '12 Akatsi Road, Volta', 'Volta', 'Akatsi', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=1', 0, 'JHS 1', '2026-06-24 19:28:07'),
(102, 'Ama', '', 'Osei', 'ama.osei102@ghana.edu', '2009-04-16', 'Female', '0241234668', '23 Hohoe Road, Volta', 'Volta', 'Hohoe', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=2', 1, 'JHS 1', '2026-06-24 19:28:07'),
(103, 'Yaw', '', 'Appiah', 'yaw.appiah103@ghana.edu', '2008-07-09', 'Male', '0241234669', '34 Kpando Road, Volta', 'Volta', 'Kpando', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=3', 0, 'JHS 1', '2026-06-24 19:28:07'),
(104, 'Akua', '', 'Asante', 'akua.asante104@ghana.edu', '2009-10-27', 'Female', '0241234670', '45 Denu Road, Volta', 'Volta', 'Denu', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=4', 0, 'JHS 1', '2026-06-24 19:28:07'),
(105, 'Kofi', '', 'Adjei', 'kofi.adjei105@ghana.edu', '2008-02-14', 'Male', '0241234671', '56 Sekondi Road, Western', 'Western', 'Sekondi', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=5', 2, 'JHS 1', '2026-06-24 19:28:07'),
(106, 'Esi', '', 'Tetteh', 'esi.tetteh106@ghana.edu', '2009-05-22', 'Female', '0241234672', '67 Tarkwa Road, Western', 'Western', 'Tarkwa', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=6', 0, 'JHS 1', '2026-06-24 19:28:07'),
(107, 'Kojo', '', 'Quaye', 'kojo.quaye107@ghana.edu', '2008-08-19', 'Male', '0241234673', '78 Axim Road, Western', 'Western', 'Axim', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=7', 0, 'JHS 1', '2026-06-24 19:28:07'),
(108, 'Abena', '', 'Sarpong', 'abena.sarpong108@ghana.edu', '2009-11-11', 'Female', '0241234674', '89 Shama Road, Western', 'Western', 'Shama', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=8', 0, 'JHS 1', '2026-06-24 19:28:07'),
(109, 'Kwaku', '', 'Boateng', 'kwaku.boateng109@ghana.edu', '2008-03-07', 'Male', '0241234675', '91 Nkroful Road, Western', 'Western', 'Nkroful', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=9', 0, 'JHS 1', '2026-06-24 19:28:07'),
(110, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo110@ghana.edu', '2009-06-29', 'Female', '0241234676', '13 Bibiani Road, Western', 'Western', 'Bibiani', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=10', 0, 'JHS 1', '2026-06-24 19:28:07'),
(111, 'Kweku', '', 'Agyemang', 'kweku.agyemang111@ghana.edu', '2007-09-15', 'Male', '0241234677', '24 Kumasi Road, Ashanti', 'Ashanti', 'Kumasi', 'Akosua Agyemang', 0, 'https://i.pravatar.cc/300?img=11', 0, 'JHS 2', '2026-06-24 19:28:07'),
(112, 'Afia', '', 'Acheampong', 'afia.acheampong112@ghana.edu', '2008-12-03', 'Female', '0241234678', '35 Obuasi Road, Ashanti', 'Ashanti', 'Obuasi', 'Kwame Acheampong', 0, 'https://i.pravatar.cc/300?img=12', 0, 'JHS 2', '2026-06-24 19:28:07'),
(113, 'Kobina', '', 'Boadi', 'kobina.boadi113@ghana.edu', '2007-04-18', 'Male', '0241234679', '46 Odu Road, Ashanti', 'Ashanti', 'Odu', 'Ama Boadi', 0, 'https://i.pravatar.cc/300?img=13', 1, 'JHS 2', '2026-06-24 19:28:07'),
(114, 'Efua', '', 'Dankwa', 'efua.dankwa114@ghana.edu', '2008-07-26', 'Female', '0241234680', '57 Ejisu Road, Ashanti', 'Ashanti', 'Ejisu', 'Kofi Dankwa', 0, 'https://i.pravatar.cc/300?img=14', 0, 'JHS 2', '2026-06-24 19:28:07'),
(115, 'Kwesi', '', 'Oduro', 'kwesi.oduro115@ghana.edu', '2007-10-14', 'Male', '0241234681', '68 Mampong Road, Ashanti', 'Ashanti', 'Mampong', 'Esi Oduro', 0, 'https://i.pravatar.cc/300?img=15', 2, 'JHS 2', '2026-06-24 19:28:07'),
(116, 'Akosua', '', 'Asare', 'akosua.asare116@ghana.edu', '2008-01-02', 'Female', '0241234682', '79 Konongo Road, Ashanti', 'Ashanti', 'Konongo', 'Kojo Asare', 0, 'https://i.pravatar.cc/300?img=16', 0, 'JHS 2', '2026-06-24 19:28:07'),
(117, 'Yaw', '', 'Amoah', 'yaw.amoah117@ghana.edu', '2007-05-20', 'Male', '0241234683', '81 Sunyani Road, Brong-Ahafo', 'Brong-Ahafo', 'Sunyani', 'Adwoa Amoah', 0, 'https://i.pravatar.cc/300?img=17', 0, 'JHS 2', '2026-06-24 19:28:07'),
(118, 'Adjoa', '', 'Opoku', 'adjoa.opoku118@ghana.edu', '2008-08-08', 'Female', '0241234684', '92 Techiman Road, Brong-Ahafo', 'Brong-Ahafo', 'Techiman', 'Kwaku Opoku', 0, 'https://i.pravatar.cc/300?img=18', 0, 'JHS 2', '2026-06-24 19:28:07'),
(119, 'Kofi', '', 'Kumi', 'kofi.kumi119@ghana.edu', '2007-11-27', 'Male', '0241234685', '14 Berekum Road, Brong-Ahafo', 'Brong-Ahafo', 'Berekum', 'Akua Kumi', 0, 'https://i.pravatar.cc/300?img=19', 0, 'JHS 2', '2026-06-24 19:28:07'),
(120, 'Ama', '', 'Djan', 'ama.djan120@ghana.edu', '2008-02-19', 'Female', '0241234686', '25 Dormaa Road, Brong-Ahafo', 'Brong-Ahafo', 'Dormaa', 'Kweku Djan', 0, 'https://i.pravatar.cc/300?img=20', 0, 'JHS 2', '2026-06-24 19:28:07'),
(121, 'Kwame', '', 'Mensah', 'kwame.mensah121@ghana.edu', '2006-03-12', 'Male', '0241234687', '36 Nkoranza Road, Brong-Ahafo', 'Brong-Ahafo', 'Nkoranza', 'Ama Mensah', 0, 'https://i.pravatar.cc/300?img=21', 0, 'JHS 3', '2026-06-24 19:28:07'),
(122, 'Ama', '', 'Osei', 'ama.osei122@ghana.edu', '2007-06-24', 'Female', '0241234688', '47 Wenchi Road, Brong-Ahafo', 'Brong-Ahafo', 'Wenchi', 'Kwame Osei', 0, 'https://i.pravatar.cc/300?img=22', 1, 'JHS 3', '2026-06-24 19:28:07'),
(123, 'Yaw', '', 'Appiah', 'yaw.appiah123@ghana.edu', '2006-09-16', 'Male', '0241234689', '58 Cape Coast Road, Central', 'Central', 'Cape Coast', 'Akua Appiah', 0, 'https://i.pravatar.cc/300?img=23', 0, 'JHS 3', '2026-06-24 19:28:07'),
(124, 'Akua', '', 'Asante', 'akua.asante124@ghana.edu', '2007-12-04', 'Female', '0241234690', '69 Sekondi-Takoradi Road, Central', 'Central', 'Sekondi-Takoradi', 'Kojo Asante', 0, 'https://i.pravatar.cc/300?img=24', 0, 'JHS 3', '2026-06-24 19:28:07'),
(125, 'Kofi', '', 'Adjei', 'kofi.adjei125@ghana.edu', '2006-04-09', 'Male', '0241234691', '71 Elmina Road, Central', 'Central', 'Elmina', 'Adwoa Adjei', 0, 'https://i.pravatar.cc/300?img=25', 2, 'JHS 3', '2026-06-24 19:28:07'),
(126, 'Esi', '', 'Tetteh', 'esi.tetteh126@ghana.edu', '2007-07-27', 'Female', '0241234692', '82 Mfantsiman Road, Central', 'Central', 'Mfantsiman', 'Kwesi Tetteh', 0, 'https://i.pravatar.cc/300?img=26', 0, 'JHS 3', '2026-06-24 19:28:07'),
(127, 'Kojo', '', 'Quaye', 'kojo.quaye127@ghana.edu', '2006-10-15', 'Male', '0241234693', '93 Abura Road, Central', 'Central', 'Abura', 'Abena Quaye', 0, 'https://i.pravatar.cc/300?img=27', 0, 'JHS 3', '2026-06-24 19:28:07'),
(128, 'Abena', '', 'Sarpong', 'abena.sarpong128@ghana.edu', '2007-01-03', 'Female', '0241234694', '15 Komenda Road, Central', 'Central', 'Komenda', 'Kobina Sarpong', 0, 'https://i.pravatar.cc/300?img=28', 0, 'JHS 3', '2026-06-24 19:28:07'),
(129, 'Kwaku', '', 'Boateng', 'kwaku.boateng129@ghana.edu', '2006-05-21', 'Male', '0241234695', '26 Koforidua Road, Eastern', 'Eastern', 'Koforidua', 'Efua Boateng', 0, 'https://i.pravatar.cc/300?img=29', 0, 'JHS 3', '2026-06-24 19:28:07'),
(130, 'Adwoa', '', 'Ampofo', 'adwoa.ampofo130@ghana.edu', '2007-08-18', 'Female', '0241234696', '37 Akwatia Road, Eastern', 'Eastern', 'Akwatia', 'Yaw Ampofo', 0, 'https://i.pravatar.cc/300?img=30', 0, 'JHS 3', '2026-06-24 19:28:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
