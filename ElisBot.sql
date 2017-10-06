-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: ElisBot
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ElisBot`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ElisBot` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ElisBot`;

--
-- Table structure for table `Incaricato`
--

DROP TABLE IF EXISTS `Incaricato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Incaricato` (
  `ID_Residente` int(11) NOT NULL,
  `ID_Incarico` int(11) NOT NULL,
  PRIMARY KEY (`ID_Residente`,`ID_Incarico`),
  KEY `ID_Incarico` (`ID_Incarico`),
  CONSTRAINT `Incaricato_ibfk_1` FOREIGN KEY (`ID_Residente`) REFERENCES `Residence_DB` (`ID`),
  CONSTRAINT `Incaricato_ibfk_2` FOREIGN KEY (`ID_Incarico`) REFERENCES `Incarichi` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Incaricato`
--

LOCK TABLES `Incaricato` WRITE;
/*!40000 ALTER TABLE `Incaricato` DISABLE KEYS */;
INSERT INTO `Incaricato` VALUES (14,1),(21,1),(37,1),(45,1),(48,1),(58,1),(67,1),(78,1),(85,1),(88,1),(11,2),(17,2),(23,2),(26,2),(29,2),(60,2),(83,2),(87,2),(9,3),(12,3),(19,3),(38,3),(66,3),(68,3),(84,3),(3,4),(49,4),(52,4),(74,4),(75,4),(26,5),(35,5),(46,5),(59,5),(62,5),(71,5),(35,6),(40,6),(61,6),(69,6),(74,6),(80,6),(81,6),(8,7),(30,7),(35,7),(44,7),(69,7),(4,8),(13,8),(15,8),(17,8),(36,8),(53,8),(39,9),(55,9),(59,9),(70,9),(16,10),(22,10),(40,10),(41,10),(42,10),(63,10),(72,10),(81,10),(86,10),(12,12),(31,12),(44,12),(52,12),(57,12),(70,12),(4,13),(5,13),(11,13),(27,13),(47,13),(81,13),(87,13),(26,14),(27,14),(56,14),(76,14),(15,15),(17,15),(54,15),(11,16),(51,16),(59,16),(75,16),(29,17),(44,17),(68,17),(15,18),(18,18),(40,18),(2,19),(36,19),(43,19),(47,19),(57,19),(66,19),(49,20),(74,20),(84,20),(41,21),(54,21),(83,21),(28,22),(71,22),(73,22),(28,23),(64,23),(66,23),(64,24),(70,24),(2,25),(71,25),(57,26),(83,27);
/*!40000 ALTER TABLE `Incaricato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Incarichi`
--

DROP TABLE IF EXISTS `Incarichi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Incarichi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Incarichi`
--

LOCK TABLES `Incarichi` WRITE;
/*!40000 ALTER TABLE `Incarichi` DISABLE KEYS */;
INSERT INTO `Incarichi` VALUES (1,'Festeggiamenti'),(2,'Aiuto Segreteria'),(3,'Infermeria'),(4,'Registro pranzi'),(5,'Carrelli'),(6,'Giardini'),(7,'Ofelia'),(8,'Pranzi e cene fuori'),(9,'Centralino'),(10,'Elis Notizie'),(11,'Manutenzione autarchica'),(12,'Buttafuori'),(13,'Ordine soggiorni'),(14,'Avvisi bacheca'),(15,'Biciclette'),(16,'Foto e archivio storico'),(17,'Sport - altri sport'),(18,'Sport - calcio'),(19,'Accoglienza ospiti'),(20,'Strumenti musicali'),(21,'Tv-Film'),(22,'Biblioteca'),(23,'Guardaroba'),(24,'Luci e porte 2o e 3o piano'),(25,'Luci e porte 4o e 5o piano'),(26,'Merenda'),(27,'Oratorio');
/*!40000 ALTER TABLE `Incarichi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Residence_DB`
--

DROP TABLE IF EXISTS `Residence_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Residence_DB` (
  `Nome` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Cognome` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `E_mail_1_Value` varchar(33) CHARACTER SET utf8 DEFAULT NULL,
  `Seconda_mail` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `Tipo_tel` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `Num_tel` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `Corso` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Sigla` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Stanza` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Residence_DB`
--

LOCK TABLES `Residence_DB` WRITE;
/*!40000 ALTER TABLE `Residence_DB` DISABLE KEYS */;
INSERT INTO `Residence_DB` VALUES ('Giuseppe','Agneti','agneti.giuseppe@gmail.com',NULL,'Cellulare','+39 366 456 4456','staff','102','Esquilino 3',1),('Pietro','Cavaglia','pierocavaglia@hotmail.com',NULL,'Mobile','Non presente','staff','3','Colonna 3',10),('Flavio','Chioda','flaviochioda97@gmail.com',NULL,'Mobile','+39 3407609567','LTM','110','Ponte 2',11),('Gaetano','Ciccone','gaetano.ciccone97@gmail.com',NULL,'Mobile','+39 3472430165','LTM','113','Pigna 1',12),('Francesco','Cipolla','francescocip@icloud.com',NULL,'Mobile','+39 3272079936','LTM','114','Ponte 1',14),('Gianfranco','Colucci','gianfrancolucci@gmail.com',NULL,'Mobile','+39 3313062273','LTM','122','Parione 1',15),('Antonio','Cozzi','antoniocozzi2@gmail.com',NULL,'Mobile','+39 3277935365','LTM','130','Pigna 2',17),('Mattia','Di Foggia','mattiadifoggia94@gmail.com',NULL,'Mobile','+393881224502','staff','8','Pigna 7',20),('Roberto','Ferulano','roberto.ferulano@gmail.com',NULL,'Cellulare','+39 3477975557','staff','26','Monti 3',24),('Andrea','Filippone','andrea.filippone1995@gmail.com',NULL,'Cellulare','+39 3200767580','staff','154','Colonna 4',25),('Michele','Foderaro','michele.foderaro@virgilio.it',NULL,'Mobile','+39 3662530814','LTM','131','Colonna 2',26),('Roberto','Lentini','roberto.lentini@live.com',NULL,'Mobile','+39 3290461211','LTM','135','Borgo 2',35),('Domenico','Licciardi','licciardi.domenico98@gmail.com',NULL,'Mobile','+39 3488190480','LTM','136','Parione 2',36),('Nicolo','Longobardo','longobardo23@gmail.com',NULL,'Mobile','+39 3314682431','LTM','137','Ponte 1',40),('Davide','Mancino','davidemancino4@gmail.com',NULL,'Mobile','+39 3489233983','staff','109','Colonna 2',43),('Matteo Serafino','Manfreda','manfredamatteo44@gmail.com',NULL,'Mobile','+39 3891508407','LTM','138','Colonna 1',44),('Luca','Mantione','luca.mantione@hotmail.it',NULL,'Mobile','+39 3461013309','LTM','139','Monti 2',45),('Gianluca','Marano','gianluca.marano1@gmail.com',NULL,'Mobile','+39 3426259217','LTM','140','Esquilino 1',47),('Marco','Messina','Non presente',NULL,'Mobile','Non presente','staff','159','Campo Marzio 6',50),('Giuseppe','Milicia','milicia98@gmail.com',NULL,'Mobile','+39 3421066962','LTM','141','Campo Marzio 1',52),('Gabriele','Oceana','gabrieleoceana@gmail.com',NULL,'Mobile','+39 392 926 7135','staff','183','Ponte 2',56),('Luca','Oceana','lucad.oceana@gmail.com',NULL,'Mobile','+39 3486192871','LTM','144','Colonna 1',57),('Emanuele','Paciolla','emanuele.paciolla15@gmail.com',NULL,'Mobile','+39 3333166724','LTM','145','Campo Marzio 2',58),('Davide','Pagliaro','dpagliaro97@gmail.com',NULL,'Mobile','+39 3452126934','LTM','151','Monti 2',59),('Giuseppe','Palmieri','giuseppepalmieri96@gmail.com',NULL,'Mobile','+39 3481704613','staff','119','Borgo 2',60),('Francesco','Petraccone','francesco.petraccone@gmail.com','f.petraccone@elis.org','Cellulare','+39 333 917 2944','staff','169','Campo Marzio 7',65),('Marco','Petralia','marcopetralia97@gmail.com',NULL,'Mobile','+39 3899617483','LTM','107','Borgo 1',66),('Davide','Popolano','davide@popolano.it',NULL,'Mobile','+39 3201562885','LTM','153','Parione 1',68),('Andrea','Rizzo','ioandrearizzo@gmail.com',NULL,'Mobile','+39 3806340680','LTM','157','Pigna 1',69),('Antonio','Russo','russoantonio1997@gmail.com',NULL,'Mobile','+39 3346739110','LTM','158','Colonna 2',70),('Pietro','Santochirico','pietro.santochirico@libero.it',NULL,'Mobile','+39 3927294790','LTM','162','Parione 2',71),('Simone','Scifo','simone.scifo97@gmail.com',NULL,'Mobile','+39 3391904321','LTM','163','Borgo 1',74),('Francesco','Stella','francesco.stella97@gmail.com',NULL,'Mobile','+39 3295632453','LTM','166','Campo Marzio 1',78),('Valerio','Torrese','valerio.torrese@gmail.com',NULL,'Mobile','+39 3273769772','LTM','174','Pigna 2',81),('Andrea Mauro','Valenziano','valenzianoa@gmail.com',NULL,'Mobile','+39 3485916588','LTM','175','Borgo 2',83),('Federico','Viceconti','viceconti.federico@gmail.com',NULL,'Mobile','+39 3899549766','LTM','178','Esquilino 1',84),('Donato','Virgilio','donato.virg@gmail.com',NULL,'Mobile','+39 340 346 8139','LTM','143','Ponte 2',85),('Salvatore','Zuardi','salvatorezuardi2697@gmail.com',NULL,'Mobile','+39 3271656253','LTM','181','Campo Marzio 2',87),('Simone','Zuccala','simo4197@gmail.com',NULL,'Mobile','+39 3272190767','LTM','193','Monti 1',88),('Sergio','Fumagalli','sergio_fumagalli@virgilio.it',NULL,'Mobile','Non presente','staff','/','Non presente',89),('Alfonso','Guijarro','alfonso.guijarro@gmail.com',NULL,'Cellulare','+39 3384988274','staff','/','Non presente',90),('Giampietro','Cavalleri','giampicavalleri@gmail.com',NULL,'Mobile','Non presente','staff','150','Non presente',91),('Domenico','Pontari','D.Pontari@elis.org',NULL,'Cellulare','+39 346 237 3509','staff','41','Direzione',92),('Paolo','Re','paolore1@gmail.com',NULL,'Cellulare','+39 3394026631','staff','10','Non presente',93),('Vincenzo','Politano','vincenzopolitano94@gmail.com','','mobile','+393335324390','Staff','77','Monti 7',94);
/*!40000 ALTER TABLE `Residence_DB` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-06 11:06:33
