CREATE TABLE `Inventario` (
  `Id_Inventario` int(11) NOT NULL,
  `Id_Kardex` int(11) NOT NULL,
  `FechaInventario` date NOT NULL,
  `CantidadFisica` float NOT NULL,
  `CantidadSistema` float NOT NULL,
  `CantidadTotal` float NOT NULL
) ENGINE=InnoDB