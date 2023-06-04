ALTER TABLE `SolicitudMaterial`
  ADD CONSTRAINT `solicitudmaterial_ibfk_1` FOREIGN KEY (`Id_Material`) REFERENCES `Materiales` (`Id_Material`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_2` FOREIGN KEY (`Id_Laboratorio`) REFERENCES `Laboratorios` (`Id_Laboratorio`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_3` FOREIGN KEY (`Id_Plantel`) REFERENCES `Plantel` (`Id_Plantel`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_4` FOREIGN KEY (`Id_Usuario`) REFERENCES `Usuario` (`Id_Usuario`),
  ADD CONSTRAINT `solicitudmaterial_ibfk_5` FOREIGN KEY (`Id_Estatus`) REFERENCES `EstatusSistem` (`Id_Estatus`);
