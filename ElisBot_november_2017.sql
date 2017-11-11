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
INSERT INTO `Incaricato` VALUES (456,1),(459,1),(460,1),(468,1),(480,1),(481,1),(501,1),(504,1),(505,1),(508,1),(467,2),(471,2),(485,2),(499,2),(509,2),(510,2),(511,2),(470,3),(474,3),(489,3),(497,3),(502,3),(512,3),(463,4),(475,4),(487,4),(492,4),(496,4),(457,5),(461,5),(472,5),(486,5),(493,5),(494,5),(495,5),(514,5),(458,6),(466,6),(469,6),(482,6),(484,6),(507,6),(513,6),(458,7),(466,7),(476,7),(507,7),(461,8),(473,8),(488,8),(491,8),(497,8),(506,8),(516,8),(483,9),(496,9),(503,9),(507,9),(477,12),(486,12),(494,12),(495,12),(514,12),(463,13),(469,13),(490,13),(498,13),(515,13),(517,13),(464,15),(477,15),(491,15),(477,16),(499,16),(514,16),(519,16),(462,17),(474,17),(483,17),(500,17),(458,18),(472,18),(482,18),(515,18),(462,19),(473,19),(478,19),(479,19),(485,19),(487,19),(512,19),(475,20),(490,20),(500,20),(470,21),(484,21),(488,21),(490,21),(461,22),(465,22),(466,22),(467,23),(488,23),(502,23),(510,23),(479,24),(516,24),(491,25),(503,25),(457,26),(479,26),(498,26),(518,26),(492,27),(498,27);
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
INSERT INTO `Incarichi` VALUES (1,'Festeggiamenti'),(2,'Aiuto Segreteria'),(3,'Infermeria'),(4,'Registro pranzi'),(5,'Carrelli'),(6,'Giardini'),(7,'Ofelia'),(8,'Pranzi e cene fuori'),(9,'Centralino'),(12,'Buttafuori'),(13,'Ordine soggiorni'),(15,'Biciclette'),(16,'Foto e archivio storico'),(17,'Sport - altri sport'),(18,'Sport - calcio'),(19,'Accoglienza ospiti'),(20,'Strumenti musicali'),(21,'Tv-Film'),(22,'Sale studio\n'),(23,'Guardaroba'),(24,'Luci e porte 2o e 3o piano'),(25,'Luci e porte 4o e 5o piano'),(26,'Alumni\n'),(27,'Oratorio');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Residence_DB`
--

LOCK TABLES `Residence_DB` WRITE;
/*!40000 ALTER TABLE `Residence_DB` DISABLE KEYS */;
INSERT INTO `Residence_DB` VALUES ('Alessandro','Agneti','alex.agneti@gmail.com','Non presente','Mobile','DEP','101','Borgo 1',456,'+393928680992'),('Giacomo','Buzzitta','giacomobuzzitta@libero.it','Non presente','Mobile','DEP','103','Borgo 2',457,'+393312693245'),('Andrea','Cau','cauandrea@hotmail.it','Non presente','Mobile','DEP','105','Pigna 1',458,'+393468439253'),('Flavio','Chioda','flaviochioda97@gmail.com','Non presente','Mobile','LTM','110','Colonna 1',459,'+393407609567'),('Gaetano','Ciccone','gaetano.ciccone97@gmail.com','Non presente','Mobile','LTM','113','Pigna 1',460,'+393472430165'),('Silvio Pablo','Cifone','SilvioCifone98@gmail.com','Non presente','Mobile','DEP','106','Campo Marzio 2',461,'+393427503332'),('Francesco','Cipolla','francescocpll@gmail.com','Non presente','Mobile','LTM','114','Colonna 2',462,'+393272079936'),('Alberto','Colopi','colopi.alberto@gmail.com','Non presente','Mobile','DEP','111','Borgo 1',463,'+393899840644'),('Gianfranco','Colucci','gianfrancolucci@gmail.com','Non presente','Mobile','LTM','122','Borgo 1',464,'+393313062273'),('Antonio','Cozzi','antoniocozzi2@gmail.com','Non presente','Mobile','LTM','130','Colonna 2',465,'+393277935365'),('Antonio','D\'Ademo','antonio.dademo98@gmail.com','Non presente','Mobile','DEP','112','Campo Marzio 1',466,'+393467328232'),('Gabriele','De Trane','detranegabriele@gmail.com','Non presente','Mobile','DEP','115','Ponte 1',467,'+393898869237'),('Francesco','Del Prete','f.delprete06@gmail.com','Non presente','Mobile','DEP','116','Ponte 2',468,'+393499591992'),('Matteo','Di Masi','dimasimatteo@gmail.com','Non presente','Mobile','DEP','117','Colonna 2',469,'+393348050905'),('Alessio','Ferrigno','ferrignoalessio98@gmail.com','Non presente','Mobile','DEP','121','Parione 2',470,'+393929453613'),('Michele','Foderaro','michele.foderaro@virgilio.it','Non presente','Mobile','LTM','131','Pigna 1',471,'+393662530814'),('Antonino','Giacalone','antonino.giacalone9898@gmail.com','Non presente','Mobile','DEP','123','Monti 1',472,'+393891470615'),('Nicola','Iacovelli','nicolaiacovelli98@gmail.com','Non presente','Mobile','DEP','124','Parione 2',473,'+393279547326'),('Gaetano','La Porta','gaeta91@live.it','Non presente','Mobile','DEP','125','Borgo 2',474,'+393888505774'),('Leonardo','Lauriola','leonardo.lauriola19@gmail.com','Non presente','Mobile','DEP','127','Pigna 2',475,'+393899533036'),('Roberto','Lentini','roberto.lentini@live.com','Non presente','Mobile','LTM','135','Parione 2',476,'+393290461211'),('Antonino','Liberto','libertoantonio9804@gmail.com','Non presente','Mobile','DEP','128','Pigna 1',477,'+393312218650'),('Domenico','Licciardi','licciardi.domenico98@gmail.com','Non presente','Mobile','LTM','136','Borgo 6',478,'+393488190480'),('Alessandro','Littera','alessandro_998@live.it','Non presente','Mobile','DEP','129','Colonna 1',479,'+393473276506'),('Nicolò','Longobardo','longobardo23@gmail.com','Non presente','Mobile','LTM','137','Borgo 2',480,'+393314682431'),('Matteo Serafino','Manfreda','manfredamatteo44@gmail.com','Non presente','Mobile','LTM','138','Monti 4',481,'+393891508407'),('Luca','Mantione','luca.mantione@hotmail.it','Non presente','Mobile','LTM','139','Parione 2',482,'+393461013309'),('Francesco','Manuguerra','francicciomanuguerra@gmail.com','Non presente','Mobile','DEP','133','Monti 2',483,'+393289703900'),('Gianluca','Marano','gianluca.marano1@gmail.com','Non presente','Mobile','LTM','140','Ponte 2',484,'+393661944844'),('Simone','Marino','simone.marino97@outlook.it','Non presente','Mobile','DEP','134','Parione 1',485,'+393461275493'),('Vincenzo','Marino','vincenzomarino2098@gmail.com','Non presente','Mobile','DEP','142','Pigna 2',486,'+393283796067'),('Marco','Massone','mas.95@hotmail.it','Non presente','Mobile','DEP','146','Borgo 1',487,'+393475864944'),('Graziano','Miglionico','gramiglionico@gmail.com','Non presente','Mobile','DEP','148','Ponte 2',488,'+393394288825'),('Giuseppe','Milicia','milicia98@gmail.com','Non presente','Mobile','LTM','141','Parione 3',489,'+393421066962'),('Rosario','Mussari','Rosariomussari@gmail.com','Non presente','Mobile','DEP','152','Ponte 1',490,'+393387163770'),('Giuseppe','Notaristefano','peppenotaristefano99@gmail.com','Non presente','Mobile','DEP','154','Parione 1',491,'+393421522393'),('Luca','Oceana','lucad.oceana@gmail.com','Non presente','Mobile','LTM','144','Monti 1',492,'+393486192871'),('Emanuele','Paciolla','emanuele.paciolla15@gmail.com','Non presente','Mobile','LTM','145','Monti 2',493,'+393333166724'),('Davide','Pagliaro','dpagliaro97@gmail.com','Non presente','Mobile','LTM','151','Pigna 2',494,'+393452126934'),('Sergio Nunzio','Parisi','sergioparisi98@gmail.com','Non presente','Mobile','DEP','155','Campo Marzio 1',495,'+393335481057'),('Marco','Petralia','marcopetralia97@gmail.com','Non presente','Mobile','LTM','107','Pigna 7',496,'+393899617483'),('Giuseppe','Piano','giuseppe.piano98@gmail.com','Non presente','Mobile','DEP','156','Colonna 1',497,'+393452645147'),('Simone','Pizzini','smp98@hotmail.it','Non presente','Mobile','DEP','164','Parione 1',498,'+393318518958'),('Francesco','Pochì','france.pochi@gmail.com','Non presente','Mobile','DEP','165','Monti 1',499,'+393510525705/3892462704'),('Davide','Popolano','davide@popolano.it','Non presente','Mobile','LTM','153','Campo Marzio 2',500,'+393201562885'),('Francesco','Ricciardi','francesco.ricciardi993@gmail.com','Non presente','Mobile','DEP','167','Ponte 1',501,'+393343384844'),('Andrea','Rizzo','ioandrearizzo@gmail.com','Non presente','Mobile','LTM','157','Campo Marzio 1',502,'+393806340680'),('Antonio','Russo','russoantonio1997@gmail.com','Non presente','Mobile','LTM','158','Ponte 3',503,'+393703458531'),('Salvatore Pio','Russo','salvatorepiorusso@gmail.com','Non presente','Mobile','DEP','172','Monti 1',504,'+393271094422'),('Kerolos Naser Danial','Salib','kerolos.salib@gmail.com','Non presente','Mobile','DEP','177','Campo Marzio 2',505,'+393804645420'),('Pietro','Santochirico','pietro.santochirico@libero.it','Non presente','Mobile','LTM','162','Campo Marzio 3',506,'+393927294790'),('Simone','Scanzani','simonescanzani@outlook.com','Non presente','Mobile','DEP','182','Monti 2',507,'+393493207522'),('Andrea','Scarpiello','andrea.scarpiello.98@gmail.com','Non presente','Mobile','DEP','184','Monti 2',508,'+393885819301'),('Simone','Scifo','simone.scifo97@gmail.com','Non presente','Mobile','LTM','163','Ponte 1',509,'+393391904321'),('Gioele','Spinella','gioelespix@gmail.com','Non presente','Mobile','DEP','185','Campo Marzio 1',510,'+393396682798'),('Francesco','Stella','francesco.stella97@gmail.com','Non presente','Mobile','LTM','166','Ponte 2',511,'+393295632453'),('Giulio','Tandoi','tandoigiulio9@live.com','Non presente','Mobile','DEP','186','Colonna 2',512,'+393465975836'),('Valerio','Torrese','valerio.torrese@gmail.com','Non presente','Mobile','LTM','174','Pigna 5',513,'+393273769772'),('Federico','Tosto','tostofederico98@gmail.com','Non presente','Mobile','DEP','187','Colonna 1',514,'+393314768385'),('Andrea Mauro','Valenziano','valenzianoa@gmail.com','Non presente','Mobile','LTM','175','Parione 1',515,'+393485916588'),('Federico','Viceconti','viceconti.federico@gmail.com','Non presente','Mobile','LTM','178','Campo Marzio 2',516,'+393899549766'),('Donato','Virgilio','donato.virg@gmail.com','Non presente','Mobile','LTM','143','Borgo 2',517,'+393403468139'),('Salvatore','Zuardi','salvatorezuardi2697@gmail.com','Non presente','Mobile','LTM','181','Pigna 2',518,'+393271656253'),('Simone','Zuccalà','simo4197@gmail.com','Non presente','Mobile','LTM','193','Colonna 7',519,'+393272190767'),('Agneti','Giuseppe','agneti.giuseppe@gmail.com','Non presente','Mobile','staff','102','Parione 5',520,'+39 366 456 4456'),('Cavaglià','Pietro','pierocavaglia@hotmail.com','Non presente','Mobile','staff','3','Non presente',521,'Non presente'),('Ferulano','Roberto','roberto.ferulano@gmail.com','Non presente','Mobile','staff','26','Monti 3',522,'+39 3477975557'),('Mancino','Davide','davidemancino4@gmail.com','Non presente','Mobile','staff','109','Pigna 6',523,'+39 3489233983'),('Messina','Marco','Non presente','Non presente','Mobile','staff','159','Campo Marzio 6',524,'Non presente'),('Oceana','Gabriele','gabrieleoceana@gmail.com','Non presente','Mobile','staff','183','Ponte 4',525,'+39 392 926 7135'),('Palmieri','Giuseppe','giuseppepalmieri96@gmail.com','Non presente','Mobile','staff','119','Colonna 4',526,'+39 3481704613'),('Petraccone','Francesco','francesco.petraccone@gmail.com','Non presente','Mobile','staff','169','Campo Marzio 7',527,'+39 333 917 2944'),('Fumagalli','Sergio','sergio_fumagalli@virgilio.it','Non presente','Mobile','staff','/','Non presente',528,'Non presente'),('Guijarro','Alfonso','alfonso.guijarro@gmail.com','Non presente','Mobile','staff','/','Non presente',529,'+39 3384988274'),('Cavalleri','Giampietro','giampicavalleri@gmail.com','Non presente','Mobile','staff','150','Non presente',530,'Non presente'),('Pontari','Domenico','D.Pontari@elis.org','Non presente','Mobile','staff','41','Direzione',531,'+39 346 237 3509'),('Re','Paolo','paolore1@gmail.com','Non presente','Mobile','staff','10','Non presente',532,'+39 3394026631'),('Politanò','Vincenzo','vincenzopolitano94@gmail.com','Non presente','Mobile','staff','77','Monti 7',533,'+39393335324390'),('Tallarita','Gianbattista','Non presente','Non presente','Mobile','staff','179','Parione 4 ',534,'Non presente'),('Gigliotti','Carlo Pio','carlo.gigliotticg@gmail.com','Non presente','Mobile','staff','149','Borgo 3',535,'+39 392 726 9647');
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

-- Dump completed on 2017-11-11 18:40:20
