ALTER TABLE `SolicitudMaterial`
  ADD PRIMARY KEY (`Id_SolicitudM`),
  ADD KEY `Id_Material` (`Id_Material`),
  ADD KEY `Id_Laboratorio` (`Id_Laboratorio`),
  ADD KEY `Id_Plantel` (`Id_Plantel`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_Estatus` (`Id_Estatus`);
