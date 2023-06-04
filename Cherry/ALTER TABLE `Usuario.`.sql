ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Plantel` (`Id_Plantel`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`),
  ADD KEY `EstatusUser` (`EstatusUser`);