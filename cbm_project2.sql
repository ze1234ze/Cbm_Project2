-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Sep 2022 um 16:42
-- Server-Version: 10.4.17-MariaDB
-- PHP-Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cbm_project`
--

CREATE TABLE `cbm_project` (
  `id` int(11) NOT NULL,
  `restaurantname` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `beschreibung` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `kontakt` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `preis` int(255) NOT NULL,
  `age` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `cbm_project`
--

INSERT INTO `cbm_project` (`id`, `restaurantname`, `beschreibung`, `adress`, `kontakt`, `preis`, `age`) VALUES
(1, 'Hanoi Deli Europa Passage', 'Vietnamesisch', 'Ballindamm 40 2. OG Europa Passage, 20095 Hamburg Deutschland', '+49 40 30762134', 1, 2),
(2, 'NOM Vietnamese fusion food\r\n', 'Asiatisch, Fusion, Vietnamesisch', 'Zeughausmarkt 17, 20459 Hamburg Deutschland', '+49 40 50097120', 1, 2),
(3, 'Nakama - Fusion Kitchen', 'Japanisch, Fusion, Vietnamesisch, Meeresfrüchte, Sushi, Asiatisch', 'Willy-Brandt-Straße 51, 20457 Hamburg Deutschland', '+49 40 49205111', 2, 2),
(4, 'Vous', 'Asiatisch, Vietnamesisch', 'Gertigstraße 7, 22303 Hamburg Deutschland\r\nWinterhude', '+49 40 36901488', 2, 2),
(5, 'Tschebull', 'Österreichisch, Europäisch, Mitteleuropäisch', 'Mönckebergstr. 7, 20095 Hamburg Deutschland', '+49 40 32964796', 2, 2),
(6, 'Zuckermonarchie', 'Café', 'Taubenstraße 15, 20359 Hamburg Deutschland', '+49 40 38630682', 1, 1),
(7, 'Luicella\'s', 'Vegane Speisen', 'Detlev-Bremer-Straße 46, 20359 Hamburg', '+49 40 94793009', 1, 1),
(8, 'Café Mimosa\r\n', 'Vegane Speisen', 'Clemens-Schultz-Str. 87, 20359 Hamburg', '+49 40 32037989', 1, 1),
(9, 'Zeik\r\n', 'Europäisch', 'Sierichstraße 112, 22299 Hamburg Deutschland', '+49 40 46653531', 4, 3),
(10, 'The Table Kevin Fehling', 'Drei MICHELIN Sterne', 'Shanghaiallee 15, 20457 Hamburg Deutschland', '+49 40 22867422', 4, 4),
(11, 'Bianc\r\n', 'Mediterran, Europäisch, Mitteleuropäisch', 'Am Sandtorkai 50, 20457 Hamburg ', '+49 40 18119797', 4, 3),
(12, 'Restaurant Haerlin', 'Französisch, Europäisch, Mitteleuropäisch, International', 'Neuer Jungfernstieg 9 - 14 Fairmont Hotel Vier Jahreszeiten, 20354 Hamburg ', '+49 40 34943310', 3, 4),
(13, 'Estancia Steaks', 'Steakhaus', 'Große Reichenstraße 27, 20457 Hamburg', '+49 40 30384280', 3, 2),
(14, '[M]eatery Bar + Restaurant Hamburg', 'Steakhaus', 'Drehbahn 49, 20354 Hamburg', '+49 40 30999595', 3, 2),
(15, 'Fischereihafen-Restaurant', 'Für Vegetarier Geeignet, Glutenfreie Speisen', 'Große Elbstraße 143, 22767 Hamburg', '+49 40 381816', 4, 4),
(16, 'Surolls', 'Asiatisch, Japanische Fusion-Küche, Japanisch, Fast Food, Sushi, Gesund, International', 'Ballindamm 40 Ug 1, 20095 Hamburg', '+49 1522 7061644', 1, 1),
(17, 'Slim Jims', 'Pizza', 'Bei der Schilleroper 1-3, 22767 Hamburg', '+49 1522 7061644', 1, 1),
(18, 'Vincent Vegan', 'Fast Food', 'Ballindamm 40 Im Food Sky, 20095 Hamburg', '+49 40 76753852', 2, 1),
(19, 'Svaadish', 'Street Food', 'Hoheluftchaussee 125, 20253 Hamburg', '+49 40 42938951', 2, 1),
(20, 'Xeom', 'Asiatisch, Vietnamesisch, Suppen', 'Karolinenstr. 25, 20357 Hamburg Deutschland', '+49 1521 9193226', 1, 1),
(21, 'Jim Burrito\'s cantina', 'Mexikanisch, South-Western, Fast Food, Mittelamerikanisch', 'Schulterblatt 12, 20357 Hamburg Deutschland', '+49 40 30225690', 1, 3),
(22, 'N-fusion \r\n', 'Asiatisch, Fusion, Vietnamesisch', 'Zeughausmarkt 17, 20459 Hamburg Deutschland', '+49 40 50097120', 1, 1),
(23, 'Fusion Kitchen', 'Japanisch, Fusion, Vietnamesisch, Meeresfrüchte, Sushi, Asiatisch', 'Willy-Brandt-Straße 51, 20457 Hamburg Deutschland', '+49 40 49205111', 2, 2),
(24, 'mr.Vous', 'Asiatisch, Vietnamesisch', 'Gertigstraße 7, 22303 Hamburg Deutschland\r\nWinterhude', '+49 40 36901488', 4, 4),
(25, 'Redbull', 'Österreichisch, Europäisch, Mitteleuropäisch', 'Mönckebergstr. 7, 20095 Hamburg Deutschland', '+49 40 32964796', 4, 4),
(26, 'Zuckerberg', 'Café', 'Taubenstraße 15, 20359 Hamburg Deutschland', '+49 40 38630682', 4, 4),
(27, 'Zella\'s', 'Vegane Speisen', 'Detlev-Bremer-Straße 46, 20359 Hamburg', '+49 40 94793009', 3, 3),
(28, 'Café\r\n', 'Vegane Speisen', 'Clemens-Schultz-Str. 87, 20359 Hamburg', '+49 40 32037989', 4, 1),
(29, 'Meikls\r\n', 'Europäisch', 'Sierichstraße 112, 22299 Hamburg Deutschland', '+49 40 46653531', 1, 4),
(30, 'Kevin', 'Drei MICHELIN Sterne', 'Shanghaiallee 15, 20457 Hamburg Deutschland', '+49 40 22867422', 2, 3),
(31, 'Bianca and co\r\n', 'Mediterran, Europäisch, Mitteleuropäisch', 'Am Sandtorkai 50, 20457 Hamburg ', '+49 40 18119797', 1, 3),
(32, 'Haerlin', 'Französisch, Europäisch, Mitteleuropäisch, International', 'Neuer Jungfernstieg 9 - 14 Fairmont Hotel Vier Jahreszeiten, 20354 Hamburg ', '+49 40 34943310', 1, 4),
(33, 'Steaks', 'Steakhaus', 'Große Reichenstraße 27, 20457 Hamburg', '+49 40 30384280', 1, 4),
(34, 'Bar + Restaurant Hamburg', 'Steakhaus', 'Drehbahn 49, 20354 Hamburg', '+49 40 30999595', 1, 2),
(35, 'Restaurant', 'Für Vegetarier Geeignet, Glutenfreie Speisen', 'Große Elbstraße 143, 22767 Hamburg', '+49 40 381816', 2, 1),
(36, 'Rolls', 'Asiatisch, Japanische Fusion-Küche, Japanisch, Fast Food, Sushi, Gesund, International', 'Ballindamm 40 Ug 1, 20095 Hamburg', '+49 1522 7061644', 4, 2),
(37, 'Jims', 'Pizza', 'Bei der Schilleroper 1-3, 22767 Hamburg', '+49 1522 7061644', 3, 1),
(38, 'Vegan', 'Fast Food', 'Ballindamm 40 Im Food Sky, 20095 Hamburg', '+49 40 76753852', 2, 4),
(39, 'Dish', 'Street Food', 'Hoheluftchaussee 125, 20253 Hamburg', '+49 40 42938951', 2, 2),
(40, 'Fatom', 'Asiatisch, Vietnamesisch, Suppen', 'Karolinenstr. 25, 20357 Hamburg Deutschland', '+49 1521 9193226', 4, 1),
(41, 'Burrito\'s ', 'Mexikanisch, South-Western, Fast Food, Mittelamerikanisch', 'Schulterblatt 12, 20357 Hamburg Deutschland', '+49 40 30225690', 4, 1),
(42, 'Deli', 'Vietnamesisch', 'Ballindamm 40 2. OG Europa Passage, 20095 Hamburg Deutschland', '+49 40 30762134', 1, 1),
(43, 'Delishius', 'Vietnamesisch', 'Ballindamm 40 2. OG Europa Passage, 20095 Hamburg Deutschland', '+49 40 30762134', 1, 1),
(44, 'Malusion \r\n', 'Asiatisch, Fusion, Vietnamesisch', 'Zeughausmarkt 17, 20459 Hamburg Deutschland', '+49 40 50097120', 1, 1),
(45, 'My Kitchen', 'Japanisch, Fusion, Vietnamesisch, Meeresfrüchte, Sushi, Asiatisch', 'Willy-Brandt-Straße 51, 20457 Hamburg Deutschland', '+49 40 49205111', 2, 2),
(46, 'Sous', 'Asiatisch, Vietnamesisch', 'Gertigstraße 7, 22303 Hamburg Deutschland\r\nWinterhude', '+49 40 36901488', 4, 4),
(47, 'Bullshit', 'Österreichisch, Europäisch, Mitteleuropäisch', 'Mönckebergstr. 7, 20095 Hamburg Deutschland', '+49 40 32964796', 4, 4),
(48, 'S_Café\r\n', 'Vegane Speisen', 'Clemens-Schultz-Str. 87, 20359 Hamburg', '+49 40 32037989', 4, 1),
(49, 'Stakeikls\r\n', 'Europäisch', 'Sierichstraße 112, 22299 Hamburg Deutschland', '+49 40 46653531', 1, 4),
(50, 'Georgevin', 'Drei MICHELIN Sterne', 'Shanghaiallee 15, 20457 Hamburg Deutschland', '+49 40 22867422', 2, 3),
(51, 'Fremd co\r\n', 'Mediterran, Europäisch, Mitteleuropäisch', 'Am Sandtorkai 50, 20457 Hamburg ', '+49 40 18119797', 1, 3),
(52, 'Breitlin', 'Französisch, Europäisch, Mitteleuropäisch, International', 'Neuer Jungfernstieg 9 - 14 Fairmont Hotel Vier Jahreszeiten, 20354 Hamburg ', '+49 40 34943310', 1, 4),
(53, 'Merkereaks', 'Steakhaus', 'Große Reichenstraße 27, 20457 Hamburg', '+49 40 30384280', 1, 4),
(54, 'Go Restaurant', 'Steakhaus', 'Drehbahn 49, 20354 Hamburg', '+49 40 30999595', 1, 2),
(55, 'Not a Restaurant', 'Für Vegetarier Geeignet, Glutenfreie Speisen', 'Große Elbstraße 143, 22767 Hamburg', '+49 40 381816', 2, 1),
(56, 'Rolls Royce', 'Asiatisch, Japanische Fusion-Küche, Japanisch, Fast Food, Sushi, Gesund, International', 'Ballindamm 40 Ug 1, 20095 Hamburg', '+49 1522 7061644', 4, 2),
(57, 'Stn and Jims', 'Pizza', 'Bei der Schilleroper 1-3, 22767 Hamburg', '+49 1522 7061644', 3, 1),
(58, 'Mensch Vegan', 'Fast Food', 'Ballindamm 40 Im Food Sky, 20095 Hamburg', '+49 40 76753852', 2, 4),
(59, 'CavenDish', 'Street Food', 'Hoheluftchaussee 125, 20253 Hamburg', '+49 40 42938951', 2, 2),
(60, 'RR Fantom', 'Asiatisch, Vietnamesisch, Suppen', 'Karolinenstr. 25, 20357 Hamburg Deutschland', '+49 1521 9193226', 4, 1),
(61, 'Rito\'s ', 'Mexikanisch, South-Western, Fast Food, Mittelamerikanisch', 'Schulterblatt 12, 20357 Hamburg Deutschland', '+49 40 30225690', 4, 1),
(62, 'Berger', 'Café', 'Taubenstraße 15, 20359 Hamburg Deutschland', '+49 40 38630682', 4, 4),
(63, 'MO della\'s', 'Vegane Speisen', 'Detlev-Bremer-Straße 46, 20359 Hamburg', '+49 40 94793009', 3, 3),
(64, 'My first rest', 'Located in stadtcentrum', 'AlsterHaus', '0 176 76 405 405', 4, 4),
(65, 'TEST', 'TEST', 'TEST', 'TEST', 4, 2),
(66, 'Mac', 'alster', 'alsterhaus', '017676405405', 4, 4),
(67, 'New one', 'Near me', 'Stammannstrasse', '0123456789', 2, 2),
(68, 'One more time', 'This is it', 'Gertigstrasse', '0987654321', 3, 3);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cbm_project`
--
ALTER TABLE `cbm_project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cbm_project`
--
ALTER TABLE `cbm_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
