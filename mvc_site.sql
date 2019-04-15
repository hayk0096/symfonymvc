-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 17, 2017 at 04:45 PM
-- Server version: 5.6.31
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `title`, `price`, `image`, `description`, `user_id`) VALUES
(1, 'SumsungGalaxyNoteEdge', '270․000', 'SumsungGalaxyNoteEdge.jpg', 'The most interesting part of the Galaxy Note Edge is of course its screen. \r\nIt has a total resolution of 1600x2560, divided into a standard 16:9 1440x2560-pixel \r\narea for the main interface and an additional 160-pixel-wide strip on the side. \r\nThere is no visible seam between the two areas - it really is one single continuous panel. \r\nThe divisions you see are purely down to how the phone''s software handles things.\r\nThere''s a 3,000mAh battery and a whole raft of sensors. You also get Wi-Fi b/g/n/ac, \r\nBluetooth 4.1, Infrared, NFC, and GPS.', 1),
(2, 'Samsung Galaxy S7 32Gb', '220․000', 'SumsungGalaxyS7.jpg', 'смартфон, Android 7.0\r\nподдержка двух SIM-карт\r\nэкран 5.1", разрешение 2560x1440\r\nкамера 12 МП, автофокус, F/1.7\r\nпамять 32 Гб, слот для карты памяти\r\n3G, 4G LTE, LTE-A, Wi-Fi, Bluetooth, NFC, GPS, ГЛОНАСС\r\nобъем оперативной памяти 4 Гб\r\nаккумулятор 3000 мА⋅ч\r\nвес 152 г, ШxВxТ 69.60x142.40x7.90 мм', 0),
(3, 'Samsung Galaxy Note 7', '80․000 ', 'galaxy-note-7.jpg', 'Yes the Galaxy Note 7 is very much a part of the Galaxy S7 and S7 edge family, no longer on a disparate path. The number 7 appended to its name sets that expectation, the outside reaffirms your suspicions and the experience solidifies them. But that isn''t a bad thing, and it doesn''t mean there isn''t a ton to get to know about the Galaxy Note 7, including how it indeed still differentiates itself from the world of high-end Android phones, Samsung or otherwise. I''m here to tell you just where the Note 7 fits in this world — read on.', 0),
(4, 'Samsung Galaxy note 4', '127․000 ', 'samsung-galaxy-note-4.jpg', 'Самсунг Галакси Ноте 4 — отличный смартфон, работающий на платформе Android \r\nс 4х-ядерным процессором Qualcomm Snapdragon 805 2700Mhz, \r\nоснащенный HD Super AMOLED-дисплеем, отображающим до 16 млн. цветов, \r\nс диагональю 5.7" и камерой на 16 Mpx, делающей снимки с разрешением 4608x3456 px. \r\nОснащен очень мощным аккумулятором на 3220 mAh Для коммуникации может предложить:\r\n WAP браузер, EDGE, HSDPA, WiFi, LTE (4G), NFC, Ик-порт, стерео Bluetooth,\r\n и, конечно, USB-порт. Для любителей музыки есть аудио выход на 3.5 мм. \r\nТакже стоит отметить, что он оснащен GPS-приемником,\r\n который позволит Вам не заблудиться в любом месте!\r\nЧитать полностью: https://samsung-fun.ru/catalog/samsung-galaxy+note+4/', 0),
(6, 'HTC Desire 630', '90000 ', 'htc_desire_530_small.jpg', 'В качестве уникальной фишки смартфона выступает его дизайн с эффектом брызг. Он обеспечивает уникальность каждого отдельно взятого экземпляра. Это достигается путем нанесения краски на крышку с различным давлением и плотностью.\nHTC Desire 530 старается походить на своего старшего брата – HTC Desire Eye, который занял место среди флагманов компании.\n\nВ числе особенностей строения корпуса модели можно также отметить возможность прикрепить ремешек. Такая функция позволяет обезопасить использование гаджета на шумных и людных мероприятиях, сводя риск падения или утери к минимуму.\n\nВ качестве материала для изготовления телефона был выбран легкий и крепкий пластик.\n\nДиагональ экрана составляет 5 дюймо\nСлот microSD поддерживает карты дополнительной памяти до 200 гб. Благодаря продвинутости операционной системы, наличие внутренней и SD памяти в смартфоне не станет приносить дискомфорт – система автоматически определяет хранение приложений и файлов.\n\nРазрешение экрана составляет 1280х720 пикселей. Из интересных особенностей нельзя не отметить возможность установки уровня температуры телефона по своему вкусу.\n\nНовейшая версия ОС Android дает смартфону ряд полезнейших надстроек. Это и расширенные возможности конфиденциальности, в том числе и для приложений, экономия заряда батареи, удобнейший интерфейс.\n\nСреди дополнительных функций выделяется HTC Blinkfeed, которое агрегирует все ленты из соц. сетей, новостные сводки, погоду и другие данные. Вызывается функция прокруткой влево с рабочего стола.\n\nСмартфон гибко настраивается под вкус владельца благодаря магазину тем Sense. Там можно как подобрать уже готовые решения, так и изготовить что-то свое.\nНа борту Desire 530 встроена 8 мегапиксельная камера с диафрагмой f/2,4. Она отлично справляется с задачей при нормальном освещении, фото получаются четкие, насыщенные, яркие, со сбалансированной цветовой гаммой.', 0),
(9, 'HTC Desire ', '90.000', 'HTCdesire530.jpg', 'В качестве уникальной фишки смартфона выступает его дизайн с эффектом брызг. Он обеспечивает уникальность каждого отдельно взятого экземпляра. Это достигается путем нанесения краски на крышку с различным давлением и плотностью.\r\nHTC Desire 530 старается походить на своего старшего брата – HTC Desire Eye, который занял место среди флагманов компании.\r\n\r\nВ числе особенностей строения корпуса модели можно также отметить возможность прикрепить ремешек. Такая функция позволяет обезопасить использование гаджета на шумных и людных мероприятиях, сводя риск падения или утери к минимуму.\r\n\r\nВ качестве материала для изготовления телефона был выбран легкий и крепкий пластик.\r\n\r\nДиагональ экрана составляет 5 дюймо\r\nСлот microSD поддерживает карты дополнительной памяти до 200 гб. Благодаря продвинутости операционной системы, наличие внутренней и SD памяти в смартфоне не станет приносить дискомфорт – система автоматически определяет хранение приложений и файлов.\r\n\r\nРазрешение экрана составляет 1280х720 пикселей. Из интересных особенностей нельзя не отметить возможность установки уровня температуры телефона по своему вкусу.\r\n\r\nНовейшая версия ОС Android дает смартфону ряд полезнейших надстроек. Это и расширенные возможности конфиденциальности, в том числе и для приложений, экономия заряда батареи, удобнейший интерфейс.\r\n\r\nСреди дополнительных функций выделяется HTC Blinkfeed, которое агрегирует все ленты из соц. сетей, новостные сводки, погоду и другие данные. Вызывается функция прокруткой влево с рабочего стола.\r\n\r\nСмартфон гибко настраивается под вкус владельца благодаря магазину тем Sense. Там можно как подобрать уже готовые решения, так и изготовить что-то свое.\r\nНа борту Desire 530 встроена 8 мегапиксельная камера с диафрагмой f/2,4. Она отлично справляется с задачей при нормальном освещении, фото получаются четкие, насыщенные, яркие, со сбалансированной цветовой гаммой.', 1),
(10, 'Sumsung', '150.000 ', 'SumsungGalaxyNoteEdge.jpg', 'best phone', 0),
(11, 'galaxys2', '140.000', 'SumsungGalaxyS3.jpeg', 'beautiful phone ', 0),
(12, 'htc', '140.000', 'htc_desire_530_small.jpg', 'hsoidvgcheiohcviosehcfisd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('female','male') NOT NULL DEFAULT 'male',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `birthday`, `gender`, `username`, `password`) VALUES
(9, '', '', '', '0000-00-00', '', 'hayk0096', 'y9y'),
(10, 'Hayk', 'Margaryan', 'haykmargaryan0096@gmail.com', '1996-10-21', 'male', 'hayk0096', '0096'),
(11, 'Hayk', 'Margaryan', 'haykmargaryan0096@gmail.com', '1996-10-21', 'male', 'hayk0096', '0096'),
(12, 'Hayk', 'Margaryan', 'luiza.hayk@gmail.com', '2013-05-07', 'male', 'haykhayk', '123'),
(13, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(14, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(15, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(16, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(17, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(18, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(19, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(20, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(21, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(22, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(23, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(24, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995'),
(25, 'Lyov', 'Margaryan', 'lyovmargaryan9595@gmail.com', '1995-05-28', 'male', 'lyov1995', '1995');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
