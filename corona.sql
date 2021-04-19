-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Apr 2021 um 11:25
-- Server-Version: 10.1.37-MariaDB
-- PHP-Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `corona`
--
CREATE DATABASE IF NOT EXISTS `corona` DEFAULT CHARACTER SET latin1 COLLATE latin1_german1_ci;
USE `corona`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `landkreise`
--

CREATE TABLE `landkreise` (
  `Id` int(11) NOT NULL,
  `ObjectId` int(11) NOT NULL,
  `Bezeichnung` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Wert` decimal(10,5) NOT NULL,
  `Datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `landkreise`
--

INSERT INTO `landkreise` (`Id`, `ObjectId`, `Bezeichnung`, `Wert`, `Datum`) VALUES
(1, 1, 'SK Flensburg', '42.14542', '2021-04-19 00:00:00'),
(2, 2, 'SK Kiel', '77.79768', '2021-04-19 00:00:00'),
(3, 3, 'SK Lübeck', '62.34702', '2021-04-19 00:00:00'),
(4, 4, 'SK Neumünster', '63.59419', '2021-04-19 00:00:00'),
(5, 5, 'LK Dithmarschen', '61.56480', '2021-04-19 00:00:00'),
(6, 6, 'LK Herzogtum Lauenburg', '118.67548', '2021-04-19 00:00:00'),
(7, 7, 'LK Nordfriesland', '38.56560', '2021-04-19 00:00:00'),
(8, 8, 'LK Ostholstein', '69.31320', '2021-04-19 00:00:00'),
(9, 9, 'LK Pinneberg', '93.64036', '2021-04-19 00:00:00'),
(10, 10, 'LK Plön', '47.40220', '2021-04-19 00:00:00'),
(11, 11, 'LK Rendsburg-Eckernförde', '50.34696', '2021-04-19 00:00:00'),
(12, 12, 'LK Schleswig-Flensburg', '37.28450', '2021-04-19 00:00:00'),
(13, 13, 'LK Segeberg', '86.58790', '2021-04-19 00:00:00'),
(14, 14, 'LK Steinburg', '85.48770', '2021-04-19 00:00:00'),
(15, 15, 'LK Stormarn', '95.84036', '2021-04-19 00:00:00'),
(16, 16, 'SK Hamburg', '125.70016', '2021-04-19 00:00:00'),
(17, 17, 'SK Braunschweig', '115.47437', '2021-04-19 00:00:00'),
(18, 18, 'SK Salzgitter', '313.54575', '2021-04-19 00:00:00'),
(19, 19, 'SK Wolfsburg', '150.35659', '2021-04-19 00:00:00'),
(20, 20, 'LK Gifhorn', '123.49665', '2021-04-19 00:00:00'),
(21, 21, 'LK Goslar', '84.37766', '2021-04-19 00:00:00'),
(22, 22, 'LK Helmstedt', '115.00926', '2021-04-19 00:00:00'),
(23, 23, 'LK Northeim', '62.74332', '2021-04-19 00:00:00'),
(24, 24, 'LK Peine', '198.81158', '2021-04-19 00:00:00'),
(25, 25, 'LK Wolfenbüttel', '135.42659', '2021-04-19 00:00:00'),
(26, 26, 'LK Göttingen', '88.02574', '2021-04-19 00:00:00'),
(27, 27, 'Region Hannover', '139.74410', '2021-04-19 00:00:00'),
(28, 28, 'LK Diepholz', '115.16014', '2021-04-19 00:00:00'),
(29, 29, 'LK Hameln-Pyrmont', '97.61089', '2021-04-19 00:00:00'),
(30, 30, 'LK Hildesheim', '96.44076', '2021-04-19 00:00:00'),
(31, 31, 'LK Holzminden', '95.09211', '2021-04-19 00:00:00'),
(32, 32, 'LK Nienburg (Weser)', '112.03559', '2021-04-19 00:00:00'),
(33, 33, 'LK Schaumburg', '136.86478', '2021-04-19 00:00:00'),
(34, 34, 'LK Celle', '119.54573', '2021-04-19 00:00:00'),
(35, 35, 'LK Cuxhaven', '78.26781', '2021-04-19 00:00:00'),
(36, 36, 'LK Harburg', '81.75104', '2021-04-19 00:00:00'),
(37, 37, 'LK Lüchow-Dannenberg', '61.96811', '2021-04-19 00:00:00'),
(38, 38, 'LK Lüneburg', '92.86463', '2021-04-19 00:00:00'),
(39, 39, 'LK Osterholz', '90.40798', '2021-04-19 00:00:00'),
(40, 40, 'LK Rotenburg (Wümme)', '62.27791', '2021-04-19 00:00:00'),
(41, 41, 'LK Heidekreis', '114.44982', '2021-04-19 00:00:00'),
(42, 42, 'LK Stade', '124.68706', '2021-04-19 00:00:00'),
(43, 43, 'LK Uelzen', '115.81465', '2021-04-19 00:00:00'),
(44, 44, 'LK Verden', '106.46599', '2021-04-19 00:00:00'),
(45, 45, 'SK Delmenhorst', '188.24379', '2021-04-19 00:00:00'),
(46, 46, 'SK Emden', '140.24402', '2021-04-19 00:00:00'),
(47, 47, 'SK Oldenburg', '112.96628', '2021-04-19 00:00:00'),
(48, 48, 'SK Osnabrück', '158.54670', '2021-04-19 00:00:00'),
(49, 49, 'SK Wilhelmshaven', '85.42628', '2021-04-19 00:00:00'),
(50, 50, 'LK Ammerland', '106.52015', '2021-04-19 00:00:00'),
(51, 51, 'LK Aurich', '71.69441', '2021-04-19 00:00:00'),
(52, 52, 'LK Cloppenburg', '188.65493', '2021-04-19 00:00:00'),
(53, 53, 'LK Emsland', '160.87890', '2021-04-19 00:00:00'),
(54, 54, 'LK Friesland', '60.78781', '2021-04-19 00:00:00'),
(55, 55, 'LK Grafschaft Bentheim', '137.06420', '2021-04-19 00:00:00'),
(56, 56, 'LK Leer', '141.13706', '2021-04-19 00:00:00'),
(57, 57, 'LK Oldenburg', '84.04003', '2021-04-19 00:00:00'),
(58, 58, 'LK Osnabrück', '114.49955', '2021-04-19 00:00:00'),
(59, 59, 'LK Vechta', '307.39283', '2021-04-19 00:00:00'),
(60, 60, 'LK Wesermarsch', '124.17733', '2021-04-19 00:00:00'),
(61, 61, 'LK Wittmund', '119.45333', '2021-04-19 00:00:00'),
(62, 62, 'SK Bremen', '173.90263', '2021-04-19 00:00:00'),
(63, 63, 'SK Bremerhaven', '152.23111', '2021-04-19 00:00:00'),
(64, 64, 'SK Düsseldorf', '146.00958', '2021-04-19 00:00:00'),
(65, 65, 'SK Duisburg', '209.14965', '2021-04-19 00:00:00'),
(66, 66, 'SK Essen', '142.25410', '2021-04-19 00:00:00'),
(67, 67, 'SK Krefeld', '238.76843', '2021-04-19 00:00:00'),
(68, 68, 'SK Mönchengladbach', '145.95800', '2021-04-19 00:00:00'),
(69, 69, 'SK Mülheim a.d.Ruhr', '191.64049', '2021-04-19 00:00:00'),
(70, 70, 'SK Oberhausen', '173.65394', '2021-04-19 00:00:00'),
(71, 71, 'SK Remscheid', '319.74708', '2021-04-19 00:00:00'),
(72, 72, 'SK Solingen', '221.67101', '2021-04-19 00:00:00'),
(73, 73, 'SK Wuppertal', '229.51281', '2021-04-19 00:00:00'),
(74, 74, 'LK Kleve', '153.61721', '2021-04-19 00:00:00'),
(75, 75, 'LK Mettmann', '225.71411', '2021-04-19 00:00:00'),
(76, 76, 'LK Rhein-Kreis Neuss', '90.31944', '2021-04-19 00:00:00'),
(77, 77, 'LK Viersen', '124.47175', '2021-04-19 00:00:00'),
(78, 78, 'LK Wesel', '133.26782', '2021-04-19 00:00:00'),
(79, 79, 'SK Bonn', '192.31178', '2021-04-19 00:00:00'),
(80, 80, 'SK Köln', '188.07515', '2021-04-19 00:00:00'),
(81, 81, 'SK Leverkusen', '249.19226', '2021-04-19 00:00:00'),
(82, 82, 'StadtRegion Aachen', '152.95516', '2021-04-19 00:00:00'),
(83, 83, 'LK Düren', '145.85963', '2021-04-19 00:00:00'),
(84, 84, 'LK Rhein-Erft-Kreis', '167.86545', '2021-04-19 00:00:00'),
(85, 85, 'LK Euskirchen', '156.97939', '2021-04-19 00:00:00'),
(86, 86, 'LK Heinsberg', '129.13072', '2021-04-19 00:00:00'),
(87, 87, 'LK Oberbergischer Kreis', '253.62332', '2021-04-19 00:00:00'),
(88, 88, 'LK Rheinisch-Bergischer Kreis', '199.45564', '2021-04-19 00:00:00'),
(89, 89, 'LK Rhein-Sieg-Kreis', '129.16886', '2021-04-19 00:00:00'),
(90, 90, 'SK Bottrop', '103.77238', '2021-04-19 00:00:00'),
(91, 91, 'SK Gelsenkirchen', '210.28712', '2021-04-19 00:00:00'),
(92, 92, 'SK Münster', '99.90707', '2021-04-19 00:00:00'),
(93, 93, 'LK Borken', '137.87940', '2021-04-19 00:00:00'),
(94, 94, 'LK Coesfeld', '88.85423', '2021-04-19 00:00:00'),
(95, 95, 'LK Recklinghausen', '196.53595', '2021-04-19 00:00:00'),
(96, 96, 'LK Steinfurt', '143.01013', '2021-04-19 00:00:00'),
(97, 97, 'LK Warendorf', '163.04348', '2021-04-19 00:00:00'),
(98, 98, 'SK Bielefeld', '197.78872', '2021-04-19 00:00:00'),
(99, 99, 'LK Gütersloh', '201.40407', '2021-04-19 00:00:00'),
(100, 100, 'LK Herford', '136.88353', '2021-04-19 00:00:00'),
(101, 101, 'LK Höxter', '89.83893', '2021-04-19 00:00:00'),
(102, 102, 'LK Lippe', '196.82660', '2021-04-19 00:00:00'),
(103, 103, 'LK Minden-Lübbecke', '162.68858', '2021-04-19 00:00:00'),
(104, 104, 'LK Paderborn', '117.59394', '2021-04-19 00:00:00'),
(105, 105, 'SK Bochum', '158.37543', '2021-04-19 00:00:00'),
(106, 106, 'SK Dortmund', '198.55504', '2021-04-19 00:00:00'),
(107, 107, 'SK Hagen', '285.65977', '2021-04-19 00:00:00'),
(108, 108, 'SK Hamm', '227.88412', '2021-04-19 00:00:00'),
(109, 109, 'SK Herne', '204.53950', '2021-04-19 00:00:00'),
(110, 110, 'LK Ennepe-Ruhr-Kreis', '140.38617', '2021-04-19 00:00:00'),
(111, 111, 'LK Hochsauerlandkreis', '129.72665', '2021-04-19 00:00:00'),
(112, 112, 'LK Märkischer Kreis', '221.09979', '2021-04-19 00:00:00'),
(113, 113, 'LK Olpe', '170.20641', '2021-04-19 00:00:00'),
(114, 114, 'LK Siegen-Wittgenstein', '175.12566', '2021-04-19 00:00:00'),
(115, 115, 'LK Soest', '109.01801', '2021-04-19 00:00:00'),
(116, 116, 'LK Unna', '221.83337', '2021-04-19 00:00:00'),
(117, 117, 'SK Darmstadt', '106.95655', '2021-04-19 00:00:00'),
(118, 118, 'SK Frankfurt am Main', '145.66795', '2021-04-19 00:00:00'),
(119, 119, 'SK Offenbach', '267.11698', '2021-04-19 00:00:00'),
(120, 120, 'SK Wiesbaden', '141.12628', '2021-04-19 00:00:00'),
(121, 121, 'LK Bergstraße', '127.98698', '2021-04-19 00:00:00'),
(122, 122, 'LK Darmstadt-Dieburg', '112.13924', '2021-04-19 00:00:00'),
(123, 123, 'LK Groß-Gerau', '173.36051', '2021-04-19 00:00:00'),
(124, 124, 'LK Hochtaunuskreis', '119.45263', '2021-04-19 00:00:00'),
(125, 125, 'LK Main-Kinzig-Kreis', '173.81917', '2021-04-19 00:00:00'),
(126, 126, 'LK Main-Taunus-Kreis', '166.83574', '2021-04-19 00:00:00'),
(127, 127, 'LK Odenwaldkreis', '141.67089', '2021-04-19 00:00:00'),
(128, 128, 'LK Offenbach', '151.76511', '2021-04-19 00:00:00'),
(129, 129, 'LK Rheingau-Taunus-Kreis', '135.71276', '2021-04-19 00:00:00'),
(130, 130, 'LK Wetteraukreis', '115.45734', '2021-04-19 00:00:00'),
(131, 131, 'LK Gießen', '210.94397', '2021-04-19 00:00:00'),
(132, 132, 'LK Lahn-Dill-Kreis', '220.27562', '2021-04-19 00:00:00'),
(133, 133, 'LK Limburg-Weilburg', '276.88585', '2021-04-19 00:00:00'),
(134, 134, 'LK Marburg-Biedenkopf', '183.33846', '2021-04-19 00:00:00'),
(135, 135, 'LK Vogelsbergkreis', '217.71438', '2021-04-19 00:00:00'),
(136, 136, 'SK Kassel', '165.72918', '2021-04-19 00:00:00'),
(137, 137, 'LK Fulda', '269.77974', '2021-04-19 00:00:00'),
(138, 138, 'LK Hersfeld-Rotenburg', '246.85426', '2021-04-19 00:00:00'),
(139, 139, 'LK Kassel', '122.90720', '2021-04-19 00:00:00'),
(140, 140, 'LK Schwalm-Eder-Kreis', '102.96483', '2021-04-19 00:00:00'),
(141, 141, 'LK Waldeck-Frankenberg', '104.85531', '2021-04-19 00:00:00'),
(142, 142, 'LK Werra-Meißner-Kreis', '139.12490', '2021-04-19 00:00:00'),
(143, 143, 'SK Koblenz', '138.53330', '2021-04-19 00:00:00'),
(144, 144, 'LK Ahrweiler', '116.84578', '2021-04-19 00:00:00'),
(145, 145, 'LK Altenkirchen', '139.74613', '2021-04-19 00:00:00'),
(146, 146, 'LK Bad Kreuznach', '140.83173', '2021-04-19 00:00:00'),
(147, 147, 'LK Birkenfeld', '119.82557', '2021-04-19 00:00:00'),
(148, 148, 'LK Cochem-Zell', '71.69043', '2021-04-19 00:00:00'),
(149, 149, 'LK Mayen-Koblenz', '149.23007', '2021-04-19 00:00:00'),
(150, 150, 'LK Neuwied', '183.24937', '2021-04-19 00:00:00'),
(151, 151, 'LK Rhein-Hunsrück-Kreis', '134.73823', '2021-04-19 00:00:00'),
(152, 152, 'LK Rhein-Lahn-Kreis', '117.74614', '2021-04-19 00:00:00'),
(153, 153, 'LK Westerwaldkreis', '123.32594', '2021-04-19 00:00:00'),
(154, 154, 'SK Trier', '106.69966', '2021-04-19 00:00:00'),
(155, 155, 'LK Bernkastel-Wittlich', '108.46083', '2021-04-19 00:00:00'),
(156, 156, 'LK Bitburg-Prüm', '74.70371', '2021-04-19 00:00:00'),
(157, 157, 'LK Vulkaneifel', '112.12611', '2021-04-19 00:00:00'),
(158, 158, 'LK Trier-Saarburg', '99.73360', '2021-04-19 00:00:00'),
(159, 159, 'SK Frankenthal', '106.64042', '2021-04-19 00:00:00'),
(160, 160, 'SK Kaiserslautern', '137.95861', '2021-04-19 00:00:00'),
(161, 161, 'SK Landau i.d.Pfalz', '117.31832', '2021-04-19 00:00:00'),
(162, 162, 'SK Ludwigshafen', '247.31064', '2021-04-19 00:00:00'),
(163, 163, 'SK Mainz', '207.24867', '2021-04-19 00:00:00'),
(164, 164, 'SK Neustadt a.d.Weinstraße', '103.25924', '2021-04-19 00:00:00'),
(165, 165, 'SK Pirmasens', '201.33728', '2021-04-19 00:00:00'),
(166, 166, 'SK Speyer', '189.86966', '2021-04-19 00:00:00'),
(167, 167, 'SK Worms', '199.89945', '2021-04-19 00:00:00'),
(168, 168, 'SK Zweibrücken', '114.05843', '2021-04-19 00:00:00'),
(169, 169, 'LK Alzey-Worms', '134.16919', '2021-04-19 00:00:00'),
(170, 170, 'LK Bad Dürkheim', '132.65898', '2021-04-19 00:00:00'),
(171, 171, 'LK Donnersbergkreis', '175.24062', '2021-04-19 00:00:00'),
(172, 172, 'LK Germersheim', '147.27198', '2021-04-19 00:00:00'),
(173, 173, 'LK Kaiserslautern', '145.31181', '2021-04-19 00:00:00'),
(174, 174, 'LK Kusel', '64.08522', '2021-04-19 00:00:00'),
(175, 175, 'LK Südliche Weinstraße', '114.00548', '2021-04-19 00:00:00'),
(176, 176, 'LK Rhein-Pfalz-Kreis', '110.60158', '2021-04-19 00:00:00'),
(177, 177, 'LK Mainz-Bingen', '128.18269', '2021-04-19 00:00:00'),
(178, 178, 'LK Südwestpfalz', '93.85117', '2021-04-19 00:00:00'),
(179, 179, 'SK Stuttgart', '214.33817', '2021-04-19 00:00:00'),
(180, 180, 'LK Böblingen', '152.49219', '2021-04-19 00:00:00'),
(181, 181, 'LK Esslingen', '191.01947', '2021-04-19 00:00:00'),
(182, 182, 'LK Göppingen', '223.90517', '2021-04-19 00:00:00'),
(183, 183, 'LK Ludwigsburg', '203.87846', '2021-04-19 00:00:00'),
(184, 184, 'LK Rems-Murr-Kreis', '187.94705', '2021-04-19 00:00:00'),
(185, 185, 'SK Heilbronn', '286.74798', '2021-04-19 00:00:00'),
(186, 186, 'LK Heilbronn', '274.05532', '2021-04-19 00:00:00'),
(187, 187, 'LK Hohenlohekreis', '249.43411', '2021-04-19 00:00:00'),
(188, 188, 'LK Schwäbisch Hall', '280.03517', '2021-04-19 00:00:00'),
(189, 189, 'LK Main-Tauber-Kreis', '144.26091', '2021-04-19 00:00:00'),
(190, 190, 'LK Heidenheim', '216.15189', '2021-04-19 00:00:00'),
(191, 191, 'LK Ostalbkreis', '223.23063', '2021-04-19 00:00:00'),
(192, 192, 'SK Baden-Baden', '125.03398', '2021-04-19 00:00:00'),
(193, 193, 'SK Karlsruhe', '140.35762', '2021-04-19 00:00:00'),
(194, 194, 'LK Karlsruhe', '148.28095', '2021-04-19 00:00:00'),
(195, 195, 'LK Rastatt', '203.52606', '2021-04-19 00:00:00'),
(196, 196, 'SK Heidelberg', '93.50714', '2021-04-19 00:00:00'),
(197, 197, 'SK Mannheim', '190.56326', '2021-04-19 00:00:00'),
(198, 198, 'LK Neckar-Odenwald-Kreis', '164.30765', '2021-04-19 00:00:00'),
(199, 199, 'LK Rhein-Neckar-Kreis', '132.94308', '2021-04-19 00:00:00'),
(200, 200, 'SK Pforzheim', '181.01416', '2021-04-19 00:00:00'),
(201, 201, 'LK Calw', '149.49655', '2021-04-19 00:00:00'),
(202, 202, 'LK Enzkreis', '204.95500', '2021-04-19 00:00:00'),
(203, 203, 'LK Freudenstadt', '174.21750', '2021-04-19 00:00:00'),
(204, 204, 'SK Freiburg i.Breisgau', '72.23340', '2021-04-19 00:00:00'),
(205, 205, 'LK Breisgau-Hochschwarzwald', '77.01033', '2021-04-19 00:00:00'),
(206, 206, 'LK Emmendingen', '89.53896', '2021-04-19 00:00:00'),
(207, 207, 'LK Ortenaukreis', '154.77326', '2021-04-19 00:00:00'),
(208, 208, 'LK Rottweil', '235.91987', '2021-04-19 00:00:00'),
(209, 209, 'LK Schwarzwald-Baar-Kreis', '173.17158', '2021-04-19 00:00:00'),
(210, 210, 'LK Tuttlingen', '200.33247', '2021-04-19 00:00:00'),
(211, 211, 'LK Konstanz', '173.59110', '2021-04-19 00:00:00'),
(212, 212, 'LK Lörrach', '90.49734', '2021-04-19 00:00:00'),
(213, 213, 'LK Waldshut', '102.92217', '2021-04-19 00:00:00'),
(214, 214, 'LK Reutlingen', '152.24677', '2021-04-19 00:00:00'),
(215, 215, 'LK Tübingen', '163.11145', '2021-04-19 00:00:00'),
(216, 216, 'LK Zollernalbkreis', '163.17866', '2021-04-19 00:00:00'),
(217, 217, 'SK Ulm', '190.07808', '2021-04-19 00:00:00'),
(218, 218, 'LK Alb-Donau-Kreis', '167.44809', '2021-04-19 00:00:00'),
(219, 219, 'LK Biberach', '189.28667', '2021-04-19 00:00:00'),
(220, 220, 'LK Bodenseekreis', '107.60105', '2021-04-19 00:00:00'),
(221, 221, 'LK Ravensburg', '159.06161', '2021-04-19 00:00:00'),
(222, 222, 'LK Sigmaringen', '168.89697', '2021-04-19 00:00:00'),
(223, 223, 'SK Ingolstadt', '184.87248', '2021-04-19 00:00:00'),
(224, 224, 'SK München', '161.29619', '2021-04-19 00:00:00'),
(225, 225, 'SK Rosenheim', '163.64809', '2021-04-19 00:00:00'),
(226, 226, 'LK Altötting', '220.59615', '2021-04-19 00:00:00'),
(227, 227, 'LK Berchtesgadener Land', '142.54831', '2021-04-19 00:00:00'),
(228, 228, 'LK Bad Tölz-Wolfratshausen', '144.62503', '2021-04-19 00:00:00'),
(229, 229, 'LK Dachau', '213.04205', '2021-04-19 00:00:00'),
(230, 230, 'LK Ebersberg', '116.95174', '2021-04-19 00:00:00'),
(231, 231, 'LK Eichstätt', '140.72742', '2021-04-19 00:00:00'),
(232, 232, 'LK Erding', '178.02608', '2021-04-19 00:00:00'),
(233, 233, 'LK Freising', '217.76931', '2021-04-19 00:00:00'),
(234, 234, 'LK Fürstenfeldbruck', '160.04669', '2021-04-19 00:00:00'),
(235, 235, 'LK Garmisch-Partenkirchen', '125.53153', '2021-04-19 00:00:00'),
(236, 236, 'LK Landsberg a.Lech', '140.47979', '2021-04-19 00:00:00'),
(237, 237, 'LK Miesbach', '131.98680', '2021-04-19 00:00:00'),
(238, 238, 'LK Mühldorf a.Inn', '327.08506', '2021-04-19 00:00:00'),
(239, 239, 'LK München', '180.61306', '2021-04-19 00:00:00'),
(240, 240, 'LK Neuburg-Schrobenhausen', '181.90600', '2021-04-19 00:00:00'),
(241, 241, 'LK Pfaffenhofen a.d.Ilm', '192.62714', '2021-04-19 00:00:00'),
(242, 242, 'LK Rosenheim', '130.86902', '2021-04-19 00:00:00'),
(243, 243, 'LK Starnberg', '151.46305', '2021-04-19 00:00:00'),
(244, 244, 'LK Traunstein', '284.79746', '2021-04-19 00:00:00'),
(245, 245, 'LK Weilheim-Schongau', '151.31608', '2021-04-19 00:00:00'),
(246, 246, 'SK Landshut', '256.09241', '2021-04-19 00:00:00'),
(247, 247, 'SK Passau', '113.62991', '2021-04-19 00:00:00'),
(248, 248, 'SK Straubing', '211.33686', '2021-04-19 00:00:00'),
(249, 249, 'LK Deggendorf', '266.15779', '2021-04-19 00:00:00'),
(250, 250, 'LK Freyung-Grafenau', '190.14318', '2021-04-19 00:00:00'),
(251, 251, 'LK Kelheim', '241.34961', '2021-04-19 00:00:00'),
(252, 252, 'LK Landshut', '247.66253', '2021-04-19 00:00:00'),
(253, 253, 'LK Passau', '153.64172', '2021-04-19 00:00:00'),
(254, 254, 'LK Regen', '214.44258', '2021-04-19 00:00:00'),
(255, 255, 'LK Rottal-Inn', '215.63431', '2021-04-19 00:00:00'),
(256, 256, 'LK Straubing-Bogen', '256.13133', '2021-04-19 00:00:00'),
(257, 257, 'LK Dingolfing-Landau', '349.59610', '2021-04-19 00:00:00'),
(258, 258, 'SK Amberg', '251.14318', '2021-04-19 00:00:00'),
(259, 259, 'SK Regensburg', '217.51342', '2021-04-19 00:00:00'),
(260, 260, 'SK Weiden i.d.OPf.', '131.01560', '2021-04-19 00:00:00'),
(261, 261, 'LK Amberg-Sulzbach', '137.79852', '2021-04-19 00:00:00'),
(262, 262, 'LK Cham', '235.94119', '2021-04-19 00:00:00'),
(263, 263, 'LK Neumarkt i.d.OPf.', '151.59059', '2021-04-19 00:00:00'),
(264, 264, 'LK Neustadt a.d.Waldnaab', '118.58126', '2021-04-19 00:00:00'),
(265, 265, 'LK Regensburg', '200.95842', '2021-04-19 00:00:00'),
(266, 266, 'LK Schwandorf', '137.95715', '2021-04-19 00:00:00'),
(267, 267, 'LK Tirschenreuth', '68.01210', '2021-04-19 00:00:00'),
(268, 268, 'SK Bamberg', '103.39524', '2021-04-19 00:00:00'),
(269, 269, 'SK Bayreuth', '187.20832', '2021-04-19 00:00:00'),
(270, 270, 'SK Coburg', '182.60616', '2021-04-19 00:00:00'),
(271, 271, 'SK Hof', '314.23895', '2021-04-19 00:00:00'),
(272, 272, 'LK Bamberg', '141.33987', '2021-04-19 00:00:00'),
(273, 273, 'LK Bayreuth', '166.88532', '2021-04-19 00:00:00'),
(274, 274, 'LK Coburg', '180.98609', '2021-04-19 00:00:00'),
(275, 275, 'LK Forchheim', '94.66193', '2021-04-19 00:00:00'),
(276, 276, 'LK Hof', '308.01363', '2021-04-19 00:00:00'),
(277, 277, 'LK Kronach', '349.10028', '2021-04-19 00:00:00'),
(278, 278, 'LK Kulmbach', '181.65050', '2021-04-19 00:00:00'),
(279, 279, 'LK Lichtenfels', '265.06529', '2021-04-19 00:00:00'),
(280, 280, 'LK Wunsiedel i.Fichtelgebirge', '123.87310', '2021-04-19 00:00:00'),
(281, 281, 'SK Ansbach', '174.64950', '2021-04-19 00:00:00'),
(282, 282, 'SK Erlangen', '110.19480', '2021-04-19 00:00:00'),
(283, 283, 'SK Fürth', '266.93230', '2021-04-19 00:00:00'),
(284, 284, 'SK Nürnberg', '239.79011', '2021-04-19 00:00:00'),
(285, 285, 'SK Schwabach', '141.52900', '2021-04-19 00:00:00'),
(286, 286, 'LK Ansbach', '228.61353', '2021-04-19 00:00:00'),
(287, 287, 'LK Erlangen-Höchstadt', '125.30781', '2021-04-19 00:00:00'),
(288, 288, 'LK Fürth', '138.30789', '2021-04-19 00:00:00'),
(289, 289, 'LK Nürnberger Land', '165.69863', '2021-04-19 00:00:00'),
(290, 290, 'LK Neustadt a.d.Aisch-Bad Windsheim', '209.87190', '2021-04-19 00:00:00'),
(291, 291, 'LK Roth', '130.96750', '2021-04-19 00:00:00'),
(292, 292, 'LK Weißenburg-Gunzenhausen', '187.89453', '2021-04-19 00:00:00'),
(293, 293, 'SK Aschaffenburg', '169.00932', '2021-04-19 00:00:00'),
(294, 294, 'SK Schweinfurt', '155.35507', '2021-04-19 00:00:00'),
(295, 295, 'SK Würzburg', '194.63161', '2021-04-19 00:00:00'),
(296, 296, 'LK Aschaffenburg', '142.36510', '2021-04-19 00:00:00'),
(297, 297, 'LK Bad Kissingen', '145.29956', '2021-04-19 00:00:00'),
(298, 298, 'LK Rhön-Grabfeld', '221.00835', '2021-04-19 00:00:00'),
(299, 299, 'LK Haßberge', '343.66705', '2021-04-19 00:00:00'),
(300, 300, 'LK Kitzingen', '121.77061', '2021-04-19 00:00:00'),
(301, 301, 'LK Miltenberg', '126.60883', '2021-04-19 00:00:00'),
(302, 302, 'LK Main-Spessart', '144.26354', '2021-04-19 00:00:00'),
(303, 303, 'LK Schweinfurt', '141.19278', '2021-04-19 00:00:00'),
(304, 304, 'LK Würzburg', '101.66233', '2021-04-19 00:00:00'),
(305, 305, 'SK Augsburg', '272.77448', '2021-04-19 00:00:00'),
(306, 306, 'SK Kaufbeuren', '261.27303', '2021-04-19 00:00:00'),
(307, 307, 'SK Kempten', '289.22214', '2021-04-19 00:00:00'),
(308, 308, 'SK Memmingen', '224.48980', '2021-04-19 00:00:00'),
(309, 309, 'LK Aichach-Friedberg', '171.54952', '2021-04-19 00:00:00'),
(310, 310, 'LK Augsburg', '201.60336', '2021-04-19 00:00:00'),
(311, 311, 'LK Dillingen a.d.Donau', '126.34370', '2021-04-19 00:00:00'),
(312, 312, 'LK Günzburg', '284.97878', '2021-04-19 00:00:00'),
(313, 313, 'LK Neu-Ulm', '198.62560', '2021-04-19 00:00:00'),
(314, 314, 'LK Lindau', '112.22112', '2021-04-19 00:00:00'),
(315, 315, 'LK Ostallgäu', '240.11560', '2021-04-19 00:00:00'),
(316, 316, 'LK Unterallgäu', '209.16328', '2021-04-19 00:00:00'),
(317, 317, 'LK Donau-Ries', '281.79963', '2021-04-19 00:00:00'),
(318, 318, 'LK Oberallgäu', '180.11897', '2021-04-19 00:00:00'),
(319, 319, 'LK Stadtverband Saarbrücken', '156.67115', '2021-04-19 00:00:00'),
(320, 320, 'LK Merzig-Wadern', '72.64415', '2021-04-19 00:00:00'),
(321, 321, 'LK Neunkirchen', '162.85158', '2021-04-19 00:00:00'),
(322, 322, 'LK Saarlouis', '117.84746', '2021-04-19 00:00:00'),
(323, 323, 'LK Saar-Pfalz-Kreis', '74.54499', '2021-04-19 00:00:00'),
(324, 324, 'LK Sankt Wendel', '117.23195', '2021-04-19 00:00:00'),
(325, 326, 'SK Brandenburg a.d.Havel', '109.44254', '2021-04-19 00:00:00'),
(326, 327, 'SK Cottbus', '189.61055', '2021-04-19 00:00:00'),
(327, 328, 'SK Frankfurt (Oder)', '133.33102', '2021-04-19 00:00:00'),
(328, 329, 'SK Potsdam', '105.91458', '2021-04-19 00:00:00'),
(329, 330, 'LK Barnim', '93.93017', '2021-04-19 00:00:00'),
(330, 331, 'LK Dahme-Spreewald', '144.62120', '2021-04-19 00:00:00'),
(331, 332, 'LK Elbe-Elster', '187.57304', '2021-04-19 00:00:00'),
(332, 333, 'LK Havelland', '135.58615', '2021-04-19 00:00:00'),
(333, 334, 'LK Märkisch-Oderland', '145.59313', '2021-04-19 00:00:00'),
(334, 335, 'LK Oberhavel', '128.22078', '2021-04-19 00:00:00'),
(335, 336, 'LK Oberspreewald-Lausitz', '187.43543', '2021-04-19 00:00:00'),
(336, 337, 'LK Oder-Spree', '177.84936', '2021-04-19 00:00:00'),
(337, 338, 'LK Ostprignitz-Ruppin', '102.16364', '2021-04-19 00:00:00'),
(338, 339, 'LK Potsdam-Mittelmark', '138.52590', '2021-04-19 00:00:00'),
(339, 340, 'LK Prignitz', '128.67985', '2021-04-19 00:00:00'),
(340, 341, 'LK Spree-Neiße', '178.50862', '2021-04-19 00:00:00'),
(341, 342, 'LK Teltow-Fläming', '141.76721', '2021-04-19 00:00:00'),
(342, 343, 'LK Uckermark', '143.76151', '2021-04-19 00:00:00'),
(343, 344, 'SK Rostock', '128.11259', '2021-04-19 00:00:00'),
(344, 345, 'SK Schwerin', '145.31693', '2021-04-19 00:00:00'),
(345, 346, 'LK Mecklenburgische Seenplatte', '177.85596', '2021-04-19 00:00:00'),
(346, 347, 'LK Rostock', '126.50954', '2021-04-19 00:00:00'),
(347, 348, 'LK Vorpommern-Rügen', '107.25316', '2021-04-19 00:00:00'),
(348, 349, 'LK Nordwestmecklenburg', '96.61713', '2021-04-19 00:00:00'),
(349, 350, 'LK Vorpommern-Greifswald', '212.20339', '2021-04-19 00:00:00'),
(350, 351, 'LK Ludwigslust-Parchim', '177.54357', '2021-04-19 00:00:00'),
(351, 352, 'SK Chemnitz', '277.26583', '2021-04-19 00:00:00'),
(352, 353, 'LK Erzgebirgskreis', '325.42365', '2021-04-19 00:00:00'),
(353, 354, 'LK Mittelsachsen', '303.51958', '2021-04-19 00:00:00'),
(354, 355, 'LK Vogtlandkreis', '298.23405', '2021-04-19 00:00:00'),
(355, 356, 'LK Zwickau', '377.45792', '2021-04-19 00:00:00'),
(356, 357, 'SK Dresden', '153.38195', '2021-04-19 00:00:00'),
(357, 358, 'LK Bautzen', '256.54028', '2021-04-19 00:00:00'),
(358, 359, 'LK Görlitz', '248.09576', '2021-04-19 00:00:00'),
(359, 360, 'LK Meißen', '194.44226', '2021-04-19 00:00:00'),
(360, 361, 'LK Sächsische Schweiz-Osterzgebirge', '223.54694', '2021-04-19 00:00:00'),
(361, 362, 'SK Leipzig', '147.68733', '2021-04-19 00:00:00'),
(362, 363, 'LK Leipzig', '178.19857', '2021-04-19 00:00:00'),
(363, 364, 'LK Nordsachsen', '236.16751', '2021-04-19 00:00:00'),
(364, 365, 'SK Dessau-Roßlau', '167.28462', '2021-04-19 00:00:00'),
(365, 366, 'SK Halle', '219.46541', '2021-04-19 00:00:00'),
(366, 367, 'SK Magdeburg', '106.91811', '2021-04-19 00:00:00'),
(367, 368, 'LK Altmarkkreis Salzwedel', '145.47990', '2021-04-19 00:00:00'),
(368, 369, 'LK Anhalt-Bitterfeld', '44.79891', '2021-04-19 00:00:00'),
(369, 370, 'LK Börde', '124.61752', '2021-04-19 00:00:00'),
(370, 371, 'LK Burgenlandkreis', '338.27986', '2021-04-19 00:00:00'),
(371, 372, 'LK Harz', '201.58455', '2021-04-19 00:00:00'),
(372, 373, 'LK Jerichower Land', '137.29364', '2021-04-19 00:00:00'),
(373, 374, 'LK Mansfeld-Südharz', '180.07737', '2021-04-19 00:00:00'),
(374, 375, 'LK Saalekreis', '268.74847', '2021-04-19 00:00:00'),
(375, 376, 'LK Salzlandkreis', '166.02776', '2021-04-19 00:00:00'),
(376, 377, 'LK Stendal', '193.36271', '2021-04-19 00:00:00'),
(377, 378, 'LK Wittenberg', '138.45206', '2021-04-19 00:00:00'),
(378, 379, 'SK Erfurt', '175.71654', '2021-04-19 00:00:00'),
(379, 380, 'SK Gera', '291.00671', '2021-04-19 00:00:00'),
(380, 381, 'SK Jena', '125.73759', '2021-04-19 00:00:00'),
(381, 382, 'SK Suhl', '277.25679', '2021-04-19 00:00:00'),
(382, 383, 'SK Weimar', '122.64672', '2021-04-19 00:00:00'),
(383, 384, 'SK Eisenach', '134.91124', '2021-04-19 00:00:00'),
(384, 385, 'LK Eichsfeld', '217.98692', '2021-04-19 00:00:00'),
(385, 386, 'LK Nordhausen', '145.05610', '2021-04-19 00:00:00'),
(386, 387, 'LK Wartburgkreis', '342.09155', '2021-04-19 00:00:00'),
(387, 388, 'LK Unstrut-Hainich-Kreis', '135.96526', '2021-04-19 00:00:00'),
(388, 389, 'LK Kyffhäuserkreis', '212.90357', '2021-04-19 00:00:00'),
(389, 390, 'LK Schmalkalden-Meiningen', '267.37968', '2021-04-19 00:00:00'),
(390, 391, 'LK Gotha', '309.09953', '2021-04-19 00:00:00'),
(391, 392, 'LK Sömmerda', '305.35671', '2021-04-19 00:00:00'),
(392, 393, 'LK Hildburghausen', '147.15888', '2021-04-19 00:00:00'),
(393, 394, 'LK Ilm-Kreis', '328.47368', '2021-04-19 00:00:00'),
(394, 395, 'LK Weimarer Land', '275.08642', '2021-04-19 00:00:00'),
(395, 396, 'LK Sonneberg', '433.14795', '2021-04-19 00:00:00'),
(396, 397, 'LK Saalfeld-Rudolstadt', '218.99437', '2021-04-19 00:00:00'),
(397, 398, 'LK Saale-Holzland-Kreis', '191.68174', '2021-04-19 00:00:00'),
(398, 399, 'LK Saale-Orla-Kreis', '392.22034', '2021-04-19 00:00:00'),
(399, 400, 'LK Greiz', '396.31204', '2021-04-19 00:00:00'),
(400, 401, 'LK Altenburger Land', '231.56176', '2021-04-19 00:00:00'),
(401, 404, 'SK Berlin Reinickendorf', '172.89912', '2021-04-19 00:00:00'),
(402, 405, 'SK Berlin Charlottenburg-Wilmersdorf', '139.65269', '2021-04-19 00:00:00'),
(403, 406, 'SK Berlin Treptow-Köpenick', '115.20219', '2021-04-19 00:00:00'),
(404, 407, 'SK Berlin Pankow', '110.54276', '2021-04-19 00:00:00'),
(405, 408, 'SK Berlin Neukölln', '205.52872', '2021-04-19 00:00:00'),
(406, 409, 'SK Berlin Lichtenberg', '166.82838', '2021-04-19 00:00:00'),
(407, 410, 'SK Berlin Marzahn-Hellersdorf', '166.94110', '2021-04-19 00:00:00'),
(408, 411, 'SK Berlin Spandau', '163.16694', '2021-04-19 00:00:00'),
(409, 412, 'SK Berlin Steglitz-Zehlendorf', '113.84056', '2021-04-19 00:00:00'),
(410, 413, 'SK Berlin Mitte', '168.42644', '2021-04-19 00:00:00'),
(411, 414, 'SK Berlin Friedrichshain-Kreuzberg', '164.85913', '2021-04-19 00:00:00'),
(412, 415, 'SK Berlin Tempelhof-Schöneberg', '165.90007', '2021-04-19 00:00:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `landkreise`
--
ALTER TABLE `landkreise`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `landkreise`
--
ALTER TABLE `landkreise`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;