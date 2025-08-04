-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2025 a las 12:19:47
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
-- Base de datos: `juego_carta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `id_Carta` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `fuerza` int(11) NOT NULL,
  `velocidad` int(11) NOT NULL,
  `sigilo` int(11) NOT NULL,
  `resistencia` int(11) NOT NULL,
  `sabiduria` int(11) NOT NULL,
  `curacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`id_Carta`, `nombre`, `numero`, `fuerza`, `velocidad`, `sigilo`, `resistencia`, `sabiduria`, `curacion`) VALUES
(1, 'Montrix', '1A', 342, 158, 76, 299, 467, 53),
(3, 'Pumex', '1B', 129, 207, 312, 410, 3, 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartas_mano`
--

CREATE TABLE `cartas_mano` (
  `id_Mazo` int(11) NOT NULL,
  `id_Carta` int(11) NOT NULL,
  `id_UsuSala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `id_Partida` int(11) NOT NULL,
  `id_Sala` int(11) NOT NULL,
  `nro_Partida` int(11) DEFAULT NULL,
  `id_UsuSala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_Sala` int(11) NOT NULL,
  `fecha_Inicio` date NOT NULL,
  `fecha_Fin` date NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_Sala`, `fecha_Inicio`, `fecha_Fin`, `estado`) VALUES
(1, '2025-08-03', '0000-00-00', 'activa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaio_sala`
--

CREATE TABLE `usuaio_sala` (
  `id_usuSala` int(11) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `id_Sala` int(11) NOT NULL,
  `puntosTotales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_sala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_Usuario`, `nombre`, `id_sala`) VALUES
(1, 'carol', 1),
(2, 'luisa', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`id_Carta`);

--
-- Indices de la tabla `cartas_mano`
--
ALTER TABLE `cartas_mano`
  ADD PRIMARY KEY (`id_Mazo`),
  ADD KEY `id_Carta` (`id_Carta`),
  ADD KEY `id_UsuSala` (`id_UsuSala`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`id_Partida`),
  ADD KEY `id_Sala` (`id_Sala`),
  ADD KEY `id_UsuSala` (`id_UsuSala`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_Sala`);

--
-- Indices de la tabla `usuaio_sala`
--
ALTER TABLE `usuaio_sala`
  ADD PRIMARY KEY (`id_usuSala`),
  ADD KEY `id_Usuario` (`id_Usuario`),
  ADD KEY `id_Sala` (`id_Sala`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD KEY `fk_usuario_sala` (`id_sala`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `id_Carta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cartas_mano`
--
ALTER TABLE `cartas_mano`
  MODIFY `id_Mazo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `id_Partida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_Sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuaio_sala`
--
ALTER TABLE `usuaio_sala`
  MODIFY `id_usuSala` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cartas_mano`
--
ALTER TABLE `cartas_mano`
  ADD CONSTRAINT `cartas_mano_ibfk_1` FOREIGN KEY (`id_Carta`) REFERENCES `carta` (`id_Carta`),
  ADD CONSTRAINT `cartas_mano_ibfk_2` FOREIGN KEY (`id_UsuSala`) REFERENCES `usuaio_sala` (`id_usuSala`);

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `partidas_ibfk_1` FOREIGN KEY (`id_Sala`) REFERENCES `sala` (`id_Sala`),
  ADD CONSTRAINT `partidas_ibfk_2` FOREIGN KEY (`id_UsuSala`) REFERENCES `usuaio_sala` (`id_usuSala`);

--
-- Filtros para la tabla `usuaio_sala`
--
ALTER TABLE `usuaio_sala`
  ADD CONSTRAINT `usuaio_sala_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id_Usuario`),
  ADD CONSTRAINT `usuaio_sala_ibfk_2` FOREIGN KEY (`id_Sala`) REFERENCES `sala` (`id_Sala`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_sala` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_Sala`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
