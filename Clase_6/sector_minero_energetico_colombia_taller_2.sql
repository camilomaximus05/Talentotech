-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2025 a las 13:38:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sector_minero_energetico_colombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidades_energeticas`
--

CREATE TABLE `comunidades_energeticas` (
  `id_comunidad` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `proyecto_asociado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunidades_energeticas`
--

INSERT INTO `comunidades_energeticas` (`id_comunidad`, `nombre`, `descripcion`, `ubicacion`, `proyecto_asociado`) VALUES
(1, 'Comunidad Solar Andes', 'Comunidad que utiliza energía solar', 'Andes', 1),
(2, 'Comunidad Eólica La Guajira', 'Comunidad que utiliza energía eólica', 'La Guajira', 2),
(3, 'Comunidad Biomasa Cauca', 'Comunidad que utiliza energía de biomasa', 'Cauca', 4),
(4, 'Comunidad Geotérmica Nariño', 'Comunidad que utiliza energía geotérmica', 'Nariño', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eficiencia_energetica`
--

CREATE TABLE `eficiencia_energetica` (
  `id_eficiencia` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `tipo_energia_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `kw_h_generado` double DEFAULT NULL,
  `costo_produccion` double DEFAULT NULL,
  `costo_comercializacion` double DEFAULT NULL,
  `tiempos_muertos` int(11) DEFAULT NULL,
  `clima` text DEFAULT NULL,
  `indicador_economico` double DEFAULT NULL,
  `indicador_sociodemografico` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eficiencia_energetica`
--

INSERT INTO `eficiencia_energetica` (`id_eficiencia`, `proyecto_id`, `tipo_energia_id`, `fecha`, `kw_h_generado`, `costo_produccion`, `costo_comercializacion`, `tiempos_muertos`, `clima`, `indicador_economico`, `indicador_sociodemografico`) VALUES
(1, 1, 3, '2022-01-01', 1500, 100000, 5000, 2, 'Soleado', 80, 70),
(2, 1, 3, '2022-01-02', 1520, 101000, 5100, 1, 'Soleado', 81, 71),
(3, 1, 3, '2022-01-03', 1480, 99000, 4900, 3, 'Nublado', 79, 69),
(4, 1, 3, '2022-01-04', 1510, 100500, 5050, 2, 'Soleado', 80.5, 70.5),
(5, 1, 3, '2022-01-05', 1490, 99500, 4975, 2, 'Nublado', 79.5, 69.5),
(6, 1, 3, '2022-01-06', 1505, 100250, 5025, 1, 'Soleado', 80.25, 70.25),
(7, 1, 3, '2022-01-07', 1515, 100750, 5075, 2, 'Nublado', 80.75, 70.75),
(8, 1, 3, '2022-01-08', 1525, 101250, 5125, 3, 'Soleado', 81.25, 71.25),
(9, 1, 3, '2022-01-09', 1485, 99250, 4950, 1, 'Nublado', 79.25, 69.25),
(10, 1, 3, '2022-01-10', 1475, 98750, 4925, 2, 'Soleado', 78.75, 68.75),
(11, 2, 2, '2021-06-01', 2000, 150000, 8000, 1, 'Ventoso', 85, 65),
(12, 2, 2, '2021-06-02', 2020, 151000, 8100, 0, 'Ventoso', 86, 66),
(13, 2, 2, '2021-06-03', 1980, 149000, 7900, 2, 'Lluvioso', 84, 64),
(14, 2, 2, '2021-06-04', 2010, 150500, 8050, 1, 'Ventoso', 85.5, 65.5),
(15, 2, 2, '2021-06-05', 1990, 149500, 7975, 1, 'Lluvioso', 84.5, 64.5),
(16, 2, 2, '2021-06-06', 2005, 150250, 8025, 0, 'Ventoso', 85.25, 65.25),
(17, 2, 2, '2021-06-07', 2015, 150750, 8075, 1, 'Ventoso', 85.75, 65.75),
(18, 2, 2, '2021-06-08', 2025, 151250, 8125, 2, 'Lluvioso', 86.25, 66.25),
(19, 2, 2, '2021-06-09', 1985, 149250, 7950, 0, 'Ventoso', 84.25, 64.25),
(20, 2, 2, '2021-06-10', 1975, 148750, 7925, 1, 'Ventoso', 83.75, 63.75),
(21, 3, 1, '2023-04-01', 1800, 120000, 6000, 3, 'Lluvioso', 75, 72),
(22, 3, 1, '2023-04-02', 1820, 121000, 6100, 2, 'Nublado', 76, 73),
(23, 3, 1, '2023-04-03', 1780, 119000, 5900, 4, 'Lluvioso', 74, 71),
(24, 3, 1, '2023-04-04', 1810, 120500, 6050, 3, 'Soleado', 75.5, 72.5),
(25, 3, 1, '2023-04-05', 1790, 119500, 5975, 3, 'Lluvioso', 74.5, 71.5),
(26, 3, 1, '2023-04-06', 1805, 120250, 6025, 2, 'Nublado', 75.25, 72.25),
(27, 3, 1, '2023-04-07', 1815, 120750, 6075, 3, 'Lluvioso', 75.75, 72.75),
(28, 3, 1, '2023-04-08', 1825, 121250, 6125, 4, 'Soleado', 76.25, 73.25),
(29, 3, 1, '2023-04-09', 1785, 119250, 5950, 2, 'Lluvioso', 74.25, 71.25),
(30, 3, 1, '2023-04-10', 1775, 118750, 5925, 3, 'Nublado', 73.75, 70.75),
(31, 4, 4, '2022-07-01', 1600, 110000, 7000, 0, 'Nublado', 78, 68),
(32, 4, 4, '2022-07-02', 1620, 111000, 7100, 1, 'Soleado', 79, 69),
(33, 4, 4, '2022-07-03', 1580, 109000, 6900, 2, 'Nublado', 77, 67),
(34, 4, 4, '2022-07-04', 1610, 110500, 7050, 1, 'Soleado', 78.5, 68.5),
(35, 4, 4, '2022-07-05', 1590, 109500, 6975, 0, 'Nublado', 77.5, 67.5),
(36, 4, 4, '2022-07-06', 1605, 110250, 7025, 1, 'Soleado', 78.25, 68.25),
(37, 4, 4, '2022-07-07', 1615, 110750, 7075, 2, 'Nublado', 78.75, 68.75),
(38, 4, 4, '2022-07-08', 1625, 111250, 7125, 3, 'Soleado', 79.25, 69.25),
(39, 4, 4, '2022-07-09', 1585, 109250, 6950, 0, 'Nublado', 77.25, 67.25),
(40, 4, 4, '2022-07-10', 1575, 108750, 6925, 1, 'Soleado', 76.75, 66.75),
(41, 5, 5, '2023-02-01', 1700, 130000, 7500, 4, 'Frío', 82, 70),
(42, 5, 5, '2023-02-02', 1720, 131000, 7600, 3, 'Nublado', 83, 71),
(43, 5, 5, '2023-02-03', 1680, 129000, 7400, 5, 'Frío', 81, 69),
(44, 5, 5, '2023-02-04', 1710, 130500, 7550, 4, 'Soleado', 82.5, 70.5),
(45, 5, 5, '2023-02-05', 1690, 129500, 7475, 3, 'Nublado', 81.5, 69.5),
(46, 5, 5, '2023-02-06', 1705, 130250, 7525, 2, 'Frío', 82.25, 70.25),
(47, 5, 5, '2023-02-07', 1715, 130750, 7575, 4, 'Nublado', 82.75, 70.75),
(48, 5, 5, '2023-02-08', 1725, 131250, 7625, 5, 'Soleado', 83.25, 71.25),
(49, 5, 5, '2023-02-09', 1685, 129250, 7450, 3, 'Frío', 81.25, 69.25),
(50, 5, 5, '2023-02-10', 1675, 128750, 7425, 4, 'Nublado', 80.75, 68.75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `industria` text DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresa`, `nombre`, `industria`, `proyecto_id`) VALUES
(1, 'SolarTech', 'Energía Solar', 1),
(2, 'WindPower', 'Energía Eólica', 2),
(3, 'GreenH2', 'Hidrógeno Verde', 3),
(4, 'BioEnergy', 'Biomasa', 4),
(5, 'GeoEnergy', 'Geotermia', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id_estudio` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id_estudio`, `nombre`, `descripcion`, `fecha`, `proyecto_id`) VALUES
(1, 'Estudio de Viabilidad Solar', 'Análisis de viabilidad para la planta solar en Andes', '2021-12-01', 1),
(2, 'Impacto Ambiental Eólico', 'Evaluación del impacto ambiental del parque eólico en La Guajira', '2020-11-01', 2),
(3, 'Producción de Hidrógeno', 'Estudio de métodos de producción de hidrógeno verde', '2022-05-01', 3),
(4, 'Biomasa y Sostenibilidad', 'Análisis de sostenibilidad de la planta de biomasa en Cauca', '2021-09-01', 4),
(5, 'Eficiencia Geotérmica', 'Estudio de eficiencia de la planta geotérmica en Nariño', '2023-03-01', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inversiones`
--

CREATE TABLE `inversiones` (
  `id_inversion` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `fuente` text DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inversiones`
--

INSERT INTO `inversiones` (`id_inversion`, `proyecto_id`, `monto`, `fuente`, `fecha`) VALUES
(1, 1, 1000000, 'Gobierno', '2022-01-01'),
(2, 2, 5000000, 'Privado', '2021-06-01'),
(3, 3, 2000000, 'Gobierno', '2023-04-01'),
(4, 4, 1500000, 'ONG', '2022-07-01'),
(5, 5, 3000000, 'Privado', '2023-02-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigadores`
--

CREATE TABLE `investigadores` (
  `id_investigador` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `apellido` text DEFAULT NULL,
  `especialidad` text DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `investigadores`
--

INSERT INTO `investigadores` (`id_investigador`, `nombre`, `apellido`, `especialidad`, `proyecto_id`) VALUES
(1, 'Juan', 'Pérez', 'Energía Solar', 1),
(2, 'Ana', 'Gómez', 'Energía Eólica', 2),
(3, 'Luis', 'Martínez', 'Hidrógeno Verde', 3),
(4, 'María', 'Rodríguez', 'Biomasa', 4),
(5, 'Carlos', 'López', 'Geotermia', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minerales`
--

CREATE TABLE `minerales` (
  `id_mineral` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text DEFAULT NULL,
  `ubicacion` text DEFAULT NULL,
  `proyecto_asociado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `minerales`
--

INSERT INTO `minerales` (`id_mineral`, `nombre`, `descripcion`, `ubicacion`, `proyecto_asociado`) VALUES
(1, 'Litio', 'Mineral estratégico para baterías', 'Cauca', 1),
(2, 'Cobalto', 'Mineral estratégico para componentes electrónicos', 'Boyacá', 2),
(3, 'Níquel', 'Mineral estratégico para aleaciones metálicas', 'Antioquia', 3),
(4, 'Cobre', 'Mineral estratégico para conductividad eléctrica', 'Chocó', 4),
(5, 'Uranio', 'Mineral estratégico para energía nuclear', 'Guainía', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo_energia` int(11) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `nombre`, `descripcion`, `tipo_energia`, `ubicacion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'Proyecto Solar Andes', 'Desarrollo de una planta de energía solar', 3, 'Andes', '2022-01-01', '2023-01-01'),
(2, 'Parque Eólico La Guajira', 'Generación de energía eólica', 2, 'La Guajira', '2021-05-01', '2022-12-01'),
(3, 'Planta Hidrógeno Verde', 'Producción de hidrógeno verde', 1, 'Cartagena', '2023-03-01', '2024-03-01'),
(4, 'Proyecto Biomasa Cauca', 'Generación de energía a partir de biomasa', 4, 'Cauca', '2022-06-01', '2023-06-01'),
(5, 'Planta Geotérmica Nariño', 'Producción de energía geotérmica', 5, 'Nariño', '2023-01-01', '2024-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_energia`
--

CREATE TABLE `tipos_energia` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_energia`
--

INSERT INTO `tipos_energia` (`id_tipo`, `tipo`) VALUES
(1, 'Hidrógeno Verde'),
(2, 'Eólica'),
(3, 'Solar'),
(4, 'Biomasa'),
(5, 'Geotérmica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comunidades_energeticas`
--
ALTER TABLE `comunidades_energeticas`
  ADD PRIMARY KEY (`id_comunidad`),
  ADD KEY `proyecto_asociado` (`proyecto_asociado`);

--
-- Indices de la tabla `eficiencia_energetica`
--
ALTER TABLE `eficiencia_energetica`
  ADD PRIMARY KEY (`id_eficiencia`),
  ADD KEY `proyecto_id` (`proyecto_id`),
  ADD KEY `tipo_energia_id` (`tipo_energia_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresa`),
  ADD KEY `proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id_estudio`),
  ADD KEY `proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `inversiones`
--
ALTER TABLE `inversiones`
  ADD PRIMARY KEY (`id_inversion`),
  ADD KEY `proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `investigadores`
--
ALTER TABLE `investigadores`
  ADD PRIMARY KEY (`id_investigador`),
  ADD KEY `proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `minerales`
--
ALTER TABLE `minerales`
  ADD PRIMARY KEY (`id_mineral`),
  ADD KEY `proyecto_asociado` (`proyecto_asociado`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `tipo_energia` (`tipo_energia`);

--
-- Indices de la tabla `tipos_energia`
--
ALTER TABLE `tipos_energia`
  ADD PRIMARY KEY (`id_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eficiencia_energetica`
--
ALTER TABLE `eficiencia_energetica`
  MODIFY `id_eficiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id_estudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inversiones`
--
ALTER TABLE `inversiones`
  MODIFY `id_inversion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `investigadores`
--
ALTER TABLE `investigadores`
  MODIFY `id_investigador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `minerales`
--
ALTER TABLE `minerales`
  MODIFY `id_mineral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunidades_energeticas`
--
ALTER TABLE `comunidades_energeticas`
  ADD CONSTRAINT `comunidades_energeticas_ibfk_1` FOREIGN KEY (`proyecto_asociado`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `eficiencia_energetica`
--
ALTER TABLE `eficiencia_energetica`
  ADD CONSTRAINT `eficiencia_energetica_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id_proyecto`),
  ADD CONSTRAINT `eficiencia_energetica_ibfk_2` FOREIGN KEY (`tipo_energia_id`) REFERENCES `tipos_energia` (`id_tipo`);

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD CONSTRAINT `estudios_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `inversiones`
--
ALTER TABLE `inversiones`
  ADD CONSTRAINT `inversiones_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `investigadores`
--
ALTER TABLE `investigadores`
  ADD CONSTRAINT `investigadores_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `minerales`
--
ALTER TABLE `minerales`
  ADD CONSTRAINT `minerales_ibfk_1` FOREIGN KEY (`proyecto_asociado`) REFERENCES `proyectos` (`id_proyecto`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`tipo_energia`) REFERENCES `tipos_energia` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
