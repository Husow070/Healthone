-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 jun 2022 om 12:19
-- Serverversie: 10.4.22-MariaDB
-- PHP-versie: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catagorie`
--
DROP DATABASE IF EXISTS `catagorie`;
CREATE DATABASE IF NOT EXISTS `catagorie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `catagorie`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `catagorie`
--

DROP TABLE IF EXISTS `catagorie`;
CREATE TABLE `catagorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `catagorie`
--

INSERT INTO `catagorie` (`id`, `name`, `picture`) VALUES
(1, 'Roeitrainer', '\\Healthone\\Foto\\catagorie\\Roeitrainer.png'),
(2, 'Crosstrainer', '\\Healthone\\Foto\\catagorie\\Cross1.png'),
(3, 'Hometrainer', '\\Healthone\\Foto\\catagorie\\Hometrainer.png'),
(4, 'Loopband', '\\Healthone\\Foto\\catagorie\\Loopband.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `catagorie`
--
ALTER TABLE `catagorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `catagorie`
--
ALTER TABLE `catagorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `customer`
--
DROP DATABASE IF EXISTS `customer`;
CREATE DATABASE IF NOT EXISTS `customer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `customer`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customer`
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
-- Gegevens worden geëxporteerd voor tabel `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Fname`, `Lname`, `Email`, `Address`, `City`, `Zipcode`) VALUES
(6, '', '', '', '', '', ''),
(8, '', '', '', '', '', ''),
(9, 'Fname', 'Lname', 'Email', 'Address', 'City', 'Zipcode');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sushi`
--

DROP TABLE IF EXISTS `sushi`;
CREATE TABLE `sushi` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `sushi`
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
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexen voor tabel `sushi`
--
ALTER TABLE `sushi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `sushi`
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
-- Tabelstructuur voor tabel `catagorie`
--

DROP TABLE IF EXISTS `catagorie`;
CREATE TABLE `catagorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `catagorie`
--

INSERT INTO `catagorie` (`id`, `name`, `picture`) VALUES
(1, 'Roeitrainer', '\\Healthone\\Foto\\catagorie\\Roeitrainer.png'),
(2, 'Crosstrainer', '\\Healthone\\Foto\\catagorie\\Cross1.png'),
(3, 'Hometrainer', '\\Healthone\\Foto\\catagorie\\Hometrainer.png'),
(4, 'Loopband', '\\Healthone\\Foto\\catagorie\\Loopband.png');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
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
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `merk`, `type`, `prijs`, `image`, `description`, `category_id`) VALUES
(1, 'Hammer', 'Crosslife XTR', 1099.5, '\\Healthone\\Foto\\crosstrainer\\Hammer.png', 'Het weerstandsbereik van de Hammer Crosstech XTR crosstrainer is onderverdeeld in 16 niveaus. Hierdoor kunt u met kleine stapjes voorzichtig de weerstand opvoeren. Een langzame toename van de belasting is vooral aan te raden voor beginners. Door steeds weer kleine doelstellingen te bereiken, blijft de trainingsmotivatie op de lange termijn hoog.', 2),
(2, 'Finnlo', 'LOXON', 799.62, '\\Healthone\\Foto\\crosstrainer\\Finnlo.png', 'De Loxon crosstrainer biedt een van de beste bewegingen van de markt tegen een ongekend hoge kwaliteit en duurzaamheid. De Finnlo Loxon is uiterst geruisloos door het geperfectioneerde remsysteem en de zeer duurzaam gefabriceerde onderdelen. De vele trainingsprogramma\'s van de computer van de Finnlo Loxon garanderen u een afwisselende en functionele training.', 2),
(3, 'LifeSpanfitness', 'Elliptical E3I+', 899, '\\Healthone\\Foto\\crosstrainer\\LifeSpan.png', 'Onovertroffen kwaliteit met ongekende mogelijkheden, dat is de LifeSpan E3i crosstrainer. Of u nu op zoek bent naar absolute topkwaliteit voor thuis of gewoon het beste wilt voor bijvoorbeeld uw fysiotherapie praktijk, de LifeSpan E3i is gewoon een verstandige keuze.', 2),
(4, 'Maxxus', 'CX 6.1', 590, '\\Healthone\\Foto\\crosstrainer\\Maxxus.png', 'Het vliegwiel loopt heel rustig, zodat een aangenaam loopgedrag wordt gegeven. De praktische houder heeft een smartphone of tablet, zodat de training met veel entertainment kan worden verbonden.', 2),
(5, 'Nordictrack', 'E9 ZL', 1249, '\\Healthone\\Foto\\crosstrainer\\NordicTrack.png', 'De degelijke NordicTrack E9 ZL is een crosstrainer met een indrukwekkend vliegwiel; van wel 22 kg! Dit vliegwiel verzekerd u van een degelijke en soepele workout.', 2),
(6, 'Proform', 'Sport E2.0', 670, '\\Healthone\\Foto\\crosstrainer\\Proform.png', 'De Sport E2.0 Crosstrainer is voorzien van Bluetooth Smart (BLE), wattmeter, LCD-display en waterfleshouder voor extra gebruiksgemak. De ProForm Crosstrainer is ideaal voor beentraining, om uw spieren te versterken en tonisch te houden met zijn 8 vooringestelde trainingsprogramma\'s. Bovendien verbrandt u calorieën bij elke training dankzij de digitale weerstand op 1 tot 12 niveaus. Het heeft een 14 inch stride en een stille SMR magnetische weerstand die uw cardio en intensieve activiteiten verbetert.', 2);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `catagorie`
--
ALTER TABLE `catagorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `catagorie`
--
ALTER TABLE `catagorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `phpmyadmin`
--
DROP DATABASE IF EXISTS `phpmyadmin`;
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__bookmark`
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
-- Tabelstructuur voor tabel `pma__central_columns`
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
-- Tabelstructuur voor tabel `pma__column_info`
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
-- Tabelstructuur voor tabel `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__export_templates`
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
-- Tabelstructuur voor tabel `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__history`
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
-- Tabelstructuur voor tabel `pma__navigationhiding`
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
-- Tabelstructuur voor tabel `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Gegevens worden geëxporteerd voor tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"healthone\",\"table\":\"products\"},{\"db\":\"healthone\",\"table\":\"catagorie\"},{\"db\":\"crosstrainer\",\"table\":\"crosstrainer\"},{\"db\":\"catagorie\",\"table\":\"catagorie\"},{\"db\":\"customer\",\"table\":\"customer\"},{\"db\":\"customer\",\"table\":\"sushi\"}]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__relation`
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
-- Tabelstructuur voor tabel `pma__savedsearches`
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
-- Tabelstructuur voor tabel `pma__table_coords`
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
-- Tabelstructuur voor tabel `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_uiprefs`
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
-- Tabelstructuur voor tabel `pma__tracking`
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
-- Tabelstructuur voor tabel `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Gegevens worden geëxporteerd voor tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-14 09:39:24', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"nl\"}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexen voor tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexen voor tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexen voor tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexen voor tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexen voor tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexen voor tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexen voor tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexen voor tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexen voor tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexen voor tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__savedsearches`
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
