-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2016 a las 20:38:04
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `runandshare`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actual`
--

CREATE TABLE IF NOT EXISTS `actual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `actual`
--

INSERT INTO `actual` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.0098107', '-15.530759', '0.0', '0.0', '0', '0.0'),
(2, '28.0098107', '-15.530759', '0.0', '2.2163922E', '0', '3.0'),
(3, '28.0098107', '-15.530759', '0.0', '5.150745E-', '5', '0.0'),
(4, '28.0098107', '-15.530759', '0.0', '0.0', '10', '4.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplo`
--

CREATE TABLE IF NOT EXISTS `ejemplo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ejemplo`
--

INSERT INTO `ejemplo` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.008878', '-15.535822', '850', '0', '0', '0'),
(2, '28.008857', '-15.535238', '850', '0.5', '5', '5'),
(3, '28.009226', '-15.534730', '855', '1', '10', '4'),
(4, '28.009065', '-15.534389', '894', '1.5', '15', '2'),
(5, '28.008991', '-15.533987', '840', '2', '20', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamiento`
--

CREATE TABLE IF NOT EXISTS `entrenamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `entrenamiento`
--

INSERT INTO `entrenamiento` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.0098104', '-15.530759', '0.0', '0.0', '0', '0.0'),
(2, '28.0098104', '-15.530759', '0.0', '0.0', '0', '0.0'),
(3, '28.0098104', '-15.530759', '0.0', '0.0', '5', '0.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevo`
--

CREATE TABLE IF NOT EXISTS `nuevo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `nuevo`
--

INSERT INTO `nuevo` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.0098099', '-15.530759', '0.0', '0.0', '0', '0.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE IF NOT EXISTS `prueba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `prueba`
--

INSERT INTO `prueba` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.0098105', '-15.530759', '0.0', '0.0', '0', '0.0'),
(2, '28.0098105', '-15.530759', '0.0', '1.1081962E', '0', '0.0'),
(3, '28.0098105', '-15.530759', '0.0', '0.0', '5', '0.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sanmateo`
--

CREATE TABLE IF NOT EXISTS `sanmateo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `sanmateo`
--

INSERT INTO `sanmateo` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.009816', '-15.530760', '0.0', '0.0', '0', '0.0'),
(2, '28.009816', '-15.530760', '0.0', '0.0', '0', '0.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siguiendo`
--

CREATE TABLE IF NOT EXISTS `siguiendo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(10) DEFAULT NULL,
  `alt` varchar(10) DEFAULT NULL,
  `distance` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `velocity` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `siguiendo`
--

INSERT INTO `siguiendo` (`id`, `lat`, `lng`, `alt`, `distance`, `time`, `velocity`) VALUES
(1, '28.0098097', '-15.530758', '0.0', '0.0', '0', '0.0'),
(2, '28.0098097', '-15.530758', '0.0', '2.2577466E', '0', '0.0'),
(3, '28.0098097', '-15.530758', '0.0', '0.0', '5', '0.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trainings`
--

CREATE TABLE IF NOT EXISTS `trainings` (
  `trainingname` varchar(14) NOT NULL,
  `username` varchar(30) NOT NULL,
  `date` varchar(10) NOT NULL,
  `visits` int(11) NOT NULL,
  PRIMARY KEY (`trainingname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trainings`
--

INSERT INTO `trainings` (`trainingname`, `username`, `date`, `visits`) VALUES
('7 Fuentes', 'test', '29-06-2016', 0),
('actual', 'test', '01-07-2016', 0),
('Canteras', 'Test3', '20-05-2016', 75),
('Entrenamiento', 'test', '03-07-2016', 0),
('gfkdkd', 'test', '08-07-2016', 0),
('La Vega', 'test', '23-06-2016', 0),
('Molinos', 'Test1', '20-05-2016', 100),
('nrhecw', 'test', '08-07-2016', 0),
('nuevo', 'test', '03-07-2016', 0),
('prueba', 'test', '03-07-2016', 0),
('resa', 'test', '08-07-2016', 0),
('S. Mateo', 'test', '23-06-2016', 0),
('siguiendo', 'test', '03-07-2016', 0),
('Tafira', 'test', '08-06-2016', 14),
('Tajinaste', 'test', '28-06-2016', 0),
('Tejeda', 'test', '23-06-2016', 0),
('troi', 'test', '08-07-2016', 0),
('tuti', 'test', '08-07-2016', 0),
('tututt', 'test', '01-07-2016', 0),
('Valleseco', 'Test4', '20-05-2016', 25),
('Valsequillo', 'Test2', '20-05-2016', 50),
('xsx', 'test', '08-07-2016', 0),
('ytr', 'test', '08-07-2016', 0),
('ytre', 'test', '01-07-2016', 0),
('yutuufss', 'test', '08-07-2016', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `idandroid` varchar(16) NOT NULL,
  `active` varchar(1) NOT NULL,
  `actualtraining` varchar(14) NOT NULL,
  `followedtraining` varchar(14) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `idandroid` (`idandroid`),
  UNIQUE KEY `idandroid_2` (`idandroid`),
  UNIQUE KEY `idandroid_3` (`idandroid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`username`, `password`, `idandroid`, `active`, `actualtraining`, `followedtraining`) VALUES
('test', '0cc175b9c0f1b6a831c399e269772661', 'ab8a59e366a70fd3', '1', 'ytre', 'null');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
