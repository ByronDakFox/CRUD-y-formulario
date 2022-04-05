-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-01-2020 a las 16:28:24
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_cliente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_datos`
--

DROP TABLE IF EXISTS `tbl_datos`;
CREATE TABLE IF NOT EXISTS `tbl_datos` (
  `DAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USU_ID` int(10) NOT NULL,
  `TEL_ID` int(10) NOT NULL,
  `DIR_ID` int(10) NOT NULL,
  `ROL_ID` int(10) NOT NULL,
  PRIMARY KEY (`DAT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_datos`
--

INSERT INTO `tbl_datos` (`DAT_ID`, `USU_ID`, `TEL_ID`, `DIR_ID`, `ROL_ID`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_direccion`
--

DROP TABLE IF EXISTS `tbl_direccion`;
CREATE TABLE IF NOT EXISTS `tbl_direccion` (
  `DIR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DIR_DOMICILIO` varchar(50) NOT NULL,
  PRIMARY KEY (`DIR_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_direccion`
--

INSERT INTO `tbl_direccion` (`DIR_ID`, `DIR_DOMICILIO`) VALUES
(1, 'mx'),
(2, 'mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

DROP TABLE IF EXISTS `tbl_rol`;
CREATE TABLE IF NOT EXISTS `tbl_rol` (
  `ROL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_NOMBRE` varchar(50) NOT NULL,
  PRIMARY KEY (`ROL_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`ROL_ID`, `ROL_NOMBRE`) VALUES
(1, 'Trabajo'),
(2, 'casa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_telefono`
--

DROP TABLE IF EXISTS `tbl_telefono`;
CREATE TABLE IF NOT EXISTS `tbl_telefono` (
  `TEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEL_NUMERO` varchar(50) NOT NULL,
  PRIMARY KEY (`TEL_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_telefono`
--

INSERT INTO `tbl_telefono` (`TEL_ID`, `TEL_NUMERO`) VALUES
(1, '025648'),
(2, '025648');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `USU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USU_NOMBRE` varchar(50) NOT NULL,
  `USU_CEDULA` varchar(50) NOT NULL,
  PRIMARY KEY (`USU_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`USU_ID`, `USU_NOMBRE`, `USU_CEDULA`) VALUES
(1, 'Juan', '1005898766'),
(2, 'Juan2', '1005894444');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
