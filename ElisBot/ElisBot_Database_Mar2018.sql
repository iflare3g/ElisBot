-- MySQL dump 10.15  Distrib 10.0.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ElisBot
-- ------------------------------------------------------
-- Server version	10.0.34-MariaDB-0ubuntu0.16.04.1

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
-- Current Database: `ElisBot`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ElisBot` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

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
INSERT INTO `Incaricato` VALUES (456,2),(456,5),(457,3),(457,6),(458,2),(458,5),(458,18),(459,16),(459,19),(459,21),(460,16),(461,1),(462,17),(462,19),(463,3),(463,13),(463,19),(464,13),(464,18),(465,9),(466,5),(466,6),(466,24),(467,2),(467,8),(467,21),(468,7),(468,12),(469,3),(469,8),(470,8),(470,9),(470,16),(471,1),(472,5),(472,12),(473,12),(473,22),(474,1),(475,1),(476,1),(477,1),(478,19),(478,24),(478,26),(479,8),(479,13),(479,26),(480,15),(480,18),(481,3),(481,12),(482,12),(482,22),(483,1),(484,3),(485,6),(485,7),(485,26),(486,12),(486,13),(487,4),(487,19),(487,21),(488,4),(488,7),(488,8),(489,6),(489,9),(490,2),(490,20),(490,21),(491,5),(491,9),(491,15),(492,4),(493,4),(493,8),(494,2),(495,2),(495,17),(495,19),(496,1),(497,2),(497,3),(498,4),(498,6),(498,27),(499,1),(500,4),(501,5),(501,19),(501,25),(502,2),(503,8),(503,25),(504,6),(504,23),(504,26),(505,6),(505,16),(505,22),(506,1),(507,9),(507,12),(507,15),(508,6),(508,18),(508,23),(509,5),(509,23),(510,3),(510,9),(510,19),(511,7),(511,20),(512,4),(512,13),(513,6),(514,5),(514,19),(514,20),(515,8),(515,27),(516,26),(517,2),(517,13),(518,5),(518,17),(519,3);
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
INSERT INTO `Residence_DB` VALUES ('Alessandro','Agneti','alex.agneti@gmail.com','Non presente','Mobile','DEP','101','Borgo 1',456,'+393928680992','N'),('Giacomo','Buzzitta','giacomobuzzitta@libero.it','Non presente','Mobile','DEP','103','Borgo 2',457,'+393312693245','N'),('Andrea','Cau','cauandrea@hotmail.it','Non presente','Mobile','DEP','105','Pigna 1',458,'+393468439253','N'),('Flavio','Chioda','flaviochioda97@gmail.com','Non presente','Mobile','LTM','110','Colonna 1',459,'+393407609567','Y'),('Gaetano','Ciccone','gaetano.ciccone97@gmail.com','Non presente','Mobile','LTM','113','Pigna 1',460,'+393472430165','N'),('Silvio Pablo','Cifone','SilvioCifone98@gmail.com','Non presente','Mobile','DEP','106','Campo Marzio 2',461,'+393427503332','N'),('Francesco','Cipolla','francescocpll@gmail.com','Non presente','Mobile','LTM','114','Colonna 2',462,'+393272079936','Y'),('Alberto','Colopi','colopi.alberto@gmail.com','Non presente','Mobile','DEP','111','Borgo 1',463,'+393899840644','N'),('Gianfranco','Colucci','gianfrancolucci@gmail.com','Non presente','Mobile','LTM','122','Borgo 1',464,'+393313062273','Y'),('Antonio','Cozzi','antoniocozzi2@gmail.com','Non presente','Mobile','LTM','130','Colonna 2',465,'+393277935365','N'),('Antonio','D\'Ademo','antonio.dademo98@gmail.com','Non presente','Mobile','DEP','112','Campo Marzio 1',466,'+393467328232','N'),('Gabriele','De Trane','detranegabriele@gmail.com','Non presente','Mobile','DEP','115','Ponte 1',467,'+393898869237','N'),('Francesco','Del Prete','f.delprete06@gmail.com','Non presente','Mobile','DEP','116','Ponte 2',468,'+393499591992','N'),('Matteo','Di Masi','dimasimatteo@gmail.com','Non presente','Mobile','DEP','117','Colonna 2',469,'+393348050905','N'),('Alessio','Ferrigno','ferrignoalessio98@gmail.com','Non presente','Mobile','DEP','121','Parione 2',470,'+393929453613','N'),('Michele','Foderaro','michele.foderaro@virgilio.it','Non presente','Mobile','LTM','131','Pigna 1',471,'+393662530814','Y'),('Antonino','Giacalone','antonino.giacalone9898@gmail.com','Non presente','Mobile','DEP','123','Monti 1',472,'+393891470615','N'),('Nicola','Iacovelli','nicolaiacovelli98@gmail.com','Non presente','Mobile','DEP','124','Parione 2',473,'+393279547326','N'),('Gaetano','La Porta','gaeta91@live.it','Non presente','Mobile','DEP','125','Borgo 2',474,'+393888505774','N'),('Leonardo','Lauriola','leonardo.lauriola19@gmail.com','Non presente','Mobile','DEP','127','Pigna 2',475,'+393899533036','N'),('Roberto','Lentini','roberto.lentini@live.com','Non presente','Mobile','LTM','135','Parione 2',476,'+393290461211','Y'),('Antonino','Liberto','libertoantonio9804@gmail.com','Non presente','Mobile','DEP','128','Pigna 1',477,'+393312218650','N'),('Domenico','Licciardi','licciardi.domenico98@gmail.com','Non presente','Mobile','LTM','136','Borgo 6',478,'+393488190480','N'),('Alessandro','Littera','alessandro_998@live.it','Non presente','Mobile','DEP','129','Colonna 1',479,'+393473276506','N'),('Nicolò','Longobardo','longobardo23@gmail.com','Non presente','Mobile','LTM','137','Borgo 2',480,'+393314682431','Y'),('Matteo Serafino','Manfreda','manfredamatteo44@gmail.com','Non presente','Mobile','LTM','138','Monti 4',481,'+393891508407','N'),('Luca','Mantione','luca.mantione@hotmail.it','Non presente','Mobile','LTM','139','Parione 2',482,'+393461013309','N'),('Francesco','Manuguerra','francicciomanuguerra@gmail.com','Non presente','Mobile','DEP','133','Monti 2',483,'+393289703900','N'),('Gianluca','Marano','gianluca.marano1@gmail.com','Non presente','Mobile','LTM','140','Ponte 2',484,'+393661944844','N'),('Simone','Marino','simone.marino97@outlook.it','Non presente','Mobile','DEP','134','Parione 1',485,'+393461275493','N'),('Vincenzo','Marino','vincenzomarino2098@gmail.com','Non presente','Mobile','DEP','142','Pigna 2',486,'+393283796067','N'),('Marco','Massone','mas.95@hotmail.it','Non presente','Mobile','DEP','146','Borgo 1',487,'+393475864944','N'),('Graziano','Miglionico','gramiglionico@gmail.com','Non presente','Mobile','DEP','148','Ponte 2',488,'+393394288825','N'),('Giuseppe','Milicia','milicia98@gmail.com','Non presente','Mobile','LTM','141','Parione 3',489,'+393421066962','N'),('Rosario','Mussari','Rosariomussari@gmail.com','Non presente','Mobile','DEP','152','Ponte 1',490,'+393387163770','N'),('Giuseppe','Notaristefano','peppenotaristefano99@gmail.com','Non presente','Mobile','DEP','154','Parione 1',491,'+393421522393','N'),('Luca','Oceana','lucad.oceana@gmail.com','Non presente','Mobile','LTM','144','Monti 1',492,'+393486192871','Y'),('Emanuele','Paciolla','emanuele.paciolla15@gmail.com','Non presente','Mobile','LTM','145','Monti 2',493,'+393333166724','Y'),('Davide','Pagliaro','dpagliaro97@gmail.com','Non presente','Mobile','LTM','151','Pigna 2',494,'+393452126934','N'),('Sergio Nunzio','Parisi','sergioparisi98@gmail.com','Non presente','Mobile','DEP','155','Campo Marzio 1',495,'+393335481057','N'),('Marco','Petralia','marcopetralia97@gmail.com','Non presente','Mobile','LTM','107','Pigna 7',496,'+393899617483','N'),('Giuseppe','Piano','giuseppe.piano98@gmail.com','Non presente','Mobile','DEP','156','Colonna 1',497,'+393452645147','N'),('Simone','Pizzini','smp98@hotmail.it','Non presente','Mobile','DEP','164','Parione 1',498,'+393318518958','N'),('Francesco','Pochì','france.pochi@gmail.com','Non presente','Mobile','DEP','165','Monti 1',499,'+393510525705/3892462704','N'),('Davide','Popolano','davide@popolano.it','Non presente','Mobile','LTM','153','Campo Marzio 2',500,'+393201562885','Y'),('Francesco','Ricciardi','francesco.ricciardi993@gmail.com','Non presente','Mobile','DEP','167','Ponte 1',501,'+393343384844','N'),('Andrea','Rizzo','ioandrearizzo@gmail.com','Non presente','Mobile','LTM','157','Campo Marzio 1',502,'+393806340680','Y'),('Antonio','Russo','russoantonio1997@gmail.com','Non presente','Mobile','LTM','158','Ponte 3',503,'+393703458531','N'),('Salvatore Pio','Russo','salvatorepiorusso@gmail.com','Non presente','Mobile','DEP','172','Monti 1',504,'+393271094422','N'),('Kerolos Naser Danial','Salib','kerolos.salib@gmail.com','Non presente','Mobile','DEP','177','Campo Marzio 2',505,'+393804645420','N'),('Pietro','Santochirico','pietro.santochirico@libero.it','Non presente','Mobile','LTM','162','Campo Marzio 3',506,'+393927294790','N'),('Simone','Scanzani','simonescanzani@outlook.com','Non presente','Mobile','DEP','182','Monti 2',507,'+393493207522','N'),('Andrea','Scarpiello','andrea.scarpiello.98@gmail.com','Non presente','Mobile','DEP','184','Monti 2',508,'+393885819301','N'),('Simone','Scifo','simone.scifo97@gmail.com','Non presente','Mobile','LTM','163','Ponte 1',509,'+393391904321','Y'),('Gioele','Spinella','gioelespix@gmail.com','Non presente','Mobile','DEP','185','Campo Marzio 1',510,'+393396682798','N'),('Francesco','Stella','francesco.stella97@gmail.com','Non presente','Mobile','LTM','166','Ponte 2',511,'+393295632453','Y'),('Giulio','Tandoi','tandoigiulio9@live.com','Non presente','Mobile','DEP','186','Colonna 2',512,'+393465975836','N'),('Valerio','Torrese','valerio.torrese@gmail.com','Non presente','Mobile','LTM','174','Pigna 5',513,'+393273769772','N'),('Federico','Tosto','tostofederico98@gmail.com','Non presente','Mobile','DEP','187','Colonna 1',514,'+393314768385','N'),('Andrea Mauro','Valenziano','valenzianoa@gmail.com','Non presente','Mobile','LTM','175','Parione 1',515,'+393485916588','Y'),('Federico','Viceconti','viceconti.federico@gmail.com','Non presente','Mobile','LTM','178','Campo Marzio 2',516,'+393899549766','N'),('Donato','Virgilio','donato.virg@gmail.com','Non presente','Mobile','LTM','143','Borgo 2',517,'+393403468139','N'),('Salvatore','Zuardi','salvatorezuardi2697@gmail.com','Non presente','Mobile','LTM','181','Pigna 2',518,'+393271656253','Y'),('Simone','Zuccalà','simo4197@gmail.com','Non presente','Mobile','LTM','193','Colonna 7',519,'+393272190767','N'),('Agneti','Giuseppe','agneti.giuseppe@gmail.com','Non presente','Mobile','staff','102','Parione 5',520,'+39 366 456 4456','N'),('Cavaglià','Pietro','pierocavaglia@hotmail.com','Non presente','Mobile','staff','3','Non presente',521,'Non presente','N'),('Ferulano','Roberto','roberto.ferulano@gmail.com','Non presente','Mobile','staff','26','Monti 3',522,'+39 3477975557','N'),('Mancino','Davide','davidemancino4@gmail.com','Non presente','Mobile','staff','109','Pigna 6',523,'+39 3489233983','N'),('Messina','Marco','Non presente','Non presente','Mobile','staff','159','Campo Marzio 6',524,'Non presente','N'),('Oceana','Gabriele','gabrieleoceana@gmail.com','Non presente','Mobile','staff','183','Ponte 4',525,'+39 392 926 7135','N'),('Palmieri','Giuseppe','giuseppepalmieri96@gmail.com','Non presente','Mobile','staff','119','Colonna 4',526,'+39 3481704613','N'),('Petraccone','Francesco','francesco.petraccone@gmail.com','Non presente','Mobile','staff','169','Campo Marzio 7',527,'+39 333 917 2944','N'),('Fumagalli','Sergio','sergio_fumagalli@virgilio.it','Non presente','Mobile','staff','/','Non presente',528,'Non presente','N'),('Guijarro','Alfonso','alfonso.guijarro@gmail.com','Non presente','Mobile','staff','/','Non presente',529,'+39 3384988274','N'),('Cavalleri','Giampietro','giampicavalleri@gmail.com','Non presente','Mobile','staff','150','Non presente',530,'Non presente','N'),('Pontari','Domenico','D.Pontari@elis.org','Non presente','Mobile','staff','41','Direzione',531,'+39 346 237 3509','N'),('Re','Paolo','paolore1@gmail.com','Non presente','Mobile','staff','10','Non presente',532,'+39 3394026631','N'),('Politanò','Vincenzo','vincenzopolitano94@gmail.com','Non presente','Mobile','staff','77','Monti 7',533,'+39393335324390','N'),('Tallarita','Gianbattista','Non presente','Non presente','Mobile','staff','179','Parione 4 ',534,'Non presente','N'),('Gigliotti','Carlo Pio','carlo.gigliotticg@gmail.com','Non presente','Mobile','staff','149','Borgo 3',535,'+39 392 726 9647','N');
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

-- Dump completed on 2018-03-21 13:35:04
