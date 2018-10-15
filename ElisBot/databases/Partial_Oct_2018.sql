-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: ElisBot
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
  CONSTRAINT `Incaricato_ibfk_1` FOREIGN KEY (`ID_Residente`) REFERENCES `Residence_DB` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `Incaricato_ibfk_2` FOREIGN KEY (`ID_Incarico`) REFERENCES `Incarichi` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Incaricato`
--

LOCK TABLES `Incaricato` WRITE;
/*!40000 ALTER TABLE `Incaricato` DISABLE KEYS */;
INSERT INTO `Incaricato` VALUES (461,1),(474,1),(475,1),(477,1),(483,1),(499,1),(456,2),(458,2),(467,2),(490,2),(495,2),(497,2),(457,3),(463,3),(469,3),(497,3),(510,3),(487,4),(488,4),(498,4),(512,4),(456,5),(458,5),(466,5),(472,5),(491,5),(501,5),(514,5),(457,6),(466,6),(485,6),(498,6),(504,6),(505,6),(508,6),(468,7),(485,7),(488,7),(467,8),(469,8),(470,8),(479,8),(488,8),(470,9),(491,9),(507,9),(510,9),(468,12),(472,12),(473,12),(486,12),(507,12),(463,13),(479,13),(486,13),(512,13),(491,15),(507,15),(470,16),(505,16),(495,17),(458,18),(508,18),(463,19),(487,19),(495,19),(501,19),(510,19),(514,19),(490,20),(514,20),(467,21),(487,21),(490,21),(473,22),(505,22),(504,23),(508,23),(466,24),(501,25),(479,26),(485,26),(504,26),(498,27);
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
INSERT INTO `Incarichi` VALUES (1,'Festeggiamenti'),(2,'Aiuto Segreteria'),(3,'Infermeria'),(4,'Registro pranzi'),(5,'Carrelli'),(6,'Giardini'),(7,'Ofelia'),(8,'Pranzi e cene fuori'),(9,'Centralino'),(12,'Buttafuori'),(13,'Ordine soggiorni/lattine'),(15,'Biciclette'),(16,'Foto & archivio storico'),(17,'Sport (altri sport)'),(18,'Sport (calcio)'),(19,'Accoglienza ospiti'),(20,'Strumenti musicali'),(21,'Tv & Film'),(22,'Sale studio'),(23,'Guardaroba'),(24,'Luci e porte 2° e 3° piano'),(25,'Luci e porte 4° e 5° piano'),(26,'Alumni'),(27,'Oratorio');
/*!40000 ALTER TABLE `Incarichi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Residence_DB`
--

DROP TABLE IF EXISTS `Residence_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Residence_DB` (
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `E_mail_1_Value` varchar(33) CHARACTER SET utf8 DEFAULT NULL,
  `Seconda_mail` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `Tipo_tel` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `Corso` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Sigla` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Stanza` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Num_tel` varchar(30) DEFAULT NULL,
  `Capo_Stanza` set('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Residence_DB`
--

LOCK TABLES `Residence_DB` WRITE;
/*!40000 ALTER TABLE `Residence_DB` DISABLE KEYS */;
INSERT INTO `Residence_DB` VALUES ('Alessandro','Agneti','alex.agneti@gmail.com','Non presente','Mobile','DEP','101','Borgo 1',456,'+393928680992','N'),('Giacomo','Buzzitta','giacomobuzzitta@libero.it','Non presente','Mobile','DEP','103','Borgo 2',457,'+393312693245','N'),('Andrea','Cau','cauandrea@hotmail.it','Non presente','Mobile','DEP','105','Pigna 1',458,'+393468439253','N'),('Silvio Pablo','Cifone','SilvioCifone98@gmail.com','Non presente','Mobile','DEP','106','Campo Marzio 2',461,'+393427503332','N'),('Alberto','Colopi','colopi.alberto@gmail.com','Non presente','Mobile','DEP','111','Borgo 1',463,'+393899840644','N'),('Antonio','D\'Ademo','antonio.dademo98@gmail.com','Non presente','Mobile','DEP','112','Campo Marzio 1',466,'+393467328232','N'),('Gabriele','De Trane','detranegabriele@gmail.com','Non presente','Mobile','DEP','115','Ponte 1',467,'+393898869237','N'),('Francesco','Del Prete','f.delprete06@gmail.com','Non presente','Mobile','DEP','116','Ponte 2',468,'+393499591992','N'),('Matteo','Di Masi','dimasimatteo@gmail.com','Non presente','Mobile','DEP','117','Colonna 2',469,'+393348050905','N'),('Alessio','Ferrigno','ferrignoalessio98@gmail.com','Non presente','Mobile','DEP','121','Parione 2',470,'+393929453613','N'),('Antonino','Giacalone','antonino.giacalone9898@gmail.com','Non presente','Mobile','DEP','123','Monti 1',472,'+393891470615','N'),('Nicola','Iacovelli','nicolaiacovelli98@gmail.com','Non presente','Mobile','DEP','124','Parione 2',473,'+393279547326','N'),('Gaetano','La Porta','gaeta91@live.it','Non presente','Mobile','DEP','125','Borgo 2',474,'+393888505774','N'),('Leonardo','Lauriola','leonardo.lauriola19@gmail.com','Non presente','Mobile','DEP','127','Pigna 2',475,'+393899533036','N'),('Antonino','Liberto','libertoantonio9804@gmail.com','Non presente','Mobile','DEP','128','Pigna 1',477,'+393312218650','N'),('Alessandro','Littera','alessandro_998@live.it','Non presente','Mobile','DEP','129','Colonna 1',479,'+393473276506','N'),('Francesco','Manuguerra','francicciomanuguerra@gmail.com','Non presente','Mobile','DEP','133','Monti 2',483,'+393289703900','N'),('Simone','Marino','simone.marino97@outlook.it','Non presente','Mobile','DEP','134','Parione 1',485,'+393461275493','N'),('Vincenzo','Marino','vincenzomarino2098@gmail.com','Non presente','Mobile','DEP','142','Pigna 2',486,'+393283796067','N'),('Marco','Massone','mas.95@hotmail.it','Non presente','Mobile','DEP','146','Borgo 1',487,'+393475864944','N'),('Graziano','Miglionico','gramiglionico@gmail.com','Non presente','Mobile','DEP','148','Ponte 2',488,'+393394288825','N'),('Rosario','Mussari','Rosariomussari@gmail.com','Non presente','Mobile','DEP','152','Ponte 1',490,'+393387163770','N'),('Giuseppe','Notaristefano','peppenotaristefano99@gmail.com','Non presente','Mobile','DEP','154','Parione 1',491,'+393421522393','N'),('Sergio Nunzio','Parisi','sergioparisi98@gmail.com','Non presente','Mobile','DEP','155','Campo Marzio 1',495,'+393335481057','N'),('Giuseppe','Piano','giuseppe.piano98@gmail.com','Non presente','Mobile','DEP','156','Colonna 1',497,'+393452645147','N'),('Simone','Pizzini','smp98@hotmail.it','Non presente','Mobile','DEP','164','Parione 1',498,'+393318518958','N'),('Francesco','Pochì','france.pochi@gmail.com','Non presente','Mobile','DEP','165','Monti 1',499,'+393510525705/3892462704','N'),('Francesco','Ricciardi','francesco.ricciardi993@gmail.com','Non presente','Mobile','DEP','167','Ponte 1',501,'+393343384844','N'),('Salvatore Pio','Russo','salvatorepiorusso@gmail.com','Non presente','Mobile','DEP','172','Monti 1',504,'+393271094422','N'),('Kerolos Naser Danial','Salib','kerolos.salib@gmail.com','Non presente','Mobile','DEP','177','Campo Marzio 2',505,'+393804645420','N'),('Simone','Scanzani','simonescanzani@outlook.com','Non presente','Mobile','DEP','182','Monti 2',507,'+393493207522','N'),('Andrea','Scarpiello','andrea.scarpiello.98@gmail.com','Non presente','Mobile','DEP','184','Monti 2',508,'+393885819301','N'),('Gioele','Spinella','gioelespix@gmail.com','Non presente','Mobile','DEP','185','Campo Marzio 1',510,'+393396682798','N'),('Giulio','Tandoi','tandoigiulio9@live.com','Non presente','Mobile','DEP','186','Colonna 2',512,'+393465975836','N'),('Federico','Tosto','tostofederico98@gmail.com','Non presente','Mobile','DEP','187','Colonna 1',514,'+393314768385','N'),('Agneti','Giuseppe','agneti.giuseppe@gmail.com','Non presente','Mobile','staff','102','Parione 5',520,'+39 366 456 4456','N'),('Cavaglià','Pietro','pierocavaglia@hotmail.com','Non presente','Mobile','staff','3','Non presente',521,'Non presente','N'),('Ferulano','Roberto','roberto.ferulano@gmail.com','Non presente','Mobile','staff','26','Monti 3',522,'+39 3477975557','N'),('Mancino','Davide','davidemancino4@gmail.com','Non presente','Mobile','staff','109','Pigna 6',523,'+39 3489233983','N'),('Messina','Marco','Non presente','Non presente','Mobile','staff','159','Campo Marzio 6',524,'Non presente','N'),('Oceana','Gabriele','gabrieleoceana@gmail.com','Non presente','Mobile','staff','183','Ponte 4',525,'+39 392 926 7135','N'),('Palmieri','Giuseppe','giuseppepalmieri96@gmail.com','Non presente','Mobile','staff','119','Colonna 4',526,'+39 3481704613','N'),('Petraccone','Francesco','francesco.petraccone@gmail.com','Non presente','Mobile','staff','169','Campo Marzio 7',527,'+39 333 917 2944','N'),('Fumagalli','Sergio','sergio_fumagalli@virgilio.it','Non presente','Mobile','staff','/','Non presente',528,'Non presente','N'),('Guijarro','Alfonso','alfonso.guijarro@gmail.com','Non presente','Mobile','staff','/','Non presente',529,'+39 3384988274','N'),('Cavalleri','Giampietro','giampicavalleri@gmail.com','Non presente','Mobile','staff','150','Non presente',530,'Non presente','N'),('Pontari','Domenico','D.Pontari@elis.org','Non presente','Mobile','staff','41','Direzione',531,'+39 346 237 3509','N'),('Re','Paolo','paolore1@gmail.com','Non presente','Mobile','staff','10','Non presente',532,'+39 3394026631','N'),('Politanò','Vincenzo','vincenzopolitano94@gmail.com','Non presente','Mobile','staff','77','Monti 7',533,'+39393335324390','N'),('Tallarita','Gianbattista','Non presente','Non presente','Mobile','staff','179','Parione 4 ',534,'Non presente','N'),('Gigliotti','Carlo Pio','carlo.gigliotticg@gmail.com','Non presente','Mobile','staff','149','Borgo 3',535,'+39 392 726 9647','N');
/*!40000 ALTER TABLE `Residence_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Turno`
--

DROP TABLE IF EXISTS `Turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Turno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `sigla` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Turno`
--

LOCK TABLES `Turno` WRITE;
/*!40000 ALTER TABLE `Turno` DISABLE KEYS */;
INSERT INTO `Turno` VALUES (1,'2005-10-01',112),(2,'2011-11-01',112);
/*!40000 ALTER TABLE `Turno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 15:55:29
