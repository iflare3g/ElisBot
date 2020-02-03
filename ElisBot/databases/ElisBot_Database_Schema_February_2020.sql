/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+01:00' */;
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
-- Table structure for table `Residence_DB`
--

DROP TABLE IF EXISTS `Residence_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Residence_DB` (
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `E_mail_1_Value` varchar(60) DEFAULT NULL,
  `Seconda_mail` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `Tipo_tel` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `Corso` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Sigla` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Stanza` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Num_tel` varchar(30) DEFAULT NULL,
  `Capo_Stanza` set('Y','N') NOT NULL DEFAULT 'N',
  `Capo_Nucleo` set('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;