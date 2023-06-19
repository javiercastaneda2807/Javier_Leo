-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 15:45:55
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_candelaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `cedula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ano`
--

CREATE TABLE `ano` (
  `id` int(11) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `id_seccion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ano`
--

INSERT INTO `ano` (`id`, `ano`, `id_seccion`) VALUES
(1, '1er Año ', 1),
(2, '1er Año ', 2),
(3, '1er Año ', 3),
(4, '2do Año ', 1),
(5, '2do año', 2),
(6, '2do año', 3),
(7, '3er año ', 1),
(8, '3er año', 2),
(9, '3er año', 3),
(10, '4to Año Administración', 1),
(11, '4to año Contabilidad ', 2),
(12, '4to año informática ', 3),
(13, '5to Año Administración', 1),
(14, '5to año Contabilidad ', 2),
(15, '5to año informática ', 3),
(16, '6to Año Administración', 1),
(17, '6to año Contabilidad ', 2),
(18, '6to año informática ', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursando`
--

CREATE TABLE `cursando` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_ano` int(11) NOT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `materia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `materia`) VALUES
(1, 'castellano'),
(2, 'Practicas de oficina I'),
(3, 'G.H.C'),
(4, 'Historia de venezuela'),
(5, 'Geografía de Venezuela'),
(6, 'F.S.N.'),
(7, 'Matemática'),
(8, 'Física'),
(9, 'Fundamentos de contabilidad'),
(10, 'Nociones básicas de oficina'),
(11, 'N.G.D.'),
(12, 'C.T.A.N'),
(13, 'Introducción a la informática'),
(14, 'Técnicas de oficina'),
(15, 'Informatica'),
(16, 'Informatica I'),
(17, 'Informatica II'),
(18, 'Sistemas Operativos y Telemática '),
(19, 'Fundamentos de economía '),
(20, 'Ingles'),
(21, 'Presupuesto Empresarial'),
(22, 'Técnicas y Practicas de la Mención II'),
(23, 'Contabilidad general y Nociones de auditoria '),
(24, 'Análisis de estados Financieros '),
(25, 'Contabilidad y Técnicas bancarias '),
(27, 'Contabilidad Costos y Nociones de Auditoria'),
(28, 'Estructura de datos'),
(29, 'Introducción al algebra'),
(30, 'Sistemas de informacion'),
(31, 'Algorítmica y Programación '),
(32, 'Programación '),
(33, 'Mecanografía '),
(34, 'Contabilidad '),
(35, 'Contabilidad general y sistemas de procesos '),
(36, 'Tec. Y Prac. de comercio y mercadeo '),
(37, 'Administración y Turismo '),
(38, 'Administracion '),
(39, 'Teoría general de seguros '),
(40, 'Ciencias Naturales '),
(41, 'Quimica '),
(42, 'Orientación y Convivencia '),
(43, 'Mantenimiento y operaciones '),
(44, 'Coordinación C.T.A.N'),
(45, 'Legislación laboral y mercantil '),
(46, 'Administración de nomina'),
(47, 'Impuesto sobre la renta '),
(48, 'Metodología de la investigación'),
(49, 'Practicas de oficina II'),
(50, 'Educación física y deporte'),
(51, 'castellano y literatura'),
(52, 'nociones generales del derecho'),
(53, 'técnica y practica de administración y turismo'),
(54, 'teoría general del seguro'),
(55, 'técnica y practica de administración y turismo'),
(56, 'teoría general del seguro'),
(57, 'proyecto'),
(58, 'programacion II'),
(59, 'contabilidad bancaria y nociones de auditoria'),
(60, 'tecnica y practica de la mencion I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_pensum` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pensum`
--

CREATE TABLE `pensum` (
  `id` int(11) NOT NULL,
  `id_ano` int(10) NOT NULL,
  `id_materia` int(10) NOT NULL,
  `cursando` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pensum`
--

INSERT INTO `pensum` (`id`, `id_ano`, `id_materia`, `cursando`) VALUES
(1, 1, 1, 2023),
(2, 1, 3, 2023),
(3, 1, 7, 2023),
(4, 1, 10, 2023),
(5, 1, 13, 2023),
(6, 1, 20, 2023),
(7, 1, 40, 2023),
(8, 2, 1, 2023),
(9, 2, 3, 2023),
(10, 2, 7, 2023),
(11, 2, 10, 2023),
(12, 2, 13, 2023),
(13, 2, 20, 2023),
(14, 2, 40, 2023),
(15, 3, 1, 2023),
(16, 3, 3, 2023),
(17, 3, 7, 2023),
(18, 3, 10, 2023),
(19, 3, 13, 2023),
(20, 3, 20, 2023),
(21, 3, 40, 2023),
(22, 4, 1, 2023),
(23, 4, 3, 2023),
(24, 4, 7, 2023),
(25, 4, 9, 2023),
(26, 4, 14, 2023),
(27, 4, 20, 2023),
(28, 4, 40, 2023),
(29, 5, 1, 2023),
(30, 5, 3, 2023),
(31, 5, 7, 2023),
(32, 5, 9, 2023),
(33, 5, 14, 2023),
(34, 5, 20, 2023),
(35, 5, 40, 2023),
(36, 6, 1, 2023),
(37, 6, 3, 2023),
(38, 6, 7, 2023),
(39, 6, 9, 2023),
(40, 6, 14, 2023),
(41, 6, 20, 2023),
(42, 6, 40, 2023),
(43, 7, 1, 2023),
(44, 7, 3, 2023),
(45, 7, 7, 2023),
(46, 7, 8, 2023),
(47, 7, 15, 2023),
(48, 7, 20, 2023),
(49, 8, 1, 2023),
(50, 8, 3, 2023),
(51, 8, 7, 2023),
(52, 8, 8, 2023),
(53, 8, 15, 2023),
(54, 8, 20, 2023),
(55, 9, 1, 2023),
(56, 9, 3, 2023),
(57, 9, 7, 2023),
(58, 9, 8, 2023),
(59, 9, 15, 2023),
(60, 9, 20, 2023),
(61, 10, 51, 2023),
(62, 10, 4, 2023),
(63, 10, 50, 2023),
(64, 10, 7, 2023),
(65, 10, 20, 2023),
(66, 10, 33, 2023),
(67, 10, 34, 2023),
(68, 10, 52, 2023),
(69, 10, 16, 2023),
(70, 10, 55, 2023),
(71, 10, 56, 2023),
(72, 11, 51, 2023),
(73, 11, 4, 2023),
(74, 11, 50, 2023),
(75, 11, 7, 2023),
(76, 11, 20, 2023),
(77, 11, 33, 2023),
(78, 11, 34, 2023),
(79, 11, 52, 2023),
(80, 11, 16, 2023),
(81, 11, 2, 2023),
(82, 11, 36, 2023),
(83, 12, 51, 2023),
(84, 12, 4, 2023),
(85, 12, 50, 2023),
(86, 12, 7, 2023),
(87, 12, 20, 2023),
(88, 12, 33, 2023),
(89, 12, 34, 2023),
(90, 12, 52, 2023),
(91, 12, 16, 2023),
(92, 12, 55, 2023),
(93, 12, 56, 2023),
(94, 13, 51, 2023),
(95, 13, 5, 2023),
(96, 13, 50, 2023),
(97, 13, 7, 2023),
(98, 13, 20, 2023),
(99, 13, 17, 2023),
(100, 13, 2, 2023),
(101, 13, 45, 2023),
(102, 13, 60, 2023),
(103, 13, 46, 2023),
(104, 13, 48, 2023),
(105, 14, 51, 2023),
(106, 14, 5, 2023),
(107, 14, 50, 2023),
(108, 14, 7, 2023),
(109, 14, 20, 2023),
(110, 14, 17, 2023),
(111, 14, 49, 2023),
(112, 14, 45, 2023),
(113, 14, 19, 2023),
(114, 14, 35, 2023),
(115, 14, 47, 2023),
(116, 15, 51, 2023),
(117, 15, 5, 2023),
(118, 15, 50, 2023),
(119, 15, 7, 2023),
(120, 15, 20, 2023),
(121, 15, 17, 2023),
(122, 15, 2, 2023),
(123, 15, 30, 2023),
(124, 15, 29, 2023),
(125, 15, 43, 2023),
(126, 15, 31, 2023),
(127, 16, 51, 2023),
(128, 16, 5, 2023),
(129, 16, 50, 2023),
(130, 16, 7, 2023),
(131, 16, 20, 2023),
(132, 16, 17, 2023),
(133, 16, 2, 2023),
(134, 16, 21, 2023),
(135, 16, 22, 2023),
(136, 16, 59, 2023),
(137, 16, 57, 2023),
(138, 17, 51, 2023),
(139, 17, 5, 2023),
(140, 17, 50, 2023),
(141, 17, 7, 2023),
(142, 17, 20, 2023),
(143, 17, 17, 2023),
(144, 17, 49, 2023),
(145, 17, 25, 2023),
(146, 17, 24, 2023),
(147, 17, 27, 2023),
(148, 17, 57, 2023),
(149, 18, 51, 2023),
(150, 18, 5, 2023),
(151, 18, 50, 2023),
(152, 18, 7, 2023),
(153, 18, 20, 2023),
(154, 18, 17, 2023),
(155, 18, 2, 2023),
(156, 18, 58, 2023),
(157, 18, 18, 2023),
(158, 18, 28, 2023),
(159, 18, 57, 2023);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `seccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `seccion`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seccion` (`id_seccion`),
  ADD KEY `fk_seccion1` (`id_seccion`);

--
-- Indices de la tabla `cursando`
--
ALTER TABLE `cursando`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_ano` (`id_ano`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
    ADD KEY `id_pensum` (`id_pensum`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `pensum`
--
ALTER TABLE `pensum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pensum_ibfk_1` (`id_ano`),
  ADD KEY `pensum_ibfk_2` (`id_materia`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ano`
--
ALTER TABLE `ano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `cursando`
--
ALTER TABLE `cursando`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pensum`
--
ALTER TABLE `pensum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pensum`
--
ALTER TABLE `pensum`
  ADD CONSTRAINT `pensum_ibfk_1` FOREIGN KEY (`id_ano`) REFERENCES `ano` (`id`),
  ADD CONSTRAINT `pensum_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
