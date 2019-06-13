-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 13 2019 г., 10:52
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simple-store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `title`, `description`, `image`, `price`) VALUES
(1, 'Бензотриммер PATRIOT PT 545', 'Бензотриммер PATRIOT PT 545 оснащен двигателем мощностью 2.5 л.с. и способен скашивать жесткую траву на участке большой площадью. Доступ к воздушному фильтру облегчен. Велосипедная рукоятка регулируется по высоте и обеспечивает лучший контроль над инструментом. Топливный бак прозрачен, что позволяет отслеживать расход топлива.', 'https://vladimir.vseinstrumenti.ru/res/content/cards/15034429/1559118846025.jpg?v=1559118916221', 6990),
(2, 'Перфоратор Makita HR 2470', 'Перфоратор Makita HR 2470 имеет двойную защитную изоляцию. Он может работать как отбойный молоток и как дрель. При обратном вращении (реверс), двигатель работает с той же скоростью и крутящим моментом.', 'https://cdn.vseinstrumenti.ru/images/goods/instrument/perforatory/5195/1200x800/1270698.jpg', 7449),
(3, 'Газонокосилка Ryobi RLM13E33S 5133002343', 'Газонокосилка Ryobi RLM13E33S 5133002343 используется для ухода и стрижки газона. Подходит для небольших по площади участков. Агрегат отличается экологичностью, электрической безопасностью и легкостью обслуживания. Складная конструкция обеспечивает компактность при хранении и транспортировки косилки. Режим работы - это стрижка и сбор срезанной травы в специальный контейнер. Возможна регулировка рукоятки под рост пользователя.', 'https://cdn.vseinstrumenti.ru/images/goods/sadovaya-tehnika/gazonokosilki/724410/1200x800/1181221.jpg', 5490),
(4, 'Угловая шлифмашина DeWALT DWE8110S', 'Угловая шлифмашина DeWALT DWE8110S применяется для шлифования и зачистки поверхностей, а также для резания деталей из различных материалов. Система блокировки шпинделя значительно упрощает процесс смены рабочих насадок и делает его более безопасным.\r\nДанная информация скопирована со страницы: https://vladimir.vseinstrumenti.ru/instrument/shlifmashiny/bolgarka-ushm/dewalt/dwe8110s/', 'https://cdn.vseinstrumenti.ru/images/goods/instrument/shlifmashiny/860864/1200x800/1326863.jpg', 2990),
(5, 'Защитные открытые очки РОСОМЗ О35 ВИЗИОН PL 13511', 'Защитные открытые очки РОСОМЗ О35 ВИЗИОН PL 13511 универсального применения не дают искажений и подходят для длительного ношения. Изготовлены из прозрачного материала, обладающего ударопрочностью. Защищают глаза от воздействия ультрафиолетовых лучей, брызг жидкостей и травм. Особенности конструкции данных очков: увеличенное панорамное стекло и широкий заушник.', 'https://cdn.vseinstrumenti.ru/images/goods/spetsodezhda/siz/714579/1200x800/1469189.jpg', 94),
(6, 'Аккумуляторная отвертка Bosch GO 0.601.9H2.020', 'Аккумуляторная отвертка Bosch GO 0.601.9H2.020 пригодится при сборке и монтаже мебели, установке подвесных потолков, при регулировании дверной фурнитуры. Заворачивание шурупов производится одним нажатием кнопки (Push & Go).', 'https://cdn.vseinstrumenti.ru/images/goods/instrument/akkumulyatornyj/905268/1200x800/1481114.jpg', 2569),
(7, 'Аккумуляторный винтоверт Metabo PowerMaxx BS Basic 600080500', 'Аккумуляторный винтоверт Metabo PowerMaxx BS Basic 600080500 имеет очень короткую конструкцию для универсального применения. Встроенная рабочая подсветка предусмотрена для работы при плохом освещении. Специальная скоба позволяет носить инструмент на ремне.', 'https://cdn.vseinstrumenti.ru/images/goods/instrument/shurupoverty/699938/1200x800/987317.jpg', 5082),
(8, 'Смазка для редукторов Arsenal PATRIOT AR-417', 'Смазка Arsenal PATRIOT AR-417 предназначена для высокооборотных редукторов, также в закрытых коробках передач с цилиндрическими и коническими редукторами. Благодаря своей текучести смазка распространяется равномерно по всем местам даже при малых объемах. Она значительно увеличивает срок эксплуатации и защищает от коррозии. В состав смазки входит дисульфид молибдена.', 'https://cdn.vseinstrumenti.ru/images/goods/rashodnie-materialy/dlya-avtoservisnogo-oborudovaniya/513398/1200x800/1394974.jpg', 185);

-- --------------------------------------------------------

--
-- Структура таблицы `goods_in_order`
--

CREATE TABLE `goods_in_order` (
  `id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods_in_order`
--

INSERT INTO `goods_in_order` (`id`, `good_id`, `order_id`) VALUES
(1, 3, 1),
(2, 7, 1),
(3, 3, 4),
(4, 3, 5),
(5, 1, 5),
(6, 2, 5),
(7, 6, 5),
(8, 2, 7),
(9, 2, 8),
(10, 2, 9),
(11, 2, 10),
(12, 2, 11),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 3, 17),
(19, 2, 18),
(20, 3, 18),
(21, 4, 18),
(22, 2, 19),
(23, 3, 19),
(24, 4, 19),
(25, 6, 19),
(26, 2, 20),
(27, 3, 20),
(28, 4, 20),
(29, 6, 20),
(30, 2, 21),
(31, 3, 21),
(32, 4, 21),
(33, 6, 21),
(34, 8, 21),
(35, 2, 22),
(36, 3, 22),
(37, 4, 22),
(38, 6, 22),
(39, 8, 22),
(40, 7, 22),
(41, 2, 23),
(42, 3, 23),
(43, 4, 23),
(44, 6, 23),
(45, 8, 23),
(46, 7, 23),
(47, 2, 24),
(48, 3, 24),
(49, 4, 24),
(50, 6, 24),
(51, 8, 24),
(52, 7, 24),
(53, 2, 25),
(54, 3, 25),
(55, 4, 25),
(56, 6, 25),
(57, 8, 25),
(58, 7, 25),
(59, 2, 26),
(60, 3, 26),
(61, 4, 26),
(62, 6, 26),
(63, 8, 26),
(64, 7, 26),
(65, 2, 27),
(66, 3, 27),
(67, 4, 27),
(68, 6, 27),
(69, 8, 27),
(70, 7, 27),
(71, 2, 28),
(72, 3, 28),
(73, 4, 28),
(74, 6, 28),
(75, 8, 28),
(76, 7, 28),
(77, 2, 29),
(78, 3, 29),
(79, 4, 29),
(80, 6, 29),
(81, 8, 29),
(82, 7, 29),
(83, 1, 29),
(84, 2, 30),
(85, 3, 30),
(86, 4, 30),
(87, 6, 30),
(88, 8, 30),
(89, 7, 30),
(90, 1, 30),
(91, 2, 31),
(92, 3, 31),
(93, 4, 31),
(94, 6, 31),
(95, 8, 31),
(96, 7, 31),
(97, 1, 31),
(98, 2, 32),
(99, 2, 33),
(100, 2, 34),
(101, 2, 35),
(102, 3, 35),
(103, 4, 35),
(104, 7, 35),
(105, 6, 35),
(106, 2, 36),
(107, 3, 36),
(108, 4, 36),
(109, 7, 36),
(110, 6, 36),
(111, 2, 37),
(112, 3, 37),
(113, 4, 37),
(114, 7, 37),
(115, 6, 37),
(116, 1, 37),
(117, 2, 38),
(118, 3, 38);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `idUser`, `status`) VALUES
(1, 0, 'новый'),
(2, 0, 'новый'),
(3, 1, 'Новый'),
(4, 1, 'Новый'),
(5, 1, 'Новый'),
(6, 1, 'Новый'),
(7, 1, 'Новый'),
(8, 1, 'Новый'),
(9, 1, 'Новый'),
(10, 1, 'Новый'),
(11, 1, 'Новый'),
(12, 1, 'Новый'),
(13, 1, 'Новый'),
(14, 1, 'Новый'),
(15, 1, 'Новый'),
(16, 1, 'Оплачен'),
(17, 1, 'Оплачен'),
(18, 1, 'Оплачен'),
(19, 1, 'Оплачен'),
(20, 1, 'Оплачен'),
(21, 1, 'Оплачен'),
(22, 1, 'Оплачен'),
(23, 1, 'Оплачен'),
(24, 1, 'Оплачен'),
(25, 1, 'Оплачен'),
(26, 1, 'Оплачен'),
(27, 1, 'Оплачен'),
(28, 1, 'Оплачен'),
(29, 1, 'Новый'),
(30, 1, 'Новый'),
(31, 1, 'Новый'),
(32, 1, 'Новый'),
(33, 1, 'Новый'),
(34, 1, 'Новый'),
(35, 1, 'Оплачен'),
(36, 1, 'Новый'),
(37, 1, 'Оплачен'),
(38, 1, 'Оплачен');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods_in_order`
--
ALTER TABLE `goods_in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `good_id` (`good_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `goods_in_order`
--
ALTER TABLE `goods_in_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `goods_in_order`
--
ALTER TABLE `goods_in_order`
  ADD CONSTRAINT `goods_in_order_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `goods_in_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
