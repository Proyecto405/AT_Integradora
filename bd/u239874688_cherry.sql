-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-03-2024 a las 01:36:24
-- Versión del servidor: 10.11.7-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u239874688_cherry`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Id_Carrera` int(11) NOT NULL,
  `NombreCarrera` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Id_Carrera`, `NombreCarrera`) VALUES
(1, 'Informática'),
(2, 'Turismo'),
(3, 'Alimentos y bebidas'),
(4, 'Contabilidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriamaterial`
--

CREATE TABLE `categoriamaterial` (
  `Id_Categoria` int(11) NOT NULL,
  `NombreCate` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `categoriamaterial`
--

INSERT INTO `categoriamaterial` (`Id_Categoria`, `NombreCate`) VALUES
(1, 'Utencilios de madera'),
(2, 'Utencilios de metal'),
(3, 'Utencilios de Plastico'),
(4, 'Loza'),
(5, 'Utencilios de madera'),
(6, 'Utencilios de metal'),
(7, 'Utencilios de Plastico'),
(8, 'Loza'),
(9, 'Condimento'),
(10, 'Plasticos'),
(11, 'Cereales'),
(12, 'Especies'),
(13, 'Desengrasante'),
(14, 'Conserva'),
(15, 'Semillas'),
(16, 'Grasas'),
(17, 'Desechables'),
(18, 'Lacteos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradamaterial`
--

CREATE TABLE `entradamaterial` (
  `Id_EntradaM` int(11) NOT NULL,
  `Id_MaterialEnt` int(11) NOT NULL,
  `FechaEn` date NOT NULL,
  `CantidadEnt` float NOT NULL,
  `NumeroFactura` varchar(255) NOT NULL,
  `Id_TEntrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Id_Estado` int(11) NOT NULL,
  `NombreEstado` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Id_Estado`, `NombreEstado`) VALUES
(1, 'México'),
(2, 'Aguascalientes'),
(3, 'Bajacalifornia'),
(4, 'Bajacalifornia sur'),
(5, 'Campeche'),
(6, 'Coahuila'),
(7, 'Colima'),
(8, 'Chiapas'),
(9, 'Chihuahua'),
(10, 'Durango'),
(11, 'Ciudad de mexico'),
(12, 'Guanajuato'),
(13, 'Guerrero'),
(14, 'Hidalgo'),
(15, 'Jalisco'),
(16, 'Michoacan'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo Leon'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Queretaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosi'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatan'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatussistem`
--

CREATE TABLE `estatussistem` (
  `Id_Estatus` int(11) NOT NULL,
  `NombreEstatus` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatussistem`
--

INSERT INTO `estatussistem` (`Id_Estatus`, `NombreEstatus`) VALUES
(1, 'Activo'),
(2, 'Pendiente'),
(3, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatususer`
--

CREATE TABLE `estatususer` (
  `Id_EstatusUser` int(11) NOT NULL,
  `DEstatusUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatususer`
--

INSERT INTO `estatususer` (`Id_EstatusUser`, `DEstatusUser`) VALUES
(1, 'Activo'),
(2, 'Restringido'),
(3, 'Suspendido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fdvdp_u`
--

CREATE TABLE `fdvdp_u` (
  `Id_Formato` int(11) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL,
  `Nombre_A` varchar(55) NOT NULL,
  `Id_Turno` int(11) NOT NULL,
  `Fecha_F` varchar(55) NOT NULL,
  `Nombre_PR` varchar(255) NOT NULL,
  `Nombre_D` varchar(55) NOT NULL,
  `Descripcion_PR` text NOT NULL,
  `Observaciones_PR` text NOT NULL,
  `Cantidad_PR` varchar(55) NOT NULL,
  `Cancelado` varchar(55) NOT NULL,
  `Recibido` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `Id_Grupo` int(11) NOT NULL,
  `Grupo` varchar(55) NOT NULL,
  `Id_Carrera` int(11) NOT NULL,
  `Id_Turno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`Id_Grupo`, `Grupo`, `Id_Carrera`, `Id_Turno`) VALUES
(1, '101', 3, 1),
(2, '102', 3, 1),
(3, '103', 4, 1),
(4, '104', 2, 1),
(5, '105', 1, 1),
(6, '106', 1, 1),
(7, '301', 3, 1),
(8, '302', 3, 1),
(9, '303', 4, 1),
(10, '304', 2, 1),
(11, '305', 1, 1),
(12, '306', 1, 1),
(13, '501', 3, 1),
(14, '502', 3, 1),
(15, '503', 4, 1),
(16, '504', 2, 1),
(17, '505', 1, 1),
(18, '506', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `Id_Historial` int(11) NOT NULL,
  `FechaIng` date NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `FechaSal` date NOT NULL,
  `Accion` varchar(55) NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Id_Inventario` int(11) NOT NULL,
  `Id_Kardex` int(11) NOT NULL,
  `FechaInventario` date NOT NULL,
  `CantidadFisica` float NOT NULL,
  `CantidadSistema` float NOT NULL,
  `CantidadTotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `Id_Kardex` int(11) NOT NULL,
  `Id_Material` int(11) NOT NULL,
  `StokMaterial` int(11) NOT NULL,
  `Id_UsuarioM` int(11) NOT NULL,
  `Id_EntradaM` int(11) NOT NULL,
  `Id_Salida` int(11) NOT NULL,
  `CantidadTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorios`
--

CREATE TABLE `laboratorios` (
  `Id_Laboratorio` int(11) NOT NULL,
  `NombreLaboratorio` varchar(55) NOT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `Id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laboratorios`
--

INSERT INTO `laboratorios` (`Id_Laboratorio`, `NombreLaboratorio`, `Id_Plantel`, `Id_carrera`) VALUES
(1, 'Laboratotio A INFO', 1, 1),
(2, 'Laboratotio B INFO', 1, 1),
(3, 'Laboratorio C INFO', 1, 1),
(4, 'Laboratorio A ', 1, 3),
(5, 'Laboratorio B', 1, 3),
(6, 'Bar', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `Id_Marca` int(11) NOT NULL,
  `NombreMarca` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`Id_Marca`, `NombreMarca`) VALUES
(1, 'TecnoChef'),
(2, 'Tefal'),
(3, 'Ibili'),
(4, 'COSTCO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `Id_Material` int(11) NOT NULL,
  `NombreMat` varchar(55) NOT NULL,
  `DescripcionMat` text NOT NULL,
  `Id_UnidadM` int(11) NOT NULL,
  `Id_Marca` int(11) NOT NULL,
  `PrecioMaterial` float NOT NULL,
  `Id_Categoria` int(11) NOT NULL,
  `ImagenMat` varchar(255) NOT NULL,
  `CodigoBMaterial` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`Id_Material`, `NombreMat`, `DescripcionMat`, `Id_UnidadM`, `Id_Marca`, `PrecioMaterial`, `Id_Categoria`, `ImagenMat`, `CodigoBMaterial`) VALUES
(1, 'Mandolinas corta patatas', 'es una de las herramientas más usadas en la cocina, además de ser un buen juego de cuchillos facilita el corte de las patatas y todo se debe a sus cuchillas completamente intercambiables permitiendo un corte muy profesional y sobre todo de gran uniformidad.', 1, 1, 632.09, 2, 'Mandolina.jpg', ''),
(2, 'Tablas de cocina para cortar alimentos', 'Las tablas de corte para alimentos han pasado de ser un simple utensilio de cocina a uno absolutamente indispensable para todos cuantos cocinan, por esas excelentes innovadoras características que le han ido incorporando conforme ha evolucionado la preparación de diversas recetas.', 1, 1, 501.13, 3, 'Tabla.jpg', ''),
(3, 'Sifones de cocina para montar natas y espumas', 'El sifón de espumas es un recipiente metálico con diversas capacidades entre 250ml y los 1000ml, su tapa es de rosca por donde sale una boquilla que se acciona mediante una palanca; también tiene un compartimiento por donde se coloca la carga del gas.', 1, 2, 429, 2, 'Sifon.jpg ', ''),
(4, 'Aros de emplatar', 'Los aros de emplatar o aros de repostería como también se les llama en muchos lugares, fueron creados orientados específicamente a quienes se dedican de manera profesional a la gastronomía para que con ellos pudiesen presentar sus platos tan perfectamente apilados conforme quisieran quedaran, de manera fácil y rápida.', 1, 3, 241.91, 2, 'Aro.png', ''),
(5, 'Lenguas de silicona', 'Al adquirir un utensilio de cocina no solo buscamos que elaborar los alimentos sea más fácil o con un mejor sabor, sino también el cuidado de las herramientas de cocina, principalmente si de sartenes se trata, pues las capacidades antiadherentes de estos se gastan no solo por el paso del tiempo, sino también por el uso de utensilios agresivos que rayan su superficie.', 1, 1, 125, 3, 'Lengua.jpg', ''),
(6, 'Aceiteras de cocina', 'La aceitera es un utensilio de cocina que se utiliza para servir aceite y evitar que se desperdicie. la más común es la jarra de vidrio pequeña, y las que están fabricadas en acero inoxidable de fondo plano con asa se usa para aliñar.', 1, 1, 385.05, 2, 'Aceitera.png', ''),
(7, 'Molinillo de pimienta y cafe', 'Los molinillos de pimienta no solo se usan para la pimienta sino que también es excelente para moler la sal marina, anteriormente se utilizaban los saleros o pimenteros los cuales funcionaban con los condimentos ya molidos lo que hacía que estos perdieran el sabor.', 1, 2, 216.19, 2, 'Molinos.jpg', ''),
(8, 'Sacacorchos', 'Todos tenemos momentos especiales en nuestra vida, algunos de ellos son tan importantes que merecen el descorche de una buena botella de vino. Y además de la botella, algo que por varias razones no puede faltar es contar con un respectivo sacacorchos.', 1, 3, 209.99, 2, 'corchos.png', ''),
(9, 'Bascula de cocina plana', 'La báscula de cocina es un herramienta básica en todo hogar, no solo porque nos permite medir la cantidad de un ingrediente o alimento en cuestión, sino porque, con el paso del tiempo, nos ayuda a comprender el estándar de consumo familiar, haciéndonos posible conocer cómo y cuánto cocinar para que todos en la familia coman sin que sobre nada y, con ello optimizamos la elaboración de alimentos en el día a día, esto evitando desperdicios y minimizando el gasto desmedido de ingredientes', 1, 2, 289, 2, 'bascula.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `Id_Mensaje` int(11) NOT NULL,
  `Id_Tnotificacion` int(11) NOT NULL,
  `TextMensaje` text NOT NULL,
  `Id_EstatusMensaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `Id_Municipio` int(11) NOT NULL,
  `NombreMunicipio` varchar(55) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`Id_Municipio`, `NombreMunicipio`, `Id_Estado`) VALUES
(1, 'Naucalpan', 1),
(2, 'Tlanepantla', 1),
(3, 'Atizapan', 1),
(4, 'Abasolo', 28),
(5, 'Aldama', 28),
(6, 'Antiguo Morelos', 28),
(7, 'Burgos', 28),
(8, 'Bustamente', 28),
(9, 'Camargo', 28),
(10, 'Casas', 28),
(11, 'Ciudad Madero', 28),
(12, 'Cruillas', 28),
(13, 'Gómez Farías', 28),
(14, 'Gónzalez', 28),
(15, 'Guemez', 28),
(16, 'Guerrero', 28),
(17, 'Gustavo Díaz Ordaz', 28),
(18, 'Hidalgo', 28),
(19, 'Jaumave', 28),
(20, 'Jiménez', 28),
(21, 'llera', 28),
(22, 'Abasolo', 28),
(23, 'Aldama', 28),
(24, 'Antiguo Morelos', 28),
(25, 'Burgos', 28),
(26, 'Bustamente', 28),
(27, 'Camargo', 28),
(28, 'Casas', 28),
(29, 'Ciudad Madero', 28),
(30, 'Cruillas', 28),
(31, 'Gómez Farías', 28),
(32, 'Gónzalez', 28),
(33, 'Guemez', 28),
(34, 'Guerrero', 28),
(35, 'Gustavo Díaz Ordaz', 28),
(36, 'Hidalgo', 28),
(37, 'Jaumave', 28),
(38, 'Jiménez', 28),
(39, 'Llera', 28),
(40, 'Minero', 28),
(41, 'El Mante', 28),
(42, 'Matamoros', 28),
(43, 'Méndez', 28),
(44, 'Mier', 28),
(45, 'Miguel Alemán', 28),
(46, 'Miquihuana', 28),
(47, 'Nuevo Laredo', 28),
(48, 'Nuevo Morelos', 28),
(49, 'Ocampo', 28),
(50, 'Padilla', 28),
(51, 'Palmillas', 28),
(52, 'Reynosa', 28),
(53, 'Río Bravo', 28),
(54, 'San Carlos', 28),
(55, 'San Fernando', 28),
(56, 'San Nicolás', 28),
(57, 'Soto la Marina', 28),
(58, 'Tampico', 28),
(59, 'Tula', 28),
(60, 'Valle Hermoso', 28),
(61, 'Victoria', 28),
(62, 'Villagrán', 28),
(63, 'Xicoténcatl', 28),
(64, 'Ensenada', 3),
(65, 'Mexicalli', 3),
(66, 'Tecate', 3),
(67, 'Tijuana', 3),
(68, 'Playas de Rosarito', 3),
(69, 'San Quintín', 3),
(70, 'San Felipe', 3),
(71, 'Carichí', 9),
(72, 'Camargo', 9),
(73, 'Buenaventura', 9),
(74, 'Batopilas de Manuel Gómez Morín', 9),
(75, 'Ahumada', 9),
(76, 'Aldama', 9),
(77, 'Allende', 9),
(78, 'Aquiles Serdán', 9),
(79, 'Ascensión', 9),
(80, 'Bachíniva', 9),
(81, 'Balleza', 9),
(82, 'Bocoyna', 9),
(83, 'Abejones', 20),
(84, 'Calihuala', 20),
(85, 'Chahuites', 20),
(86, 'Huautepec', 20),
(87, 'Loma Bonita', 20),
(88, 'Cosolapa', 20),
(89, 'Cosoltepec', 20),
(90, 'Fresnillo de Trujano', 20),
(91, 'Guadalupe de Ramírez', 20),
(92, 'Guelatao de Juarez', 20),
(93, 'Villa Hidalgo', 20),
(94, 'Monjas', 20),
(95, 'Natividad', 20),
(96, 'San Juan del rio', 20),
(97, 'San Lorenzo Victoria', 20),
(98, 'San Mateo Río hondo', 20),
(99, 'Villa sola de vega', 20),
(100, 'San Nicolas', 20),
(101, 'San Nicolás Hidalgo', 20),
(102, 'San Pedro Taviche', 20),
(103, 'Yaxe', 20),
(104, 'Teotongo', 20),
(105, 'Villa Diaz Ordaz', 20),
(106, 'Yogana', 20),
(107, 'Santa Ines de Zaragoza', 20),
(108, 'Taniche', 20),
(109, 'San Agustín Chayuco', 20),
(110, 'El barrio de la soledad', 20),
(111, 'La compañía', 20),
(112, 'Magdalena Ocotlan', 20),
(113, 'Nazareno Etla', 20),
(114, 'La Pe', 20),
(115, 'Pluma Hidalgo', 20),
(116, 'Reforma de Pineda', 20),
(117, 'La reforma', 20),
(118, 'Apozol', 29),
(119, 'Apulco', 29),
(120, 'Atolinga', 29),
(121, 'Benito Juárez', 29),
(122, 'Calera', 29),
(123, 'Cañitas de Felipe Pescador', 29),
(124, ' Concepción del Oro', 29),
(125, ' Cuauhtémoc ', 29),
(126, 'Chalchihuites', 29),
(127, 'Fresnillo', 29),
(128, 'Trinidad García de la Cadena', 29),
(129, 'Genaro Godina', 29),
(130, 'General Enrique Estrada', 29),
(131, 'General Francisco R. Murguía', 29),
(132, 'El Plateado de Joaquín Amaro', 29),
(133, 'General Pánfilo Natera', 29),
(134, 'Guadalupe', 29),
(135, 'Huanusco', 29),
(136, '	Jalpa', 29),
(137, 'Jerez', 29),
(138, 'Jiménez del Teul', 29),
(139, 'Juan Aldama', 29),
(140, 'Juchipila', 29),
(141, 'Loreto', 29),
(142, 'Luis Moya', 29),
(143, 'Mazapil', 29),
(144, 'Melchor Ocampo', 29),
(145, 'Mezquital del Oro', 29),
(146, 'Miguel Auza', 29),
(147, 'Momax', 29),
(148, '	Monte Escobedo', 29),
(149, 'Morelos', 29),
(150, 'Moyahua de Estrada', 29),
(151, 'Nochistlán de Mejía', 29),
(152, 'Noria de Ángeles', 29),
(153, 'Ojocaliente', 29),
(154, 'Pánuco', 29),
(155, 'Pinos', 29),
(156, 'Río Grande', 29),
(157, 'Río Grande', 29),
(158, 'El Salvador', 29),
(159, 'Sombrerete', 29),
(160, 'Susticacán', 29),
(161, 'Tabasco', 29),
(162, 'Tepechitlán', 29),
(163, 'Tepetongo', 29),
(164, 'Teúl de González Ortega', 29),
(165, 'Tlaltenango de Sánchez Román', 29),
(166, 'Valparaíso', 29),
(167, 'Vetagrande', 29),
(168, 'Villa de Cos', 29),
(169, 'Villa García', 29),
(170, 'Villa González Ortega', 29),
(171, 'Villa Hidalgo', 29),
(172, 'Villanueva', 29),
(173, 'Zacatecas', 29),
(174, 'Trancoso', 29),
(175, 'Santa María de la Paz', 29),
(176, 'aguascalientes', 2),
(177, 'asientos', 2),
(178, 'calvillo', 2),
(179, 'cosío', 2),
(180, 'Jesús María', 2),
(181, 'pabellón de Arteaga ', 2),
(182, 'rincón de ramos', 2),
(183, 'san José de gracia', 2),
(184, 'tepezala', 2),
(185, 'san Francisco de los romo', 2),
(186, 'el llano', 2),
(187, 'armería ', 7),
(188, 'colima', 7),
(189, 'cómala ', 7),
(190, 'coquimatlan', 7),
(191, 'cuautemoc ', 7),
(192, 'manzanillo', 7),
(193, 'minatitlan ', 7),
(194, 'villa de Álvarez ', 7),
(195, 'ixtlahuacan ', 7),
(196, 'Acacoyagua', 8),
(197, 'Acala', 8),
(198, 'Acapetahua', 8),
(199, 'Altamirano', 8),
(200, 'Amatan', 8),
(201, 'Amatenango de la frontera ', 8),
(202, 'Amatenango Del Valle ', 8),
(203, 'Angel Albino Corzo', 8),
(204, 'Arriaga', 8),
(205, 'Bejucal de Ocampo', 8),
(206, 'Bella Vista', 8),
(207, 'Berriozabal', 8),
(208, 'Bochil', 8),
(209, 'El bosque', 8),
(210, 'Cacahoatan', 8),
(211, 'Catazaja', 8),
(212, 'Cintalapa', 8),
(213, 'Coapilla', 8),
(214, 'Comitan De Domínguez ', 8),
(215, 'La concordia', 8),
(216, 'Copainala', 8),
(217, 'Chalchihuitan', 8),
(218, 'Chamula', 8),
(219, 'Chanal', 8),
(220, 'Chapultenango', 8),
(221, 'Chenalho', 8),
(222, 'Chiapa de Corzo', 8),
(223, 'Chiapilla', 8),
(224, 'Chicoasen', 8),
(225, 'Chicomuselo', 8),
(226, 'Chilon', 8),
(227, 'Escuintla', 8),
(228, 'Francisco Leon', 8),
(229, 'Frontera Comalapa', 8),
(230, 'Frontera Hidalgo', 8),
(231, 'La grandeza', 8),
(232, 'Huehuetan', 8),
(233, 'Huixtla', 8),
(234, 'La independencia', 8),
(235, 'Ixhuatan', 8),
(236, 'Ixtacomitan', 8),
(237, 'Ixtapa', 8),
(238, 'Ixtapangajoya', 8),
(239, 'Jiquipilas', 8),
(240, 'Jitotol', 8),
(241, 'Juárez', 8),
(242, 'Larrainzar', 8),
(243, 'La Libertad', 8),
(244, 'Mapastepec', 8),
(245, 'Las Margaritas', 8),
(246, 'Mazapa de Madero', 8),
(247, 'Mazatan', 8),
(248, 'Metapa', 8),
(249, 'Mitontic', 8),
(250, 'Motozintla', 8),
(251, 'Nicolas Ruiz', 8),
(252, 'Ocosingo', 8),
(253, 'Ocotepec', 8),
(254, 'Ocozocoautla de Espinosa', 8),
(255, 'Ostuacan', 8),
(256, 'Osumacinta', 8),
(257, 'Oxchuc', 8),
(258, 'Palenque', 8),
(259, 'Pantelho', 8),
(260, 'Pantepec', 8),
(261, 'Pichucalco', 8),
(262, 'Pijijiapan', 8),
(263, 'El Porvenir', 8),
(264, 'Villa Comaltitlan', 8),
(265, 'Pueblo Nuevo Solistahuacan', 8),
(266, 'Rayon', 8),
(267, 'Reforma', 8),
(268, 'Las Rosas', 8),
(269, 'Sabanilla', 8),
(270, 'Salto de Agua', 8),
(271, 'San Cristobal de las Casas', 8),
(272, 'San Fernando', 8),
(273, 'Siltepec', 8),
(274, 'Simojovel', 8),
(275, 'Sitala', 8),
(276, 'Socoltenango', 8),
(277, 'Solosuchiapa', 8),
(278, 'Soyalo', 8),
(279, 'Suchiapa', 8),
(280, 'Suchiate', 8),
(281, 'Sunuapa', 8),
(282, 'Tapachula', 8),
(283, 'Tapalapa', 8),
(284, 'Tapilula', 8),
(285, 'Tecpatan', 8),
(286, 'Tenejapa', 8),
(287, 'Teopisca', 8),
(288, 'Tila', 8),
(289, 'Tonola', 8),
(290, 'Totolapa', 8),
(291, 'La Trinitaria', 8),
(292, 'Tumbala', 8),
(293, 'Tuxtla Guitierrez', 8),
(294, 'Tuxtla Chico', 8),
(295, 'Tuzatan', 8),
(296, 'Tzimol', 8),
(297, 'Union Juarez', 8),
(298, 'Venustiano Carranza', 8),
(299, 'Villa Corzo', 8),
(300, 'Villaflores', 8),
(301, 'Yajalon', 8),
(302, 'San Lucas', 8),
(303, 'Zinacantan', 8),
(304, 'San Juan Cancuc', 8),
(305, 'Aldama', 8),
(306, 'Benimerito de las Americas', 8),
(307, 'Maravilla Tenejapa', 8),
(308, 'Marques de Comillas', 8),
(309, 'Montecristo de Guerrero', 8),
(310, 'San Andres Duraznal', 8),
(311, 'Santiago el Pinar', 8),
(312, 'Capitan Luis Angel Vidal', 8),
(313, 'Rincon Chamula San Pedro', 8),
(314, 'El Parral', 8),
(315, 'Emiliano Zapata', 8),
(316, 'Mezcalapa', 8),
(317, 'Honduras de la Sierra', 8),
(318, 'Aconchi', 26),
(319, 'Agua Prieta', 26),
(320, 'Alamos', 26),
(321, 'Altar', 26),
(322, 'Arivechi', 26),
(323, 'Arizpe', 26),
(324, 'Atil', 26),
(325, 'Bacadéhuachi', 26),
(326, 'Bacanora', 26),
(327, 'Bacerac', 26),
(328, 'Bacoachi', 26),
(329, 'Bácum', 26),
(330, 'Banámichi', 26),
(331, 'Baviácora', 26),
(332, 'Bavispe', 26),
(333, 'Benjamín Hill', 26),
(334, 'Caborca', 26),
(335, 'Cajeme', 26),
(336, 'Cananea', 26),
(337, 'Carbó', 26),
(338, 'La Colorada', 26),
(339, 'Cucurpe', 26),
(340, 'Cumpas', 26),
(341, 'Divisaderos', 26),
(342, 'Empalme', 26),
(343, 'Etchojoa', 26),
(344, 'Fronteras', 26),
(345, 'Granados', 26),
(346, 'Guaymas', 26),
(347, 'Hermosillo', 26),
(348, 'Huachinera', 26),
(349, 'Huásabas', 26),
(350, 'Huatabampo', 26),
(351, 'Huépac', 26),
(352, 'Imuris', 26),
(353, 'Magdalena', 26),
(354, 'Mazatán', 26),
(355, 'Moctezuma', 26),
(356, 'Naco', 26),
(357, 'Nácori Chico', 26),
(358, 'Nacozari de García', 26),
(359, 'Navojoa', 26),
(360, 'Nogales', 26),
(361, 'Ónovas', 26),
(362, 'Opodepe', 26),
(363, 'Oquitoa', 26),
(364, 'Pitiquito', 26),
(365, 'Puerto Peñasco', 26),
(366, 'Quiriego', 26),
(367, 'Rayón', 26),
(368, 'Rosario', 26),
(369, 'Sahuaripa', 26),
(370, 'San Felipe de Jesús', 26),
(371, 'San Javier', 26),
(372, 'San Luis Río Colorado', 26),
(373, 'San Miguel de Horcasitas', 26),
(374, 'San Pedro de la Cueva', 26),
(375, 'Santa Ana', 26),
(376, 'Santa Cruz', 26),
(377, 'Sáric', 26),
(378, 'Soyopa', 26),
(379, 'Suaqui Grande', 26),
(380, 'Tepache', 26),
(381, 'Trincheras', 26),
(382, 'Tubutama', 26),
(383, 'Ures', 26),
(384, 'Villa Hidalgo', 26),
(385, 'Villa Pesqueira', 26),
(386, 'Yécora', 26),
(387, 'General Plutarco Elías Calles', 26),
(388, 'Benito Juárez', 26),
(389, 'San Ignacio Río Muerto', 26),
(390, 'Amealco de Bonfil', 18),
(391, 'pinal de amoles', 18),
(392, 'Arroyo seco', 18),
(393, 'Cadereyta deMontes', 18),
(394, 'Colon', 18),
(395, 'corregidora', 18),
(396, 'Ezequiel Montes', 18),
(397, 'Huimilpan', 18),
(398, 'jalpan de serra', 18),
(399, 'Landa deMatamoros', 18),
(400, 'El marques', 18),
(401, 'pedro escobedo', 18),
(402, 'peñamiller', 18),
(403, 'queretaro', 18),
(404, 'San joaquin', 18),
(405, 'San juan del rio', 18),
(406, 'Tequisquiapan', 18),
(407, 'Toliman', 18),
(408, 'Canatlán', 10),
(409, 'Canelas', 10),
(410, 'Coneto de Comonfort', 9),
(411, 'Cuencamé', 10),
(412, 'Durango', 10),
(413, 'General Simón Bolivar', 10),
(414, 'Gómez Palacio', 10),
(415, 'Guadalupe Victoria', 10),
(416, 'Guanaceví', 10),
(417, 'Hidalgo', 10),
(418, 'Indé', 10),
(419, 'Lerdo', 10),
(420, 'Mapimí', 10),
(421, 'Mezquital', 10),
(422, 'Nazas', 10),
(423, 'Nombre de Dios', 10),
(424, 'Ocampo', 10),
(425, 'El Oro', 10),
(426, 'Otáez', 10),
(427, 'Pánuco de Coronado', 10),
(428, 'Peñon Blanco', 10),
(429, 'Poanas', 10),
(430, 'Pueblo Nuevo', 10),
(431, 'Rodeo', 10),
(432, 'San Bernardo', 10),
(433, 'San Dimas', 10),
(434, 'San Juan de Guadalupe', 10),
(435, 'San Juan del Río', 10),
(436, 'San Luis de Cordero', 10),
(437, 'San Pedro del Gallo', 10),
(438, 'Santa Clara', 10),
(439, 'Santiago Papasquiaro', 10),
(440, 'Súchil', 10),
(441, 'Tamazula', 10),
(442, 'Tepehuanes', 10),
(443, 'Tlahualilo', 10),
(444, 'Topía', 10),
(445, 'Vicente Guerrero', 10),
(446, 'Nuevo Ideal', 10),
(447, 'Saltillo', 6),
(448, 'Torreon', 6),
(449, 'Monclova', 6),
(450, 'Piedras Negras', 6),
(451, 'Zaragoza', 6),
(452, 'Nadadores', 6),
(453, 'General Cepeda', 6),
(454, 'Allende', 6),
(455, 'San Buenaventura', 6),
(456, 'Viesca', 6),
(457, 'Ramos Arizpe', 6),
(458, 'Ciudad Acuña', 6),
(459, 'Frontera', 6),
(460, 'Progreso', 6),
(461, 'Parras de la Fuente', 6),
(462, 'San Pedro', 6),
(463, 'Cataños', 6),
(464, 'Melchor Muzquiz', 6),
(465, 'Francisco I Madero', 6),
(466, 'Arteaga', 6),
(467, 'Nava', 6),
(468, 'Cuatrocienegas', 6),
(469, 'Sierra Mojada', 6),
(470, 'Matamoros', 6),
(471, 'Escobedo', 6),
(472, 'Lamadrid', 6),
(473, 'Sacramento', 6),
(474, 'Abasolo', 6),
(475, 'Ocampo', 6),
(476, 'Candela', 6),
(477, 'Nueva Rosita', 6),
(478, 'Minas de Barroteran', 6),
(479, 'San Antonio del Coyote', 6),
(480, 'Hercules', 6),
(481, 'San Jose del Cloete', 6),
(482, 'Palau', 6),
(483, 'Colonia Benustiano Carranza', 6),
(484, 'Hidalgo', 6),
(485, 'Acatitlan de Bajan', 6),
(486, 'El Cmbio', 6),
(487, 'Sabinas', 6),
(488, 'Balancán', 27),
(489, 'Cárdenas', 27),
(490, 'Centla', 27),
(491, 'Centro', 27),
(492, 'Comalcalco', 27),
(493, 'Cunduacán', 27),
(494, 'Emiliano Zapata', 27),
(495, 'Huimanguillo', 27),
(496, 'Jalapa', 27),
(497, 'Jalpa de Méndez', 27),
(498, 'Jonuta', 27),
(499, 'Macuspana', 27),
(500, 'Nacajuca', 27),
(501, 'Paraíso', 27),
(502, 'Tacutalpa', 27),
(503, 'Teapa', 27),
(504, 'Tenosique', 27),
(505, 'Azcapotzalco', 11),
(506, 'Coyoacán', 11),
(507, 'Cuajimalpa de Morelos', 11),
(508, 'Gustavo A. Madero', 11),
(509, 'Iztacalco', 11),
(510, 'Iztapalapa', 11),
(511, 'La Magdalena Contreras', 11),
(512, 'Milpa Alta', 11),
(513, 'Álvaro Obregón', 11),
(514, 'Tláhuac', 11),
(515, 'Tlalpan', 11),
(516, 'Xochimilco', 11),
(517, 'Benito Juárez', 11),
(518, 'Cuauhtémoc', 11),
(519, 'Miguel Hidalgo', 11),
(520, 'Venustiano Carranza', 11),
(521, 'Amacuzac', 17),
(522, 'Atlatlahucan', 17),
(523, 'Axochiapan', 17),
(524, 'Ayala', 17),
(525, 'Coatlán del Río', 17),
(526, 'Cuautla', 17),
(527, 'Cuernavaca', 17),
(528, 'Emiliano Zapata', 17),
(529, 'Huitzilac', 17),
(530, 'Jantetelco', 17),
(531, 'Jiutepec', 17),
(532, 'Jonacatepec de Leandro Valle', 17),
(533, 'Mazatepec', 17),
(534, 'Miacatlán', 17),
(535, 'Ocuituco', 17),
(536, 'Temixco', 17),
(537, 'Tepalcingo', 17),
(538, 'Tepoztlán', 17),
(539, 'Tetecala', 17),
(540, 'Tetela del Volcán', 17),
(541, 'Tlalnepantla', 17),
(542, 'Tlaltizapán de Zapata', 17),
(543, 'Tlaquiltenango', 17),
(544, 'Tlayacapan', 17),
(545, 'Totolapan', 17),
(546, 'Xochitepec', 17),
(547, 'Yautepec', 17),
(548, 'Yecapixtla', 17),
(549, 'Zacatepec', 17),
(550, 'Zacualpan de Amilpas', 17),
(551, 'Temoac', 17),
(552, 'Coatetelco', 17),
(553, 'Coatetelco', 17),
(554, 'Xoxocotla', 17),
(555, 'Hueyapan', 17),
(556, 'Ahualulco', 24),
(557, ' Alaquines', 24),
(558, 'Aquismón', 24),
(559, 'Armadillo de los Infante', 24),
(560, 'Catorce', 24),
(561, 'Cedral', 24),
(562, 'Cerritos', 24),
(563, 'Cerro de San Pedro', 24),
(564, 'Ciudad del Maíz', 24),
(565, 'Ciudad Fernández', 24),
(566, 'Tancanhuitz', 24),
(567, 'Ciudad Valles', 24),
(568, 'Coxcatlán', 24),
(569, 'Charcas', 24),
(570, 'Ebano', 24),
(571, 'Guadalcázar', 24),
(572, 'Huehuetlán', 24),
(573, 'Lagunillas', 24),
(574, 'Matehuala', 24),
(575, 'Mexquitic de Carmona', 24),
(576, 'Moctezuma', 24),
(577, 'Rayón', 24),
(578, 'Rioverde', 24),
(579, 'Salinas', 24),
(580, 'San Antonio', 24),
(581, 'San Ciro de Acosta', 24),
(582, 'San Luis Potosí', 24),
(583, 'San Martín Chalchicuautla', 24),
(584, 'San Nicolás Tolentino', 24),
(585, 'Santa Catarina', 24),
(586, 'Santa María del Río', 24),
(587, 'Santo Domingo', 24),
(588, 'San Vicente Tancuayalab', 24),
(589, 'Soledad de Graciano Sánchez', 24),
(590, 'Tamasopo', 24),
(591, 'Tamazunchale', 24),
(592, 'Tampacán', 24),
(593, 'Tampamolón Corona', 24),
(594, 'Tamuín', 24),
(595, 'Tanlajás', 24),
(596, 'Tanquián de Escobedo', 24),
(597, 'Tierra Nueva', 24),
(598, 'Vanegas', 24),
(599, '	Venado', 24),
(600, 'Villa de Arriaga', 24),
(601, 'Villa de Guadalupe', 24),
(602, 'Villa de la Paz', 24),
(603, 'Villa de Ramos', 24),
(604, 'Villa de Reyes', 24),
(605, 'Villa Hidalgo', 24),
(606, 'Villa Juárez', 24),
(607, 'Axtla de Terrazas', 24),
(608, 'Xilitla', 24),
(609, 'Zaragoza', 24),
(610, 'Villa de Arista', 24),
(611, 'Matlapa', 24),
(612, 'El Naranjo', 24),
(613, 'Cozumel ', 23),
(614, 'Felipe Carrillo Puerto ', 23),
(615, 'Isla Mujeres ', 23),
(616, 'Othón P. Blanco', 23),
(617, 'Benito Juárez', 23),
(618, 'José María Morelos ', 23),
(619, 'Lázaro Cárdenas ', 23),
(620, 'Solidaridad ', 23),
(621, 'Tulum ', 23),
(622, 'Bacalar ', 23),
(623, 'Puerto Morelos', 23),
(624, 'Acajete', 21),
(625, 'Acatlan', 21),
(626, 'Acatzingo', 21),
(627, 'Acteopan', 21),
(628, 'Ahuacatlán', 21),
(629, 'Ahuazotepec', 21),
(630, 'Ahuehuetitla', 21),
(631, 'Ajalpan', 21),
(632, 'Albino Zertuche', 21),
(633, 'Aljojuca', 21),
(634, 'Altepexi', 21),
(635, 'Amixtlán', 21),
(636, 'Guerrero', 21),
(637, 'Amozoc', 21),
(638, 'Aquixtla', 21),
(639, 'Atempan', 21),
(640, 'Atexcal', 21),
(641, 'Atlixco', 21),
(642, 'Atoyatempan', 21),
(643, 'Atzala', 21),
(644, 'Atzitzihuacán', 21),
(645, 'Atzitzintla', 21),
(646, 'Axutla', 21),
(647, 'Ayotoxco ', 21),
(648, 'Calpan', 21),
(649, 'Caltepec', 21),
(650, 'Camocuautla', 21),
(651, 'Caxhuacan', 21),
(652, 'Coatepec', 21),
(653, 'Coatzingo', 21),
(654, 'Cohetzala', 21),
(655, 'Cohuecan', 21),
(656, 'Coronango', 21),
(657, 'Coxcatlán', 21),
(658, 'Coyomeapan', 21),
(659, 'Coyotepec', 21),
(660, 'Cuapiaxtla de Madero', 21),
(661, 'Cuautempan', 21),
(662, 'Cuautinchán', 21),
(663, 'Méndez', 21),
(664, 'Cuautlancingo', 21),
(665, 'Cuayuca de Andrade', 21),
(666, 'Cuetzalan del Progreso', 21),
(667, 'Cuyoaco', 21),
(668, 'Chalchicomula de Sesma', 21),
(669, 'Chapulco', 21),
(670, 'Chiautla', 21),
(671, 'Chiautzingo', 21),
(672, 'Chichiquila', 21),
(673, 'Tula', 21),
(674, 'Valle Hermoso', 21),
(675, 'Victoria', 21),
(676, 'Villagrán', 21),
(677, 'Xicoténcatl', 21),
(678, 'Honey', 21),
(679, 'Chilchotla', 21),
(680, 'Domingo Arenas', 21),
(681, 'Epatlán', 21),
(682, 'Esperanza', 21),
(683, 'Francisco Z. Mena', 21),
(684, 'General Felipe Ángeles', 21),
(685, 'Guadalupe', 21),
(686, 'Guadalupe Victoria', 21),
(687, 'Hermenegildo Galeana', 21),
(688, 'Huaquechula', 21),
(689, 'Huatlatlauca', 21),
(690, 'Huauchinango', 21),
(691, 'Huehuetla', 21),
(692, 'Huehuetlán el Chico', 21),
(693, 'Huejotzingo', 21),
(694, 'Hueytamalco', 21),
(695, 'Hueytlalpan', 21),
(696, 'Huitzilan de Serdán', 21),
(697, 'Huitziltepec', 21),
(698, 'Atlequizayan', 21),
(699, 'Ixcamilpa de Guerrero', 21),
(700, 'Ixcaquixtla', 21),
(701, 'Ixtacamaxtitlán', 21),
(702, 'Ixtepec', 21),
(703, 'Izúcar de Matamoros', 21),
(704, 'Jalpan', 21),
(705, 'Jolalpan', 21),
(706, 'Jonotla', 21),
(707, 'JopalaJopala', 21),
(708, 'Juan C. Bonilla', 21),
(709, 'Juan Galindo', 21),
(710, 'Juan N. Méndez', 21),
(711, 'Lafragua', 21),
(712, 'Libres', 21),
(713, 'Comondú', 4),
(714, 'Mulegé', 4),
(715, 'La Paz', 4),
(716, 'Los Cabos', 4),
(717, 'Loreto', 4),
(718, 'Acambay', 1),
(719, 'Acolman', 1),
(720, 'Aculo', 1),
(721, 'Almoya de Alquisiras', 1),
(722, 'Almoya de Juárez', 1),
(723, 'Almoya del Río', 1),
(724, 'Amanalco', 1),
(725, 'Amatepec', 1),
(726, 'Amecaneca', 1),
(727, 'Apaxco', 1),
(728, 'Atenco', 1),
(729, 'Atizapan', 1),
(730, 'Atizapan de Zaragoza', 1),
(731, 'Atlacomulco', 1),
(732, 'Atlautla', 1),
(733, 'Axapusco', 1),
(734, 'Ayapango', 1),
(735, 'Calimaya', 1),
(736, 'Capulhuac', 1),
(737, 'Coacalco Berriozábal', 1),
(738, 'Coatepec Harinas', 1),
(739, 'Cocotitlan', 1),
(740, 'Coyotepec', 1),
(741, 'Coatitlan', 1),
(742, 'Chalco', 1),
(743, 'Chapa de Mota Chapa de Mota', 1),
(744, 'Chapultepec', 1),
(745, 'Chiautla', 1),
(746, 'Chicoloapan', 1),
(747, 'Chiconcua', 1),
(748, 'Chimalhuacan', 1),
(749, 'Donato Guerrera', 1),
(750, 'Ecatepec de Morelos', 1),
(751, 'Ecatzingos', 1),
(752, 'Huehuetoca', 1),
(753, 'Hueypoxtla', 1),
(754, 'Huixquilucan', 1),
(755, 'Isidro Fabela', 1),
(756, 'Ixtapaluca', 1),
(757, 'Ixtapan de la Sal', 1),
(758, 'Ixtapan del Oro Ixtapan del Oro', 1),
(759, 'Ixtlauaca', 1),
(760, 'Xalatlaco', 1),
(761, 'Jalteco', 1),
(762, 'Jilotepec', 1),
(763, 'Jilotzingo', 1),
(764, 'Jiquipilco', 1),
(765, 'Jocotitlan', 1),
(766, 'Joquisingo', 1),
(767, 'Juchitepec', 1),
(768, 'Lerma', 1),
(769, 'Malinalco', 1),
(770, 'Melchor Ocampo', 1),
(771, 'Metepec', 1),
(772, 'Mexicaltzingo', 1),
(773, 'Morelos', 1),
(774, 'Naucalpan de Juárez', 1),
(775, 'NezahualcóyotlNezahualcóyotl', 1),
(776, 'Nextlalpan', 1),
(777, 'Nicolas Romero', 1),
(778, 'Nopaltepec', 1),
(779, 'Ocoyoacac', 1),
(780, 'Ocuilan', 1),
(781, 'El Oro', 1),
(782, 'Otumba', 1),
(783, 'Otzoloapan', 1),
(784, 'Otzolotepec', 1),
(785, 'Ozumba', 1),
(786, 'Papalotla', 1),
(787, 'La Paz', 1),
(788, 'Polotitlan', 1),
(789, 'Rayon', 1),
(790, 'San Antonio la Isla', 1),
(791, 'San Felipe del Progresó', 1),
(792, 'San Martín de las Pirámides', 1),
(793, 'San Mateo Atenco', 1),
(794, 'San Simón del Guerrero', 1),
(795, 'Santo Tomas', 1),
(796, 'Soyaniquilpan de Juárez', 1),
(797, 'Sultepec', 1),
(798, 'Tecamac', 1),
(799, 'Tejupilco', 1),
(800, 'Temamatla', 1),
(801, 'Temascalapa', 1),
(802, 'Temascalcingo', 1),
(803, 'Temascaltepec', 1),
(804, 'Temoaya', 1),
(805, 'Tenancingo', 1),
(806, 'Tenango del Aire', 1),
(807, 'Tenango del Valle', 1),
(808, 'Teoloyucan', 1),
(809, 'Teotihuacan', 1),
(810, 'Tepetlaoxtoc', 1),
(811, 'Tepetlixpa', 1),
(812, 'Tepotzotlan', 1),
(813, 'Tequixquiac', 1),
(814, 'Tecaxcaltitlan', 1),
(815, 'Texcalyacac', 1),
(816, 'Texcoco', 1),
(817, 'Tezoyuca', 1),
(818, 'Tianguistenco', 1),
(819, 'Timilpan', 1),
(820, 'Tlalmanalco', 1),
(821, 'Tlalnepantla de Baz', 1),
(822, 'Tlatlaya', 1),
(823, 'Toluca', 1),
(824, 'Tonatico', 1),
(825, 'Tultepec', 1),
(826, 'Tultitlan', 1),
(827, 'San Fernando', 1),
(828, 'Valle de bravo', 1),
(829, 'Villa de Allende', 1),
(830, 'Villa del Carbón', 1),
(831, 'Villa Guerrero', 1),
(832, 'Villa Victoria', 1),
(833, 'Xonacatlan', 1),
(834, 'Zacazonapan', 1),
(835, 'Zacualpan', 1),
(836, 'Zinacantepec', 1),
(837, 'Zumpahuacan', 1),
(838, 'Zumpango', 1),
(839, 'Cuautitlan Izcalli', 1),
(840, 'Valle del Chalco Solidaridad', 1),
(841, 'Lluvianos', 1),
(842, 'San José del Rincón', 1),
(843, 'Tonanitla', 1),
(844, 'Abasolo', 12),
(845, 'Acambaro', 12),
(846, 'San Miguel de Allende', 12),
(847, 'Apaseo el Alto', 12),
(848, 'Apaseo el Grande', 12),
(849, 'Atarjea', 12),
(850, 'Celaya', 12),
(851, 'Manuel Doblado', 12),
(852, 'Comunfort', 12),
(853, 'Coroneo', 12),
(854, 'Cortazar', 12),
(855, 'Cueramaro', 12),
(856, 'Doctor Mora', 12),
(857, 'Dolores Hidalgo Cuna de la Independencia', 12),
(858, 'Guanajuato', 12),
(859, 'Huanimaro', 12),
(860, 'Irapuato', 12),
(861, 'Jaral del Progreso', 12),
(862, 'Jerecuaro', 12),
(863, 'Leon', 12),
(864, 'Muroleon', 12),
(865, 'Ocampo', 12),
(866, 'Penjamo', 12),
(867, 'Pueblo Nuevo', 12),
(868, 'Purisima del rincon', 12),
(869, 'Romita', 12),
(870, 'Salamanea', 12),
(871, 'Salvatierra', 12),
(872, 'San Diego de la Union', 12),
(873, 'San Feline', 12),
(874, 'San Francisco del rincon', 12),
(875, 'San Jose Iturbide', 12),
(876, 'San Luis de la Paz', 12),
(877, 'Santa Catorin', 12),
(878, 'Acatlán', 13),
(879, 'Acaxoachitlán', 13),
(880, 'Actopan', 13),
(881, 'Agua Blanca de Iturbide', 13),
(882, 'Ajacuba', 13),
(883, 'Alfayucan', 13),
(884, 'Almoloya', 13),
(885, 'Apan', 13),
(886, 'El Arenal', 13),
(887, 'Atitalaquia', 13),
(888, 'Atlapexco', 13),
(889, 'Atotonilco el Grande', 13),
(890, 'Atotonilco de Tula', 13),
(891, 'Calnali', 13),
(892, 'cardonal', 13),
(893, 'Cuahutepec de Hinojosa', 13),
(894, 'Chapantongo', 13),
(895, 'Chapulhuacán', 13),
(896, 'Chilcuahutla', 13),
(897, 'Eloxochitlán', 13),
(898, 'Emiliano Zapata', 13),
(899, 'Epazoyucan', 13),
(900, 'Francisco I.Madero', 13),
(901, 'Huasca de Ocampo', 13),
(902, 'Huautla', 13),
(903, 'Huazalingo', 13),
(904, 'Acatlán', 14),
(905, 'Acaxochitlán', 14),
(906, 'Actopan', 14),
(907, 'Agua Blanca de Iturbide', 14),
(908, 'Ajacuba', 14),
(909, 'Alfajayucan', 14),
(910, 'Almoloya', 14),
(911, 'Apan', 14),
(912, 'El Arenal', 14),
(913, 'Atitalaquia', 14),
(914, 'Atlapexco', 14),
(915, 'Atotonilco el Grande', 14),
(916, 'Atotonilco de Tula', 14),
(917, 'Calnali', 14),
(918, 'Cardonal', 14),
(919, 'Cuautepec de Hinojosa', 14),
(920, 'Chapantongo', 14),
(921, 'Chapulhuacán', 14),
(922, 'Chilcuautla', 14),
(923, 'Eloxochitlán', 14),
(924, 'Emiliano Zapata', 14),
(925, 'Epazoyucan', 14),
(926, 'Francisco I. Madero', 14),
(927, 'Huasca de Ocampo', 14),
(928, 'Huautla', 14),
(929, 'Huazalingo', 14),
(930, 'Huehuetla', 14),
(931, 'Huejutla de Reyes', 14),
(932, 'Huichapan', 14),
(933, 'Ixmiquilpan', 14),
(934, 'Jacala de Ledezma', 14),
(935, 'Jaltocán', 14),
(936, 'Juárez Hidalgo', 14),
(937, 'Lolotla', 14),
(938, 'Metepec', 14),
(939, 'San Agustín Metzquititlán', 14),
(940, 'Metztitlán', 14),
(941, 'Mineral del Chico', 14),
(942, 'Mineral del Monte', 14),
(943, 'La Misión', 14),
(944, 'Mixquiahuala de Juárez', 14),
(945, 'Molango de Escamilla', 14),
(946, 'Nicolás Flores', 14),
(947, 'Nopala de Villagrán', 14),
(948, 'Omitlán de Juárez', 14),
(949, 'San Felipe Orizatlán', 14),
(950, 'Pacula', 14),
(951, 'Pachuca de Soto', 14),
(952, 'Pisaflores', 14),
(953, 'Progreso de Obregón', 14),
(954, 'Mineral de la Reforma', 14),
(955, 'San Agustín Tlaxiaca', 14),
(956, 'San Bartolo Tutotepec', 14),
(957, 'San Salvador', 14),
(958, 'Santiago de Anaya', 14),
(959, 'Santiago Tulantepec de Lugo Guerrero', 14),
(960, 'Singuilucan', 14),
(961, 'Tasquillo', 14),
(962, 'Tecozautla', 14),
(963, 'Tenango de Doria', 14),
(964, 'Tepeapulco', 14),
(965, 'Tepehuacán de Guerrero', 14),
(966, 'Tepeji del Río de Ocampo', 14),
(967, 'Tepetitlán', 14),
(968, 'Tetepango', 14),
(969, 'Villa de Tezontepec', 14),
(970, 'Tezontepec de Aldama', 14),
(971, 'Tianguistengo', 14),
(972, 'Tizayuca', 14),
(973, 'Tlahuelilpan', 14),
(974, 'Tlahuiltepa', 14),
(975, 'Tlanalapa', 14),
(976, 'Tlanchinol', 14),
(977, 'Tlaxcoapan', 14),
(978, 'Tolcayuca', 14),
(979, 'Tula de Allende', 14),
(980, 'Tulancingo de Bravo', 14),
(981, 'Xochiatipan', 14),
(982, 'Xochicoatlán', 14),
(983, 'Yahualica', 14),
(984, 'Zacualtipán de Ángeles', 14),
(985, 'Zapotlán de Juárez', 14),
(986, 'Zempoala', 14),
(987, 'Zimapán', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantel`
--

CREATE TABLE `plantel` (
  `Id_Plantel` int(11) NOT NULL,
  `NombrePlantel` varchar(55) NOT NULL,
  `DireccionPlantel` text NOT NULL,
  `EmailPlantel` varchar(255) NOT NULL,
  `TelefonoPlantel` varchar(55) NOT NULL,
  `Codigo_Postal` varchar(55) NOT NULL,
  `Latitud` varchar(55) NOT NULL,
  `Longitud` varchar(55) NOT NULL,
  `Id_Municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plantel`
--

INSERT INTO `plantel` (`Id_Plantel`, `NombrePlantel`, `DireccionPlantel`, `EmailPlantel`, `TelefonoPlantel`, `Codigo_Postal`, `Latitud`, `Longitud`, `Id_Municipio`) VALUES
(1, 'NaucalpanI', 'Calle Miguel Negrete S/N, San Rafael Chamapa, 54690 Naucalpan de Juárez, Méx.', 'naucalpan1@conalepmex.edu.mx', '55-53-12-22-77', '54690', '19.4446232', '-99.2722115', 1),
(2, 'NaucalpanII', ' Av. de las Granjas S/N, Martires de Rio Blanco, 53780 Naucalpan de Juárez, Méx.', 'naucalpan2@conalepmex.edu.mx', '55 5312 4392', '54690', '19.4446232', '-99.2722115', 1),
(3, 'Tlanepantla I', 'Av. Ex-Hacienda de Enmedio Manzana 002, Hab Prado Vallejo, 54170 Tlalnepantla de Baz, Méx.', 'tlalne1@conalepmex.edu.mx', '55-23-45-67-89', '54170', '19.5119354', '-99.167391', 2),
(4, 'Conalep Atizapan 2', 'Av. exhacienda de en medio y Rio de los Remedios\', \'S/N', 'atizapan2@conalepmex.edu.mx', '55-58-87-29-34', '52926', '19.606933', '-99.2338609', 3),
(5, 'Conalep Aguascalientes 2', 'Calle del Toril y del Rodeo Fracc. Villas la Hacienda A\', \'S/N', 'aguascalientes2@conalepmex.edu.mx', '4491154403', '20290', '21.8367257', '-102.3612999', 176);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `risla`
--

CREATE TABLE `risla` (
  `Id_RIsla` int(11) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL,
  `Id_Turno` int(11) NOT NULL,
  `Id_Grupo` int(11) NOT NULL,
  `N_Brigada` varchar(55) NOT NULL,
  `Fecha_RI` varchar(100) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `N_Isla` varchar(55) NOT NULL,
  `Descripcion_RI` text NOT NULL,
  `Cantidad` varchar(55) NOT NULL,
  `Condiciones_RI` varchar(55) NOT NULL,
  `Observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidamaterial`
--

CREATE TABLE `salidamaterial` (
  `Id_SalidaM` int(11) NOT NULL,
  `Id_MaterialSal` int(11) NOT NULL,
  `FechaSal` date NOT NULL,
  `CantidadSal` float NOT NULL,
  `Id_Soliditid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudmaterial`
--

CREATE TABLE `solicitudmaterial` (
  `Id_SolicitudM` int(11) NOT NULL,
  `Id_Material` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `FechaSolicitud` date NOT NULL,
  `Id_Estatus` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudmaterial`
--

INSERT INTO `solicitudmaterial` (`Id_SolicitudM`, `Id_Material`, `Cantidad`, `Id_Laboratorio`, `Id_Plantel`, `FechaSolicitud`, `Id_Estatus`, `Id_Usuario`) VALUES
(1, 9, 2, 2, 1, '2023-04-29', 2, 1),
(2, 9, 2, 2, 1, '2023-04-29', 2, 1),
(3, 3, 1, 1, 2, '2023-05-30', 1, 1),
(4, 5, 2, 1, 2, '2023-05-31', 2, 2),
(5, 8, 5, 1, 1, '2023-05-28', 3, 1),
(6, 4, 3, 2, 3, '2023-06-05', 1, 2),
(7, 9, 2, 2, 1, '2023-06-23', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tentrada`
--

CREATE TABLE `tentrada` (
  `Id_TEntrada` int(11) NOT NULL,
  `NombreTEntrada` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tentrada`
--

INSERT INTO `tentrada` (`Id_TEntrada`, `NombreTEntrada`) VALUES
(1, 'Compra'),
(2, 'Donación'),
(3, 'Asignación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiponofificacion`
--

CREATE TABLE `tiponofificacion` (
  `Id_TipoNot` int(11) NOT NULL,
  `NomNotificacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiponofificacion`
--

INSERT INTO `tiponofificacion` (`Id_TipoNot`, `NomNotificacion`) VALUES
(1, 'Mensaje Masivo'),
(2, 'Mensaje Privado'),
(3, 'Notificación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Id_Turno` int(11) NOT NULL,
  `NombreT` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`Id_Turno`, `NombreT`) VALUES
(1, 'Matutino'),
(2, 'Vespertino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `Id_TUsuario` int(11) NOT NULL,
  `NTUsuario` varchar(55) NOT NULL,
  `DescripcionT` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`Id_TUsuario`, `NTUsuario`, `DescripcionT`) VALUES
(1, 'SuperUsuario', 'Usuario Especializado encargado del sistema'),
(2, 'AdminUsuario', 'Usuario Tecnico Administrativo del sistema'),
(3, 'Docente', 'Usuario del sistema con restricciones'),
(4, 'Alumno', 'Usuarios Finales con restricciones y modo de consulta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadmedida`
--

CREATE TABLE `unidadmedida` (
  `Id_UnidadM` int(11) NOT NULL,
  `DescripcionUnidad` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidadmedida`
--

INSERT INTO `unidadmedida` (`Id_UnidadM`, `DescripcionUnidad`) VALUES
(1, 'Pieza'),
(2, 'Caja'),
(3, 'Paquete'),
(4, 'Pieza'),
(5, 'Caja'),
(6, 'Paquete'),
(7, 'Litro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(55) NOT NULL,
  `ApellidoP` varchar(55) NOT NULL,
  `ApellidoM` varchar(55) NOT NULL,
  `Telefono` varchar(55) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `Id_TUsuario` int(11) NOT NULL,
  `UserName` varchar(55) NOT NULL,
  `FechaReg` date NOT NULL,
  `Password` varchar(55) NOT NULL,
  `Online` int(11) NOT NULL,
  `EstatusUser` int(11) NOT NULL,
  `ImgUser` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `Telefono`, `Email`, `Id_Plantel`, `Id_TUsuario`, `UserName`, `FechaReg`, `Password`, `Online`, `EstatusUser`, `ImgUser`) VALUES
(1, 'José Luis', 'Chávez', 'Gómez', '5581546200', 'luis.chavez_183d@conalepmex.edu.mx', 1, 1, 'JlchavezG', '2023-02-10', '01cfcd4f6b8770febfb40cb906715822', 0, 1, '877041.jpeg'),
(2, 'David', 'Santiago', 'Carlos', '56123465783', 'david@gconalepmex.edu.mx', 3, 2, 'DavidS', '2023-04-19', '01cfcd4f6b8770febfb40cb906715822', 0, 1, 'imgUser1.png'),
(3, 'Kevin Yael', 'Gonzalez', 'Donato', '55-23-83-92-08', 'kgonzalez1121@conalepmex.edu.mx', 1, 1, 'KevinYael', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(4, 'Pedro David', 'Romero', 'Gonzalez', '56-35-85-35-12', 'Promero1921@conalepmex.edu.mx', 1, 1, 'Pedro2136$A', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(5, 'Saul Alejandro', 'Reyes', 'Valladares', '56-38-00-15-45', 'sreyes2021@conalepmex.edu.mx', 1, 1, 'Saulrvx', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(6, 'Eric', 'Gonzalez', 'Lujano', '72-99-37-18-65', 'ericg8808@gmail.com', 1, 1, 'lujanoox', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(7, 'Dylan Roberto', 'Martinez', 'Martinez', '55-29-18-38-04', 'dmmartinez3021@conalepmex.edu.mx', 1, 1, 'Dtlan002', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(8, 'Gabriel', 'Esquivel', 'Hernandez', '56-21-93-38-45', 'gesquivel3021@conalepmex.edu.mx', 1, 1, 'Gabriel', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(9, 'Elvia Paola', 'Alvarez', 'Ventura', '55-18-28-62-63', 'ealvarez3121@conalepmex.edu.mx', 1, 1, 'Bad17', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(10, 'Alberto Valentin', 'Perea', 'Guerrero', '55-66-21-54-70', 'aperea0821@conalepmex.edu.mx', 1, 1, 'BetoPluma', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, '307759.jpeg'),
(11, 'Janeth Vanessa', 'Lopez', 'Bautista', '56-10-22-64-27', 'jlopez0121@conalepmex.edu.mx', 1, 2, 'LBJaneth', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(12, 'Angel Uriel', 'Arredondo', 'Perez', '44-28-36-55-87', 'aarredondo0921@qro.conalep.edu.mx', 1, 2, 'Angelito1', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(13, 'Sharol', 'Flores', 'Barragan', '56-52-81-72-21', 'sflores0921@conalepmex.edu.mx', 1, 2, 'HGFloress', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '14332.jpeg'),
(14, 'Haziel Giovanni', 'Prieto', 'Torrijos', '72-99-42-25-42', 'hprieto0120@conalepmex.edu.mx', 1, 2, 'Giovannib312', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(15, 'Carlos Enrique', 'Bravo', 'Dominguez', '55-38-24-24-37', 'Cbravo1821@conalepmex.edu.mx', 1, 2, 'CarlosE', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(16, 'Brayan', 'Cruz', 'Segundo', '55-74-31-27-69', 'bcruz0420@conalepmex.edu.mx', 1, 2, 'BrayanC231', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(17, 'Ariadna Jocelyn', 'Chavez', 'Carrillo', '56-32-57-56-20', 'achavez3021@conalepmex.edu.mx', 1, 2, 'Ariadnajcc', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(18, 'Axel Moises', 'Tellez', 'Mejia', '56-26-30-04-30', 'axelt2321@conalepmex.edu.mx', 1, 2, 'Axelm837', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(19, 'Daniel', 'Castillo', 'Perez', '55-18-08-46-24', 'dcastillo2221@conalepmex.edu.mx', 1, 3, 'Daniel', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(20, 'Ulises', 'Pacheco', 'Marin', '55-29-36-51-94', 'upacheco1821@conalepmex.edu.mx', 1, 3, 'Ulises69', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, '923413.jpeg'),
(21, 'Luisa Fernanda', 'Rodriguez', 'Hernandez', '55-33-97-83-87', 'Irodriguez1921@conalepmex.edu.mx', 1, 3, 'Luisa', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(22, 'Francisco Lenin', 'Lopez', 'Lopez', '5587864611', 'flopez0821@conalepmex.edu.mx', 1, 3, 'Flopez08', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(23, 'Victor Hugo', 'Mendez', 'Sanchez', '55-17-28-55-25', 'vmendez2821@conalepmex.edu.mx', 1, 3, 'VictorH', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(24, 'Angel Orlando', 'Martinez', 'Teran', '55-55-55-55-55', 'ateran2421@conalepmex.edu.mx', 1, 3, 'Orlando', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '79986.jpeg'),
(25, 'Damian', 'Escudero', 'Juarez', '55-55-55-55-55', 'descudero1421@conalepmex.edu.mx', 1, 3, 'Damian', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(26, 'Pedro', 'Morales', 'Ramos', '55-55-55-55-55', 'pmorales1019@conalepmex.edu.mx', 1, 3, 'PedroM', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(27, 'Jose Antonio', 'Calderon', 'Reyes', '55-55-55-55-55', 'jcalderon0521@conalepmex.edu.mx', 1, 4, 'Jose', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(28, 'Cristopher', 'Morales', 'Dimas', '55-55-55-55-55', 'cmorales1520@conalepmex.edu.mx', 1, 4, 'Cristopher', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(29, 'Pedro Antonio', 'Mendez', 'Alonso', '55-55-55-55', 'pmendez2821@conalepmex.edu.mx', 1, 4, 'PedroA', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(30, 'Sergio Abel', 'Rodriguez', 'Cano', '55-55-55-55', 'srodriguez3020@conalepmex.edu.mx', 1, 4, 'Abel', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(31, 'Harys Alondra', 'Lopez', 'Dominguez', '55-55-55-55', 'hlopez3021@conalepmex.edu.mx', 1, 4, 'Harys', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, ''),
(32, 'Brandon Barush', 'Beltran', 'Mozo', '55-55-55-55-55', 'bbeltran3021@conalepmex.edu.mx', 1, 4, 'BrandoB', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '13151.jpeg'),
(33, 'Miguel Angel', 'Delgado', 'Ronquillo', '55-55-55-55-55', 'mdelgado1421@conalepmex.edu.mx', 1, 4, 'Miguel', '2023-10-31', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Id_Carrera`);

--
-- Indices de la tabla `categoriamaterial`
--
ALTER TABLE `categoriamaterial`
  ADD PRIMARY KEY (`Id_Categoria`);

--
-- Indices de la tabla `entradamaterial`
--
ALTER TABLE `entradamaterial`
  ADD PRIMARY KEY (`Id_EntradaM`),
  ADD KEY `Id_TEntrada` (`Id_TEntrada`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `estatussistem`
--
ALTER TABLE `estatussistem`
  ADD PRIMARY KEY (`Id_Estatus`);

--
-- Indices de la tabla `estatususer`
--
ALTER TABLE `estatususer`
  ADD PRIMARY KEY (`Id_EstatusUser`);

--
-- Indices de la tabla `fdvdp_u`
--
ALTER TABLE `fdvdp_u`
  ADD PRIMARY KEY (`Id_Formato`),
  ADD KEY `Id_Laboratorio` (`Id_Laboratorio`),
  ADD KEY `Id_Turno` (`Id_Turno`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`Id_Grupo`),
  ADD KEY `Id_Carrera` (`Id_Carrera`),
  ADD KEY `Id_Turno` (`Id_Turno`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`Id_Historial`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Id_Inventario`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`Id_Kardex`),
  ADD KEY `Id_Material` (`Id_Material`);

--
-- Indices de la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  ADD PRIMARY KEY (`Id_Laboratorio`),
  ADD KEY `Id_Plantel` (`Id_Plantel`),
  ADD KEY `Id_carrera` (`Id_carrera`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`Id_Marca`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`Id_Material`),
  ADD KEY `Id_Marca` (`Id_Marca`),
  ADD KEY `Id_UnidadM` (`Id_UnidadM`),
  ADD KEY `Id_Categoria` (`Id_Categoria`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`Id_Mensaje`),
  ADD KEY `Id_Tnotificacion` (`Id_Tnotificacion`),
  ADD KEY `Id_EstatusMensaje` (`Id_EstatusMensaje`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `Id_Estado` (`Id_Estado`);

--
-- Indices de la tabla `plantel`
--
ALTER TABLE `plantel`
  ADD PRIMARY KEY (`Id_Plantel`),
  ADD KEY `Id_Municipio` (`Id_Municipio`);

--
-- Indices de la tabla `risla`
--
ALTER TABLE `risla`
  ADD PRIMARY KEY (`Id_RIsla`),
  ADD KEY `Id_Laboratorio` (`Id_Laboratorio`),
  ADD KEY `Id_Turno` (`Id_Turno`),
  ADD KEY `Id_Grupo` (`Id_Grupo`);

--
-- Indices de la tabla `salidamaterial`
--
ALTER TABLE `salidamaterial`
  ADD PRIMARY KEY (`Id_SalidaM`);

--
-- Indices de la tabla `solicitudmaterial`
--
ALTER TABLE `solicitudmaterial`
  ADD PRIMARY KEY (`Id_SolicitudM`),
  ADD KEY `Id_Material` (`Id_Material`),
  ADD KEY `Id_Laboratorio` (`Id_Laboratorio`),
  ADD KEY `Id_Plantel` (`Id_Plantel`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_Estatus` (`Id_Estatus`);

--
-- Indices de la tabla `tentrada`
--
ALTER TABLE `tentrada`
  ADD PRIMARY KEY (`Id_TEntrada`);

--
-- Indices de la tabla `tiponofificacion`
--
ALTER TABLE `tiponofificacion`
  ADD PRIMARY KEY (`Id_TipoNot`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Id_Turno`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`Id_TUsuario`);

--
-- Indices de la tabla `unidadmedida`
--
ALTER TABLE `unidadmedida`
  ADD PRIMARY KEY (`Id_UnidadM`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Plantel` (`Id_Plantel`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`),
  ADD KEY `EstatusUser` (`EstatusUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `Id_Carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoriamaterial`
--
ALTER TABLE `categoriamaterial`
  MODIFY `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `entradamaterial`
--
ALTER TABLE `entradamaterial`
  MODIFY `Id_EntradaM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `estatussistem`
--
ALTER TABLE `estatussistem`
  MODIFY `Id_Estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatususer`
--
ALTER TABLE `estatususer`
  MODIFY `Id_EstatusUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fdvdp_u`
--
ALTER TABLE `fdvdp_u`
  MODIFY `Id_Formato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `Id_Grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `Id_Historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `Id_Inventario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `Id_Kardex` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  MODIFY `Id_Laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `Id_Marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `Id_Material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `Id_Mensaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT de la tabla `plantel`
--
ALTER TABLE `plantel`
  MODIFY `Id_Plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `risla`
--
ALTER TABLE `risla`
  MODIFY `Id_RIsla` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salidamaterial`
--
ALTER TABLE `salidamaterial`
  MODIFY `Id_SalidaM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudmaterial`
--
ALTER TABLE `solicitudmaterial`
  MODIFY `Id_SolicitudM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `tentrada`
--
ALTER TABLE `tentrada`
  MODIFY `Id_TEntrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tiponofificacion`
--
ALTER TABLE `tiponofificacion`
  MODIFY `Id_TipoNot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `Id_Turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `Id_TUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `unidadmedida`
--
ALTER TABLE `unidadmedida`
  MODIFY `Id_UnidadM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradamaterial`
--
ALTER TABLE `entradamaterial`
  ADD CONSTRAINT `entradamaterial_ibfk_1` FOREIGN KEY (`Id_TEntrada`) REFERENCES `tentrada` (`Id_TEntrada`);

--
-- Filtros para la tabla `fdvdp_u`
--
ALTER TABLE `fdvdp_u`
  ADD CONSTRAINT `fdvdp_u_ibfk_1` FOREIGN KEY (`Id_Laboratorio`) REFERENCES `laboratorios` (`Id_Laboratorio`),
  ADD CONSTRAINT `fdvdp_u_ibfk_2` FOREIGN KEY (`Id_Turno`) REFERENCES `turno` (`Id_Turno`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`Id_Carrera`) REFERENCES `carreras` (`Id_Carrera`),
  ADD CONSTRAINT `grupo_ibfk_2` FOREIGN KEY (`Id_Turno`) REFERENCES `turno` (`Id_Turno`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD CONSTRAINT `kardex_ibfk_1` FOREIGN KEY (`Id_Material`) REFERENCES `materiales` (`Id_Material`);

--
-- Filtros para la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  ADD CONSTRAINT `laboratorios_ibfk_1` FOREIGN KEY (`Id_Plantel`) REFERENCES `plantel` (`Id_Plantel`),
  ADD CONSTRAINT `laboratorios_ibfk_2` FOREIGN KEY (`Id_carrera`) REFERENCES `carreras` (`Id_Carrera`);

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`Id_Marca`) REFERENCES `marcas` (`Id_Marca`),
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`Id_UnidadM`) REFERENCES `unidadmedida` (`Id_UnidadM`),
  ADD CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoriamaterial` (`Id_Categoria`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`Id_Tnotificacion`) REFERENCES `tiponofificacion` (`Id_TipoNot`);

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `estados` (`Id_Estado`);

--
-- Filtros para la tabla `plantel`
--
ALTER TABLE `plantel`
  ADD CONSTRAINT `plantel_ibfk_1` FOREIGN KEY (`Id_Municipio`) REFERENCES `municipios` (`Id_Municipio`);

--
-- Filtros para la tabla `risla`
--
ALTER TABLE `risla`
  ADD CONSTRAINT `risla_ibfk_1` FOREIGN KEY (`Id_Laboratorio`) REFERENCES `laboratorios` (`Id_Laboratorio`),
  ADD CONSTRAINT `risla_ibfk_2` FOREIGN KEY (`Id_Turno`) REFERENCES `turno` (`Id_Turno`),
  ADD CONSTRAINT `risla_ibfk_3` FOREIGN KEY (`Id_Grupo`) REFERENCES `grupo` (`Id_Grupo`);

--
-- Filtros para la tabla `solicitudmaterial`
--
ALTER TABLE `solicitudmaterial`
  ADD CONSTRAINT `solicitudmaterial_ibfk_1` FOREIGN KEY (`Id_Material`) REFERENCES `materiales` (`Id_Material`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_2` FOREIGN KEY (`Id_Laboratorio`) REFERENCES `laboratorios` (`Id_Laboratorio`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_3` FOREIGN KEY (`Id_Plantel`) REFERENCES `plantel` (`Id_Plantel`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_4` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_5` FOREIGN KEY (`Id_Estatus`) REFERENCES `estatussistem` (`Id_Estatus`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Plantel`) REFERENCES `plantel` (`Id_Plantel`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tusuario` (`Id_TUsuario`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`EstatusUser`) REFERENCES `estatususer` (`Id_EstatusUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
