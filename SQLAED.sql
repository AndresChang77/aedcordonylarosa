-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cordonylarosa
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cartaplatos`
--

DROP TABLE IF EXISTS `cartaplatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartaplatos` (
  `CartaID` int NOT NULL,
  `PlatoID` int NOT NULL,
  PRIMARY KEY (`CartaID`,`PlatoID`),
  KEY `PlatoID` (`PlatoID`),
  CONSTRAINT `cartaplatos_ibfk_1` FOREIGN KEY (`CartaID`) REFERENCES `cartas` (`CartaID`),
  CONSTRAINT `cartaplatos_ibfk_2` FOREIGN KEY (`PlatoID`) REFERENCES `platosybebidas` (`PlatoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartaplatos`
--

LOCK TABLES `cartaplatos` WRITE;
/*!40000 ALTER TABLE `cartaplatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartaplatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartas`
--

DROP TABLE IF EXISTS `cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartas` (
  `CartaID` int NOT NULL AUTO_INCREMENT,
  `FechaInicial` date DEFAULT NULL,
  `FechaFinal` date DEFAULT NULL,
  `Descripcion` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`CartaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartas`
--

LOCK TABLES `cartas` WRITE;
/*!40000 ALTER TABLE `cartas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriaplatos`
--

DROP TABLE IF EXISTS `categoriaplatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriaplatos` (
  `CategoriaPlatoID` int NOT NULL AUTO_INCREMENT,
  `NombreCategoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CategoriaPlatoID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriaplatos`
--

LOCK TABLES `categoriaplatos` WRITE;
/*!40000 ALTER TABLE `categoriaplatos` DISABLE KEYS */;
INSERT INTO `categoriaplatos` VALUES (1,'Desayuno'),(2,'Platos Marinos'),(3,'Entradas criollas'),(4,'Entradas Marinas'),(5,'Platos criollos'),(6,'Carnes'),(7,'Pollos'),(8,'Guarniciones'),(9,'Bebidas'),(10,'Postres'),(11,'Cartas de vinos');
/*!40000 ALTER TABLE `categoriaplatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NumeroTelefono` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Leonardo','Gonzales Ortiz','leogonzales@gmail.com','978765899'),(2,'Liliana','Alvares Gutierrez','lilialvarez@gmail.com','987676879'),(3,'Carlos','Perez Garcia','','987878899'),(4,'Sergio','Ramos Silva','','964456667');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobantepago`
--

DROP TABLE IF EXISTS `comprobantepago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobantepago` (
  `ComprobantepID` int NOT NULL AUTO_INCREMENT,
  `OrdenID` int DEFAULT NULL,
  `FechaFactura` datetime DEFAULT NULL,
  `Cantidad` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ComprobantepID`),
  KEY `OrdenID` (`OrdenID`),
  CONSTRAINT `comprobantepago_ibfk_1` FOREIGN KEY (`OrdenID`) REFERENCES `ordenes` (`OrdenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantepago`
--

LOCK TABLES `comprobantepago` WRITE;
/*!40000 ALTER TABLE `comprobantepago` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobantepago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverydirecciones`
--

DROP TABLE IF EXISTS `deliverydirecciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverydirecciones` (
  `DeliveryDireccionID` int NOT NULL AUTO_INCREMENT,
  `ClienteID` int DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Distrito` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DeliveryDireccionID`),
  KEY `ClienteID` (`ClienteID`),
  CONSTRAINT `deliverydirecciones_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverydirecciones`
--

LOCK TABLES `deliverydirecciones` WRITE;
/*!40000 ALTER TABLE `deliverydirecciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverydirecciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverypedidos`
--

DROP TABLE IF EXISTS `deliverypedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverypedidos` (
  `DeliveryPedidoID` int NOT NULL AUTO_INCREMENT,
  `OrdenID` int DEFAULT NULL,
  `DeliveryDireccionID` int DEFAULT NULL,
  `FechaEntrega` datetime DEFAULT NULL,
  `EstadoPedido` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DeliveryPedidoID`),
  KEY `OrdenID` (`OrdenID`),
  KEY `DeliveryDireccionID` (`DeliveryDireccionID`),
  CONSTRAINT `deliverypedidos_ibfk_1` FOREIGN KEY (`OrdenID`) REFERENCES `ordenes` (`OrdenID`),
  CONSTRAINT `deliverypedidos_ibfk_2` FOREIGN KEY (`DeliveryDireccionID`) REFERENCES `deliverydirecciones` (`DeliveryDireccionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverypedidos`
--

LOCK TABLES `deliverypedidos` WRITE;
/*!40000 ALTER TABLE `deliverypedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverypedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `EmpleadoID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `PosicionTrabajo` varchar(50) DEFAULT NULL,
  `FechaContratacion` date DEFAULT NULL,
  PRIMARY KEY (`EmpleadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesas` (
  `MesaID` int NOT NULL AUTO_INCREMENT,
  `NumeroMesa` int DEFAULT NULL,
  `CapacidadMesa` int DEFAULT NULL,
  PRIMARY KEY (`MesaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas`
--

LOCK TABLES `mesas` WRITE;
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `OrdenID` int NOT NULL AUTO_INCREMENT,
  `ClienteID` int DEFAULT NULL,
  `EmpleadoID` int DEFAULT NULL,
  `PlatoID` int DEFAULT NULL,
  `FechaOrden` datetime DEFAULT NULL,
  `CantidadTotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrdenID`),
  KEY `ClienteID` (`ClienteID`),
  KEY `EmpleadoID` (`EmpleadoID`),
  KEY `PlatoID` (`PlatoID`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ID`),
  CONSTRAINT `ordenes_ibfk_2` FOREIGN KEY (`EmpleadoID`) REFERENCES `empleados` (`EmpleadoID`),
  CONSTRAINT `ordenes_ibfk_3` FOREIGN KEY (`PlatoID`) REFERENCES `platosybebidas` (`PlatoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platosybebidas`
--

DROP TABLE IF EXISTS `platosybebidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platosybebidas` (
  `PlatoID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `CategoriaPlatoID` int DEFAULT NULL,
  PRIMARY KEY (`PlatoID`),
  KEY `CategoriaPlatoID` (`CategoriaPlatoID`),
  CONSTRAINT `platosybebidas_ibfk_1` FOREIGN KEY (`CategoriaPlatoID`) REFERENCES `categoriaplatos` (`CategoriaPlatoID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platosybebidas`
--

LOCK TABLES `platosybebidas` WRITE;
/*!40000 ALTER TABLE `platosybebidas` DISABLE KEYS */;
INSERT INTO `platosybebidas` VALUES (1,'Club Sándwich',25.00,1),(2,'Sándwich de pollo a la plancha',25.00,1),(3,'Triple tradicional',20.00,1),(4,'Ensalada de Frutas',25.00,1),(5,'Jugos',20.00,1),(6,'Desayuno Americano',30.00,1),(7,'Desayuno Continental',30.00,1),(8,'Omelette Especial',28.00,1),(9,'Pan con chicharrón',20.00,1),(10,'Pan con asado',22.00,1),(11,'Arroz con mariscos',49.00,2),(12,'Cau Cau de langostinos',56.00,2),(13,'Pescado a la plancha',48.00,2),(14,'Pescado a lo macho',52.00,2),(15,'Pescado en salsa de ajo',52.00,2),(16,'Parihuela',56.00,2),(17,'Chicharrón de pescado',48.00,2),(18,'Ensalada de pallares verdes',35.00,3),(19,'Causa rellena',28.00,3),(20,'Papa a la Huancaína',28.00,3),(21,'Ensalada mixta',25.00,3),(22,'Causa con pulpo a la parrilla',58.00,4),(23,'Leche de tigre',30.00,4),(24,'Choritos a la chalaca',38.00,4),(25,'Pulpo al olivo',48.00,4),(26,'Causa con langostinos',48.00,4),(27,'Tacu Tacu con seco',52.00,5),(28,'Tacu Tacu a lo pobre',65.00,5),(29,'Pallares con asado',48.00,5),(30,'Frejoles con seco',52.00,5),(31,'Puré con Asado',42.00,5),(32,'Sopa a la criolla',45.00,5),(33,'Lomo a la pimienta',56.00,6),(34,'Fetuccini en salsa huancaína',56.00,6),(35,'Fetuccini a lo Alfredo con lomo',56.00,6),(36,'Sabana a lo pobre',56.00,6),(37,'Lomo saltado',56.00,6),(38,'Arroz chaufa',56.00,6),(39,'Tallarín saltado',56.00,6),(40,'Pollo a lo pobre',56.00,7),(41,'Chicharrón de pollo',48.00,7),(42,'Pollo cordon blue',48.00,7),(43,'Milanesa a lo pobre',56.00,7),(44,'Porción de arroz',12.00,8),(45,'Porción de papas fritas',12.00,8),(46,'Porción de yucas fritas',12.00,8),(47,'Jarra de litro',22.00,9),(48,'Limonada',25.00,9),(49,'Gaseosa',18.00,9),(50,'Cerveza',15.00,9),(51,'Pisco Sour',25.00,9),(52,'Chilcano',25.00,9),(53,'Piña colada',25.00,9),(54,'Torta de pecana',18.00,10),(55,'Torta de chocolate',18.00,10),(56,'Torta de tres leches',18.00,10),(57,'Torta de Pie de limón',18.00,10),(58,'Crema volteada',16.00,10),(59,'Copa de helado',18.00,10),(60,'Don Manuel',220.00,11),(61,'Selección Especial',150.00,11),(62,'Gran Tinto',75.00,11),(63,'Tinto Semiseco',70.00,11),(64,'Gran Blanco',75.00,11),(65,'Blanco Semiseco',70.00,11);
/*!40000 ALTER TABLE `platosybebidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservaciones`
--

DROP TABLE IF EXISTS `reservaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservaciones` (
  `ReservacionID` int NOT NULL AUTO_INCREMENT,
  `ClienteID` int DEFAULT NULL,
  `MesaID` int DEFAULT NULL,
  `FechaReserva` datetime DEFAULT NULL,
  `NumeroPersonas` int DEFAULT NULL,
  PRIMARY KEY (`ReservacionID`),
  KEY `ClienteID` (`ClienteID`),
  KEY `MesaID` (`MesaID`),
  CONSTRAINT `reservaciones_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ID`),
  CONSTRAINT `reservaciones_ibfk_2` FOREIGN KEY (`MesaID`) REFERENCES `mesas` (`MesaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservaciones`
--

LOCK TABLES `reservaciones` WRITE;
/*!40000 ALTER TABLE `reservaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 12:37:57
