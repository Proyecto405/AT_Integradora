ALTER TABLE `Usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Plantel`) REFERENCES `Plantel` (`Id_Plantel`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`Id_TUsuario`) REFERENCES `TUsuario` (`Id_TUsuario`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`EstatusUser`) REFERENCES `EstatusUser` (`Id_EstatusUser`);