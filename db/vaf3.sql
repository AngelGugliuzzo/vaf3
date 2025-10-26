 
-- la base esta depurada, listo para generar copiendo y pegando

CREATE TABLE peliculas (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    nombre_escritor varchar(50) NOT NULL,
    nombre_director VARCHAR(100) NOT NULL,
    duracion varchar(100) NOT NULL,
    fecha varchar(50) NOT NULL,
    sinapsis_peli TEXT,
   ruta_imagen  VARCHAR(50), 
    PRIMARY KEY (id)
);


INSERT INTO peliculas (id, nombre, nombre_escritor, nombre_director, duracion, fecha, sinapsis_peli, ruta_imagen) VALUES
(1, 'Volver al futuro', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', '116 min', '1985', 'El adolescente Marty McFly es amigo de Doc, un científico que ha construido una máquina del tiempo. Cuando los dos prueban el artefacto, un error fortuito hace que Marty llegue a 1955, año en el que s', 'vaf1.png'),
(2, 'Volver al futuro II', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', '108 min', '1989', 'Aunque a Marty McFly todavía le falta tiempo para asimilar el hecho de estar viviendo dentro de la familia perfecta gracias a su anterior viaje en el tiempo, no le queda ni espacio para respirar cuand', 'vaf2.png'),
(3, 'Volver al futuro III', 'Bob Gale y Robert Zemeckis', 'Robert Zemeckis', '118 min', '1990', 'Marty McFly sigue en 1955 y su amigo Doc ha retrocedido al año 1885, la época del salvaje oeste. Éste le envía una carta donde comenta que la máquina del tiempo está averiada, y que es imposible repar', 'vaf3.png');


CREATE TABLE personajes (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nombre varchar(255) not null,
    descripcion text NOT NULL,
    nombre_actor VARCHAR(255) NOT NULL,
    biografia text NOT NULL,
    descripcion_fisica text NOT NULL,
    ruta_imagen2  varchar(60) NOT NULL,
    ruta_imagen VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)); 
   
INSERT INTO personajes (id, nombre, descripcion, nombre_actor, biografia, descripcion_fisica, ruta_imagen, ruta_imagen2) VALUES
(1, 'Emmett Brown', 'El Dr. Emmett Lathrop Brown, o Doc Brown, es un científico excéntrico y el inventor de la máquina del tiempo en la trilogía Regreso al Futuro. Es conocido por sus inventos, su cabello blanco desordenado y su personalidad de científico loco benévolo, así como por su amor por los nombres de científicos famosos para sus mascotas. En cuanto a su ocupación; va desde científico, inventor, hasta herrero.', 'Christopher Lloyd', 'Emmett Brown es un científico licenciado en Ciencias Naturales y el mejor amigo del protagonista Marty McFly. Nacido en Hill Valley en 1914, se define como estudiante de todas las ciencias y pasa gran parte de su tiempo inventando artefactos, entre ellos la máquina del tiempo construida sobre un DMC DeLorean. Es capaz de modificar y construir cualquier tipo de máquina.', 'Científico genio, de estatura media-alta, conocido por su cabello blanco electrizado y ojos saltones. Viste con bata blanca o ropa del oeste según la época.', 'Emmett Brown.png', 'Emmett Brown.png'),

(2, 'Marty McFly', 'Marty McFly es un adolescente californiano, segundo viajero del tiempo del mundo y mejor amigo de Doc Brown. Es valiente e ingenioso, aunque impulsivo, y no soporta que lo llamen "gallina".', 'Michael J. Fox', 'Marty McFly nació el 9 de junio de 1968 en Hill Valley. Es el menor de tres hermanos. Toca la guitarra en The Pinheads, le gusta Huey Lewis and the News y Van Halen. Su defecto es reaccionar cuando lo llaman gallina, lo que casi le cuesta la vida. Aprende a controlar su orgullo al final de la trilogía.', 'De estatura media (1.64 m), delgado, cabello castaño, ojos marrones. Usa su icónico chaleco rojo y chaqueta de jean.', 'Marty McFly.png', 'Marty McFly.png'),

(3, 'Biff Tannen', 'Antagonista principal de la trilogía Volver al Futuro. Matón ruidoso y desagradable que se convierte en millonario gracias a un almanaque deportivo entregado por su yo futuro.', 'Thomas F. Wilson', 'Nacido en 1937 en Hill Valley. En una línea temporal alternativa funda la empresa Biffco. Se inspira parcialmente en Donald Trump. Vive con su abuela en su juventud y es conocido por abusar de George McFly.', 'Hombre grande y robusto, cabello rubio peinado hacia atrás, mandíbula fuerte, expresión de enfado o confusión.', 'Biff Tannen.png', 'Biff Tannen.png'),

(4, 'Lorraine Baines McFly', 'Madre de Marty McFly. En la línea temporal original es una ama de casa infeliz; tras los cambios de Marty, se convierte en una mujer feliz y optimista.', 'Lea Thompson', 'Nació en 1938 en Hill Valley. Esposa de George McFly y madre de Dave, Linda y Marty. En una línea temporal alternativa fue obligada a casarse con Biff, quien asesinó a George.', 'De joven es atractiva, cabello castaño y ondulado. En 1985 original tiene sobrepeso y viste descuidadamente; en la línea corregida luce elegante y saludable.', 'Lorraine Baines McFly.png', 'Lorraine Baines McFly.png'),

(5, 'Jennifer Parker', 'Novia de Marty McFly. Estudiante empática y soñadora que apoya a Marty en su carrera musical.', 'Claudia Wells', 'Nacida el 5 de julio de 1966. Actriz estadounidense conocida por interpretar a Jennifer Parker. Dejó la saga para cuidar a su madre enferma.', 'Adolescente de cabello castaño ondulado, ojos grandes, estilo casual y moderno de los 80.', 'Jennifer Parker.png', 'Jennifer Parker.png'),

(6, 'Buford "Perro Loco" Tannen', 'Pistolero malhumorado y cobarde del Viejo Oeste, tatarabuelo de Biff Tannen.', 'Thomas F. Wilson', 'Actor estadounidense nacido en 1959. Además de interpretar a Biff, Wilson es músico y pintor. Buford es un forajido que aterroriza Hill Valley.', 'Hombre corpulento, barba oscura, bigote sucio, mirada intensa. Ropa polvorienta de forajido.','dogtannen.png'),

(7, 'Clara Clayton Brown', 'Maestra de 1885, fanática de Jules Verne y la astronomía. Se casa con Doc Brown y tiene dos hijos.', 'Mary Steenburgen', 'Actriz estadounidense ganadora del Oscar por "Melvin and Howard" (1980). Casada con Ted Danson desde 1995.', 'Mujer de cabello rizado oscuro, rostro amable y sonrisa cálida. Viste con estilo del Lejano Oeste, femenino y elegante.', 'Clara Clayton Brown.png', 'Clara Clayton Brown.png'),

(8, 'Dave McFly', 'Hijo mayor de George y Lorraine, hermano de Marty. En una línea temporal trabaja en Burger King; en otra, es oficinista.', 'Marc McClure', 'Actor estadounidense conocido por interpretar a Jimmy Olsen en Superman y Dave McFly en Volver al Futuro.', 'De complexión media, cabello rizado castaño, viste ropa formal de oficina.', 'Dave McFly.png', 'Dave McFly.png'),

(9, 'Linda McFly', 'Hermana de Marty. En el 1985 original tiene problemas para encontrar pareja; tras el viaje de Marty, su vida mejora.', 'Wendie Jo Sperber', 'Actriz estadounidense (1958-2005), conocida por su papel en Volver al Futuro. Fundó el centro de apoyo WeSPARK.', 'Cabello castaño rizado, complexión media, vestimenta informal ochentosa.', 'LindaMcfly.png', 'LindaMcfly.png'),

(10, 'Copérnico', 'Perro de Doc Brown en 1955. Fue adoptado de un refugio en 1949. Parte de su serie de mascotas con nombres de científicos.', NULL, 'Adoptado en 1949 por Doc Brown. Parte de sus experimentos de viaje en el tiempo.', 'Perro pequeño-mediano de pelaje beige claro y corto. Lleva casco de minero con linterna.', 'Copernico 1955.png', 'Copernico 1955.png'),

(11, 'Einstein (1985)', 'Perro de Doc Brown en 1985. Primer ser vivo en viajar en el tiempo.', 'Tigre', 'Entrenado por Richard Calkins. Otro perro (Freddie) interpretó el mismo rol en la secuela.', 'Perro lanudo de tamaño mediano, pelaje blanco y beige, orejas caídas. Aspecto bonachón.', 'Einstein.png', 'Einstein.png'),

(12, 'Einstein (1989)', 'Perro de Doc Brown en Volver al Futuro II, interpretado por otro ejemplar.', 'Freddie', 'Entrenado por Matilda de Cagny, conocido por su docilidad.', 'Perro similar al anterior, de pelaje largo marrón y beige, aspecto tranquilo.', 'Einstein.png', 'Einstein.png');


 CREATE TABLE vehiculos (
    id int(11) NOT NULL AUTO_INCREMENT,
    nombre  varchar(100) NOT NULL,
    descripcion text NOT NULL,
    fuente_poder text NOT NULL,
    destino text NOT NULL,
    ruta_imagen varchar(50) NOT NULL,
     PRIMARY KEY (id));

     INSERT INTO vehiculos (id, nombre, descripcion, fuente_poder, destino, ruta_imagen) VALUES
(1, 'DeLorean', 'El DeLorean Máquina del Tiempo fue el invento más exitoso del Dr. Emmett Brown, una máquina del tiempo impulsada por plutonio construida sobre un automóvil deportivo DeLorean DMC-12 que tenía que alcanzar 88 millas por hora, o bien, aproximadamente 140 kilómetros por hora, para poder viajar en el tiempo.', 'Reactor nuclear, más tarde un Sr. Fusión tras un viaje a 2015', 'Destruido por una locomotora diesel el 27 de octubre de 1985', 'DeLorean maquina del tiempo.png'),
(2, 'DeLorean DMC-12', 'El DeLorean DMC-12 es el único modelo de auto deportivo fabricado por la DeLorean Motor Company (DMC) entre 1981 y 1983. Sus características más distintivas incluyen su carrocería de acero inoxidable cepillado sin pintar y sus icónicas puertas de ala de gaviota. A pesar de su diseño futurista, el DMC-12 es un coche de culto que alcanzó la fama mundial como la máquina del tiempo en la saga de películas Regreso al Futuro', 'N/A', 'N/A', 'DeLorean DMC-12.png'),
(3, 'BMW 733i', 'La familia McFly poseía un BMW 733i en 1985. Este era conducido por George McFly, y era el auto familiar principal. Su matrícula era 3A709T8.Antes de que Marty McFly regresara a 1955, Biff Tannen había tomado prestado y destrozado otro auto propiedad de George, un Chevrolet Nova, mientras bebía y conducía, arruinando así los planes de Marty de ir al lago con Jennifer Parker para el fin de semana. Después de que Marty regresara a lo que resultó ser un presente alterado y mejorado, el auto cambió a un BMW, de una sola pieza, y Biff lo estaba encerando con las dos capas de cera que le gustaban a George.', 'N/A', 'N/A', 'BMW 733i.png'),
(4, 'Tren del tiempo Julio Verne', 'El Tren del Tiempo era una máquina del tiempo en sí misma que funcionaba con vapor en lugar de gasolina, construida entre 1885 y 1895, lo que le llevó diez años construirla. Cuando Doc tuvo éxito en su primera prueba de desplazamiento temporal, él y su familia viajaron a 2015 o más allá para realizarle una conversión a flotación', 'El condensador de flujo aún estaba incluido en este diseño, ubicado en el lugar del faro en la parte delantera de la locomotora. A diferencia del DeLorean, los componentes externos del Tren del Tiempo eran simétricos en ambos lados del vehículo, lo que posiblemente representaba una comprensión más sofisticada de la tecnología de viaje en el tiempo por parte de Doc, a pesar de haber sido construido con materiales más primitivos.', 'N/A', 'tren.png'),
(5, 'Toyota Hilux', 'En 1985, Statler Toyota recibió una entrega de una camioneta nueva pintada de negro. Cuando Marty McFly regresó de 1955, el presente mejorado ubicó el vehículo en su garaje y él estaba en posesión de las llaves. Su matrícula era 2EZP916.', 'N/A', 'N/A', 'Toyota.png'),
(6, 'Aerotabla', 'Una aerotabla era un vehículo con forma de tabla, con conversión a flotación, popular en 2015, similar a un monopatín', 'N/A', 'N/A', 'Aerotabla.png'),
(7, 'Ford Convertible Super Deluxe', 'Biff Tannen poseía un modelo convertible de 1946 en 1955, pintado de negro con interior rojo, y apodado \"Sheila\". Su número de matrícula era 6H 96472.Biff era la única persona que conocía el truco para encender el motor (un botón en el salpicadero), como le explicó a Terry en Western Auto, quien no había podido arrancar el coche mientras trabajaba en él y se preguntó si estaba equipado con un interruptor de seguridad (kill-switch):', 'N/A', 'N/A', 'Ford.png'),
(8, 'Locomotora 131', 'Locomotora 131 es una antigua locomotora de vapor de la Central Pacific Railroad, que transportaba trenes de pasajeros y de carga en un circuito de un solo sentido por una vía única. En su ruta hacia el oeste, se detenía en la Estación de Ferrocarril de Hill Valley, teniendo a San Francisco, California, como el final de la línea.', 'La máquina es una locomotora de vapor antigua, de tipo Ten-Wheeler (Diez Ruedas), 4-6-0 (dos ejes delanteros seguidos de tres ejes motrices) y que funciona con madera como combustible.', 'N/A', 'locomotora131.png');

CREATE TABLE temporales (
    id INT(11) NOT NULL AUTO_INCREMENT,
    fecha varchar(50) NOT NULL,
    sinapsis_peli TEXT,
   ruta_imagen  VARCHAR(50), 
    PRIMARY KEY (id)
);

INSERT INTO temporales (id, fecha , sinapsis_peli, ruta_imagen) VALUES

(1,'1985','La historia transcurre en el año 1985 y cuenta las aventuras del joven de 17 años Marty McFly, que vive con sus padres y sus hermanos en la ficticia ciudad de Hill Valley, California.Marty tiene por su mejor amigo al científico "Doc" Emmett Brown, el cual un día le pide a Marty que le ayude con su último invento, que resulta ser una máquina del tiempo fabricada a partir de un automóvil DeLorean. Tras una exitosa prueba del invento, Doc procede a explicarle a Marty cómo funciona la máquina y pone en el tablero el 5 de noviembre de 1955, fecha en la que tuvo un accidente en el baño ','1985.jpg'),

(2,'2015','La historia transcurre esta vez en el futuro. Marty McFly y Doc Emmett Brown viajan hacia el año 2015 para evitar que el hijo de Marty sea encarcelado por culpa de Griff Tannen, el nieto de Biff. Sin embargo, otro problema surge cuando Marty compra un almanaque deportivo con todos los resultados desde 1950 a 2000, con el fin de volver al pasado y ganar las apuestas. Biff en el futuro roba la máquina del tiempo y el almanaque con el fin de cambiar el rumbo de la historia. ','2015.jpg'),

(3,'1855','En el universo de Volver al Futuro, el año 1855 es relevante porque es el año de nacimiento de Clara Clayton, quien más tarde se convertiría en el interés amoroso de Doc Brown en 1885. Además de este evento en la línea de tiempo de la película, también se fundó Hill Valley en 1850','1855.jpg'),

(4,'1885', '1885 fue un año en el siglo XIX, ubicado 100 años antes del tiempo presente de Marty McFly: 1985. Habían pasado 20 años desde el establecimiento de Hill Valley como ciudad y se llevó a cabo un festival para honrar el aniversario.La ciudad constaba de dos calles principales de tierra que se cruzaban en la Plaza de la Corte y en la zona de construcción de una nueva torre del reloj y juzgado del condado. Una de las calles iba a la estación de tren de Hill Valley','1885.jpg'),

(5,'1955','el año 1955 es crucial porque es el momento en el que Marty McFly, de 1985, viaja accidentalmente y debe asegurar que sus padres se conozcan y se enamoren para poder garantizar su propia existencia. También es el año en que el Dr. Emmett "Doc" Brown tuvo la visión de inventar el condensador de flujo, el componente esencial para viajar en el tiempo. ','1955.jpg');


 CREATE TABLE creditos (
    id int(11) NOT NULL AUTO_INCREMENT,
    nombre_equipo  VARCHAR(255) NOT NULL,
    nombre_desarrollador VARCHAR(255),
    --fecha_nacimiento VARCHAR(255),
    dir_mail VARCHAR(255),
    ruta_imagen VARCHAR(255),
    PRIMARY KEY (id)
 );

 INSERT INTO creditos (id, nombre_equipo, nombre_desarrollador, dir_mail,ruta_imagen) VALUES
 (1, 'GRUPO DE DESARROLLADORES', 'Paula Quipildor','paula@algo',?''),
 (2, 'GRUPO DE DESARROLLADORES', 'Claudia Rios','carolinarios@gmail.com',''),
 (3, 'GRUPO DE DESARROLLADORES', 'Angel Gugliuzzo','angelgugliuzzo@gmail.com',''),
 (4, 'GRUPO DE TESTING', 'Aguilera Delgado Gregory Antonio ','grupofront.qa@gmail.com',''),
 (5, 'GRUPO DE TESTING', 'Colella Calderon Andrea Micaela','grupofront.qa@gmail.com ',''),
 (6, 'GRUPO DE TESTING', 'Colella Carmen ','grupofront.qa@gmail.com',''),
 (7, 'GRUPO DE TESTING', 'Hernandez Martinez  Franbelys','grupofront.qa@gmail.com',''),
 (8, 'DISEÑO WEB', 'Ottones Maria Estela','tallerartecdj@gmail.com','');
 
-- Grupo de Testing


-- Aguilera Delgado Gregory Antonio grupofront.qa@gmail.com Front QA
-- Colella Calderon Andrea Micaela  grupofront.qa@gmail.com Front QA
-- Colella Carmen  grupofront.qa@gmail.com Front QA
-- Hernandez Martinez  Franbelys  grupofront.qa@gmail.com Front QA


-- Diseño Web

-- Ottones Maria Estela tallerartecdj@gmail.com