-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 04 2022 г., 21:31
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

try{
    $data_bank = new PDO(
        "mysql:dbname=onlineshop;host=localhost",
        "root",       // username 
        ""           // password
    );

    echo "Gut gemacht!";

    
    $data_bank->query($sqlbefehl);
    $data_bank = null;  // macht variabel frei

}catch(PDOException $exept){
    echo $exept->getMessage();
}
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cbm_project`
--

CREATE TABLE `cbm_project` (
  `id` int(255) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `describe` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `adress` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `kontakt` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `preis` int(255) NOT NULL,
  `age` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `cbm_project`
--

INSERT INTO `cbm_project` (`id`, `name`, `describe`, `adress`, `kontakt`, `preis`, `age`) VALUES
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
(21, 'Jim Burrito\'s cantina', 'Mexikanisch, South-Western, Fast Food, Mittelamerikanisch', 'Schulterblatt 12, 20357 Hamburg Deutschland', '+49 40 30225690', 1, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cbm_project`
--
ALTER TABLE `cbm_project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cbm_project`
--
ALTER TABLE `cbm_project`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
