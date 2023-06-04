CREATE TABLE `SalidaMaterial` (
  `Id_SalidaM` int(11) NOT NULL,
  `Id_MaterialSal` int(11) NOT NULL,
  `FechaSal` date NOT NULL,
  `CantidadSal` float NOT NULL,
  `Id_Soliditid` varchar(255) NOT NULL
) ENGINE=InnoDB