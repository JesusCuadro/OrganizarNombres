-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 01-08-2023 a las 17:41:48
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
-- Base de datos: `listanombres`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombres`
--

CREATE TABLE `nombres` (
  `ID` int(11) NOT NULL,
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nombres`
--

INSERT INTO `nombres` (`ID`, `Cedula`, `Nombre`) VALUES
(1, 342342, 'Ana Valenzuela Díaz'),
(2, 2312312, 'Diego Valentin Jiménez Castro'),
(3, 12342432, 'Laura Sofia Vargas Morales'),
(4, 156546, 'Andrés Rodríguez Gómez'),
(5, 5453534, 'Maria Del Carmen Escobar Rodriguez'),
(6, 32434254, 'Pedro Jose Martínez Ruiz'),
(7, 7657546, 'Gabriela Torres Herrera'),
(8, 543534532, 'Juan Felipe Ramírez Ortega'),
(9, 2343454, 'Ana Lucía Mendoza Aguilar'),
(10, 967686, 'Juan Sebastián Silva Paredes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombres_organizados`
--

CREATE TABLE `nombres_organizados` (
  `ID` int(11) NOT NULL,
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nombres_organizados`
--

INSERT INTO `nombres_organizados` (`ID`, `Cedula`, `Nombre`, `Apellido`) VALUES
(1, 656464, 'Jesus Daniel', 'Cuadro Dita'),
(2, 64656, 'Maria Del Carmen', 'Dita Arevalo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nombres`
--
ALTER TABLE `nombres`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `nombres_organizados`
--
ALTER TABLE `nombres_organizados`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `nombres`
--
ALTER TABLE `nombres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `nombres_organizados`
--
ALTER TABLE `nombres_organizados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
