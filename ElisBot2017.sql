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
INSERT INTO `Incaricato` VALUES (322,1),(333,1),(351,1),(357,1),(359,1),(299,2),(305,2),(311,2),(355,2),(358,2),(300,3),(336,3),(340,3),(356,3),(329,4),(349,4),(311,5),(316,5),(334,5),(316,6),(320,6),(342,6),(349,6),(353,6),(316,7),(321,7),(342,7),(304,8),(305,8),(318,8),(342,8),(334,9),(343,9),(320,10),(353,10),(300,12),(318,12),(321,12),(329,12),(332,12),(343,12),(299,13),(324,13),(353,13),(358,13),(300,14),(311,14),(329,14),(304,15),(305,15),(299,16),(334,16),(321,17),(340,17),(304,18),(320,18),(318,19),(324,19),(332,19),(336,19),(349,20),(356,20),(340,21),(355,21),(346,22),(336,23),(346,24),(356,24),(324,25),(343,25),(332,26),(355,27);
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
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `E_mail_1_Value` varchar(33) CHARACTER SET utf8 DEFAULT NULL,
  `Seconda_mail` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `Tipo_tel` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `Num_tel` varchar(40) DEFAULT NULL,
  `Corso` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Sigla` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Stanza` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Residence_DB`
--

LOCK TABLES `Residence_DB` WRITE;
/*!40000 ALTER TABLE `Residence_DB` DISABLE KEYS */;
INSERT INTO `Residence_DB` VALUES ('Alessandro','Agneti','alex.agneti@gmail.com','Non presente','Mobile','393928680992','DEP','101','Borgo 1',296),('Giacomo','Buzzitta','giacomobuzzitta@libero.it','Non presente','Mobile','393312693245','DEP','105','Pigna 1',297),('Andrea','Cau','cauandrea@hotmail.it','Non presente','Mobile','393468439253','DEP','110','Colonna 1',298),('Flavio','Chioda','flaviochioda97@gmail.com','Non presente','Mobile','393407609567','LTM','113','Pigna 1',299),('Gaetano','Ciccone','gaetano.ciccone97@gmail.com','Non presente','Mobile','393472430165','LTM','106','Campo Marzio 2',300),('Silvio Pablo','Cifone','SilvioCifone98@gmail.com','Non presente','Mobile','393427503332','DEP','114','Colonna 2',301),('Francesco','Cipolla','francescocpll@gmail.com','Non presente','Mobile','393272079936','LTM','111','Borgo 1',302),('Alberto','Colopi','colopi.alberto@gmail.com','Non presente','Mobile','393899840644','DEP','122','Borgo 1',303),('Gianfranco','Colucci','gianfrancolucci@gmail.com','Non presente','Mobile','393313062273','LTM','130','Colonna 2',304),('Antonio','Cozzi','antoniocozzi2@gmail.com','Non presente','Mobile','393277935365','LTM','112','Campo Marzio 1',305),('Antonio','D\'Ademo','antonio.dademo98@gmail.com','Non presente','Mobile','393467328232','DEP','115','Ponte 1',306),('Gabriele','De Trane','detranegabriele@gmail.com','Non presente','Mobile','393898869237','DEP','116','Ponte 2',307),('Francesco','Del Prete','f.delprete06@gmail.com','Non presente','Mobile','393499591992','DEP','117','Colonna 2',308),('Matteo','Di Masi','dimasimatteo@gmail.com','Non presente','Mobile','393348050905','DEP','121','Parione 2',309),('Alessio','Ferrigno','ferrignoalessio98@gmail.com','Non presente','Mobile','393929453613','DEP','131','Pigna 1',310),('Michele','Foderaro','michele.foderaro@virgilio.it','Non presente','Mobile','393662530814','LTM','123','Monti 1',311),('Antonino','Giacalone','antonino.giacalone9898@gmail.com','Non presente','Mobile','393891470615','DEP','124','Parione 2',312),('Nicola','Iacovelli','nicolaiacovelli98@gmail.com','Non presente','Mobile','393279547326','DEP','54','Trevi 2',313),('Gaetano','La Porta','gaeta91@live.it','Non presente','Mobile','393888505774','DEP','125','Borgo 2',314),('Leonardo','Lauriola','leonardo.lauriola19@gmail.com','Non presente','Mobile','393899533036','DEP','127','Pigna 2',315),('Roberto','Lentini','roberto.lentini@live.com','Non presente','Mobile','393290461211','LTM','135','Parione 2',316),('Antonino','Liberto','libertoantonio9804@gmail.com','Non presente','Mobile','393312218650','DEP','128','Pigna 1',317),('Domenico','Licciardi','licciardi.domenico98@gmail.com','Non presente','Mobile','393488190480','LTM','136','Borgo 6',318),('Alessandro','Littera','alessandro_998@live.it','Non presente','Mobile','393473276506','DEP','129','Colonna 1',319),('Nicolò','Longobardo','longobardo23@gmail.com','Non presente','Mobile','393314682431','LTM','137','Borgo 2',320),('Matteo Serafino','Manfreda','manfredamatteo44@gmail.com','Non presente','Mobile','393891508407','LTM','138','Monti 4',321),('Luca','Mantione','luca.mantione@hotmail.it','Non presente','Mobile','393461013309','LTM','139','Parione 2',322),('Francesco','Manuguerra','francicciomanuguerra@gmail.com','Non presente','Mobile','393289703900','DEP','133','Monti 2',323),('Gianluca','Marano','gianluca.marano1@gmail.com','Non presente','Mobile','393661944844','LTM','140','Ponte 2',324),('Simone','Marino','simone.marino97@outlook.it','Non presente','Mobile','393461275493','DEP','134','Parione 1',325),('Vincenzo','Marino','vincenzomarino2098@gmail.com','Non presente','Mobile','393283796067','DEP','142','Pigna 2',326),('Marco','Massone','mas.95@hotmail.it','Non presente','Mobile','393475864944','DEP','146','Borgo 1',327),('Graziano','Miglionico','gramiglionico@gmail.com','Non presente','Mobile','393394288825','DEP','148','Ponte 2',328),('Giuseppe','Milicia','milicia98@gmail.com','Non presente','Mobile','393421066962','LTM','141','Parione 3',329),('Rosario','Mussari','Rosariomussari@gmail.com','Non presente','Mobile','393387163770','DEP','152','Ponte 1',330),('Giuseppe','Notaristefano','peppenotaristefano99@gmail.com','Non presente','Mobile','393421522393','DEP','154','Parione 1',331),('Luca','Oceana','lucad.oceana@gmail.com','Non presente','Mobile','393486192871','LTM','144','Monti 1',332),('Emanuele','Paciolla','emanuele.paciolla15@gmail.com','Non presente','Mobile','393333166724','LTM','145','Monti 2',333),('Davide','Pagliaro','dpagliaro97@gmail.com','Non presente','Mobile','393452126934','LTM','151','Pigna 2',334),('Sergio Nunzio','Parisi','sergioparisi98@gmail.com','Non presente','Mobile','393335481057','DEP','119','Colonna 4',335),('Marco','Petralia','marcopetralia97@gmail.com','Non presente','Mobile','393899617483','LTM','155','Campo Marzio 1',336),('Giuseppe','Piano','giuseppe.piano98@gmail.com','Non presente','Mobile','393452645147','DEP','107','Pigna 7',337),('Simone','Pizzini','smp98@hotmail.it','Non presente','Mobile','393318518958','DEP','156','Colonna 1',338),('Francesco','Pochì','france.pochi@gmail.com','Non presente','Mobile','+393510525705/3892462704','DEP','164','Parione 1',339),('Davide','Popolano','davide@popolano.it','Non presente','Mobile','393201562885','LTM','165','Monti 1',340),('Francesco','Ricciardi','francesco.ricciardi993@gmail.com','Non presente','Mobile','393343384844','DEP','157','Campo Marzio 1',341),('Andrea','Rizzo','ioandrearizzo@gmail.com','Non presente','Mobile','393806340680','LTM','158','Ponte 3',342),('Antonio','Russo','russoantonio1997@gmail.com','Non presente','Mobile','393703458531','LTM','172','Monti 1',343),('Salvatore Pio','Russo','salvatorepiorusso@gmail.com','Non presente','Mobile','393271094422','DEP','177','Campo Marzio 2',344),('Kerolos Naser Danial','Salib','kerolos.salib@gmail.com','Non presente','Mobile','393804645420','DEP','162','Campo Marzio 3',345),('Pietro','Santochirico','pietro.santochirico@libero.it','Non presente','Mobile','393927294790','LTM','182','Monti 2',346),('Simone','Scanzani','simonescanzani@outlook.com','Non presente','Mobile','393493207522','DEP','184','Monti 2',347),('Andrea','Scarpiello','andrea.scarpiello.98@gmail.com','Non presente','Mobile','393885819301','DEP','163','Ponte 1',348),('Simone','Scifo','simone.scifo97@gmail.com','Non presente','Mobile','393391904321','LTM','185','Campo Marzio 1',349),('Gioele','Spinella','gioelespix@gmail.com','Non presente','Mobile','393396682798','DEP','166','Ponte 2',350),('Francesco','Stella','francesco.stella97@gmail.com','Non presente','Mobile','393295632453','LTM','186','Colonna 2',351),('Giulio','Tandoi','tandoigiulio9@live.com','Non presente','Mobile','393465975836','DEP','174','Pigna 5',352),('Valerio','Torrese','valerio.torrese@gmail.com','Non presente','Mobile','393273769772','LTM','187','Colonna 1',353),('Federico','Tosto','tostofederico98@gmail.com','Non presente','Mobile','393314768385','DEP','175','Parione 1',354),('Andrea Mauro','Valenziano','valenzianoa@gmail.com','Non presente','Mobile','393485916588','LTM','76','Trastevere 2',355),('Federico','Viceconti','viceconti.federico@gmail.com','Non presente','Mobile','393899549766','LTM','178','Campo Marzio 2',356),('Donato','Virgilio','donato.virg@gmail.com','Non presente','Mobile','393403468139','LTM','143','Borgo 2',357),('Salvatore','Zuardi','salvatorezuardi2697@gmail.com','Non presente','Mobile','393271656253','LTM','181','Pigna 2',358),('Simone','Zuccala','simo4197@gmail.com','Non presente','Mobile','393272190767','LTM','193','Colonna 7',359),('Giuseppe','Agneti','agneti.giuseppe@gmail.com','Non presente','Cellulare','+39 366 456 4456','staff','102','Esquilino 3',360),('Pietro','Cavaglia','pierocavaglia@hotmail.com','Non presente','Mobile','Non presente','staff','3','Colonna 3',361),('Mattia','Di Foggia','mattiadifoggia94@gmail.com','Non presente','Mobile','393881224502','staff','8','Pigna 7',362),('Roberto','Ferulano','roberto.ferulano@gmail.com','Non presente','Cellulare','+39 3477975557','staff','26','Monti 3',363),('Andrea','Filippone','andrea.filippone1995@gmail.com','Non presente','Cellulare','+39 3200767580','staff','154','Colonna 4',364),('Davide','Mancino','davidemancino4@gmail.com','Non presente','Mobile','+39 3489233983','staff','109','Colonna 2',365),('Marco','Messina','Non presente','Non presente','Mobile','Non presente','staff','159','Campo Marzio 6',366),('Gabriele','Oceana','gabrieleoceana@gmail.com','Non presente','Mobile','+39 392 926 7135','staff','183','Ponte 2',367),('Giuseppe','Palmieri','giuseppepalmieri96@gmail.com','Non presente','Mobile','+39 3481704613','staff','119','Borgo 2',368),('Francesco','Petraccone','francesco.petraccone@gmail.com','Non presente','Cellulare','+39 333 917 2944','staff','169','Campo Marzio 7',369),('Sergio','Fumagalli','sergio_fumagalli@virgilio.it','Non presente','Mobile','Non presente','staff','/','Non presente',370),('Alfonso','Guijarro','alfonso.guijarro@gmail.com','Non presente','Cellulare','+39 3384988274','staff','/','Non presente',371),('Giampietro','Cavalleri','giampicavalleri@gmail.com','Non presente','Mobile','Non presente','staff','150','Non presente',372),('Domenico','Pontari','D.Pontari@elis.org','Non presente','Cellulare','+39 346 237 3509','staff','41','Direzione',373),('Paolo','Re','paolore1@gmail.com','Non presente','Cellulare','+39 3394026631','staff','10','Non presente',374),('Vincenzo','Politano','vincenzopolitano94@gmail.com','Non presente','mobile','393335324390','Staff','77','Monti 7',375);
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

-- Dump completed on 2017-10-06 18:04:32
