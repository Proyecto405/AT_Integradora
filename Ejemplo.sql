-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2023 a las 16:59:43
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriamaterial`
--

CREATE TABLE `categoriamaterial` (
  `Id_Categoria` int(11) NOT NULL,
  `NombreCate` varchar(55) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoriamaterial`
--

INSERT INTO `categoriamaterial` (`Id_Categoria`, `NombreCate`) VALUES
(1, 'Utencilios de madera'),
(2, 'Utencilios de metal'),
(3, 'Utencilios de Plastico'),
(4, 'Loza');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Id_Estado` int(11) NOT NULL,
  `NombreEstado` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Id_Estado`, `NombreEstado`) VALUES
(1, 'México'),
(2, 'Queretaro'),
(3, 'Puebla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatussistem`
--

CREATE TABLE `estatussistem` (
  `Id_Estatus` int(11) NOT NULL,
  `NombreEstatus` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estatususer`
--

INSERT INTO `estatususer` (`Id_EstatusUser`, `DEstatusUser`) VALUES
(1, 'Activo'),
(2, 'Restringido'),
(3, 'Sin Permisos');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorios`
--

CREATE TABLE `laboratorios` (
  `Id_Laboratorio` int(11) NOT NULL,
  `NombreLaboratorio` varchar(55) NOT NULL,
  `Id_Plantel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratorios`
--

INSERT INTO `laboratorios` (`Id_Laboratorio`, `NombreLaboratorio`, `Id_Plantel`) VALUES
(1, 'EdificioA lab1', 1),
(2, 'Edificio B Lab1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `Id_Marca` int(11) NOT NULL,
  `NombreMarca` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`Id_Marca`, `NombreMarca`) VALUES
(1, 'TecnoChef'),
(2, 'Tefal'),
(3, 'Ibili');

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
  `ImagenMat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`Id_Material`, `NombreMat`, `DescripcionMat`, `Id_UnidadM`, `Id_Marca`, `PrecioMaterial`, `Id_Categoria`, `ImagenMat`) VALUES
(1, 'Mandolinas corta patatas', 'es una de las herramientas más usadas en la cocina, además de ser un buen juego de cuchillos facilita el corte de las patatas y todo se debe a sus cuchillas completamente intercambiables permitiendo un corte muy profesional y sobre todo de gran uniformidad.', 1, 1, 632.09, 2, 'Mandolina.jpg'),
(2, 'Tablas de cocina para cortar alimentos', 'Las tablas de corte para alimentos han pasado de ser un simple utensilio de cocina a uno absolutamente indispensable para todos cuantos cocinan, por esas excelentes innovadoras características que le han ido incorporando conforme ha evolucionado la preparación de diversas recetas.', 1, 1, 501.13, 3, 'Tabla.jpg'),
(3, 'Sifones de cocina para montar natas y espumas', 'El sifón de espumas es un recipiente metálico con diversas capacidades entre 250ml y los 1000ml, su tapa es de rosca por donde sale una boquilla que se acciona mediante una palanca; también tiene un compartimiento por donde se coloca la carga del gas.', 1, 2, 429, 2, 'Sifon.jpg '),
(4, 'Aros de emplatar', 'Los aros de emplatar o aros de repostería como también se les llama en muchos lugares, fueron creados orientados específicamente a quienes se dedican de manera profesional a la gastronomía para que con ellos pudiesen presentar sus platos tan perfectamente apilados conforme quisieran quedaran, de manera fácil y rápida.', 1, 3, 241.91, 2, 'Aro.png'),
(5, 'Lenguas de silicona', 'Al adquirir un utensilio de cocina no solo buscamos que elaborar los alimentos sea más fácil o con un mejor sabor, sino también el cuidado de las herramientas de cocina, principalmente si de sartenes se trata, pues las capacidades antiadherentes de estos se gastan no solo por el paso del tiempo, sino también por el uso de utensilios agresivos que rayan su superficie.', 1, 1, 125, 3, 'Lengua.jpg'),
(6, 'Aceiteras de cocina', 'La aceitera es un utensilio de cocina que se utiliza para servir aceite y evitar que se desperdicie. la más común es la jarra de vidrio pequeña, y las que están fabricadas en acero inoxidable de fondo plano con asa se usa para aliñar.', 1, 1, 385.05, 2, 'Aceitera.png'),
(7, 'Molinillo de pimienta y cafe', 'Los molinillos de pimienta no solo se usan para la pimienta sino que también es excelente para moler la sal marina, anteriormente se utilizaban los saleros o pimenteros los cuales funcionaban con los condimentos ya molidos lo que hacía que estos perdieran el sabor.', 1, 2, 216.19, 2, 'Molinos.jpg'),
(8, 'Sacacorchos', 'Todos tenemos momentos especiales en nuestra vida, algunos de ellos son tan importantes que merecen el descorche de una buena botella de vino. Y además de la botella, algo que por varias razones no puede faltar es contar con un respectivo sacacorchos.', 1, 3, 209.99, 2, 'corchos.png'),
(9, 'Bascula de cocina plana', 'La báscula de cocina es un herramienta básica en todo hogar, no solo porque nos permite medir la cantidad de un ingrediente o alimento en cuestión, sino porque, con el paso del tiempo, nos ayuda a comprender el estándar de consumo familiar, haciéndonos posible conocer cómo y cuánto cocinar para que todos en la familia coman sin que sobre nada y, con ello optimizamos la elaboración de alimentos en el día a día, esto evitando desperdicios y minimizando el gasto desmedido de ingredientes', 1, 2, 289, 2, 'bascula.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `Id_Municipio` int(11) NOT NULL,
  `NombreMunicipio` varchar(55) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`Id_Municipio`, `NombreMunicipio`, `Id_Estado`) VALUES
(1, 'Naucalpan', 1),
(2, 'Tlanepantla', 1),
(3, 'Atizapan', 1);

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
  `Id_Municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plantel`
--

INSERT INTO `plantel` (`Id_Plantel`, `NombrePlantel`, `DireccionPlantel`, `EmailPlantel`, `TelefonoPlantel`, `Id_Municipio`) VALUES
(1, 'NaucalpanI', 'Calle Miguel Negrete S/N, San Rafael Chamapa, 54690 Naucalpan de Juárez, Méx.', 'cn_naucalpan1@conalepmex.edu.mx', '55-53-12-22-77', 1),
(2, 'NaucalpanII', ' Av. de las Granjas S/N, Martires de Rio Blanco, 53780 Naucalpan de Juárez, Méx.', 'cn_nauclapan2@conalepmex.edu.mx', '55 5312 4392', 1),
(3, 'Tlanepantla I', 'Av. Ex-Hacienda de Enmedio Manzana 002, Hab Prado Vallejo, 54170 Tlalnepantla de Baz, Méx.', 'ccntlane1@conalepmex.edu.mx', '55-23-45-67-89', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitudmaterial`
--

INSERT INTO `solicitudmaterial` (`Id_SolicitudM`, `Id_Material`, `Cantidad`, `Id_Laboratorio`, `Id_Plantel`, `FechaSolicitud`, `Id_Estatus`, `Id_Usuario`) VALUES
(1, 9, 2, 2, 1, '2023-04-29', 2, 1),
(2, 3, 1, 1, 2, '2023-05-30', 1, 1),
(3, 5, 2, 1, 2, '2023-05-31', 2, 2),
(4, 8, 5, 1, 1, '2023-05-28', 3, 1),
(5, 4, 3, 2, 3, '2023-06-05', 1, 2),
(6, 9, 2, 2, 1, '2023-06-23', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tentrada`
--

CREATE TABLE `tentrada` (
  `Id_TEntrada` int(11) NOT NULL,
  `NombreTEntrada` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tentrada`
--

INSERT INTO `tentrada` (`Id_TEntrada`, `NombreTEntrada`) VALUES
(1, 'Compra'),
(2, 'Donación'),
(3, 'compra'),
(4, 'donacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `Id_TUsuario` int(11) NOT NULL,
  `NTUsuario` varchar(55) NOT NULL,
  `DescripcionT` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`Id_TUsuario`, `NTUsuario`, `DescripcionT`) VALUES
(1, 'SuperUsuario', 'Usuario Especializado encargado del sistema'),
(2, 'AdminUsuario', 'Usuario Tecnico Administrativo del sistema'),
(3, 'UsuarioFinal', 'Usuario del sistema con restricciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadmedida`
--

CREATE TABLE `unidadmedida` (
  `Id_UnidadM` int(11) NOT NULL,
  `DescripcionUnidad` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidadmedida`
--

INSERT INTO `unidadmedida` (`Id_UnidadM`, `DescripcionUnidad`) VALUES
(1, 'Pieza'),
(2, 'Caja'),
(3, 'Paquete');

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
  `Password` varchar(55) NOT NULL,
  `ImgUsuario` varchar(55) NOT NULL,
  `Online` int(11) NOT NULL,
  `EstatusUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `Telefono`, `Email`, `Id_Plantel`, `Id_TUsuario`, `UserName`, `Password`, `ImgUsuario`, `Online`, `EstatusUser`) VALUES
(1, 'Jose Luis', 'Chavez', 'Gomez', '55-55-55-55-55', 'contacto@iscjoseluischavezg.mx', 1, 1, 'JlchavezG', '827ccb0eea8a706c4c34a16891f84e7b', 'img1.png', 0, 1),
(2, 'David', 'Santiago', 'Carlos', '56-12-34-65-78', 'david@gconalepmex.edu.mx', 3, 2, 'DavidS', '01cfcd4f6b8770febfb40cb906715822', 'img3-png', 0, 1);

--
-- Índices para tablas volcadas
--

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
  ADD KEY `Id_Plantel` (`Id_Plantel`);

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
-- AUTO_INCREMENT de la tabla `categoriamaterial`
--
ALTER TABLE `categoriamaterial`
  MODIFY `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `entradamaterial`
--
ALTER TABLE `entradamaterial`
  MODIFY `Id_EntradaM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `Id_Laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `Id_Marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `Id_Material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `plantel`
--
ALTER TABLE `plantel`
  MODIFY `Id_Plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `salidamaterial`
--
ALTER TABLE `salidamaterial`
  MODIFY `Id_SalidaM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudmaterial`
--
ALTER TABLE `solicitudmaterial`
  MODIFY `Id_SolicitudM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tentrada`
--
ALTER TABLE `tentrada`
  MODIFY `Id_TEntrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `Id_TUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `unidadmedida`
--
ALTER TABLE `unidadmedida`
  MODIFY `Id_UnidadM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradamaterial`
--
ALTER TABLE `entradamaterial`
  ADD CONSTRAINT `entradamaterial_ibfk_1` FOREIGN KEY (`Id_TEntrada`) REFERENCES `tentrada` (`Id_TEntrada`);

--
-- Filtros para la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD CONSTRAINT `kardex_ibfk_1` FOREIGN KEY (`Id_Material`) REFERENCES `materiales` (`Id_Material`);

--
-- Filtros para la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  ADD CONSTRAINT `laboratorios_ibfk_1` FOREIGN KEY (`Id_Plantel`) REFERENCES `plantel` (`Id_Plantel`);

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`Id_Marca`) REFERENCES `marcas` (`Id_Marca`),
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`Id_UnidadM`) REFERENCES `unidadmedida` (`Id_UnidadM`),
  ADD CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoriamaterial` (`Id_Categoria`);

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
