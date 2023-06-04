CREATE TABLE `Materiales` (
  `Id_Material` int(11) NOT NULL,
  `NombreMat` varchar(55) NOT NULL,
  `DescripcionMat` text NOT NULL,
  `Id_UnidadM` int(11) NOT NULL,
  `Id_Marca` int(11) NOT NULL,
  `PrecioMaterial` float NOT NULL,
  `Id_Categoria` int(11) NOT NULL,
  `ImagenMat` varchar(255) NOT NULL
) ENGINE=InnoDB