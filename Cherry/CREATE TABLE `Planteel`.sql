CREATE TABLE `Plantel` (
  `Id_Plantel` int(11) NOT NULL,
  `NombrePlantel` varchar(55) NOT NULL,
  `DireccionPlantel` text NOT NULL,
  `EmailPlantel` varchar(255) NOT NULL,
  `TelefonoPlantel` varchar(55) NOT NULL,
  `Id_Municipio` int(11) NOT NULL
) ENGINE=InnoDB