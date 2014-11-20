-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-11-2014 a las 00:37:23
-- Versión del servidor: 5.5.38
-- Versión de PHP: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `geoloc`
--
CREATE DATABASE IF NOT EXISTS `geoloc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `geoloc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`id` int(11) NOT NULL,
  `posicion` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `path`
--

CREATE TABLE IF NOT EXISTS `path` (
`id` int(11) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `latitude` varchar(50) CHARACTER SET utf8 NOT NULL,
  `longitude` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `path`
--

INSERT INTO `path` (`id`, `timeStamp`, `user_id`, `latitude`, `longitude`) VALUES
(46, '2014-11-08 13:00:27', 131014666, '43.326386', '-3.0088869'),
(47, '2014-11-08 13:00:30', 2147483647, '43.3263665', '-3.0089098'),
(48, '2014-11-08 13:00:32', 131014666, '43.326386', '-3.0088869'),
(49, '2014-11-08 13:00:35', 2147483647, '43.3263628', '-3.0089098'),
(50, '2014-11-08 13:00:37', 131014666, '43.326386', '-3.0088869'),
(51, '2014-11-08 13:00:40', 2147483647, '43.326364', '-3.0089098'),
(52, '2014-11-08 13:00:42', 131014666, '43.326386', '-3.0088869'),
(53, '2014-11-08 13:00:45', 2147483647, '43.3263567', '-3.0089104'),
(54, '2014-11-08 13:00:47', 131014666, '43.326386', '-3.0088869'),
(55, '2014-11-08 13:00:50', 2147483647, '43.3263523', '-3.0089089'),
(56, '2014-11-08 13:00:52', 131014666, '43.326386', '-3.0088869'),
(57, '2014-11-08 13:00:55', 2147483647, '43.3263547', '-3.0089091'),
(58, '2014-11-08 13:00:57', 131014666, '43.326386', '-3.0088869'),
(59, '2014-11-08 13:01:00', 2147483647, '43.3263564', '-3.0089092'),
(60, '2014-11-08 13:01:02', 131014666, '43.326386', '-3.0088869'),
(61, '2014-11-08 13:01:05', 2147483647, '43.3263577', '-3.0089093'),
(62, '2014-11-08 13:01:07', 131014666, '43.326386', '-3.0088869'),
(63, '2014-11-08 14:17:02', 131014666, '43.3263423', '-3.0088662'),
(64, '2014-11-08 14:17:07', 131014666, '43.3263423', '-3.0088662'),
(65, '2014-11-08 15:00:34', 131014666, '43.326367499999996', '-3.0088584'),
(66, '2014-11-08 15:00:39', 131014666, '43.326367499999996', '-3.0088584'),
(67, '2014-11-08 15:00:44', 131014666, '43.326367499999996', '-3.0088584'),
(68, '2014-11-08 15:12:00', 131014666, '43.326404000000004', '-3.0088559999999998'),
(69, '2014-11-08 15:12:05', 131014666, '43.326404000000004', '-3.0088559999999998'),
(70, '2014-11-08 15:12:10', 131014666, '43.326404000000004', '-3.0088559999999998'),
(71, '2014-11-08 15:12:15', 131014666, '43.326404000000004', '-3.0088559999999998'),
(72, '2014-11-08 15:12:20', 131014666, '43.326404000000004', '-3.0088559999999998'),
(73, '2014-11-08 15:12:25', 131014666, '43.326404000000004', '-3.0088559999999998'),
(74, '2014-11-08 15:12:30', 131014666, '43.326404000000004', '-3.0088559999999998'),
(75, '2014-11-08 15:12:35', 131014666, '43.326404000000004', '-3.0088559999999998'),
(76, '2014-11-08 15:12:40', 131014666, '43.326404000000004', '-3.0088559999999998'),
(77, '2014-11-08 15:12:45', 131014666, '43.326404000000004', '-3.0088559999999998'),
(78, '2014-11-08 15:12:46', 131014666, '43.326404000000004', '-3.0088559999999998'),
(79, '2014-11-08 15:12:50', 131014666, '43.326404000000004', '-3.0088559999999998'),
(80, '2014-11-08 15:12:55', 131014666, '43.326404000000004', '-3.0088559999999998'),
(81, '2014-11-08 15:13:00', 131014666, '43.326404000000004', '-3.0088559999999998'),
(82, '2014-11-08 15:13:05', 131014666, '43.326404000000004', '-3.0088559999999998'),
(83, '2014-11-08 15:13:10', 131014666, '43.326404000000004', '-3.0088559999999998'),
(84, '2014-11-08 15:13:15', 131014666, '43.326404000000004', '-3.0088559999999998'),
(85, '2014-11-08 15:13:20', 131014666, '43.326404000000004', '-3.0088559999999998'),
(86, '2014-11-08 15:13:25', 131014666, '43.326404000000004', '-3.0088559999999998'),
(87, '2014-11-08 15:19:38', 131014666, '43.3263742', '-3.0088958999999997'),
(88, '2014-11-08 15:19:43', 131014666, '43.3263742', '-3.0088958999999997'),
(89, '2014-11-09 15:23:46', 2147483647, '43.3264094', '-3.008883'),
(90, '2014-11-09 15:23:51', 2147483647, '43.3264094', '-3.008883'),
(91, '2014-11-09 15:23:56', 2147483647, '43.3264094', '-3.008883'),
(92, '2014-11-09 15:24:01', 2147483647, '43.3264094', '-3.008883'),
(93, '2014-11-09 15:24:06', 2147483647, '43.3264231', '-3.0088849'),
(94, '2014-11-09 15:24:11', 2147483647, '43.3264157', '-3.008883'),
(95, '2014-11-09 15:26:42', 131014666, '43.3263587', '-3.0088282'),
(96, '2014-11-09 15:26:47', 131014666, '43.3263587', '-3.0088282'),
(97, '2014-11-09 18:22:48', 131014666, '43.326324', '-3.011249'),
(98, '2014-11-09 15:50:27', 2147483647, '43.3263928', '-3.0088581'),
(99, '2014-11-09 15:50:32', 2147483647, '43.3263928', '-3.0088581'),
(100, '2014-11-09 15:50:37', 2147483647, '43.3263928', '-3.0088581'),
(101, '2014-11-09 15:50:42', 2147483647, '43.3263928', '-3.0088581'),
(102, '2014-11-11 10:17:31', 131014666, '43.326404000000004', '-3.0088559999999998');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`) VALUES
(1, 1, 'John'),
(2, 2, 'Thomas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
`id` int(11) NOT NULL,
  `zone_type` int(11) NOT NULL,
  `zone_name` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zones`
--

INSERT INTO `zones` (`id`, `zone_type`, `zone_name`, `order_id`, `latitude`, `longitude`) VALUES
(247, 1, 'Rectangulo', 1, '43.24200153989239', ' -2.793045057915151'),
(248, 1, 'Rectangulo', 2, '43.20847903461746', ' -2.876815809868276'),
(249, 3, 'Poligono', 1, '43.22449208308014', ' -3.0656433245167136'),
(250, 3, 'Poligono', 2, '43.20347409461894', ' -3.082809462212026'),
(251, 3, 'Poligono', 3, '43.17493809565027', ' -3.0725097795948386'),
(252, 3, 'Poligono', 4, '43.17443734500973', ' -3.0244445940479636'),
(253, 3, 'Poligono', 5, '43.2004709335138', ' -3.011398329399526'),
(254, 3, 'Poligono', 6, '43.23499836084362', ' -3.030624403618276'),
(255, 3, 'Poligono', 7, '43.24800362414467', ' -3.071823134087026'),
(256, 2, 'Circulo', 1, '43.269506236411836', ' -2.9722595354542136'),
(257, 2, 'Circulo', 2, '5547.058879299049', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `path`
--
ALTER TABLE `path`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zones`
--
ALTER TABLE `zones`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `path`
--
ALTER TABLE `path`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `zones`
--
ALTER TABLE `zones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=258;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;