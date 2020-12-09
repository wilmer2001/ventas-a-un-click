-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-12-2020 a las 22:55:07
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparticion`
--

CREATE TABLE `reparticion` (
  `entregar_producto` varchar(20) DEFAULT NULL,
  `id_factura` int(20) DEFAULT NULL,
  `cod_empleado` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reparticion`
--

INSERT INTO `reparticion` (`entregar_producto`, `id_factura`, `cod_empleado`) VALUES
('Panela', 2512, 125),
('Papel Higuienico', 2605, 126),
('Aceite', 6352, 250),
('Atun', 6523, 260),
('Jabon Rey', 1425, 303),
('Yodora D.', 3214, 309),
('Arroz', 8574, 450),
('Mayonesa', 2345, 490),
('Arroz', 9685, 500),
('Bom Bom Bum', 9876, 560);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reparticion`
--
ALTER TABLE `reparticion`
  ADD PRIMARY KEY (`cod_empleado`),
  ADD KEY `id_factura` (`id_factura`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reparticion`
--
ALTER TABLE `reparticion`
  ADD CONSTRAINT `reparticion_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `reparticion_ibfk_2` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`cod_factura`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
