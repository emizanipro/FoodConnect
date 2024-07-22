-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: pancho_primero
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arqueos_caja`
--

DROP TABLE IF EXISTS `arqueos_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `arqueos_caja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hora_apertura` time NOT NULL,
  `hora_cierre` time NOT NULL,
  `turno` varchar(50) NOT NULL,
  `encargado` varchar(100) NOT NULL,
  `dinero_ingresado` decimal(10,2) NOT NULL,
  `cantidad_mesas_atendidas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arqueos_caja`
--

LOCK TABLES `arqueos_caja` WRITE;
/*!40000 ALTER TABLE `arqueos_caja` DISABLE KEYS */;
INSERT INTO `arqueos_caja` VALUES (1,'16:40:00','17:10:58','tsadwadaw','awdawdwa',30000.00,1),(2,'20:00:00','17:19:08','noche','pepe',73500.00,3),(3,'17:00:00','17:23:25','tarde','jorge',73500.00,3),(25,'17:00:00','12:49:18','tarde','jorge',45500.00,1),(26,'17:00:00','19:36:50','tarde','jorge',323420.00,4),(27,'17:00:00','19:44:22','tarde','jorge',0.00,0),(28,'17:00:00','12:51:47','tarde','jorge',46500.00,2),(29,'17:00:00','14:19:41','tarde','jorge',7000.00,1),(30,'17:00:00','15:16:15','noche','mabel',220409.75,2),(31,'17:00:00','15:31:57','noche','mabel',0.00,0),(32,'15:32:57','15:33:39','noche','Emiliano Zani',7000.00,1),(33,'15:42:16','15:52:31','noche','mabel',7000.00,1),(34,'17:16:43','20:28:53','noche','mabel',0.00,0),(35,'20:29:06','20:33:06','noche','mabel',0.00,0),(36,'20:33:11','20:34:35','noche','mabel',103800.00,1),(37,'11:58:13','18:27:07','noche','mabel',5000.00,1),(38,'18:27:22','18:41:04','noche','mabel',88300.00,1);
/*!40000 ALTER TABLE `arqueos_caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bebidas`
--

DROP TABLE IF EXISTS `bebidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bebidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebidas`
--

LOCK TABLES `bebidas` WRITE;
/*!40000 ALTER TABLE `bebidas` DISABLE KEYS */;
INSERT INTO `bebidas` VALUES (1,'Coca Cola 2 litros',4000.00,'https://logodownload.org/wp-content/uploads/2014/04/coca-cola-logo-1-1-140x140.png'),(2,'Sprite 2 litros',3500.00,'https://rockhillcoke.com/wp-content/themes/rockhillcoke/assets/images/circle-sprite.png'),(3,'Cerveza Andes',2500.00,'https://seeklogo.com/images/A/andes-origen-logo-39E9D4B10A-seeklogo.com.png'),(4,'Sprite 500cc',3000.00,'https://rockhillcoke.com/wp-content/themes/rockhillcoke/assets/images/circle-sprite.png'),(5,'Talca Pomelo 2 litros',2500.00,'https://grupopandis.org/imagenes/logo-talca.jpg'),(6,'Coca-Cola 1 litro',2500.00,'https://logodownload.org/wp-content/uploads/2014/04/coca-cola-logo-1-1-140x140.png'),(7,'Prity limon 2 litros',2600.00,'https://www.pritty.com.ar/img/productos/logos/parcial_pritty_cero.png'),(8,'Fanta',2500.00,'./assets/combo-7.png'),(9,'Sprite Zero',3.75,'https://rockhillcoke.com/wp-content/themes/rockhillcoke/assets/images/circle-sprite.png'),(10,'Manzanita',1.00,'./assets/combo-7.png'),(11,'Agua Mineral',5.25,'./assets/combo-9.png'),(12,'Jugo de Naranja',2.90,'./assets/combo-7.png'),(13,'Limonada',4.75,'./assets/combo-8.png'),(14,'COCA 2 litros',5.00,'https://logodownload.org/wp-content/uploads/2014/04/coca-cola-logo-1-1-140x140.png'),(15,'PEPSI 3 litos',10.00,'https://logodownload.org/wp-content/uploads/2014/04/coca-cola-logo-1-1-140x140.png'),(16,'JUGO LIMON 1 litro',10.00,'./assets/combo-8.png');
/*!40000 ALTER TABLE `bebidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafeteria`
--

DROP TABLE IF EXISTS `cafeteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cafeteria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeteria`
--

LOCK TABLES `cafeteria` WRITE;
/*!40000 ALTER TABLE `cafeteria` DISABLE KEYS */;
INSERT INTO `cafeteria` VALUES (1,'Café con tortita',3.50,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(2,'Café con leche mediano',2.50,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(3,'Café grande',3.00,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(4,'Té con limón',2.00,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(5,'Té verde',2.25,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(6,'Tostada con mermelada',2.75,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(7,'Jugo de naranja natural',3.50,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(8,'Yogur con granola',3.00,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(9,'Batido de frutas',4.00,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(10,'Sandwich de jamón y queso',3.25,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0');
/*!40000 ALTER TABLE `cafeteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combos`
--

DROP TABLE IF EXISTS `combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `combos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combos`
--

LOCK TABLES `combos` WRITE;
/*!40000 ALTER TABLE `combos` DISABLE KEYS */;
INSERT INTO `combos` VALUES (1,'Papas Fritas + Gaseosa',7000.00,'./assets/img/combo-1.png'),(2,'Pancho + Coca cola',4500.00,'./assets/components/img/combo-2.png'),(3,'Hamburguesa + Cerveza',9000.00,'./assets/combo-3.png'),(4,'Hamburguesa + Cerveza 1 litro + papas fritas con queso mantecoso',9500.00,'./assets/combo-4.png'),(5,'Pizza grande + Gaseosa 1.5 litros',7500.00,'./assets/combo-5.png'),(6,'12 Empanadas + Cerveza 1 litro',8000.00,'./assets/combo-6.png'),(7,'Pizza grande + Gaseosa',6500.00,'./assets/combo-5.png'),(8,'Pizza Mediana + Cerveza',5000.00,'./assets/combo-5.png'),(9,'12 Empanadas + Coca cola de 2 litros',8000.00,'./assets/combo-11.png'),(10,'6 Empanadas + Cerveza 1 litro',9000.00,'./assets/combo-6.png'),(11,'6 Empandas + Coca cola 2 litros ',8000.00,'./assets/combo-6.png'),(12,'Piza  mediana + Coca 1 lt',6500.00,'./assets/combo-5.png'),(13,'12 Empandas + Coca cola  1 litro',7800.00,'./assets/combo-11.png'),(14,'PAPAS FRITAS + Pepsi 2 litros',5000.00,'./assets/combo-1.png');
/*!40000 ALTER TABLE `combos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comidas`
--

DROP TABLE IF EXISTS `comidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comidas`
--

LOCK TABLES `comidas` WRITE;
/*!40000 ALTER TABLE `comidas` DISABLE KEYS */;
INSERT INTO `comidas` VALUES (1,'Pancho simple',3000.00,'./assets/unidad-1.png'),(2,'Hamburguesa',4500.00,'./assets/unidad-2.png'),(3,'Lomo',5000.00,'./assets/unidad-3.png'),(4,'Milanesa',4000.00,'./assets/unidad-4.png'),(5,'Ensalada César',9.99,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(6,'Pizza Margarita',11.50,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(7,'Tacos de Carne Asada',14.75,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(8,'Sushi Variado',18.00,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(9,'Pasta Alfredo',10.25,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(10,'Burrito de Pollo',13.50,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(11,'Ceviche de Camarones',15.75,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(12,'Tortilla Española',8.90,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(13,'Filete de Salmón',17.50,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0'),(14,'PAPAS FRITAS',10.00,'https://th.bing.com/th/id/R.36a1dc984d4e1190b042eb90234dba6f?rik=f9ixuEmXgoN%2bLg&riu=http%3a%2f%2fwww.diecutlids.co.uk%2fuploads%2f6%2f8%2f2%2f7%2f68275883%2fready-made-meals.png&ehk=71oAoQYOCNxCJMOt%2bLIzPFXa8w552dtu2%2b7LxmdAFaI%3d&risl=&pid=ImgRaw&r=0');
/*!40000 ALTER TABLE `comidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa_atendidas`
--

DROP TABLE IF EXISTS `mesa_atendidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mesa_atendidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `numero_mesa` int DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `camarero` varchar(100) DEFAULT NULL,
  `comentario` text,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa_atendidas`
--

LOCK TABLES `mesa_atendidas` WRITE;
/*!40000 ALTER TABLE `mesa_atendidas` DISABLE KEYS */;
INSERT INTO `mesa_atendidas` VALUES (1,NULL,19,'rgrgg','rggrgrgr','grr',7000.00),(2,NULL,19,'rgrgg','rggrgrgr','grr',7000.00),(3,NULL,21,'saddasda','dsadas','sadsadsda',7000.00),(123,'2024-07-03',1,'pepe','jorge','sin mayonesa',39000.00),(124,'2024-07-03',1,'juan','tony','el camarero tiene cara de culo',45500.00),(125,'2024-07-03',1,'sadasd','asdasda','asdasdasd',7000.00),(126,'2024-07-03',18,'jorge','jonatan','asddasdasdsa',84120.00),(127,'2024-07-03',19,'wad','awdaw','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',116000.00),(128,'2024-07-03',3,'sdadasd','dasdasdas','dasdasd',116300.00),(129,'2024-07-04',19,'wdawdawda','wdawdawd','awdawdwa',26000.00),(130,'2024-07-04',1,'wdawd','awdawdaw','dawdawdaw',20500.00),(131,'2024-07-04',18,'wada','wdad','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',43000.00),(132,'2024-07-04',16,'awdawd','awdawd','awdawd',4500.00),(133,'2024-07-04',1,'awdawd','awdawd','awdawdaw',7000.00),(134,'2024-07-04',1,'awdawd','dwadaw','dawdawd',92800.00),(135,'2024-07-04',36,'pepe','jorgse','sasdada',127609.75),(136,'2024-07-04',1,'wadawd','dawdaw','wdawda',7000.00),(137,'2024-07-04',1,'eeee','eeeeee','eeeeee',7000.00),(138,'2024-07-04',1,'pepe','jorge','',103800.00),(139,'2024-07-08',1,'raul','pepe','',5000.00),(140,'2024-07-08',1,'p','j','',20500.00),(141,'2024-07-08',1,'pepe','jprge','',88300.00);
/*!40000 ALTER TABLE `mesa_atendidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas_productos`
--

DROP TABLE IF EXISTS `mesas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mesas_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas_productos`
--

LOCK TABLES `mesas_productos` WRITE;
/*!40000 ALTER TABLE `mesas_productos` DISABLE KEYS */;
INSERT INTO `mesas_productos` VALUES (1,'2024-06-05',1,'Papas Fritas + Gaseosa',7000.00,NULL),(2,'2024-06-05',1,'Papas Fritas + Gaseosa',7000.00,NULL),(3,'2024-06-05',3,'Papas Fritas + Gaseosa',7000.00,NULL),(331,'2024-07-03',1,'Papas Fritas + Gaseosa',7000.00,7000.00),(425,'2024-07-08',1,'Pizza Mediana + Cerveza',5000.00,5000.00),(426,'2024-07-08',1,'Papas Fritas + Gaseosa',7000.00,7000.00),(427,'2024-07-08',1,'Pancho + Coca cola',4500.00,4500.00),(428,'2024-07-08',1,'Hamburguesa + Cerveza',9000.00,9000.00),(429,'2024-07-08',1,'Papas Fritas + Gaseosa',7000.00,7000.00),(430,'2024-07-08',1,'Pancho + Coca cola',4500.00,4500.00),(431,'2024-07-08',1,'Hamburguesa + Cerveza',9000.00,9000.00),(432,'2024-07-08',1,'Hamburguesa + Cerveza 1 litro + papas fritas con queso mantecoso',9500.00,9500.00),(433,'2024-07-08',1,'Pizza grande + Gaseosa 1.5 litros',7500.00,7500.00),(434,'2024-07-08',1,'12 Empanadas + Cerveza 1 litro',8000.00,8000.00),(435,'2024-07-08',1,'Pizza grande + Gaseosa',6500.00,6500.00),(436,'2024-07-08',1,'PAPAS FRITAS + Pepsi 2 litros',5000.00,5000.00),(437,'2024-07-08',1,'12 Empandas + Coca cola  1 litro',7800.00,7800.00),(438,'2024-07-08',1,'Piza  mediana + Coca 1 lt',6500.00,6500.00),(439,'2024-07-08',1,'6 Empandas + Coca cola 2 litros ',8000.00,8000.00),(440,'2024-07-08',1,'6 Empanadas + Cerveza 1 litro',9000.00,9000.00);
/*!40000 ALTER TABLE `mesas_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `cantidad_kg_unid` decimal(10,2) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `nombre_proveedor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'2024-07-08','comestibles','queso',4000.00,6000.00,NULL),(2,'2024-07-08','bebidas','coca cola 3 lts',100.00,50000.00,NULL),(3,'2024-07-08','comestibles','queso',4000.00,6000.00,NULL),(4,'2024-07-08','bebidas','coca cola 3 lts',9999.00,999999.00,NULL),(5,'2024-07-08','comestibles','queso',4000.00,6000.00,'pepe'),(26,'2024-07-08','comestibles','queso',4000.00,6000.00,'pepe'),(27,'2024-07-08','comestibles','queso',4000.00,6000.00,'pepe'),(28,'2024-07-09','comestibles','queso',4000.00,6000.00,'pepe'),(29,'2024-07-09','comestibles','queso',4000.00,6000.00,'pepe'),(30,'2024-07-09','comestibles','queso',4000.00,6000.00,'pepe'),(31,'2024-07-09','bebidas','coca cola 3 lts',60.00,90000.00,'emiliano'),(32,'2024-07-09','bebidas','cevez andes lata 750ml',50.00,50000.00,'emiliano'),(33,'2024-07-09','comestibles','queso',4000.00,6000.00,'pepe'),(34,'2024-07-09','comestibles','queso',4000.00,6000.00,'pepe'),(35,'2024-07-09','comestibles','queso',4000.00,6000.00,'pepe'),(36,'2024-07-09','comestibles','queso muzarella especial premium',4000.00,6000.00,'pepe'),(37,'2024-07-09','comestibles','coca cola 3 lts',324.00,234234.00,'emiliano'),(38,'2024-07-09','bebidas','coca cola 3 lts',60.00,500000.00,'emiliano'),(39,'2024-07-09','bebidas','coca cola 3 lts',56.00,345345.00,'emiliano'),(40,'2024-07-09','bebidas','coca cola 1 lts',30.00,40000.00,'emiliano'),(41,'2024-07-09','comestibles','quesa',5646.00,645645.00,'pepe'),(42,'2024-07-09','comestibles','queso',78778.00,8788887.00,'pepe'),(43,'2024-07-09','bebidas','coca cola 3 lts',443.00,3453543.00,'emiliano'),(44,'2024-07-09','bebidas','coca cola 3 lts',1231.00,546456.00,'emiliano'),(45,'2024-07-12','comestibles','queso muzarella especial premium',324324.00,23423423.00,'emiliano'),(46,'2024-07-12','bebidas','coca cola 3 lts edicion especial premium',234234.00,324234.00,'emi89'),(47,'2024-07-12','bebidas','asdasd',3133424.00,324234.00,'asd');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 12:53:03
