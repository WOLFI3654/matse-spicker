-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pokemon
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

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
-- Table structure for table `attacke`
--

DROP TABLE IF EXISTS `attacke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attacke` (
  `Name` varchar(255) NOT NULL,
  `Typ` varchar(255) NOT NULL,
  `Staerke` int(3) NOT NULL,
  `Genauigkeit` int(3) NOT NULL,
  `AP` int(2) NOT NULL,
  `Generation` int(1) NOT NULL,
  PRIMARY KEY (`Name`),
  KEY `Typ` (`Typ`),
  CONSTRAINT `attacke_ibfk_1` FOREIGN KEY (`Typ`) REFERENCES `typ` (`Bezeichnung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacke`
--

LOCK TABLES `attacke` WRITE;
/*!40000 ALTER TABLE `attacke` DISABLE KEYS */;
/*!40000 ALTER TABLE `attacke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `effektivitaet`
--

DROP TABLE IF EXISTS `effektivitaet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `effektivitaet` (
  `Multiplikator` double NOT NULL DEFAULT 1,
  `Angreifend` varchar(255) NOT NULL,
  `Verteidigend` varchar(255) NOT NULL,
  PRIMARY KEY (`Angreifend`,`Verteidigend`),
  KEY `Verteidigend` (`Verteidigend`),
  CONSTRAINT `effektivitaet_ibfk_1` FOREIGN KEY (`Angreifend`) REFERENCES `typ` (`Bezeichnung`),
  CONSTRAINT `effektivitaet_ibfk_2` FOREIGN KEY (`Verteidigend`) REFERENCES `typ` (`Bezeichnung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `effektivitaet`
--

LOCK TABLES `effektivitaet` WRITE;
/*!40000 ALTER TABLE `effektivitaet` DISABLE KEYS */;
INSERT INTO `effektivitaet` VALUES (1,'Boden','Boden'),(1,'Boden','Drache'),(1,'Boden','Eis'),(2,'Boden','Elektro'),(1,'Boden','Fee'),(2,'Boden','Feuer'),(0,'Boden','Flug'),(1,'Boden','Geist'),(2,'Boden','Gestein'),(2,'Boden','Gift'),(0.5,'Boden','Kaefer'),(1,'Boden','Kampf'),(1,'Boden','Normal'),(0.5,'Boden','Pflanze'),(1,'Boden','Psycho'),(2,'Boden','Stahl'),(1,'Boden','Unlicht'),(1,'Boden','Wasser'),(1,'Drache','Boden'),(2,'Drache','Drache'),(1,'Drache','Eis'),(1,'Drache','Elektro'),(0,'Drache','Fee'),(1,'Drache','Feuer'),(1,'Drache','Flug'),(1,'Drache','Geist'),(1,'Drache','Gestein'),(1,'Drache','Gift'),(1,'Drache','Kaefer'),(1,'Drache','Kampf'),(1,'Drache','Normal'),(1,'Drache','Pflanze'),(1,'Drache','Psycho'),(0.5,'Drache','Stahl'),(1,'Drache','Unlicht'),(1,'Drache','Wasser'),(2,'Eis','Boden'),(2,'Eis','Drache'),(0.5,'Eis','Eis'),(1,'Eis','Elektro'),(1,'Eis','Fee'),(0.5,'Eis','Feuer'),(2,'Eis','Flug'),(1,'Eis','Geist'),(1,'Eis','Gestein'),(1,'Eis','Gift'),(1,'Eis','Kaefer'),(1,'Eis','Kampf'),(1,'Eis','Normal'),(2,'Eis','Pflanze'),(1,'Eis','Psycho'),(0.5,'Eis','Stahl'),(1,'Eis','Unlicht'),(0.5,'Eis','Wasser'),(0,'Elektro','Boden'),(0.5,'Elektro','Drache'),(1,'Elektro','Eis'),(0.5,'Elektro','Elektro'),(1,'Elektro','Fee'),(1,'Elektro','Feuer'),(2,'Elektro','Flug'),(1,'Elektro','Geist'),(1,'Elektro','Gestein'),(1,'Elektro','Gift'),(1,'Elektro','Kaefer'),(1,'Elektro','Kampf'),(1,'Elektro','Normal'),(0.5,'Elektro','Pflanze'),(1,'Elektro','Psycho'),(1,'Elektro','Stahl'),(1,'Elektro','Unlicht'),(2,'Elektro','Wasser'),(1,'Fee','Boden'),(2,'Fee','Drache'),(1,'Fee','Eis'),(1,'Fee','Elektro'),(1,'Fee','Fee'),(0.5,'Fee','Feuer'),(1,'Fee','Flug'),(1,'Fee','Geist'),(1,'Fee','Gestein'),(0.5,'Fee','Gift'),(1,'Fee','Kaefer'),(2,'Fee','Kampf'),(1,'Fee','Normal'),(1,'Fee','Pflanze'),(1,'Fee','Psycho'),(0.5,'Fee','Stahl'),(2,'Fee','Unlicht'),(1,'Fee','Wasser'),(1,'Feuer','Boden'),(0.5,'Feuer','Drache'),(2,'Feuer','Eis'),(1,'Feuer','Elektro'),(1,'Feuer','Fee'),(0.5,'Feuer','Feuer'),(1,'Feuer','Flug'),(1,'Feuer','Geist'),(0.5,'Feuer','Gestein'),(1,'Feuer','Gift'),(2,'Feuer','Kaefer'),(1,'Feuer','Kampf'),(1,'Feuer','Normal'),(2,'Feuer','Pflanze'),(1,'Feuer','Psycho'),(2,'Feuer','Stahl'),(1,'Feuer','Unlicht'),(0.5,'Feuer','Wasser'),(1,'Flug','Boden'),(1,'Flug','Drache'),(1,'Flug','Eis'),(0.5,'Flug','Elektro'),(1,'Flug','Fee'),(1,'Flug','Feuer'),(1,'Flug','Flug'),(1,'Flug','Geist'),(0.5,'Flug','Gestein'),(1,'Flug','Gift'),(2,'Flug','Kaefer'),(2,'Flug','Kampf'),(1,'Flug','Normal'),(2,'Flug','Pflanze'),(1,'Flug','Psycho'),(0.5,'Flug','Stahl'),(1,'Flug','Unlicht'),(1,'Flug','Wasser'),(1,'Geist','Boden'),(1,'Geist','Drache'),(1,'Geist','Eis'),(1,'Geist','Elektro'),(1,'Geist','Fee'),(1,'Geist','Feuer'),(1,'Geist','Flug'),(2,'Geist','Geist'),(1,'Geist','Gestein'),(1,'Geist','Gift'),(1,'Geist','Kaefer'),(1,'Geist','Kampf'),(0,'Geist','Normal'),(1,'Geist','Pflanze'),(2,'Geist','Psycho'),(0.5,'Geist','Stahl'),(0.5,'Geist','Unlicht'),(1,'Geist','Wasser'),(1,'Gestein','Boden'),(1,'Gestein','Drache'),(2,'Gestein','Eis'),(1,'Gestein','Elektro'),(1,'Gestein','Fee'),(2,'Gestein','Feuer'),(2,'Gestein','Flug'),(1,'Gestein','Geist'),(1,'Gestein','Gestein'),(1,'Gestein','Gift'),(2,'Gestein','Kaefer'),(0.5,'Gestein','Kampf'),(1,'Gestein','Normal'),(1,'Gestein','Pflanze'),(1,'Gestein','Psycho'),(0.5,'Gestein','Stahl'),(1,'Gestein','Unlicht'),(1,'Gestein','Wasser'),(0.5,'Gift','Boden'),(1,'Gift','Drache'),(1,'Gift','Eis'),(1,'Gift','Elektro'),(2,'Gift','Fee'),(1,'Gift','Feuer'),(1,'Gift','Flug'),(0.5,'Gift','Geist'),(0.5,'Gift','Gestein'),(0.5,'Gift','Gift'),(1,'Gift','Kaefer'),(1,'Gift','Kampf'),(1,'Gift','Normal'),(2,'Gift','Pflanze'),(1,'Gift','Psycho'),(0,'Gift','Stahl'),(1,'Gift','Unlicht'),(1,'Gift','Wasser'),(1,'Kaefer','Boden'),(1,'Kaefer','Drache'),(1,'Kaefer','Eis'),(1,'Kaefer','Elektro'),(0.5,'Kaefer','Fee'),(0.5,'Kaefer','Feuer'),(0.5,'Kaefer','Flug'),(0.5,'Kaefer','Geist'),(1,'Kaefer','Gestein'),(0.5,'Kaefer','Gift'),(1,'Kaefer','Kaefer'),(0.5,'Kaefer','Kampf'),(1,'Kaefer','Normal'),(2,'Kaefer','Pflanze'),(2,'Kaefer','Psycho'),(0.5,'Kaefer','Stahl'),(2,'Kaefer','Unlicht'),(1,'Kaefer','Wasser'),(1,'Kampf','Boden'),(1,'Kampf','Drache'),(2,'Kampf','Eis'),(1,'Kampf','Elektro'),(0.5,'Kampf','Fee'),(1,'Kampf','Feuer'),(0.5,'Kampf','Flug'),(0,'Kampf','Geist'),(2,'Kampf','Gestein'),(0.5,'Kampf','Gift'),(0.5,'Kampf','Kaefer'),(1,'Kampf','Kampf'),(2,'Kampf','Normal'),(1,'Kampf','Pflanze'),(0.5,'Kampf','Psycho'),(2,'Kampf','Stahl'),(2,'Kampf','Unlicht'),(1,'Kampf','Wasser'),(1,'Normal','Boden'),(1,'Normal','Drache'),(1,'Normal','Eis'),(1,'Normal','Elektro'),(1,'Normal','Fee'),(1,'Normal','Feuer'),(1,'Normal','Flug'),(0,'Normal','Geist'),(0.5,'Normal','Gestein'),(1,'Normal','Gift'),(1,'Normal','Kaefer'),(1,'Normal','Kampf'),(1,'Normal','Normal'),(1,'Normal','Pflanze'),(1,'Normal','Psycho'),(0.5,'Normal','Stahl'),(1,'Normal','Unlicht'),(1,'Normal','Wasser'),(2,'Pflanze','Boden'),(0.5,'Pflanze','Drache'),(1,'Pflanze','Eis'),(1,'Pflanze','Elektro'),(1,'Pflanze','Fee'),(0.5,'Pflanze','Feuer'),(0.5,'Pflanze','Flug'),(1,'Pflanze','Geist'),(2,'Pflanze','Gestein'),(0.5,'Pflanze','Gift'),(0.5,'Pflanze','Kaefer'),(1,'Pflanze','Kampf'),(1,'Pflanze','Normal'),(0.5,'Pflanze','Pflanze'),(1,'Pflanze','Psycho'),(0.5,'Pflanze','Stahl'),(1,'Pflanze','Unlicht'),(2,'Pflanze','Wasser'),(1,'Psycho','Boden'),(1,'Psycho','Drache'),(1,'Psycho','Eis'),(1,'Psycho','Elektro'),(1,'Psycho','Fee'),(1,'Psycho','Feuer'),(1,'Psycho','Flug'),(1,'Psycho','Geist'),(1,'Psycho','Gestein'),(2,'Psycho','Gift'),(1,'Psycho','Kaefer'),(2,'Psycho','Kampf'),(1,'Psycho','Normal'),(1,'Psycho','Pflanze'),(0.5,'Psycho','Psycho'),(0.5,'Psycho','Stahl'),(0,'Psycho','Unlicht'),(1,'Psycho','Wasser'),(1,'Stahl','Boden'),(1,'Stahl','Drache'),(2,'Stahl','Eis'),(1,'Stahl','Elektro'),(2,'Stahl','Fee'),(0.5,'Stahl','Feuer'),(1,'Stahl','Flug'),(1,'Stahl','Geist'),(2,'Stahl','Gestein'),(1,'Stahl','Gift'),(1,'Stahl','Kaefer'),(1,'Stahl','Kampf'),(1,'Stahl','Normal'),(1,'Stahl','Pflanze'),(1,'Stahl','Psycho'),(0.5,'Stahl','Stahl'),(1,'Stahl','Unlicht'),(0.5,'Stahl','Wasser'),(1,'Unlicht','Boden'),(1,'Unlicht','Drache'),(1,'Unlicht','Eis'),(1,'Unlicht','Elektro'),(0.5,'Unlicht','Fee'),(1,'Unlicht','Feuer'),(1,'Unlicht','Flug'),(2,'Unlicht','Geist'),(1,'Unlicht','Gestein'),(1,'Unlicht','Gift'),(1,'Unlicht','Kaefer'),(0.5,'Unlicht','Kampf'),(1,'Unlicht','Normal'),(1,'Unlicht','Pflanze'),(2,'Unlicht','Psycho'),(0.5,'Unlicht','Stahl'),(0.5,'Unlicht','Unlicht'),(1,'Unlicht','Wasser'),(2,'Wasser','Boden'),(0.5,'Wasser','Drache'),(1,'Wasser','Eis'),(1,'Wasser','Elektro'),(1,'Wasser','Fee'),(2,'Wasser','Feuer'),(1,'Wasser','Flug'),(1,'Wasser','Geist'),(2,'Wasser','Gestein'),(1,'Wasser','Gift'),(1,'Wasser','Kaefer'),(1,'Wasser','Kampf'),(1,'Wasser','Normal'),(0.5,'Wasser','Pflanze'),(1,'Wasser','Psycho'),(1,'Wasser','Stahl'),(1,'Wasser','Unlicht'),(0.5,'Wasser','Wasser');
/*!40000 ALTER TABLE `effektivitaet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entwicklung`
--

DROP TABLE IF EXISTS `entwicklung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entwicklung` (
  `Von` int(3) NOT NULL,
  `Zu` int(3) NOT NULL,
  `Level` int(11) DEFAULT NULL,
  `Item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Von`,`Zu`),
  KEY `Item` (`Item`),
  KEY `Zu` (`Zu`),
  CONSTRAINT `entwicklung_ibfk_1` FOREIGN KEY (`Item`) REFERENCES `item` (`Bezeichnung`),
  CONSTRAINT `entwicklung_ibfk_2` FOREIGN KEY (`Von`) REFERENCES `pokemon` (`ID`),
  CONSTRAINT `entwicklung_ibfk_3` FOREIGN KEY (`Zu`) REFERENCES `pokemon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entwicklung`
--

LOCK TABLES `entwicklung` WRITE;
/*!40000 ALTER TABLE `entwicklung` DISABLE KEYS */;
/*!40000 ALTER TABLE `entwicklung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `Bezeichnung` varchar(255) NOT NULL,
  PRIMARY KEY (`Bezeichnung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lernt`
--

DROP TABLE IF EXISTS `lernt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lernt` (
  `Pokemon` int(3) NOT NULL,
  `Attacke` varchar(255) NOT NULL,
  `Level` int(3) DEFAULT NULL,
  PRIMARY KEY (`Pokemon`,`Attacke`),
  KEY `Attacke` (`Attacke`),
  CONSTRAINT `lernt_ibfk_1` FOREIGN KEY (`Pokemon`) REFERENCES `pokemon` (`ID`),
  CONSTRAINT `lernt_ibfk_2` FOREIGN KEY (`Attacke`) REFERENCES `attacke` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lernt`
--

LOCK TABLES `lernt` WRITE;
/*!40000 ALTER TABLE `lernt` DISABLE KEYS */;
/*!40000 ALTER TABLE `lernt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `ID` int(3) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Groesse` float NOT NULL,
  `Gewicht` float NOT NULL,
  `Generation` int(1) NOT NULL,
  `Primaer_Typ` varchar(255) DEFAULT NULL,
  `Sekundaer_Typ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Primaer_Typ` (`Primaer_Typ`),
  KEY `Sekundaer_Typ` (`Sekundaer_Typ`),
  CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`Primaer_Typ`) REFERENCES `typ` (`Bezeichnung`),
  CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`Sekundaer_Typ`) REFERENCES `typ` (`Bezeichnung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typ`
--

DROP TABLE IF EXISTS `typ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typ` (
  `Bezeichnung` varchar(255) NOT NULL,
  PRIMARY KEY (`Bezeichnung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typ`
--

LOCK TABLES `typ` WRITE;
/*!40000 ALTER TABLE `typ` DISABLE KEYS */;
INSERT INTO `typ` VALUES ('Boden'),('Drache'),('Eis'),('Elektro'),('Fee'),('Feuer'),('Flug'),('Geist'),('Gestein'),('Gift'),('Kaefer'),('Kampf'),('Normal'),('Pflanze'),('Psycho'),('Stahl'),('Unlicht'),('Wasser');
/*!40000 ALTER TABLE `typ` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-03 22:55:25
