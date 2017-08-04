-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- Хост: gibkatrub.mysql
-- Время создания: Фев 11 2011 г., 10:23
-- Версия сервера: 5.1.41
-- Версия PHP: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `gibkatrub_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 11:26
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `block` varchar(31) DEFAULT NULL,
  `target` varchar(63) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `section` (`section`),
  KEY `block` (`block`),
  KEY `target` (`target`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Content blocks' AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `blocks`
--


-- --------------------------------------------------------

--
-- Структура таблицы `goodscatalog_brands`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 11:26
--

DROP TABLE IF EXISTS `goodscatalog_brands`;
CREATE TABLE IF NOT EXISTS `goodscatalog_brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Активность',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Название',
  `description` longtext NOT NULL COMMENT 'Описание',
  `ext` varchar(4) NOT NULL DEFAULT '' COMMENT 'Расширение файла логотипа',
  PRIMARY KEY (`id`),
  KEY `admin_list` (`title`),
  KEY `client_list` (`active`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `goodscatalog_brands`
--


-- --------------------------------------------------------

--
-- Структура таблицы `goodscatalog_goods`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 13:59
--

DROP TABLE IF EXISTS `goodscatalog_goods`;
CREATE TABLE IF NOT EXISTS `goodscatalog_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `section` int(10) unsigned NOT NULL COMMENT 'Привязка к разделу',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Активность',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Порядковый номер',
  `article` varchar(255) NOT NULL DEFAULT '' COMMENT 'Артикул',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Название',
  `about` text NOT NULL COMMENT 'Краткое описание',
  `description` longtext NOT NULL COMMENT 'Описание',
  `cost` float NOT NULL DEFAULT '0' COMMENT 'Цена',
  `ext` varchar(4) NOT NULL DEFAULT '' COMMENT 'Расширение файла основной фотографии',
  `special` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Спецпредложение',
  `brand` int(10) unsigned DEFAULT NULL COMMENT 'Привязка к бренду',
  PRIMARY KEY (`id`),
  KEY `admin_list` (`section`,`position`),
  KEY `client_list` (`active`,`section`,`position`),
  KEY `admin_special` (`special`),
  KEY `client_special` (`active`,`special`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `goodscatalog_goods`
--

INSERT INTO `goodscatalog_goods` (`id`, `section`, `active`, `position`, `article`, `title`, `about`, `description`, `cost`, `ext`, `special`, `brand`) VALUES
(1, 2, 1, 1, '', 'Полотенцесушитель', 'ввав', 'авава', 0, '', 0, 0),
(2, 12, 1, 1, '4586', 'СИГМА 600х612', 'Модели СИГМА спроектированы с учетом полноценной замены широко распространенных М и П – образных полотенцесушителей. Межцентровое расстояние этих моделей полностью соответствует устаревшим моделям М и П. Ниже представлены типоразмеры водяных и электрических полотенцесушителей Сигма \r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n<p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Модели СИГМА спроектированы с учетом полноценной замены широко распространенных М и П – образных полотенцесушителей. Межцентровое расстояние этих моделей полностью соответствует устаревшим моделям М и П. Ниже представлены типоразмеры водяных и электрических полотенцесушителей Сигма \r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n<p><STRONG>Мощность - 280 Вт</STRONG></p', 6350, 'jpg', 0, 0),
(3, 12, 1, 3, '4588', 'Сигма 320х612', 'Модели СИГМА спроектированы с учетом полноценной замены широко распространенных М и П – образных полотенцесушителей. Межцентровое расстояние этих моделей полностью соответствует устаревшим моделям М и П. Ниже представлены типоразмеры водяных и электрических полотенцесушителей Сигма.\r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) - 352х612х95 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 320 мм</STRONG></p>\r\n<p><STRONG>Мощность - 240 Вт</STRONG></p>', 'Модели СИГМА спроектированы с учетом полноценной замены широко распространенных М и П – образных полотенцесушителей. Межцентровое расстояние этих моделей полностью соответствует устаревшим моделям М и П. Ниже представлены типоразмеры водяных и электрических полотенцесушителей Сигма. \r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) - 352х612х95 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 320 мм</STRONG></p>\r\n<p><STRONG>Мощность - 240 Вт</STRONG><', 4900, 'jpg', 0, 0),
(4, 12, 1, 2, '4587', 'СИГМА 500х612', 'Модели СИГМА спроектированы с учетом полноценной замены широко распространенных М и П – образных полотенцесушителей. Межцентровое расстояние этих моделей полностью соответствует устаревшим моделям М и П. Ниже представлены типоразмеры водяных и электрических полотенцесушителей Сигма \r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) -  532х612х105 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 500 мм</STRONG></p>\r\n<p><STRONG>Мощность - 260 Вт</STRONG></p>', 'Модели СИГМА спроектированы с учетом полноценной замены широко распространенных М и П – образных полотенцесушителей. Межцентровое расстояние этих моделей полностью соответствует устаревшим моделям М и П. Ниже представлены типоразмеры водяных и электрических полотенцесушителей Сигма \r\n\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) -  532х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 500 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 260 Вт</STRONG><', 6300, 'jpg', 0, 0),
(5, 10, 1, 1, '1211', 'Полотенцесушитель U образный', 'Простые полотенцесушители с межцентровыми  растояниями 320 мм.\r\nПредназначены для сушки текстильных изделий и обогрева  ванных комнат. Подсоединяется к системам ГСВ (горячего водоснабжения)  и отопления. \r\nИзготовлены из нержевеющей стали марки 12Х18Н10 по ГОСТ 9941-81\r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) - 300х540х80 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 330 мм</STRONG></p>\r\n<p><STRONG>Диаметр трубы -26мм</STRONG></p>\r\n \r\n', 'Простые полотенцесушители с межцентровыми  растояниями 320 мм.\r\nПредназначены для сушки текстильных изделий и обогрева  ванных комнат. Подсоединяется к системам ГСВ (горячего водоснабжения)  и отопления. \r\nИзготовлены из нержевеющей стали марки 12Х18Н10 по ГОСТ 9941-81\r\n\r\n<p><STRONG>Габаритные   размеры (ВхШхГ) - 300х540х80 мм</STRONG></p>\r\n<p><STRONG>Межцентровое расстояние - 330 мм</STRONG></p>\r\n<p><STRONG>Диаметр трубы -26мм</STRONG></p', 480, 'jpg', 0, 0),
(6, 11, 1, 1, '1245', 'М-образные полотенцесушители', 'Простые полотенцесушители с межцентровыми растояниями 500 и 600 мм.\r\nПредназначены для сушки текстильных изделий и обогрева  ванных комнат. \r\nПодсоединяется к системам   ГСВ  (горячего водоснабжения)  и отопления.\r\nИзготовлены из нержевеющей стали марки 12Х18Н10 по   ГОСТ 9941-81.\r\n\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Простые полотенцесушители с межцентровыми растояниями 500 и 600 мм.\r\nПредназначены для сушки текстильных изделий и обогрева  ванных комнат. \r\nПодсоединяется к системам   ГСВ  (горячего водоснабжения)  и отопления.\r\nИзготовлены из нержевеющей стали марки 12Х18Н10 по   ГОСТ 9941-81.\r\n\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></', 1250, 'jpg', 0, 0),
(7, 14, 1, 1, '7777', 'Дельта (К-7)', 'Полотенцесушитель "лесенка" с семью выгнутыми горизонтальными элементами расположенными группами в порядке 2/3/2           \r\n \r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Полотенцесушитель "лесенка" с семью выгнутыми горизонтальными элементами расположенными группами в порядке 2/3/2           \r\n \r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>p', 7700, 'jpg', 0, 0),
(8, 14, 1, 2, '78998', 'Дельта (К-10)', 'Полотенцесушитель "лесенка" с десятью выгнутыми горизонтальными элементами расположенными группами в порядке: 2/3/3/2\r\n\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Полотенцесушитель "лесенка" с десятью выгнутыми горизонтальными элементами расположенными группами в порядке: 2/3/3/2\r\n\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p', 9000, 'jpg', 0, 0),
(9, 14, 1, 3, '453463', 'Дельта (К-11)', 'Полотенцесушитель "лесенка" с одиннадцатью выгнутыми горизонтальными элементами расположенными группами в порядке: 3/5/3/\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Полотенцесушитель "лесенка" с одиннадцатью выгнутыми горизонтальными элементами расположенными группами в порядке: 3/5/3/\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></P', 9000, 'jpg', 0, 0),
(10, 14, 1, 4, '6767567', ' Дельта (К-12)', 'Полотенцесушитель "лесенка" с одиннадцатью выгнутыми горизонтальными элементами расположенными группами в порядке: 2/3/2/3/2\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></P>', 'Полотенцесушитель "лесенка" с одиннадцатью выгнутыми горизонтальными элементами расположенными группами в порядке: 2/3/2/3/2\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></P', 10300, 'jpg', 0, 0),
(11, 14, 1, 5, '7568768', 'Дельта (К-19)', 'Полотенцесушитель "лесенка" с девятнадцатью выгнутыми горизонтальными элементами расположенными группами в порядке: 3/5/3/5/3\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Полотенцесушитель "лесенка" с девятнадцатью выгнутыми горизонтальными элементами расположенными группами в порядке: 3/5/3/5/3\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p', 15900, 'jpg', 0, 0),
(12, 14, 1, 6, '8956', 'Дельта (К-9-500)', 'Полотенцесушитель "лесенка" с девятью выгнутыми горизонтальными элементами расположенными группамив порядке:3/3/3,с увеличенным межцентровым расстоянием\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Полотенцесушитель "лесенка" с девятью выгнутыми горизонтальными элементами расположенными группамив порядке:3/3/3,с увеличенным межцентровым расстоянием\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p', 8800, 'jpg', 0, 0),
(13, 13, 1, 1, '2312', 'Бета (500х500)', 'Новая модель Бета выполнена в лучших традициях семейства ТВЕК, она предназначена для замены широко распространенных «М» и «П» - образных полотенцесушителей. В отличие от незамысловатых форм М и П – образных, модель Бета имеет уникальную конструкцию и оригинальный дизайн при идентичном межцентровом расстоянии. Модель Бета состоит из трех основных секций и двух коллекторов, которые имеют дополнительные полочки для увеличения возможности функционального использования полотенцесушителя. Ниже представлены 2 типоразмера модели Бета в водяном исполнении.\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Новая модель Бета выполнена в лучших традициях семейства ТВЕК, она предназначена для замены широко распространенных «М» и «П» - образных полотенцесушителей. В отличие от незамысловатых форм М и П – образных, модель Бета имеет уникальную конструкцию и оригинальный дизайн при идентичном межцентровом расстоянии. Модель Бета состоит из трех основных секций и двух коллекторов, которые имеют дополнительные полочки для увеличения возможности функционального использования полотенцесушителя. Ниже представлены 2 типоразмера модели Бета в водяном исполнении.\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p', 1400, 'jpg', 0, 0),
(14, 13, 1, 2, '31232', 'Бета (600х500) ', 'Новая модель Бета выполнена в лучших традициях семейства ТВЕК, она предназначена для замены широко распространенных «М» и «П» - образных полотенцесушителей. В отличие от незамысловатых форм М и П – образных, модель Бета имеет уникальную конструкцию и оригинальный дизайн при идентичном межцентровом расстоянии. Модель Бета состоит из трех основных секций и двух коллекторов, которые имеют дополнительные полочки для увеличения возможности функционального использования полотенцесушителя. Ниже представлены 2 типоразмера модели Бета в водяном исполнении.\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p>', 'Новая модель Бета выполнена в лучших традициях семейства ТВЕК, она предназначена для замены широко распространенных «М» и «П» - образных полотенцесушителей. В отличие от незамысловатых форм М и П – образных, модель Бета имеет уникальную конструкцию и оригинальный дизайн при идентичном межцентровом расстоянии. Модель Бета состоит из трех основных секций и двух коллекторов, которые имеют дополнительные полочки для увеличения возможности функционального использования полотенцесушителя. Ниже представлены 2 типоразмера модели Бета в водяном исполнении.\r\n            <p><STRONG>Габаритные   размеры (ВхШхГ) - 632х612х105 мм</STRONG></p>\r\n            <p><STRONG>Межцентровое расстояние - 600 мм</STRONG></p>\r\n            <p><STRONG>Мощность - 280 Вт</STRONG></p', 10750, 'jpg', 0, 0),
(15, 6, 1, 1, '435435', 'Стол обеденный', 'ыфвфывфы', '<p>ыфвфывфывф фыв</p', 4855, 'jpg', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `goodscatalog_photos`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 14:29
--

DROP TABLE IF EXISTS `goodscatalog_photos`;
CREATE TABLE IF NOT EXISTS `goodscatalog_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Активность',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Порядковый номер',
  `good` int(10) unsigned DEFAULT '0' COMMENT 'Привязка к товару',
  `ext` varchar(4) NOT NULL DEFAULT '' COMMENT 'Расширение файла',
  PRIMARY KEY (`id`),
  KEY `admin_list` (`good`,`position`),
  KEY `client_list` (`active`,`good`,`position`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `goodscatalog_photos`
--

INSERT INTO `goodscatalog_photos` (`id`, `active`, `position`, `good`, `ext`) VALUES
(1, 0, 1, 15, 'jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 11:26
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(31) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `root` int(10) DEFAULT NULL,
  `rootLevel` int(10) unsigned DEFAULT '0',
  `expandLevelAuto` int(10) unsigned DEFAULT '0',
  `expandLevelMax` int(10) unsigned DEFAULT '0',
  `glue` varchar(255) DEFAULT '',
  `tmplList` text,
  `tmplItem` text,
  `tmplSpecial` text,
  `specialMode` tinyint(3) unsigned DEFAULT '0',
  `invisible` tinyint(1) unsigned DEFAULT '0',
  `counterReset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 COMMENT='Menu collection' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `caption`, `active`, `root`, `rootLevel`, `expandLevelAuto`, `expandLevelMax`, `glue`, `tmplList`, `tmplItem`, `tmplSpecial`, `specialMode`, `invisible`, `counterReset`) VALUES
(1, 'sitemenu', 'Верхнее меню сайта', 1, 0, 0, 0, 0, '', '<ul>\r\n	$(items)\r\n</ul>', '<li><a href="$(url)">$(caption)</a></li>', '<li class="selected"><a href="$(url)">$(caption)</a></li>\r\n', 1, 0, 0),
(2, 'product', 'Продукци', 1, 2, 0, 0, 0, '', '$(items)\r\n', '<li><a href="$(url)">$(caption)</a></li>', '<li><a href="$(url)">$(caption)</a></li>\r\n<li id="M1_L2_3">\r\n<ul class="l2">$(submenu)</ul>\r\n</li>', 2, 0, 0),
(3, 'process', 'меню в производстве', 1, 15, 0, 0, 0, '', '<ul>\r\n	$(items)\r\n</ul>', '<li style="padding-left:0"><a href="$(url)">$(caption)</a></li>', '<li class="selected" style="padding-left:0"><a href="$(url)">$(caption)</a></li>', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 11:26
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section` int(10) unsigned DEFAULT NULL,
  `posted` datetime DEFAULT NULL,
  `caption` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `preview` text NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 COMMENT='News' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `section`, `posted`, `caption`, `active`, `preview`, `text`) VALUES
(1, 3, '2011-01-29 17:01:22', 'Новость номер один', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.'),
(2, 3, '2011-01-29 17:01:59', 'Новость номер два', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 14:55
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `caption` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hint` text NOT NULL,
  `keywords` text NOT NULL,
  `position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT 'default',
  `content` longtext NOT NULL,
  `options` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `owner` (`owner`),
  KEY `position` (`position`),
  KEY `active` (`active`),
  KEY `access` (`access`),
  KEY `visible` (`visible`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `owner`, `title`, `caption`, `description`, `hint`, `keywords`, `position`, `active`, `access`, `visible`, `template`, `type`, `content`, `options`, `created`, `updated`) VALUES
(1, 'main', 0, 'О компании', 'О компании', '', 'Главная страница - О компании', '', 0, 1, 5, 1, 'index', 'html', '<div class="floatleft">\r\n<h5>Заголовок H5</h5>\r\n<h4>Заголовок H4</h4>\r\n<h3>Заголовок H3</h3>\r\n<h2>Заголовок H2</h2>\r\n<h1>Заголовок H1</h1>\r\n</div>\r\n<div class="floatleft" style="margin-left: 20px;">\r\n<h5>Заголовок H5</h5>\r\n<h4>Заголовок H4</h4>\r\n<h3 class="blue">Заголовок H3</h3>\r\n<h2 class="orange">Заголовок H2</h2>\r\n<h1 class="green">Заголовок H1</h1>\r\n</div>\r\n<div class="clear">&nbsp;</div>\r\n<p><img src="$(httpRoot)data/img_4.jpg" alt="1" width="70" height="70"></p>\r\n<p>Ни одно другое устройство не заточит ваш нож так быстро, как станок Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка. Для формирования новой режущей кромки на новом ноже или изрядно подпорченном старом &mdash; несколько минут Ни одно другое устройство не заточит ваш нож так быстро, как станок <strong><a href="#">Edgecraft</a></strong>. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка.</p>\r\n<p>Для формирования новой режущей кромки на новом ноже или изрядно подпорченном старом &mdash; несколько минут Ни одно другое устройство не заточит ваш нож так быстро, как станок Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка. Для формирования новой</p>\r\n<div class="clear">&nbsp;</div>\r\n<h3>Списки</h3>\r\n<ol class="floatleft">\r\n<li>Нумерованаый список</li>\r\n<li>Нумерованаый список</li>\r\n<li>Нумерованаый список</li>\r\n<li>Нумерованаый список</li>\r\n<li>Нумерованаый список</li>\r\n<li>Нумерованаый список</li>\r\n</ol>\r\n<ul class="floatleft">\r\n<li>Маркированный список</li>\r\n<li>Маркированный список</li>\r\n<li>Маркированный список</li>\r\n<li>Маркированный список</li>\r\n<li>Маркированный список</li>\r\n<li>Маркированный список</li>\r\n</ul>\r\n<ul class="floatleft circle">\r\n<li><a href="#">Маркированный список</a></li>\r\n<li><a href="#">Маркированный список</a></li>\r\n<li><a href="#">Маркированный список</a></li>\r\n<li><a href="#">Маркированный список</a></li>\r\n<li><a href="#">Маркированный список</a></li>\r\n<li><a href="#">Маркированный список</a></li>\r\n</ul>\r\n<div class="clear">&nbsp;</div>\r\n<h3>Картинки</h3>\r\n<p><img class="floatleft" src="$(httpRoot)data/img_4.jpg" alt="4" width="183" height="171"> <img class="floatleft" src="$(httpRoot)data/img_4.jpg" alt="4" width="100" height="100"> <img class="floatleft" src="$(httpRoot)data/img_4.jpg" alt="4" width="70" height="70"> <img class="floatleft" src="$(httpRoot)data/img_4.jpg" alt="4" width="50" height="50"></p>\r\n<div class="clear">&nbsp;</div>\r\n<h3>&nbsp;</h3>\r\n<h3>Адрес</h3>\r\n<address>г.Москва проспект Ленина дом 5 корп 2 телефон: (495) 458-585-52 </address>\r\n<h3>&nbsp;</h3>\r\n<h3>Таблицы</h3>\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<caption>Таблица 3.2. Демонстрация катаболических процессов организма</caption>\r\n<tbody>\r\n<tr>\r\n<th style="width: 80px;" scope="col">Дата</th><th style="width: 120px;" scope="col">Пользователь</th><th scope="col">Описание</th>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td>test_user</td>\r\n<td>I love to watch movies late at night</td>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td>test_user</td>\r\n<td>I love to watch movies late at night</td>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td>test_user</td>\r\n<td>I love to watch movies late at night</td>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td>test_user</td>\r\n<td>I love to watch movies late at night</td>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td>test_user</td>\r\n<td>I love to watch movies late at night</td>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td>test_user</td>\r\n<td>I love to watch movies late at night</td>\r\n</tr>\r\n<tr>\r\n<td>21.01.2009</td>\r\n<td><span>test_user</span></td>\r\n<td><span>I love to watch movies late at night</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'a:1:{s:12:"disallowPOST";i:0;}', '0000-00-00 00:00:00', '2011-01-29 16:43:05'),
(3, 'news', 0, 'Новости компании', 'Новости', '', '', '', 2, 1, 5, 0, 'index', 'news', '', 'a:0:{}', '2011-01-29 16:59:33', '2011-01-29 17:24:53'),
(4, 'polotencesushiteli', 2, 'Полотенцесушители', 'Полотенцесушители', '', '', '', 0, 1, 5, 1, 'product', 'list', '', 'a:0:{}', '2011-01-29 18:50:27', '2011-01-29 19:23:17'),
(5, 'obesavto', 2, 'Обвес автомашин', 'Обвес автомашин', '', 'Обвес автомашин', '', 1, 1, 5, 1, 'product', 'goodscatalog', '', 'a:0:{}', '2011-01-29 18:52:18', '2011-01-29 18:53:49'),
(6, 'glasstable', 2, 'Стеклянные столы', 'Стеклянные столы', '', 'Стеклянные столы', '', 2, 1, 5, 1, 'product', 'goodscatalog', '', 'a:0:{}', '2011-01-29 18:53:38', '2011-01-29 18:53:54'),
(2, 'products', 0, 'Продукция', 'Продукция', 'Описание', 'Продукция', 'Ключевые слова', 1, 1, 5, 1, 'product', 'list', '<div id="1" class="clearfix" style="height:120px"> <a href="/products/polotencesushiteli/"><img src="/data/pltnc.jpg" alt="1" width="100" height="100"></a>\r\n  <h1><a href="/products/polotencesushiteli/">Полотенцесушители</a></h1>\r\n<p>\r\nНи одно другое устройство не заточит ваш нож так быстро, как станок  Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка. </p>\r\n</div>\r\n\r\n<div id="2" class="clearfix" style="height:120px"><a href="/products/obesavto/"><img src="/data/obves.jpg" width="100" height="100" alt="2"></a>\r\n  <h1><A href="/products/obesavto/">Обвес автомашин</A></h1>\r\n<p>\r\nНи одно другое устройство не заточит ваш нож так быстро, как станок  Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка. </p>\r\n</div>\r\n\r\n<div id="3" class="clearfix" style="height:120px"><a href="/products/glasstable/"><img src="/data/table.jpg" width="100" height="100" alt="3"></a>\r\n  <h1><A href="/products/glasstable/">Стеклянные столы</A></h1>\r\n<p>\r\nНи одно другое устройство не заточит ваш нож так быстро, как станок  Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка. </p>\r\n</div>\r\n\r\n<div id="4" class="clearfix" style="height:120px">\r\n<a href="/products/ograjdenia/"><img src="/data/ograjd.jpg" width="100" height="100" alt="4"></a>\r\n<h1><A href="/products/ograjdenia/">Ограждения</A></h1>\r\n<p>\r\nНи одно другое устройство не заточит ваш нож так быстро, как станок  Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка.     \r\n</p>\r\n</div>\r\n<div id="5" class="clearfix" style="height:120px"><a href="/products/bathroomgadget/"><img src="/data/batch.jpg" width="100" height="100" alt="5"></a>\r\n  <h1><A href="/products/bathroomgadget/">Оборудование для ванных   комнат</A></h1>\r\n<p>\r\nНи одно другое устройство не заточит ваш нож так быстро, как станок  Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка.     \r\n</p>\r\n</div>\r\n<div id="6" class="clearfix" style="height:120px"><a href="/products/smartglass/"><img src="/data/smart.jpg" width="100" height="100" alt="6"></a>\r\n  <h1><A href="/products/smartglass/">Смарт стекло</A></h1>\r\n<p>\r\nНи одно другое устройство не заточит ваш нож так быстро, как станок  Edgecraft. Для правки чуть затупившегося ножа потребуется всего несколько секунд и пара движений ножом по направляющим станка.     \r\n</p>\r\n</div>', 'Array', '2011-01-29 13:38:10', '2011-01-29 19:03:37'),
(7, 'ograjdenia', 2, 'Ограждения', 'Ограждения', '', 'Ограждения', '', 3, 1, 5, 1, 'product', 'goodscatalog', '', 'a:0:{}', '2011-01-29 18:54:45', '2011-01-29 18:54:50'),
(8, 'bathroomgadget', 2, 'Оборудование для ванных комнат', 'Оборудование для ванных комнат', '', 'Оборудование для ванных комнат', '', 4, 1, 5, 1, 'product', 'goodscatalog', '', 'a:0:{}', '2011-01-29 18:56:08', '2011-01-29 18:56:13'),
(9, 'smartglass', 2, 'Смарт стекло', 'Смарт стекло', '', 'Смарт стекло', '', 5, 1, 5, 1, 'product', 'goodscatalog', '', 'a:0:{}', '2011-01-29 18:56:41', '2011-01-29 18:56:46'),
(10, 'Ufigure', 4, 'U образные', 'U образные', '', 'U образные', '', 0, 1, 5, 1, 'productlist', 'goodscatalog', '', 'a:0:{}', '2011-01-29 19:24:06', '2011-01-29 20:22:31'),
(11, 'Mfigure', 4, 'М образные', 'М образные', '', 'М образные', '', 1, 1, 5, 1, 'productlist', 'goodscatalog', '', 'a:0:{}', '2011-01-29 19:24:38', '2011-01-29 20:22:39'),
(12, 'Sigma', 4, 'Модель “СИГМА”', 'Модель “СИГМА”', '', 'Модель “СИГМА”', '', 2, 1, 5, 1, 'productlist', 'goodscatalog', '', 'a:0:{}', '2011-01-29 19:25:43', '2011-01-29 20:23:10'),
(13, 'Beta', 4, 'Модель “БЕТА”', 'Модель “БЕТА”', '', 'Модель “БЕТА”', '', 3, 1, 5, 1, 'productlist', 'goodscatalog', '', 'a:0:{}', '2011-01-29 19:26:14', '2011-01-29 20:22:54'),
(14, 'delta', 4, 'Модель “ДЕЛЬТА”', 'Модель “ДЕЛЬТА”', '', 'Модель “ДЕЛЬТА”', '', 4, 1, 5, 1, 'productlist', 'goodscatalog', '', 'a:0:{}', '2011-01-29 19:26:40', '2011-01-29 20:23:21'),
(15, 'processing', 0, 'Производство', 'Производство', '', 'Производство', '', 3, 1, 5, 1, 'processingt', 'html', '<!-- МЕНЮ В Производстве -->\r\n<ul>\r\n<li><a href="#gibka"><span>Гибка труб</span></a></li>\r\n<li><a href="#shlif"><span>Шлифовка нержавейки</span></a></li>\r\n<li><a href="#detales"><span>Изготовление деталей из нержавейки</span></a></li>\r\n</ul>                \r\n<div id="gibka">\r\n<!-- Меню окончено-->\r\n\r\n<div class="content">\r\n<p><img src="/data/14.jpg" width="200" height="150" alt="de">Многие элементы установок промышленных производств, например поверхности   нагрева, пароперегреватели, водяные экономайзеры,<BR>\r\n						    трубопроводы и др.,   являются конструкциями, состоящими из большого количества труб, имеющих   изогнутую, зачастую очень сложную<BR>\r\n						    форму. К таким объектам также можно отнести   инженерные системы промышленных предприятий и жилищно-коммунальной   сферы.<BR>\r\n						    Гибка труб является ответственной технологической операцией, для   которой нужно специально оборудование, во многом определяющей работоспособность   и надежность эксплуатации таких установок и объектов, поэтому обычным токарным станком, в этом процессе не обойтись К примеру,   трудоемкость гиба труб при изготовлении парогенератора достигает 10% от   суммарной трудоемкости<BR>\r\n						    всех операций.<BR>\r\n						    <BR>\r\n						    Основное требование к гибке   трубы заключается в сохранении неизменным проходного сечения в месте гиба.   Обеспечить это сложно,<BR>\r\n						    поскольку в процессе пластического деформирования   имеет место изменение формы трубы в месте гиба, образуется овальная   форма<BR>\r\n						    сечения трубы, что приводит к уменьшению ее проходного сечения.   Растяжение наружной стенки трубы в месте гиба вызывает ее утонение<BR>\r\n						    и, как   следствие, снижение прочности. Под действием сжимающих напряжений на внутренней   части стенки трубы могут возникнуть складки<BR>\r\n						    (гофры), которые являются   недопустимыми дефектами.<BR>\r\n						    <BR>\r\n						    Качество гибки в значительной мере зависит от   механических свойств металла трубы, в первую очередь от его пластичности.   Применяемый<BR>\r\n						    в ряде случаев в процессе гибки подогрев (горячая гибка) имеет   целью повышение пластичности металла.<BR>\r\n						    Чем меньше радиус гиба, тем больше   вероятность получения овальности и утончения стенки. При выборе способа гибки и   режима процесса<BR>\r\n						    исходят из того, чтобы овальность и утонение стенки не   превышало допустимых значений.<BR>\r\n						    Трубы можно гнуть различными способами,   применяя различное оборудование, например, гидравлический пресс. Все способы гибки труб имеют целью   достижение необходимого радиуса гиба, заданного угла<BR>\r\n						    загиба и сохранение в   процессе гибки проходного сечения трубы. Получение радиуса гиба и угла загиба   относительно несложно. Значительно<BR>\r\n						    сложнее достигается несплющивание трубы,   т. е. допустимая овальность. Поэтому при оценке (или выборе) того или иного   способа гибки этот<BR>\r\n						    момент является решающим.<BR>\r\n						    <BR>\r\n						    <STRONG>Ручную гибку   труб</STRONG> с помощью несложных приспособлений применяют только на монтаже, в   редких случаях - при подгонке отдельных трубных<BR>\r\n						    элементов. Простейшим   способом ручной гибки является гибка с наполнителем, например с набивкой трубы   песком, который предохраняет<BR>\r\n						    ее от сплющивания. Такой способ является   малопроизводительным и не обеспечивает высокого качества.<BR>\r\n						    В современном   производстве применяются только способы машинной гибки, например, применяя листогиб. Принципы, положенные в основу различных   трубогибочных<BR>\r\n						    машин, излагаются ниже.<BR>\r\n						    <BR>\r\n						    <STRONG>Гибка труб   обкаткой.</STRONG> Этот способ находит применение при гибке труб с наружным   диаметром до 50 мм и с радиусом гиба не менее двух<BR>\r\n						    диаметров   трубы.<BR>\r\n						    <BR>\r\n						    <STRONG>Гибка труб наматыванием</STRONG>. Недостатком этого   способа является наличие больших сил трения в самом технологическом процессе,   что<BR>\r\n						    снижает качество гиба. Способ гибки наматыванием довольно широко   применяют при массовом изготовлении гнутых труб с наружным<BR>\r\n						    диаметром от 18 до   426 мм. Гибку ведут в основном с подогревом труб. Холодная гибка этим способом в   настоящее время из-за<BR>\r\n						    недостаточно высокого качества гибов применяется   ограниченно, а при изготовлении ответственных конструкций, например   труб<BR>\r\n						    поверхностей нагрева или трубных систем нефтехимической аппаратуры,   практически полностью вытеснена более совершенными<BR>\r\n						    способами бездорновой   гибки.<BR>\r\n						    <BR>\r\n						    <STRONG>Гибка труб с индукционным подогревом</STRONG> является   одним из наиболее совершенных способов. Процесс гибки с нагревом труб   токами<BR>\r\n						    промышленной частоты эффективен при изготовлении трубных элементов с   различными радиусами гиба и в различных плоскостях и находит<BR>\r\n						    применение в   единичном и мелкосерийном производстве. Способ характерен меньшим утонением   стенки и меньшей овальностью трубы,<BR>\r\n						    чем при других способах   гибки.<BR>\r\n						    <BR>\r\n						    Промышленность выпускает трубогибочные машины, предназначенные для   гибки труб в широком диапазоне диаметров, основанные на<BR>\r\n						    описанных выше   способах; они бывают с пневматическим, механическим и гидравлическим приводом и   могут иметь программное<BR>\r\n						    управление. При единичном производстве часто   применяют стационарные и переносные гидравлические прессы. Операцию   гибки<BR>\r\n						    выполняют в несколько проходов последовательно от участка к участку в   штампе с соответствующим гибу профилем. Машины этого типа<BR>\r\n					      обслуживаются   системой гидравлических домкратов.</p>\r\n						</div>\r\n						</div>\r\n						<div id="shlif">\r\n						<div class="content">\r\n						  <p><img src="/data/ng.jpg" width="227" height="120" alt="er">Шлифовка рулонов нержавеющих марок стали и специальных сплавов осуществляется на шлифовальных линиях. <br>\r\n						  Шлифовке могут быть подвергнуты рулоны в состоянии:<br>\r\n						  - горячекатаном травленом;<br>\r\n						  - после холодной прокатки;<br>\r\n						  - холоднокатаном термообработанном травленом.</p>\r\n						  <p>\r\n						    При шлифовке металла обрабатываемого рулона зависит от характеристик агрегата.<br>\r\n						    Линия шлифовки предназначена для двухстороннего шлифования с целью улучшения качества поверхности и удаления дефектного поверхностного слоя. Обработка горячекатаной полосы позволяет повысить качество поверхности с шероховатости Rа от 20 до 10 мкм до шероховатости Rа от 1,25 до 0,63 мкм по ГОСТ 2789.<br>\r\n						    Процесс шлифовки нержавейки должен обеспечивать равномерный и качественный съем поверхностного слоя металла. </p>\r\n						  <p>\r\n						    По качеству поверхности на агрегаты направляются рулоны имеющие дефекты на поверхности в виде царапин, задиров, потертостей, рябизны, мелких прокатные плены, либо с целью улучшения класса категории поверхности.<br>\r\n						    Сам процесс шлифовки нержавейки производится шлифовальными головками с абразивной лентой с различной зернистостью. Зернистость абразивной ленты снижается при последних проходах. На первых проходах зернистость при шлифовке холоднокатаного металла ниже, чем горячекатаного.</p>\r\n						  <p>\r\n						    Определение величины съема металла при шлифовании рулонов производится путем контрольных замеров толщины полосы до и после операции шлифования. <br>\r\n						    Для получения более качественной поверхности шлифование нержавейки может производиться за большее количество пропусков.</p>\r\n						  <p>\r\n						    Для качественного проведения процесса шлифования имеет значение величина натяжения обрабатываемой рулонной полосы в линии.<br>\r\n						    Если вы хотите добиться превосходного качества шлифовки, не следует торопиться. Существуют строго определенные стадии шлифовки нержавейки, перескакивать через которые нельзя, но можно сэкономить время и одновременно улучшить качество работы, если пользоваться правильными станками и инструментами.</p>\r\n						</div>\r\n						</div>\r\n                        <div id="detales">\r\n						<div class="content">\r\n						  <p>Нержавеющая сталь стала доступна для бытового и коммерческого применения   относительно недавно: при СССР большая часть запасов нержавеющей стали   отдавалась на военные нужды: в гражданском применении можно было найти только   мягкие и не очень качественные сорта стали.</p>\r\n                          <p>Сейчас из нержавейки - металла с очень высокими прочностными и   эксплуатационными характеристиками - изготавливают самые разнообразные предметы   и товары. К примеру, торговое оборудование (в частности, разнообразные каркасы   витрин и сборные стеллажи), предметы интерьера (на текущий момент очень   популярна мебель с деталями из нержавеющей стали, а также различные интерьерные   изделия из нержавейки: декоративные решетки для каминов, внутренние стальные   лестницы и так далее), входные группы для офисов и части оформления фасадов -   эти изделия из нержавейки выдерживают любую непогоду и служат очень долго. Также   из металла выполняют различные элементы ландшафтного дизайна, а также   разнообразные декоративные металлоконструкции. </p>\r\n                          <p>Для этих изделий важны не только конструкционные качества, но и красивый   внешний вид. Нержавеющая сталь может быть обработана под полированную   поверхность, зеркальную или текстурированную, что позволяет добиться высокой   эстетики каждого элемента оформления.</p>\r\n                          <p>Разумеется из <strong>нержавейки</strong> делают и различные промышленные детали.   Благодаря гигиеничности и стойкости к коррозии, изделия из нержавейки имеют   широчайшее применение в химии, сантехнике и пищевой промышленности, где наиболее   важно сопротивление деталей агрессивной среде. Нержавейка также отличается   высокой термостойкостью, позволяющей использовать детали из неё в различных   областях промышленности где велико температурное воздействие.</p>\r\n                          <p>Для решения специальных задач (изготовления изделий из металла по спецзаказу)   используются высококлассные сорта стали и современное оборудование. Вы можете   заказать любое нужное вам изделие из нержавейки в нужном количестве - и получить   быстрый и качественный результат.</p>\r\n                          <p><strong>Изделия из нержавейки</strong> можно встретить практически повсеместно: мебель   и интерьерные детали в барах и ресторанах, различные детали в ванных и санузлах,   в наружной рекламе и на кухне. Разумеется, в индустриальной сфере нержавеющую   сталь также часто применяется: большинство станков и инструментов просто   немыслимы без деталей из этого металла.</p>\r\n						</div>\r\n						</div>\r\n', 'a:1:{s:12:"disallowPOST";i:0;}', '2011-01-29 22:35:09', '2011-01-29 23:04:39'),
(16, 'contacts', 0, 'Контакты', 'Контакты', '', 'Контакты', '', 4, 1, 5, 1, 'contacts', 'html', '', 'a:1:{s:12:"disallowPOST";i:0;}', '2011-01-29 23:05:29', '2011-01-30 12:45:16'),
(21, 'susses', 16, 'Сообщение отправленно', 'Сообщение отправленно', '', 'Сообщение отправленно', '', 0, 1, 5, 1, 'susses', 'html', '<h3 class="green">Ваше сообщение успешно отправлено!</h3>', 'a:1:{s:12:"disallowPOST";i:0;}', '2011-01-30 12:47:23', '2011-01-30 15:13:36'),
(22, 'error', 16, 'Ошикба проверки кода', 'Ошикба проверки кода', '', 'Ошикба проверки кода', '', 1, 1, 5, 0, 'error', 'html', '', 'a:0:{}', '2011-01-31 21:47:19', '2011-01-31 21:49:50'),
(17, 'gibkatrub', 15, 'Гибка труб', 'Гибка труб', '', 'Гибка труб', '', 0, 1, 5, 1, 'process', 'html', '						  <p><img src="/data/14.jpg" width="200" height="150" alt="de">Многие элементы установок промышленных производств, например поверхности   нагрева, пароперегреватели, водяные экономайзеры,<BR>\r\n						    трубопроводы и др.,   являются конструкциями, состоящими из большого количества труб, имеющих   изогнутую, зачастую очень сложную<BR>\r\n						    форму. К таким объектам также можно отнести   инженерные системы промышленных предприятий и жилищно-коммунальной   сферы.<BR>\r\n						    Гибка труб является ответственной технологической операцией, для   которой нужно специально оборудование, во многом определяющей работоспособность   и надежность эксплуатации таких установок и объектов, поэтому обычным токарным станком, в этом процессе не обойтись К примеру,   трудоемкость гиба труб при изготовлении парогенератора достигает 10% от   суммарной трудоемкости<BR>\r\n						    всех операций.<BR>\r\n						    <BR>\r\n						    Основное требование к гибке   трубы заключается в сохранении неизменным проходного сечения в месте гиба.   Обеспечить это сложно,<BR>\r\n						    поскольку в процессе пластического деформирования   имеет место изменение формы трубы в месте гиба, образуется овальная   форма<BR>\r\n						    сечения трубы, что приводит к уменьшению ее проходного сечения.   Растяжение наружной стенки трубы в месте гиба вызывает ее утонение<BR>\r\n						    и, как   следствие, снижение прочности. Под действием сжимающих напряжений на внутренней   части стенки трубы могут возникнуть складки<BR>\r\n						    (гофры), которые являются   недопустимыми дефектами.<BR>\r\n						    <BR>\r\n						    Качество гибки в значительной мере зависит от   механических свойств металла трубы, в первую очередь от его пластичности.   Применяемый<BR>\r\n						    в ряде случаев в процессе гибки подогрев (горячая гибка) имеет   целью повышение пластичности металла.<BR>\r\n						    Чем меньше радиус гиба, тем больше   вероятность получения овальности и утончения стенки. При выборе способа гибки и   режима процесса<BR>\r\n						    исходят из того, чтобы овальность и утонение стенки не   превышало допустимых значений.<BR>\r\n						    Трубы можно гнуть различными способами,   применяя различное оборудование, например, гидравлический пресс. Все способы гибки труб имеют целью   достижение необходимого радиуса гиба, заданного угла<BR>\r\n						    загиба и сохранение в   процессе гибки проходного сечения трубы. Получение радиуса гиба и угла загиба   относительно несложно. Значительно<BR>\r\n						    сложнее достигается несплющивание трубы,   т. е. допустимая овальность. Поэтому при оценке (или выборе) того или иного   способа гибки этот<BR>\r\n						    момент является решающим.<BR>\r\n						    <BR>\r\n						    <STRONG>Ручную гибку   труб</STRONG> с помощью несложных приспособлений применяют только на монтаже, в   редких случаях - при подгонке отдельных трубных<BR>\r\n						    элементов. Простейшим   способом ручной гибки является гибка с наполнителем, например с набивкой трубы   песком, который предохраняет<BR>\r\n						    ее от сплющивания. Такой способ является   малопроизводительным и не обеспечивает высокого качества.<BR>\r\n						    В современном   производстве применяются только способы машинной гибки, например, применяя листогиб. Принципы, положенные в основу различных   трубогибочных<BR>\r\n						    машин, излагаются ниже.<BR>\r\n						    <BR>\r\n						    <STRONG>Гибка труб   обкаткой.</STRONG> Этот способ находит применение при гибке труб с наружным   диаметром до 50 мм и с радиусом гиба не менее двух<BR>\r\n						    диаметров   трубы.<BR>\r\n						    <BR>\r\n						    <STRONG>Гибка труб наматыванием</STRONG>. Недостатком этого   способа является наличие больших сил трения в самом технологическом процессе,   что<BR>\r\n						    снижает качество гиба. Способ гибки наматыванием довольно широко   применяют при массовом изготовлении гнутых труб с наружным<BR>\r\n						    диаметром от 18 до   426 мм. Гибку ведут в основном с подогревом труб. Холодная гибка этим способом в   настоящее время из-за<BR>\r\n						    недостаточно высокого качества гибов применяется   ограниченно, а при изготовлении ответственных конструкций, например   труб<BR>\r\n						    поверхностей нагрева или трубных систем нефтехимической аппаратуры,   практически полностью вытеснена более совершенными<BR>\r\n						    способами бездорновой   гибки.<BR>\r\n						    <BR>\r\n						    <STRONG>Гибка труб с индукционным подогревом</STRONG> является   одним из наиболее совершенных способов. Процесс гибки с нагревом труб   токами<BR>\r\n						    промышленной частоты эффективен при изготовлении трубных элементов с   различными радиусами гиба и в различных плоскостях и находит<BR>\r\n						    применение в   единичном и мелкосерийном производстве. Способ характерен меньшим утонением   стенки и меньшей овальностью трубы,<BR>\r\n						    чем при других способах   гибки.<BR>\r\n						    <BR>\r\n						    Промышленность выпускает трубогибочные машины, предназначенные для   гибки труб в широком диапазоне диаметров, основанные на<BR>\r\n						    описанных выше   способах; они бывают с пневматическим, механическим и гидравлическим приводом и   могут иметь программное<BR>\r\n						    управление. При единичном производстве часто   применяют стационарные и переносные гидравлические прессы. Операцию   гибки<BR>\r\n						    выполняют в несколько проходов последовательно от участка к участку в   штампе с соответствующим гибу профилем. Машины этого типа<BR>\r\n					      обслуживаются   системой гидравлических домкратов.</p>\r\n						\r\n						', 'a:1:{s:12:"disallowPOST";i:0;}', '2011-01-30 11:21:14', '2011-01-30 11:39:30'),
(18, 'shlifovka', 15, 'Шлифовка нержавейки', 'Шлифовка нержавейки', '', 'Шлифовка нержавейки', '', 1, 1, 5, 1, 'process', 'html', '<p><img src="/data/ng.jpg" width="227" height="120" alt="er">Шлифовка рулонов нержавеющих марок стали и специальных сплавов осуществляется на шлифовальных линиях. <br>\r\n						  Шлифовке могут быть подвергнуты рулоны в состоянии:<br>\r\n						  - горячекатаном травленом;<br>\r\n						  - после холодной прокатки;<br>\r\n						  - холоднокатаном термообработанном травленом.</p>\r\n						  <p>\r\n						    При шлифовке металла обрабатываемого рулона зависит от характеристик агрегата.<br>\r\n						    Линия шлифовки предназначена для двухстороннего шлифования с целью улучшения качества поверхности и удаления дефектного поверхностного слоя. Обработка горячекатаной полосы позволяет повысить качество поверхности с шероховатости Rа от 20 до 10 мкм до шероховатости Rа от 1,25 до 0,63 мкм по ГОСТ 2789.<br>\r\n						    Процесс шлифовки нержавейки должен обеспечивать равномерный и качественный съем поверхностного слоя металла. </p>\r\n						  <p>\r\n						    По качеству поверхности на агрегаты направляются рулоны имеющие дефекты на поверхности в виде царапин, задиров, потертостей, рябизны, мелких прокатные плены, либо с целью улучшения класса категории поверхности.<br>\r\n						    Сам процесс шлифовки нержавейки производится шлифовальными головками с абразивной лентой с различной зернистостью. Зернистость абразивной ленты снижается при последних проходах. На первых проходах зернистость при шлифовке холоднокатаного металла ниже, чем горячекатаного.</p>\r\n						  <p>\r\n						    Определение величины съема металла при шлифовании рулонов производится путем контрольных замеров толщины полосы до и после операции шлифования. <br>\r\n						    Для получения более качественной поверхности шлифование нержавейки может производиться за большее количество пропусков.</p>\r\n						  <p>\r\n						    Для качественного проведения процесса шлифования имеет значение величина натяжения обрабатываемой рулонной полосы в линии.<br>\r\n						    Если вы хотите добиться превосходного качества шлифовки, не следует торопиться. Существуют строго определенные стадии шлифовки нержавейки, перескакивать через которые нельзя, но можно сэкономить время и одновременно улучшить качество работы, если пользоваться правильными станками и инструментами.</p>', 'a:1:{s:12:"disallowPOST";i:0;}', '2011-01-30 11:22:12', '2011-01-30 11:38:59');
INSERT INTO `pages` (`id`, `name`, `owner`, `title`, `caption`, `description`, `hint`, `keywords`, `position`, `active`, `access`, `visible`, `template`, `type`, `content`, `options`, `created`, `updated`) VALUES
(19, 'nerjdetail', 15, 'Изготовление деталей из нержавейки', 'Изготовление деталей из нержавейки', '', 'Изготовление деталей из нержавейки', '', 2, 1, 5, 1, 'process', 'html', '						  <p>Нержавеющая сталь стала доступна для бытового и коммерческого применения   относительно недавно: при СССР большая часть запасов нержавеющей стали   отдавалась на военные нужды: в гражданском применении можно было найти только   мягкие и не очень качественные сорта стали.</p>\r\n                          <p>Сейчас из нержавейки - металла с очень высокими прочностными и   эксплуатационными характеристиками - изготавливают самые разнообразные предметы   и товары. К примеру, торговое оборудование (в частности, разнообразные каркасы   витрин и сборные стеллажи), предметы интерьера (на текущий момент очень   популярна мебель с деталями из нержавеющей стали, а также различные интерьерные   изделия из нержавейки: декоративные решетки для каминов, внутренние стальные   лестницы и так далее), входные группы для офисов и части оформления фасадов -   эти изделия из нержавейки выдерживают любую непогоду и служат очень долго. Также   из металла выполняют различные элементы ландшафтного дизайна, а также   разнообразные декоративные металлоконструкции. </p>\r\n                          <p>Для этих изделий важны не только конструкционные качества, но и красивый   внешний вид. Нержавеющая сталь может быть обработана под полированную   поверхность, зеркальную или текстурированную, что позволяет добиться высокой   эстетики каждого элемента оформления.</p>\r\n                          <p>Разумеется из <strong>нержавейки</strong> делают и различные промышленные детали.   Благодаря гигиеничности и стойкости к коррозии, изделия из нержавейки имеют   широчайшее применение в химии, сантехнике и пищевой промышленности, где наиболее   важно сопротивление деталей агрессивной среде. Нержавейка также отличается   высокой термостойкостью, позволяющей использовать детали из неё в различных   областях промышленности где велико температурное воздействие.</p>\r\n                          <p>Для решения специальных задач (изготовления изделий из металла по спецзаказу)   используются высококлассные сорта стали и современное оборудование. Вы можете   заказать любое нужное вам изделие из нержавейки в нужном количестве - и получить   быстрый и качественный результат.</p>\r\n                          <p><strong>Изделия из нержавейки</strong> можно встретить практически повсеместно: мебель   и интерьерные детали в барах и ресторанах, различные детали в ванных и санузлах,   в наружной рекламе и на кухне. Разумеется, в индустриальной сфере нержавеющую   сталь также часто применяется: большинство станков и инструментов просто   немыслимы без деталей из этого металла.</p>', 'a:1:{s:12:"disallowPOST";i:0;}', '2011-01-30 11:23:12', '2011-01-30 11:39:20'),
(20, 'sitemap', 0, 'Карта сайта', 'Карта сайта', '', 'Карта сайта', '', 5, 1, 5, 0, 'index', 'sitemap', '', 'a:0:{}', '2011-01-30 11:41:30', '2011-01-30 12:20:56');

-- --------------------------------------------------------

--
-- Структура таблицы `plugins`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 04 2011 г., 11:26
--

DROP TABLE IF EXISTS `plugins`;
CREATE TABLE IF NOT EXISTS `plugins` (
  `name` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `content` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text,
  `title` varchar(64) DEFAULT '',
  `version` varchar(16) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`name`),
  KEY `active` (`active`),
  KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `plugins`
--

INSERT INTO `plugins` (`name`, `active`, `content`, `settings`, `title`, `version`, `description`) VALUES
('html', 1, 1, 'a:0:{}', 'HTML', '3.01', 'Плагин обеспечивает визуальное редактирование текстографических страниц'),
('menus', 1, 0, 'a:0:{}', 'Управление меню', '2.01', 'Менеджер меню'),
('news', 1, 0, 'a:10:{s:12:"itemsPerPage";s:2:"10";s:12:"tmplListItem";s:175:"<div style="padding-top:10px">\r\n<h3 class="green floatleft">$(caption)</h3>\r\n<div class="clear"></div>\r\n<p>$(preview)</p>\r\n<a href="$(link)">Полный текст...</a>\r\n</div>\r\n<hr/>";s:8:"tmplItem";s:49:"<h3 class="green">$(caption)</h3>\r\n<p>$(text)</p>";s:12:"tmplLastNews";s:201:"        <p><strong>$(posted)</strong></p>\r\n        <p>$(preview)\r\n        <span class="readmore floatright"><a href="$(link)">+ Читать</a></span>\r\n        </p>\r\n        <div class="bg"></div>\r\n        ";s:14:"previewMaxSize";s:3:"500";s:17:"previewSmartSplit";s:1:"1";s:17:"dateFormatPreview";s:5:"d.m.y";s:18:"dateFormatFullText";s:5:"D M Y";s:12:"lastNewsMode";s:1:"1";s:13:"lastNewsCount";s:1:"5";}', 'Новости', '2.09', 'Публикация новостей'),
('sitemap', 1, 1, 'a:4:{s:8:"tmplList";s:39:"<ul class="level$(level)">$(items)</ul>";s:8:"tmplItem";s:67:"<li><a href="$(url)" title="$(hint)">$(caption)</a>$(subitems)</li>";s:10:"showHidden";s:0:"";s:14:"showPriveleged";s:1:"1";}', 'Карта сайта', '3.01', 'Карта разделов сайта'),
('path', 1, 0, 'a:6:{s:6:"prefix";s:0:"";s:9:"delimiter";s:19:"&nbsp;&raquo;&nbsp;";s:4:"link";s:54:"<a href="$(url)" title="$(description)">$(caption)</a>";s:7:"current";s:10:"$(caption)";s:8:"levelMin";i:0;s:8:"levelMax";i:0;}', 'Положение на сайте', '2.01', 'Строка с местом положения на сайте'),
('goodscatalog', 1, 1, 'a:15:{s:12:"goodsPerPage";s:1:"5";s:11:"logoEnabled";s:0:"";s:12:"logoPosition";s:2:"BL";s:12:"logoVPadding";i:10;s:12:"logoHPadding";i:10;s:16:"mainPhotoEnabled";s:1:"1";s:16:"extPhotosEnabled";s:1:"1";s:13:"photoMaxWidth";s:3:"800";s:14:"photoMaxHeight";s:3:"600";s:10:"thumbWidth";s:3:"200";s:11:"thumbHeight";s:3:"200";s:13:"brandsEnabled";s:0:"";s:17:"brandLogoMaxWidth";s:3:"300";s:18:"brandLogoMaxHeight";s:3:"300";s:15:"specialsEnabled";s:0:"";}', 'Каталог товаров', '1.01', 'Простой каталог товаров'),
('blocks', 1, 0, 'a:0:{}', 'Блоки', '3.00', 'Система управления текстовыми блоками'),
('spamprevent', 1, 0, 'a:3:{s:11:"href_method";s:11:"onmouseover";s:15:"href_fake_email";s:16:"null@example.com";s:11:"text_method";s:6:"entity";}', 'SpamPrevent', '1.05', 'Защита E-mail адресов от спам-роботов'),
('call', 1, 0, 'a:0:{}', 'Call', '2.01', 'Вызов плагинов из шаблонов'),
('eforms', 1, 0, 'a:0:{}', 'E-Forms', '1.00', 'Расширенные HTML-формы');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Фев 04 2011 г., 11:26
-- Последнее обновление: Фев 11 2011 г., 10:12
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(16) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lastVisit` datetime DEFAULT NULL,
  `lastLoginTime` int(10) unsigned DEFAULT NULL,
  `loginErrors` int(10) unsigned DEFAULT NULL,
  `access` tinyint(3) unsigned DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `mail` varchar(64) DEFAULT NULL,
  `profile` text,
  PRIMARY KEY (`id`),
  KEY `login` (`login`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `hash`, `active`, `lastVisit`, `lastLoginTime`, `loginErrors`, `access`, `name`, `mail`, `profile`) VALUES
(1, 'root', '683896e8b5c7e79e519c9e793852da5c', 1, '2011-02-11 10:11:55', 1297408315, 0, 1, 'Служба поддержки', 'support@example.org', 'a:0:{}'),
(2, 'rotey', 'a9dc8099bf80ecf0fae9e522bdce2df3', 1, NULL, NULL, NULL, 2, 'Protey', 'sanatolii@inbox.ru', 'a:0:{}');
