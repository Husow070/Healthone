-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 04:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--
CREATE DATABASE IF NOT EXISTS `healthone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `healthone`;

-- --------------------------------------------------------

--
-- Table structure for table `catagorie`
--

DROP TABLE IF EXISTS `catagorie`;
CREATE TABLE `catagorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagorie`
--

INSERT INTO `catagorie` (`id`, `name`, `picture`) VALUES
(1, 'Roeitrainer', '\\Healthone\\Foto\\catagorie\\Roeitrainer.png'),
(2, 'Crosstrainer', '\\Healthone\\Foto\\catagorie\\Cross1.png'),
(3, 'Hometrainer', '\\Healthone\\Foto\\catagorie\\Hometrainer.png'),
(4, 'Loopband', '\\Healthone\\Foto\\catagorie\\Loopband.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prijs` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `merk`, `type`, `prijs`, `image`, `description`, `category_id`) VALUES
(1, 'Hammer', 'Crosslife XTR', 1099.5, '\\Healthone\\Foto\\crosstrainer\\Hammer.png', 'Het weerstandsbereik van de Hammer Crosstech XTR crosstrainer is onderverdeeld in 16 niveaus. Hierdoor kunt u met kleine stapjes voorzichtig de weerstand opvoeren. Een langzame toename van de belasting is vooral aan te raden voor beginners. Door steeds weer kleine doelstellingen te bereiken, blijft de trainingsmotivatie op de lange termijn hoog.', 2),
(2, 'Finnlo', 'LOXON', 799.62, '\\Healthone\\Foto\\crosstrainer\\Finnlo.png', 'De Loxon crosstrainer biedt een van de beste bewegingen van de markt tegen een ongekend hoge kwaliteit en duurzaamheid. De Finnlo Loxon is uiterst geruisloos door het geperfectioneerde remsysteem en de zeer duurzaam gefabriceerde onderdelen. De vele trainingsprogramma\'s van de computer van de Finnlo Loxon garanderen u een afwisselende en functionele training.', 2),
(3, 'LifeSpanfitness', 'Elliptical E3I+', 899, '\\Healthone\\Foto\\crosstrainer\\LifeSpan.png', 'Onovertroffen kwaliteit met ongekende mogelijkheden, dat is de LifeSpan E3i crosstrainer. Of u nu op zoek bent naar absolute topkwaliteit voor thuis of gewoon het beste wilt voor bijvoorbeeld uw fysiotherapie praktijk, de LifeSpan E3i is gewoon een verstandige keuze.', 2),
(4, 'Maxxus', 'CX 6.1', 590, '\\Healthone\\Foto\\crosstrainer\\Maxxus.png', 'Het vliegwiel loopt heel rustig, zodat een aangenaam loopgedrag wordt gegeven. De praktische houder heeft een smartphone of tablet, zodat de training met veel entertainment kan worden verbonden.', 2),
(5, 'Nordictrack', 'E9 ZL', 1249, '\\Healthone\\Foto\\crosstrainer\\NordicTrack.png', 'De degelijke NordicTrack E9 ZL is een crosstrainer met een indrukwekkend vliegwiel; van wel 22 kg! Dit vliegwiel verzekerd u van een degelijke en soepele workout.', 2),
(6, 'Proform', 'Sport E2.0', 670, '\\Healthone\\Foto\\crosstrainer\\Proform.png', 'De Sport E2.0 Crosstrainer is voorzien van Bluetooth Smart (BLE), wattmeter, LCD-display en waterfleshouder voor extra gebruiksgemak. De ProForm Crosstrainer is ideaal voor beentraining, om uw spieren te versterken en tonisch te houden met zijn 8 vooringestelde trainingsprogramma\'s. Bovendien verbrandt u calorieën bij elke training dankzij de digitale weerstand op 1 tot 12 niveaus. Het heeft een 14 inch stride en een stille SMR magnetische weerstand die uw cardio en intensieve activiteiten verbetert.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagorie`
--
ALTER TABLE `catagorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagorie`
--
ALTER TABLE `catagorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
