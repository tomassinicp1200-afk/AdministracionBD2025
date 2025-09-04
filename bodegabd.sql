-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 18:31:02
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
-- Base de datos: `bodegabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, 'Carlos Pérez', 'Av. Los Olivos 123', '987654321'),
(2, 'María Torres', 'Jr. Las Flores 456', '912345678'),
(3, 'José Ramírez', 'Av. Perú 789', '998877665'),
(4, 'Ana Castillo', 'Calle Luna 321', '976543210'),
(5, 'Luis Fernández', 'Av. Sol 111', '934567890'),
(6, 'Rosa Gutiérrez', 'Pasaje Mar 222', '956789012'),
(7, 'Pedro Sánchez', 'Calle Río 333', '945612378'),
(8, 'Lucía Romero', 'Av. Primavera 444', '923456781'),
(9, 'Jorge Medina', 'Jr. Andina 555', '987612345'),
(10, 'Elena Rojas', 'Av. Pinos 666', '954321678'),
(11, 'Miguel Vargas', 'Av. Grau 101', '976123450'),
(12, 'Paola Díaz', 'Calle Sauces 202', '934876543'),
(13, 'Ricardo López', 'Jr. Lima 303', '923456789'),
(14, 'Gabriela Soto', 'Av. Miraflores 404', '912398765'),
(15, 'Fernando Chávez', 'Calle Trujillo 505', '987123654'),
(16, 'Verónica Aguilar', 'Av. San Juan 606', '976543219'),
(17, 'Raúl Mendoza', 'Jr. Tarapacá 707', '945678901'),
(18, 'Claudia Herrera', 'Calle Cusco 808', '956789034'),
(19, 'Daniel Castro', 'Av. Arequipa 909', '912345098'),
(20, 'Patricia Morales', 'Pasaje Piura 110', '987654098'),
(21, 'Alejandro Vargas', 'Av. Tacna 120', '934562781'),
(22, 'Carmen León', 'Jr. Amazonas 130', '976789231'),
(23, 'Hugo Flores', 'Calle Arica 140', '923456710'),
(24, 'Silvia Ruiz', 'Av. Callao 150', '945678123'),
(25, 'Alberto Gamarra', 'Jr. Moquegua 160', '976321098'),
(26, 'Natalia Paredes', 'Av. Chiclayo 170', '912345780'),
(27, 'Francisco Ortiz', 'Pasaje Ica 180', '987654789'),
(28, 'Ruth Salazar', 'Av. Huánuco 190', '923450987'),
(29, 'Diego Campos', 'Calle Puno 200', '956123789'),
(30, 'Mónica Valdez', 'Jr. Loreto 210', '976098123'),
(31, 'Oscar Delgado', 'Av. Ayacucho 220', '987345612'),
(32, 'Sandra Navarro', 'Calle Junín 230', '912340987'),
(33, 'Rodrigo Cabrera', 'Av. Lambayeque 240', '934567812'),
(34, 'Paty Lozano', 'Jr. Amazonas 250', '923456098'),
(35, 'Edgar Peña', 'Av. Cajamarca 260', '945678210'),
(36, 'Roxana Estrada', 'Calle Huancayo 270', '976789543'),
(37, 'Víctor Palacios', 'Av. Abancay 280', '956781234'),
(38, 'Marisol Bravo', 'Jr. Apurímac 290', '987654123'),
(39, 'Andrés Silva', 'Av. Chachapoyas 300', '976123987'),
(40, 'Fabiola Arias', 'Calle Tumbes 310', '912398734'),
(41, 'Gustavo Rivas', 'Av. Huaraz 320', '934567801'),
(42, 'Liliana Olivares', 'Jr. Iquitos 330', '923456123'),
(43, 'Martín Escobar', 'Av. Tacna 340', '945678345'),
(44, 'Beatriz Ponce', 'Calle Arequipa 350', '976543890'),
(45, 'Álvaro Benavides', 'Av. Moquegua 360', '987654900'),
(46, 'Martha Quispe', 'Jr. Trujillo 370', '923456999'),
(47, 'Julio Cárdenas', 'Av. Miraflores 380', '912398123'),
(48, 'Teresa Bravo', 'Calle Cusco 390', '934567900'),
(49, 'Felipe Cornejo', 'Av. Huacho 400', '956789900'),
(50, 'Norma Serrano', 'Jr. Tacna 410', '987321123'),
(51, 'Sergio Salinas', 'Av. Cuzco 420', '923459876'),
(52, 'Clara Montalvo', 'Calle Chiclayo 430', '945678765'),
(53, 'Manuel Herrera', 'Av. Ica 440', '976543123'),
(54, 'Juana Prieto', 'Jr. Lambayeque 450', '987650987'),
(55, 'César Tapia', 'Av. Junín 460', '934567234'),
(56, 'Laura Benítez', 'Calle Amazonas 470', '912398765'),
(57, 'Pablo Núñez', 'Av. Tacna 480', '987654876'),
(58, 'Isabel Cueva', 'Jr. Cajamarca 490', '976543876'),
(59, 'Adrián Guzmán', 'Av. Piura 500', '945678765'),
(60, 'Susana Farfán', 'Calle Ayacucho 510', '923459765'),
(61, 'Mauricio Ramos', 'Av. Trujillo 520', '934567890'),
(62, 'Rosa Chacón', 'Jr. Callao 530', '987654345'),
(63, 'Hernán Varela', 'Av. Huancavelica 540', '912345654'),
(64, 'Nancy Mejía', 'Calle Puno 550', '976543654'),
(65, 'Javier Quiroz', 'Av. Apurímac 560', '934567876'),
(66, 'Martha Barrios', 'Jr. Loreto 570', '923456765'),
(67, 'Iván Espinoza', 'Av. Arequipa 580', '987650432'),
(68, 'Marina Vega', 'Calle Piura 590', '912398432'),
(69, 'Óscar Torres', 'Av. Moquegua 600', '934567654'),
(70, 'Gloria Cabrera', 'Jr. Amazonas 610', '976543432'),
(71, 'Samuel Paredes', 'Av. Cusco 620', '987654210'),
(72, 'Elena Gutiérrez', 'Calle Trujillo 630', '923456210'),
(73, 'Nelson Rojas', 'Av. Lambayeque 640', '912398210'),
(74, 'Patricia Díaz', 'Jr. Abancay 650', '945678210'),
(75, 'Guillermo Vargas', 'Av. Chiclayo 660', '976543210'),
(76, 'Alicia Navarro', 'Calle Lima 670', '987654001'),
(77, 'Cristian Flores', 'Av. San Martín 680', '934567001'),
(78, 'Ruth González', 'Jr. Tacna 690', '923456001'),
(79, 'David Ortega', 'Av. Miraflores 700', '976543001'),
(80, 'Paula Medina', 'Calle Los Pinos 710', '987654002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idDetalles` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idProductos` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idDetalles`, `idFactura`, `idProductos`, `Cantidad`, `Total`) VALUES
(1, 1, 5, 2, 10),
(2, 2, 7, 3, 12),
(3, 3, 12, 1, 12),
(4, 4, 25, 6, 18),
(5, 5, 30, 2, 12),
(6, 6, 15, 4, 28),
(7, 7, 9, 2, 16),
(8, 8, 40, 1, 6),
(9, 9, 50, 5, 25),
(10, 10, 60, 3, 18),
(11, 11, 13, 4, 12),
(12, 12, 18, 2, 8),
(13, 13, 21, 5, 10),
(14, 14, 33, 1, 6),
(15, 15, 47, 3, 18),
(16, 16, 55, 2, 10),
(17, 17, 62, 4, 28),
(18, 18, 8, 2, 20),
(19, 19, 11, 3, 36),
(20, 20, 19, 1, 4),
(21, 21, 23, 5, 40),
(22, 22, 29, 2, 20),
(23, 23, 32, 3, 27),
(24, 24, 35, 2, 8),
(25, 25, 38, 1, 12),
(26, 26, 41, 4, 28),
(27, 27, 44, 2, 10),
(28, 28, 46, 3, 12),
(29, 29, 49, 1, 8),
(30, 30, 52, 5, 25),
(31, 31, 54, 2, 16),
(32, 32, 58, 1, 7),
(33, 33, 61, 4, 28),
(34, 34, 64, 2, 8),
(35, 35, 67, 3, 24),
(36, 36, 70, 5, 30),
(37, 37, 72, 1, 6),
(38, 38, 74, 2, 8),
(39, 39, 76, 4, 48),
(40, 40, 78, 3, 45),
(41, 41, 80, 2, 40),
(42, 42, 2, 5, 10),
(43, 43, 4, 1, 6),
(44, 44, 6, 3, 21),
(45, 45, 10, 2, 18),
(46, 46, 14, 4, 12),
(47, 47, 16, 2, 10),
(48, 48, 20, 3, 12),
(49, 49, 22, 1, 7),
(50, 50, 24, 5, 10),
(51, 51, 26, 2, 8),
(52, 52, 28, 3, 30),
(53, 53, 31, 1, 9),
(54, 54, 34, 2, 6),
(55, 55, 36, 4, 24),
(56, 56, 39, 3, 24),
(57, 57, 42, 1, 3),
(58, 58, 45, 2, 12),
(59, 59, 48, 5, 40),
(60, 60, 51, 3, 15),
(61, 61, 53, 2, 12),
(62, 62, 56, 4, 24),
(63, 63, 59, 1, 8),
(64, 64, 63, 3, 21),
(65, 65, 65, 2, 12),
(66, 66, 68, 1, 6),
(67, 67, 71, 5, 35),
(68, 68, 73, 2, 8),
(69, 69, 75, 3, 15),
(70, 70, 77, 1, 12),
(71, 71, 79, 4, 72),
(72, 72, 1, 2, 6),
(73, 73, 3, 3, 3),
(74, 74, 17, 1, 5),
(75, 75, 27, 2, 10),
(76, 76, 37, 5, 60),
(77, 77, 57, 2, 14),
(78, 78, 66, 3, 18),
(79, 79, 69, 4, 24),
(80, 80, 9, 2, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `idCliente`, `Fecha`, `Total`) VALUES
(1, 1, '2025-01-02', 36),
(2, 2, '2025-01-03', 120),
(3, 3, '2025-01-04', 19),
(4, 4, '2025-01-05', 250),
(5, 5, '2025-01-06', 75),
(6, 6, '2025-01-07', 43),
(7, 7, '2025-01-08', 99),
(8, 8, '2025-01-09', 68),
(9, 9, '2025-01-10', 150),
(10, 10, '2025-01-11', 221),
(11, 11, '2025-01-12', 90),
(12, 12, '2025-01-13', 34),
(13, 13, '2025-01-14', 57),
(14, 14, '2025-01-15', 42),
(15, 15, '2025-01-16', 310),
(16, 16, '2025-01-17', 28),
(17, 17, '2025-01-18', 200),
(18, 18, '2025-01-19', 81),
(19, 19, '2025-01-20', 145),
(20, 20, '2025-01-21', 60),
(21, 21, '2025-01-22', 260),
(22, 22, '2025-01-23', 132),
(23, 23, '2025-01-24', 26),
(24, 24, '2025-01-25', 95),
(25, 25, '2025-01-26', 111),
(26, 26, '2025-01-27', 410),
(27, 27, '2025-01-28', 38),
(28, 28, '2025-01-29', 75),
(29, 29, '2025-01-30', 89),
(30, 30, '2025-01-31', 470),
(31, 31, '2025-02-01', 36),
(32, 32, '2025-02-02', 128),
(33, 33, '2025-02-03', 30),
(34, 34, '2025-02-04', 60),
(35, 35, '2025-02-05', 210),
(36, 36, '2025-02-06', 321),
(37, 37, '2025-02-07', 100),
(38, 38, '2025-02-08', 20),
(39, 39, '2025-02-09', 440),
(40, 40, '2025-02-10', 73),
(41, 41, '2025-02-11', 56),
(42, 42, '2025-02-12', 130),
(43, 43, '2025-02-13', 260),
(44, 44, '2025-02-14', 91),
(45, 45, '2025-02-15', 175),
(46, 46, '2025-02-16', 48),
(47, 47, '2025-02-17', 320),
(48, 48, '2025-02-18', 60),
(49, 49, '2025-02-19', 86),
(50, 50, '2025-02-20', 29),
(51, 51, '2025-02-21', 100),
(52, 52, '2025-02-22', 37),
(53, 53, '2025-02-23', 310),
(54, 54, '2025-02-24', 84),
(55, 55, '2025-02-25', 22),
(56, 56, '2025-02-26', 260),
(57, 57, '2025-02-27', 47),
(58, 58, '2025-02-28', 73),
(59, 59, '2025-03-01', 306),
(60, 60, '2025-03-02', 129),
(61, 61, '2025-03-03', 59),
(62, 62, '2025-03-04', 116),
(63, 63, '2025-03-05', 250),
(64, 64, '2025-03-06', 36),
(65, 65, '2025-03-07', 160),
(66, 66, '2025-03-08', 98),
(67, 67, '2025-03-09', 24),
(68, 68, '2025-03-10', 43),
(69, 69, '2025-03-11', 120),
(70, 70, '2025-03-12', 150),
(71, 71, '2025-03-13', 99),
(72, 72, '2025-03-14', 76),
(73, 73, '2025-03-15', 240),
(74, 74, '2025-03-16', 58),
(75, 75, '2025-03-17', 20),
(76, 76, '2025-03-18', 300),
(77, 77, '2025-03-19', 135),
(78, 78, '2025-03-20', 46),
(79, 79, '2025-03-21', 83),
(80, 80, '2025-03-22', 420);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `PrecioVenta` decimal(10,0) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `PrecioVenta`, `Nombre`) VALUES
(1, 3, 'Agua Cielo 625ml'),
(2, 2, 'Galleta Oreo 6p'),
(3, 1, 'Caramelo Sublime'),
(4, 6, 'Leche Gloria 390g'),
(5, 5, 'Pan de Molde Bimbo'),
(6, 7, 'Aceite Belini 900ml'),
(7, 4, 'Atún Florida 140g'),
(8, 10, 'Arroz Costeño 750g'),
(9, 8, 'Azúcar Rubia 1kg'),
(10, 9, 'Harina Blanca Flor 1kg'),
(11, 4, 'Sal Yodada 1kg'),
(12, 12, 'Café Altomayo 200g'),
(13, 3, 'Gaseosa Inca Kola 600ml'),
(14, 3, 'Gaseosa Coca Cola 600ml'),
(15, 7, 'Jugo Frugos 970ml'),
(16, 2, 'Chupetín Ambrosoli'),
(17, 5, 'Chocolate Sublime tableta'),
(18, 4, 'Galleta Soda Field'),
(19, 3, 'Galleta Club Social'),
(20, 4, 'Chifles 100g'),
(21, 2, 'Caramelo Bon o Bon'),
(22, 7, 'Cereal Zucaritas 250g'),
(23, 8, 'Cereal Angel 300g'),
(24, 2, 'Galleta Margarita'),
(25, 3, 'Cerveza Pilsen 355ml'),
(26, 4, 'Cerveza Cristal 355ml'),
(27, 5, 'Cerveza Cusqueña 355ml'),
(28, 12, 'Ron Cartavio 750ml'),
(29, 10, 'Vino Borgoña 750ml'),
(30, 6, 'Energizante Red Bull'),
(31, 4, 'Energizante Volt 500ml'),
(32, 9, 'Aceite Primor 900ml'),
(33, 6, 'Vinagre Del Firme 1L'),
(34, 3, 'Kétchup Alacena 200g'),
(35, 4, 'Mostaza Alacena 200g'),
(36, 5, 'Mayonesa Alacena 250g'),
(37, 8, 'Mantequilla Gloria 190g'),
(38, 12, 'Queso Edam 250g'),
(39, 6, 'Jamón de Pavita 200g'),
(40, 5, 'Salchicha Laive 200g'),
(41, 2, 'Caramelo Tic Tac'),
(42, 3, 'Galleta Tentación'),
(43, 4, 'Chupetín Trome Pop'),
(44, 5, 'Chocolate Princesa'),
(45, 6, 'Chocolate Triángulo'),
(46, 4, 'Helado D’Onofrio Bombón'),
(47, 4, 'Helado D’Onofrio Sandwich'),
(48, 3, 'Helado D’Onofrio Copa K'),
(49, 3, 'Huevo Blanco x6'),
(50, 8, 'Huevo de Corral x12'),
(51, 5, 'Papa Blanca 1kg'),
(52, 6, 'Cebolla Roja 1kg'),
(53, 4, 'Tomate Italiano 1kg'),
(54, 3, 'Zanahoria 1kg'),
(55, 2, 'Plátano de Seda 1kg'),
(56, 4, 'Mandarina 1kg'),
(57, 5, 'Naranja de Jugo 1kg'),
(58, 3, 'Manzana Roja 1kg'),
(59, 2, 'Palta Fuerte 1kg'),
(60, 6, 'Limón Sutil 1kg'),
(61, 7, 'Yogurt Gloria Fresa 946ml'),
(62, 7, 'Yogurt Gloria Durazno 946ml'),
(63, 7, 'Yogurt Gloria Natural 946ml'),
(64, 3, 'Refresco Kanu 200g'),
(65, 4, 'Refresco Tang 200g'),
(66, 7, 'Refresco Tampico 3L'),
(67, 3, 'Gelatina Negrita 100g'),
(68, 2, 'Flan Negrita 100g'),
(69, 8, 'Leche condensada Gloria 393g'),
(70, 7, 'Mezcla lactea Ideal 390g'),
(71, 6, 'Mermelada Fanny Fresa 250g'),
(72, 6, 'Mermelada Fanny Durazno 250g'),
(73, 3, 'Pan Francés x5'),
(74, 4, 'Pan Ciabatta x4'),
(75, 5, 'Pan Integral x6'),
(76, 16, 'Paneton Chocoton 490g'),
(77, 19, 'Paneton Todinno 900g'),
(78, 15, 'Paneton Gloria 900g'),
(79, 18, 'Paneton D’Onofrio 880g'),
(80, 20, 'Paneton San Jorge 900g');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDetalles`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProductos` (`idProductos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDetalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
