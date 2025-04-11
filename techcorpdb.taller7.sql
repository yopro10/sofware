-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2025 a las 05:45:55
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
-- Base de datos: `techcorpdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `nombre`, `ubicacion`) VALUES
(1, 'Recursos Humanos', 'Madrid'),
(2, 'Finanzas', 'Barcelona'),
(3, 'Marketing', 'Valencia'),
(4, 'Tecnología', 'Sevilla'),
(5, 'Ventas', 'Bilbao'),
(6, 'Atención al Cliente', 'Alicante'),
(7, 'Legal', 'Madrid'),
(8, 'Producción', 'Zaragoza'),
(9, 'Investigación y Desarrollo', 'Castellón'),
(10, 'Logística', 'Granada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `cargo` varchar(80) DEFAULT NULL,
  `salario` decimal(12,3) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `cargo`, `salario`, `id_departamento`) VALUES
(1, 'Carlos Perez', 'Gerente de Recursos Humanos', 5500000.000, 1),
(2, 'Ana Gomez', 'Analista Financiero', 4800000.000, 2),
(3, 'Miguel Torres', 'Ejecutivo de Marketing', 4200000.000, 3),
(4, 'Laura Sanchez', 'Desarrollador Senior', 6000000.000, 4),
(5, 'David Ramirez', 'Vendedor', 3500000.000, 5),
(6, 'andres', 'gerente', 4000000.000, 2),
(7, 'Javier Lopez', 'Abogado Corporativo', 5800000.000, 7),
(8, 'Elena Castro', 'Supervisor de Produccion', 5000000.000, 8),
(9, 'Ricardo Diaz', 'Investigador', 6200000.000, 9),
(10, 'Maria Fernandez', 'Coordinadora de Logistica', 4000000.000, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `presupuesto` decimal(15,2) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `nombre`, `presupuesto`, `id_departamento`) VALUES
(1, 'Reclutamiento 2025', 3000000.00, 1),
(2, 'Optimización Financiera', 8500000.00, 2),
(3, 'Campaña Publicitaria Verano', 5000000.00, 3),
(4, 'Nueva Plataforma Web', 12000000.00, 4),
(5, 'Expansion Comercial', 9000000.00, 5),
(6, 'Automatizacion de Respuestas', 4500000.00, 6),
(7, 'Regulacion y Cumplimiento', 7000000.00, 7),
(8, 'Modernizacion de Equipos', 11000000.00, 8),
(9, 'Desarrollo de Nuevo Producto', 15000000.00, 9),
(10, 'Optimizacion de Rutas Logisticas', 9500000.00, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
