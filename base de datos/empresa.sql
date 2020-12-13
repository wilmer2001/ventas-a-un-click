-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2020 a las 21:16:29
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

DELIMITER $$
--
-- Funciones
--
CREATE DEFINER=`root`@`localhost` FUNCTION `saludar` (`var1` VARCHAR(150)) RETURNS VARCHAR(150) CHARSET latin1 COLLATE latin1_spanish_ci begin
	
	
	declare mensaje varchar (150);
	set mensaje='hola';
	
	return concat (mensaje,' ',var1);
	
	end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenamiento`
--

CREATE TABLE `almacenamiento` (
  `lugar_almacenamiento` varchar(20) NOT NULL,
  `cod_producto` int(20) DEFAULT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `cod_empleado` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacenamiento`
--

INSERT INTO `almacenamiento` (`lugar_almacenamiento`, `cod_producto`, `producto`, `cod_empleado`) VALUES
('A-102', 204, 'Panela petaca', 125),
('A-123', 543, 'Papel higuienico', 126),
('C-300', 250, 'Aceite', 250),
('C-890', 123, 'Atun', 260),
('A-200', 805, 'Jabon Rey', 303),
('A-789', 908, 'Yodora D.', 309),
('E-874', 106, 'Advil', 450),
('E-543', 320, 'Mayonesa', 490),
('D-690', 306, 'Arroz', 500),
('D-546', 450, 'Bom Bom Bum', 560);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(20) NOT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(15) DEFAULT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Barrio` varchar(20) DEFAULT NULL,
  `Telefono` bigint(15) DEFAULT NULL,
  `credito` varchar(10) DEFAULT NULL,
  `Establecimiento` varchar(20) DEFAULT NULL,
  `cod_factura` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `nombres`, `Apellidos`, `Direccion`, `Barrio`, `Telefono`, `credito`, `Establecimiento`, `cod_factura`) VALUES
(202350, 'Lucia', 'Fernandez', 'Kra 15 92-05', 'San cristobal', 3126852980, 'Si', 'tienda', 2512),
(213654, 'Pedro', 'Carvajal', 'Cll 25 25-30', 'San isidro', 3000506497, 'no', 'tienda', 1425),
(230965, 'Juan', 'Bernal', 'Cll 15 29-38', 'Socorro', 3034562197, 'Si', 'Dulceria', 3214),
(326598, 'Andrea', 'Rodriguez', 'Ave 8 10-25', 'Martires', 3116859745, 'no', 'tienda', 9685),
(435678, 'Lorena', 'Gomez', 'Ave 9 80-25 SUR', 'Marruecos', 3119876545, 'Si', 'tienda', 9876),
(456776, 'Maicol', 'Hernandez', 'Kra a14 42-65', 'Molinos', 3986552980, 'Si', 'tienda', 2605),
(586497, 'Juan', 'Alvarez', 'Cll 5 8-10', 'Carabelas', 3105209080, 'Si', 'Supermecado', 8574),
(804010, 'Marta', 'Motoa', 'Kra 10 27-35', '20 de Julio', 3206598740, 'no', 'Supermecado', 6352),
(965841, 'Kevin', 'Torres', 'Cll 23 9-19', 'Consuelo', 3100980040, 'no', 'Supermecado', 2345),
(987624, 'Anguie', 'Herrera', 'Kra h18 24-95', '20 de Julio', 3287652140, 'no', 'Farmacia', 6523);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `compra_id` int(20) NOT NULL,
  `proveedor_id` int(20) DEFAULT NULL,
  `articulo` varchar(20) DEFAULT NULL,
  `valor` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`compra_id`, `proveedor_id`, `articulo`, `valor`) VALUES
(102, 3274, 'P&G', 34000),
(109, 1256, 'Fruco', 78000),
(231, 5041, 'Tomatero', 70000),
(342, 9405, 'Familia', 45000),
(432, 4567, 'Pin pong', 65000),
(456, 8050, 'Viva soya', 52000),
(498, 7843, 'Q', 40000),
(567, 2308, 'Surtimax', 68500),
(624, 3265, 'MK', 54000),
(789, 6595, 'Roa', 50000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_producto`
--

CREATE TABLE `detalles_producto` (
  `cod_producto` int(20) NOT NULL,
  `fecha_caducidad` bigint(20) DEFAULT NULL,
  `cantidad` int(20) DEFAULT NULL,
  `valor_producto` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalles_producto`
--

INSERT INTO `detalles_producto` (`cod_producto`, `fecha_caducidad`, `cantidad`, `valor_producto`) VALUES
(106, 30052022, 3, 54000),
(123, 10052022, 38, 68500),
(204, 25102021, 2, 70000),
(250, 10052022, 1, 52000),
(306, 5122021, 5, 50000),
(320, 15062023, 79, 78000),
(450, 30052022, 123, 65000),
(543, 21102020, 23, 45000),
(805, 15062023, 5, 34000),
(908, 25102021, 45, 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `cargo` varchar(20) DEFAULT NULL,
  `sueldo` int(25) DEFAULT NULL,
  `cod_empleado` int(15) NOT NULL,
  `nombres` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `telefono` bigint(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `cedula` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`cargo`, `sueldo`, `cod_empleado`, `nombres`, `apellidos`, `telefono`, `direccion`, `cedula`) VALUES
('Bodeguero', 1000000, 125, 'Andres', 'Tiusaba', 3506905417, 'Sena 30', '1023908'),
('Bodeguero', 1000000, 126, 'Marlon', 'Rodriguez', 3245790766, 'kr 4f #56-78 sur', '1001934'),
('Vendedor', 2000000, 250, 'Juan', 'Paez', 3605893214, '1ra de Mayo', '1052479'),
('Vendedor', 2000000, 260, 'Paulo', 'Lopez', 3214563489, '1ra de Mayo', '1078534'),
('Repartidor', 1500000, 303, 'Brayan', 'Mora', 3403215647, 'cll 25 65-80', '9874563'),
('Repartidor', 1500000, 309, 'Fabio', 'Angel', 3002459870, 'cll 48 75-88 sur', '1001185'),
('Repartidor', 1500000, 450, 'Nicolas', 'Olaya', 3102502500, '100 con 125', '2136541'),
('Repartidor', 1500000, 490, 'Sergio', 'Gonzales', 3214564354, '100 con 121', '1236789'),
('Administrador', 3000000, 500, 'Pedro', 'Bernal', 3102506497, '10 con 1ra Mayo', '2369874'),
('Vendedor', 2000000, 560, 'Juan', 'Bernal', 3456479009, '15 con 1ra Mayo', '2356337');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `cod_factura` int(20) NOT NULL,
  `nombre_cliente` varchar(15) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `articulo` varchar(20) DEFAULT NULL,
  `valor` int(20) DEFAULT NULL,
  `iva` varchar(10) DEFAULT NULL,
  `credito` varchar(10) DEFAULT NULL,
  `forma_pago` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`cod_factura`, `nombre_cliente`, `fecha`, `articulo`, `valor`, `iva`, `credito`, `forma_pago`) VALUES
(1425, 'Pedro', '2020-09-26', 'Jabon Rey', 34000, '0,19', 'no', 'Efectivo'),
(2345, 'Kevin', '2020-09-26', 'Mayonesa', 78000, '0,19', 'no', 'Efectivo'),
(2512, 'Lucia ', '2020-09-30', 'Panela', 70000, '0,19', 'Si', 'Tarjeta'),
(2605, 'Maicol', '2020-09-28', 'Papel Higuienico', 45000, '0,19', 'Si', 'Efectivo'),
(3214, 'Juan', '2020-09-23', 'Yodora D.', 40000, '0,19', 'Si', 'Tarjeta'),
(6352, 'Marta ', '2020-09-23', 'Aceite', 52000, '0,19', 'no', 'Efectivo'),
(6523, 'Anguie', '2020-09-27', 'Atun', 68500, '0,19', 'no', 'Tarjeta'),
(8574, 'Juan ', '2020-09-25', 'Arroz', 50000, '0,19', 'Si', 'Tarjeta'),
(9685, 'Andrea', '2020-09-25', 'Arroz', 50000, '0,19', 'No', 'Efectivo'),
(9876, 'Lorena', '2020-09-29', 'Bom Bom Bum', 65000, '0,19', 'Si', 'Tarjeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `cod_pedido` int(20) NOT NULL,
  `valor` int(20) DEFAULT NULL,
  `fecha_caducidad` date NOT NULL,
  `cantidad_articulo` int(20) DEFAULT NULL,
  `proveedor_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`cod_pedido`, `valor`, `fecha_caducidad`, `cantidad_articulo`, `proveedor_id`) VALUES
(2398, 65000, '2020-09-25', 123, 4567),
(4367, 68500, '2020-09-26', 38, 2308),
(5142, 50000, '2020-09-19', 25, 6595),
(5271, 52000, '2020-09-17', 48, 8050),
(5613, 70000, '2020-09-15', 40, 5041),
(5987, 45000, '2020-09-24', 23, 9405),
(6547, 78000, '2020-09-23', 79, 1256),
(6789, 40000, '2020-09-23', 45, 7843),
(9848, 50000, '2020-09-21', 40, 3265),
(9876, 34000, '2020-09-23', 25, 3274);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `nombre` varchar(25) DEFAULT NULL,
  `cod_producto` int(20) NOT NULL,
  `marca` varchar(15) DEFAULT NULL,
  `cantidad` int(15) DEFAULT NULL,
  `fecha_caducida` date DEFAULT NULL,
  `valor` int(20) DEFAULT NULL,
  `existencias` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`nombre`, `cod_producto`, `marca`, `cantidad`, `fecha_caducida`, `valor`, `existencias`) VALUES
('Advil', 106, 'MK', 40, '2020-10-29', 54000, 200),
('Atun', 123, 'Surtimax', 38, '2020-10-14', 68500, 97),
('Panela petaca', 204, 'Tomatero', 40, '2020-09-30', 70000, 100),
('Aceite', 250, 'Viva soya', 48, '2020-10-02', 52000, 80),
('Arroz', 306, 'Roa', 25, '2020-10-14', 50000, 50),
('Mayonesa', 320, 'Fruco', 79, '2020-11-13', 78000, 120),
('Bom Bom Bum', 450, 'Pin pong', 123, '2020-10-19', 65000, 80),
('Papel Higuienico', 543, 'Familia', 23, '2020-10-26', 45000, 23),
('Jabon Rey', 805, 'P&G', 25, '2020-10-24', 34000, 60),
('Yodora D.', 908, 'Q', 45, '2020-09-26', 40000, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedores`
--

CREATE TABLE `provedores` (
  `provedor_id` int(20) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `telefono` bigint(15) DEFAULT NULL,
  `empresa` varchar(15) DEFAULT NULL,
  `direccion_empresa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provedores`
--

INSERT INTO `provedores` (`provedor_id`, `nombre`, `apellidos`, `telefono`, `empresa`, `direccion_empresa`) VALUES
(1256, 'Olivia', 'Alvarez', 3091458392, 'Fruco', 'Kra 29 23-78'),
(2308, 'Andres', 'Perez', 3109874563, 'Surtimax', 'Cll 15Sur 65-51'),
(3265, 'Janeth', 'Alvache', 3908479203, 'MK', 'Kra 22 22-69'),
(3274, 'Helena', 'Morcote', 3130566485, 'P&G', 'Cll 9Sur 40-56'),
(4567, 'Eduardo', 'Fernandez', 3219870564, 'Pin Pong', 'Cll 12Sur 77-57'),
(5041, 'Javier ', 'Gil', 6024568, 'Tomatero', 'Kra 8A 32-65'),
(6595, 'German', 'Lopez', 3002501436, 'Roa', 'Cll 8Sur 60-41'),
(7843, 'Penelope', 'Patiño', 3651289087, 'Q', 'Cll 17Sur 79-26'),
(8050, 'Arturo', 'Gomez', 3105802164, 'Viva soya', 'Cll 10Sur 35-21'),
(9405, 'Fernando', 'Rojas', 3452346789, 'Familia', 'Kra 9A 72-63');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ventas_id` int(20) NOT NULL,
  `cliente_id` int(20) DEFAULT NULL,
  `cod_factura` int(20) DEFAULT NULL,
  `valor` int(20) NOT NULL,
  `cod_producto` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ventas_id`, `cliente_id`, `cod_factura`, `valor`, `cod_producto`) VALUES
(23987, 965841, 2345, 78000, 320),
(32216, 213654, 1425, 34000, 80534598),
(34598, 456776, 2605, 45000, 543),
(34677, 435678, 9876, 65000, 450),
(45688, 987624, 6523, 68500, 123),
(56098, 230965, 3214, 40000, 908),
(65489, 586497, 8574, 55000, 106),
(87945, 326598, 9685, 50000, 306),
(305461, 202350, 2512, 70000, 204),
(521460, 804010, 6352, 52000, 250);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenamiento`
--
ALTER TABLE `almacenamiento`
  ADD PRIMARY KEY (`cod_empleado`),
  ADD KEY `cod_producto` (`cod_producto`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`),
  ADD KEY `cod_factura` (`cod_factura`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`compra_id`) USING BTREE,
  ADD KEY `proveedor_id` (`proveedor_id`);

--
-- Indices de la tabla `detalles_producto`
--
ALTER TABLE `detalles_producto`
  ADD PRIMARY KEY (`cod_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`cod_empleado`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`cod_factura`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`cod_pedido`),
  ADD KEY `proveedor_id` (`proveedor_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cod_producto`),
  ADD KEY `valor` (`valor`);

--
-- Indices de la tabla `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`provedor_id`);

--
-- Indices de la tabla `reparticion`
--
ALTER TABLE `reparticion`
  ADD PRIMARY KEY (`cod_empleado`),
  ADD KEY `id_factura` (`id_factura`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ventas_id`) USING BTREE,
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `cod_producto` (`cod_producto`),
  ADD KEY `cod_factura` (`cod_factura`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacenamiento`
--
ALTER TABLE `almacenamiento`
  ADD CONSTRAINT `almacenamiento_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `almacenamiento_ibfk_2` FOREIGN KEY (`cod_producto`) REFERENCES `productos` (`cod_producto`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cod_factura`) REFERENCES `facturas` (`cod_factura`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `provedores` (`provedor_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `detalles_producto` (`cod_producto`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `reparticion`
--
ALTER TABLE `reparticion`
  ADD CONSTRAINT `reparticion_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `reparticion_ibfk_2` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`cod_factura`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`cod_factura`) REFERENCES `facturas` (`cod_factura`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
