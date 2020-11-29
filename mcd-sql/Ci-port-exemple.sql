-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 29, 2020 at 03:15 PM
-- Server version: 10.1.47-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-14+0~20191218.25+debian9~1.gbpae1889

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barlowd`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ci_apropos`
--

CREATE TABLE `Ci_apropos` (
  `id_apro` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `texte` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `dateNess` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ci_apropos`
--

INSERT INTO `Ci_apropos` (`id_apro`, `nom`, `prenom`, `titre`, `texte`, `dateNess`) VALUES
(1, 'Barlow', 'Douglas', 'Douglas Barlow', 'Je suis étudiant en BTS SIO au Lycée Saint-Joseph à Bressuire.\nAu sein du BTS SIO, il existe deux options, l’option SLAM et SISR. J’ai choisi l\'option slam On travaille sur le développement d’application, développement Web et on l’analyse des bases de données.', '30 Octobre 2000');

-- --------------------------------------------------------

--
-- Table structure for table `Ci_contact`
--

CREATE TABLE `Ci_contact` (
  `id_contact` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `objet` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `texte` varchar(2500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ci_contact`
--

INSERT INTO `Ci_contact` (`id_contact`, `nom`, `prenom`, `email`, `objet`, `texte`) VALUES
(14, 'Barlow', 'Douglas', 'd.barlow@laposte.net', 'Best friends', 'Hello i love you Douglas');

-- --------------------------------------------------------

--
-- Table structure for table `Ci_contact_page`
--

CREATE TABLE `Ci_contact_page` (
  `id_contact` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `texte` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ci_contact_page`
--

INSERT INTO `Ci_contact_page` (`id_contact`, `nom`, `prenom`, `adresse`, `email`, `texte`) VALUES
(1, 'Barlow', 'Douglas', 'Le busseau', 'd.barlow@laposte.net', 'Ou cliquer ici pour me contacter par Email');

-- --------------------------------------------------------

--
-- Table structure for table `Ci_experiences`
--

CREATE TABLE `Ci_experiences` (
  `id_exp` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `texte` varchar(2500) COLLATE utf8_unicode_ci NOT NULL,
  `entreprise` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ci_experiences`
--

INSERT INTO `Ci_experiences` (`id_exp`, `titre`, `texte`, `entreprise`, `adress`) VALUES
(1, 'Stages', 'ETS Saboureau, L\'hommeraie, 79400 Azay-le-Brûlé Stage de deux mois plus un mois en tant qu\'intérimaire.\r\nAir Liquide/Lincoln Electric, Rue Lavoisier 79200 Parthenay Stage de deux mois.\r\nA.A.B.G. BESSON, Bressuire 201 Boulevard de Poitiers 79300 Stage de deux ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Ci_home`
--

CREATE TABLE `Ci_home` (
  `id_home` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `titredescription` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ci_home`
--

INSERT INTO `Ci_home` (`id_home`, `titre`, `titredescription`, `description`) VALUES
(2, 'Bienvenue sur le portfolio de Douglas Barlow', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Ci_veille`
--

CREATE TABLE `Ci_veille` (
  `id_Veille` int(11) NOT NULL,
  `nomVeille` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `lien` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `texte` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ci_veille`
--

INSERT INTO `Ci_veille` (`id_Veille`, `nomVeille`, `lien`, `texte`, `date`) VALUES
(1, 'Bluetooth', 'https://www.phonandroid.com/bluetooth-une-faille-critique-permet-dexecuter-du-code-malveillant-sur-votre-smartphone.html', 'Les versions du Bluetooth 4.2 à 5.0 sont menacées.', '2020-09-11'),
(2, 'Le Wi-Fi 7', 'https://www.inpact-hardware.com/article/2076/le-wi-fi-7-802-11be-jusqua-46-gbs-se-prepare-que-faut-il-en-attendre', 'Le Wi-Fi 6 arrive à peine dans nos foyers, le Wi-Fi 6E pointe son nez à l\'horizon, mais la suite se prépare déjà.', '2020-10-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ci_apropos`
--
ALTER TABLE `Ci_apropos`
  ADD PRIMARY KEY (`id_apro`);

--
-- Indexes for table `Ci_contact`
--
ALTER TABLE `Ci_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `Ci_contact_page`
--
ALTER TABLE `Ci_contact_page`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `Ci_experiences`
--
ALTER TABLE `Ci_experiences`
  ADD PRIMARY KEY (`id_exp`);

--
-- Indexes for table `Ci_home`
--
ALTER TABLE `Ci_home`
  ADD PRIMARY KEY (`id_home`);

--
-- Indexes for table `Ci_veille`
--
ALTER TABLE `Ci_veille`
  ADD PRIMARY KEY (`id_Veille`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ci_apropos`
--
ALTER TABLE `Ci_apropos`
  MODIFY `id_apro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ci_contact`
--
ALTER TABLE `Ci_contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Ci_contact_page`
--
ALTER TABLE `Ci_contact_page`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ci_experiences`
--
ALTER TABLE `Ci_experiences`
  MODIFY `id_exp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Ci_home`
--
ALTER TABLE `Ci_home`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ci_veille`
--
ALTER TABLE `Ci_veille`
  MODIFY `id_Veille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
