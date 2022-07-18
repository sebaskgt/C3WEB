-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2022 a las 00:04:16
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_virtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`) VALUES
(1, 'Ciencia ficción.', 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1550838572-51WBM0O6heL.jpg?crop=1xw:1xh;center,top&resize=480%3A%2A'),
(2, 'Aventura.', 'https://img.remediosdigitales.com/211e7f/81tj3-swl7l/450_1000.jpg'),
(3, 'Gotico.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/6a/91/6a911f3f673c3506e6c8442831fd3855.jpg'),
(21, 'Hadas.', 'https://images.cdn2.buscalibre.com/fit-in/360x360/6e/94/6e94399b5c70240d9a0ad2b0dcc6533c.jpg'),
(23, 'Policiales.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/96/24/9624a29d540a23f99e09fcecca7a2f85.jpg'),
(24, 'Romance.', 'https://images.cdn1.buscalibre.com/fit-in/360x360/b0/3e/b03e98118b9e2cf5b94bb0548bfa59c5.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `corre` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `corre`, `clave`, `perfil`) VALUES
(2, 'juan', 'juan@gmai.com', '$2y$10$09PxRKafe3Y9zuepL5N0nu3lG84eoG4kFqpunMbvgHh8mjsStV3eK', 'default.png'),
(3, 'Juan vasquez', 'juan@gmai.acom', '$2y$10$M9vHIwuN7xg1tAric6PKcuxuFoBn24.mT2aFvgrFBITprYpX/NvI6', 'default.png'),
(4, 'juan', '1234', '$2y$10$LZLukobz1ICQklo3RMyj4OBFFeVDx9WV8/We/Fq7SWjO8mhPjDD0C', 'default.png'),
(5, 'juan', 'juanZ@gmai.com', '$2y$10$U0ZG8p/3OKt7yVQiRTU7JuF/dKagphG721faGmmjXQKwmEtsjvtkK', 'default.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `id_categoria`) VALUES
(2, 'El Amor en los Tiempos del Cólera.', 'Reseña del libro\r\nGarcía Márquez traza la historia de un amor que no ha sido correspondido por medio siglo. Aunque nunca parece estar propiamente contenido, el amor fluye a través de la novela de mil maneras: alegre, melancólico, enriquecedor, siempre sorprendente. La historia de amor entre Fermina Daza y Florentino Ariza, en el escenario de un pueblecito portuario del Caribe y a lo largo de más de sesenta años, podría parecer un melodrama de amantes contrariados que al final vencen por la gracia del tiempo y la fuerza de sus propios sentimientos, ya que García Márquez se complace en utilizar los más clásicos recursos de los folletines tradiciones. Pero este tiempo -por una vez sucesivo, y no circular-, este escenario y estos personajes son como una mezcla tropical de plantas y arcilla que la mano del maestro moldea y con las que fantasea a su placer, para al final ir a desembocar en los territorios del mito y la leyenda. Los jugos, olores y sabores del trópico alimentan una prosa alucinatoria que en esta ocasión llega al puerto oscilante del final feliz. «Era inevitable: el olor de las almendras amargas le recordaba siempre el destino de los amores contrariados. El doctor Juvenal Urbino lo percibió desde que entró en la casa todavía en penumbras, adonde había acudido de urgencia a ocuparse de un caso que para él había dejado de ser urgente desde hacía muchos años. El refugiado antillano Jeremiah de Saint-Amour, inválido de guerra, fotógrafo de niños y su adversario de ajedrez más compasivo, se había puesto a salvo de los tormentos de la memoria con un sahumerio de cianuro de oro. » Encontró el cadáver cubierto con una manta en el catre de campaña donde había dormido siempre, cerca de un taburete con la cubeta que había servido para vaporizar el veneno.» La crítica dijo... «La voz garciamarquiana alcanza aquí un nivel en el que resulta a la vez clásica y coloquial, opalescente y pura, capaz de alabar y maldecir, de reír y llorar, de fabular y cantar, de despegar y volar cuando es necesario.»   Thomas Pynchon, The New York Times', '16.00', 1, 'https://images.cdn1.buscalibre.com/fit-in/360x360/b0/3e/b03e98118b9e2cf5b94bb0548bfa59c5.jpg', 24),
(3, 'Dune de Frank Herbert.', 'Reseña del libro\r\nDios emperador de Dune es la cuarta entrega de la fascinante saga de ciencia ficción de Frank Herbert. Esta cuarta entrega de la saga «Dune» centra su trama en la figura mesiánica de Leto Atreides II (hijo de Paul Atreides, héroe cuya estirpe hunde sus raíces en la legendaria casa griega de los Atridas) y nos lleva, a través de diversos dilemas éticos, a comprender los mitos que necesita la humanidad y a los héroes que los encarnan. El futuro, en el mundo de Dune, pertenece solo a los que son capaces de pensar por sí mismos. Esta saga apasionante plantea por primera vez de forma completa, racional y convincente todo un mundo absolutamente diferente del nuestro. Sus referencias a los problemas ecológicos, el poder de las drogas y la fuerza de los mitos la han convertido en una obra de culto para millones de lectores en todo el mundo.', '7.00', 1, 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1550838572-51WBM0O6heL.jpg?crop=1xw:1xh;center,top&resize=480%3A%2A', 1),
(5, 'Cuentos Policiales', 'Reseña del libro\r\n¿Cuánto le debe la literatura universal a la figura ?y el genio? de Edgar Allan Poe? Nacido en Boston; Estados Unidos; el 19 de enero de 1809; Poe fue pionero del género fantástico; referente ineludible de la literatura de terror y dio el puntapié inicial para una de las tradiciones literarias más ricas y exitosas: el policial. Su cuento ?Los crímenes de la calle Morgue?; publicado en 1841; dio el puntapié inicial a un género literario que supieron cultivar los mejores escritores de nuestro tiempo. Este libro recoge ése y otros textos policiales del autor; el primer maestro en el arte de resolver ?mediante un ejercicio de deducción; raciocinio e inteligencia? los enigmas creados por el lado más salvaje de la naturaleza humana.', '22.00', 1, 'https://images.cdn1.buscalibre.com/fit-in/360x360/96/24/9624a29d540a23f99e09fcecca7a2f85.jpg', 23),
(6, 'Todas las hadas del reino.', 'Reseña del libro\r\nLa nueva novela de Laura Gallego: érase una vez una historia de aventuras, magia e intriga que nadie podía dejar de leer... «Zapatos de cristal, manzanas envenenadas, guisantes debajo de los colchones... Laura Gallego es una maestra en todos los sentidos.»Javier Ruescas Camelia es un hada madrina que lleva trescientos años ayudando con gran eficacia a jóvenes doncellas y a aspirantes a héroe para que alcancen sus propios finales felices. Su magia y su ingenio nunca le han fallado, pero todo empieza a complicarse cuando le encomiendan a Simón, un mozo de cuadra que necesita su ayuda desesperadamente. Camelia ha solucionado casos más difíciles; pero, por algún motivo, con Simón las cosas comienzan a torcerse de forma inexplicable...', '22.00', 1, 'https://images.cdn2.buscalibre.com/fit-in/360x360/6e/94/6e94399b5c70240d9a0ad2b0dcc6533c.jpg', 21),
(7, 'Drácula.', 'Reseña del libro\r\nDrácula es una novela publicada en 1897 por el irlandés Bram Stoker, quien ha con- vertido a su protagonista en el vampiro más famoso. Se dice que el escritor se basó en las conversaciones que mantuvo con un erudito húngaro llamado Arminius Vámbéry, quien le habló de Vlad Drăculea. La novela, escrita de manera epistolar, presenta otros temas, como el papel de la mujer en la época victoriana, la sexualidad, la inmigración, el colonialismo o el folclore. Como curiosidad, cabe destacar que Bram Stoker no in- ventó la leyenda vampírica, pero la influencia de la novela ha logrado llegar al cine, el teatro y la televisión', '15.00', 1, 'https://images.cdn1.buscalibre.com/fit-in/360x360/6a/91/6a911f3f673c3506e6c8442831fd3855.jpg', 3),
(8, 'Viaje al Centro de la Tierra.', 'Reseña del libro\r\nBarcelona. 24 cm. 330 p. il. Encuadernación en tapa dura de editorial ilustrada. Colección \'Colección Hetzel\'. Riou, Édouard. 1833-1900. ilustrador. Verne, Jules 1828-1905. Obra selecta. Ilustraciones de M. Riou. Reproducción de la edición de:. Paris : J. Hetzel et Cie. Collection Hetzel. Riou, Édouard. 1833-1900. Un drama en México. Diez horas de caza .. Este libro es de segunda mano y tiene o puede tener marcas y señales de su anterior propietario. ISBN: 978-84-473-5575-4', '12.00', 1, 'https://images.cdn1.buscalibre.com/fit-in/360x360/68/6c/686cbeadec3a05ffd394de709680e67c.jpg', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
