-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2025 a las 05:32:48
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
-- Base de datos: `vaf3`
--
CREATE DATABASE IF NOT EXISTS `vaf3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vaf3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `id` int(11) NOT NULL,
  `nombre_equipo` varchar(255) NOT NULL,
  `nombre_desarrollador` varchar(255) DEFAULT NULL,
  `dir_mail` varchar(255) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`id`, `nombre_equipo`, `nombre_desarrollador`, `dir_mail`, `ruta_imagen`) VALUES
(1, 'GRUPO DE DESARROLLADORES', 'Paula Quipildor', 'paula@algo', ''),
(2, 'GRUPO DE DESARROLLADORES', 'Claudia Rios', 'carolinarios@gmail.com', ''),
(3, 'GRUPO DE DESARROLLADORES', 'Angel Gugliuzzo', 'angelgugliuzzo@gmail.com', ''),
(4, 'GRUPO DE TESTING', 'Aguilera Delgado Gregory Antonio ', 'grupofront.qa@gmail.com', ''),
(5, 'GRUPO DE TESTING', 'Colella Calderon Andrea Micaela', 'grupofront.qa@gmail.com ', ''),
(6, 'GRUPO DE TESTING', 'Colella Carmen ', 'grupofront.qa@gmail.com', ''),
(7, 'GRUPO DE TESTING', 'Hernandez Martinez  Franbelys', 'grupofront.qa@gmail.com', ''),
(8, 'DISEÑO WEB', 'Ottones Maria Estela', 'tallerartecdj@gmail.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_escritor` varchar(50) NOT NULL,
  `nombre_director` varchar(100) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `sinopsis_peli` text DEFAULT NULL,
  `ruta_imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `nombre_escritor`, `nombre_director`, `duracion`, `fecha`, `sinopsis_peli`, `ruta_imagen`) VALUES
(1, 'Volver al Futuro', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', '116 min', '1985', 'El adolescente Marty McFly es amigo de Doc, un científico que ha construido una máquina del tiempo. Cuando los dos prueban el artefacto, un error fortuito hace que Marty llegue a 1955, año en el que sus padres iban al instituto y todavía no se habían conocido. Después de impedir su primer encuentro, Marty deberá conseguir que se conozcan y se enamoren, de lo contrario su existencia no sería posible.', 'vaf1.png'),
(2, 'Volver al Futuro II', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', '108 min', '1989', 'Aunque a Marty McFly todavía le falta tiempo para asimilar el hecho de estar viviendo dentro de la familia perfecta gracias a su anterior viaje en el tiempo, no le queda ni espacio para respirar cuando su amigo Doc aparece de improviso con la máquina del tiempo (mucho más modernizada), e insta a que le acompañen él y su novia a viajar al futuro para solucionar un problema con la ley que tendrá uno de sus futuros hijos. En la tremenda vorágine futurista, con todo lo que ello conlleva, del Hill Valley de 2015, la presencia de tales viajeros temporales causará un efecto mayor que el que iban a arreglar. Un almanaque deportivo y la posesión del secreto de la existencia de la máquina del tiempo por parte del siempre villano Biff Tannen, serán los ingredientes que conjugarán una causa-efecto en el pasado, en el presente y en el propio futuro, que hará que Marty y Doc se tengan que emplear a fondo para poner fin a la catástrofe a la que les lleva el destino.', 'vaf2.png'),
(3, 'Volver al Futuro III', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', '118 min', '1990', 'Marty McFly sigue en 1955 y su amigo Doc ha retrocedido al año 1885, la época del salvaje oeste. Éste le envía una carta donde comenta que la máquina del tiempo está averiada, y que es imposible repararla. Sin embargo no le preocupa estar atrapado en el pasado, pues allí es muy feliz trabajando de herrero aunque convive con malhechores. Pero Marty descubre una vieja tumba en la que lee que Doc murió en 1885 y, sin pensárselo dos veces, irá a rescatar a su amigo.', 'vaf3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `nombre_actor` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  `descripcion_fisica` text NOT NULL,
  `ruta_imagen2` varchar(60) NOT NULL,
  `ruta_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `descripcion`, `nombre_actor`, `biografia`, `descripcion_fisica`, `ruta_imagen2`, `ruta_imagen`) VALUES
(1, 'Emmett Brown', 'El Dr. Emmett Lathrop Brown, o Doc Brown, es un científico excéntrico y el inventor de la máquina del tiempo en la trilogía Regreso al Futuro. Es conocido por sus inventos, su cabello blanco desordenado y su personalidad de científico loco benévolo, así como por su amor por los nombres de científicos famosos para sus mascotas. En cuanto a su ocupación; va desde científico, inventor, hasta herrero.', 'Christopher Lloyd', 'Emmett Brown es un científico licenciado en Ciencias Naturales y el mejor amigo del protagonista Marty McFly. Nacido en Hill Valley en 1914, se define como estudiante de todas las ciencias y pasa gran parte de su tiempo inventando artefactos, entre ellos la máquina del tiempo construida sobre un DMC DeLorean. Es capaz de modificar y construir cualquier tipo de máquina.', 'Científico genio, de estatura media-alta, conocido por su cabello blanco electrizado y ojos saltones. Viste con bata blanca o ropa del oeste según la época.', 'Emmett Brown.png', 'Emmett Brown2.png'),
(2, 'Einstein ', 'Perro de Doc Brown en 1985. Primer ser vivo en viajar en el tiempo.', 'Tigre', 'Entrenado por Richard Calkins. Otro perro (Freddie) interpretó el mismo rol en la secuela.', 'Perro lanudo de tamaño mediano, pelaje blanco y beige, orejas caídas. Aspecto bonachón.', 'Einstein.png', 'Einstein.png'),
(3, 'Marty McFly', 'Marty McFly es un adolescente californiano, segundo viajero del tiempo del mundo y mejor amigo de Doc Brown. Es valiente e ingenioso, aunque impulsivo, y no soporta que lo llamen \"gallina\".', 'Michael J. Fox', 'Marty McFly nació el 9 de junio de 1968 en Hill Valley. Es el menor de tres hermanos. Toca la guitarra en The Pinheads, le gusta Huey Lewis and the News y Van Halen. Su defecto es reaccionar cuando lo llaman gallina, lo que casi le cuesta la vida. Aprende a controlar su orgullo al final de la trilogía.', 'De estatura media (1.64 m), delgado, cabello castaño, ojos marrones. Usa su icónico chaleco rojo y chaqueta de jean.', 'Marty McFly.png', 'Marty McFly2.png'),
(4, 'George McFly', 'George McFly es un personaje de la trilogía de Back to the Future. Es el padre de Marty McFly; es uno de los personajes protagonistas de la primera película, pero fue un personaje secundario en las posteriores dos secuelas.', 'Crispin Glover', 'Crispin Hellion Glover es un actor, director, guionista, escritor y artista estadounidense nacido en Nueva York el 20 de abril de 1964. Es mundialmente conocido por su papel de George McFly en la película Volver al Futuro (1985). Glover comenzó su carrera en los años 80, apareciendo en series como Happy Days y Family Ties, antes de su salto a la fama. A lo largo de su trayectoria, se ha especializado en interpretar personajes excéntricos, destacando también en roles como el Thin Man en Los ángeles de Charlie y la Sota de Corazones en Alicia en el país de las maravillas. Además de su trabajo en la actuación, Glover ha desarrollado una carrera como cineasta de culto y autor, fundando su propia editorial y productora, Volcanic Eruptions.', 'Apariencia: Es delgado y se muestra visiblemente torpe e inseguro.\r\nUtiliza gafas de montura gruesa que refuerzan su imagen de intelectual o inadaptado social.\r\nTiene actitud de timidez es extrema, lo que le dificulta interactuar con sus compañeros, especialmente con Lorraine, su futura esposa.Lleva el cabello castaño con un peinado que se ve algo descuidado o pasado de moda.Se viste de manera muy formal y quizás un poco anticuada para su edad, a menudo con corbata de moño o ropa que subraya su naturaleza de \"nerd\" y su falta de confianza.', 'George Mcfly.png', 'George Mcfly2.png'),
(5, 'Biff Tannen', 'Antagonista principal de la trilogía Volver al Futuro. Matón ruidoso y desagradable que se convierte en millonario gracias a un almanaque deportivo entregado por su yo futuro.', 'Thomas F. Wilson', 'Nacido en 1937 en Hill Valley. En una línea temporal alternativa funda la empresa Biffco. Se inspira parcialmente en Donald Trump. Vive con su abuela en su juventud y es conocido por abusar de George McFly.', 'Hombre grande y robusto, cabello rubio peinado hacia atrás, mandíbula fuerte, expresión de enfado o confusión.', 'Biff Tannen.png', 'Biff Tannen2.png'),
(6, 'Lorraine Baines McFly', 'Madre de Marty McFly. En la línea temporal original es una ama de casa infeliz; tras los cambios de Marty, se convierte en una mujer feliz y optimista.', 'Lea Thompson', 'Nació en 1938 en Hill Valley. Esposa de George McFly y madre de Dave, Linda y Marty. En una línea temporal alternativa fue obligada a casarse con Biff, quien asesinó a George.', 'De joven es atractiva, cabello castaño y ondulado. En 1985 original tiene sobrepeso y viste descuidadamente; en la línea corregida luce elegante y saludable.', 'Lorraine Baines McFly.png', 'Lorraine Baines McFly2.png'),
(7, 'Jennifer Parker', 'Novia de Marty McFly. Estudiante empática y soñadora que apoya a Marty en su carrera musical.', 'Claudia Wells', 'Nacida el 5 de julio de 1966. Actriz estadounidense conocida por interpretar a Jennifer Parker. Dejó la saga para cuidar a su madre enferma.', 'Adolescente de cabello castaño ondulado, ojos grandes, estilo casual y moderno de los 80.', 'Jennifer Parker.png', 'Jennifer Parker2.png'),
(8, 'Dave McFly', 'Hijo mayor de George y Lorraine, hermano de Marty. En una línea temporal trabaja en Burger King; en otra, es oficinista.', 'Marc McClure', 'Actor estadounidense conocido por interpretar a Jimmy Olsen en Superman y Dave McFly en Volver al Futuro.', 'De complexión media, cabello rizado castaño, viste ropa formal de oficina.', 'Dave McFly2.png', 'Dave McFly.png'),
(9, 'Linda McFly', 'Hermana de Marty. En el 1985 original tiene problemas para encontrar pareja; tras el viaje de Marty, su vida mejora.', 'Wendie Jo Sperber', 'Actriz estadounidense (1958-2005), conocida por su papel en Volver al Futuro. Fundó el centro de apoyo WeSPARK.', 'Cabello castaño rizado, complexión media, vestimenta informal ochentosa.', 'LindaMcfly2.png', 'LindaMcfly.png'),
(10, 'Buford \"Perro Loco\" Tannen', 'Pistolero malhumorado y cobarde del Viejo Oeste, tatarabuelo de Biff Tannen.', 'Thomas F. Wilson', 'Actor estadounidense nacido en 1959. Además de interpretar a Biff, Wilson es músico y pintor. Buford es un forajido que aterroriza Hill Valley.', 'Hombre corpulento, barba oscura, bigote sucio, mirada intensa. Ropa polvorienta de forajido.', 'Buford perro loco Tannen2.png', 'malo.jpg'),
(11, 'Clara Clayton Brown', 'Maestra de 1885, fanática de Jules Verne y la astronomía. Se casa con Doc Brown y tiene dos hijos.', 'Mary Steenburgen', 'Actriz estadounidense ganadora del Oscar por \"Melvin and Howard\" (1980). Casada con Ted Danson desde 1995.', 'Mujer de cabello rizado oscuro, rostro amable y sonrisa cálida. Viste con estilo del Lejano Oeste, femenino y elegante.', 'Clara Clayton Brown.png', 'Clara Clayton Brown2.png'),
(12, 'Copérnico', 'Perro de Doc Brown en 1955. Fue adoptado de un refugio en 1949. Parte de su serie de mascotas con nombres de científicos.', '', 'Adoptado en 1949 por Doc Brown. Parte de sus experimentos de viaje en el tiempo.', 'Perro pequeño-mediano de pelaje beige claro y corto. Lleva casco de minero con linterna.', 'Copernico 1955.png', 'Copernico2 1955.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporales`
--

CREATE TABLE `temporales` (
  `id` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `sinapsis_peli` text DEFAULT NULL,
  `ruta_imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temporales`
--

INSERT INTO `temporales` (`id`, `fecha`, `sinapsis_peli`, `ruta_imagen`) VALUES
(1, '1985', 'La historia transcurre en el año 1985 y cuenta las aventuras del joven de 17 años Marty McFly, que vive con sus padres y sus hermanos en la ficticia ciudad de Hill Valley, California.Marty tiene por su mejor amigo al científico \"Doc\" Emmett Brown, el cual un día le pide a Marty que le ayude con su último invento, que resulta ser una máquina del tiempo fabricada a partir de un automóvil DeLorean. Tras una exitosa prueba del invento, Doc procede a explicarle a Marty cómo funciona la máquina y pone en el tablero el 5 de noviembre de 1955, fecha en la que tuvo un accidente en el baño.En aquel momento un ataque terrorista hace que Marty viaje sin querer al año 1955.', '1985.jpg'),
(2, '1955', 'La llegada de Marty al pasado es un shock, y mientras intenta comprender lo que acaba de ocurrir, encuentra al Doc Brown. Doc había elegido originalmente el 5 de noviembre de 1955, al mostrarle la máquina del tiempo a Marty en 1985. Su importancia radica en que es la fecha en que a Doc se le ocurrió el concepto del condensador de flujo, el dispositivo que permite viajar en el tiempo. Tras convencer al Doc Brown de que viene del futuro, ambos idean un plan para enviar a Marty de vuelta a 1985. Sin embargo, el plutonio no está disponible en 1955.\r\n\r\nLa sobrecarga de energía necesaria para enviar el DeLorean de vuelta a 1985 provendrá del rayo que se espera que impacte la torre del reloj. Marty pasa una semana en 1955 mientras Doc se prepara para la tormenta y se mantiene ocupado intentando reparar el daño causado al impedir el primer encuentro entre su padre y su madre. Finalmente, Marty logra que su padre se enfrente al matón del barrio, Biff Tannen, y también consigue que sus padres bailen juntos y se enamoren. Marty regresa con éxito al futuro, pero se ha creado una nueva línea temporal de Regreso al Futuro .', '1955(2).webp'),
(3, '2015', 'La historia transcurre esta vez en el futuro. Marty McFly y Doc Emmett Brown viajan hacia el año 2015 para evitar que el hijo de Marty sea encarcelado por culpa\r\n de Griff Tannen, el nieto de Biff. Sin embargo, otro problema surge cuando Marty compra un almanaque deportivo con todos los resultados desde 1950 a 2000,\r\n con el fin de volver al pasado y ganar las apuestas. Biff en el futuro roba la máquina del tiempo y el almanaque con el fin de cambiar el rumbo de la historia. \r\n', '2015.jpg'),
(4, '1985(Alternativo)', 'Al principio, todo parece normal cuando Marty regresa a Hill Valley. Pero cuando intenta volver a casa en Regreso al Futuro II , descubre una familia completamente diferente viviendo allí, en la nueva línea temporal de Regreso al Futuro . Marty pronto se da cuenta de que esta versión de Hill Valley de 1985 no se parece en nada a la que dejó atrás. En este nuevo presente, su padre ha muerto, su madre se ha casado con el hombre más rico del pueblo (Biff) y Doc está internado en un psiquiátrico.\r\nCuando Marty confronta a Biff por lo sucedido, Biff confiesa que un anciano le regaló un almanaque deportivo en 1955. Los resultados que contenía lo hicieron increíblemente rico durante los siguientes 30 años. Biff Tannen también revela que pretende matar a Marty , tal como mató a su padre. Tras una persecución por el hotel de Biff, Marty llega a la azotea, donde Doc lo rescata con el DeLorean.\r\n\r\n', '1885alter.webp'),
(5, '1955(Alternativo)', 'Marty regresa al pasado, esta vez para salvar el futuro. Junto con Doc, planean robarle el almanaque a Biff y destruirlo. Una vez destruido, Biff ya no podrá enriquecerse ni crear el distópico 1985 del que acaban de venir. La fecha es nuevamente el 5 de noviembre de 1955, y Marty y Doc llegan justo antes del baile \"Encanto Bajo el Mar\". Pero, como siempre ocurre al alterar las líneas temporales de Regreso al Futuro, nada es sencillo. Marty debe enfrentarse a los secuaces de Biff, así como al propio Biff, en la lucha por recuperar el almanaque e impedir que se altere la línea temporal original de 1985. Tras mucho esfuerzo, Marty logra recuperar el almanaque, pero justo cuando Doc intenta recogerlo en el DeLorean, un rayo lo alcanza y desaparece. En ese instante, llega un mensajero de Western Union con una carta para Marty.', '1955.webp'),
(6, '1885', '  La carta es de Doc, quien está a salvo y vive en 1885. Cuando Marty descubre que, en 1885, Buford \"Perro Loco\" Tannen le disparará por la espalda a Doc, decide viajar al pasado para rescatarlo. Habían pasado 20 años desde el establecimiento de Hill Valley como\r\n ciudad y se llevó a cabo un festival para honrar el aniversario.La ciudad constaba de dos calles principales de tierra que se cruzaban en la Plaza de la Corte y en \r\nla zona de construcción de una nueva torre del reloj y juzgado del condado. Una de las calles iba a la estación de tren de Hill Valley.\r\nTras la llegada de Marty a 1885,el DeLorean sufre una fuga de combustible que lo deja inservible . Finalmente, Marty y Doc idean un plan que consiste en usar una máquina de vapor para impulsar el DeLorean hasta los 142 km/h necesarios para regresar a 1985. A pesar de que Marty salva a Doc Brown de una muerte segura, Doc decide quedarse en 1885 con Clara, el amor de su vida. Marty regresa solo a 1985.', '1885.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fuente_poder` text NOT NULL,
  `destino` text NOT NULL,
  `ruta_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `nombre`, `descripcion`, `fuente_poder`, `destino`, `ruta_imagen`) VALUES
(1, 'DeLorean', 'El DeLorean Máquina del Tiempo fue el invento más exitoso del Dr. Emmett Brown, una máquina del tiempo impulsada por plutonio construida sobre un automóvil deportivo DeLorean DMC-12 que tenía que alcanzar 88 millas por hora, o bien, aproximadamente 140 kilómetros por hora, para poder viajar en el tiempo.', 'Reactor nuclear, más tarde un Sr. Fusión tras un viaje a 2015', 'Destruido por una locomotora diesel el 27 de octubre de 1985', 'DeLorean maquina del tiempo.png'),
(2, 'DeLorean DMC-12', 'El DeLorean DMC-12 es el único modelo de auto deportivo fabricado por la DeLorean Motor Company (DMC) entre 1981 y 1983. Sus características más distintivas incluyen su carrocería de acero inoxidable cepillado sin pintar y sus icónicas puertas de ala de gaviota. A pesar de su diseño futurista, el DMC-12 es un coche de culto que alcanzó la fama mundial como la máquina del tiempo en la saga de películas Regreso al Futuro', 'Motor de combustion interna, a nafta.', 'Exclusivo para coleccionistas.', 'DeLorean DMC-12.png'),
(3, 'BMW 733i', 'La familia McFly poseía un BMW 733i en 1985. Este era conducido por George McFly, y era el auto familiar principal. Su matrícula era 3A709T8.Antes de que Marty McFly regresara a 1955, Biff Tannen había tomado prestado y destrozado otro auto propiedad de George, un Chevrolet Nova, mientras bebía y conducía, arruinando así los planes de Marty de ir al lago con Jennifer Parker para el fin de semana. Después de que Marty regresara a lo que resultó ser un presente alterado y mejorado, el auto cambió a un BMW, de una sola pieza, y Biff lo estaba encerando con las dos capas de cera que le gustaban a George.', 'Motor de combustion interna, a nafta.', 'Exclusivo para coleccionistas, fanáticos de la pelicula.', 'BMW 733i.png'),
(4, 'Tren del tiempo Julio Verne', 'El Tren del Tiempo era una máquina del tiempo en sí misma que funcionaba con vapor en lugar de gasolina, construida entre 1885 y 1895, lo que le llevó diez años construirla. Cuando Doc tuvo éxito en su primera prueba de desplazamiento temporal, él y su familia viajaron a 2015 o más allá para realizarle una conversión a flotación', 'El condensador de flujo aún estaba incluido en este diseño, ubicado en el lugar del faro en la parte delantera de la locomotora. A diferencia del DeLorean, los componentes externos del Tren del Tiempo eran simétricos en ambos lados del vehículo, lo que posiblemente representaba una comprensión más sofisticada de la tecnología de viaje en el tiempo por parte de Doc, a pesar de haber sido construido con materiales más primitivos.', 'Se fue rumbo al futuro, con la familia del doctor Emett Brown.', 'tren.png'),
(5, 'Toyota Hilux', 'En 1985, Statler Toyota recibió una entrega de una camioneta nueva pintada de negro. Cuando Marty McFly regresó de 1955, el presente mejorado ubicó el vehículo en su garaje y él estaba en posesión de las llaves. Su matrícula era 2EZP916.', 'Motor de combustion interna, a nafta.', 'Exclusivo para coleccionistas, fanáticos de la película.', 'Toyota.png'),
(6, 'Aerotabla', 'Una aerotabla era un vehículo con forma de tabla, con conversión a flotación, popular en 2015, similar a un monopatín', 'Electromagnética.Tiene pilas internas.', 'Se la queda el doctor Emmet Brown cuando Marty rescata a su novia, antes de caer la locomotora al vacio. ', 'Aerotabla.png'),
(7, 'Ford Convertible Super Deluxe', 'Biff Tannen poseía un modelo convertible de 1946 en 1955, pintado de negro con interior rojo, y apodado \"Sheila\". Su número de matrícula era 6H 96472.Biff era la única persona que conocía el truco para encender el motor (un botón en el salpicadero), como le explicó a Terry en Western Auto, quien no había podido arrancar el coche mientras trabajaba en él y se preguntó si estaba equipado con un interruptor de seguridad (kill-switch):', 'Motor de combustion interna, a nafta.\r\n', 'Exclusivo para coleccionistas, fanáticos de la pelicula.', 'Ford.png'),
(8, 'Locomotora 131', 'Locomotora 131 es una antigua locomotora de vapor de la Central Pacific Railroad, que transportaba trenes de pasajeros y de carga en un circuito de un solo sentido por una vía única. En su ruta hacia el oeste, se detenía en la Estación de Ferrocarril de Hill Valley, teniendo a San Francisco, California, como el final de la línea.', 'La máquina es una locomotora de vapor antigua, de tipo Ten-Wheeler (Diez Ruedas), 4-6-0 (dos ejes delanteros seguidos de tres ejes motrices) y que funciona con madera como combustible.', 'Queda destruida al caer al barranco.', 'locomotora131.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temporales`
--
ALTER TABLE `temporales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `temporales`
--
ALTER TABLE `temporales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
