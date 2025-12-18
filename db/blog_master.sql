-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-12-2025 a las 11:10:27
-- Versión del servidor: 8.4.7
-- Versión de PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Acción'),
(2, 'Rol'),
(3, 'Deportes'),
(6, 'Rol / RPG'),
(7, 'Indie'),
(8, 'Terror'),
(9, 'Estrategia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

DROP TABLE IF EXISTS `entradas`;
CREATE TABLE IF NOT EXISTS `entradas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8mb4_unicode_ci,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_entrada_usuario` (`usuario_id`),
  KEY `fk_entrada_categoria` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `usuario_id`, `categoria_id`, `titulo`, `descripcion`, `fecha`) VALUES
(21, 10, 1, 'GTA VI: Análisis completo del tráiler y fecha de lanzamiento', 'Por fin tenemos detalles oficiales sobre la vuelta a Vice City. En este artículo analizamos frame a frame el nuevo motor gráfico de Rockstar, la física del agua y la densidad de población. Se espera que el mapa sea tres veces más grande que el de GTA V, incluyendo zonas de pantanos y cayos. La historia de Lucía y Jason promete ser un drama criminal al estilo Bonnie y Clyde moderno. ¿Estará el hardware actual preparado para este nivel de detalle?', '2025-12-18'),
(23, 10, 6, 'Final Fantasy VII Rebirth: ¿El mejor RPG de la década?', 'Square Enix ha vuelto a hacerlo. La segunda parte del remake expande el mundo abierto de una forma que nadie esperaba. Hemos jugado más de 50 horas y el sistema de combate ha evolucionado perfectamente, mezclando la acción en tiempo real con la estrategia clásica de materias. La historia toma giros inesperados que sorprenderán incluso a los veteranos del juego original de PS1. Imprescindible para cualquier fan del género.', '2025-12-18'),
(24, 11, 7, 'Hollow Knight: Silksong y la espera interminable', 'Parece que nunca llega, pero la secuela del mejor metroidvania de la historia está cada vez más cerca. En esta nueva entrega controlaremos a Hornet, con un set de movimientos mucho más ágil y vertical que el del Caballero. Team Cherry ha prometido más de 150 enemigos nuevos y un sistema de crafteo de herramientas letales. Analizamos las últimas filtraciones y la posible fecha de salida en Xbox Game Pass.', '2025-12-18'),
(25, 10, 3, 'EA Sports FC 25: Novedades en el modo carrera y Ultimate Team', 'El rey del fútbol virtual se renueva. Este año la inteligencia artificial defensiva ha sido reescrita desde cero, haciendo que los partidos sean mucho más tácticos y menos correcalles. El modo carrera ahora permite gestionar la cantera con mucha más profundidad, y en Ultimate Team se introducen las cartas evolutivas femeninas. ¿Es suficiente cambio para justificar la compra anual? Lo debatimos en este análisis a fondo.', '2025-12-18'),
(26, 10, 1, 'Review de Marvel\'s Spider-Man 2: Nueva York a tus pies', 'Insomniac Games nos regala la experiencia definitiva del hombre araña. Poder cambiar instantáneamente entre Peter Parker y Miles Morales gracias al SSD de la consola cambia por completo el ritmo de la narrativa. Los villanos, Kraven y Venom, aportan una oscuridad a la trama que le sienta genial. El desplazamiento por la ciudad es más rápido y fluido que nunca gracias a las alas de telaraña. Un portento técnico.', '2025-12-18'),
(27, 11, 8, 'Resident Evil 9: Rumores sobre la isla fantasma', 'Las filtraciones sobre la próxima entrega de Capcom no paran. Se habla de un mundo semi-abierto ambientado en una isla del sudeste asiático, recuperando el terror psicológico puro. Analizamos las patentes registradas por la compañía que sugieren nuevos enemigos basados en el folclore local y una mecánica de cordura que recuerda a Amnesia. ¿Estará Chris Redfield de vuelta o tendremos nuevo protagonista?', '2025-12-18'),
(28, 12, 9, 'Civilization VII: Un nuevo amanecer para la saga', 'Sid Meier vuelve a la carga. La séptima entrega promete revolucionar la diplomacia con una IA generativa capaz de recordar tus traiciones de hace 2000 años. El nuevo motor gráfico permite un zoom sin precedentes, desde la vista orbital hasta ver a los ciudadanos caminando por tus distritos. Hemos probado la beta cerrada y la gestión de recursos ahora es mucho más orgánica y menos \"hoja de cálculo\".', '2025-12-18'),
(29, 12, 6, 'The Witcher 4 (Polaris): El salto a Unreal Engine 5', 'CD Projekt RED deja atrás su motor propietario REDengine para abrazar la tecnología de Epic. ¿Qué significa esto para el futuro de Geralt (o Ciri)? Las primeras imágenes técnicas muestran un nivel de detalle en la vegetación y la iluminación global que quitan el hipo. Se confirma que será el inicio de una nueva trilogía y que la Escuela del Lince tendrá un papel fundamental en la trama.\"', '2025-12-18');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `entradas_con_nombres`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `entradas_con_nombres`;
CREATE TABLE IF NOT EXISTS `entradas_con_nombres` (
`Autor` varchar(100)
,`Categoría` varchar(100)
,`id` int
,`titulo` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `fecha`) VALUES
(10, 'Juan', 'García', 'juan@garcia.com', '$2y$04$vk0PyKQRWb1oKaTmjWg/2uuxFUrME29IwD4.n.N638073nk4Alwbm', '2025-12-17'),
(11, 'Laura', 'Hernandez', 'laura@hernandez.com', '$2y$04$rmk7SD9Mhz58NeragD1niublB79nDCYKDbc.zkVpXnDEXUPkwDUXC', '2025-12-18'),
(12, 'Pepe', 'Pérez', 'pepe@perez.com', '$2y$04$DKXLgPdY.kaFfTrN2EZPKuE2CtxuVaOeMZFdK8/FgkriulY7K97jO', '2025-12-18');

-- --------------------------------------------------------

--
-- Estructura para la vista `entradas_con_nombres`
--
DROP TABLE IF EXISTS `entradas_con_nombres`;



--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `fk_entrada_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `fk_entrada_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
