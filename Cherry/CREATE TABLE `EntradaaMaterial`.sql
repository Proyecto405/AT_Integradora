CREATE TABLE `EntradaMaterial` (
  `Id_EntradaM` int(11) NOT NULL,
  `Id_MaterialEnt` int(11) NOT NULL,
  `FechaEn` date NOT NULL,
  `CantidadEnt` float NOT NULL,
  `NumeroFactura` varchar(255) NOT NULL,
  `Id_TEntrada` int(11) NOT NULL
) ENGINE=InnoDB 