-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 11:49 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autorezervacija`
--

-- --------------------------------------------------------

--
-- Table structure for table `automobil`
--

CREATE TABLE `automobil` (
  `idAuto` int(9) NOT NULL,
  `marka` varchar(20) NOT NULL,
  `gorivo` varchar(40) NOT NULL,
  `menjac` varchar(20) NOT NULL,
  `karoserija` varchar(20) NOT NULL,
  `cena` int(20) NOT NULL,
  `idInfo` int(9) DEFAULT NULL,
  `Serija` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `automobil`
--

INSERT INTO `automobil` (`idAuto`, `marka`, `gorivo`, `menjac`, `karoserija`, `cena`, `idInfo`, `Serija`) VALUES
(1, 'Bmw 118i', 'Benzin', 'Manuelan', 'Kupe', 28500, 1, 1),
(2, 'Bmw 116d', 'Dizel', 'Manuelan', 'Kupe', 28500, 2, 1),
(3, 'Bmw 118d', 'Dizel', 'Automatik', 'Kupe', 30000, 3, 1),
(4, 'Bmw 120d xDrive', 'dizel', 'automatik', 'kupe', 35000, 4, 1),
(5, 'Bmw M135i xDrive', 'benzin', 'automatik', 'kupe', 39000, 5, 1),
(6, 'Bmw 218i Gran Coupe', 'benzin', 'automatik', 'Gran Coupe', 35000, 6, 2),
(7, 'Bmw 220d Gran Coupe', 'dizel', 'automatik', 'kupe', 35500, 7, 2),
(8, 'Nije izabran', '/', '/', '/', 0, 0, 9),
(9, 'Bmw M235i xDrive Gra', 'benzin', 'automatik', 'Gran Coupe', 44000, 9, 2),
(10, 'Bmw 216i Active Tour', 'benzin', 'manuelan', 'MiniVan', 22000, 10, 2),
(11, 'Bmw 218i Active Tour', 'benzin', 'manuelan', 'MiniVan', 24000, 11, 2),
(12, 'Bmw 220i Active Tour', 'benzin', 'manuelan', 'MiniVan', 25000, 12, 2),
(13, 'Bmw 225i Active Tour', 'benzin', 'automatik', 'MiniVan', 27000, 13, 2),
(14, 'Bmw 225i xDrive Acti', 'benzin', 'automatik', 'MiniVan', 30000, 14, 2),
(15, 'Bmw 216d Active Tour', 'dizel', 'manuelan', 'MiniVan', 20000, 15, 2),
(16, 'Bmw 218d Active Tour', 'dizel', 'manuelan', 'MiniVan', 21000, 16, 2),
(17, 'Bmw 218d xDrive Acti', 'dizel', 'automatik', 'MiniVan', 24000, 17, 2),
(18, 'Bmw 220d Active Tour', 'dizel', 'automatik', 'MiniVan', 26000, 18, 2),
(19, 'Bmw 220d xDrive Acti', 'dizel', 'automatik', 'MiniVan', 28000, 19, 2),
(20, 'Bmw 225xe iPerforman', 'hibrid', 'automatik', 'MiniVan', 32000, 20, 2),
(21, 'Bmw 330i ', 'benzin', 'automatik', 'Limuzina', 55000, 21, 3),
(22, 'Bmw 320d', 'dizel', 'automatik', 'limuzina', 54000, 22, 3),
(23, 'Bmw 320d xDrive', 'dizel', 'automatik', 'Limuzina', 57000, 23, 3),
(24, 'Bmw 418i', 'benzin', 'manuelan', 'kupe', 37000, 24, 4),
(25, 'Bmw 420i', 'benzin', 'automatik', 'kupe', 39000, 25, 4),
(26, 'Bmw 420i xDrive', 'benzin', 'automatik', 'kupe', 40000, 26, 4),
(27, 'Bmw 430i', 'benzin', 'automatik', 'kupe', 44000, 27, 4),
(28, 'Bmw 430i xDrive', 'benzin', 'automatik', 'kupe', 45000, 28, 4),
(29, 'Bmw 440i', 'benzin', 'automatik', 'kupe', 47000, 29, 4),
(30, 'Bmw 440i xDrive', 'benzin', 'automatik', 'kupe', 50000, 30, 4),
(31, 'Bmw 418d ', 'benzin', 'manuelan', 'kupe', 36000, 31, 4),
(32, 'Bmw 420d', 'dizel', 'manuelan', 'kupe', 37000, 32, 4),
(33, 'Bmw 420d xDrive', 'dizel', 'automatik', 'kupe', 39000, 33, 4),
(34, 'Bmw 425d', 'dizel', 'automatik', 'kupe', 40000, 34, 4),
(35, 'Bmw 430d', 'dizel', 'automatik', 'kupe', 42000, 35, 4),
(36, 'Bmw 430d xDrive', 'dizel', 'automatik', 'kupe', 45000, 36, 4),
(37, 'Bmw 435d xDrive', 'dizel', 'automatik', 'kupe', 49000, 37, 4),
(38, 'Bmw 520i', 'benzin', 'automatik', 'Limuzina', 43000, 38, 5),
(39, 'Bmw 530i', 'benzin', 'automatik', 'Limuzina', 47000, 39, 5),
(40, 'Bmw 530i xDrive', 'benzin', 'automatik', 'Limuzina', 49000, 40, 5),
(41, 'Bmw 540i', 'benzin', 'automatik', 'Limuzina', 53000, 41, 5),
(42, 'Bmw 540i xDrive', 'benzin', 'automatik', 'Limuzina', 61000, 42, 5),
(43, 'Bmw M550i xDrive', 'benzin', 'automatik', 'Limuzina', 95000, 43, 5),
(44, 'Bmw 530i iPerformanc', 'hibrid', 'automatik', 'Limuzina', 50000, 44, 5),
(45, 'Bmw 540d xDrive', 'dizel', 'automatik', 'Limuzina', 65000, 45, 5),
(46, 'Bmw 520d', 'dizel', 'automatik', 'Limuzina', 45000, 46, 5),
(47, 'Bmw 520d xDrive', 'dizel', 'automatik', 'Limuzina', 47000, 47, 5),
(48, 'Bmw 525d', 'dizel', 'automatik', 'Limuzina', 50000, 48, 5),
(49, 'Bmw 520d Efficient D', 'dizel', 'automatik', 'Limuzina', 55000, 49, 5),
(50, 'Bmw 530d', 'dizel', 'automatik', 'Limuzina', 57000, 50, 5),
(51, 'Bmw 530d xDrive', 'dizel', 'automatik', 'Limuzina', 65000, 51, 5),
(52, 'Bmw 630i', 'benzin', 'automatik', 'Gran Turismo', 60000, 52, 6),
(53, 'Bmw 640i', 'benzin', 'automatik', 'Gran Turismo', 65000, 53, 6),
(54, 'Bmw 640i xDrive', 'benzin', 'automatik', 'Gran Turismo', 67000, 54, 6),
(55, 'Bmw 630d', 'dizel', 'automatik', 'Gran Turismo', 64000, 55, 6),
(56, 'Bmw 630d xDrive', 'dizel', 'automatik', 'Gran Turismo', 67000, 56, 6),
(57, 'Bmw 730i', 'benzin', 'automatik', 'Limuzina', 80000, 57, 7),
(58, 'Bmw 730Li', 'benzin', 'automatik', 'Limuzina', 86000, 58, 7),
(59, 'Bmw 740i', 'benzin', 'automatik', 'Limuzina', 85000, 59, 7),
(60, 'Bmw 740Li', 'benzin', 'automatik', 'Limuzina', 95000, 60, 7),
(61, 'Bmw 740Li xDrive', 'benzin', 'automatik', 'Limuzina', 100000, 61, 7),
(62, 'Bmw  750i', 'benzin', 'automatik', 'Limuzina', 110000, 62, 7),
(63, 'Bmw 750Li xDrive', 'benzin', 'automatik', 'Limuzina', 120000, 63, 7),
(64, 'Bmw M760Li xDrive ', 'benzin', 'automatik', 'Limuzina', 150000, 64, 7),
(65, 'Bmw 730d', 'dizel', 'automatik', 'Limuzina', 80000, 65, 7),
(67, 'Bmw 730d xDrive', 'benzin', 'automatik', 'Limuzina', 90000, 67, 7),
(68, 'Bmw 730Ld xDrive', 'dizel', 'automatik', 'Limuzina', 99000, 68, 7),
(69, 'Bmw 850i xDrive', 'benzin', 'automatik', 'kupe', 105000, 69, 8),
(70, 'Bmw 840d xDrive', 'benzin', 'automatik', 'kupe', 90000, 70, 8),
(73, 'Bmw 850i Xdrive', 'benzin', 'automatik', 'kupe', 125000, 73, 8);

-- --------------------------------------------------------

--
-- Table structure for table `informacije`
--

CREATE TABLE `informacije` (
  `idInfo` int(9) NOT NULL,
  `zapremina` varchar(20) NOT NULL,
  `konjskaSnage` varchar(20) NOT NULL,
  `maxBrzina` varchar(20) NOT NULL,
  `ubrzanje` varchar(20) NOT NULL,
  `potrosnjaKom` varchar(20) NOT NULL,
  `tekst` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informacije`
--

INSERT INTO `informacije` (`idInfo`, `zapremina`, `konjskaSnage`, `maxBrzina`, `ubrzanje`, `potrosnjaKom`, `tekst`) VALUES
(1, '1499', '140', '213', '8.6', '5,7 - 5.3', 'Izaziva aspiracije: Potpuno novi BMW serije 1 stigao je da privuce poglede pune divljenja. To je zato Å¡to se svojim izuzetnim dizajnom i progresivnim dizajnerskim jezikom izdvaja iz gomile vec na prvi pogled. Isto vaÅ¾i i za njegov enterijer sa modernom atmosferom koja inspiriÅ¡e kroz vrhunski kvalitet i otvorenost. Efikasni motori, pogon na prednjim tockovima koji je sada prvi put u novom modelu BMW serije 1 i najsavremenie tehnologije Å¡asije garantuju doÅ¾ivljaje voÅ¾nje pune dinamicnosti i agilnosti, dok inovativne tehnologije i sistemi za asistenciju vozacu obezbedjuju da uvek dodjete do svog odrediÅ¡ta bezbedno i udobno.'),
(2, '1496', '116', '200', '10.3', '4.2 - 3.8', NULL),
(3, '1995', '150', '218', '8.5', '4.4 - 4.1', NULL),
(4, '1995', '190', '230', '7', '4.7 - 4.5', NULL),
(5, '1998', '306', '250', '4.8', '7.1 - 6.8', NULL),
(6, '1499', '140', '215', '8.7', '5.4 - 5.0', NULL),
(7, '1995', '163', '225', '7.5', '4.5 - 4.2', NULL),
(9, '1998', '306', '250', '4.8', '7.1 - 6.7', 'ssssss'),
(10, '1499', '109', '190', '11.3', '5.8', NULL),
(11, '1499', '140', '205', '9.3', '5.8', NULL),
(12, '1998', '192', '229', '7.4', '5.9 - 5.6', NULL),
(13, '2007', '231', '238', '6.6', '6.0 - 5.8', NULL),
(14, '1998', '231', '235', '6.3', '6.4 - 6.1', NULL),
(15, '1496', '116', '195', '11.1', '4.3', NULL),
(16, '1995', '150', '210', '9', '4.5', NULL),
(17, '1995', '150', '209', '8.8', '5.1', NULL),
(18, '1995', '190', '224', '7.6', '4.4', NULL),
(19, '1995', '190', '222', '7.5', '4.7', NULL),
(20, '1499', '136', '202', '6.7', '2.7 - 2.3', NULL),
(21, '1998', '258', '250', '5.8', '6.1 - 5.8', NULL),
(22, '1995', '190', '240', '7.1', '4.7 - 4.4', NULL),
(23, '1995', '190', '233', '6.9', '4.8 - 4.5', NULL),
(24, '1499', '136', '212', '9', '5.6 - 5.3', NULL),
(25, '1998', '184', '236', '7.3', '6.1 - 5.8', NULL),
(26, '1998', '184', '233', '7.6', '6.9 - 6.6', NULL),
(27, '1998', '252', '250', '5.9', '6.5 - 6.1', NULL),
(28, '1998', '252', '250', '5.8', '6.2 - 5.9', NULL),
(29, '2998', '326', '250', '5.2', '7.7 - 7.4', NULL),
(30, '2998', '326', '250', '5', '7.9 - 7.7', NULL),
(31, '1995', '150', '215', '8.6', '4.5 - 4.2', NULL),
(32, '1995', '190', '240', '7.3', '4.5 - 4.2', NULL),
(33, '1995', '190', '236', '7.4', '4.7 - 4.4', NULL),
(34, '1995', '224', '247', '6.5', '4.9 - 4.6', NULL),
(35, '2993', '258', '250', '5.5', '5.1 - 4.9', NULL),
(36, '2993', '258', '250', '5.2', '5.4 - 5.2', NULL),
(37, '2993', '313', '250', '4.7', '5.6 - 5.4', NULL),
(38, '1998', '184', '235', '7.8', '5.9 - 5.4', NULL),
(39, '1998', '252', '250', '6.2', '5.9 - 5.5', NULL),
(40, '1998', '252', '250', '6', '6.4 - 6.0', NULL),
(41, '2998', '340', '250', '5.1', '6.9 - 6.5', NULL),
(42, '2998', '340', '250', '4.8', '7.4 - 6.9', NULL),
(43, 'n/a*', '462*', '250*', '4.0', '9.2 - 8.9', NULL),
(44, '1998', '184', '235', '6.2', '2', NULL),
(45, '2993', '320', '250', '4.7', '5.6 - 5.2', NULL),
(46, '1995', '190', '238', '7.7', '4.5 - 4.2', NULL),
(47, '1995', '190', '232', '7.6', '4.9 - 4.5', NULL),
(48, '1995', '231', '250', '6.6', '4.8 - 4.4', NULL),
(49, 'n/a*', '190', '235', '7.5', 'n/a*', NULL),
(50, '2993', '265', '250', '5.7', '4.9 - 4.5', NULL),
(51, '2993', '265', '250', '5.4', '5.4 - 5.0', NULL),
(52, '1998', '258', '250', '6.3', '6.6 - 6.2', NULL),
(53, '2998', '340', '250', '5.4', '7.4 - 7.0', NULL),
(54, '2998', '340', '250', '5.3', '8.2 - 7.7', NULL),
(55, '2993', '265', '250', '6.1', '5.3 - 4.9', NULL),
(56, '2993', '265', '250', '6.0', '5.9 - 5.5', NULL),
(57, '1998', '265', '250', '6.2', '6.5 - 6.2', NULL),
(58, '1998', '265', '250', '6.3', '6.6 - 6.3', NULL),
(59, '2998', '340', '250', '5.5', '7.3 - 7.0', NULL),
(60, '2998', '340', '250', '5.6', '7.5 - 7.2', NULL),
(61, '2998', '340', '250', '5.1', '8.0 - 7.5', NULL),
(62, '4395', '530', '250', '4', '9.5', NULL),
(63, '4395', '530', '250', '4.1', '9.6 - 9.5', NULL),
(64, '6592', '585', '250', '3.8', '12.5 - 12.4', NULL),
(65, '2993', '265', '250', '6.1', '5.5 - 5.3', NULL),
(67, '2993', '265', '250', '5.8', '5.7 - 5.5', NULL),
(68, '2993', '265', '250', '5.9', '5.8 - 5.6', NULL),
(69, '4395', '530', '250', '3.7', '10.5 - 10.0', NULL),
(70, '2993', '320', '250', '4.9', '6.2 - 5.9', NULL),
(73, '5000', '640', '350', '2.5', '12', 'Novi bmw serija 8');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `idKorisnik` int(9) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefon` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `idAuto` int(9) NOT NULL,
  `idRezervacija` int(9) NOT NULL,
  `kupovina` varchar(10) DEFAULT NULL,
  `racun` int(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idKorisnik`, `ime`, `prezime`, `email`, `telefon`, `password`, `idAuto`, `idRezervacija`, `kupovina`, `racun`) VALUES
(16, 'Stefan', 'Poprasic', 'admin@gmail.com', 616318903, 'admin', 8, 3, NULL, NULL),
(18, 'Aca', 'Poprasic', 'menadzer@gmail.com', 616318904, 'menadzer', 8, 3, NULL, NULL),
(20, 'Miodrag', 'Pavicevic', 'miga@gmail.com', 22565464, 'miga', 22, 8, 'Odobreno', 54000),
(21, 'Marko', 'Ilic', 'ilic@gmail.com', 65987456, 'ilic', 28, 9, 'Odobreno', 45000),
(22, 'Nemanja', 'Jakovljevic', 'nemanja@gmail.com', 6541496, 'nemanja', 9, 10, 'Odobreno', 44000),
(23, 'Stefan', 'Vitkovic', 'vitko@gmail.com', 6489231, 'vitko', 38, 11, NULL, 0),
(24, 'Djordje', 'Milanovic', 'djole@gmail.com', 6598632, 'djole', 4, 12, NULL, 0),
(25, 'Jelena', 'Gojkovic', 'jelena@gmail.com', 695425487, 'jelena', 1, 27, '', 0),
(26, 'Jasna', 'Poprasic', 'jasna@gmail.com', 6895215, 'jansa', 8, 3, NULL, 0),
(27, 'Radomir', 'Poprasic', 'rale@gmail.com', 6589428, 'rale', 8, 3, NULL, 0),
(28, 'Sara', 'Samardzic', 'sara@gmail.com', 6981552, 'sara', 8, 3, NULL, 0),
(29, 'Nina', 'Jakovljevic', 'nina@gmail.com', 6585125, 'nina', 8, 3, NULL, 0),
(30, 'Milena', 'Popovic', 'milena@gmail.com', 36526515, 'milena', 8, 3, NULL, 0),
(31, 'Marko', 'Perovic', 'pera@gmail.com', 6133625, 'pera', 8, 3, NULL, 0),
(32, 'Milan', 'Tomic', 'misko@gmail.com', 69515152, 'misko', 8, 3, NULL, 0),
(33, 'Marko', 'Petrovic', 'cedaa@gmail.com', 333333, 'ceda', 2, 14, 'Odobreno', 0),
(37, 'aa', 'aa', 'a@gmail.com', 222, 'a', 10, 3, '', 0),
(39, 'Stefan', 'Petrovic', 'petrovic@gmail.com', 65987563, 'petrovic', 8, 3, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `idRezervacija` int(9) NOT NULL,
  `vreme` varchar(50) DEFAULT NULL,
  `datum` varchar(50) DEFAULT NULL,
  `idKorisnik` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`idRezervacija`, `vreme`, `datum`, `idKorisnik`) VALUES
(3, NULL, NULL, 0),
(6, '09:00', '02/22/2020', 14),
(8, '09:01', '03/25/2020', 20),
(9, '11:00', '03/26/2020', 21),
(10, '10:00', '03/26/2020', 22),
(11, '09:00', '03/31/2020', 23),
(12, '10:00', '03/27/2020', 24),
(14, '10:00', '03/28/2020', 33),
(18, '10:00', '07/22/2020', 37),
(19, '09:01', '07/28/2020', 37),
(20, '11:01', '07/28/2020', 37),
(22, '13:30', '07/22/2020', 38),
(27, '16:31', '07/28/2020', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automobil`
--
ALTER TABLE `automobil`
  ADD PRIMARY KEY (`idAuto`),
  ADD KEY `idInfo` (`idInfo`);

--
-- Indexes for table `informacije`
--
ALTER TABLE `informacije`
  ADD PRIMARY KEY (`idInfo`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`idKorisnik`),
  ADD KEY `idAuto` (`idAuto`),
  ADD KEY `idRezervacija` (`idRezervacija`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`idRezervacija`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `automobil`
--
ALTER TABLE `automobil`
  MODIFY `idAuto` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `informacije`
--
ALTER TABLE `informacije`
  MODIFY `idInfo` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `idKorisnik` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `idRezervacija` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
