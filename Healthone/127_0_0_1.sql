-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 06:35 PM
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
-- Database: `collage`
--
DROP DATABASE IF EXISTS `collage`;
CREATE DATABASE IF NOT EXISTS `collage` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `collage`;

-- --------------------------------------------------------

--
-- Table structure for table `collage`
--

DROP TABLE IF EXISTS `collage`;
CREATE TABLE `collage` (
  `id` int(11) NOT NULL,
  `hader` varchar(0) NOT NULL,
  `footer` int(11) NOT NULL,
  `afbeelding` int(11) NOT NULL,
  `logo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collage`
--
ALTER TABLE `collage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collage`
--
ALTER TABLE `collage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `customer`
--
DROP DATABASE IF EXISTS `customer`;
CREATE DATABASE IF NOT EXISTS `customer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `customer`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Zipcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Fname`, `Lname`, `Email`, `Address`, `City`, `Zipcode`) VALUES
(6, '', '', '', '', '', ''),
(8, '', '', '', '', '', ''),
(9, 'Fname', 'Lname', 'Email', 'Address', 'City', 'Zipcode');

-- --------------------------------------------------------

--
-- Table structure for table `sushi`
--

DROP TABLE IF EXISTS `sushi`;
CREATE TABLE `sushi` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sushi`
--

INSERT INTO `sushi` (`id`, `name`, `price`, `amount`) VALUES
(1, 'Maki', 6.49, 45),
(2, 'Hosomaki', 3.49, 30),
(3, 'Futomaki', 6.99, 40),
(4, 'Nigiri', 1.99, 80),
(5, 'Uramaki', 4.99, 70),
(6, 'Gunkan', 3.7, 30),
(7, 'Ebi', 5.5, 60),
(8, 'Sashimi', 11.4, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `sushi`
--
ALTER TABLE `sushi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sushi`
--
ALTER TABLE `sushi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `healthone`
--
DROP DATABASE IF EXISTS `healthone`;
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
(6, 'Proform', 'Sport E2.0', 670, '\\Healthone\\Foto\\crosstrainer\\Proform.png', 'De Sport E2.0 Crosstrainer is voorzien van Bluetooth Smart (BLE), wattmeter, LCD-display en waterfleshouder voor extra gebruiksgemak. De ProForm Crosstrainer is ideaal voor beentraining, om uw spieren te versterken en tonisch te houden met zijn 8 vooringestelde trainingsprogramma\'s. Bovendien verbrandt u calorieën bij elke training dankzij de digitale weerstand op 1 tot 12 niveaus. Het heeft een 14 inch stride en een stille SMR magnetische weerstand die uw cardio en intensieve activiteiten verbetert.', 2),
(13, 'Concept2', 'rowerg', 560.4, '\\Healthone\\Foto\\roeitrainer\\concept2-roeitraner-rowerg.png', 'Een goede eigenschap van de Concept2 RowErg roeitrainer is de watt-precieze weergave van je trainingsprestaties. Zo train je altijd met de juiste weerstand. Dankzij de luchtweerstand pas je de instellingen in een mum van tijd aan met de hendel. Bij een hoge stand heb je een hoge luchttoevoer en een lage stand een lagere luchttoevoer. Hoe harder je trekt, hoe hoger de weerstand. Trainen op een hoge weerstand is een ideale krachttraining, op een lagere weerstand trainen heeft vooral effect op het uithoudingsvermogen.', 1),
(14, 'Decathlon', 'DOMYOS', 740.99, '\\Healthone\\Foto\\roeitrainer\\decathlon_roeitraner.png', 'Een loopband Decathlon kopen? De Domyos loopbanden van het eigen merk van Decathlon zijn erg populair. Er zijn een aantal verschillende modellen. Dus zelfs als je je beperkt tot een Domyos loopband is er zo veel keuze dat het best lastig is om een keuze te maken.', 1),
(17, 'Matrix', 'RXP Rower', 2999, '\\Healthone\\Foto\\roeitrainer\\matrix-roeitrainer.png', 'Laat uw faciliteit opvallen door metrisch gestuurd roeien toe te voegen aan uw circuit, groepslessen of cardiovloer. Het slanke maar robuuste ontwerp omvat een LED-kleuromslag voor doeltraining, intuïtieve bediening van de console, uitgebreide trainingsprogramma\'s, fluisterstille werking, ultraduurzame componenten en een handig compacte voetafdruk die omhoog kantelt en rolt voor eenvoudig transport.', 1),
(18, 'Nordictrack', 'RW900', 1699, '\\Healthone\\Foto\\roeitrainer\\nordictrack_roeitraner_rw900.png', 'De NordicTrack RW900 is een roeitrainer voor intensief gebruik. De roeitrainer wordt aangedreven door zowel luchtweerstand als magnetische weerstand en daarmee maak je een soepele en natuurlijke roeibeweging. Dankzij de luchtweerstand wordt de weerstand opgebouwd indien er meer kracht wordt gezet.', 1),
(21, 'Focus', 'Row-2', 299, '\\Healthone\\Foto\\roeitrainer\\roeitrainer_focus_fitness_row_2.png', 'Deze Row 2 roeitrainer van Focus Fitness is voorzien van een stijlvol design en sterk frame dat voldoende uitdaging biedt voor het gehele gezin. Door de V-belt aandrijving is de Row 2 tijdens gebruik fluisterstil en na training kan hij eenvoudig worden opgeklapt en worden weggerold. De fitnessapparaten van Focus Fitnes staan bekend om de goede prijs/kwaliteit verhoudingen en deze Row 2 is hier een perfect voorbeeld van. Kortom, deze roeitrainer is een perfect apparaat voor de thuissporter!', 1),
(22, 'Virtufit ', 'Row-10', 369, '\\Healthone\\Foto\\roeitrainer\\virtufit-row-10-roeitrainer.png', 'De VirtuFit Row 1.0 is een eenvoudige roeitrainer die makkelijk in gebruik is. De roeitrainer met verstelbare elastomeer weerstand maakt een fijne roeibeweging. De ergonomisch gevormde zitting glijdt soepel over een stevig aluminium rail. De anti-slip pedalen met verstelbare voetriemen zorgen voor een stevige positie van de voeten. Deze anti-slip pedalen draaien tijdens je beweging mee om je voeten altijd de juiste steun te bieden om je af te zetten.', 1),
(25, 'Fitbike', 'The Beast', 1199, '\\Healthone\\Foto\\hometrainer\\airbike_fitbike_the_beast_1.png', 'The Beast van Fitbike is zonder twijfel hét apparaat van dit moment. Deze Airbike geeft je alle mogelijkheden voor de optimale Hoge Intensiteit Interval Training (HIIT). HIIT zorgt ervoor dat je periodes van maximale inspanning, afwisselt met periodes van relatief lage inspanning. Trainen op een hoog percentage van je hartslag is de meest effectieve cardiotraining voor vetverbranding, conditieverbetering én spierversterking! Een HIIT op deze Airbike is tot wel 50% effectiever voor je vetverbranding dan duurtraining. De totale trainingstijd op een Airbike bedraagt ongeveer 14 minuten, maar na je training gaat het vetverbrandingsproces tot wel 30 minuten door! The Beast van Fitbike is ontworpen voor iedere fanatieke thuissporter, personal trainer en CrossFit omgeving.', 3),
(26, 'Flow Fitness Turner', 'dht2500i', 749, '\\Healthone\\Foto\\hometrainer\\flow-fitness-turner-dht2500i.png', 'Voor een spannende fietstocht door de Alpen hoef je je huiskamer niet te verlaten. Je verbindt de Flow Fitness DHT2500i hometrainer via bluetooth aan de iConsole of kinomap app en geniet van verschillende routes over de hele wereld. Hoe hoger de berg hoe zwaarder de weerstand. Stel je liever je eigen training samen? Dan gebruik de je de 32 weerstandniveaus of één van de 4 hartslagprogramma\'s. De speciale Smart Wheel bediening maakt het eenvoudig om tijdens de training door het display te scrollen en de training aan te passen. Jouw prestaties, zoals je snelheid en calorieverbruik, zie je hier ook terug. Dankzij de vele trainingsmogelijkheden gebruik je de DHT2500i als beginner, maar ook als je verder gevorderd bent. Voor een lage, sportieve fietshouding kantel je het stuur naar voren. Als je het iets rustiger aan wilt doen zet je het stuur weer rechtop.', 3),
(29, 'Tunturi', 'Cardio Fit B30', 189, '\\Healthone\\Foto\\hometrainer\\hometrainer-cardio.png', 'Ben je een beginnende sporter die binnenshuis aan de conditie wil werken? De Tunturi Cardio B30 hometrainer is dan een geschikte keuze voor jou. De trainer heeft 8 verschillende weerstandniveaus waardoor je zelf bepaalt hoe intensief je traint. Je trainingsresultaten lees je eenvoudig van het display af. Deze geeft je tijd, snelheid en afstand weer. Plaats je handen op de handpulssensoren om ook je hartslag op het display terug te zien.', 3),
(30, 'Kettler', 'Giro S1', 379, '\\Healthone\\Foto\\hometrainer\\kettler-hometrainer-giro.png', 'De Kettler Giro S1 is een geschikt fitnessapparaat voor de thuissporter die zijn conditie wil bijhouden. Om je training doelgerichter te maken is het mogelijk om zelf een trainingsprogramma handmatig in te voeren. Hierdoor kom je sneller bij je eigen doel dan met de vaste trainingsprogramma\'s. De hometrainer heeft 8 verschillende weerstandniveaus waardoor je zelf kunt bepalen hoe intensief je traint. Op het display lees je af hoe je training verloopt. Hier zie je je tijd, snelheid, afstand en calorieverbruik. Gebruik je de handplussensoren? Dan toont het scherm ook je hartslag.', 3),
(33, 'Nordicktrack', 'u60', 1699, '\\Healthone\\Foto\\hometrainer\\nordicktrack_u60.png', 'NordicTrack is een van de meest ervaren en gerespecteerde namen in thuisfitness. Hun assortiment hometrainers heeft altijd gezorgd voor zowat elk type persoon dat je maar kunt bedenken, van beginners tot serieuze fitnessliefhebbers. Als je wilt fietsen, is er altijd een fiets in hun assortiment die perfect bij je past. De U60 is er een die we al een tijdje proberen te testen, dus wat vonden we ervan toen we de kans hadden om hem eindelijk van dichtbij en persoonlijk te bekijken?', 3),
(34, 'Virtufit', 'iconsole htr 2.1 ergometer', 499, '\\Healthone\\Foto\\hometrainer\\virtufit-iconsole-htr-21-ergometer-hometrainer.png', 'De VirtuFit iConsole+ HTR 2.1 Ergometer Hometrainer is gemaakt van versterkte materialen waardoor de fiets stevig, stabiel en comfortabel is. Dit zorgt voor een lange levensduur van de hometrainer en een belastbaar gewicht van 150 kg. De industriële kogellagers zorgen samen met de magnetische weerstand dat hij vloeiend trapt. Dit maakt de training geruisloos en comfortabel. Het grote ergonomische zadel is zowel verticaal als horizontaal verstelbaar zodat je altijd de juiste houding hebt. Ook de verstelbare handgrepen helpen hierbij. De pedalen van de hometrainer zijn zelfoprichtend en hebben verstelbare voetriemen.', 3),
(37, 'Kettler', 'track 3', 999, '\\Healthone\\Foto\\loopband\\kettler_loopband__track_3.png', 'Je conditie verbeter je stap voor stap met de Kettler Track 3. De loopband heeft een maximale helling van 12% en 8 trainingsprogramma\'s. Daarvan zijn er 2 hartslaggestuurd. Zo maak je jouw training niet alleen steeds een beetje zwaarder, maar train je ook heel gericht op vetverbranding of conditieverbetering. Doordat de loopband voorzien is van een schokdempend systeem, belast je je knieën en gewrichten minder zwaar. Dat is prettig voor beginnende lopers of wanneer je snel last van blessures hebt. Het beste is om je training af te sluiten met de coolingdown- functie, maar loop je iets te hard van stapel en voel je je niet goed? Met de noodknop stop je de training direct. Aan het einde van de training klap je de loopband eenvoudig in en berg je hem op.', 4),
(38, 'Life Fitness', '95ti', 3995, '\\Healthone\\Foto\\loopband\\life_fitness_loopband_95ti.png', 'De Life Fitness loopband 95Ti gebruikt Silverline biedt de ultieme loopbandtraining, voor een beginnende wandelaar, tot aan de toptriatlete, de loopband staat garant voor een geweldige cardio workout.', 4),
(41, 'Focus Fitness', 'Jet 2', 449, '\\Healthone\\Foto\\loopband\\loopband-Focus-Fitness-Jet-2.png', 'De Focus Fitness Jet 2 is de ideale loopband voor de thuissporter. Deze compacte loopband beschikt over verschillende voorgeprogrammeerde programma\'s, heeft een stille motor en is handmatig verstelbaar in twee verschillende hoogtes. Na afloop van je training is hij eenvoudig op te klappen!', 4),
(42, 'Nordictrack', 'T 6.5S', 849, '\\Healthone\\Foto\\loopband\\nordictrackt_6_5s-.png', 'De Loopband NordicTrack T 6.5S is de perfecte loopband voor intensief thuisgebruik. Het is een geschikt apparaat voor diverse trainingen, of je trainingsdoel nu afvallen, calorieën verbranden of het opbouwen van conditie is. Met behulp van de sneltoetsen kan je makkelijk je snelheid aanpassen tot 16 km/h. Verder is deze loopband voorzien van een hellingshoek die je kunt verhogen tot 10%, zodat je jezelf tijdens de work-out nog net iets meer kan uitdagen. Met je eigen mp3-speler of iPod aangesloten op de loopband luister je naar je favoriete muziek via de ingebouwde speakers.', 4),
(45, 'Proform', '950 Performance', 1630, '\\Healthone\\Foto\\loopband\\proform_950_performance.png', 'Met de ProForm 950 Performance loopband brengt al je trainingsdoelen dichterbij. Met de stevige 2.5 pk motor kun je 20 kilometer per uur bereiken en een helling van maximaal 10% oplopen. De motor wordt continu gekoeld waardoor hij zonder problemen lange tijd geruisloos kan draaien en niet oververhit raakt. Door een uitgekiende mix van programma\'s kun je zelf bepalen wat je wilt bereiken met deze stevige loopband. Met 5 programma\'s voor het lopen van afstanden, 5 gebaseerd op tijd en 5 voor vetverbranding is deze veelzijdige loopband geschikt voor meerdere doeleinden. Elk van deze programma\'s is ontworpen door een professionele personal trainer. Kies en mix tot je op een schema komt dat voor jou werkt.', 4),
(46, 'Reebok', 'gt40s', 699, '\\Healthone\\Foto\\loopband\\reebok_loopband_gt40s.png', 'De Reebok One Series Loopbanden staan voor 3 verschillende zones die vloeiend samenwerken in één loopvlak! De Contact zone zorgt voor een goede absorptie en zachte landing van je voet op de band. Op de Midstance zone verloopt de afwikkeling van je voet soepel en natuurlijk. De Propulsion zone aan het eind van het loopvlak beschikt over een stevig, meewerkend oppervlakte, dat voorwaartse kracht geeft bij het afzetten van de teen. De GT-40 loopband is een instapmodel met veel mogelijkheden. Ingebouwde boxen en een MP-3 aansluiting zodat je tijdens het trainen kan luisteren naar je favoriete muziek! Een maximale snelheid van 16 km/u en een elektronisch verstelbare hellingshoek (12 niveaus). De GT-40 heeft een 7 inch LCD display waarvan onder andere de volgende waarden zijn af te lezen: tijd, snelheid, afstand, calorieverbruik, hartslag en hellingshoek.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `score` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `message`, `score`, `date`, `product_id`) VALUES
(17, 'ye', 'go', 5, '2022-06-17 14:42:55', 21),
(18, 'ye', 'go', 5, '2022-06-17 14:46:10', 21),
(19, '12', '12', 1, '2022-06-21 18:11:26', 2);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `PRODUCT_ID` (`product_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `PRODUCT_ID` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
--
-- Database: `phpmyadmin`
--
DROP DATABASE IF EXISTS `phpmyadmin`;
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"healthone\",\"table\":\"products\"},{\"db\":\"healthone\",\"table\":\"review\"},{\"db\":\"healthone\",\"table\":\"catagorie\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('healthone', 'review', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-17 13:02:39', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"nl\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
