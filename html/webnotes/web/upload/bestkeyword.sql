-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2016 at 11:52 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bestkeyword`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_graph`
--

CREATE TABLE IF NOT EXISTS `base_graph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataset_count` int(11) NOT NULL,
  `exe_time` double NOT NULL,
  `memory` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `base_graph`
--

INSERT INTO `base_graph` (`id`, `dataset_count`, `exe_time`, `memory`) VALUES
(2, 5, 255, 73170808),
(3, 4, 184, 71885968),
(4, 3, 242, 71764712),
(5, 2, 211, 70891280),
(6, 1, 153, 68078192),
(8, 0, 1, 68099520),
(9, 5, 120, 77781304),
(10, 5, 124, 78763384),
(11, 5, 71, 79314048),
(12, 5, 72, 80176432),
(13, 5, 65, 78445816),
(14, 5, 82, 80143816),
(15, 5, 102, 80412176),
(16, 5, 121, 81717688),
(17, 5, 119, 79817152),
(18, 5, 140, 87656088),
(19, 5, 71, 78858352),
(20, 5, 118, 85498920),
(21, 5, 127, 86675032),
(22, 5, 113, 87880032),
(23, 5, 95, 89328040),
(24, 5, 77, 94317448),
(25, 5, 82, 84611032),
(26, 48, 765, 190861688),
(27, 48, 369, 172663256),
(28, 0, 3, 83941848),
(29, 0, 3, 80025744),
(30, 48, 760, 189947408),
(31, 27, 509, 123109704),
(32, 34, 727, 173790880),
(33, 0, 3, 86244872),
(34, 0, 3, 83712688),
(35, 23, 487, 120957904),
(36, 3, 360, 81854848),
(37, 34, 1928, 110934584),
(38, 34, 706, 173752968),
(39, 34, 311, 131401344),
(40, 89, 1534, 73457264),
(41, 89, 1534, 128030656),
(42, 27, 645, 133536072),
(43, 27, 410, 111357240),
(44, 27, 138, 113348928),
(45, 34, 955, 166323336),
(46, 34, 993, 148797024),
(47, 0, 63, 75187352),
(48, 34, 1086, 160999544),
(49, 48, 1226, 149118960),
(50, 34, 1128, 160958320),
(51, 0, 111, 66781968),
(52, 0, 83, 70808512),
(53, 0, 42, 79876296),
(54, 0, 256, 85167144),
(55, 0, 36, 78337288),
(56, 34, 8508, 143588216),
(57, 34, 7561, 218899464),
(58, 34, 5259, 183256360),
(59, 3, 3702, 82006584),
(60, 0, 41, 84638760),
(61, 0, 72, 94108072),
(62, 0, 38, 89210584),
(63, 0, 78, 79619944),
(64, 0, 77, 74985984),
(65, 0, 50, 73707872),
(66, 0, 87, 74616000),
(67, 0, 64, 74753232),
(68, 0, 62, 75450576),
(69, 0, 78, 76623664),
(70, 0, 99, 76503400),
(71, 0, 42, 72709368),
(72, 34, 3404, 111609744),
(73, 34, 3550, 127102128);

-- --------------------------------------------------------

--
-- Table structure for table `currentlocation`
--

CREATE TABLE IF NOT EXISTS `currentlocation` (
  `id` int(11) NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `object` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentlocation`
--

INSERT INTO `currentlocation` (`id`, `latitude`, `longitude`, `object`) VALUES
(1, '9.98765', '98.7989', 'College');

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE IF NOT EXISTS `distance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files` text NOT NULL,
  `distance` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`id`, `files`, `distance`) VALUES
(1, 'Devaswom Board College.txt', 2447.254179933278),
(2, 'Amal Jyothi Engineering College Kanjirapally.txt', 2411.172193884977),
(3, 'K.E. College Thalayolapramba.txt', 2443.6533449493077),
(4, 'Sri. Vidyadiraja N.S.S. College.txt', 2443.6533449493077),
(5, 'Vimal Jyothi Engineering College Chemperi.txt', 2549.0651675060394),
(6, 'Bishop Vayalil Memorial Holly Cross College.txt', 2430.2523416883005),
(7, 'N.S.S. Hindu College Vazhoor.txt', 2423.655588886597),
(8, 'College of Engineering Kidangoor.txt', 2432.406008341032),
(9, 'Mar Gregorious College of Engineering and Technology Kottayam.txt', 2443.6533449493077),
(10, 'Govt. College.txt', 2445.0694769024462),
(11, 'St. Thomas College Kottayam.txt', 2429.1974466071447),
(12, 'Mar Augusthinose College Pala.txt', 2427.0125181158123),
(13, 'St. Josephs College of Engineering and Technology Pala.txt', 2420.4904494944244),
(14, 'Mangalam College of Engineering Kottayam.txt', 2437.37725655086),
(15, 'St. Berchamans College.txt', 2442.726476007934),
(16, 'Bishop Choolaparambil Memorial College.txt', 2443.6533449493077),
(17, 'C.M.S. College.txt', 2443.7889187394912),
(18, 'College of Applied Science  Kaduthuruthy.txt', 2442.8280965674944),
(19, 'Caritas College of Nursing Kottayam.txt', 2440.2886670178186),
(20, 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt', 2443.6533449493077),
(21, 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt', 2439.3173411437815),
(22, 'St. George College.txt', 2415.679316516229),
(23, 'Government Medical College Kottayam.txt', 2444.1969801243404),
(24, 'St. Dominic College Kanjirappally.txt', 2411.453164242221),
(25, 'St. Marys College Kottayam.txt', 2436.1139651650337),
(26, 'College of Engineering Poonjar.txt', 2409.8668657600238),
(27, 'Saintgits College of Engineering Kottayam.txt', 2440.974869266113),
(28, 'Assumption College Changancherry.txt', 2442.502747617361),
(29, 'Theophilus College of Nursing Kangazha.txt', 2425.3430945030477),
(30, 'Henry Baker College Changancherry.txt', 2443.6533449493077),
(31, 'B.K. College for Women.txt', 2443.065995748779),
(32, 'College of Nursing Kottayam.txt', 2443.772583592782),
(33, 'Baselius College.txt', 2442.9134262325188),
(34, 'St. Stepehns College Uzhavoor.txt', 2433.355823053715);

-- --------------------------------------------------------

--
-- Table structure for table `enc`
--

CREATE TABLE IF NOT EXISTS `enc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `obj` text NOT NULL,
  `lat` text NOT NULL,
  `log` text NOT NULL,
  `dis` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `enc`
--

INSERT INTO `enc` (`id`, `name`, `obj`, `lat`, `log`, `dis`) VALUES
(1, 'Axis bank ATMS Chembu Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(2, 'Axis bank ATMS Perumpaikad Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(3, 'Axis bank ATMS Chenganassery Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(4, 'Axis bank ATMS Kodimatha Kottayam', 'atm', '9.575806', '76.521365', 4.9709191035195435),
(5, 'Axis bank ATMS Kanjikuzhi Kottayam', 'atm', '9.587476', '76.541598', 5.0196131341978605),
(6, 'Axis bank ATMS Ettumanoor Kottayam', 'atm', '9.67036', '76.560875', 8.13326205519859),
(7, 'Axis bank ATMS Thirunakkara Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(8, 'Federal Bank ATMS Thellakom Kottayam', 'atm', '9.644818', '76.547378', 5.164159263229828),
(9, 'Federal Bank ATMS Muttuchira Kottayam', 'atm', '9.755556', '76.5', 15.270981339320969),
(10, 'Federal Bank ATMS Kaipuzha Kottayam', 'atm', '9.666667', '76.5', 5.428659278821402),
(11, 'Federal Bank ATMS Kanjikuzhy Kottayam', 'atm', '9.587476', '76.541598', 5.0196131341978605),
(12, 'Federal Bank ATMS Pulimood Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(13, 'Federal Bank ATMS Kudayampady Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(14, 'Federal Bank ATMS Thiruvathukkal Kottayam', 'atm', '9.583986', '76.504743', 3.8791691591781583),
(15, 'Federal Bank ATMS Gandhi Nagar Kottayam', 'atm', '9.631605', '7.652281E7', 5864.273925136729),
(16, 'Federal Bank ATMS Pallicachira Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(17, 'Federal Bank ATMS Pulickalkavala Kottayam ', 'atm', '9.591567', '76.522153', 3.363133849839597),
(18, 'Canara Bank ATMS Market Junction Kottayam', 'atm', '9.58993', '76.522541', 3.54556683905384),
(19, 'Canara Bank ATMS Muttambalam Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(20, 'Canara Bank ATMS Temple Road Kottayam', 'atm', '9.590316', '76.516469', 3.2701244858120337),
(21, 'Canara Bank ATMS Railway station Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(22, 'Bank of Baroda ATMS Baker junction Kottayam', 'atm', '9.588592', '76.529919', 4.085366352794707),
(23, 'Bank of Baroda ATMS Kurisummood Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(24, 'HDFC Bank ATM Vadavathoor Kottayam', 'atm', '9.589686', '76.563273', 6.817317285792488),
(25, 'HDFC Bank ATM Oravackal Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(26, 'HDFC Bank ATM Kudamaloor Kottayam', 'atm', '9.620269', '76.511247', 0.3488171247631855),
(27, 'HDFC Bank ATM Ettumanoor Kottayam', 'atm', '9.67063', '76.560875', 8.15456759081736),
(28, 'HDFC Bank ATM Kanjirappally Kottayam', 'atm', '9.55727', '76.789435', 31.580033727184347),
(29, 'South Indian Bank ATM Nagampadam Kottayam', 'atm', '9.597214', '76.527562', 3.169359878645849),
(30, 'South Indian Bank ATM Sasthri Road Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(31, 'Union Bank of India ATM Ettumanoor Kottayam', 'atm', '9.67036', '76.560875', 8.13326205519859),
(32, 'Union Bank of India ATM Shastri Road Kottayam', 'atm', '9.592096', '76.527189', 3.5940130492226823),
(33, 'Union Bank of India ATM Ponkunnam Kottayam', 'atm', '9.564863', '76.75583', 27.79563182988472),
(34, 'Central Bank of India ATM Kumaranellore Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(35, 'Central Bank of India ATM Peruva Kottayam', 'atm', '9.828173', '76.501129', 23.340019103098186),
(36, 'Central Bank of India ATM Mavellore Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(37, 'Central Bank of India ATM Perumpanachi Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(38, 'Andhra Bank ATMS Kottam Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(39, 'State Bank of Travancore ATM Illikkal Kottayam', 'atm', '9.587185', '76.499683', 3.633030915890848),
(40, 'State Bank of Travancore ATM College Road Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(41, 'State Bank of Travancore ATM Anickadu Kottayam', 'atm', '9.602011', '76.694754', 20.52211993201242),
(42, 'State Bank of Travancore ATM Mavelloor Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(43, 'State Bank of Travancore ATM Gandhinagar Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(44, 'State Bank of Travancore ATM Perumpanachy Kottayam', 'atm', '9.480368', '76.582054', 17.37891004508557),
(45, 'State Bank of Travancore ATM Thirunakkara Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(46, 'State Bank of Travancore ATM Kuravilangad Kottayam', 'atm', '9.758441', '76.563273', 16.682134663316052),
(47, 'ICICI Bank ATM Vadavathoor Kottayam', 'atm', '9.589686', '76.563273', 6.817317285792488),
(48, 'ICICI Bank ATM Kanjirapally Kottayam', 'atm', '9.591567', '76.522153', 3.363133849839597),
(49, 'Govt. College Kottayam', 'college', '9.556887', '76.511066', 6.878985325454518),
(50, 'Sree Sankaracharya University of Sanskrit Ettumanoor', 'college', '9.67357', '76.55759', 8.147460852141462),
(51, 'Assumption College Changancherry', 'college', '9.452111', '76.540333', 18.862709688153327),
(52, 'B.K. College for Women Kottayam', 'college', '9.589899', '76.527598', 3.8219724478209467),
(53, 'Baselius College Kottayam', 'college', '9.587155', '76.529133', 4.1699154495958375),
(54, 'Bishop Choolaparambil Memorial College Kottayam', 'college', '9.591567', '76.522153', 3.363133849839597),
(55, 'Bishop Vayalil Memorial Holly Cross College Kottayam', 'college', '9.686642', '76.639663', 16.26016656227749),
(56, 'C.M.S. College  Kottayam', 'college', '9.596847', '76.520642', 2.7651821651071),
(57, 'College of Applied Science  IHRD  Kaduthuruthy', 'college', '9.782792', '76.52053', 18.321422769146604),
(58, 'Devaswom Board College Kottayam  ', 'college', '9.803025', '76.47927', 20.77609445681742),
(59, 'Henry Baker College Changancherry', 'college', '9.591567', '76.522153', 3.363133849839597),
(60, 'K.E. College Thalayolapramba', 'college', '9.591567', '76.522153', 3.363133849839597),
(61, 'Mar Augusthinose College Pala', 'college', '9.799061', '76.664132', 26.36068802014808),
(62, 'N.S.S. Hindu College Vazhoor', 'college', '9.56402', '76.70603', 22.513705881251457),
(63, 'Sri. Vidyadiraja N.S.S. College   Kottayam', 'college', '9.591567', '76.522153', 3.363133849839597),
(64, 'St. Berchamans College Kottayam', 'college', '9.451186', '76.538346', 18.924975241920553),
(65, 'St. Dominic College Kanjirappally', 'college', '9.569105', '76.817075', 34.31156561536571),
(66, 'St. George College Kottayam', 'college', '9.688884', '76.772509', 30.005958603568),
(67, 'St. Mary s College Kottayam', 'college', '9.607605', '76.590103', 9.036096586495185),
(68, 'St. Stepehns College Uzhavoor', 'college', '9.786579', '76.606792', 21.581512016088972),
(69, 'St. Thomas College Kottayam', 'college', '9.50554', '76.65866', 20.737840420187645),
(70, 'College of Engineering Kidangoor', 'college', '9.667592', '76.620933', 13.485425075613067),
(71, 'College of Engineering Poonjar', 'college', '9.673689', '76.826264', 35.40346725279357),
(72, 'Govt. College of Engineering Rajiv Gandhi Institute of Technology  R.I.T    Kottayam', 'college', '9.591567', '76.522153', 3.363133849839597),
(73, 'Amal Jyothi Engineering College Kanjirapally', 'college', '9.529509', '76.821765', 35.78525653532447),
(74, 'Mangalam College of Engineering Kottayam', 'college', '9.677848', '76.575083', 9.838038209880164),
(75, 'Mar Gregorious College of Engineering and Technology Kottayam', 'college', '9.591567', '76.522153', 3.363133849839597),
(76, 'Saintgits College of Engineering Kottayam', 'college', '9.509847', '76.550986', 12.975379131615982),
(77, 'St. Joseph s College of Engineering and Technology Pala', 'college', '9.727789', '76.726798', 26.857182135659844),
(78, 'Vimal Jyothi Engineering College Chemperi', 'college', '12.097913', '75.560019', 294.82565117379005),
(79, 'Government Medical College Kottayam', 'college', '9.598226', '76.516848', 2.447883874652467),
(80, 'College of Nursing Kottayam', 'college', '9.633362', '76.518928', 1.9973179644106729),
(81, 'Caritas College of Nursing Kottayam', 'college', '9.64488', '76.550136', 5.420428402125202),
(82, 'Theophilus College of Nursing Kangazha', 'college', '9.515909', '76.693244', 23.277681401887186),
(83, 'Caritas Hospital', 'hospital', '9.645386', '76.549843', 5.424091142310119),
(84, 'C. M. C. DIAGNOSTIC CENTRE Kottayam', 'hospital', '9.591567', '76.522153', 3.363133849839597),
(85, 'INDO- AMERICAN HOSPITAL Chemmanakary', 'hospital', '9.766667', '76.4', 20.33229177715748),
(86, 'Matha Hospital Thellakom', 'hospital', '9.648451', '76.549562', 5.593802514057621),
(87, 'S.J.Eye Hospital & Research Institute', 'hospital', '9.5', '76.63333', 19.027821690639097),
(88, 'Thengana Medical Mission Hospital', 'hospital', '9.476493', '76.580104', 17.665854583625443),
(89, 'Anugraha Hospital Kottayam', 'hospital', '9.591567', '76.522153', 3.363133849839597),
(90, 'Ashakendram Hospital Gandhi Nagar  Kottayam', 'hospital', '9.627058', '76.540015', 3.5798557637283888),
(91, 'Bharath Hospital Azad Lane  Kottayam', 'hospital', '9.588048', '76.519051', 3.5948381568047214),
(92, 'CMC Hospital Samkarnthi  Kottayam', 'hospital', '9.627058', '76.540015', 3.5798557637283888),
(93, 'Champakassery Hospital Kottayam', 'hospital', '9.70405', '76.720472', 25.126416123730124),
(94, 'City Hospital Temple Road  Kottayam', 'hospital', '9.589426', '76.51939', 3.462534032664463),
(95, 'Dhanwanthari Centre Gandhi Nagar  Kottayam', 'hospital', '9.631605', '76.52281', 2.1305917053411476),
(96, 'District Hospital K.K. Road  Kottayam', 'hospital', '9.590603', '76.526062', 3.6654180358747337),
(97, 'Ettumanoor Hospital Ettumanoor  Kottayam', 'hospital', '9.688674', '76.776001', 30.37009799122634),
(98, 'H.D.P Hospital Kaypuzha  Kottayam', 'hospital', '9.591567', '76.522153', 3.363133849839597),
(99, 'Holy Family Clinics Kottayam', 'hospital', '9.706302', '76.759903', 29.260316173641947),
(100, 'H and W Cardiac Centre Kottayam', 'hospital', '9.591567', '76.522153', 3.363133849839597),
(101, 'Institute of Child Health Gandhinagar  Kottayam', 'hospital', '9.641831', '76.530783', 3.553893953008428),
(102, 'I.C.H. Hospital Kottayam', 'hospital', '9.589975', '76.439191', 8.252795906184204),
(103, 'K.M.C.H Ettumanoor  Kottayam', 'hospital', '9.67036', '76.560875', 8.13326205519859),
(104, 'Karunalayalam Kottayam', 'hospital', '9.731909', '76.664038', 21.217628661917313),
(105, 'Medical Mission Hospital Kollad  Kottayam', 'hospital', '9.439662', '76.544082', 20.301298089433303),
(106, 'Mercy Nursing Home Pvt. Ltd. Karukachal  Kottayam', 'hospital', '9.5', '76.63333', 19.027821690639097),
(107, 'Diagnostic Research Centre  Baker Junction  Kottayam', 'hospital', '9.588592', '76.529919', 4.085366352794707),
(108, 'S.H. Medical Centre Kottayam', 'hospital', '9.593494', '76.529413', 3.6167330822482744),
(109, 'Vimala Hospital Ettumanoor  Kottayam', 'hospital', '9.664444', '76.553754', 7.115673011420033),
(110, 'Aida Hotel M C Road   Kottayam', 'restuarant', '9.590205', '76.522539', 3.5179091965817384),
(111, 'Alankar Caterings Kuruppanthara Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(112, 'Anna Maira Caterers Kanjirappally  Kottayam ', 'restuarant', '9.55727', '76.789435', 31.580033727184347),
(113, 'Ann s Caterers Palai  Kottayam', 'restuarant', '9.713753', '76.682928', 21.871477701888665),
(114, 'Archana Outdoor Catering Service Aruvithura.P.O  Erattupetta  Kottayam', 'restuarant', '9.68581', '76.775147', 30.19912516097276),
(115, 'Aryaas  P O Road  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(116, 'Baker s Dining Room	Kumarakom  Kottayam', 'restuarant', '9.617545', '76.430095', 8.610179336290026),
(117, 'Bar B Que Inn Family Restaurant   ', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(118, 'Nattassery S H Mount  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(119, 'Boat House Cafe Thirunakkara  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(120, 'Chill Out Juice Shop K K Road  Central Junction  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(121, 'Choice Catering  Thrikodithanam  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(122, 'Christy Catering Service lmadeena Shopping Complex  Central Junction  Erattupetta  Kottayam', 'restuarant', '9.68581', '76.775147', 30.19912516097276),
(123, 'City Bakery and Ice Cream Parlour Erattupetta  Kottayam', 'restuarant', '9.68581', '76.775147', 30.19912516097276),
(124, ' Coconut Lagoon Hotel Kumarakom  Kottayam', 'restuarant', '9.617545', '76.430095', 8.610179336290026),
(125, 'Cordon Bleu  Backwater Ripples  Kumarakom', 'restuarant', '9.617545', '76.430095', 8.610179336290026),
(126, 'Cosmo Ice Cream Parlour Vellappad  Palai  Kottayam', 'restuarant', '9.713753', '76.682928', 21.871477701888665),
(127, 'Deepthi Cateres Deepthi Consultants  Thirunakkara  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(128, 'Dhanya Restaurant Ushus  Chingavanam  Kottayam', 'restuarant', '9.527625', '76.51322', 10.143827356356287),
(129, 'Ettukettu Kumarakom Lake Resort  Kumarakom North  Kottayam', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(130, 'Gogul Ice Cream Parlour Edaparambil  Palai  Kottayam ', 'restuarant', '9.713753', '76.682928', 21.871477701888665),
(131, 'Golden Bakery and Catering Service Kottayam ', 'restuarant', '9.591567', '76.522153', 3.363133849839597),
(132, 'GOVT. HSS ERATTUPETTAH  KOTTAYAM ', 'schools', '9.714154', '76.683058', 21.905585200693753),
(133, 'GOVT. HSS KADAPPOOR  KOTTAYAM ', 'schools', '9.699027', '76.579996', 11.89914440995283),
(134, 'GOVT. HSS KARAPPUZHA KOTTAYAM ', 'schools', '9.583173', '76.511683', 3.9623296410374125),
(135, 'GOVT. HSS KUMARAKAM  KOTTAYAM ', 'schools', '9.594868', '76.468178', 5.15949598447213),
(136, 'GOVT. HSS  PALA   KOTTAYAM ', 'schools', '9.714154', '76.683058', 21.905585200693753),
(137, 'GOVT. HSS  THAZHATHUVADAKARA  KOTTAYAM ', 'schools', '9.466056', '76.717238', 28.519903928668224),
(138, 'GOVT. HSS  THRIKKODITHANAM  KOTTAYAM ', 'schools', '9.469824', '76.590179', 18.834274682740023),
(139, 'GOVT. GIRLS HSS  VAIKOM  KOTTAYAM ', 'schools', '9.783083', '76.450867', 19.36932724414144),
(140, 'GOVT. HSS  VADAKKEKKARA  KOTTAYAM ', 'schools', '9.682719', '76.778989', 30.52569193012922),
(141, 'GOVT. HSS  PAMPADY  KOTTAYAM ', 'schools', '9.563925', '76.645513', 16.221413429164098),
(142, 'GOVT. HSS  VAIKOM  KOTTAYAM ', 'schools', '9.768579', '76.489756', 16.81866332152027),
(143, 'GOVT. HSS  PERUVA  KOTTAYAM ', 'schools', '9.82862', '76.502373', 23.38540321618427),
(144, 'GOVT HSS KUDAMALLOOR KOTTAYAM ', 'schools', '9.618632', '76.508537', 0),
(145, 'GOVT HSS KURICHY KOTTAYAM ', 'schools', '9.500929', '76.512873', 13.111204519025726),
(146, 'GOVT HSS EDAKKOLI KOTTAYAM ', 'schools', '9.777267', '76.638203', 22.67770523348036),
(147, 'SKV GOVT HSS NEENDOOR KOTTAYAM ', 'schools', '9.679547', '76.509621', 6.7820308750330724),
(148, 'GOVT HSS KANAKKARY KOTTAYAM ', 'schools', '9.69973', '76.54722', 9.976015248387109),
(149, 'GOVT. VHSS PONKUNNAM VAZHOOR KOTTAYAM ', 'schools', '9.56402', '76.70603', 22.513705881251457),
(150, 'GOVT. HSS NEDUMKUNNAM KOTTAYAM ', 'schools', '9.507667', '76.661289', 20.82655847854401),
(151, 'GOVT. HSS EDAKUNNAM KOTTAYAM ', 'schools', '9.551519', '76.837486', 36.87181882109917),
(152, 'GOVT. VHSS MURIKKUMVAYAL KOTTAYAM ', 'schools', '9.515587', '76.898037', 44.26764587338246),
(153, 'M G M HSS  LAKKATTOOR  KOTTAYAM ', 'schools', '9.619829', '76.638383', 14.251702156869188),
(154, 'M G HSS  ERATTUPETTA  KOTTAYAM ', 'schools', '9.68779', '76.784676', 31.26682293318146),
(155, 'M T HSS  KOTTAYAM ', 'schools', '9.668079', '76.537945', 6.380782241578494),
(156, 'NSS BHSS  KARUKACHAL  KOTTAYAM ', 'schools', '9.5', '76.63333', 19.027821690639097),
(157, 'ST. JOHN S BAPTIST HSS  NEDUMKUNNAM  KOTTAYAM ', 'schools', '9.507833', '76.660042', 20.70549215633305),
(158, 'JM HSS  VAKATHANAM  KOTTAYAM ', 'schools', '9.504668', '76.565259', 14.131971431384653),
(159, 'ST. EPHREM S HSS  MANNANAM  KOTTAYAM ', 'schools', '9.647927', '76.52281', 3.6177953101189892),
(160, 'SMV HSS  POONJAR  KOTTAYAM ', 'schools', '9.672747', '76.808662', 33.48359284893523),
(161, 'ST.SEBASTIAN S HSS  KADANAD  KOTTAYAM ', 'schools', '9.778761', '76.701565', 27.683187020227738),
(162, 'ST. MARY S BHSS  BHARANANGANAM  KOTTAYAM ', 'schools', '9.7', '76.727778', 25.708176622306357),
(163, 'CMS HSS  MELUKAVU  KOTTAYAM ', 'schools', '9.797485', '76.765753', 34.538834354526884),
(164, 'JJMM HSS  YENDAYAR  KOTTAYAM ', 'schools', '9.617362', '76.890832', 41.95868095525529),
(165, 'VISWABHARATHI SNDP HSS  NJEEZHOOR  KOTTAYAM ', 'schools', '9.791667', '76.526389', 19.361399714217118),
(166, 'ST. LITTLE THERESAS GHSS  VAIKOM  KOTTAYAM ', 'schools', '9.766667', '76.4', 20.33229177715748),
(167, 'HOLY CROSS HSS  CHERPUNKAL  KOTTAYAM ', 'schools', '9.689722', '76.635', 15.976057012204869),
(168, 'NSS HSS  KALLARA  KOTTAYAM ', 'schools', '9.705957', '76.476552', 10.335207569559744),
(169, 'ST.MICHELS HSS  KADATHURUTHY  KOTTAYAM ', 'schools', '9.766838', '76.499033', 16.53104862072204),
(170, 'ST. MARY S BOYS HSS  KURAVILANGAD  KOTTAYAM ', 'schools', '9.758441', '76.563273', 16.682134663316052),
(171, 'ST. THOMAS HSS  PALA  KOTTAYAM ', 'schools', '9.70192', '76.726059', 25.608256792177297),
(172, 'SB HSS  CHANGANACHERRY  KOTTAYAM ', 'schools', '9.445887', '76.540965', 19.556528984967944),
(173, 'NSS GIRLS HSS  PERUNNA  KOTTAYAM ', 'schools', '9.438193', '76.544488', 20.470348861277124),
(174, 'OLL HSS  UZHAVOOR  KOTTAYAM ', 'schools', '9.787314', '76.610016', 21.83072190552898),
(175, 'MOUNT CARMEL HSS  KOTTAYAM ', 'schools', '9.588361', '76.542501', 5.025131847869226),
(176, 'ST. DOMONIC HSS  KANJIRAPPALLY  KOTTAYAM ', 'schools', '9.556759', '76.790558', 31.71272031286026),
(177, 'A V HSS KURICHY KOTTAYAM ', 'schools', '9.503114', '76.530471', 13.082799566629458),
(178, 'SNDP HSS KILIROOR KOTTAYAM ', 'schools', '9.568843', '76.485722', 6.081933080409762),
(179, 'ST ALOSIUS HSS ATHIRAMPUZHA KOTTAYAM ', 'schools', '9.6679', '76.532952', 6.10399024300653),
(180, 'ST JOSEPH S GHSS CHANGANACHERRY KOTTAYAM ', 'schools', '9.445887', '76.540965', 19.556528984967944),
(181, 'CMS HSS KOTTAYAM ', 'schools', '9.784598', '76.75875', 33.09247461642715),
(182, 'NSS HSS ANICKAD KOTTAYAM ', 'schools', '9.602011', '76.694754', 20.52211993201242),
(183, 'NSS HSS KARAPPUZHA KOTTAYAM ', 'schools', '9.684352', '76.608615', 13.196426885560374),
(184, 'NSS HSS KIDANGORE KOTTAYAM ', 'schools', '9.684978', '76.608347', 13.2107820999393),
(185, 'ST AUGUSTINES HSS RAMAPURAM KOTTAYAM ', 'schools', '9.799051', '76.663286', 26.299813611412116),
(186, 'ST JOHN NEPHUSIANS S HSS KOZHUVANAL KOTTAYAM ', 'schools', '9.655014', '76.664207', 17.557949316241164),
(187, 'EMMANUEL S HSS KOTHANALLOOR KOTTAYAM ', 'schools', '9.720092', '76.523691', 11.416178604035057),
(188, 'ST MARY S HSS KIDANGOOR KOTTAYAM ', 'schools', '9.682108', '76.607993', 13.002274567593833),
(189, 'SMSN HSS VAIKOM KOTTAYAM ', 'schools', '9.766667', '76.4', 20.33229177715748),
(190, 'ST MARY S HSS PALA KOTTAYAM ', 'schools', '9.70192', '76.726059', 25.608256792177297),
(191, 'MUSLIM GIRLS HSS KANGAZHA KOTTAYAM ', 'schools', '9.515909', '76.693244', 23.277681401887186),
(192, 'AM HSS KALAKKETTY KOTTAYAM ', 'schools', '9.618363', '76.775996', 29.35469381261544),
(193, 'ST THOMAS HSS ERUMELY KOTTAYAM ', 'schools', '9.486233', '76.847557', 40.0281824654718),
(194, 'ST GEORGE HSS ARUVITHURA KOTTAYAM ', 'schools', '9.683496', '76.773207', 29.929811724785),
(195, 'ST ANTONY S HSS POONJAR KOTTAYAM ', 'schools', '9.672747', '76.808662', 33.48359284893523),
(196, 'SVR NSS HSS VAZHOOR KOTTAYAM ', 'schools', '9.56402', '76.70603', 22.513705881251457),
(197, 'MODEL TECHNICAL HSS PUTHUPPALLY KOTTAYAM ', 'schools', '9.565332', '76.566162', 8.672395399957647),
(198, 'KRISTU JYOTHI HSS  CHETHIPUZHA  CHANGANASSERY ', 'schools', '9.461858', '76.548161', 17.98583854888),
(199, 'MANGALAM EM HSS  VETTIMUKAL  ETTUMANUR ', 'schools', '9.667906', '76.579411', 9.517662422615533),
(200, 'VINCENT DE- PAUL HSS  PALA KOTTAYAM ', 'schools', '9.713753', '76.682928', 21.871477701888665),
(201, 'SHEM HSS  PERUNNA  CHANGANASSERY ', 'schools', '9.438193', '76.544488', 20.470348861277124),
(202, 'DEAF HSS NEERPARA  THALAYOLAPARAMBU KOTTAYAM ', 'schools', '9.785', '76.4481', 19.671399972347018),
(203, 'GOVT. VHSS  VAYALA  KOTTAYAM ', 'schools', '9.726441', '76.58061', 14.372921215997593),
(204, 'GHSS  PUTHUVELI  PALA  KOTTAYAM ', 'schools', '9.713753', '76.682928', 21.871477701888665),
(205, 'GHSS CHENGALAM  KOTTAYAM  ', 'schools', '9.617091', '76.707677', 21.857113772914488),
(206, 'PTM GHSS  VELLOOR  PAMPADY  KOTTAYAM ', 'schools', '9.565657', '76.644159', 16.01171861293932),
(207, 'GOVERNMENT DEVI VILASOM HSS  KUDAVECHOOR  KOTTAYAM ', 'schools', '9.665548', '76.418706', 11.156533816803199),
(208, 'GHSS CHANGANACHERRY  KOTTAYAM ', 'schools', '9.468894', '76.546565', 17.18347726938816),
(209, 'SACRED HEART HSS  CHANGANACHERRY  KOTTAYAM ', 'schools', '9.445887', '76.540965', 19.556528984967944),
(210, 'SREE VIDHYADIRAJA HSS  ETTUMANOOR  KOTTAYAM ', 'schools', '9.67036', '76.560875', 8.13326205519859),
(211, 'ST. GEORGE S EM HSS  THALAYOLAPARAMBU  KOTTAYAM ', 'schools', '9.785', '76.4481', 19.671399972347018),
(212, 'BRAHMAMANGALAM VHSS CHEMBU VAIKOM KOTTAYAM ', 'schools', '9.766667', '76.4', 20.33229177715748),
(213, 'GOVT.HS  MEENADOM ', 'schools', '9.560872', '76.573492', 9.600742181537067),
(214, 'GOVT.HS  ADUKKAM ', 'schools', '10.210386', '77.550478', 131.8843380956572),
(215, 'MATTAKKARA HS ', 'schools', '9.646109', '76.642805', 15.049936191390344),
(216, 'ST.SEBASTIAN S HS AYARKUNNAM ', 'schools', '9.643638', '76.608197', 11.286329714632839),
(217, 'ST.MICHLES HS PRAVITHANAM ', 'schools', '9.745592', '76.710491', 26.284126804567645),
(218, 'ST.PAULS HS  VALIYAKUMARAMANGALAM ', 'schools', '9.744668', '76.78512', 33.43637917167678),
(219, 'ST.ANTONYS HS  MUTHOLI ', 'schools', '9.689175', '76.658417', 18.22660127715952),
(220, 'KMHS Mavelloor ', 'schools', '9.832857', '76.454772', 24.566061006817797),
(221, 'Kalathil Charis shopping complex ', 'mall', '9.591567', '76.522153', 3.363133849839597),
(222, 'Holy family shopping complex', 'mall', '9.588842', '76.538222', 4.648966915902116),
(223, 'Ajith shopping complex', 'mall', '26.433309', '80.335959', 1914.728247849208),
(224, 'Mary queens hospital kanjirappally', 'hospital', '9.558106', '76.813889', 34.18708067811611);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE IF NOT EXISTS `feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` text,
  `feature` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `keyword`, `feature`) VALUES
(1, 'hospital', 'Heart'),
(2, 'hospital', 'Gynecolagy'),
(3, 'hospital', 'hospital'),
(4, 'hospital', 'Transplant'),
(5, 'hospital', 'Children'),
(6, 'hospital', 'ortho'),
(7, 'College', 'Engineering'),
(8, 'College', 'M.Tech'),
(9, 'College', 'ComputerScience'),
(10, 'College', 'B.tech'),
(11, 'College', 'Electronics'),
(12, 'ATM', 'Fedral'),
(13, 'ATM', 'Axis'),
(14, 'ATM', 'Bank'),
(15, 'ATM', 'Cash'),
(16, 'ATM', 'SBT'),
(17, 'mall', 'KFC'),
(18, 'mall', 'PVR'),
(19, 'mall', 'Chiking'),
(20, 'mall', 'MAX'),
(21, 'mall', 'Foodcourt');

-- --------------------------------------------------------

--
-- Table structure for table `finalkeywordcover`
--

CREATE TABLE IF NOT EXISTS `finalkeywordcover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finalkeywords` text NOT NULL,
  `finallbkc` double NOT NULL,
  `names` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `final_route`
--

CREATE TABLE IF NOT EXISTS `final_route` (
  `id` int(11) DEFAULT NULL,
  `name` text,
  `distance` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_route`
--

INSERT INTO `final_route` (`id`, `name`, `distance`) VALUES
(1, 'Mary queens hospital kanjirappally', '3.344966720736683');

-- --------------------------------------------------------

--
-- Table structure for table `graphall`
--

CREATE TABLE IF NOT EXISTS `graphall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ran` text NOT NULL,
  `baseEx` text NOT NULL,
  `knneEx` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `graphall`
--

INSERT INTO `graphall` (`id`, `ran`, `baseEx`, `knneEx`) VALUES
(1, '1', '60', '22'),
(2, '2', '182', '42'),
(3, '3', '1128', '46'),
(4, '4', '1122', '48'),
(5, '5', '112', '56'),
(6, '6', '108', '50');

-- --------------------------------------------------------

--
-- Table structure for table `keywordcover`
--

CREATE TABLE IF NOT EXISTS `keywordcover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `distance` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `keywordcover`
--

INSERT INTO `keywordcover` (`id`, `name`, `latitude`, `longitude`, `distance`) VALUES
(1, 'Mary queens hospital kanjirappally', '9.558106', '76.813889', '3.344966720736683');

-- --------------------------------------------------------

--
-- Table structure for table `keywordcover1`
--

CREATE TABLE IF NOT EXISTS `keywordcover1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `distance` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `knne_graph`
--

CREATE TABLE IF NOT EXISTS `knne_graph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kcover_count` int(11) NOT NULL,
  `exe_time` double NOT NULL,
  `memory` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `knne_graph`
--

INSERT INTO `knne_graph` (`id`, `kcover_count`, `exe_time`, `memory`) VALUES
(1, 1, 40, '67190072'),
(2, 2, 40, '66410752'),
(3, 4, 50, '66690792'),
(4, 5, 50, '68188568'),
(5, 3, 70, '66678272'),
(6, 3, 56, '76211760'),
(7, 3, 69, '76828280'),
(8, 3, 63, '70067616'),
(9, 3, 10, '74488744'),
(10, 4, 70, '74669736'),
(11, 0, 1, '73927144'),
(12, 1, 35, '71612112'),
(13, 3, 53, '82272440'),
(14, 1, 62, '71874960'),
(15, 1, 31, '72854608'),
(16, 2, 0, '70127888'),
(17, 3, 47, '70276152'),
(18, 2, 124, '69944576'),
(19, 2, 31, '70303504'),
(20, 3, 62, '70470776'),
(21, 3, 0, '72565512'),
(22, 3, 31, '72858064'),
(23, 1, 6, '62318456'),
(24, 0, 1, '76708768'),
(25, 1, 55, '87807312'),
(26, 0, 0, '76515984'),
(27, 0, 0, '77015528'),
(28, 0, 1, '77022488'),
(29, 0, 1, '76536912'),
(30, 1, 51, '79871736'),
(31, 1, 30, '81419992');

-- --------------------------------------------------------

--
-- Table structure for table `latlog_databse`
--

CREATE TABLE IF NOT EXISTS `latlog_databse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(10) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `name` text,
  `latitude` text,
  `longitude` text,
  `distance` text,
  `feature` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `latlog_databse`
--

INSERT INTO `latlog_databse` (`id`, `keywords`, `rating`, `name`, `latitude`, `longitude`, `distance`, `feature`) VALUES
(1, 'atm', 4, 'Axis bank ATMS Chembu Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(2, 'atm', 4, 'Axis bank ATMS Perumpaikad Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(3, 'atm', 4, 'Axis bank ATMS Chenganassery Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(4, 'atm', 4, 'Axis bank ATMS Kodimatha Kottayam', '9.575806', '76.521365', '33.200068198443844', 'Fedral'),
(5, 'atm', 4, 'Axis bank ATMS Kanjikuzhi Kottayam', '9.587476', '76.541598', '31.254443965161798', 'Fedral'),
(6, 'atm', 4, 'Axis bank ATMS Ettumanoor Kottayam', '9.670360', '76.560875', '32.522461367152246', 'Fedral'),
(7, 'atm', 4, 'Axis bank ATMS Thirunakkara Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(8, 'atm', 4, 'Federal Bank ATMS Thellakom Kottayam', '9.644818', '76.547378', '32.5980179570066', 'Fedral'),
(9, 'atm', 4, 'Federal Bank ATMS Muttuchira Kottayam', '9.755556', '76.500000', '43.25783318076872', 'Fedral'),
(10, 'atm', 4, 'Federal Bank ATMS Kaipuzha Kottayam', '9.666667', '76.500000', '38.33590644598082', 'Fedral'),
(11, 'atm', 4, 'Federal Bank ATMS Kanjikuzhy Kottayam', '9.587476', '76.541598', '31.254443965161798', 'Fedral'),
(12, 'atm', 4, 'Federal Bank ATMS Pulimood Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(13, 'atm', 4, 'Federal Bank ATMS Kudayampady Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(14, 'atm', 4, 'Federal Bank ATMS Thiruvathukkal Kottayam', '9.583986', '76.504743', '35.15063637047702', 'Fedral'),
(15, 'atm', 4, 'Federal Bank ATMS Gandhi Nagar Kottayam', '9.631605', '76522810.000000', '5831.053732529739', 'Fedral'),
(16, 'atm', 4, 'Federal Bank ATMS Pallicachira Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(17, 'atm', 4, 'Federal Bank ATMS Pulickalkavala Kottayam ', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(18, 'atm', 4, 'Canara Bank ATMS Market Junction Kottayam', '9.589930', '76.522541', '33.35753522836666', 'Fedral'),
(19, 'atm', 4, 'Canara Bank ATMS Muttambalam Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(20, 'atm', 4, 'Canara Bank ATMS Temple Road Kottayam', '9.590316', '76.516469', '34.01889592278698', 'Fedral'),
(21, 'atm', 4, 'Canara Bank ATMS Railway station Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(22, 'atm', 4, 'Bank of Baroda ATMS Baker junction Kottayam', '9.588592', '76.529919', '32.534352482053016', 'Fedral'),
(23, 'atm', 4, 'Bank of Baroda ATMS Kurisummood Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(24, 'atm', 4, 'HDFC Bank ATM Vadavathoor Kottayam', '9.589686', '76.563273', '28.9887415750408', 'Fedral'),
(25, 'atm', 4, 'HDFC Bank ATM Oravackal Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(26, 'atm', 4, 'HDFC Bank ATM Kudamaloor Kottayam', '9.620269', '76.511247', '35.3920103262329', 'Fedral'),
(27, 'atm', 4, 'HDFC Bank ATM Ettumanoor Kottayam', '9.670630', '76.560875', '32.53703888001323', 'Fedral'),
(28, 'atm', 4, 'HDFC Bank ATM Kanjirappally Kottayam', '9.557270', '76.789435', '4.625584290021146', 'Fedral'),
(29, 'atm', 4, 'South Indian Bank ATM Nagampadam Kottayam', '9.597214', '76.527562', '32.99589218530531', 'Fedral'),
(30, 'atm', 4, 'South Indian Bank ATM Sasthri Road Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(31, 'atm', 4, 'Union Bank of India ATM Ettumanoor Kottayam', '9.670360', '76.560875', '32.522461367152246', 'Fedral'),
(32, 'atm', 4, 'Union Bank of India ATM Shastri Road Kottayam', '9.592096', '76.527189', '32.90904003783092', 'Fedral'),
(33, 'atm', 4, 'Union Bank of India ATM Ponkunnam Kottayam', '9.564863', '76.755830', '8.115287677409288', 'Fedral'),
(34, 'atm', 4, 'Central Bank of India ATM Kumaranellore Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(35, 'atm', 4, 'Central Bank of India ATM Peruva Kottayam', '9.828173', '76.501129', '48.33185445214833', 'Fedral'),
(36, 'atm', 4, 'Central Bank of India ATM Mavellore Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(37, 'atm', 4, 'Central Bank of India ATM Perumpanachi Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(38, 'atm', 4, 'Andhra Bank ATMS Kottam Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(39, 'atm', 4, 'State Bank of Travancore ATM Illikkal Kottayam', '9.587185', '76.499683', '35.76062302646435', 'Fedral'),
(40, 'atm', 4, 'State Bank of Travancore ATM College Road Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(41, 'atm', 4, 'State Bank of Travancore ATM Anickadu Kottayam', '9.602011', '76.694754', '15.989896152217602', 'Fedral'),
(42, 'atm', 4, 'State Bank of Travancore ATM Mavelloor Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(43, 'atm', 4, 'State Bank of Travancore ATM Gandhinagar Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(44, 'atm', 4, 'State Bank of Travancore ATM Perumpanachy Kottayam', '9.480368', '76.582054', '26.67182024576198', 'Fedral'),
(45, 'atm', 4, 'State Bank of Travancore ATM Thirunakkara Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Fedral'),
(46, 'atm', 4, 'State Bank of Travancore ATM Kuravilangad Kottayam', '9.758441', '76.563273', '38.053257975582234', 'Fedral'),
(47, 'atm', 4, 'ICICI Bank ATM Vadavathoor Kottayam', '9.589686', '76.563273', '28.9887415750408', 'Fedral'),
(48, 'atm', 4, 'ICICI Bank ATM Kanjirapally Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Cash'),
(49, 'college', 4, 'Govt. College Kottayam', '9.556887', '76.511066', '34.059457628387904', 'Engineering'),
(50, 'college', 4, 'Sree Sankaracharya University of Sanskrit Ettumanoor', '9.673570', '76.557590', '33.01125005503983', 'Engineering'),
(51, 'college', 4, 'Assumption College Changancherry', '9.452111', '76.540333', '31.866808284427545', 'Engineering'),
(52, 'college', 4, 'B.K. College for Women Kottayam', '9.589899', '76.527598', '32.813618113229516', 'Engineering'),
(53, 'college', 4, 'Baselius College Kottayam', '9.587155', '76.529133', '32.58653486945021', 'Engineering'),
(54, 'college', 4, 'Bishop Choolaparambil Memorial College Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Engineering'),
(55, 'college', 4, 'Bishop Vayalil Memorial Holly Cross College Kottayam', '9.686642', '76.639663', '26.476874577092882', 'Engineering'),
(56, 'college', 4, 'C.M.S. College  Kottayam', '9.596847', '76.520642', '33.72618041898337', 'Engineering'),
(57, 'college', 4, 'College of Applied Science  IHRD  Kaduthuruthy', '9.782792', '76.520530', '43.362674393958855', 'Engineering'),
(58, 'college', 4, 'Devaswom Board College Kottayam  ', '9.803025', '76.479270', '48.27896679699883', 'Engineering'),
(59, 'college', 4, 'Henry Baker College Changancherry', '9.591567', '76.522153', '33.43683598356935', 'Engineering'),
(60, 'college', 4, 'K.E. College Thalayolapramba', '9.591567', '76.522153', '33.43683598356935', 'Engineering'),
(61, 'college', 4, 'Mar Augusthinose College Pala', '9.799061', '76.664132', '34.62043680160602', 'Engineering'),
(62, 'college', 4, 'N.S.S. Hindu College Vazhoor', '9.564020', '76.706030', '13.115637951582718', 'Engineering'),
(63, 'college', 4, 'Sri. Vidyadiraja N.S.S. College   Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Engineering'),
(64, 'college', 4, 'St. Berchamans College Kottayam', '9.451186', '76.538346', '32.10462886158872', 'Engineering'),
(65, 'college', 4, 'St. Dominic College Kanjirappally', '9.569105', '76.817075', '4.51283789863027', 'Engineering'),
(66, 'college', 4, 'St. George College Kottayam', '9.688884', '76.772509', '18.581152707836424', 'Engineering'),
(67, 'college', 4, 'St. Mary s College Kottayam', '9.607605', '76.590103', '26.721947440567178', 'Engineering'),
(68, 'college', 4, 'St. Stepehns College Uzhavoor', '9.786579', '76.606792', '37.03695488582978', 'Engineering'),
(69, 'college', 4, 'St. Thomas College Kottayam', '9.505540', '76.658660', '17.899113213433203', 'Engineering'),
(70, 'college', 4, 'College of Engineering Kidangoor', '9.667592', '76.620933', '26.768845824084554', 'Engineering'),
(71, 'college', 4, 'College of Engineering Poonjar', '9.673689', '76.826264', '16.158204174080677', 'Engineering'),
(72, 'college', 4, 'Govt. College of Engineering Rajiv Gandhi Institute of Technology  R.I.T    Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Engineering'),
(73, 'college', 4, 'Amal Jyothi Engineering College Kanjirapally', '9.529509', '76.821765', '0.21519776620781758', 'Engineering'),
(74, 'college', 4, 'Mangalam College of Engineering Kottayam', '9.677848', '76.575083', '31.59760970862486', 'Engineering'),
(75, 'college', 4, 'Mar Gregorious College of Engineering and Technology Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Engineering'),
(76, 'college', 4, 'Saintgits College of Engineering Kottayam', '9.509847', '76.550986', '29.608188914497717', 'Engineering'),
(77, 'college', 4, 'St. Joseph s College of Engineering and Technology Pala', '9.727789', '76.726798', '24.41229536337269', 'Engineering'),
(78, 'college', 4, 'Vimal Jyothi Engineering College Chemperi', '12.097913', '75.560019', '317.4521423854031', 'Engineering'),
(79, 'college', 4, 'Government Medical College Kottayam', '9.598226', '76.516848', '34.16649770121538', 'Engineering'),
(80, 'college', 4, 'College of Nursing Kottayam', '9.633362', '76.518928', '35.04228744829994', 'Engineering'),
(81, 'college', 4, 'Caritas College of Nursing Kottayam', '9.644880', '76.550136', '32.32310215731169', 'Engineering'),
(82, 'college', 4, 'Theophilus College of Nursing Kangazha', '9.515909', '76.693244', '13.988203727276078', 'Engineering'),
(83, 'hospital', 5, 'Caritas Hospital', '9.645386', '76.549843', '32.37512154589892', 'Heart'),
(84, 'hospital', 5, 'C. M. C. DIAGNOSTIC CENTRE Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Heart'),
(85, 'hospital', 5, 'INDO- AMERICAN HOSPITAL Chemmanakary', '9.766667', '76.400000', '53.16437602926621', 'Heart'),
(86, 'hospital', 5, 'Matha Hospital Thellakom', '9.648451', '76.549562', '32.54156253661665', 'Heart'),
(87, 'hospital', 5, 'S.J.Eye Hospital & Research Institute', '9.500000', '76.633330', '20.741028037657827', 'Heart'),
(88, 'hospital', 5, 'Thengana Medical Mission Hospital', '9.476493', '76.580104', '26.971287090802583', 'Heart'),
(89, 'hospital', 5, 'Anugraha Hospital Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Heart'),
(90, 'hospital', 5, 'Ashakendram Hospital Gandhi Nagar  Kottayam', '9.627058', '76.540015', '32.62647002075914', 'Heart'),
(91, 'hospital', 5, 'Bharath Hospital Azad Lane  Kottayam', '9.588048', '76.519051', '33.69100275589623', 'Heart'),
(92, 'hospital', 5, 'CMC Hospital Samkarnthi  Kottayam', '9.627058', '76.540015', '32.62647002075914', 'Heart'),
(93, 'hospital', 5, 'Champakassery Hospital Kottayam', '9.704050', '76.720472', '22.371551582308605', 'Heart'),
(94, 'hospital', 5, 'City Hospital Temple Road  Kottayam', '9.589426', '76.519390', '33.68491281638739', 'Heart'),
(95, 'hospital', 5, 'Dhanwanthari Centre Gandhi Nagar  Kottayam', '9.631605', '76.522810', '34.57548976490386', 'Heart'),
(96, 'hospital', 5, 'District Hospital K.K. Road  Kottayam', '9.590603', '76.526062', '32.99482431647848', 'Heart'),
(97, 'hospital', 5, 'Ettumanoor Hospital Ettumanoor  Kottayam', '9.688674', '76.776001', '18.454735152540223', 'Heart'),
(98, 'hospital', 5, 'H.D.P Hospital Kaypuzha  Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Heart'),
(99, 'hospital', 5, 'Holy Family Clinics Kottayam', '9.706302', '76.759903', '20.845081651959227', 'Heart'),
(100, 'hospital', 5, 'H and W Cardiac Centre Kottayam', '9.591567', '76.522153', '33.43683598356935', 'Heart'),
(101, 'hospital', 5, 'Institute of Child Health Gandhinagar  Kottayam', '9.641831', '76.530783', '34.15385176884237', 'Heart'),
(102, 'hospital', 5, 'I.C.H. Hospital Kottayam', '9.589975', '76.439191', '42.35600280071804', 'Heart'),
(103, 'hospital', 5, 'K.M.C.H Ettumanoor  Kottayam', '9.670360', '76.560875', '32.522461367152246', 'Heart'),
(104, 'hospital', 5, 'Karunalayalam Kottayam', '9.731909', '76.664038', '28.369993320456253', 'Heart'),
(105, 'hospital', 5, 'Medical Mission Hospital Kollad  Kottayam', '9.439662', '76.544082', '31.874101942221056', 'Heart'),
(106, 'hospital', 5, 'Mercy Nursing Home Pvt. Ltd. Karukachal  Kottayam', '9.500000', '76.633330', '20.741028037657827', 'Heart'),
(107, 'hospital', 5, 'Diagnostic Research Centre  Baker Junction  Kottayam', '9.588592', '76.529919', '32.534352482053016', 'Heart'),
(108, 'hospital', 5, 'S.H. Medical Centre Kottayam', '9.593494', '76.529413', '32.704554935831574', 'Heart'),
(109, 'hospital', 5, 'Vimala Hospital Ettumanoor  Kottayam', '9.664444', '76.553754', '32.90068399171353', 'Heart'),
(110, 'restuarant', 3, 'Aida Hotel M C Road   Kottayam', '9.590205', '76.522539', '33.36400908134543', '0'),
(111, 'restuarant', 3, 'Alankar Caterings Kuruppanthara Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(112, 'restuarant', 3, 'Anna Maira Caterers Kanjirappally  Kottayam ', '9.557270', '76.789435', '4.625584290021146', '0'),
(113, 'restuarant', 3, 'Ann s Caterers Palai  Kottayam', '9.713753', '76.682928', '25.511290760018316', '0'),
(114, 'restuarant', 3, 'Archana Outdoor Catering Service Aruvithura.P.O  Erattupetta  Kottayam', '9.685810', '76.775147', '18.172392563096256', '0'),
(115, 'restuarant', 3, 'Aryaas  P O Road  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(116, 'restuarant', 3, 'Baker s Dining Room	Kumarakom  Kottayam', '9.617545', '76.430095', '43.927987739702786', '0'),
(117, 'restuarant', 3, 'Bar B Que Inn Family Restaurant   ', '9.591567', '76.522153', '33.43683598356935', '0'),
(118, 'restuarant', 3, 'Nattassery S H Mount  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(119, 'restuarant', 3, 'Boat House Cafe Thirunakkara  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(120, 'restuarant', 3, 'Chill Out Juice Shop K K Road  Central Junction  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(121, 'restuarant', 3, 'Choice Catering  Thrikodithanam  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(122, 'restuarant', 3, 'Christy Catering Service lmadeena Shopping Complex  Central Junction  Erattupetta  Kottayam', '9.685810', '76.775147', '18.172392563096256', '0'),
(123, 'restuarant', 3, 'City Bakery and Ice Cream Parlour Erattupetta  Kottayam', '9.685810', '76.775147', '18.172392563096256', '0'),
(124, 'restuarant', 3, ' Coconut Lagoon Hotel Kumarakom  Kottayam', '9.617545', '76.430095', '43.927987739702786', '0'),
(125, 'restuarant', 3, 'Cordon Bleu  Backwater Ripples  Kumarakom', '9.617545', '76.430095', '43.927987739702786', '0'),
(126, 'restuarant', 3, 'Cosmo Ice Cream Parlour Vellappad  Palai  Kottayam', '9.713753', '76.682928', '25.511290760018316', '0'),
(127, 'restuarant', 3, 'Deepthi Cateres Deepthi Consultants  Thirunakkara  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(128, 'restuarant', 3, 'Dhanya Restaurant Ushus  Chingavanam  Kottayam', '9.527625', '76.513220', '33.679469213591126', '0'),
(129, 'restuarant', 3, 'Ettukettu Kumarakom Lake Resort  Kumarakom North  Kottayam', '9.591567', '76.522153', '33.43683598356935', '0'),
(130, 'restuarant', 3, 'Gogul Ice Cream Parlour Edaparambil  Palai  Kottayam ', '9.713753', '76.682928', '25.511290760018316', '0'),
(131, 'restuarant', 3, 'Golden Bakery and Catering Service Kottayam ', '9.591567', '76.522153', '33.43683598356935', '0'),
(132, 'schools', 4, 'GOVT. HSS ERATTUPETTAH  KOTTAYAM ', '9.714154', '76.683058', '25.538950999381246', '0'),
(133, 'schools', 4, 'GOVT. HSS KADAPPOOR  KOTTAYAM ', '9.699027', '76.579996', '32.45807585565871', '0'),
(134, 'schools', 4, 'GOVT. HSS KARAPPUZHA KOTTAYAM ', '9.583173', '76.511683', '34.38479974334153', '0'),
(135, 'schools', 4, 'GOVT. HSS KUMARAKAM  KOTTAYAM ', '9.594868', '76.468178', '39.31710602789687', '0'),
(136, 'schools', 4, 'GOVT. HSS  PALA   KOTTAYAM ', '9.714154', '76.683058', '25.538950999381246', '0'),
(137, 'schools', 4, 'GOVT. HSS  THAZHATHUVADAKARA  KOTTAYAM ', '9.466056', '76.717238', '13.261801171991282', '0'),
(138, 'schools', 4, 'GOVT. HSS  THRIKKODITHANAM  KOTTAYAM ', '9.469824', '76.590179', '26.068995071331635', '0'),
(139, 'schools', 4, 'GOVT. GIRLS HSS  VAIKOM  KOTTAYAM ', '9.783083', '76.450867', '49.42763269256252', '0'),
(140, 'schools', 4, 'GOVT. HSS  VADAKKEKKARA  KOTTAYAM ', '9.682719', '76.778989', '17.729698985285268', '0'),
(141, 'schools', 4, 'GOVT. HSS  PAMPADY  KOTTAYAM ', '9.563925', '76.645513', '19.55266525885221', '0'),
(142, 'schools', 4, 'GOVT. HSS  VAIKOM  KOTTAYAM ', '9.768579', '76.489756', '45.019426295417404', '0'),
(143, 'schools', 4, 'GOVT. HSS  PERUVA  KOTTAYAM ', '9.828620', '76.502373', '48.267509089069726', '0'),
(144, 'schools', 4, 'GOVT HSS KUDAMALLOOR KOTTAYAM ', '9.618632', '76.508537', '35.625395025962874', '0'),
(145, 'schools', 4, 'GOVT HSS KURICHY KOTTAYAM ', '9.500929', '76.512873', '33.859775710446044', '0'),
(146, 'schools', 4, 'GOVT HSS EDAKKOLI KOTTAYAM ', '9.777267', '76.638203', '34.11560243741343', '0'),
(147, 'schools', 4, 'SKV GOVT HSS NEENDOOR KOTTAYAM ', '9.679547', '76.509621', '37.982082060193626', '0'),
(148, 'schools', 4, 'GOVT HSS KANAKKARY KOTTAYAM ', '9.699730', '76.547220', '35.48183336515477', '0'),
(149, 'schools', 4, 'GOVT. VHSS PONKUNNAM VAZHOOR KOTTAYAM ', '9.564020', '76.706030', '13.115637951582718', '0'),
(150, 'schools', 4, 'GOVT. HSS NEDUMKUNNAM KOTTAYAM ', '9.507667', '76.661289', '17.580431508215216', '0'),
(151, 'schools', 4, 'GOVT. HSS EDAKUNNAM KOTTAYAM ', '9.551519', '76.837486', '3.1867718967490566', '0'),
(152, 'schools', 4, 'GOVT. VHSS MURIKKUMVAYAL KOTTAYAM ', '9.515587', '76.898037', '8.690166482294291', '0'),
(153, 'schools', 4, 'M G M HSS  LAKKATTOOR  KOTTAYAM ', '9.619829', '76.638383', '22.369980534687333', '0'),
(154, 'schools', 4, 'M G HSS  ERATTUPETTA  KOTTAYAM ', '9.687790', '76.784676', '18.13261759015841', '0'),
(155, 'schools', 4, 'M T HSS  KOTTAYAM ', '9.668079', '76.537945', '34.630463822621344', '0'),
(156, 'schools', 4, 'NSS BHSS  KARUKACHAL  KOTTAYAM ', '9.500000', '76.633330', '20.741028037657827', '0'),
(157, 'schools', 4, 'ST. JOHN S BAPTIST HSS  NEDUMKUNNAM  KOTTAYAM ', '9.507833', '76.660042', '17.713695366756856', '0'),
(158, 'schools', 4, 'JM HSS  VAKATHANAM  KOTTAYAM ', '9.504668', '76.565259', '28.094523654310745', '0'),
(159, 'schools', 4, 'ST. EPHREM S HSS  MANNANAM  KOTTAYAM ', '9.647927', '76.522810', '35.21866891439005', '0'),
(160, 'schools', 4, 'SMV HSS  POONJAR  KOTTAYAM ', '9.672747', '76.808662', '16.086914528892695', '0'),
(161, 'schools', 4, 'ST.SEBASTIAN S HSS  KADANAD  KOTTAYAM ', '9.778761', '76.701565', '30.72458318632378', '0'),
(162, 'schools', 4, 'ST. MARY S BHSS  BHARANANGANAM  KOTTAYAM ', '9.700000', '76.727778', '21.591927255337257', '0'),
(163, 'schools', 4, 'CMS HSS  MELUKAVU  KOTTAYAM ', '9.797485', '76.765753', '30.51078744585474', '0'),
(164, 'schools', 4, 'JJMM HSS  YENDAYAR  KOTTAYAM ', '9.617362', '76.890832', '12.567220291288189', '0'),
(165, 'schools', 4, 'VISWABHARATHI SNDP HSS  NJEEZHOOR  KOTTAYAM ', '9.791667', '76.526389', '43.53524504305789', '0'),
(166, 'schools', 4, 'ST. LITTLE THERESAS GHSS  VAIKOM  KOTTAYAM ', '9.766667', '76.400000', '53.16437602926621', '0'),
(167, 'schools', 4, 'HOLY CROSS HSS  CHERPUNKAL  KOTTAYAM ', '9.689722', '76.635000', '27.087262803074655', '0'),
(168, 'schools', 4, 'NSS HSS  KALLARA  KOTTAYAM ', '9.705957', '76.476552', '42.54877883753296', '0'),
(169, 'schools', 4, 'ST.MICHELS HSS  KADATHURUTHY  KOTTAYAM ', '9.766838', '76.499033', '44.087199646466765', '0'),
(170, 'schools', 4, 'ST. MARY S BOYS HSS  KURAVILANGAD  KOTTAYAM ', '9.758441', '76.563273', '38.053257975582234', '0'),
(171, 'schools', 4, 'ST. THOMAS HSS  PALA  KOTTAYAM ', '9.701920', '76.726059', '21.86925156289863', '0'),
(172, 'schools', 4, 'SB HSS  CHANGANACHERRY  KOTTAYAM ', '9.445887', '76.540965', '31.992860907614965', '0'),
(173, 'schools', 4, 'NSS GIRLS HSS  PERUNNA  KOTTAYAM ', '9.438193', '76.544488', '31.883075838114745', '0'),
(174, 'schools', 4, 'OLL HSS  UZHAVOOR  KOTTAYAM ', '9.787314', '76.610016', '36.878291857175284', '0'),
(175, 'schools', 4, 'MOUNT CARMEL HSS  KOTTAYAM ', '9.588361', '76.542501', '31.178333482690466', '0'),
(176, 'schools', 4, 'ST. DOMONIC HSS  KANJIRAPPALLY  KOTTAYAM ', '9.556759', '76.790558', '4.497214767345782', '0'),
(177, 'schools', 4, 'A V HSS KURICHY KOTTAYAM ', '9.503114', '76.530471', '31.913573091148855', '0'),
(178, 'schools', 4, 'SNDP HSS KILIROOR KOTTAYAM ', '9.568843', '76.485722', '36.96738438457492', '0'),
(179, 'schools', 4, 'ST ALOSIUS HSS ATHIRAMPUZHA KOTTAYAM ', '9.667900', '76.532952', '35.11245373759074', '0'),
(180, 'schools', 4, 'ST JOSEPH S GHSS CHANGANACHERRY KOTTAYAM ', '9.445887', '76.540965', '31.992860907614965', '0'),
(181, 'schools', 4, 'CMS HSS KOTTAYAM ', '9.784598', '76.758750', '29.272022167070986', '0'),
(182, 'schools', 4, 'NSS HSS ANICKAD KOTTAYAM ', '9.602011', '76.694754', '15.989896152217602', '0'),
(183, 'schools', 4, 'NSS HSS KARAPPUZHA KOTTAYAM ', '9.684352', '76.608615', '28.959313075891945', '0'),
(184, 'schools', 4, 'NSS HSS KIDANGORE KOTTAYAM ', '9.684978', '76.608347', '29.024590320797785', '0'),
(185, 'schools', 4, 'ST AUGUSTINES HSS RAMAPURAM KOTTAYAM ', '9.799051', '76.663286', '34.66543314592412', '0'),
(186, 'schools', 4, 'ST JOHN NEPHUSIANS S HSS KOZHUVANAL KOTTAYAM ', '9.655014', '76.664207', '22.141221074369216', '0'),
(187, 'schools', 4, 'EMMANUEL S HSS KOTHANALLOOR KOTTAYAM ', '9.720092', '76.523691', '38.88007727956093', '0'),
(188, 'schools', 4, 'ST MARY S HSS KIDANGOOR KOTTAYAM ', '9.682108', '76.607993', '28.865584991910744', '0'),
(189, 'schools', 4, 'SMSN HSS VAIKOM KOTTAYAM ', '9.766667', '76.400000', '53.16437602926621', '0'),
(190, 'schools', 4, 'ST MARY S HSS PALA KOTTAYAM ', '9.701920', '76.726059', '21.86925156289863', '0'),
(191, 'schools', 4, 'MUSLIM GIRLS HSS KANGAZHA KOTTAYAM ', '9.515909', '76.693244', '13.988203727276078', '0'),
(192, 'schools', 4, 'AM HSS KALAKKETTY KOTTAYAM ', '9.618363', '76.775996', '11.09172901209408', '0'),
(193, 'schools', 4, 'ST THOMAS HSS ERUMELY KOTTAYAM ', '9.486233', '76.847557', '5.609629312899418', '0'),
(194, 'schools', 4, 'ST GEORGE HSS ARUVITHURA KOTTAYAM ', '9.683496', '76.773207', '17.984220125218478', '0'),
(195, 'schools', 4, 'ST ANTONY S HSS POONJAR KOTTAYAM ', '9.672747', '76.808662', '16.086914528892695', '0'),
(196, 'schools', 4, 'SVR NSS HSS VAZHOOR KOTTAYAM ', '9.564020', '76.706030', '13.115637951582718', '0'),
(197, 'schools', 4, 'MODEL TECHNICAL HSS PUTHUPPALLY KOTTAYAM ', '9.565332', '76.566162', '28.162898736331954', '0'),
(198, 'schools', 4, 'KRISTU JYOTHI HSS  CHETHIPUZHA  CHANGANASSERY ', '9.461858', '76.548161', '30.75886989326205', '0'),
(199, 'schools', 4, 'MANGALAM EM HSS  VETTIMUKAL  ETTUMANUR ', '9.667906', '76.579411', '30.619966043199348', '0'),
(200, 'schools', 4, 'VINCENT DE- PAUL HSS  PALA KOTTAYAM ', '9.713753', '76.682928', '25.511290760018316', '0'),
(201, 'schools', 4, 'SHEM HSS  PERUNNA  CHANGANASSERY ', '9.438193', '76.544488', '31.883075838114745', '0'),
(202, 'schools', 4, 'DEAF HSS NEERPARA  THALAYOLAPARAMBU KOTTAYAM ', '9.785000', '76.448100', '49.798676452674776', '0'),
(203, 'schools', 4, 'GOVT. VHSS  VAYALA  KOTTAYAM ', '9.726441', '76.580610', '34.278028866285254', '0'),
(204, 'schools', 4, 'GHSS  PUTHUVELI  PALA  KOTTAYAM ', '9.713753', '76.682928', '25.511290760018316', '0'),
(205, 'schools', 4, 'GHSS CHENGALAM  KOTTAYAM  ', '9.617091', '76.707677', '15.77673385304599', '0'),
(206, 'schools', 4, 'PTM GHSS  VELLOOR  PAMPADY  KOTTAYAM ', '9.565657', '76.644159', '19.73757245941856', '0'),
(207, 'schools', 4, 'GOVERNMENT DEVI VILASOM HSS  KUDAVECHOOR  KOTTAYAM ', '9.665548', '76.418706', '46.60749419983185', '0'),
(208, 'schools', 4, 'GHSS CHANGANACHERRY  KOTTAYAM ', '9.468894', '76.546565', '30.7496904392347', '0'),
(209, 'schools', 4, 'SACRED HEART HSS  CHANGANACHERRY  KOTTAYAM ', '9.445887', '76.540965', '31.992860907614965', '0'),
(210, 'schools', 4, 'SREE VIDHYADIRAJA HSS  ETTUMANOOR  KOTTAYAM ', '9.670360', '76.560875', '32.522461367152246', '0'),
(211, 'schools', 4, 'ST. GEORGE S EM HSS  THALAYOLAPARAMBU  KOTTAYAM ', '9.785000', '76.448100', '49.798676452674776', '0'),
(212, 'schools', 4, 'BRAHMAMANGALAM VHSS CHEMBU VAIKOM KOTTAYAM ', '9.766667', '76.400000', '53.16437602926621', '0'),
(213, 'schools', 4, 'GOVT.HS  MEENADOM ', '9.560872', '76.573492', '27.297523437274748', '0'),
(214, 'schools', 4, 'GOVT.HS  ADUKKAM ', '10.210386', '77.550478', '110.34913662707207', '0'),
(215, 'schools', 4, 'MATTAKKARA HS ', '9.646109', '76.642805', '23.435056870996064', '0'),
(216, 'schools', 4, 'ST.SEBASTIAN S HS AYARKUNNAM ', '9.643638', '76.608197', '26.538399863611318', '0'),
(217, 'schools', 4, 'ST.MICHLES HS PRAVITHANAM ', '9.745592', '76.710491', '26.97321120626911', '0'),
(218, 'schools', 4, 'ST.PAULS HS  VALIYAKUMARAMANGALAM ', '9.744668', '76.785120', '24.347678572635036', '0'),
(219, 'schools', 4, 'ST.ANTONYS HS  MUTHOLI ', '9.689175', '76.658417', '25.174816818125272', '0'),
(220, 'schools', 4, 'KMHS Mavelloor ', '9.832857', '76.454772', '52.467696601780425', '0'),
(221, 'mall', 4, 'Kalathil Charis shopping complex ', '9.591567', '76.522153', '33.43683598356935', '0'),
(222, 'mall', 4, 'Holy family shopping complex', '9.588842', '76.538222', '31.648687977007945', '0'),
(223, 'mall', 4, 'Ajith shopping complex', '26.433309', '80.335959', '1917.928357370535', '0'),
(224, 'hospital', 5, 'Mary queens hospital kanjirappally', '9.558106', '76.813889', '3.344966720736683', 'Heart');

-- --------------------------------------------------------

--
-- Table structure for table `lbkc`
--

CREATE TABLE IF NOT EXISTS `lbkc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lbkc` double NOT NULL,
  `keywords` text NOT NULL,
  `names` text NOT NULL,
  `dis` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE IF NOT EXISTS `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object` text,
  `keyword` text,
  `fileid` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=223 ;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`id`, `object`, `keyword`, `fileid`) VALUES
(1, 'College', 'College', 'Devaswom Board College.txt'),
(2, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(3, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(4, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(5, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(6, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(7, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(8, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(9, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(10, 'College', 'College', 'Govt. College.txt'),
(11, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(12, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(13, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(14, 'College', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(15, 'College', 'College', 'St. Berchamans College.txt'),
(16, 'College', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(17, 'College', 'College', 'C.M.S. College.txt'),
(18, 'College', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(19, 'College', 'College', 'Caritas College of Nursing Kottayam.txt'),
(20, 'College', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(21, 'College', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(22, 'College', 'College', 'St. George College.txt'),
(23, 'College', 'College', 'Government Medical College Kottayam.txt'),
(24, 'College', 'College', 'St. Dominic College Kanjirappally.txt'),
(25, 'College', 'College', 'St. Marys College Kottayam.txt'),
(26, 'College', 'College', 'College of Engineering Poonjar.txt'),
(27, 'College', 'College', 'Saintgits College of Engineering Kottayam.txt'),
(28, 'College', 'College', 'Assumption College Changancherry.txt'),
(29, 'College', 'College', 'Theophilus College of Nursing Kangazha.txt'),
(30, 'College', 'College', 'Henry Baker College Changancherry.txt'),
(31, 'College', 'College', 'B.K. College for Women.txt'),
(32, 'College', 'College', 'College of Nursing Kottayam.txt'),
(33, 'College', 'College', 'Baselius College.txt'),
(34, 'College', 'College', 'St. Stepehns College Uzhavoor.txt'),
(35, 'College', 'College', 'Devaswom Board College.txt'),
(36, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(37, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(38, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(39, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(40, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(41, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(42, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(43, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(44, 'College', 'College', 'Govt. College.txt'),
(45, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(46, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(47, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(48, 'College', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(49, 'College', 'College', 'St. Berchamans College.txt'),
(50, 'College', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(51, 'College', 'College', 'C.M.S. College.txt'),
(52, 'College', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(53, 'College', 'College', 'Caritas College of Nursing Kottayam.txt'),
(54, 'College', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(55, 'College', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(56, 'College', 'College', 'St. George College.txt'),
(57, 'College', 'College', 'Government Medical College Kottayam.txt'),
(58, 'College', 'College', 'St. Dominic College Kanjirappally.txt'),
(59, 'College', 'College', 'St. Marys College Kottayam.txt'),
(60, 'College', 'College', 'College of Engineering Poonjar.txt'),
(61, 'College', 'College', 'Saintgits College of Engineering Kottayam.txt'),
(62, 'College', 'College', 'Assumption College Changancherry.txt'),
(63, 'College', 'College', 'Theophilus College of Nursing Kangazha.txt'),
(64, 'College', 'College', 'Henry Baker College Changancherry.txt'),
(65, 'College', 'College', 'B.K. College for Women.txt'),
(66, 'College', 'College', 'College of Nursing Kottayam.txt'),
(67, 'College', 'College', 'Baselius College.txt'),
(68, 'College', 'College', 'St. Stepehns College Uzhavoor.txt'),
(69, 'College', 'College', 'Devaswom Board College.txt'),
(70, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(71, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(72, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(73, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(74, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(75, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(76, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(77, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(78, 'College', 'College', 'Govt. College.txt'),
(79, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(80, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(81, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(82, 'College', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(83, 'College', 'College', 'St. Berchamans College.txt'),
(84, 'College', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(85, 'College', 'College', 'C.M.S. College.txt'),
(86, 'College', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(87, 'College', 'College', 'Caritas College of Nursing Kottayam.txt'),
(88, 'College', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(89, 'College', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(90, 'College', 'College', 'St. George College.txt'),
(91, 'College', 'College', 'Government Medical College Kottayam.txt'),
(92, 'College', 'College', 'St. Dominic College Kanjirappally.txt'),
(93, 'College', 'College', 'St. Marys College Kottayam.txt'),
(94, 'College', 'College', 'College of Engineering Poonjar.txt'),
(95, 'College', 'College', 'Saintgits College of Engineering Kottayam.txt'),
(96, 'College', 'College', 'Assumption College Changancherry.txt'),
(97, 'College', 'College', 'Theophilus College of Nursing Kangazha.txt'),
(98, 'College', 'College', 'Henry Baker College Changancherry.txt'),
(99, 'College', 'College', 'B.K. College for Women.txt'),
(100, 'College', 'College', 'College of Nursing Kottayam.txt'),
(101, 'College', 'College', 'Baselius College.txt'),
(102, 'College', 'College', 'St. Stepehns College Uzhavoor.txt'),
(103, 'mall', 'mall', 'Kalathil Charis shopping complex.txt'),
(104, 'mall', 'mall', 'Holy family shopping complex.txt'),
(105, 'mall', 'mall', 'Ajith shopping complex.txt'),
(106, 'College', 'College', 'Devaswom Board College.txt'),
(107, 'College', 'College', 'Devaswom Board College.txt'),
(108, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(109, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(110, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(111, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(112, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(113, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(114, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(115, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(116, 'College', 'College', 'Govt. College.txt'),
(117, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(118, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(119, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(120, 'College', 'College', 'Devaswom Board College.txt'),
(121, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(122, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(123, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(124, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(125, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(126, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(127, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(128, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(129, 'College', 'College', 'Govt. College.txt'),
(130, 'College', 'College', 'Devaswom Board College.txt'),
(131, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(132, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(133, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(134, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(135, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(136, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(137, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(138, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(139, 'College', 'College', 'Govt. College.txt'),
(140, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(141, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(142, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(143, 'College', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(144, 'College', 'College', 'St. Berchamans College.txt'),
(145, 'College', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(146, 'College', 'College', 'C.M.S. College.txt'),
(147, 'College', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(148, 'College', 'College', 'Caritas College of Nursing Kottayam.txt'),
(149, 'College', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(150, 'College', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(151, 'College', 'College', 'St. George College.txt'),
(152, 'College', 'College', 'Government Medical College Kottayam.txt'),
(153, 'College', 'College', 'St. Dominic College Kanjirappally.txt'),
(154, 'College', 'College', 'St. Marys College Kottayam.txt'),
(155, 'College', 'College', 'Devaswom Board College.txt'),
(156, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(157, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(158, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(159, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(160, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(161, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(162, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(163, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(164, 'College', 'College', 'Govt. College.txt'),
(165, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(166, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(167, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(168, 'College', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(169, 'College', 'College', 'St. Berchamans College.txt'),
(170, 'College', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(171, 'College', 'College', 'C.M.S. College.txt'),
(172, 'College', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(173, 'College', 'College', 'Caritas College of Nursing Kottayam.txt'),
(174, 'College', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(175, 'College', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(176, 'College', 'College', 'St. George College.txt'),
(177, 'College', 'College', 'Government Medical College Kottayam.txt'),
(178, 'College', 'College', 'St. Dominic College Kanjirappally.txt'),
(179, 'College', 'College', 'St. Marys College Kottayam.txt'),
(180, 'College', 'College', 'College of Engineering Poonjar.txt'),
(181, 'College', 'College', 'Saintgits College of Engineering Kottayam.txt'),
(182, 'College', 'College', 'Assumption College Changancherry.txt'),
(183, 'College', 'College', 'Theophilus College of Nursing Kangazha.txt'),
(184, 'College', 'College', 'Henry Baker College Changancherry.txt'),
(185, 'College', 'College', 'B.K. College for Women.txt'),
(186, 'College', 'College', 'College of Nursing Kottayam.txt'),
(187, 'College', 'College', 'Baselius College.txt'),
(188, 'College', 'College', 'St. Stepehns College Uzhavoor.txt'),
(189, 'College', 'College', 'Devaswom Board College.txt'),
(190, 'College', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(191, 'College', 'College', 'K.E. College Thalayolapramba.txt'),
(192, 'College', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(193, 'College', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(194, 'College', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(195, 'College', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(196, 'College', 'College', 'College of Engineering Kidangoor.txt'),
(197, 'College', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(198, 'College', 'College', 'Govt. College.txt'),
(199, 'College', 'College', 'St. Thomas College Kottayam.txt'),
(200, 'College', 'College', 'Mar Augusthinose College Pala.txt'),
(201, 'College', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(202, 'College', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(203, 'College', 'College', 'St. Berchamans College.txt'),
(204, 'College', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(205, 'College', 'College', 'C.M.S. College.txt'),
(206, 'College', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(207, 'College', 'College', 'Caritas College of Nursing Kottayam.txt'),
(208, 'College', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(209, 'College', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(210, 'College', 'College', 'St. George College.txt'),
(211, 'College', 'College', 'Government Medical College Kottayam.txt'),
(212, 'College', 'College', 'St. Dominic College Kanjirappally.txt'),
(213, 'College', 'College', 'St. Marys College Kottayam.txt'),
(214, 'College', 'College', 'College of Engineering Poonjar.txt'),
(215, 'College', 'College', 'Saintgits College of Engineering Kottayam.txt'),
(216, 'College', 'College', 'Assumption College Changancherry.txt'),
(217, 'College', 'College', 'Theophilus College of Nursing Kangazha.txt'),
(218, 'College', 'College', 'Henry Baker College Changancherry.txt'),
(219, 'College', 'College', 'B.K. College for Women.txt'),
(220, 'College', 'College', 'College of Nursing Kottayam.txt'),
(221, 'College', 'College', 'Baselius College.txt'),
(222, 'College', 'College', 'St. Stepehns College Uzhavoor.txt');

-- --------------------------------------------------------

--
-- Table structure for table `object1`
--

CREATE TABLE IF NOT EXISTS `object1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object` text,
  `fileid` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `object1`
--

INSERT INTO `object1` (`id`, `object`, `fileid`) VALUES
(1, 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(2, 'College', 'Assumption College Changancherry.txt'),
(3, 'College', 'B.K. College for Women.txt'),
(4, 'College', 'Baselius College.txt'),
(5, 'College', 'Bishop Choolaparambil Memorial College.txt'),
(6, 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(7, 'College', 'C.M.S. College.txt'),
(8, 'College', 'Caritas College of Nursing Kottayam.txt'),
(9, 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(10, 'College', 'College of Engineering Kidangoor.txt'),
(11, 'College', 'College of Engineering Poonjar.txt'),
(12, 'College', 'College of Nursing Kottayam.txt'),
(13, 'College', 'Devaswom Board College.txt'),
(14, 'College', 'Government Medical College Kottayam.txt'),
(15, 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(16, 'College', 'Govt. College.txt'),
(17, 'College', 'Henry Baker College Changancherry.txt'),
(18, 'College', 'K.E. College Thalayolapramba.txt'),
(19, 'College', 'Mangalam College of Engineering Kottayam.txt'),
(20, 'College', 'Mar Augusthinose College Pala.txt'),
(21, 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(22, 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(23, 'College', 'Saintgits College of Engineering Kottayam.txt'),
(24, 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(25, 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(26, 'College', 'St. Berchamans College.txt'),
(27, 'College', 'St. Dominic College Kanjirappally.txt'),
(28, 'College', 'St. George College.txt'),
(29, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(30, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(31, 'College', 'St. Marys College Kottayam.txt'),
(32, 'College', 'St. Marys College Kottayam.txt'),
(33, 'College', 'St. Stepehns College Uzhavoor.txt'),
(34, 'College', 'St. Thomas College Kottayam.txt'),
(35, 'College', 'Theophilus College of Nursing Kangazha.txt'),
(36, 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(37, 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(38, 'College', 'Assumption College Changancherry.txt'),
(39, 'College', 'B.K. College for Women.txt'),
(40, 'College', 'Baselius College.txt'),
(41, 'College', 'Bishop Choolaparambil Memorial College.txt'),
(42, 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(43, 'College', 'C.M.S. College.txt'),
(44, 'College', 'Caritas College of Nursing Kottayam.txt'),
(45, 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(46, 'College', 'College of Engineering Kidangoor.txt'),
(47, 'College', 'College of Engineering Poonjar.txt'),
(48, 'College', 'College of Nursing Kottayam.txt'),
(49, 'College', 'Devaswom Board College.txt'),
(50, 'College', 'Government Medical College Kottayam.txt'),
(51, 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(52, 'College', 'Govt. College.txt'),
(53, 'College', 'Henry Baker College Changancherry.txt'),
(54, 'College', 'K.E. College Thalayolapramba.txt'),
(55, 'College', 'Mangalam College of Engineering Kottayam.txt'),
(56, 'College', 'Mar Augusthinose College Pala.txt'),
(57, 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(58, 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(59, 'College', 'Saintgits College of Engineering Kottayam.txt'),
(60, 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(61, 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(62, 'College', 'St. Berchamans College.txt'),
(63, 'College', 'St. Dominic College Kanjirappally.txt'),
(64, 'College', 'St. George College.txt'),
(65, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(66, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(67, 'College', 'St. Marys College Kottayam.txt'),
(68, 'College', 'St. Marys College Kottayam.txt'),
(69, 'College', 'St. Stepehns College Uzhavoor.txt'),
(70, 'College', 'St. Thomas College Kottayam.txt'),
(71, 'College', 'Theophilus College of Nursing Kangazha.txt'),
(72, 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(73, 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(74, 'College', 'Assumption College Changancherry.txt'),
(75, 'College', 'B.K. College for Women.txt'),
(76, 'College', 'Baselius College.txt'),
(77, 'College', 'Bishop Choolaparambil Memorial College.txt'),
(78, 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(79, 'College', 'C.M.S. College.txt'),
(80, 'College', 'Caritas College of Nursing Kottayam.txt'),
(81, 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(82, 'College', 'College of Engineering Kidangoor.txt'),
(83, 'College', 'College of Engineering Poonjar.txt'),
(84, 'College', 'College of Nursing Kottayam.txt'),
(85, 'College', 'Devaswom Board College.txt'),
(86, 'College', 'Government Medical College Kottayam.txt'),
(87, 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(88, 'College', 'Govt. College.txt'),
(89, 'College', 'Henry Baker College Changancherry.txt'),
(90, 'College', 'K.E. College Thalayolapramba.txt'),
(91, 'College', 'Mangalam College of Engineering Kottayam.txt'),
(92, 'College', 'Mar Augusthinose College Pala.txt'),
(93, 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(94, 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(95, 'College', 'Saintgits College of Engineering Kottayam.txt'),
(96, 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(97, 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(98, 'College', 'St. Berchamans College.txt'),
(99, 'College', 'St. Dominic College Kanjirappally.txt'),
(100, 'College', 'St. George College.txt'),
(101, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(102, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(103, 'College', 'St. Marys College Kottayam.txt'),
(104, 'College', 'St. Marys College Kottayam.txt'),
(105, 'College', 'St. Stepehns College Uzhavoor.txt'),
(106, 'College', 'St. Thomas College Kottayam.txt'),
(107, 'College', 'Theophilus College of Nursing Kangazha.txt'),
(108, 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(109, 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(110, 'College', 'Assumption College Changancherry.txt'),
(111, 'College', 'B.K. College for Women.txt'),
(112, 'College', 'Baselius College.txt'),
(113, 'College', 'Bishop Choolaparambil Memorial College.txt'),
(114, 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(115, 'College', 'C.M.S. College.txt'),
(116, 'College', 'Caritas College of Nursing Kottayam.txt'),
(117, 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(118, 'College', 'College of Engineering Kidangoor.txt'),
(119, 'College', 'College of Engineering Poonjar.txt'),
(120, 'College', 'College of Nursing Kottayam.txt'),
(121, 'College', 'Devaswom Board College.txt'),
(122, 'College', 'Government Medical College Kottayam.txt'),
(123, 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(124, 'College', 'Govt. College.txt'),
(125, 'College', 'Henry Baker College Changancherry.txt'),
(126, 'College', 'K.E. College Thalayolapramba.txt'),
(127, 'College', 'Mangalam College of Engineering Kottayam.txt'),
(128, 'College', 'Mar Augusthinose College Pala.txt'),
(129, 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(130, 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(131, 'College', 'Saintgits College of Engineering Kottayam.txt'),
(132, 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(133, 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(134, 'College', 'St. Berchamans College.txt'),
(135, 'College', 'St. Dominic College Kanjirappally.txt'),
(136, 'College', 'St. George College.txt'),
(137, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(138, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(139, 'College', 'St. Marys College Kottayam.txt'),
(140, 'College', 'St. Marys College Kottayam.txt'),
(141, 'College', 'St. Stepehns College Uzhavoor.txt'),
(142, 'College', 'St. Thomas College Kottayam.txt'),
(143, 'College', 'Theophilus College of Nursing Kangazha.txt'),
(144, 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(145, 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(146, 'College', 'Assumption College Changancherry.txt'),
(147, 'College', 'B.K. College for Women.txt'),
(148, 'College', 'Baselius College.txt'),
(149, 'College', 'Bishop Choolaparambil Memorial College.txt'),
(150, 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(151, 'College', 'C.M.S. College.txt'),
(152, 'College', 'Caritas College of Nursing Kottayam.txt'),
(153, 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(154, 'College', 'College of Engineering Kidangoor.txt'),
(155, 'College', 'College of Engineering Poonjar.txt'),
(156, 'College', 'College of Nursing Kottayam.txt'),
(157, 'College', 'Devaswom Board College.txt'),
(158, 'College', 'Government Medical College Kottayam.txt'),
(159, 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(160, 'College', 'Govt. College.txt'),
(161, 'College', 'Henry Baker College Changancherry.txt'),
(162, 'College', 'K.E. College Thalayolapramba.txt'),
(163, 'College', 'Mangalam College of Engineering Kottayam.txt'),
(164, 'College', 'Mar Augusthinose College Pala.txt'),
(165, 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(166, 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(167, 'College', 'Saintgits College of Engineering Kottayam.txt'),
(168, 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(169, 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(170, 'College', 'St. Berchamans College.txt'),
(171, 'College', 'St. Dominic College Kanjirappally.txt'),
(172, 'College', 'St. George College.txt'),
(173, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(174, 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(175, 'College', 'St. Marys College Kottayam.txt'),
(176, 'College', 'St. Marys College Kottayam.txt'),
(177, 'College', 'St. Stepehns College Uzhavoor.txt'),
(178, 'College', 'St. Thomas College Kottayam.txt'),
(179, 'College', 'Theophilus College of Nursing Kangazha.txt'),
(180, 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(181, 'mall', 'Ajith shopping complex.txt'),
(182, 'mall', 'Holy family shopping complex.txt'),
(183, 'mall', 'Kalathil Charis shopping complex.txt');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE IF NOT EXISTS `query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query1` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `route_table1`
--

CREATE TABLE IF NOT EXISTS `route_table1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `distance` text NOT NULL,
  `cur_latitude` text NOT NULL,
  `cur_longitude` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `route_table2`
--

CREATE TABLE IF NOT EXISTS `route_table2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `distance` text NOT NULL,
  `cur_latitude` text NOT NULL,
  `cur_longitude` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `selectlocation`
--

CREATE TABLE IF NOT EXISTS `selectlocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `object` text NOT NULL,
  `files` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `selectlocation`
--

INSERT INTO `selectlocation` (`id`, `latitude`, `longitude`, `object`, `files`) VALUES
(1, '9.803025', '76.47927', 'College', 'Devaswom Board College.txt'),
(2, '9.529509', '76.821765', 'College', 'Amal Jyothi Engineering College Kanjirapally.txt'),
(3, '9.591567', '76.522153', 'College', 'K.E. College Thalayolapramba.txt'),
(4, '9.591567', '76.522153', 'College', 'Sri. Vidyadiraja N.S.S. College.txt'),
(5, '12.097913', '75.560019', 'College', 'Vimal Jyothi Engineering College Chemperi.txt'),
(6, '9.686642', '76.639663', 'College', 'Bishop Vayalil Memorial Holly Cross College.txt'),
(7, '9.56402', '76.70603', 'College', 'N.S.S. Hindu College Vazhoor.txt'),
(8, '9.667592', '76.620933', 'College', 'College of Engineering Kidangoor.txt'),
(9, '9.591567', '76.522153', 'College', 'Mar Gregorious College of Engineering and Technology Kottayam.txt'),
(10, '9.556887', '76.511066', 'College', 'Govt. College.txt'),
(11, '9.50554', '76.65866', 'College', 'St. Thomas College Kottayam.txt'),
(12, '9.799061', '76.664132', 'College', 'Mar Augusthinose College Pala.txt'),
(13, '9.727789', '76.726798', 'College', 'St. Josephs College of Engineering and Technology Pala.txt'),
(14, '9.677848', '76.575083', 'College', 'Mangalam College of Engineering Kottayam.txt'),
(15, '9.451186', '76.538346', 'College', 'St. Berchamans College.txt'),
(16, '9.591567', '76.522153', 'College', 'Bishop Choolaparambil Memorial College.txt'),
(17, '9.596847', '76.520642', 'College', 'C.M.S. College.txt'),
(18, '9.782792', '76.52053', 'College', 'College of Applied Science  Kaduthuruthy.txt'),
(19, '9.64488', '76.550136', 'College', 'Caritas College of Nursing Kottayam.txt'),
(20, '9.591567', '76.522153', 'College', 'Govt. College of Engineering Rajiv Gandhi Institute of Technology    Kottayam.txt'),
(21, '9.67357', '76.55759', 'College', 'Sree Sankaracharya University of Sanskrit Ettumanoor.txt'),
(22, '9.688884', '76.772509', 'College', 'St. George College.txt'),
(23, '9.598226', '76.516848', 'College', 'Government Medical College Kottayam.txt'),
(24, '9.569105', '76.817075', 'College', 'St. Dominic College Kanjirappally.txt'),
(25, '9.607605', '76.590103', 'College', 'St. Marys College Kottayam.txt'),
(26, '9.673689', '76.826264', 'College', 'College of Engineering Poonjar.txt'),
(27, '9.509847', '76.550986', 'College', 'Saintgits College of Engineering Kottayam.txt'),
(28, '9.452111', '76.540333', 'College', 'Assumption College Changancherry.txt'),
(29, '9.515909', '76.693244', 'College', 'Theophilus College of Nursing Kangazha.txt'),
(30, '9.591567', '76.522153', 'College', 'Henry Baker College Changancherry.txt'),
(31, '9.589899', '76.527598', 'College', 'B.K. College for Women.txt'),
(32, '9.633362', '76.518928', 'College', 'College of Nursing Kottayam.txt'),
(33, '9.587155', '76.529133', 'College', 'Baselius College.txt'),
(34, '9.786579', '76.606792', 'College', 'St. Stepehns College Uzhavoor.txt');

-- --------------------------------------------------------

--
-- Table structure for table `stopspecial`
--

CREATE TABLE IF NOT EXISTS `stopspecial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `special_char` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `stopspecial`
--

INSERT INTO `stopspecial` (`id`, `special_char`) VALUES
(3, ''''),
(4, '#'),
(5, ','),
(6, '!'),
(7, '@'),
(8, '$'),
(9, '%'),
(10, '^'),
(11, '&'),
(13, '-'),
(14, '_'),
(15, '+'),
(16, '='),
(17, '{'),
(18, '}'),
(19, '['),
(20, ']'),
(21, '|'),
(22, ';'),
(23, ':'),
(24, '<'),
(25, '>'),
(26, '.'),
(27, '?'),
(28, '/'),
(29, '–');

-- --------------------------------------------------------

--
-- Table structure for table `stopwords`
--

CREATE TABLE IF NOT EXISTS `stopwords` (
  `id` int(11) DEFAULT NULL,
  `swords` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stopwords`
--

INSERT INTO `stopwords` (`id`, `swords`) VALUES
(1, 'is'),
(2, 'the'),
(3, 'was'),
(4, 'by'),
(5, 'to'),
(6, 'in'),
(7, 'for'),
(8, 'nearest'),
(9, 'nearest');

-- --------------------------------------------------------

--
-- Table structure for table `tempratings`
--

CREATE TABLE IF NOT EXISTS `tempratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` text NOT NULL,
  `rate` double NOT NULL,
  `names` text NOT NULL,
  `dis` double DEFAULT NULL,
  `fea` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
