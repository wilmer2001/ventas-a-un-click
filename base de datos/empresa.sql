-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2021 a las 03:23:19
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
('Aceite 450', 1, 'Viva Soya', 24, '2021-01-28', 3600, 400),
('Panela pastillada', 2, 'Tomatero', 36, '2021-01-01', 74000, 50),
('Marcador permanente', 3, 'Pelikan', 12, '2021-01-02', 8200, 100),
('Kit de reglas', 4, 'Ruler', 10, '2021-01-30', 7200, 100),
('Regla ', 5, 'Ruler', 10, '2021-01-01', 5000, 100),
('Esfero ffi esco', 6, 'Offi-esco', 12, '2021-01-06', 5100, 100),
('Lapiz faber Castell', 7, 'Faber Castell', 12, '2021-01-30', 6500, 100),
('Lapiz mirado', 8, 'Mirado', 12, '2021-01-04', 6500, 100),
('Tapabocas ', 9, 'Tapamas', 50, '2021-01-07', 24000, 200),
('Marcador borrable', 10, 'Pelikan', 12, '2021-01-04', 8200, 100),
('Shampoo Pantene', 11, 'P&G', 12, '2021-01-26', 6800, 50),
('Esfero Bic ', 12, 'Bic ', 12, '2021-01-25', 5100, 100),
('Ariel x450', 14, 'P&G', 24, '2021-01-04', 3600, 100),
('Ariel X125', 21, 'P&G', 108, '2021-01-05', 1200, 500),
('Balance normal', 22, 'Balance', 18, '2021-01-02', 9000, 80),
('HyS azul ', 23, 'P&G', 12, '2021-01-05', 6800, 50),
('Cepillo niño', 29, 'Tooth', 24, '2021-01-25', 8000, 100),
('Rexona ', 32, 'Rexona', 48, '2021-01-26', 2000, 200),
('Panela 1/2', 33, 'Tomatero', 40, '2021-01-30', 48000, 50),
('Protex', 43, 'Protex', 48, '2021-01-30', 2200, 200),
('Hys Rosado', 44, 'P&G', 12, '2021-01-20', 6800, 50),
('Fab X450', 45, 'P&G', 24, '2021-01-29', 3600, 100),
('Fab 100', 55, 'P&G', 106, '2021-01-06', 1100, 500),
('Clorox ', 56, 'P&G', 24, '2021-01-07', 22000, 300),
('Elite duo', 65, 'Elite ', 20, '2021-01-13', 24000, 200),
('Blancx', 76, 'P&G', 24, '2021-01-25', 24000, 300),
('Cepillo adulto', 78, 'Tooth', 24, '2021-01-04', 9800, 100),
('Elite maxi', 89, 'Elite', 24, '2021-01-15', 32000, 100),
('Azucar morena', 98, 'Incauca', 25, '2021-01-26', 50000, 70),
('Azucar Morena', 99, 'Incauca ', 25, '2021-01-06', 50000, 70),
('Advil Max ', 106, 'MK', 40, '2020-10-29', 40000, 200),
('Bianchi blanco', 111, 'Super', 100, '2021-01-05', 7500, 100),
('Halls pepa', 112, 'Halls ', 100, '2021-01-11', 8000, 100),
('Nosootras Normal Dispensa', 113, 'Nosotras', 30, '2021-01-04', 9000, 100),
('Barrilete ', 116, 'Super', 50, '2021-01-20', 5200, 100),
('Halls barra', 118, 'Halls', 12, '2021-01-07', 10800, 50),
('Bianchi barra', 119, 'Super', 12, '2021-01-23', 7800, 100),
('Atun aceite ', 123, 'Soberana', 200, '2020-10-14', 4200, 100),
('Super coco ', 124, 'Super', 100, '2021-01-30', 6500, 100),
('Bianchi azul', 125, 'Super', 100, '2021-01-10', 7500, 100),
('Dulce lokiño', 127, 'Super', 100, '2021-01-11', 7000, 100),
('Color grande', 128, 'Norma', 12, '2021-01-26', 2600, 100),
('Big ben ', 129, 'Super', 100, '2021-01-13', 8000, 100),
('Bisturi pequeño', 202, '--', 12, '2021-01-19', 10400, 100),
('Panela petaca', 204, 'Tomatero', 40, '2020-09-30', 70000, 100),
('Chocobrey', 222, 'Super', 50, '2021-01-28', 5500, 100),
('Chocobrey blanco', 223, 'Super', 50, '2021-01-31', 5500, 100),
('Nosotras rapigel Dispensa', 224, 'Nosotras', 30, '2021-01-06', 9000, 100),
('Oka loka fusion', 225, 'Super', 12, '2021-01-07', 6200, 100),
('Axion-235', 227, 'Axion', 48, '2021-01-02', 2000, 200),
('Chocoprispi', 228, 'Kelogs', 8, '2021-01-06', 6800, 100),
('Zucaritas', 229, 'Keloggs', 8, '2021-01-06', 6800, 50),
('Advil ultra', 233, 'MK', 40, '2021-01-05', 48000, 200),
('Color pequeño', 234, 'Norma', 12, '2021-01-04', 1300, 100),
('Cartulina 1/2', 235, '--', 25, '2021-01-06', 7800, 100),
('Aceite 900', 250, 'Viva soya', 12, '2020-10-02', 5800, 80),
('Tajalapiz metalico ', 256, 'Noorma', 24, '2021-01-06', 4200, 100),
('Bisturi Grande', 303, '--', 12, '2021-01-23', 4800, 100),
('Arroz', 306, 'Roa', 25, '2020-10-14', 50000, 200),
('Silicona delgada', 312, '---', 20, '2021-01-27', 11800, 100),
('Mayonesa', 320, 'Fruco', 12, '2020-11-13', 10000, 120),
('Chocolores blanco', 321, 'Super', 12, '2021-01-06', 8000, 80),
('Cera amarilla', 326, 'Ceramas', 48, '2021-01-26', 1200, 300),
('BombrilX16', 331, 'Bombril', 16, '2021-01-04', 3600, 200),
('Oka loka chicle', 333, 'Super', 12, '2021-01-27', 6200, 100),
('Rosal X54', 334, 'Rosal', 54, '2021-01-04', 40000, 200),
('Fabuloso ', 338, 'Fabuloso', 72, '2021-01-01', 1050, 400),
('Aromatel', 339, 'Aromatel', 48, '2021-01-31', 900, 300),
('Tajalapiz depsito', 342, 'Norma', 24, '2021-01-27', 6400, 100),
('Plumones', 356, 'Norma', 12, '2021-01-31', 2800, 100),
('Block cuadriculado', 357, 'Norma', 80, '2021-01-30', 2400, 100),
('Vanix blanco tira', 432, 'Vanix', 48, '2021-01-02', 10200, 100),
('Palillos redondos', 435, '---', 12, '2021-01-05', 4800, 100),
('Sampic', 441, 'Sampic', 48, '2021-01-26', 900, 300),
('Kotex dispen', 443, 'Kotex', 30, '2021-01-07', 8000, 200),
('Frop loops', 444, 'Keloggs', 8, '2021-01-06', 6800, 100),
('Axion-150', 446, 'Axion', 72, '2021-01-30', 1200, 200),
('Atun agua', 450, 'Soberana', 48, '2020-10-19', 4600, 200),
('Cartulina Pliego', 456, '--', 25, '2021-01-30', 13600, 100),
('Micropunta ', 476, 'Norma', 12, '2021-01-04', 9600, 100),
('SipegaX18', 505, 'Sipega', 18, '2021-01-21', 12600, 100),
('Elite maxi', 543, 'Elite', 24, '2020-10-26', 24000, 200),
('Axion-disco', 554, 'Axion', 24, '2021-01-01', 16000, 100),
('Trululu sabores', 555, 'Super', 12, '2021-01-31', 6800, 100),
('Cera roja', 557, 'Ceramas', 48, '2021-01-07', 1200, 300),
('SoflanX210', 559, 'Soflan ', 48, '2021-01-04', 1000, 300),
('SipegaX24', 606, 'Sipega', 24, '2021-01-13', 9600, 100),
('Borrador grande', 657, 'Borramas', 24, '2021-01-05', 7500, 100),
('Chao X100', 666, 'Super', 100, '2021-01-02', 6000, 100),
('Scoot maxi', 667, 'Scoot', 30, '2021-01-08', 36000, 100),
('Papel Craft', 707, '--', 25, '2021-01-24', 1900, 100),
('Hoja examen', 770, 'Norma', 25, '2021-01-27', 5800, 100),
('Sabra doble espuma ', 775, 'Sabra', 24, '2021-01-04', 6000, 200),
('Chao linea', 777, 'Super', 24, '2021-01-13', 6000, 100),
('Vanix color shashet', 778, 'Vanix', 48, '2021-01-04', 10200, 100),
('Tapabocas-Niño ', 779, 'Tapamas', 50, '2021-01-04', 30000, 200),
('Block iris', 784, 'Norma', 80, '2021-01-07', 800, 100),
('Cuaderno X100', 789, 'Norma', 100, '2021-01-02', 1100, 1000),
('Jabon Rey', 805, 'P&G', 25, '0000-00-00', 34000, 100),
('Hoja de vida', 870, 'Norma', 25, '2021-01-04', 6500, 100),
('Borrador pequeño', 879, 'Borramas', 24, '2021-01-30', 3600, 100),
('Balance crema hombre', 908, 'Balance', 18, '2020-09-26', 9800, 90),
('Papel periodico', 909, '--', 25, '2021-01-16', 2600, 100),
('Ibuprofeno', 955, 'Genfar', 48, '2021-01-29', 8700, 80),
('Uva pasa grande', 961, 'Variedades', 30, '2021-01-25', 28000, 80),
('Ibuprofeno ', 966, 'MK', 24, '2021-01-04', 9000, 100),
('Canela Grande ', 970, 'Variedades', 30, '2021-01-20', 25000, 100),
('Canela Mediana', 971, 'Variedades', 80, '2021-01-06', 18000, 80),
('Miel mediana', 974, 'Variedades', 80, '2021-01-05', 18000, 60),
('Calmidol compuesto ', 978, 'Calmidol', 48, '2021-01-22', 26000, 50),
('Buscapina Fem', 979, 'Buscapina', 24, '2021-01-31', 31000, 50),
('Buscapina compuesta', 980, 'Buscapina', 30, '2021-01-01', 31000, 50),
('Sardina cilindrica', 981, 'Soberana ', 48, '2021-01-06', 2600, 70),
('Sardina', 982, 'Soberana', 48, '2021-01-12', 5400, 80),
('Maizena sabores', 983, 'Maizena', 12, '2021-01-24', 900, 50),
('Bom bom bun', 984, 'Colombina', 25, '2021-01-06', 6800, 50),
('Gomas surtidas', 985, 'Super', 25, '2021-01-27', 26400, 50),
('Galleta oreo ', 986, 'Super', 25, '2021-01-05', 7000, 50),
('Cuaderno X50', 987, 'Norma', 50, '2021-01-31', 650, 1000),
('Galleta club social', 988, 'Colombina', 10, '2021-01-25', 6000, 60),
('Trident X60', 989, 'Colombina', 60, '2021-01-06', 12000, 60),
('Trident X24', 990, 'Colombina', 24, '2021-01-25', 9800, 40),
('Trident X18', 991, 'Colombina', 18, '2021-01-04', 12000, 30),
('Bubaloo', 992, 'Colombina', 100, '2021-01-04', 5700, 100),
('Tumix', 993, 'Super', 100, '2021-01-06', 6900, 100),
('Xtime', 995, 'Colombina', 100, '2021-01-27', 6000, 50),
('Trululu aros', 996, 'Super', 100, '2021-01-07', 7500, 50),
('Trululu piramidal', 997, 'Super', 100, '2021-01-27', 10300, 40),
('Goma chocolores', 998, 'Super', 12, '2021-01-06', 8000, 40);

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
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `provedores` (`provedor_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`cod_factura`) REFERENCES `facturas` (`cod_factura`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
