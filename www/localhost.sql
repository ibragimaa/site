-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 11 2018 г., 09:45
-- Версия сервера: 5.7.21
-- Версия PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `itrand`
--
CREATE DATABASE IF NOT EXISTS `itrand` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `itrand`;

-- --------------------------------------------------------

--
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`id`, `course_name`, `sort_order`, `status`, `image`) VALUES
(1, 'Техникалық анализ негіздері', 1, 1, 'tech.jpg'),
(2, 'Эллиот толқындары', 2, 1, 'elliot.jpg'),
(3, 'Ганн теориясын қолдану ', 3, 1, 'gann.jpg'),
(4, 'Болинджер таспалары', 4, 1, 'bolinger.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_new` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lesson`
--

INSERT INTO `lesson` (`id`, `name`, `course_id`, `availability`, `image`, `description`, `status`, `is_new`, `text`) VALUES
(1, 'Кіріспе', 1, 1, 'lesson.jpg', 'Техникалық анализге кіріспе..', 1, 0, '\r\n\r\nNullam a tincidunt orci. In aliquam, erat ac vestibulum mattis, felis dolor ultrices magna, at finibus lorem ante non velit. Curabitur orci est, tincidunt a pellentesque ac, egestas ut ante. Nullam convallis nulla sed diam ultrices, et bibendum ex posuere. Donec imperdiet consequat nisi, quis sollicitudin tellus semper id. Integer eget quam sit amet sem pellentesque euismod. Suspendisse et porta dolor, vestibulum tincidunt ante. Aenean non velit nec purus gravida euismod id sed augue. Maecenas nisi purus, cursus sagittis felis eget, ullamcorper auctor nisi. Sed accumsan fringilla euismod. Duis mattis arcu eu pretium blandit. Sed tempor lacus a ultrices auctor. Quisque aliquam sem a pharetra aliquet.\r\n\r\nDonec pharetra, erat nec facilisis lobortis, arcu quam faucibus felis, in efficitur leo velit vitae enim. Morbi condimentum est ut elit tempus, at congue libero placerat. Etiam purus urna, blandit at nisl vel, maximus vehicula nisi. Mauris maximus luctus eros in pellentesque. In eu eros auctor dolor auctor pretium. Vivamus sagittis, mi imperdiet ornare pretium, tellus augue blandit dui, at dapibus nulla magna nec ante. Phasellus at consectetur tellus. Vestibulum in sodales odio, et tristique dolor. Mauris efficitur euismod hendrerit. Donec bibendum id nisi vitae consequat. Mauris vitae mauris ac augue euismod efficitur. Aliquam imperdiet diam nec volutpat dignissim.\r\n\r\nPellentesque laoreet massa nec nunc pharetra, vel varius tortor facilisis. In at tellus nulla. Nullam faucibus sit amet libero lacinia volutpat. Etiam blandit auctor magna, et luctus odio fermentum ac. Integer eu semper ante, quis placerat nisi. Sed dapibus hendrerit tortor, non pellentesque turpis molestie vel. Nulla hendrerit sapien aliquam lectus elementum finibus. Proin sed lacus vel massa facilisis congue. Sed interdum blandit nibh at dapibus. Nulla gravida feugiat facilisis. Nam eget sagittis diam, eget rutrum ante.\r\n\r\nNunc turpis sapien, elementum eget egestas quis, aliquam in neque. In a neque faucibus, volutpat felis et, gravida sem. Sed neque dolor, ornare eget dignissim eu, scelerisque sed tortor. Ut feugiat tellus non bibendum vulputate. Donec posuere, risus non vestibulum luctus, quam lacus tristique tortor, et scelerisque leo urna a augue. Suspendisse potenti. Quisque sodales gravida quam, sodales finibus purus. Pellentesque id venenatis erat, eget dapibus est. Nam varius nec nisi id tristique. Proin eget turpis metus. Nulla at tincidunt metus. Etiam semper ipsum nisi, sit amet sodales odio convallis sed. Donec euismod massa sed laoreet ornare. Donec pretium a lectus nec sollicitudin. Maecenas sagittis non libero nec laoreet. '),
(2, '\"Визуальді инвестициялау\" деген не?', 1, 1, 'lesson.jpg', '\"Визуальді инвестициялау\" және нарық анализі жайлы сабақ...', 1, 0, '\r\n\r\nNullam a tincidunt orci. In aliquam, erat ac vestibulum mattis, felis dolor ultrices magna, at finibus lorem ante non velit. Curabitur orci est, tincidunt a pellentesque ac, egestas ut ante. Nullam convallis nulla sed diam ultrices, et bibendum ex posuere. Donec imperdiet consequat nisi, quis sollicitudin tellus semper id. Integer eget quam sit amet sem pellentesque euismod. Suspendisse et porta dolor, vestibulum tincidunt ante. Aenean non velit nec purus gravida euismod id sed augue. Maecenas nisi purus, cursus sagittis felis eget, ullamcorper auctor nisi. Sed accumsan fringilla euismod. Duis mattis arcu eu pretium blandit. Sed tempor lacus a ultrices auctor. Quisque aliquam sem a pharetra aliquet.\r\n\r\nDonec pharetra, erat nec facilisis lobortis, arcu quam faucibus felis, in efficitur leo velit vitae enim. Morbi condimentum est ut elit tempus, at congue libero placerat. Etiam purus urna, blandit at nisl vel, maximus vehicula nisi. Mauris maximus luctus eros in pellentesque. In eu eros auctor dolor auctor pretium. Vivamus sagittis, mi imperdiet ornare pretium, tellus augue blandit dui, at dapibus nulla magna nec ante. Phasellus at consectetur tellus. Vestibulum in sodales odio, et tristique dolor. Mauris efficitur euismod hendrerit. Donec bibendum id nisi vitae consequat. Mauris vitae mauris ac augue euismod efficitur. Aliquam imperdiet diam nec volutpat dignissim.\r\n\r\nPellentesque laoreet massa nec nunc pharetra, vel varius tortor facilisis. In at tellus nulla. Nullam faucibus sit amet libero lacinia volutpat. Etiam blandit auctor magna, et luctus odio fermentum ac. Integer eu semper ante, quis placerat nisi. Sed dapibus hendrerit tortor, non pellentesque turpis molestie vel. Nulla hendrerit sapien aliquam lectus elementum finibus. Proin sed lacus vel massa facilisis congue. Sed interdum blandit nibh at dapibus. Nulla gravida feugiat facilisis. Nam eget sagittis diam, eget rutrum ante.\r\n\r\nNunc turpis sapien, elementum eget egestas quis, aliquam in neque. In a neque faucibus, volutpat felis et, gravida sem. Sed neque dolor, ornare eget dignissim eu, scelerisque sed tortor. Ut feugiat tellus non bibendum vulputate. Donec posuere, risus non vestibulum luctus, quam lacus tristique tortor, et scelerisque leo urna a augue. Suspendisse potenti. Quisque sodales gravida quam, sodales finibus purus. Pellentesque id venenatis erat, eget dapibus est. Nam varius nec nisi id tristique. Proin eget turpis metus. Nulla at tincidunt metus. Etiam semper ipsum nisi, sit amet sodales odio convallis sed. Donec euismod massa sed laoreet ornare. Donec pretium a lectus nec sollicitudin. Maecenas sagittis non libero nec laoreet. '),
(3, 'Тенденция', 1, 1, 'lesson.jpg', 'Тенденция - көзқарастағы немесе іс-қимылдағы бағыттылық, ұмтылыс...', 1, 0, '\r\n\r\nNullam a tincidunt orci. In aliquam, erat ac vestibulum mattis, felis dolor ultrices magna, at finibus lorem ante non velit. Curabitur orci est, tincidunt a pellentesque ac, egestas ut ante. Nullam convallis nulla sed diam ultrices, et bibendum ex posuere. Donec imperdiet consequat nisi, quis sollicitudin tellus semper id. Integer eget quam sit amet sem pellentesque euismod. Suspendisse et porta dolor, vestibulum tincidunt ante. Aenean non velit nec purus gravida euismod id sed augue. Maecenas nisi purus, cursus sagittis felis eget, ullamcorper auctor nisi. Sed accumsan fringilla euismod. Duis mattis arcu eu pretium blandit. Sed tempor lacus a ultrices auctor. Quisque aliquam sem a pharetra aliquet.\r\n\r\nDonec pharetra, erat nec facilisis lobortis, arcu quam faucibus felis, in efficitur leo velit vitae enim. Morbi condimentum est ut elit tempus, at congue libero placerat. Etiam purus urna, blandit at nisl vel, maximus vehicula nisi. Mauris maximus luctus eros in pellentesque. In eu eros auctor dolor auctor pretium. Vivamus sagittis, mi imperdiet ornare pretium, tellus augue blandit dui, at dapibus nulla magna nec ante. Phasellus at consectetur tellus. Vestibulum in sodales odio, et tristique dolor. Mauris efficitur euismod hendrerit. Donec bibendum id nisi vitae consequat. Mauris vitae mauris ac augue euismod efficitur. Aliquam imperdiet diam nec volutpat dignissim.\r\n\r\nPellentesque laoreet massa nec nunc pharetra, vel varius tortor facilisis. In at tellus nulla. Nullam faucibus sit amet libero lacinia volutpat. Etiam blandit auctor magna, et luctus odio fermentum ac. Integer eu semper ante, quis placerat nisi. Sed dapibus hendrerit tortor, non pellentesque turpis molestie vel. Nulla hendrerit sapien aliquam lectus elementum finibus. Proin sed lacus vel massa facilisis congue. Sed interdum blandit nibh at dapibus. Nulla gravida feugiat facilisis. Nam eget sagittis diam, eget rutrum ante.\r\n\r\nNunc turpis sapien, elementum eget egestas quis, aliquam in neque. In a neque faucibus, volutpat felis et, gravida sem. Sed neque dolor, ornare eget dignissim eu, scelerisque sed tortor. Ut feugiat tellus non bibendum vulputate. Donec posuere, risus non vestibulum luctus, quam lacus tristique tortor, et scelerisque leo urna a augue. Suspendisse potenti. Quisque sodales gravida quam, sodales finibus purus. Pellentesque id venenatis erat, eget dapibus est. Nam varius nec nisi id tristique. Proin eget turpis metus. Nulla at tincidunt metus. Etiam semper ipsum nisi, sit amet sodales odio convallis sed. Donec euismod massa sed laoreet ornare. Donec pretium a lectus nec sollicitudin. Maecenas sagittis non libero nec laoreet. '),
(4, 'Анықталмағандық көрінісі', 2, 1, 'lesson.jpg', 'График түрлері. Анықталмағандық фигуралары...', 1, 0, '\r\n\r\nNullam a tincidunt orci. In aliquam, erat ac vestibulum mattis, felis dolor ultrices magna, at finibus lorem ante non velit. Curabitur orci est, tincidunt a pellentesque ac, egestas ut ante. Nullam convallis nulla sed diam ultrices, et bibendum ex posuere. Donec imperdiet consequat nisi, quis sollicitudin tellus semper id. Integer eget quam sit amet sem pellentesque euismod. Suspendisse et porta dolor, vestibulum tincidunt ante. Aenean non velit nec purus gravida euismod id sed augue. Maecenas nisi purus, cursus sagittis felis eget, ullamcorper auctor nisi. Sed accumsan fringilla euismod. Duis mattis arcu eu pretium blandit. Sed tempor lacus a ultrices auctor. Quisque aliquam sem a pharetra aliquet.\r\n\r\nDonec pharetra, erat nec facilisis lobortis, arcu quam faucibus felis, in efficitur leo velit vitae enim. Morbi condimentum est ut elit tempus, at congue libero placerat. Etiam purus urna, blandit at nisl vel, maximus vehicula nisi. Mauris maximus luctus eros in pellentesque. In eu eros auctor dolor auctor pretium. Vivamus sagittis, mi imperdiet ornare pretium, tellus augue blandit dui, at dapibus nulla magna nec ante. Phasellus at consectetur tellus. Vestibulum in sodales odio, et tristique dolor. Mauris efficitur euismod hendrerit. Donec bibendum id nisi vitae consequat. Mauris vitae mauris ac augue euismod efficitur. Aliquam imperdiet diam nec volutpat dignissim.\r\n\r\nPellentesque laoreet massa nec nunc pharetra, vel varius tortor facilisis. In at tellus nulla. Nullam faucibus sit amet libero lacinia volutpat. Etiam blandit auctor magna, et luctus odio fermentum ac. Integer eu semper ante, quis placerat nisi. Sed dapibus hendrerit tortor, non pellentesque turpis molestie vel. Nulla hendrerit sapien aliquam lectus elementum finibus. Proin sed lacus vel massa facilisis congue. Sed interdum blandit nibh at dapibus. Nulla gravida feugiat facilisis. Nam eget sagittis diam, eget rutrum ante.\r\n\r\nNunc turpis sapien, elementum eget egestas quis, aliquam in neque. In a neque faucibus, volutpat felis et, gravida sem. Sed neque dolor, ornare eget dignissim eu, scelerisque sed tortor. Ut feugiat tellus non bibendum vulputate. Donec posuere, risus non vestibulum luctus, quam lacus tristique tortor, et scelerisque leo urna a augue. Suspendisse potenti. Quisque sodales gravida quam, sodales finibus purus. Pellentesque id venenatis erat, eget dapibus est. Nam varius nec nisi id tristique. Proin eget turpis metus. Nulla at tincidunt metus. Etiam semper ipsum nisi, sit amet sodales odio convallis sed. Donec euismod massa sed laoreet ornare. Donec pretium a lectus nec sollicitudin. Maecenas sagittis non libero nec laoreet. '),
(5, 'Индикаторлар', 4, 1, 'lesson.jpg', 'Тенденция болған жағдайда сіздің ең жақын досыңыз...', 1, 0, '\r\n\r\nNullam a tincidunt orci. In aliquam, erat ac vestibulum mattis, felis dolor ultrices magna, at finibus lorem ante non velit. Curabitur orci est, tincidunt a pellentesque ac, egestas ut ante. Nullam convallis nulla sed diam ultrices, et bibendum ex posuere. Donec imperdiet consequat nisi, quis sollicitudin tellus semper id. Integer eget quam sit amet sem pellentesque euismod. Suspendisse et porta dolor, vestibulum tincidunt ante. Aenean non velit nec purus gravida euismod id sed augue. Maecenas nisi purus, cursus sagittis felis eget, ullamcorper auctor nisi. Sed accumsan fringilla euismod. Duis mattis arcu eu pretium blandit. Sed tempor lacus a ultrices auctor. Quisque aliquam sem a pharetra aliquet.\r\n\r\nDonec pharetra, erat nec facilisis lobortis, arcu quam faucibus felis, in efficitur leo velit vitae enim. Morbi condimentum est ut elit tempus, at congue libero placerat. Etiam purus urna, blandit at nisl vel, maximus vehicula nisi. Mauris maximus luctus eros in pellentesque. In eu eros auctor dolor auctor pretium. Vivamus sagittis, mi imperdiet ornare pretium, tellus augue blandit dui, at dapibus nulla magna nec ante. Phasellus at consectetur tellus. Vestibulum in sodales odio, et tristique dolor. Mauris efficitur euismod hendrerit. Donec bibendum id nisi vitae consequat. Mauris vitae mauris ac augue euismod efficitur. Aliquam imperdiet diam nec volutpat dignissim.\r\n\r\nPellentesque laoreet massa nec nunc pharetra, vel varius tortor facilisis. In at tellus nulla. Nullam faucibus sit amet libero lacinia volutpat. Etiam blandit auctor magna, et luctus odio fermentum ac. Integer eu semper ante, quis placerat nisi. Sed dapibus hendrerit tortor, non pellentesque turpis molestie vel. Nulla hendrerit sapien aliquam lectus elementum finibus. Proin sed lacus vel massa facilisis congue. Sed interdum blandit nibh at dapibus. Nulla gravida feugiat facilisis. Nam eget sagittis diam, eget rutrum ante.\r\n\r\nNunc turpis sapien, elementum eget egestas quis, aliquam in neque. In a neque faucibus, volutpat felis et, gravida sem. Sed neque dolor, ornare eget dignissim eu, scelerisque sed tortor. Ut feugiat tellus non bibendum vulputate. Donec posuere, risus non vestibulum luctus, quam lacus tristique tortor, et scelerisque leo urna a augue. Suspendisse potenti. Quisque sodales gravida quam, sodales finibus purus. Pellentesque id venenatis erat, eget dapibus est. Nam varius nec nisi id tristique. Proin eget turpis metus. Nulla at tincidunt metus. Etiam semper ipsum nisi, sit amet sodales odio convallis sed. Donec euismod massa sed laoreet ornare. Donec pretium a lectus nec sollicitudin. Maecenas sagittis non libero nec laoreet. ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `privileges` enum('student','teacher','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `password`, `email`, `privileges`) VALUES
(1, 'adilkhan', 'ibragim', 'b#N98uG@a', 'adik@mail.ru', 'admin'),
(3, 'Adilbek', 'Ibragim', '123456', 'adilbek@mail.ru', 'student'),
(4, 'Askar', 'Askarov', 'emc21998', 'askar@mail.ru', 'student'),
(5, 'Addd', 'Addd', '123456', 'ad@mail.ru', 'student');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- База данных: `phpshop`
--
CREATE DATABASE IF NOT EXISTS `phpshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phpshop`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Ноутбуки', 1, 1),
(14, 'Планшеты', 2, 1),
(15, 'Мониторы', 3, 1),
(16, 'Игровые компьютеры', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(34, 'Ноутбук Asus X200MA (X200MA-KX315D)', 13, 1839707, 395, 1, 'Asus', 'Экран 11.6\" (1366x768) HD LED, глянцевый / Intel Pentium N3530 (2.16 - 2.58 ГГц) / RAM 4 ГБ / HDD 750 ГБ / Intel HD Graphics / без ОД / Bluetooth 4.0 / Wi-Fi / LAN / веб-камера / без ОС / 1.24 кг / синий', 0, 0, 1),
(35, 'Ноутбук HP Stream 11-d050nr', 13, 2343847, 305, 0, 'Hewlett Packard', 'Экран 11.6” (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / eMMC 32 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 + MS Office 365 / 1.28 кг / синий', 1, 1, 1),
(36, 'Ноутбук Asus X200MA White ', 13, 2028027, 270, 1, 'Asus', 'Экран 11.6\" (1366x768) HD LED, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / Bluetooth 4.0 / Wi-Fi / LAN / веб-камера / без ОС / 1.24 кг / белый', 0, 1, 1),
(37, 'Ноутбук Acer Aspire E3-112-C65X', 13, 2019487, 325, 1, 'Acer', 'Экран 11.6\'\' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 1.29 кг / серебристый', 0, 1, 1),
(38, 'Ноутбук Acer TravelMate TMB115', 13, 1953212, 275, 1, 'Acer', 'Экран 11.6\'\' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / Linpus / 1.32 кг / черный', 0, 0, 1),
(39, 'Ноутбук Lenovo Flex 10', 13, 1602042, 370, 0, 'Lenovo', 'Экран 10.1\" (1366x768) HD LED, сенсорный, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 / 1.2 кг / черный', 0, 0, 1),
(40, 'Ноутбук Asus X751MA', 13, 2028367, 430, 1, 'Asus', 'Экран 17.3\" (1600х900) HD+ LED, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ / HDD 1 ТБ / Intel HD Graphics / DVD Super Multi / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / DOS / 2.6 кг / белый', 0, 1, 1),
(41, 'Samsung Galaxy Tab S 10.5 16GB', 14, 1129365, 780, 1, 'Samsung', 'Samsung Galaxy Tab S создан для того, чтобы сделать вашу жизнь лучше. Наслаждайтесь своим контентом с покрытием 94% цветов Adobe RGB и 100000:1 уровнем контрастности, который обеспечивается sAmoled экраном с функцией оптимизации под отображаемое изображение и окружение. Яркий 10.5” экран в ультратонком корпусе весом 467 г порадует вас высоким уровнем портативности. Работа станет проще вместе с Hancom Office и удаленным доступом к вашему ПК. E-Meeting и WebEx – отличные помощники для проведения встреч, когда вы находитесь вне офиса. Надежно храните ваши данные благодаря сканеру отпечатка пальцев.', 1, 1, 1),
(42, 'Samsung Galaxy Tab S 8.4 16GB', 14, 1128670, 640, 1, 'Samsung', 'Экран 8.4\" Super AMOLED (2560x1600) емкостный Multi-Touch / Samsung Exynos 5420 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Bluetooth 4.0 / Wi-Fi 802.11 a/b/g/n/ac / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 4.4.2 (KitKat) / 294 г / белый', 0, 0, 1),
(43, 'Gazer Tegra Note 7', 14, 683364, 210, 1, 'Gazer', 'Экран 7\" IPS (1280x800) емкостный Multi-Touch / NVIDIA Tegra 4 (1.8 ГГц) / RAM 1 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 0.3 Мп / GPS / ГЛОНАСС / Android 4.4.2 (KitKat) / вес 320 г', 0, 0, 1),
(44, 'Монитор 23\" Dell E2314H Black', 15, 355025, 175, 1, 'Dell', 'С расширением Full HD Вы сможете рассмотреть мельчайшие детали. Dell E2314H предоставит Вам резкое и четкое изображение, с которым любая работа будет в удовольствие. Full HD 1920 x 1080 при 60 Гц разрешение (макс.)', 0, 0, 1),
(45, 'Компьютер Everest Game ', 16, 1563832, 1320, 1, 'Everest', 'Everest Game 9085 — это компьютеры премимум класса, собранные на базе эксклюзивных компонентов, тщательно подобранных и протестированных лучшими специалистами нашей компании. Это топовый сегмент систем, который отвечает наилучшим характеристикам показателей качества и производительности.', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(45, 'fsdfsd', '1', '123123123', 4, '2015-05-14 09:54:45', '{\"1\":1,\"2\":1,\"3\":2}', 3),
(46, 'САША1', 'g3424242342', '', 4, '2015-05-18 15:34:42', '{\"44\":3,\"43\":3}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Александр', 'alex@mail.com', '111111', ''),
(4, 'Виктор Зинченко', 'zinchenko.us@gmail.com', '123456', 'root'),
(5, 'Сергей', 'serg@mail.com', '111111', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- База данных: `php_base`
--
CREATE DATABASE IF NOT EXISTS `php_base` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `php_base`;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-12 07:05:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:05', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
(10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-03-11 18:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- База данных: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Структура таблицы `testdb_lessons`
--

CREATE TABLE `testdb_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `testdb_lessons`
--

INSERT INTO `testdb_lessons` (`id`, `name`, `parent_id`) VALUES
(6, 'Техникалық анализ негіздері', 0),
(7, 'Эллиот толқындары', 0),
(8, 'Ганн теориясын сауда-саттық жүйелерінде қолдану', 0),
(9, 'Боллинджер таспалары', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `testdb_post`
--

CREATE TABLE `testdb_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `id_categories` tinyint(4) NOT NULL,
  `img` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Структура таблицы `testdb_priv`
--

CREATE TABLE `testdb_priv` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `testdb_priv`
--

INSERT INTO `testdb_priv` (`id`, `name`) VALUES
(1, 'ADD_POST'),
(2, 'MODER_POST'),
(3, 'DEL_POST'),
(4, 'EDIT_POST'),
(5, 'ADD_LES'),
(6, 'WIEW_ADMIN');

-- --------------------------------------------------------

--
-- Структура таблицы `testdb_role`
--

CREATE TABLE `testdb_role` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `testdb_role`
--

INSERT INTO `testdb_role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'moderator'),
(3, 'user'),
(4, 'ban');

-- --------------------------------------------------------

--
-- Структура таблицы `testdb_role_riv`
--

CREATE TABLE `testdb_role_riv` (
  `id_role` tinyint(4) NOT NULL,
  `id_priv` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `testdb_role_riv`
--

INSERT INTO `testdb_role_riv` (`id_role`, `id_priv`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `testdb_user`
--

CREATE TABLE `testdb_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `sess` varchar(32) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `id_role` tinyint(4) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `testdb_lessons`
--
ALTER TABLE `testdb_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testdb_post`
--
ALTER TABLE `testdb_post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testdb_priv`
--
ALTER TABLE `testdb_priv`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testdb_role`
--
ALTER TABLE `testdb_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testdb_user`
--
ALTER TABLE `testdb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `testdb_lessons`
--
ALTER TABLE `testdb_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `testdb_post`
--
ALTER TABLE `testdb_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `testdb_priv`
--
ALTER TABLE `testdb_priv`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `testdb_role`
--
ALTER TABLE `testdb_role`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `testdb_user`
--
ALTER TABLE `testdb_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
