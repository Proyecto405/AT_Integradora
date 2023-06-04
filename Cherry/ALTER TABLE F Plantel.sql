ALTER TABLE `Plantel`
  ADD CONSTRAINT `plantel_ibfk_1` FOREIGN KEY (`Id_Municipio`) REFERENCES `Municipios` (`Id_Municipio`);