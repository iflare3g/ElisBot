-- MySQL dump 10.14  Distrib 5.5.54-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	5.5.54-MariaDB-1~trusty

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
INSERT INTO `Incaricato` VALUES (2,19),(2,25),(3,4),(4,8),(4,13),(5,13),(8,7),(9,3),(11,2),(11,13),(11,16),(12,3),(12,12),(13,8),(14,1),(15,8),(15,15),(15,18),(16,10),(17,2),(17,8),(17,15),(18,18),(19,3),(21,1),(22,10),(23,2),(26,2),(26,5),(26,14),(27,13),(27,14),(28,22),(28,23),(29,2),(29,17),(30,7),(31,12),(35,5),(35,6),(35,7),(36,8),(36,19),(37,1),(38,3),(39,9),(40,6),(40,10),(40,18),(41,10),(41,21),(42,10),(43,19),(44,7),(44,12),(44,17),(45,1),(46,5),(47,13),(47,19),(48,1),(49,4),(49,20),(51,16),(52,4),(52,12),(53,8),(54,15),(54,21),(55,9),(56,14),(57,12),(57,19),(57,26),(58,1),(59,5),(59,9),(59,16),(60,2),(61,6),(62,5),(63,10),(64,23),(64,24),(66,3),(66,19),(66,23),(67,1),(68,3),(68,17),(69,6),(69,7),(70,9),(70,12),(70,24),(71,5),(71,22),(71,25),(72,10),(73,22),(74,4),(74,6),(74,20),(75,4),(75,16),(76,14),(78,1),(80,6),(81,6),(81,10),(81,13),(83,2),(83,21),(83,27),(84,3),(84,20),(85,1),(86,10),(87,2),(87,13),(88,1);
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
  `Column_2` int(11) DEFAULT NULL,
  `Cognome` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `Column_4` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `Column_5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `E_mail_1_Value` varchar(33) CHARACTER SET utf8 DEFAULT NULL,
  `Column_7` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Seconda_mail` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `Tipo_tel` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `Num_tel` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `Corso` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Sigla` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Stanza` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `Column_14` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Residence_DB`
--

LOCK TABLES `Residence_DB` WRITE;
/*!40000 ALTER TABLE `Residence_DB` DISABLE KEYS */;
INSERT INTO `Residence_DB` VALUES ('Giuseppe',NULL,'Agneti','Staff ::: Elis ::: * My Contacts','* ','agneti.giuseppe@gmail.com',NULL,NULL,'Cellulare','+39 366 456 4456','staff','102','Esquilino 3','staff',1),('Vincenzo',NULL,'Asta','Elis ::: ISA 15/16 ::: * My Contacts','* ','astavincenzo96@gmail.com',NULL,NULL,'Mobile','+39 3891543268','ISA','72','Monti 2','ISA',2),('Andrea',NULL,'Barletta','IOM 15/16 ::: Elis ::: * My Contacts','* ','andrea.barletta22@gmail.com',NULL,NULL,'Mobile','+39 335 635 7921','IOM','129','Ponte 1','IOM',3),('Claudio',NULL,'Bellucci','* My Contacts ::: ISA 15/16 ::: Elis','* ','claudiobellucci0@gmail.com',NULL,NULL,'Mobile','+39 3273525407','ISA','80','Parione 3','ISA',4),('Andrea',NULL,'Blancato','* My Contacts ::: ISA 15/16 ::: Elis','* ','andrea.blancato24@gmail.com',NULL,NULL,'Mobile','+39 3339246466','ISA','84','Monti 1','ISA',5),('Oleksiy',NULL,'Bozhyk','Elis ::: * My Contacts ::: Staff','* ','oleksiy.bozhyk@gmail.com',NULL,NULL,'Mobile','+393332195782','staff','133','Borgo 3','staff',6),('Massimo',NULL,'Cacciapaglia','Elis ::: ISA 15/16 ::: * My Contacts','* ','massimocacciapaglia.13@gmail.com',NULL,NULL,'Mobile','+39 3913839318','ISA','/','/','ISA',7),('Natale',NULL,'Carriago','Elis ::: ISA 15/16 ::: * My Contacts','* ','n_carriago@libero.it','Other','natalecarriago@gmail.com','Mobile','+39 347 966 9602','ISA','88','Ponte 1','ISA',8),('Claudio',NULL,'Catalano','IOM 15/16 ::: Elis ::: * My Contacts','* ','claudiocatalano18@gmail.com',NULL,NULL,'Mobile','+39 327 892 8736','IOM','132','Esquilino 2','IOM',9),('Pietro',NULL,'Cavaglia','Staff ::: Elis ::: * My Contacts','* ','pierocavaglia@hotmail.com',NULL,NULL,'Mobile','Non presente','staff','3','Colonna 3','staff',10),('Flavio',NULL,'Chioda','LTM 16/17 ::: Elis ::: * My Contacts','* ','flaviochioda97@gmail.com',NULL,NULL,'Mobile','+39 3407609567','LTM','110','Ponte 2','LTM',11),('Gaetano',NULL,'Ciccone','LTM 16/17 ::: Elis ::: * My Contacts','* ','gaetano.ciccone97@gmail.com',NULL,NULL,'Mobile','+39 3472430165','LTM','113','Pigna 1','LTM',12),('Daniele',NULL,'Ciciani','Elis ::: ISA 15/16 ::: * My Contacts','* ','danix.c96@gmail.com',NULL,NULL,'Mobile','+39 3476806058','ISA','90','Esquilino 2','ISA',13),('Francesco',NULL,'Cipolla','LTM 16/17 ::: Elis ::: * My Contacts','* ','francescocip@icloud.com',NULL,NULL,'Mobile','+39 3272079936','LTM','114','Ponte 1','LTM',14),('Gianfranco',NULL,'Colucci','* My Contacts ::: Elis ::: LTM 16/17','* ','gianfrancolucci@gmail.com',NULL,NULL,'Mobile','+39 3313062273','LTM','122','Parione 1','LTM',15),('Federico',NULL,'Cosentino','* My Contacts ::: IOM 15/16 ::: Elis','* ','federico.cosentino96@gmail.com',NULL,NULL,'Mobile','+39 346 181 4010','IOM','134','Parione 1','IOM',16),('Antonio',NULL,'Cozzi','* My Contacts ::: Elis ::: LTM 16/17','* ','antoniocozzi2@gmail.com',NULL,NULL,'Mobile','+39 3277935365','LTM','130','Pigna 2','LTM',17),('Paolo',NULL,'Curatolo','IOM 15/16 ::: Elis ::: * My Contacts','* ','paolo.curatolo9@gmail.com',NULL,NULL,'Mobile','+39 331 833 0154','IOM','142','Campo Marzio 1','IOM',18),('Antonio',NULL,'Del Prete','Elis ::: ISA 15/16 ::: * My Contacts','* ','antonio.delprete96@gmail.com',NULL,NULL,'Mobile','+39 3771346467','ISA','92','Monti 5','ISA',19),('Mattia',NULL,'Di Foggia','Staff ::: Elis ::: * My Contacts','* ','mattiadifoggia94@gmail.com',NULL,NULL,'Mobile','+393881224502','staff','8','Pigna 7','staff',20),('Antonio',NULL,'Di Stefano','Elis ::: ISA 15/16 ::: * My Contacts','* ','tonio9681@gmail.com',NULL,NULL,'Mobile','+39 334 879 4454','ISA','93','Pigna 1','ISA',21),('Filippo',NULL,'Dicara','IOM 15/16 ::: Elis ::: * My Contacts','* ','filippo.dicara@gmail.com',NULL,NULL,'Mobile','+39 333 224 3781','IOM','47','Colonna 1','IOM',22),('Massimo',NULL,'Esposito','Elis ::: ISA 15/16 ::: * My Contacts','* ','Massimoespimas@hotmail.it','Other','massimoesposito201@gmail.com','Mobile','+39 3338505084','ISA','95','Borgo 1','ISA',23),('Roberto',NULL,'Ferulano','Staff ::: Elis ::: * My Contacts','* ','roberto.ferulano@gmail.com',NULL,NULL,'Cellulare','+39 3477975557','staff','26','Monti 3','staff',24),('Andrea',NULL,'Filippone','Staff ::: Elis ::: * My Contacts','* ','andrea.filippone1995@gmail.com',NULL,NULL,'Cellulare','+39 3200767580','staff','154','Colonna 4','staff',25),('Michele',NULL,'Foderaro','LTM 16/17 ::: Elis ::: * My Contacts','* ','michele.foderaro@virgilio.it',NULL,NULL,'Mobile','+39 3662530814','LTM','131','Colonna 2','LTM',26),('Alessandro',NULL,'Fonte','IOM 15/16 ::: Elis ::: * My Contacts','* ','alessandrofonte96@gmail.com',NULL,NULL,'Mobile','+39 346 539 0709','IOM','148','Borgo 1','IOM',27),('Alessandro',NULL,'Gallo','Elis ::: ISA 15/16 ::: * My Contacts','* Other','alessandrogallo1997@gmail.com',NULL,NULL,'Mobile','+39 3274024561','ISA','97','Borgo 6','ISA',28),('Carlo',NULL,'Gigliotti','IOM 15/16 ::: Elis ::: * My Contacts','* ','carlo.gigliotticg@gmail.com',NULL,NULL,'Mobile','+39 392 726 9647','IOM','149','Campo Marzio 3','IOM',29),('Raffaele',NULL,'Girace','IOM 15/16 ::: Elis ::: * My Contacts','* ','rafgirace@gmail.com',NULL,NULL,'Mobile','+39 388 111 3704','IOM','155','Esquilino 6','IOM',30),('Mirco',NULL,'Grillo','* My Contacts ::: ISA 15/16 ::: Elis','* ','iflare3g@gmail.com',NULL,NULL,'Mobile','+39 3278724411','ISA','101','Esquilino 1','ISA',31),('Maurizio',NULL,'Guarini','Staff ::: Elis ::: * My Contacts','* ','guarinimaurizio@gmail.com',NULL,NULL,'Mobile','+393409823614','staff','156','Pigna 5','staff',32),('Gianfranco',NULL,'Incandela','Staff ::: Elis ::: * My Contacts','* Other','gianfranco.incandela@gmail.com',NULL,NULL,'Mobile','+39 331 339 5431','staff','115','Parione 4','staff',33),('Antonio',NULL,'Lentini','Staff ::: Elis ::: * My Contacts','* ','antonino.lentini@hotmail.it',NULL,NULL,'Cellulare','+39 3394840437','staff','117','Pigna 4','staff',34),('Roberto',NULL,'Lentini','LTM 16/17 ::: Elis ::: * My Contacts','* ','roberto.lentini@live.com',NULL,NULL,'Mobile','+39 3290461211','LTM','135','Borgo 2','LTM',35),('Domenico',NULL,'Licciardi','* My Contacts ::: Elis ::: LTM 16/17','* ','licciardi.domenico98@gmail.com',NULL,NULL,'Mobile','+39 3488190480','LTM','136','Parione 2','LTM',36),('Angelo',NULL,'Liguori','Elis ::: ISA 15/16 ::: * My Contacts','* ','angeloliguori20z@gmail.com','Other','angelaalessia@alice.it','Mobile','+39 3284437505','ISA','103','Esquilino 1','ISA',37),('Donato',NULL,'Lombardi','IOM 15/16 ::: Elis ::: * My Contacts','* ','donatolombardi1995@gmail.com',NULL,NULL,'Mobile','+39 388 103 7427','IOM','161','Pigna 1','IOM',38),('Matteo',NULL,'Longo','Elis ::: ISA 15/16 ::: * My Contacts','* ','matteo.longo613@gmail.com',NULL,NULL,'Mobile','+39 3407742570','ISA','105','Campo Marzio 1','ISA',39),('Nicolo',NULL,'Longobardo','* My Contacts ::: Elis ::: LTM 16/17','* ','longobardo23@gmail.com',NULL,NULL,'Mobile','+39 3314682431','LTM','137','Ponte 1','LTM',40),('Vito',NULL,'Lopriore','Elis ::: ISA 15/16 ::: * My Contacts','* ','vito9630@gmail.com',NULL,NULL,'Mobile','+39 3207436469','ISA','106','Campo Marzio 2','ISA',41),('Angelo',NULL,'Luprano','IOM 15/16 ::: Elis ::: * My Contacts','* ','luprano.angelo@gmail.com',NULL,NULL,'Mobile','+39 328 144 2520','IOM','164','Pigna 6','IOM',42),('Davide',NULL,'Mancino','Elis ::: ISA 15/16 ::: * My Contacts','* ','davidemancino4@gmail.com',NULL,NULL,'Mobile','+39 3489233983','ISA','109','Colonna 2','ISA',43),('Matteo Serafino',NULL,'Manfreda','LTM 16/17 ::: Elis ::: * My Contacts','* ','manfredamatteo44@gmail.com',NULL,NULL,'Mobile','+39 3891508407','LTM','138','Colonna 1','LTM',44),('Luca',NULL,'Mantione','LTM 16/17 ::: Elis ::: * My Contacts','* ','luca.mantione@hotmail.it',NULL,NULL,'Mobile','+39 3461013309','LTM','139','Monti 2','LTM',45),('Vito',NULL,'Manuguerra','* My Contacts ::: ISA 15/16 ::: Elis','* Other','vito96manu@gmail.com',NULL,NULL,'Mobile','+39 346 361 0142','ISA','112','Ponte 2','ISA',46),('Gianluca',NULL,'Marano','LTM 16/17 ::: Elis ::: * My Contacts','* ','gianluca.marano1@gmail.com',NULL,NULL,'Mobile','+39 3426259217','LTM','140','Esquilino 1','LTM',47),('Alessandro',NULL,'Masia',NULL,NULL,'ale.masia1996@gmail.com',NULL,NULL,'Mobile','+39 3272058509','IOM','167','Colonna 6',NULL,48),('Gabriele',NULL,'Mastrapasqua','* My Contacts ::: IOM 15/16 ::: Elis','* ','mastrapasqua.gabriele@gmail.com',NULL,NULL,'Mobile','+39 328 024 5753','IOM','172','Campo Marzio 2','IOM',49),('Marco',NULL,'Messina',NULL,NULL,'Non presente',NULL,NULL,'Mobile','Non presente','staff','159','Campo Marzio 6',NULL,50),('Vito',NULL,'Mezzapesa','Elis ::: ISA 15/16 ::: * My Contacts','* ','vitomezzapesa9@gmail.com','Other','vitomezzapesa@outlook.com','Mobile','+39 3934808857','ISA','111','Pigna 2','ISA',51),('Giuseppe',NULL,'Milicia','LTM 16/17 ::: Elis ::: * My Contacts','* ','milicia98@gmail.com',NULL,NULL,'Mobile','+39 3421066962','LTM','141','Campo Marzio 1','LTM',52),('Alessio',NULL,'Mitrotta','Elis ::: ISA 15/16 ::: * My Contacts','* ','alessio.mitrotta@gmail.com',NULL,NULL,'Mobile','+39 3472483647','ISA','116','Esquilino 5','ISA',53),('Giorgio',NULL,'Morici','IOM 15/16 ::: Elis ::: * My Contacts','* ','giorgiomorici23@gmail.com',NULL,NULL,'Mobile','+39 329 082 7193','IOM','177','Parione 2','IOM',54),('Gaetano',NULL,'Mule','IOM 15/16 ::: Elis ::: * My Contacts','* ','tanomule95@gmail.com',NULL,NULL,'Mobile','+39 340 691 9432','IOM','182','Esquilino 2','IOM',55),('Gabriele',NULL,'Oceana','IOM 15/16 ::: Elis ::: * My Contacts','* ','gabrieleoceana@gmail.com',NULL,NULL,'Mobile','+39 392 926 7135','IOM','183','Ponte 2','IOM',56),('Luca',NULL,'Oceana','LTM 16/17 ::: Elis ::: * My Contacts','* ','lucad.oceana@gmail.com',NULL,NULL,'Mobile','+39 3486192871','LTM','144','Colonna 1','LTM',57),('Emanuele',NULL,'Paciolla','LTM 16/17 ::: Elis ::: * My Contacts','* ','emanuele.paciolla15@gmail.com',NULL,NULL,'Mobile','+39 3333166724','LTM','145','Campo Marzio 2','LTM',58),('Davide',NULL,'Pagliaro','LTM 16/17 ::: Elis ::: * My Contacts','* ','dpagliaro97@gmail.com',NULL,NULL,'Mobile','+39 3452126934','LTM','151','Monti 2','LTM',59),('Giuseppe',NULL,'Palmieri','Elis ::: ISA 15/16 ::: * My Contacts','* ','giuseppepalmieri96@gmail.com',NULL,NULL,'Mobile','+39 3481704613','ISA','119','Borgo 2','ISA',60),('Fabio',NULL,'Patrizi','IOM 15/16 ::: Elis ::: * My Contacts','* ','fbptrz@gmail.com',NULL,NULL,'Mobile','+39 366 196 2735','IOM','184','Borgo 2','IOM',61),('Gaetano',NULL,'Perna','Elis ::: ISA 15/16 ::: * My Contacts','* ','pernagaetano@gmail.com',NULL,NULL,'Mobile','+39 380 463 3283','ISA','146','Borgo 5','ISA',62),('Saverio',NULL,'Pertosa','IOM 15/16 ::: Elis ::: * My Contacts','* ','pertosaverio@gmail.com',NULL,NULL,'Mobile','+39 329 867 1075','IOM','186','Monti 2','IOM',63),('Nicola',NULL,'Pesce','Elis ::: ISA 15/16 ::: * My Contacts','* ','kaiser27@hotmail.it','Other','nkpesce@gmail.com','Mobile','+39 3283561513','ISA','152','Colonna 2','ISA',64),('Francesco',NULL,'Petraccone','Staff ::: Elis ::: * My Contacts','* INTERNET','francesco.petraccone@gmail.com','Other','f.petraccone@elis.org','Cellulare','+39 333 917 2944','staff','169','Campo Marzio 7','staff',65),('Marco',NULL,'Petralia','LTM 16/17 ::: Elis ::: * My Contacts','* ','marcopetralia97@gmail.com',NULL,NULL,'Mobile','+39 3899617483','LTM','107','Borgo 1','LTM',66),('Justin',NULL,'Polidori','Elis ::: ISA 15/16 ::: * My Contacts','* ','dannyarcher9619@gmail.com',NULL,NULL,'Mobile','+39 3477450599','ISA','185','Monti 1','ISA',67),('Davide',NULL,'Popolano','LTM 16/17 ::: Elis ::: * My Contacts','* ','davide@popolano.it',NULL,NULL,'Mobile','+39 3201562885','LTM','153','Parione 1','LTM',68),('Andrea',NULL,'Rizzo','LTM 16/17 ::: Elis ::: * My Contacts','* ','ioandrearizzo@gmail.com',NULL,NULL,'Mobile','+39 3806340680','LTM','157','Pigna 1','LTM',69),('Antonio',NULL,'Russo','LTM 16/17 ::: Elis ::: * My Contacts','* ','russoantonio1997@gmail.com',NULL,NULL,'Mobile','+39 3346739110','LTM','158','Colonna 2','LTM',70),('Pietro',NULL,'Santochirico','LTM 16/17 ::: Elis ::: * My Contacts','* ','pietro.santochirico@libero.it',NULL,NULL,'Mobile','+39 3927294790','LTM','162','Parione 2','LTM',71),('Domenico',NULL,'Scaldaferri','* My Contacts ::: IOM 15/16 ::: Elis','* ','domenicoscaldaferri1996@gmail.com',NULL,NULL,'Mobile','+39 324 603 0444','IOM','187','Parione 1','IOM',72),('Federico',NULL,'Scardina','Elis ::: ISA 15/16 ::: * My Contacts','* ','f.scardina97@gmail.com','Other','f.scardina97@libero.it','Mobile','+39 348 932 6756','ISA','123','Colonna 7','ISA',73),('Simone',NULL,'Scifo','LTM 16/17 ::: Elis ::: * My Contacts','* ','simone.scifo97@gmail.com',NULL,NULL,'Mobile','+39 3391904321','LTM','163','Borgo 1','LTM',74),('Antonio ',NULL,'Secchi','* My Contacts ::: IOM 15/16 ::: Elis','* ','antonio.secchi.uri@gmail.com',NULL,NULL,'Mobile','+39 388 743 0533','IOM','188','Parione 2','IOM',75),('Samuele',NULL,'Sica','* My Contacts ::: IOM 15/16 ::: Elis','* ','samuele.sica@gmail.com',NULL,NULL,'Mobile','+39 346 511 8968','IOM','189','Ponte 4','IOM',76),('Francesco',NULL,'Stella','LTM 16/17 ::: Elis ::: * My Contacts','* ','francesco.stella97@gmail.com',NULL,NULL,'Mobile','+39 3295632453','LTM','166','Campo Marzio 1','LTM',78),('Federico ',NULL,'Tandoi','Staff ::: Elis ::: * My Contacts','* ','federico.tandoi@live.it',NULL,NULL,'Cellulare','+39 360368540','staff','12','Ponte 3','staff',79),('Kevin',NULL,'Tofanelli','Elis ::: ISA 15/16 ::: * My Contacts','* ','kevin404@hotmail.it','Other','tofanellikevinj@gmail.com','Mobile','+39 3291934119','ISA','125','Pigna 2','ISA',80),('Valerio',NULL,'Torrese','* My Contacts ::: Elis ::: LTM 16/17','* ','valerio.torrese@gmail.com',NULL,NULL,'Mobile','+39 3273769772','LTM','174','Pigna 2','LTM',81),('Antonio',NULL,'Tramontano','Staff ::: Elis ::: * My Contacts','* ','antoniotramontano23@gmail.com',NULL,NULL,'Cellulare','+39 333 563 9221','staff','127','Monti 4','staff',82),('Andrea Mauro',NULL,'Valenziano','LTM 16/17 ::: Elis ::: * My Contacts','* ','valenzianoa@gmail.com',NULL,NULL,'Mobile','+39 3485916588','LTM','175','Borgo 2','LTM',83),('Federico',NULL,'Viceconti','LTM 16/17 ::: Elis ::: * My Contacts','* ','viceconti.federico@gmail.com',NULL,NULL,'Mobile','+39 3899549766','LTM','178','Esquilino 1','LTM',84),('Donato',NULL,'Virgilio','* My Contacts ::: Elis ::: LTM 16/17','* Other','donato.virg@gmail.com',NULL,NULL,'Mobile','+39 340 346 8139','LTM','143','Ponte 2','LTM',85),('Davide',NULL,'Ziferri','Elis ::: ISA 15/16 ::: * My Contacts','* ','davide.ziferri@gmail.com',NULL,NULL,'Mobile','+39 392 972 4047','ISA','128','Colonna 1','ISA',86),('Salvatore',NULL,'Zuardi','LTM 16/17 ::: Elis ::: * My Contacts','* ','salvatorezuardi2697@gmail.com',NULL,NULL,'Mobile','+39 3271656253','LTM','181','Campo Marzio 2','LTM',87),('Simone',NULL,'Zuccala','LTM 16/17 ::: Elis ::: * My Contacts','* ','simo4197@gmail.com',NULL,NULL,'Mobile','+39 3272190767','LTM','193','Monti 1','LTM',88),('Sergio',NULL,'Fumagalli','Staff ::: Elis ::: * My Contacts','* ','sergio_fumagalli@virgilio.it',NULL,NULL,'Mobile','Non presente','staff','/','Non presente','staff',89),('Alfonso',NULL,'Guijarro','Staff ::: Elis ::: * My Contacts','* ','alfonso.guijarro@gmail.com',NULL,NULL,'Cellulare','+39 3384988274','staff','/','Non presente','staff',90),('Giampietro',NULL,'Cavalleri','Staff ::: Elis ::: * My Contacts','* ','giampicavalleri@gmail.com',NULL,NULL,'Mobile','Non presente','staff','150','Non presente','staff',91),('Domenico',NULL,'Pontari','Staff ::: Elis ::: * My Contacts','* ','D.Pontari@elis.org',NULL,NULL,'Cellulare','+39 346 237 3509','staff','41','Direzione','staff',92),('Paolo',NULL,'Re','Staff ::: Elis ::: * My Contacts','* ','paolore1@gmail.com',NULL,NULL,'Cellulare','+39 3394026631','staff','10','Non presente','staff',93),('Vincenzo',0,'Politano','','','vincenzopolitano94@gmail.com','','','mobile','+393335324390','Staff','77','Monti 7','',94);
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

-- Dump completed on 2017-04-26 12:37:41
