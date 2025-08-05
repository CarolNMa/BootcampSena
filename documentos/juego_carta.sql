-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
<<<<<<< HEAD
-- Tiempo de generación: 04-08-2025 a las 12:19:47
=======
-- Tiempo de generación: 04-08-2025 a las 22:17:21
>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070
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
<<<<<<< HEAD
  `curacion` int(11) NOT NULL
=======
  `curacion` int(11) NOT NULL,
  `imgUrl` varchar(400) NOT NULL
>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carta`
--

<<<<<<< HEAD
INSERT INTO `carta` (`id_Carta`, `nombre`, `numero`, `fuerza`, `velocidad`, `sigilo`, `resistencia`, `sabiduria`, `curacion`) VALUES
(1, 'Montrix', '1A', 342, 158, 76, 299, 467, 53),
(3, 'Pumex', '1B', 129, 207, 312, 410, 3, 88);
=======
INSERT INTO `carta` (`id_Carta`, `nombre`, `numero`, `fuerza`, `velocidad`, `sigilo`, `resistencia`, `sabiduria`, `curacion`, `imgUrl`) VALUES
(1, 'MONTRIX', '1A', 342, 158, 76, 299, 467, 53, 'https://cdnb.artstation.com/p/assets/images/images/030/505/029/large/brent-hollowell-boarkdude.jpg?1600804392'),
(2, 'PUMEX', '1B', 129, 207, 312, 410, 3, 88, 'https://preview.redd.it/what-is-the-connection-between-moby-dick-and-the-kraken-v0-1409j2s322pb1.jpg?width=640&crop=smart&auto=webp&s=1a2df10de3315547ac4eab3415de74dba4a6daa3'),
(3, 'FENIX', '1C', 457, 488, 20, 430, 18, 249, 'https://m.media-amazon.com/images/I/61W6BB2g1NL._AC_SX679_.jpg'),
(4, 'GRIFF', '1D', 85, 93, 456, 141, 267, 17, 'https://noelalvarezcamargo.wordpress.com/wp-content/uploads/2019/11/animal-mitologico.jpg'),
(5, 'SPHINX', '1E', 71, 336, 99, 60, 241, 491, 'https://i.pinimg.com/1200x/c2/b4/f3/c2b4f332305d5dd27c468bad4d63f3d9.jpg'),
(6, 'FIRECK', '1F', 110, 274, 33, 82, 108, 311, 'https://external-preview.redd.it/Ya2oEJVJF6-VJjb1Ab5cDRkXswK7-F_sVCCzPzt4prU.jpg?width=640&crop=smart&auto=webp&s=69bf52f5c98bcfe9392c947f3738bb945c3333f4'),
(7, 'MERMAID', '1G', 376, 25, 402, 209, 385, 390, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/sirena.jpg'),
(8, 'HIDRAM', '1H', 154, 499, 186, 495, 72, 14, 'https://static.wixstatic.com/media/e152cd_b10fa80082f04058acd56dbbead92794~mv2.jpg'),
(9, 'ROGLEM', '2A', 37, 278, 291, 199, 338, 158, 'https://wiki.alexissmolensk.com/images/f/ff/Stone_Golem.jpg'),
(10, 'CECAELIA', '2B', 294, 223, 144, 484, 328, 233, 'https://www.seresmitologicos.net/wp-content/uploads/2018/06/cecaelia.jpg'),
(11, 'FIRUNTER', '2C', 118, 291, 368, 366, 420, 389, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/cancerbero.jpg'),
(12, 'STYRGE', '2D', 241, 172, 474, 45, 413, 283, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/estirge_acechando.jpg'),
(13, 'HARPY', '2E', 462, 354, 134, 379, 325, 295, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/harpia.jpg'),
(14, 'FRODOG', '2F', 413, 19, 95, 238, 176, 436, 'https://png.pngtree.com/background/20250201/original/pngtree-showing-wolf-head-in-flames-with-white-fire-high-quality-and-picture-image_15795687.jpg'),
(15, 'LEVIATHAN', '2G', 166, 452, 481, 56, 109, 311, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/leviatanes.jpg'),
(16, 'BASILISK', '2H', 458, 307, 162, 258, 5, 451, 'https://www.seresmitologicos.net/wp-content/uploads/2018/06/basilisco.jpg'),
(17, 'CENTAUR', '3A', 212, 440, 397, 497, 202, 191, 'https://images.nightcafe.studio/ik-seo/jobs/fpoN8Dt4UDz5bZMAWBLd/fpoN8Dt4UDz5bZMAWBLd--1--wztil/the-centaur.jpg?tr=w-1600,c-at_max'),
(18, 'HIPOCAMPO', '3B', 303, 97, 107, 336, 152, 113, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/hipocampo_unicornio.jpg'),
(19, 'CHAN', '3C', 123, 372, 320, 260, 429, 478, 'https://cines.com/files/2016/07/legion-ardiente.jpg'),
(20, 'LAMASU', '3D', 60, 120, 489, 253, 164, 305, 'https://www.seresmitologicos.net/wp-content/uploads/2011/11/lamassu.jpg'),
(21, 'HIPPOGRIFF', '3E', 338, 61, 80, 187, 95, 102, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/hipogrifo.jpg'),
(22, 'MANTICORE', '4D', 489, 410, 59, 116, 251, 183, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/manticora_horizonte.jpg'),
(23, 'CARNICAL', '4C', 450, 342, 431, 304, 65, 222, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgVM3r4nV_uNGy_gIPUrJHMQf4MnhJNMizt_NLOEC7zh9SAGFvcFlXW5q5sf326q2yeIsrk-rRNuKZ5yzXW6qLGBM8S4lH0KAcMU0OJ5aOZviO0YlOwEphqsDiGdtcNdTpUf-rdH3wszRY/s1600/1263267-bigthumbnail.jpg'),
(24, 'CTHULHU', '4B', 414, 8, 113, 288, 254, 382, 'https://miro.medium.com/v2/resize:fill:1063:559/g:fp:0.51:0.27/1*boQ1WFXoBGTAnwyfwy5oLA.jpeg'),
(25, 'ELF', '4A', 324, 399, 456, 177, 98, 144, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/elfos-con-arco.jpg'),
(26, 'ENT', '4H', 222, 437, 405, 225, 486, 398, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/ent.jpg'),
(27, 'MURIBI', '4G', 232, 350, 474, 331, 409, 64, 'https://academiaplay.net/wp-content/uploads/2018/06/web-mark-williams-sea-monster.jpg'),
(28, 'KHALKOTAU', '4F', 301, 281, 301, 189, 57, 154, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg96JITuc5c7mDUJPUzpo0idZEhHrcFBkt-Ej5JEjrcbrq3UM5W1tqxtwoepFVpeDGNbARcQiT9uWpkoNkU_Mlch9PRMiS0VnWju9UtnRMhhjnkqXNwIctdnhsDAgzfvZvlYaIB1i92Ll8/s1600/dragon.jpg'),
(29, 'PEGASUS', '4E', 24, 163, 228, 73, 433, 339, 'https://media.istockphoto.com/id/857493884/es/foto/pegasus.jpg?s=612x612&w=0&k=20&c=uGnQ5S6-UGXxv7sd3qIdhS86NWBpGq90kmnkgtcFUPc='),
(30, 'NAGA', '5A', 284, 160, 460, 391, 211, 420, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/naga.jpg'),
(31, 'GORGON', '5H', 369, 296, 217, 321, 469, 268, 'https://diosesytitanesgriegos.com/wp-content/uploads/2023/12/gorgona2.jpg'),
(32, 'SEALKIES', '5G', 53, 71, 111, 407, 84, 270, 'https://i.pinimg.com/736x/86/8b/b2/868bb2f7c1b55ac257c9790cdc6ba0eb.jpg'),
(33, 'DRAGONS', '5F', 83, 433, 260, 101, 368, 479, 'https://artfiles.alphacoders.com/520/52050.jpg'),
(34, 'SILFIDE', '5E', 343, 416, 310, 250, 310, 473, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/silfide.jpg'),
(35, 'WYVERN', '6D', 236, 435, 125, 176, 457, 435, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/wyvern_pescando.jpg'),
(36, 'CHIMER', '6C', 112, 383, 366, 292, 115, 182, 'https://scontent.feoh2-1.fna.fbcdn.net/v/t1.6435-9/125785701_842973949806145_691615955156061913_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_ohc=gO0wACQvYA4Q7kNvwFSYQx3&_nc_oc=AdkJ3YeWxZ9UASqNpAWvlHbRzujETxGqL3nF47jQoQwt2WRQxLfpxcYJ675rG3Rf71Q&_nc_zt=23&_nc_ht=scontent.feoh2-1.fna&_nc_gid=pbsJzofr1Y6TADb97NXF5Q&oh=00_AfVNo8E65288vwKsLeZoBOuNVA8LERpEGalRITmpW1XkKQ&oe=68B89096'),
(37, 'ASRAI', '6B', 351, 294, 149, 111, 93, 247, 'https://i.pinimg.com/1200x/a0/d7/3e/a0d73e1c8166915f79c351c56c5b105e.jpg'),
(38, 'TROLL', '6A', 198, 218, 281, 321, 156, 176, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/troll.jpg'),
(39, 'LYCANTHROPE', '6H', 86, 348, 118, 490, 397, 371, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/licantropo.jpg'),
(40, 'MIRROWS', '6G', 408, 313, 383, 196, 446, 267, 'https://scontent.feoh2-1.fna.fbcdn.net/v/t39.30808-6/465035776_8493728440681713_620582178023033585_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=0b6b33&_nc_ohc=oelgBgVlb28Q7kNvwEahKrW&_nc_oc=AdlO6InsNyadDdE-wInbSyDG2H68MqAwKSR07qjXVG4HX31Kv8bmpGuqYdAKtXJF2LM&_nc_zt=23&_nc_ht=scontent.feoh2-1.fna&_nc_gid=XltJHvC7YxloFRU9MnmEgA&oh=00_AfV8M6emRK6wM5FIldawT9qmrMly1g5Qn6T6K3K7UxhakQ&oe=6896E7F3'),
(41, 'POTÑEF', '6F', 168, 382, 341, 69, 290, 292, 'https://c.wallhere.com/photos/60/2e/1920x1080_px_art_Character_Devil_fire_lord_monster_movie-1662611.jpg!d'),
(42, 'GINOSFINGE', '6E', 406, 127, 217, 70, 471, 164, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/ginoesfinge.jpg'),
(43, 'FYLGIAR', '7D', 167, 266, 420, 363, 215, 59, 'https://scontent.feoh2-1.fna.fbcdn.net/v/t1.6435-9/103842137_1193708584326122_4722320655937976700_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=833d8c&_nc_ohc=IOsKIVaTwLMQ7kNvwGWAmht&_nc_oc=AdlHYCL7-k2SA2SYnPjA8KKFqcXLTwwX-lY4m0dHhEBrOdBWnAplpRhQFyztBsRerGI&_nc_zt=23&_nc_ht=scontent.feoh2-1.fna&_nc_gid=dPKarWurd9m4-h3bEvX-8A&oh=00_AfUbreUQVzuJASPHBO5bNVEAfDSEmnVamf-rueeBwsnhTg&oe=68B86FF3'),
(44, 'HIDRIX', '7C', 399, 90, 174, 197, 382, 267, 'https://periodicobanderaroja.com/wp-content/uploads/2020/10/hidra-escupiendo-fuego.jpg'),
(45, 'WAELVES', '7B', 456, 450, 123, 63, 327, 497, 'https://i0.wp.com/25.media.tumblr.com/tumblr_m50e9jKUKP1rxt566o3_1280.jpg'),
(46, 'MINOTAUR', '7A', 97, 77, 245, 244, 174, 216, 'https://www.seresmitologicos.net/wp-content/uploads/2011/08/minotauro.jpg'),
(47, 'UNICORN', '7H', 379, 180, 294, 282, 425, 376, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/unicornio.jpg'),
(48, 'WATROLLS', '7G', 149, 176, 169, 361, 366, 162, 'https://i.pinimg.com/1200x/05/99/a3/0599a39e89fa15f204fd215c44f2eb0f.jpg'),
(49, 'DEMONFIX', '7F', 93, 416, 96, 487, 91, 387, 'https://wp-s.ru/wallpapers/16/3/470637641424566/la-batalla-de-los-dioses-del-aire-y-del-fuego.jpg'),
(50, 'SILFOS', '7E', 366, 84, 165, 74, 317, 106, 'https://img.wattpad.com/a2047b142c5468cbdc7273e82993072ed0d31ea9/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f62574e625f30365f37794f7654673d3d2d3138333130353535332e313665613330363932396232653261623334303330393836333337332e6a7067?s=fit&w=720&h=720'),
(51, 'ASHWINDERS', '3F', 496, 228, 212, 480, 13, 217, 'https://i.pinimg.com/736x/5e/56/f0/5e56f08bdcef2fc7da707a18d3fae494.jpg'),
(52, 'UNDINE', '3G', 45, 312, 229, 224, 398, 368, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/ondina.jpg'),
(53, 'DRYAD', '3H', 204, 414, 439, 402, 224, 329, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/driada.jpg'),
(54, 'NYMPHS', '5B', 416, 499, 327, 356, 149, 281, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/ninfa.jpg'),
(55, 'DOMLS', '5C', 287, 116, 417, 213, 259, 232, 'https://i.pinimg.com/236x/08/51/45/085145d34c731261b80291ede7aa0d66.jpg'),
(56, 'ROC', '5D', 407, 132, 351, 20, 446, 226, 'https://www.seresmitologicos.net/wp-content/uploads/2011/05/roc.jpg');
>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070

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
<<<<<<< HEAD
(1, '2025-08-03', '0000-00-00', 'activa');
=======
(1, '2025-08-04', '0000-00-00', 'activa');
>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070

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
<<<<<<< HEAD
(1, 'carol', 1),
(2, 'luisa', 1);
=======
(1, 'diego', 1),
(2, 'suaza', 1);
>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070

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
<<<<<<< HEAD
  MODIFY `id_Carta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
=======
  MODIFY `id_Carta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070

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
