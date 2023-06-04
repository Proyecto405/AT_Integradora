ALTER TABLE `Materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`Id_Marca`) REFERENCES `Marcas` (`Id_Marca`),
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`Id_UnidadM`) REFERENCES `UnidadMedida` (`Id_UnidadM`),
  ADD CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`Id_Categoria`) REFERENCES `CategoriaMaterial` (`Id_Categoria`);