-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2022 a las 06:00:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `programacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `Id_dia` int(5) NOT NULL,
  `Nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dia`
--

INSERT INTO `dia` (`Id_dia`, `Nombre`) VALUES
(1, 'Lunes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `Id_programa` int(5) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Descripcion` text NOT NULL,
  `H_inicio` varchar(20) NOT NULL,
  `H_final` varchar(20) NOT NULL,
  `Id_dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`Id_programa`, `Nombre`, `Descripcion`, `H_inicio`, `H_final`, `Id_dia`) VALUES
(2, 'Noticiero Nacional Matutino', 'Noticiero Nacional Matutino de RNH y Canal8', '06:00:00', '07:00:00', 1),
(8, 'Gobierno Abierto', 'Abierto Gobierno', '11', '12', 1),
(51, 'Noticias Canal 8 Meridiano', 'Noticias Canal 8 Meridiano', '', '', 0),
(52, 'Turismo', 'SDFASDG', '', '', 0),
(53, 'Turismo', 'SDFASDG', '11:00:00', '13:00:00', 0),
(54, 'madrid', 'DASD', '8', '9', 1),
(55, '', '', '', '', 0),
(56, '', '', '', '', 1),
(57, 'Futbol Sala', 'Futbol Sala', '10', '11', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`Id_dia`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`Id_programa`),
  ADD KEY `programa_ibfk_1` (`Id_dia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dia`
--
ALTER TABLE `dia`
  MODIFY `Id_dia` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `Id_programa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
