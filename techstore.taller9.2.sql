-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2025 a las 19:33:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `techstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `stock`) VALUES
(1, 'Laptop Dell XPS 13', 200000.00, 50),
(2, 'iPhone 13 ', 300000.00, 100),
(3, 'Tablet iPad Pro 12.9\"', 10000.00, 30),
(4, 'tarjeta gráfica GTX 1650', 150000.00, 75),
(5, 'Impresora HP LaserJet Pro M404n', 145000.00, 20),
(6, 'Monitor LG 27UL850-W', 140500.00, 40),
(7, 'Teclado mecánico Logitech G Pro X', 451200.00, 60),
(8, 'Ratón inalámbrico Logitech MX Master 3', 102000.00, 80),
(9, 'Disco duro externo Seagate Backup Plus 4TB', 520171.00, 25),
(10, 'Memoria USB SanDisk Ultra 256GB', 578400.00, 120),
(11, 'Cámara web Logitech C920s', 520000.00, 90),
(13, 'Router WiFi 6 Netgear Nighthawk AX8', 154200.00, 55),
(14, 'Silla de oficina Herman Miller Aeron', 500200.00, 10),
(15, 'Mochila para portátil Thule Crossover 2', 200000.00, 45),
(16, 'Laptop Lenovo', 3200000.00, 10),
(17, 'Parlantes', 5000000.00, 9),
(18, 'Mouse', 2000000.00, 2),
(19, 'Teclado', 1000000.00, 3),
(20, 'Monitor', 3500000.00, 7),
(21, 'Televisor Samsung 55', 2200000.00, 15),
(22, 'Teclado Mecánico RGB', 2000000.00, 30),
(23, 'Monitor 24\"', 120000.00, 30),
(24, 'Camara web Full HD', 150000.00, 60),
(25, 'Disco duro externo 1TB', 100000.00, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_producto`, `cantidad`, `fecha`) VALUES
(1, 2, 10, '2024-01-10'),
(2, 1, 5, '2024-02-15'),
(3, 5, 8, '2024-03-20'),
(4, 1, 15, '2024-04-25'),
(5, 3, 12, '2024-05-05'),
(6, 4, 3, '2024-06-10'),
(7, 2, 7, '2024-06-15'),
(8, 5, 10, '2024-07-01'),
(9, 3, 6, '2024-07-10'),
(10, 1, 20, '2024-08-05'),
(11, 2, 4, '2024-08-10'),
(12, 5, 18, '2024-09-01'),
(13, 1, 8, '2024-09-15'),
(14, 3, 5, '2024-09-25'),
(15, 4, 12, '2024-10-10'),
(16, 2, 9, '2024-10-15'),
(17, 5, 11, '2024-11-01'),
(18, 1, 10, '2024-11-15'),
(19, 3, 13, '2024-12-01'),
(20, 4, 5, '2024-12-10'),
(21, 2, 15, '2024-12-15'),
(22, 5, 6, '2024-12-20'),
(23, 1, 7, '2024-12-25'),
(24, 4, 8, '2024-12-30'),
(25, 3, 10, '2025-01-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
