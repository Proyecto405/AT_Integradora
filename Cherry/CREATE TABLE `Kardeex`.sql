CREATE TABLE `Kardex` (
  `Id_Kardex` int(11) NOT NULL,
  `Id_Material` int(11) NOT NULL,
  `StokMaterial` int(11) NOT NULL,
  `Id_UsuarioM` int(11) NOT NULL,
  `Id_EntradaM` int(11) NOT NULL,
  `Id_Salida` int(11) NOT NULL,
  `CantidadTotal` int(11) NOT NULL
) ENGINE=InnoDB