-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 15-03-2023 a las 22:19:40
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marasco_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `userId` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `description` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `imgProduct` varchar(150) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Products`
--

INSERT INTO `Products` (`id`, `brand`, `model`, `year`, `category`, `description`, `price`, `imgProduct`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'Volkswagen', 'Nivus Highline', 2022, 'SUV', 'El integrante de la familia Volkswagen que reúne la mezcla exacta entre modernidad, potencia y tecnología. Y cada vez estás más cerca de tenerlo. VW Nivus viene con Motor TSI, VW Play y el diseño más innovador.', 15000, '/images/nivus-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(2, 'Volkswagen', 'Taos Hero', 2023, 'SUV', 'Taos es el nuevo integrante de nuestra familia de SUVW y podemos decir orgullosos que lo fabricamos en Argentina para todas las familias de Latinoamérica. Es sinónimo de confort, seguridad, conectividad y diseño. Llegó Taos, tu próximo SUVW', 40000, '/images/taos-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(3, 'Volkswagen', 'T-Cross TSI', 2021, 'SUV', 'El T-Cross de siempre viene más recargado que nunca con la incorporación de su nuevo motor 200 TSI. Aportándole una mayor eficiencia y una mejor autonomía al vehículo. Ofrece un consumo más económico y una elevada potencia en toda la curva de aceleración.', 40000, '/images/tcross-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(4, 'Volkswagen', 'Vento Highline', 2020, 'Sedan', 'El T-Cross de siempre viene más recargado que nunca con la incorporación de su nuevo motor 200 TSI. Aportándole una mayor eficiencia y una mejor autonomía al vehículo. Ofrece un consumo más económico y una elevada potencia en toda la curva de aceleración. ', 45000, '/images/vento-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(5, 'BMW', '135i Pack M', 2023, 'Hatchback', 'El BMW 135i Coupé tiene un motor gasolina de 2979 cc con 6 cilindros ubicados en línea que alcanza una potencia máxima de 306 CV a 5800 rpm y par máximo de 400 nm a 1200-5000 rpm. Se trata por consiguiente de una mecánica con una potencia concreta de 306 CV, con alimentación inyección directa.', 70000, '/images/135-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(6, 'BMW', 'X6 Pack M', 2022, 'SUV', 'El BMW X6 es un SUV coupé, del segmento E, fabricado por la marca alemana BMW desde 2008. Actualmente se comercializa la tercera generación, el BMW X6 2020, presentada en 2019.', 90000, '/images/x6-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(7, 'Ford', 'Mondeo Titanium', 2021, 'Sedan', 'El Ford Mondeo es una de los sedan más conocidas de su segmento. Su apuesta en el mercado se desmarca de sus rivales por ofrecer un amplio abanico de tecnologías y posibilidades de equipamiento, si bien su gama de motores se ha ido reduciendo bastante con el paso del tiempo.', 65000, '/images/mondeo-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(8, 'Ford', 'F150 Raptor', 2022, 'Pick-Up', 'La nueva F-150 Raptor, fue pensada para hacer frente a todo tipo de desafíos y desempeñarse en los contextos más extremos. Cuenta con una capacidad off-road única e inigualable.', 150000, '/images/f150-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(9, 'Toyota', 'Hilux GR Sport', 2023, 'Pick-Up', 'La nueva Hilux GR-Sport posee un motor 2,8l de 224 CV y 550 Nm* de torque máximo con caja automática de 6 velocidades y levas al volante. ​Además incorpora amortiguadores telescópicos monotubo GR que brindan una puesta a punto deportiva en la suspensión.', 100000, '/images/hilux-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(10, 'Toyota', 'SW4 Diamante', 2022, 'SUV', 'Nuevo diseño frontal y trasero con faros delanteros Full-LED y luces intermitentes secuenciales, que le otorgan una figura más sofisticada y dinámica. Su nuevo diseño bitono para los colores blanco perlado y plata metalizado.', 97000, '/images/sw4-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(11, 'Audi', 'A1 Sportback', 2020, 'Hatchback', 'El nuevo A1 ofrece un manejo ágil y una experiencia de conducción deportiva y equilibrada. Conocé todas las características; Aceleración, Datos Técnicos, Colores, Fotos. Potencia y Rendimiento. Innovador y Tecnológico. Deportivo y Elegante.', 38000, '/images/a1-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(12, 'Audi', 'Q8 E-tron Sportback', 2023, 'SUV', 'La apariencia deportiva del Audi Q8 apunta claramente al futuro con su nuevo Singleframe en diseño octogonal. En el interior, el MMI Navegación plus opcional con MMI touch response, el Audi virtual cockpit opcional y muchos otros sistemas de comunicación y entretenimiento como Audi music interface.', 200000, '/images/q8-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(13, 'Mercedes Benz', 'GT-C', 2020, 'Cabriolet', 'El Mercedes AMG GT C cuenta con un motor delantro longitudinal ocho cilindros en V sobrealimentado que desarolla un par máximo de 680 Nm desde 1900 rpm y una potencia máxima de 557 CV a 5750 rpm transmitida a las ruedas traseras de 20 pulgadas a través una transmisión automática de 7 velocidades.', 350000, '/images/gtc-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(14, 'Peugeot', '208 Feline', 2021, 'Hatchback', 'El diseño del 208 adopta el nuevo lenguaje de diseño de la marca Peugeot, con la nueva firma lumínica que se asemeja a los colmillos del León. En el frente, aparece el nombre del modelo para un toque distintivo y moderno. En el lateral, el juego de sombras le da un perfil dinámico.', 28000, '/images/208-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(15, 'Peugeot', '5008 Feline', 2020, 'SUV', 'El nuevo SUV PEUGEOT 5008 es totalmente modular para adaptarse a cualquier situación, como viajar con hasta 7 personas gracias a su tercer fila de asientos.', 54000, '/images/5008-1.jpg', '2023-03-08 12:33:45', NULL, NULL),
(17, 'Ford', 'Gt40', 1980, 'Sportive', 'El Ford GT40 es un automóvil de carreras ganador de las 24 Horas de Le Mans cuatro veces seguidas desde 1966 hasta 1969. Fue construido por Ford Motor Company para competir en las carreras de resistencia, y así hacer frente a Ferrari quien ganó en seis ocasiones consecutivas desde 1960 hasta 1965.', 150000, '/images/imgProduct-1678804603092.jpg', '2023-03-14 14:36:43', '2023-03-14 14:36:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `img` varchar(150) NOT NULL,
  `type` varchar(45) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`id`, `name`, `lastName`, `email`, `password`, `adress`, `img`, `type`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'Gabriel', 'Marasco', 'gamarasco4@gmail.com', 'gabi123456789', 'moron 123', './images/gabriel.jpg', 'admin', '2023-03-08 12:35:37', NULL, NULL),
(2, 'Peter', 'Capusotto', 'pcapusotto@capusotto.com', 'peter123456789', 'capusotto 321', './images/capusotto.jpg', 'user', '2023-03-08 12:35:37', NULL, NULL),
(3, 'Max', 'Power', 'maxpower@power.com', 'max123456789', 'power 456', './images/max.jpg', 'user', '2023-03-13 18:31:29', NULL, NULL),
(5, 'Rick', 'Sanchez', 'rsanchez@sanchez.com', '1234567', 'tierra c187', '/images/img-1678805710857.jpg', 'user', '2023-03-14 14:55:10', '2023-03-14 14:55:10', NULL),
(6, 'pepa', 'pig', 'pepa@pig.com', '123456', 'calle 123', '/images/img-default.jpg', 'user', '2023-03-15 00:57:20', '2023-03-15 00:57:20', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId_idx` (`userId`),
  ADD KEY `productId_idx` (`productId`);

--
-- Indices de la tabla `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `productId` FOREIGN KEY (`productId`) REFERENCES `Products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
