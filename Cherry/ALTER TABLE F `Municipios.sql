ALTER TABLE `Municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `Estados` (`Id_Estado`);