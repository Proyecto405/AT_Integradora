-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2023 a las 21:39:19
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `p405`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `Id_Clase` int(11) NOT NULL,
  `Horario` varchar(55) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`Id_Clase`, `Horario`, `Id_Laboratorio`) VALUES
(1, '8:00', 1),
(2, '9:00', 2),
(3, '11:30', 3),
(4, '7:00', 4),
(5, '7:30', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `Id_Estado` int(11) NOT NULL,
  `Nombre_E` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`Id_Estado`, `Nombre_E`) VALUES
(1, 'Estado De Mexico'),
(2, 'Estado De Mexico'),
(3, 'Estado De Mexico'),
(4, 'Estado De Mexico'),
(5, 'Estado De Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `Id_Laboratorio` int(11) NOT NULL,
  `Nombre_L` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`Id_Laboratorio`, `Nombre_L`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'Bar'),
(4, 'A'),
(5, 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `Id_Material` int(11) NOT NULL,
  `Nombre_MA` varchar(55) NOT NULL,
  `Descripcion_MA` varchar(255) NOT NULL,
  `Cantidad_MA` varchar(55) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`Id_Material`, `Nombre_MA`, `Descripcion_MA`, `Cantidad_MA`, `Id_Laboratorio`) VALUES
(1, 'Coladores', 'En acero inoxidable de diferentes medidas y tipo de mallas', '10', 1),
(2, 'Espatulas', 'Mango de Manguero de diferentes medidas', '5', 2),
(3, 'Batidores', 'Frances en acero inoxidable de diferentes medidas', '4', 3),
(4, 'Contenedores', 'Cuadrados en policarbonato de diferentes medidas', '6', 4),
(5, 'Cucharas', 'Medidoras, ligeras, 4 pz BWTH', '3', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `Id_Municipio` int(11) NOT NULL,
  `Nombre_M` varchar(55) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`Id_Municipio`, `Nombre_M`, `Id_Estado`) VALUES
(1, 'Naucalpan de Juarez', 1),
(2, 'Naucalpan de Juarez', 2),
(3, 'Naucalpan de Juarez', 3),
(4, 'Naucalpan de Juarez', 4),
(5, 'Naucalpan de Juarez', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantel`
--

CREATE TABLE `plantel` (
  `Id_Plantel` int(11) NOT NULL,
  `Nombre_P` varchar(55) NOT NULL,
  `Telefono_P` varchar(55) NOT NULL,
  `Correo_P` varchar(55) NOT NULL,
  `Clave_P` varchar(55) NOT NULL,
  `Id_Municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plantel`
--

INSERT INTO `plantel` (`Id_Plantel`, `Nombre_P`, `Telefono_P`, `Correo_P`, `Clave_P`, `Id_Municipio`) VALUES
(1, 'Conalep Naucalpan 1', '', 'lobosconalep1@conalepmex.edu.mx', '15DPT0023Y', 1),
(2, 'Conalep Naucalpan 1', '', 'lobosconalep1@conalepmex.edu.mx', '15DPT0023Y', 2),
(3, 'Conalep Naucalpan 1', '', 'lobosconalep1@conalepmex.edu.mx', '15DPT0023Y', 3),
(4, 'Conalep Naucalpan 1', '', 'lobosconalep1@conalepmex.edu.mx', '15DPT0023Y', 4),
(5, 'Conalep Naucalpan 1', '', 'lobosconalep1@conalepmex.edu.mx', '15DPT0023Y', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `Id_Receta` int(11) NOT NULL,
  `Nombre_R` varchar(55) NOT NULL,
  `Descripcion_R` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`Id_Receta`, `Nombre_R`, `Descripcion_R`) VALUES
(1, 'Hot Cake', 'Platano\r\nHuevo\r\nCrema de cacahuate\r\nAvena natural\r\nFresas'),
(2, 'Flan Napolitano', '3/4 De taza de azúcar refinada\r\n1 Lata de Leche Condensada LA LECHERA\r\n1 Lata de Leche Evaporada CARNATION® CLAVEL\r\n1 Paquete de queso crema a temperatura ambiente (190 g)\r\n5 Huevos\r\n1 Cucharada de esencia de vainilla'),
(3, 'Fresas con coco', '12 Fresas desinfectadas y cortadas en cuartos\r\n1 Barra de Chocolate Amargo NESTLÉ Chocolatería\r\n1 Envase de Leche Condensada LA LECHERA\r\n1/4 De taza de coco rallado y seco'),
(4, 'Rollos de canela', '12 rebanadas de pan de caja, sin orillas\r\n150 g de queso crema\r\n4 cucharadas de azúcar glass\r\n4 cucharadas de aceite Sabrosano Rinde+\r\n1 huevo batido\r\n4 cucharadas de leche\r\n1 taza de azúcar\r\n2 cucharaditas de canela, en polvo'),
(5, 'Espagueti Blanco', '2 Cucharadas de mantequilla\r\n1 Cucharadita Ajo picado finamente\r\n1 Paquete de espagueti cocido (200 g)\r\n1 Lata de Leche Evaporada CARNATION CLAVEL\r\n1 Lata de Media Crema NESTLÉ\r\n1 Cucharadita de sal con cebolla en polvo\r\n1 Cucharada de consomé de pollo en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `Id_Tusuario` int(11) NOT NULL,
  `Nombre_T` varchar(55) NOT NULL,
  `Descripcion_T` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`Id_Tusuario`, `Nombre_T`, `Descripcion_T`) VALUES
(1, 'Alumno', 'Alimentos y bebidas'),
(2, 'Administrativo', 'Carretero'),
(3, 'Tecnico', 'Cherry Tree Software'),
(4, 'Docente', 'Chef'),
(5, 'Alumno', 'Alimentos y bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_U` varchar(55) NOT NULL,
  `A_Paterno` varchar(55) NOT NULL,
  `A_Materno` varchar(55) NOT NULL,
  `Telefono_U` varchar(55) NOT NULL,
  `Correo_U` varchar(55) NOT NULL,
  `Contraseña_U` varchar(55) NOT NULL,
  `F_NAC` date NOT NULL,
  `Matricula` varchar(15) NOT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `T_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre_U`, `A_Paterno`, `A_Materno`, `Telefono_U`, `Correo_U`, `Contraseña_U`, `F_NAC`, `Matricula`, `Id_Plantel`, `T_Usuario`) VALUES
(1, 'Adrian', 'Alvarez', 'Benitez', '5566215370', 'adri2023@gmail.com', 'adrian2023', '2006-05-02', '200340210-5', 1, 1),
(2, 'Angel', 'Luna', 'Carmona', '5577889900', 'angel2023@gmail.com', 'angel2023', '2005-07-22', '211950193-2', 2, 2),
(3, 'Ulises', 'Hernandez', 'Valladares', '5611223344', 'ulises2023@gmail.com', 'ulises2023', '2004-08-09', '543197204-6', 3, 3),
(4, 'Paola', 'Ortiz', 'Marin', '5574839568', 'paola2023@gmail.com', 'paola2023', '2006-05-31', '23456798-3', 4, 4),
(5, 'Kenia', 'Chavez', 'Rodriguez', '5632456899', 'kenia2023@gmail.com', 'kenia2023', '2006-09-26', '211900034-7', 5, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`Id_Clase`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`Id_Laboratorio`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`Id_Material`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`);

--
-- Indices de la tabla `plantel`
--
ALTER TABLE `plantel`
  ADD PRIMARY KEY (`Id_Plantel`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`Id_Receta`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`Id_Tusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `Id_Clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `Id_Laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `Id_Material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantel`
--
ALTER TABLE `plantel`
  MODIFY `Id_Plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `Id_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `Id_Tusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
