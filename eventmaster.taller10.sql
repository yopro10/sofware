-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2025 a las 05:01:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventmaster`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `correo`, `telefono`) VALUES
(1, 'Ana López', 'ana@gmail.com', '3214567890'),
(2, 'Carlos Pérez', 'carlos@gmail.com', '3001234567'),
(3, 'María García', 'maria@gmail.com', '3127894561'),
(4, 'Luis Rodríguez', 'luis@gmail.com', '3156547891'),
(5, 'Sofía Ramírez', 'sofia@gmail.com', '3182223344'),
(6, 'Diego Torres', 'diego@gmail.com', '3001112233'),
(7, 'Valentina Cruz', 'valentina@gmail.com', '3019876543'),
(8, 'Javier Moreno', 'javier@gmail.com', '3105556667'),
(9, 'Camila Herrera', 'camila@gmail.com', '3134445566'),
(10, 'Mateo Gómez', 'mateo@gmail.com', '3161239870');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `capacidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `nombre`, `fecha`, `capacidad`, `precio`) VALUES
(1, 'Concierto Rock', '2025-05-20', 500, 150000.00),
(2, 'Feria Tecnológica', '2025-06-10', 300, 80000.00),
(3, 'Obra de Teatro', '2025-04-25', 200, 100000.00),
(4, 'Festival de Jazz', '2025-07-01', 400, 120000.00),
(5, 'Torneo de eSports', '2025-05-05', 250, 90000.00),
(6, 'Conferencia de Negocios', '2025-08-15', 350, 200000.00),
(7, 'Exposición de Arte', '2025-05-30', 150, 70000.00),
(8, 'Stand-up Comedy', '2025-06-20', 180, 110000.00),
(9, 'Festival Gastronómico', '2025-07-10', 600, 60000.00),
(10, 'Concierto Pop', '2025-06-05', 450, 140000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `cantidad_boletos` int(11) NOT NULL,
  `total_pago` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_evento`, `id_cliente`, `cantidad_boletos`, `total_pago`) VALUES
(1, 1, 1, 2, 300000.00),
(2, 2, 2, 1, 80000.00),
(3, 3, 3, 3, 300000.00),
(4, 4, 4, 4, 240000.00),
(5, 5, 5, 5, 360000.00),
(6, 6, 6, 6, 200000.00),
(7, 7, 7, 7, 140000.00),
(8, 8, 8, 8, 110000.00),
(9, 9, 9, 9, 300000.00),
(10, 10, 10, 10, 420000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
