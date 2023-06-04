ALTER TABLE `Materiales`
  ADD PRIMARY KEY (`Id_Material`),
  ADD KEY `Id_Marca` (`Id_Marca`),
  ADD KEY `Id_UnidadM` (`Id_UnidadM`),
  ADD KEY `Id_Categoria` (`Id_Categoria`);