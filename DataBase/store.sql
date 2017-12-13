-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2017 a las 22:47:36
-- Versión del servidor: 5.7.20-log
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Nombre`, `Clave`) VALUES
('alfredo', '3b24fa7e14555a1912e5bc2198f8e075');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('A1', 'Mochila', 'Consiste en un equipaje que puede llevarse en la espalda'),
('A2', 'Lonchera', 'Cubre las necesidades nutricionales.'),
('A3', 'Lapiceras', 'Adecuando para guardar tus artículos'),
('A4', 'Bolsas', 'Se puede llevar a mano o colgado de un hombro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('1234-123-123-123', 'alfredo', 'alfredo', 'alvarez', '3b24fa7e14555a1912e5bc2198f8e075', 'ixtapaluca', 23459867, 'alfredo@gimail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`) VALUES
(5, '0012', 1),
(5, '0014', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`) VALUES
('0012', 'jansX', 'A1', '548.00', '54', 'JanSport', 1, '000125', 'jans1.jpg', 'alfredo'),
('0013', 'jansL', 'A1', '694.00', '34', 'JanSport', 4, '000125', 'jans2.jpg', 'alfredo'),
('0014', 'jansP', 'A1', '345.00', '64', 'JanSport', 5, '000125', 'jans3.jpg', 'alfredo'),
('0015', 'jansÑ', 'A1', '754.00', '89', 'JanSport', 7, '000125', 'jans4.jpg', 'alfredo'),
('0112', 'nikeR', 'A1', '786.00', '67', 'nike', 4, '000123', 'nike1.jpg', 'alfredo'),
('0113', 'nikeQ', 'A1', '987.00', '00', 'nike', 9, '000123', 'nike2.jpg', 'alfredo'),
('0114', 'nikeM', 'A1', '869.00', '09', 'nike', 10, '000123', 'nike3.jpg', 'alfredo'),
('0115', 'nikeE', 'A1', '945.00', '87', 'nike', 11, '000123', 'nike4.jpg', 'alfredo'),
('0123', 'pumaS', 'A1', '678.00', '086', 'puma', 3, '000124', 'puma1.jpg', 'alfredo'),
('0124', 'pumaJ', 'A1', '900.00', '58', 'puma', 12, '000124', 'puma2.jpg', 'alfredo'),
('0125', 'pumaH', 'A1', '986.00', '04', 'puma', 5, '000124', 'puma3.jpg', 'alfredo'),
('0126', 'pumaG', 'A1', '999.00', '45', 'puma', 14, '000124', 'puma4.jpg', 'alfredo'),
('0921', 'vansL', 'A3', '345.00', '657', 'vans', 5, '000126', 'vans1.jpg', 'alfredo'),
('0923', 'jansBOL', 'A4', '567.00', '786', 'JanSport', 8, '000125', 'bolsojans.jpg', 'alfredo'),
('0932', 'pumaLO', 'A2', '897.00', '456', 'puma', 2, '000124', 'lochpuma.jpg', 'alfredo'),
('0947', 'vansBOL', 'A4', '958.00', '845', 'vans', 7, '000126', 'bolsovans.jpg', 'alfredo'),
('1111', 'vansI', 'A1', '985.00', '35', 'vans', 2, '000126', 'vans1.jpg', 'alfredo'),
('1112', 'vansW', 'A1', '756.00', '88', 'vans', 9, '000126', 'vans2.JPG', 'alfredo'),
('1113', 'vansZ', 'A1', '568.00', '84', 'vans', 12, '000126', 'vans3.jpg', 'alfredo'),
('1114', 'vansT', 'A1', '899.00', '56', 'vans', 1, '000126', 'vans4.jpg', 'alfredo'),
('1222', 'lapicera', 'A3', '432.00', '63', 'nike', 2, '000123', 'lnike.jpg', 'alfredo'),
('1223', 'pumaL', 'A3', '234.00', '65', 'puma', 9, '000124', 'lpuma.jpg', 'alfredo'),
('2345', 'vansLO', 'A2', '678.00', '093', 'vans', 3, '000126', 'lochvans.jpg', 'alfredo'),
('3922', 'converseL', 'A3', '543.00', '679', 'converse', 32, '000127', 'converse1.jpg', 'alfredo'),
('8745', 'converseBOL', 'A4', '900.00', '562', 'converse', 15, '000127', 'bolsoconverse.jpg', 'alfredo'),
('9322', 'nikeBOL', 'A4', '987.00', '567', 'nike', 5, '000123', 'bolsonike.jpg', 'alfredo'),
('9347', 'pumaBOL', 'A4', '956.00', '569', 'puma', 4, '000124', 'bolsopuma.jpg', 'alfredo'),
('9374', 'nikeLO', 'A2', '456.00', '345', 'nike', 3, '000123', 'lochnike.jpg', 'alfredo'),
('9834', 'jansLO', 'A2', '678.00', '564', 'JanSport', 22, '000125', 'índice.jpg', 'alfredo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('000123', 'Nike', 'Minato, Tokio, Japón', 22596485, 'www.nike.com'),
('000124', 'Puma', 'Taoyuan, Taiwán, (República de China)', 25987456, 'www.puma.com'),
('000125', 'JanSport', 'Huizhou, Guangdong, China', 25698745, 'www.sony.com'),
('000126', 'Vans', 'Houston, Texas, EE.UU', 24569875, 'www.vans.com'),
('000127', 'Converse', 'Huizhou, Guangdong, China', 22596409, 'www.converse.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `Descuento` int(20) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `Descuento`, `TotalPagar`, `Estado`) VALUES
(5, '12-11-2017', '1234-123-123-123', 0, '893.00', 'Pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CodigoProd`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_8` FOREIGN KEY (`CodigoProd`) REFERENCES `producto` (`CodigoProd`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_9` FOREIGN KEY (`Nombre`) REFERENCES `administrador` (`Nombre`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
