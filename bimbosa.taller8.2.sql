-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2025 a las 05:57:23
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
-- Base de datos: `bimbosa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bd_empleados_retirados`
--

CREATE TABLE `bd_empleados_retirados` (
  `id_empleados` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `salario` float DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bd_empleados_retirados`
--

INSERT INTO `bd_empleados_retirados` (`id_empleados`, `nombre`, `edad`, `salario`, `cargo`, `departamento`, `cedula`) VALUES
(1, 'Juan Pérez', 30, 2500.5, 'Operario', 'Producción', 123456789),
(2, 'María Gómez', 40, 3500.75, 'Vendedora', 'Ventas', 987654321),
(3, 'Carlos Rodríguez', 33, 4500.6, 'Supervisor', 'Logística', 112233445),
(4, 'Ana Martínez', 29, 2800, 'Auxiliar RH', 'Recursos Humanos', 998877665),
(5, 'Luis Fernández', 35, 5000, 'Gerente', 'Marketing', 556677889),
(6, 'Sofia López', 28, 2200.45, 'Operaria', 'Producción', 223344556),
(7, 'Miguel Sánchez', 45, 5500.8, 'Coordinador', 'Logística', 778899001),
(8, 'Laura Díaz', 32, 3800.2, 'Asistente de Ventas', 'Ventas', 334455667),
(9, 'Pedro Jiménez', 38, 4300.9, 'Analista', 'IT', 443322110),
(10, 'Raul Torres', 26, 3200.1, 'Recepcionista', 'Administración', 667788223),
(11, 'Carmen Sánchez', 31, 4900.6, 'Ejecutiva', 'Ventas', 112233998),
(12, 'José López', 27, 3100.5, 'Auxiliar', 'Finanzas', 223344778),
(13, 'Marta Pérez', 37, 5000.3, 'Gerente de Ventas', 'Ventas', 998877112),
(14, 'Francisco González', 34, 4600.75, 'Supervisor', 'Logística', 334455998),
(15, 'Isabel Ruiz', 29, 3400.5, 'Asistente Administrativo', 'Recursos Humanos', 445566789),
(16, 'Victor Hernández', 42, 5500.8, 'Jefe de Producción', 'Producción', 889900112),
(17, 'Sandra Martín', 33, 4300.9, 'Coordinadora', 'Marketing', 556677223),
(18, 'Carlos Gómez', 28, 3500.2, 'Consultor', 'IT', 112233445),
(19, 'Lucía Ramírez', 40, 4800.1, 'Director de Ventas', 'Ventas', 223344110),
(20, 'Javier López', 39, 4700.6, 'Operativo', 'Producción', 334455778),
(21, 'Patricia Rodríguez', 30, 3800.4, 'Analista Financiero', 'Finanzas', 667788112),
(22, 'Raquel Silva', 27, 3000.8, 'Técnico', 'Producción', 223344667),
(23, 'Alberto Martínez', 36, 5300, 'Director de Recursos Humanos', 'Recursos Humanos', 334455990),
(24, 'Elena García', 31, 4000.3, 'Vendedora', 'Ventas', 334455990),
(25, 'Rafael Díaz', 34, 4900.1, 'Supervisor', 'Logística', 778899004),
(26, 'Paula Gómez', 29, 4200.9, 'Analista de Marketing', 'Marketing', 223344889),
(27, 'Juan Carlos Hernández', 40, 5500.5, 'Jefe de IT', 'IT', 334455111),
(28, 'Gloria Fernández', 26, 2700.2, 'Auxiliar', 'Recursos Humanos', 445566667),
(29, 'Diego Pérez', 32, 4300, 'Asistente Administrativo', 'Producción', 556677998),
(30, 'Juliana García', 35, 4700.8, 'Director de Marketing', 'Marketing', 564515455),
(31, 'Andrés López', 41, 5200.9, 'Jefe de Ventas', 'Ventas', 454545445);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bd_empleados_retirados`
--
ALTER TABLE `bd_empleados_retirados`
  ADD PRIMARY KEY (`id_empleados`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bd_empleados_retirados`
--
ALTER TABLE `bd_empleados_retirados`
  MODIFY `id_empleados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
