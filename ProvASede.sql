create database ProvASede;

use ProvASede;

CREATE TABLE `Proveedores` (
  `IDProv` int NOT NULL,
  `tipoProd` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `nomProv` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `dirProv` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `telProv` int NOT NULL,
  `redesProv` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `emailProv` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`IDProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin
    
  CREATE TABLE `Productos` (
  `IDProd` int NOT NULL,
  `nomProd` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `IDProv` int NOT NULL AUTO_INCREMENT,
  `loteProd` int NOT NULL,
  `cantProd` int NOT NULL,
  `pesoProd` int NOT NULL,
  `preUnProd` int NOT NULL,
  PRIMARY KEY (`IDProd`),
  KEY `Productos_ibfk_1` (`IDProv`),
  CONSTRAINT `Productos_ibfk_1` FOREIGN KEY (`IDProv`) REFERENCES `Proveedores` (`IDProv`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin
    
    CREATE TABLE `Pedido` (
  `IDPedido` int NOT NULL,
  `FechaPedido` date NOT NULL,
  `IDProv` int NOT NULL,
  `IDProd` int NOT NULL,
  `cantProd` int NOT NULL,
  `FechaEntrega` date NOT NULL,
  `preTotal` int NOT NULL,
  PRIMARY KEY (`IDPedido`),
  KEY `IDProd` (`IDProd`),
  KEY `IDProv` (`IDProv`),
  CONSTRAINT `Pedido_ibfk_1` FOREIGN KEY (`IDProd`) REFERENCES `Productos` (`IDProd`),
  CONSTRAINT `Pedido_ibfk_2` FOREIGN KEY (`IDProv`) REFERENCES `Proveedores` (`IDProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin

CREATE TABLE `DetallesPedido` (
  `DetaSoNP` int NOT NULL,
  `IDPedido` int NOT NULL,
  `DescDeta` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `FechaPedido` date NOT NULL,
  `IDSede` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`DetaSoNP`),
  KEY `IDPedido` (`IDPedido`),
  CONSTRAINT `DetallesPedido_ibfk_1` FOREIGN KEY (`IDPedido`) REFERENCES `Pedido` (`IDPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin

CREATE TABLE `Sede` (
  `IDSede` int NOT NULL AUTO_INCREMENT,
  `IDPedido` int NOT NULL,
  `dirSede` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `medPago` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`IDSede`),
  KEY `IDPedido` (`IDPedido`),
  CONSTRAINT `Sede_ibfk_1` FOREIGN KEY (`IDPedido`) REFERENCES `Pedido` (`IDPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin
