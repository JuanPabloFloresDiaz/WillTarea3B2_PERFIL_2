-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Hamacoteca
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_administrador` varchar(50) NOT NULL,
  `apellido_administrador` varchar(50) NOT NULL,
  `clave_administrador` varchar(100) NOT NULL,
  `correo_administrador` varchar(50) NOT NULL,
  `telefono_administrador` varchar(15) NOT NULL,
  `dui_administrador` varchar(10) NOT NULL,
  `fecha_nacimiento_administrador` date NOT NULL,
  `alias_administrador` varchar(25) NOT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `id_rol` int(11) DEFAULT NULL,
  `intentos_administrador` int(11) DEFAULT 0,
  `fecha_clave` datetime DEFAULT NULL,
  `fecha_bloqueo` datetime DEFAULT NULL,
  `foto_administrador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_administrador`),
  UNIQUE KEY `uq_correo_administrador_unico` (`correo_administrador`),
  UNIQUE KEY `uq_dui_administrador_unico` (`dui_administrador`),
  UNIQUE KEY `uq_alias_administrador_unico` (`alias_administrador`),
  KEY `fk_rol_administradores` (`id_rol`),
  CONSTRAINT `fk_rol_administradores` FOREIGN KEY (`id_rol`) REFERENCES `roles_administradores` (`id_rol`),
  CONSTRAINT `chk_correo_administrador_formato` CHECK (`correo_administrador` regexp '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$'),
  CONSTRAINT `chk_url_foto_administrador` CHECK (`foto_administrador` like '%.jpg' or `foto_administrador` like '%.png' or `foto_administrador` like '%.jpeg' or `foto_administrador` like '%.gif')
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'Juan Pablo','Flores Díaz','Clave1@JPFD','pablojuanfd@gmail.com','4568-5678','12345678-0','1990-01-01','JF20241','2024-03-06 09:02:21',1,0,NULL,NULL,'juanpa.jpg'),(2,'Xochilt Gabriela','López Pineda','Clave2@XGLP','sochii@gmail.com','1254-5679','12345689-1','1991-01-01','XL20241','2024-03-06 09:02:21',2,0,NULL,NULL,'sochii.jpg'),(3,'Joel Omar','Mena Domínguez','Clave3@JOMD','torugam@gmail.com','1434-5670','12345689-2','1992-01-01','JM20241','2024-03-06 09:02:21',3,0,NULL,NULL,'joel.jpg'),(4,'María','González','Clave4@MG','maria@gmail.com','5678-1234','12345678-3','1993-01-01','MG20241','2024-03-06 09:02:21',1,0,NULL,NULL,'maria.jpg'),(5,'José','Martínez','Clave5@JM','jose@gmail.com','9876-5432','12345678-4','1994-01-01','JM20242','2024-03-06 09:02:21',2,0,NULL,NULL,'jose.jpg'),(6,'Ana','Rodríguez','Clave6@AR','ana@gmail.com','4567-8901','12345678-5','1995-01-01','AR20241','2024-03-06 09:02:21',3,0,NULL,NULL,'ana.jpg'),(7,'Luis','Hernández','Clave7@LH','luis@gmail.com','3456-7890','12345678-6','1996-01-01','LH20241','2024-03-06 09:02:21',1,0,NULL,NULL,'luis.jpg'),(8,'Laura','Gómez','Clave8@LG','laura@gmail.com','6789-2345','12345678-7','1997-01-01','LG20241','2024-03-06 09:02:21',2,0,NULL,NULL,'laura.jpg'),(9,'Daniel','Pérez','Clave9@DP','daniel@gmail.com','2345-6789','12345678-8','1998-01-01','DP20241','2024-03-06 09:02:21',3,0,NULL,NULL,'daniel.jpg'),(10,'Sofía','Sánchez','Clave10@SS','sofia@gmail.com','7890-3456','12345678-9','1999-01-01','SS20241','2024-03-06 09:02:21',1,0,NULL,NULL,'sofia.jpg'),(11,'Diego','Ramírez','Clave11@DR','diego@gmail.com','3219-8765','12345468-0','2000-01-01','DR20241','2024-03-06 09:02:21',2,0,NULL,NULL,'diego.jpg'),(12,'Valentina','Torres','Clave12@VT','valentina@gmail.com','9876-1234','24345678-1','2001-01-01','VT20241','2024-03-06 09:02:21',3,0,NULL,NULL,'valentina.jpg'),(13,'Carlos','García','Clave13@CG','carlos@gmail.com','4321-9876','12344568-2','2002-01-01','CG20241','2024-03-06 09:02:21',1,0,NULL,NULL,'carlos.jpg'),(14,'Martina','López','Clave14@ML','martina@gmail.com','8765-4321','45545678-3','2003-01-01','ML20241','2024-03-06 09:02:21',2,0,NULL,NULL,'martina.jpg'),(15,'David','Herrera','Clave15@DH','david@gmail.com','1234-5678','12355678-4','2004-01-01','DH20241','2024-03-06 09:02:21',3,0,NULL,NULL,'david.jpg'),(16,'Ana','Martínez','Clave16@AM','ana2@gmail.com','8765-4321','13445678-5','2005-01-01','AM20241','2024-03-06 09:02:21',1,0,NULL,NULL,'ana2.jpg'),(17,'Pedro','Pérez','Clave17@PP','pedro@gmail.com','4321-9876','12645678-6','2006-01-01','PP20241','2024-03-06 09:02:21',2,0,NULL,NULL,'pedro.jpg'),(18,'Gabriela','Rodríguez','Clave18@GR','gabriela@gmail.com','1234-5678','12545678-7','2007-01-01','GR20241','2024-03-06 09:02:21',3,0,NULL,NULL,'gabriela.jpg'),(19,'Javier','Sánchez','Clave19@JS','javier@gmail.com','8765-4321','12345658-8','2008-01-01','JS20241','2024-03-06 09:02:21',1,0,NULL,NULL,'javier.jpg'),(20,'Lorena','Torres','Clave20@LT','lorena@gmail.com','4321-9876','12345671-9','2009-01-01','LT20241','2024-03-06 09:02:21',2,0,NULL,NULL,'lorena.jpg'),(21,'Andrés','García','Clave21@AG','andres@gmail.com','1234-5678','12345658-0','2010-01-01','AG20241','2024-03-06 09:02:21',3,0,NULL,NULL,'andres.jpg'),(22,'Carla','López','Clave22@CL','carla@gmail.com','8765-4321','12345358-1','2011-01-01','CL20241','2024-03-06 09:02:21',1,0,NULL,NULL,'carla.jpg'),(23,'Fernando','Herrera','Clave23@FH','fernando@gmail.com','4321-9876','12005678-2','2012-01-01','FH20241','2024-03-06 09:02:21',2,0,NULL,NULL,'fernando.jpg'),(24,'Sara','Martínez','Clave24@SM','sara@gmail.com','1234-5678','12345000-3','2013-01-01','SM20241','2024-03-06 09:02:21',3,0,NULL,NULL,'sara.jpg'),(25,'Manuel','Pérez','Clave25@MP','manuel@gmail.com','8765-4321','12300038-4','2014-01-01','MP20241','2024-03-06 09:02:21',1,0,NULL,NULL,'manuel.jpg');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion_categoria` text NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `uq_nombre_categoria_unico` (`nombre_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Colgante','Es una hamaca colgante'),(2,'Silla','Es una hamaca silla'),(3,'Estandar','Es una hamaca estandar'),(4,'Moderna','Es una hamaca moderna');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(50) NOT NULL,
  `clave_cliente` varchar(50) NOT NULL,
  `correo_cliente` varchar(50) NOT NULL,
  `dui_cliente` varchar(10) NOT NULL,
  `genero_cliente` enum('Masculino','Femenino','No definido') NOT NULL,
  `fecha_nacimiento_cliente` date NOT NULL,
  `telefono_cliente` varchar(15) NOT NULL,
  `estado_cliente` tinyint(1) DEFAULT 1,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `direccion_cliente` varchar(100) NOT NULL,
  `foto_cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `uq_correo_cliente_unico` (`correo_cliente`),
  UNIQUE KEY `uq_dui_cliente_unico` (`dui_cliente`),
  CONSTRAINT `chk_correo_cliente_formato` CHECK (`correo_cliente` regexp '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$'),
  CONSTRAINT `chk_url_foto_cliente` CHECK (`foto_cliente` like '%.jpg' or `foto_cliente` like '%.png' or `foto_cliente` like '%.jpeg' or `foto_cliente` like '%.gif')
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Carlos','Alvarez','Clave1@Password','carlos@gmail.com','12345678-0','Masculino','1990-01-01','1234-5678',1,'2024-03-06 09:02:21','Dirección 1','foto1.jpg'),(2,'Mario','Almeria','Clave2@Password','mario@gmail.com','12345689-1','Femenino','1991-01-01','2345-6789',0,'2024-03-06 09:02:21','Dirección 2','foto2.jpg'),(3,'Claudio','Angelo','Clave3@Password','claudio@gmail.com','12345689-2','No definido','1992-01-01','3456-7890',1,'2024-03-06 09:02:21','Dirección 3','foto3.jpg'),(4,'Lucía','Bárcenas','Clave4@Password','lucia@gmail.com','12345689-3','Femenino','1993-01-01','4567-8901',1,'2024-03-06 09:02:21','Dirección 4','foto4.jpg'),(5,'Mateo','Cabrera','Clave5@Password','mateo@gmail.com','12345689-4','Masculino','1994-01-01','5678-9012',0,'2024-03-06 09:02:21','Dirección 5','foto5.jpg'),(6,'Mariana','Díaz','Clave6@Password','mariana@gmail.com','12345689-5','Femenino','1995-01-01','6789-0123',1,'2024-03-06 09:02:21','Dirección 6','foto6.jpg'),(7,'Fernando','Estrada','Clave7@Password','fernando@gmail.com','12345689-6','Masculino','1996-01-01','7890-1234',0,'2024-03-06 09:02:21','Dirección 7','foto7.jpg'),(8,'Isabella','Fuentes','Clave8@Password','isabella@gmail.com','12345689-7','Femenino','1997-01-01','8901-2345',1,'2024-03-06 09:02:21','Dirección 8','foto8.jpg'),(9,'Santiago','García','Clave9@Password','santiago@gmail.com','12345689-8','Masculino','1998-01-01','9012-3456',0,'2024-03-06 09:02:21','Dirección 9','foto9.jpg'),(10,'Valeria','Hernández','Clave10@Password','valeria@gmail.com','12345689-9','Femenino','1999-01-01','0123-4567',1,'2024-03-06 09:02:21','Dirección 10','foto10.jpg'),(11,'Alejandro','Iglesias','Clave11@Password','alejandro@gmail.com','12355678-0','Masculino','2000-01-01','9876-5432',0,'2024-03-06 09:02:21','Dirección 11','foto11.jpg'),(12,'Camila','Juárez','Clave12@Password','camila@gmail.com','12445678-1','Femenino','2001-01-01','8765-4321',1,'2024-03-06 09:02:21','Dirección 12','foto12.jpg'),(13,'Nicolás','López','Clave13@Password','nicolas@gmail.com','12345678-2','Masculino','2002-01-01','7654-3210',0,'2024-03-06 09:02:21','Dirección 13','foto13.jpg'),(14,'Victoria','Mendoza','Clave14@Password','victoria@gmail.com','52345678-3','Femenino','2003-01-01','6543-2109',1,'2024-03-06 09:02:21','Dirección 14','foto14.jpg'),(15,'Gabriel','Núñez','Clave15@Password','gabriel@gmail.com','12346678-4','Masculino','2004-01-01','5432-1098',0,'2024-03-06 09:02:21','Dirección 15','foto15.jpg'),(16,'Olivia','Ortega','Clave16@Password','olivia@gmail.com','12345478-5','Femenino','2005-01-01','4321-0987',1,'2024-03-06 09:02:21','Dirección 16','foto16.jpg'),(17,'Joaquín','Pérez','Clave17@Password','joaquin@gmail.com','12347678-6','Masculino','2006-01-01','3210-9876',0,'2024-03-06 09:02:21','Dirección 17','foto17.jpg'),(18,'Sofía','Quintero','Clave18@Password','sofia@gmail.com','12343578-7','Femenino','2007-01-01','2109-8765',1,'2024-03-06 09:02:21','Dirección 18','foto18.jpg'),(19,'Juan','Ramírez','Clave19@Password','juan@gmail.com','12345568-8','Masculino','2008-01-01','0987-6543',0,'2024-03-06 09:02:21','Dirección 19','foto19.jpg'),(20,'Valentina','Sánchez','Clave20@Password','valentina@gmail.com','35745678-9','Femenino','2009-01-01','9876-5432',1,'2024-03-06 09:02:21','Dirección 20','foto20.jpg'),(21,'Martín','Torres','Clave21@Password','martin@gmail.com','12346783-0','Masculino','2010-01-01','8765-4321',0,'2024-03-06 09:02:21','Dirección 21','foto21.jpg'),(22,'Florencia','Ureña','Clave22@Password','florencia@gmail.com','13445677-1','Femenino','2011-01-01','7654-3210',1,'2024-03-06 09:02:21','Dirección 22','foto22.jpg'),(23,'Javier','Vásquez','Clave23@Password','javier@gmail.com','12345677-2','Masculino','2012-01-01','6543-2109',0,'2024-03-06 09:02:21','Dirección 23','foto23.jpg'),(24,'Luisa','Zamora','Clave24@Password','luisa@gmail.com','12345642-3','Femenino','2013-01-01','5432-1098',1,'2024-03-06 09:02:21','Dirección 24','foto24.jpg'),(25,'Diego','Álvarez','Clave25@Password','diego@gmail.com','13345567-4','Masculino','2014-01-01','4321-0987',0,'2024-03-06 09:02:21','Dirección 25','foto25.jpg');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedidos`
--

DROP TABLE IF EXISTS `detalles_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_pedidos` (
  `id_detalles_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `precio_producto` decimal(5,2) NOT NULL,
  `cantidad_comprada` int(11) NOT NULL,
  `id_hamaca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalles_pedidos`),
  KEY `fk_detalles_pedido` (`id_pedido`),
  KEY `fk_hamacas_en_el_carrito` (`id_hamaca`),
  CONSTRAINT `fk_detalles_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `fk_hamacas_en_el_carrito` FOREIGN KEY (`id_hamaca`) REFERENCES `hamacas` (`id_hamaca`),
  CONSTRAINT `chk_precio_producto_mayor_a_cero` CHECK (`precio_producto` > 0),
  CONSTRAINT `chk_cantidad_comprada_mayor_a_cero` CHECK (`cantidad_comprada` > 0)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedidos`
--

LOCK TABLES `detalles_pedidos` WRITE;
/*!40000 ALTER TABLE `detalles_pedidos` DISABLE KEYS */;
INSERT INTO `detalles_pedidos` VALUES (1,1,199.98,2,1),(2,2,159.98,2,2),(3,3,219.98,2,3);
/*!40000 ALTER TABLE `detalles_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_cantidad_hamacas
AFTER INSERT ON detalles_pedidos
FOR EACH ROW
BEGIN
    UPDATE hamacas
    SET cantidad_hamaca = cantidad_hamaca - NEW.cantidad_comprada
    WHERE id_hamaca = NEW.id_hamaca;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(60) NOT NULL,
  `id_hamaca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `fk_fotos_de_las_hamacas` (`id_hamaca`),
  CONSTRAINT `fk_fotos_de_las_hamacas` FOREIGN KEY (`id_hamaca`) REFERENCES `hamacas` (`id_hamaca`),
  CONSTRAINT `chk_url_foto` CHECK (`url` like '%.jpg' or `url` like '%.png' or `url` like '%.jpeg' or `url` like '%.gif')
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,'hamaca1.png',1),(2,'hamaca11.png',1),(3,'hamaca12.png',1),(4,'hamaca13.png',1),(5,'hamaca14.png',1),(6,'hamaca15.png',1),(7,'hamaca2.png',2),(8,'hamaca21.png',2),(9,'hamaca22.png',2),(10,'hamaca23.png',2),(11,'hamaca24.png',2),(12,'hamaca25.png',2),(13,'hamaca3.png',3),(14,'hamaca31.png',3),(15,'hamaca32.png',3),(16,'hamaca33.png',3),(17,'hamaca34.png',3),(18,'hamaca35.png',3);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hamacas`
--

DROP TABLE IF EXISTS `hamacas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hamacas` (
  `id_hamaca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_hamaca` varchar(60) NOT NULL,
  `descripcion_hamaca` text NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `estado_venta` enum('Disponible','Agotado') NOT NULL,
  `cantidad_hamaca` int(11) NOT NULL,
  `foto_principal` varchar(50) DEFAULT NULL,
  `id_administrador` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_hamaca`),
  KEY `fk_administrador_de_hamaca` (`id_administrador`),
  KEY `fk_categoria_de_la_hamaca` (`id_categoria`),
  KEY `fk_material_de_la_hamaca` (`id_material`),
  CONSTRAINT `fk_administrador_de_hamaca` FOREIGN KEY (`id_administrador`) REFERENCES `administradores` (`id_administrador`),
  CONSTRAINT `fk_categoria_de_la_hamaca` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `fk_material_de_la_hamaca` FOREIGN KEY (`id_material`) REFERENCES `materiales` (`id_material`),
  CONSTRAINT `chk_precio_mayor_a_cero` CHECK (`precio` >= 0),
  CONSTRAINT `chk_cantidad_hamaca_mayor_a_cero` CHECK (`cantidad_hamaca` >= 0),
  CONSTRAINT `chk_url_foto_principal` CHECK (`foto_principal` like '%.jpg' or `foto_principal` like '%.png' or `foto_principal` like '%.jpeg' or `foto_principal` like '%.gif')
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hamacas`
--

LOCK TABLES `hamacas` WRITE;
/*!40000 ALTER TABLE `hamacas` DISABLE KEYS */;
INSERT INTO `hamacas` VALUES (1,'Hamaca de lana','Hamaca hecha de lana tejida a mano',99.99,'Disponible',48,'hamaca_lana.jpg',1,1,1),(2,'Hamaca de tela','Hamaca hecha de tela resistente',79.99,'Disponible',28,'hamaca_tela.jpg',2,2,2),(3,'Hamaca de lona','Hamaca de lona con diseños coloridos',109.99,'Disponible',38,'hamaca_lona.jpg',3,3,3),(4,'Hamaca de seda','Hamaca de seda suave y lujosa',149.99,'Disponible',25,'hamaca_seda.jpg',4,4,4),(5,'Hamaca de algodón','Hamaca cómoda y transpirable de algodón',89.99,'Disponible',35,'hamaca_algodon.jpg',5,1,5),(6,'Hamaca de nylon','Hamaca resistente al agua y duradera de nylon',129.99,'Disponible',20,'hamaca_nylon.jpg',6,2,6),(7,'Hamaca de poliéster','Hamaca de poliéster de secado rápido',69.99,'Disponible',45,'hamaca_polyester.jpg',7,3,7),(8,'Hamaca de cuero','Hamaca de cuero genuino para uso rústico',199.99,'Disponible',15,'hamaca_cuero.jpg',8,4,8),(9,'Hamaca de mimbre','Hamaca de mimbre tejida a mano',119.99,'Disponible',25,'hamaca_mimbre.jpg',9,1,9),(10,'Hamaca de bambú','Hamaca de bambú ecológica y resistente',159.99,'Disponible',30,'hamaca_bambu.jpg',10,2,10),(11,'Hamaca de plástico','Hamaca de plástico ligera y fácil de limpiar',49.99,'Disponible',50,'hamaca_plastico.jpg',11,3,11),(12,'Hamaca de acero','Hamaca de acero inoxidable para uso exterior',179.99,'Disponible',10,'hamaca_acero.jpg',12,4,12),(13,'Hamaca de aluminio','Hamaca de aluminio resistente y ligera',139.99,'Disponible',20,'hamaca_aluminio.jpg',13,1,13),(14,'Hamaca de hierro','Hamaca de hierro forjado con diseño elegante',169.99,'Disponible',15,'hamaca_hierro.jpg',14,2,14),(15,'Hamaca de madera','Hamaca de madera maciza para jardín',189.99,'Disponible',10,'hamaca_madera.jpg',15,3,15),(16,'Hamaca de plástico reciclado','Hamaca ecológica de plástico reciclado',99.99,'Disponible',30,'hamaca_plastico_reciclado.jpg',16,4,16),(17,'Hamaca de tela impermeable','Hamaca con tela impermeable para uso en la playa',119.99,'Disponible',25,'hamaca_tela_impermeable.jpg',17,1,17),(18,'Hamaca de tela transpirable','Hamaca con tela transpirable para uso en el jardín',109.99,'Disponible',20,'hamaca_tela_transpirable.jpg',18,2,18),(19,'Hamaca de lona resistente','Hamaca de lona resistente para camping',129.99,'Disponible',15,'hamaca_lona_resistente.jpg',19,3,19),(20,'Hamaca de algodón orgánico','Hamaca de algodón orgánico para uso en interiores',149.99,'Disponible',10,'hamaca_algodon_organico.jpg',20,4,20),(21,'Hamaca de seda natural','Hamaca de seda natural para uso terapéutico',199.99,'Disponible',10,'hamaca_seda_natural.jpg',21,1,21),(22,'Hamaca de bambú reciclado','Hamaca de bambú reciclado para uso sostenible',139.99,'Disponible',20,'hamaca_bambu_reciclado.jpg',22,2,22),(23,'Hamaca de tela de cáñamo','Hamaca de tela de cáñamo resistente y duradera',159.99,'Disponible',15,'hamaca_tela_canamo.jpg',23,3,23),(24,'Hamaca de nylon de alta resistencia','Hamaca de nylon de alta resistencia para exteriores',179.99,'Disponible',20,'hamaca_nylon_alta_resistencia.jpg',24,4,24),(25,'Hamaca de tela de lino','Hamaca de tela de lino fresca y transpirable',169.99,'Disponible',15,'hamaca_tela_lino.jpg',24,1,24);
/*!40000 ALTER TABLE `hamacas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_material` varchar(60) NOT NULL,
  `descripcion_material` text NOT NULL,
  `foto_material` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_material`),
  UNIQUE KEY `uq_nombre_material_unico` (`nombre_material`),
  CONSTRAINT `chk_url_foto_material` CHECK (`foto_material` like '%.jpg' or `foto_material` like '%.png' or `foto_material` like '%.jpeg' or `foto_material` like '%.gif')
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'Algodón','Material de algodón para mayor comodidad y durabilidad','algodon.jpg'),(2,'Seda','Material de seda suave y lujoso','seda.jpg'),(3,'Nylon','Material resistente y duradero','nylon.jpg'),(4,'Poliamida','Material de poliamida resistente a la abrasión y al desgaste','poliamida.jpg'),(5,'Poliéster','Material de poliéster resistente a las arrugas y de secado rápido','poliester.jpg'),(6,'Acrílico','Material acrílico suave y resistente a los rayos UV','acrilico.jpg'),(7,'Yute','Material de yute natural y duradero','yute.jpg'),(8,'Lino','Material de lino fresco y transpirable','lino.jpg'),(9,'Rayón','Material de rayón suave y sedoso','rayon.jpg'),(10,'PVC','Material de PVC resistente al agua y fácil de limpiar','pvc.jpg'),(11,'Cuero','Material de cuero resistente y elegante','cuero.jpg'),(12,'Bambú','Material de bambú ecológico y resistente','bambu.jpg'),(13,'Rafia','Material de rafia natural y ligero','rafia.jpg'),(14,'Cuerda','Material de cuerda resistente y decorativo','cuerda.jpg'),(15,'Plástico','Material de plástico resistente y fácil de limpiar','plastico.jpg'),(16,'Madera','Material de madera resistente y elegante','madera.jpg'),(17,'Metal','Material de metal resistente y duradero','metal.jpg'),(18,'Hierro','Material de hierro resistente y versátil','hierro.jpg'),(19,'Aluminio','Material de aluminio ligero y resistente a la corrosión','aluminio.jpg'),(20,'Fibra de vidrio','Material de fibra de vidrio resistente y ligero','fibra_de_vidrio.jpg'),(21,'Cerámica','Material de cerámica resistente y decorativo','ceramica.jpg'),(22,'Vidrio','Material de vidrio elegante y transparente','vidrio.jpg'),(23,'Piedra','Material de piedra natural y duradero','piedra.jpg'),(24,'Terciopelo','Material de terciopelo suave y lujoso','terciopelo.jpg');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `estado_pedido` enum('Entregado','En camino','Cancelado') NOT NULL,
  `fecha_pedido` datetime DEFAULT current_timestamp(),
  `direccion_pedido` varchar(50) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_carrito_del_cliente` (`id_cliente`),
  CONSTRAINT `fk_carrito_del_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Entregado','2024-03-06 09:02:21','San Salvador',1),(2,'Entregado','2024-03-06 09:02:21','San Salvador',2),(3,'Entregado','2024-03-06 09:02:21','San Salvador',3);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_administradores`
--

DROP TABLE IF EXISTS `roles_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_administradores` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `uq_nombre_rol_unico` (`nombre_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_administradores`
--

LOCK TABLES `roles_administradores` WRITE;
/*!40000 ALTER TABLE `roles_administradores` DISABLE KEYS */;
INSERT INTO `roles_administradores` VALUES (3,'Administrador de usuarios'),(2,'Gestionador de pedidos'),(1,'Root');
/*!40000 ALTER TABLE `roles_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoraciones`
--

DROP TABLE IF EXISTS `valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valoraciones` (
  `id_valoracion` int(11) NOT NULL AUTO_INCREMENT,
  `calificacion_producto` int(11) NOT NULL,
  `comentario_producto` text DEFAULT NULL,
  `fecha_valoracion` datetime DEFAULT current_timestamp(),
  `estado_comentario` tinyint(1) NOT NULL DEFAULT 1,
  `id_detalles_pedidos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_valoracion`),
  KEY `fk_valoraciones_de_las_hamacas` (`id_detalles_pedidos`),
  CONSTRAINT `fk_valoraciones_de_las_hamacas` FOREIGN KEY (`id_detalles_pedidos`) REFERENCES `detalles_pedidos` (`id_detalles_pedidos`),
  CONSTRAINT `chk_calificacion_producto_mayor_a_cero` CHECK (`calificacion_producto` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoraciones`
--

LOCK TABLES `valoraciones` WRITE;
/*!40000 ALTER TABLE `valoraciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `valoraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vista_tabla_administradores`
--

DROP TABLE IF EXISTS `vista_tabla_administradores`;
/*!50001 DROP VIEW IF EXISTS `vista_tabla_administradores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_tabla_administradores` AS SELECT
 1 AS `IMAGEN`,
  1 AS `NOMBRE`,
  1 AS `CORREO`,
  1 AS `TELÉFONO`,
  1 AS `DUI`,
  1 AS `FECHA DE NACIMIENTO` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_tabla_clientes`
--

DROP TABLE IF EXISTS `vista_tabla_clientes`;
/*!50001 DROP VIEW IF EXISTS `vista_tabla_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_tabla_clientes` AS SELECT
 1 AS `IMAGEN`,
  1 AS `NOMBRE`,
  1 AS `CORREO`,
  1 AS `TELÉFONO`,
  1 AS `DUI`,
  1 AS `FECHA DE NACIMIENTO` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_tabla_hamacas`
--

DROP TABLE IF EXISTS `vista_tabla_hamacas`;
/*!50001 DROP VIEW IF EXISTS `vista_tabla_hamacas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_tabla_hamacas` AS SELECT
 1 AS `IMAGEN`,
  1 AS `NOMBRE`,
  1 AS `DESCRIPCIÓN`,
  1 AS `CANTIDAD`,
  1 AS `PRECIO` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_tabla_administradores`
--

/*!50001 DROP VIEW IF EXISTS `vista_tabla_administradores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_tabla_administradores` AS select `administradores`.`foto_administrador` AS `IMAGEN`,concat(`administradores`.`nombre_administrador`,' ',`administradores`.`apellido_administrador`) AS `NOMBRE`,`administradores`.`correo_administrador` AS `CORREO`,`administradores`.`telefono_administrador` AS `TELÉFONO`,`administradores`.`dui_administrador` AS `DUI`,`administradores`.`fecha_nacimiento_administrador` AS `FECHA DE NACIMIENTO` from `administradores` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_tabla_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_tabla_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_tabla_clientes` AS select `clientes`.`foto_cliente` AS `IMAGEN`,concat(`clientes`.`nombre_cliente`,' ',`clientes`.`apellido_cliente`) AS `NOMBRE`,`clientes`.`correo_cliente` AS `CORREO`,`clientes`.`telefono_cliente` AS `TELÉFONO`,`clientes`.`dui_cliente` AS `DUI`,`clientes`.`fecha_nacimiento_cliente` AS `FECHA DE NACIMIENTO` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_tabla_hamacas`
--

/*!50001 DROP VIEW IF EXISTS `vista_tabla_hamacas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_tabla_hamacas` AS select `hamacas`.`foto_principal` AS `IMAGEN`,`hamacas`.`nombre_hamaca` AS `NOMBRE`,`hamacas`.`descripcion_hamaca` AS `DESCRIPCIÓN`,`hamacas`.`cantidad_hamaca` AS `CANTIDAD`,`hamacas`.`precio` AS `PRECIO` from `hamacas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06  9:25:41
