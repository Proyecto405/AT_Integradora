CREATE TABLE `Usuario` (
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
) ENGINE=InnoDB