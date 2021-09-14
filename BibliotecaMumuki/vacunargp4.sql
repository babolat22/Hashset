-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2021 a las 16:23:51
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vacunargp4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita_vacunacion`
--

CREATE TABLE `cita_vacunacion` (
  `idCita` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idVacunatorio` int(11) NOT NULL,
  `idDosis` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cant_Dosis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dosis`
--

CREATE TABLE `dosis` (
  `idDosis` int(11) NOT NULL,
  `idLaboratorio` int(11) NOT NULL,
  `numSerie` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dosis`
--

INSERT INTO `dosis` (`idDosis`, `idLaboratorio`, `numSerie`, `estado`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1),
(12, 1, 12, 1),
(13, 1, 13, 1),
(14, 1, 14, 1),
(15, 1, 15, 1),
(16, 1, 16, 1),
(17, 1, 17, 1),
(18, 1, 18, 1),
(19, 1, 19, 1),
(20, 1, 20, 1),
(21, 1, 21, 1),
(22, 1, 22, 1),
(23, 1, 23, 1),
(24, 1, 24, 1),
(25, 1, 25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `idLaboratorio` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `paisOrigen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`idLaboratorio`, `nombre`, `direccion`, `paisOrigen`) VALUES
(1, 'AstraZeneca', 'Oxford', 'Reino Unido'),
(2, 'Sinopharm', 'China', 'China');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologia`
--

CREATE TABLE `patologia` (
  `idPatologia` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `patologia`
--

INSERT INTO `patologia` (`idPatologia`, `nombre`) VALUES
(1, 'Cancer'),
(2, 'Diabetes'),
(3, 'Enfermedad cardiológica'),
(4, 'Enfermedad hépatica'),
(5, 'Enfermedad renal crónica'),
(6, 'Enfermedad respiratorio'),
(7, 'Obesidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `dni` bigint(20) NOT NULL,
  `idPatologia` int(11) DEFAULT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `altura` double NOT NULL,
  `peso` double NOT NULL,
  `fechaNac` date NOT NULL,
  `celular` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `trabajo` varchar(30) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `dni`, `idPatologia`, `nombre`, `apellido`, `altura`, `peso`, `fechaNac`, `celular`, `email`, `trabajo`, `departamento`, `ciudad`, `activo`) VALUES
(9, 39137254, NULL, 'kevin', 'paredes', 1.8, 60.1, '2021-06-23', 1231232312, 'asdasd@gmail.com', 'Comercio', 'Pueyrredón', 'La Punta', 1),
(10, 391372558, NULL, 'kevin', 'ramirez', 1.7, 60, '1995-10-26', 2664853182, 'kevinenriquep26@gmail.com', 'Salud', 'Pueyrredón', 'San luis', 1),
(11, 39137256, 6, 'pepe', 'lado', 1.7, 60, '1995-10-26', 2664853183, 'pepe26@gmail.com', 'Salud', 'Pueyrredón', 'San luis', 1),
(12, 39137257, 1, 'martin', 'luther', 1.9, 68.1, '1994-06-16', 12312333333, 'luther@gmail.com', 'Comercio', 'Pueyrredón', 'La Punta', 1),
(14, 39137258, NULL, 'juan', 'cordero', 1.7, 55.5, '1995-03-12', 1231232345, 'asdasdassds@gmail.com', 'Comercio', 'Pueyrredón', 'La Punta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunatorio`
--

CREATE TABLE `vacunatorio` (
  `idVacunatorio` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vacunatorio`
--

INSERT INTO `vacunatorio` (`idVacunatorio`, `nombre`, `departamento`, `ciudad`) VALUES
(1, 'HOSPITAL MARIA J. BECKER', 'Pueyrredón', 'La Punta'),
(2, 'Policlínico', 'Pueyrredón', 'San Luis (capital provincial)');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita_vacunacion`
--
ALTER TABLE `cita_vacunacion`
  ADD PRIMARY KEY (`idCita`),
  ADD KEY `idPersona` (`idPersona`),
  ADD KEY `idVacunatorio` (`idVacunatorio`),
  ADD KEY `cita_vacunacion_ibfk_3` (`idDosis`);

--
-- Indices de la tabla `dosis`
--
ALTER TABLE `dosis`
  ADD PRIMARY KEY (`idDosis`),
  ADD UNIQUE KEY `numSerie` (`numSerie`),
  ADD KEY `idLaboratorio` (`idLaboratorio`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`idLaboratorio`);

--
-- Indices de la tabla `patologia`
--
ALTER TABLE `patologia`
  ADD PRIMARY KEY (`idPatologia`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `idPatologia` (`idPatologia`);

--
-- Indices de la tabla `vacunatorio`
--
ALTER TABLE `vacunatorio`
  ADD PRIMARY KEY (`idVacunatorio`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita_vacunacion`
--
ALTER TABLE `cita_vacunacion`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `dosis`
--
ALTER TABLE `dosis`
  MODIFY `idDosis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `idLaboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `patologia`
--
ALTER TABLE `patologia`
  MODIFY `idPatologia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `vacunatorio`
--
ALTER TABLE `vacunatorio`
  MODIFY `idVacunatorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita_vacunacion`
--
ALTER TABLE `cita_vacunacion`
  ADD CONSTRAINT `cita_vacunacion_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`),
  ADD CONSTRAINT `cita_vacunacion_ibfk_2` FOREIGN KEY (`idVacunatorio`) REFERENCES `vacunatorio` (`idVacunatorio`),
  ADD CONSTRAINT `cita_vacunacion_ibfk_3` FOREIGN KEY (`idDosis`) REFERENCES `dosis` (`idDosis`);

--
-- Filtros para la tabla `dosis`
--
ALTER TABLE `dosis`
  ADD CONSTRAINT `idLaboratorio` FOREIGN KEY (`idLaboratorio`) REFERENCES `laboratorio` (`idLaboratorio`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idPatologia`) REFERENCES `patologia` (`idPatologia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
