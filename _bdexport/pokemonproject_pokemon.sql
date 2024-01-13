-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pokemonproject
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `id_pokemon` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp_score` int NOT NULL,
  `attack_score` int NOT NULL,
  `defence_score` int NOT NULL,
  `special_attack_score` int NOT NULL,
  `special_defence_score` int NOT NULL,
  `speed` int NOT NULL,
  `generation` int NOT NULL,
  `legendary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_pokemon`)
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,1,'Bulbasaur',45,49,49,65,65,45,1,0,1),(2,2,'Ivysaur',60,62,63,80,80,60,1,0,1),(3,3,'VenusaurMega Venusaur',80,100,123,122,120,80,1,0,1),(4,3,'Venusaur',80,82,83,100,100,80,1,0,1),(5,4,'Charmander',39,52,43,60,50,65,1,0,1),(6,5,'Charmeleon',58,64,58,80,65,80,1,0,1),(7,6,'CharizardMega Charizard X',78,130,111,130,85,100,1,0,1),(8,6,'CharizardMega Charizard Y',78,104,78,159,115,100,1,0,1),(9,6,'Charizard',78,84,78,109,85,100,1,0,1),(10,7,'Squirtle',44,48,65,50,64,43,1,0,1),(11,8,'Wartortle',59,63,80,65,80,58,1,0,1),(12,9,'BlastoiseMega Blastoise',79,103,120,135,115,78,1,0,1),(13,9,'Blastoise',79,83,100,85,105,78,1,0,1),(14,10,'Caterpie',45,30,35,20,20,45,1,0,1),(15,11,'Metapod',50,20,55,25,25,30,1,0,1),(16,12,'Butterfree',60,45,50,90,80,70,1,0,1),(17,13,'Weedle',40,35,30,20,20,50,1,0,1),(18,14,'Kakuna',45,25,50,25,25,35,1,0,1),(19,15,'BeedrillMega Beedrill',65,150,40,15,80,145,1,0,1),(20,15,'Beedrill',65,90,40,45,80,75,1,0,1),(21,16,'Pidgey',40,45,40,35,35,56,1,0,1),(22,17,'Pidgeotto',63,60,55,50,50,71,1,0,1),(23,18,'PidgeotMega Pidgeot',83,80,80,135,80,121,1,0,1),(24,18,'Pidgeot',83,80,75,70,70,101,1,0,1),(25,19,'Rattata',30,56,35,25,35,72,1,0,1),(26,20,'Raticate',55,81,60,50,70,97,1,0,1),(27,21,'Spearow',40,60,30,31,31,70,1,0,1),(28,22,'Fearow',65,90,65,61,61,100,1,0,1),(29,23,'Ekans',35,60,44,40,54,55,1,0,1),(30,24,'Arbok',60,85,69,65,79,80,1,0,1),(31,25,'Pikachu',35,55,40,50,50,90,1,0,1),(32,26,'Raichu',60,90,55,90,80,110,1,0,1),(33,27,'Sandshrew',50,75,85,20,30,40,1,0,1),(34,28,'Sandslash',75,100,110,45,55,65,1,0,1),(35,29,'Nidoranâ™€',55,47,52,40,40,41,1,0,1),(36,30,'Nidorina',70,62,67,55,55,56,1,0,1),(37,31,'Nidoqueen',90,92,87,75,85,76,1,0,1),(38,32,'Nidoranâ™‚',46,57,40,40,40,50,1,0,1),(39,33,'Nidorino',61,72,57,55,55,65,1,0,1),(40,34,'Nidoking',81,102,77,85,75,85,1,0,1),(41,35,'Clefairy',70,45,48,60,65,35,1,0,1),(42,36,'Clefable',95,70,73,95,90,60,1,0,1),(43,37,'Vulpix',38,41,40,50,65,65,1,0,1),(44,38,'Ninetales',73,76,75,81,100,100,1,0,1),(45,39,'Jigglypuff',115,45,20,45,25,20,1,0,1),(46,40,'Wigglytuff',140,70,45,85,50,45,1,0,1),(47,41,'Zubat',40,45,35,30,40,55,1,0,1),(48,42,'Golbat',75,80,70,65,75,90,1,0,1),(49,43,'Oddish',45,50,55,75,65,30,1,0,1),(50,44,'Gloom',60,65,70,85,75,40,1,0,1),(51,45,'Vileplume',75,80,85,110,90,50,1,0,1),(52,46,'Paras',35,70,55,45,55,25,1,0,1),(53,47,'Parasect',60,95,80,60,80,30,1,0,1),(54,48,'Venonat',60,55,50,40,55,45,1,0,1),(55,49,'Venomoth',70,65,60,90,75,90,1,0,1),(56,50,'Diglett',10,55,25,35,45,95,1,0,1),(57,51,'Dugtrio',35,80,50,50,70,120,1,0,1),(58,52,'Meowth',40,45,35,40,40,90,1,0,1),(59,53,'Persian',65,70,60,65,65,115,1,0,1),(60,54,'Psyduck',50,52,48,65,50,55,1,0,1),(61,55,'Golduck',80,82,78,95,80,85,1,0,1),(62,56,'Mankey',40,80,35,35,45,70,1,0,1),(63,57,'Primeape',65,105,60,60,70,95,1,0,1),(64,58,'Growlithe',55,70,45,70,50,60,1,0,1),(65,59,'Arcanine',90,110,80,100,80,95,1,0,1),(66,60,'Poliwag',40,50,40,40,40,90,1,0,1),(67,61,'Poliwhirl',65,65,65,50,50,90,1,0,1),(68,62,'Poliwrath',90,95,95,70,90,70,1,0,1),(69,63,'Abra',25,20,15,105,55,90,1,0,1),(70,64,'Kadabra',40,35,30,120,70,105,1,0,1),(71,65,'AlakazamMega Alakazam',55,50,65,175,95,150,1,0,1),(72,65,'Alakazam',55,50,45,135,95,120,1,0,1),(73,66,'Machop',70,80,50,35,35,35,1,0,1),(74,67,'Machoke',80,100,70,50,60,45,1,0,1),(75,68,'Machamp',90,130,80,65,85,55,1,0,1),(76,69,'Bellsprout',50,75,35,70,30,40,1,0,1),(77,70,'Weepinbell',65,90,50,85,45,55,1,0,1),(78,71,'Victreebel',80,105,65,100,70,70,1,0,1),(79,72,'Tentacool',40,40,35,50,100,70,1,0,1),(80,73,'Tentacruel',80,70,65,80,120,100,1,0,1),(81,74,'Geodude',40,80,100,30,30,20,1,0,1),(82,75,'Graveler',55,95,115,45,45,35,1,0,1),(83,76,'Golem',80,120,130,55,65,45,1,0,1),(84,77,'Ponyta',50,85,55,65,65,90,1,0,1),(85,78,'Rapidash',65,100,70,80,80,105,1,0,1),(86,79,'Slowpoke',90,65,65,40,40,15,1,0,1),(87,80,'SlowbroMega Slowbro',95,75,180,130,80,30,1,0,1),(88,80,'Slowbro',95,75,110,100,80,30,1,0,1),(89,81,'Magnemite',25,35,70,95,55,45,1,0,1),(90,82,'Magneton',50,60,95,120,70,70,1,0,1),(91,83,'Farfetch',52,65,55,58,62,60,1,0,1),(92,84,'Doduo',35,85,45,35,35,75,1,0,1),(93,85,'Dodrio',60,110,70,60,60,100,1,0,1),(94,86,'Seel',65,45,55,45,70,45,1,0,1),(95,87,'Dewgong',90,70,80,70,95,70,1,0,1),(96,88,'Grimer',80,80,50,40,50,25,1,0,1),(97,89,'Muk',105,105,75,65,100,50,1,0,1),(98,90,'Shellder',30,65,100,45,25,40,1,0,1),(99,91,'Cloyster',50,95,180,85,45,70,1,0,1),(100,92,'Gastly',30,35,30,100,35,80,1,0,1),(101,93,'Haunter',45,50,45,115,55,95,1,0,1),(102,94,'GengarMega Gengar',60,65,80,170,95,130,1,0,1),(103,94,'Gengar',60,65,60,130,75,110,1,0,1),(104,95,'Onix',35,45,160,30,45,70,1,0,1),(105,96,'Drowzee',60,48,45,43,90,42,1,0,1),(106,97,'Hypno',85,73,70,73,115,67,1,0,1),(107,98,'Krabby',30,105,90,25,25,50,1,0,1),(108,99,'Kingler',55,130,115,50,50,75,1,0,1),(109,100,'Voltorb',40,30,50,55,55,100,1,0,1),(110,101,'Electrode',60,50,70,80,80,140,1,0,1),(111,102,'Exeggcute',60,40,80,60,45,40,1,0,1),(112,103,'Exeggutor',95,95,85,125,65,55,1,0,1),(113,104,'Cubone',50,50,95,40,50,35,1,0,1),(114,105,'Marowak',60,80,110,50,80,45,1,0,1),(115,106,'Hitmonlee',50,120,53,35,110,87,1,0,1),(116,107,'Hitmonchan',50,105,79,35,110,76,1,0,1),(117,108,'Lickitung',90,55,75,60,75,30,1,0,1),(118,109,'Koffing',40,65,95,60,45,35,1,0,1),(119,110,'Weezing',65,90,120,85,70,60,1,0,1),(120,111,'Rhyhorn',80,85,95,30,30,25,1,0,1),(121,112,'Rhydon',105,130,120,45,45,40,1,0,1),(122,113,'Chansey',250,5,5,35,105,50,1,0,1),(123,114,'Tangela',65,55,115,100,40,60,1,0,1),(124,115,'KangaskhanMega Kangaskhan',105,125,100,60,100,100,1,0,1),(125,115,'Kangaskhan',105,95,80,40,80,90,1,0,1),(126,116,'Horsea',30,40,70,70,25,60,1,0,1),(127,117,'Seadra',55,65,95,95,45,85,1,0,1),(128,118,'Goldeen',45,67,60,35,50,63,1,0,1),(129,119,'Seaking',80,92,65,65,80,68,1,0,1),(130,120,'Staryu',30,45,55,70,55,85,1,0,1),(131,121,'Starmie',60,75,85,100,85,115,1,0,1),(132,122,'Mr. Mime',40,45,65,100,120,90,1,0,1),(133,123,'Scyther',70,110,80,55,80,105,1,0,1),(134,124,'Jynx',65,50,35,115,95,95,1,0,1),(135,125,'Electabuzz',65,83,57,95,85,105,1,0,1),(136,126,'Magmar',65,95,57,100,85,93,1,0,1),(137,127,'PinsirMega Pinsir',65,155,120,65,90,105,1,0,1),(138,127,'Pinsir',65,125,100,55,70,85,1,0,1),(139,128,'Tauros',75,100,95,40,70,110,1,0,1),(140,129,'Magikarp',20,10,55,15,20,80,1,0,1),(141,130,'GyaradosMega Gyarados',95,155,109,70,130,81,1,0,1),(142,130,'Gyarados',95,125,79,60,100,81,1,0,1),(143,131,'Lapras',130,85,80,85,95,60,1,0,1),(144,132,'Ditto',48,48,48,48,48,48,1,0,1),(145,133,'Eevee',55,55,50,45,65,55,1,0,1),(146,134,'Vaporeon',130,65,60,110,95,65,1,0,1),(147,135,'Jolteon',65,65,60,110,95,130,1,0,1),(148,136,'Flareon',65,130,60,95,110,65,1,0,1),(149,137,'Porygon',65,60,70,85,75,40,1,0,1),(150,138,'Omanyte',35,40,100,90,55,35,1,0,1),(151,139,'Omastar',70,60,125,115,70,55,1,0,1),(152,140,'Kabuto',30,80,90,55,45,55,1,0,1),(153,141,'Kabutops',60,115,105,65,70,80,1,0,1),(154,142,'AerodactylMega Aerodactyl',80,135,85,70,95,150,1,0,1),(155,142,'Aerodactyl',80,105,65,60,75,130,1,0,1),(156,143,'Snorlax',160,110,65,65,110,30,1,0,1),(157,144,'Articuno',90,85,100,95,125,85,1,1,1),(158,145,'Zapdos',90,90,85,125,90,100,1,1,1),(159,146,'Moltres',90,100,90,125,85,90,1,1,1),(160,147,'Dratini',41,64,45,50,50,50,1,0,1),(161,148,'Dragonair',61,84,65,70,70,70,1,0,1),(162,149,'Dragonite',91,134,95,100,100,80,1,0,1),(163,150,'MewtwoMega Mewtwo X',106,190,100,154,100,130,1,1,1),(164,150,'MewtwoMega Mewtwo Y',106,150,70,194,120,140,1,1,1),(165,150,'Mewtwo',106,110,90,154,90,130,1,1,1),(166,151,'Mew',100,100,100,100,100,100,1,0,1),(167,152,'Chikorita',45,49,65,49,65,45,2,0,1),(168,153,'Bayleef',60,62,80,63,80,60,2,0,1),(169,154,'Meganium',80,82,100,83,100,80,2,0,1),(170,155,'Cyndaquil',39,52,43,60,50,65,2,0,1),(171,156,'Quilava',58,64,58,80,65,80,2,0,1),(172,157,'Typhlosion',78,84,78,109,85,100,2,0,1),(173,158,'Totodile',50,65,64,44,48,43,2,0,1),(174,159,'Croconaw',65,80,80,59,63,58,2,0,1),(175,160,'Feraligatr',85,105,100,79,83,78,2,0,1),(176,161,'Sentret',35,46,34,35,45,20,2,0,1),(177,162,'Furret',85,76,64,45,55,90,2,0,1),(178,163,'Hoothoot',60,30,30,36,56,50,2,0,1),(179,164,'Noctowl',100,50,50,76,96,70,2,0,1),(180,165,'Ledyba',40,20,30,40,80,55,2,0,1),(181,166,'Ledian',55,35,50,55,110,85,2,0,1),(182,167,'Spinarak',40,60,40,40,40,30,2,0,1),(183,168,'Ariados',70,90,70,60,60,40,2,0,1),(184,169,'Crobat',85,90,80,70,80,130,2,0,1),(185,170,'Chinchou',75,38,38,56,56,67,2,0,1),(186,171,'Lanturn',125,58,58,76,76,67,2,0,1),(187,172,'Pichu',20,40,15,35,35,60,2,0,1),(188,173,'Cleffa',50,25,28,45,55,15,2,0,1),(189,174,'Igglybuff',90,30,15,40,20,15,2,0,1),(190,175,'Togepi',35,20,65,40,65,20,2,0,1),(191,176,'Togetic',55,40,85,80,105,40,2,0,1),(192,177,'Natu',40,50,45,70,45,70,2,0,1),(193,178,'Xatu',65,75,70,95,70,95,2,0,1),(194,179,'Mareep',55,40,40,65,45,35,2,0,1),(195,180,'Flaaffy',70,55,55,80,60,45,2,0,1),(196,181,'AmpharosMega Ampharos',90,95,105,165,110,45,2,0,1),(197,181,'Ampharos',90,75,85,115,90,55,2,0,1),(198,182,'Bellossom',75,80,95,90,100,50,2,0,1),(199,183,'Marill',70,20,50,20,50,40,2,0,1),(200,184,'Azumarill',100,50,80,60,80,50,2,0,1),(201,185,'Sudowoodo',70,100,115,30,65,30,2,0,1),(202,186,'Politoed',90,75,75,90,100,70,2,0,1),(203,187,'Hoppip',35,35,40,35,55,50,2,0,1),(204,188,'Skiploom',55,45,50,45,65,80,2,0,1),(205,189,'Jumpluff',75,55,70,55,95,110,2,0,1),(206,190,'Aipom',55,70,55,40,55,85,2,0,1),(207,191,'Sunkern',30,30,30,30,30,30,2,0,1),(208,192,'Sunflora',75,75,55,105,85,30,2,0,1),(209,193,'Yanma',65,65,45,75,45,95,2,0,1),(210,194,'Wooper',55,45,45,25,25,15,2,0,1),(211,195,'Quagsire',95,85,85,65,65,35,2,0,1),(212,196,'Espeon',65,65,60,130,95,110,2,0,1),(213,197,'Umbreon',95,65,110,60,130,65,2,0,1),(214,198,'Murkrow',60,85,42,85,42,91,2,0,1),(215,199,'Slowking',95,75,80,100,110,30,2,0,1),(216,200,'Misdreavus',60,60,60,85,85,85,2,0,1),(217,201,'Unown',48,72,48,72,48,48,2,0,1),(218,202,'Wobbuffet',190,33,58,33,58,33,2,0,1),(219,203,'Girafarig',70,80,65,90,65,85,2,0,1),(220,204,'Pineco',50,65,90,35,35,15,2,0,1),(221,205,'Forretress',75,90,140,60,60,40,2,0,1),(222,206,'Dunsparce',100,70,70,65,65,45,2,0,1),(223,207,'Gligar',65,75,105,35,65,85,2,0,1),(224,208,'SteelixMega Steelix',75,125,230,55,95,30,2,0,1),(225,208,'Steelix',75,85,200,55,65,30,2,0,1),(226,209,'Snubbull',60,80,50,40,40,30,2,0,1),(227,210,'Granbull',90,120,75,60,60,45,2,0,1),(228,211,'Qwilfish',65,95,75,55,55,85,2,0,1),(229,212,'ScizorMega Scizor',70,150,140,65,100,75,2,0,1),(230,212,'Scizor',70,130,100,55,80,65,2,0,1),(231,213,'Shuckle',20,10,230,10,230,5,2,0,1),(232,214,'HeracrossMega Heracross',80,185,115,40,105,75,2,0,1),(233,214,'Heracross',80,125,75,40,95,85,2,0,1),(234,215,'Sneasel',55,95,55,35,75,115,2,0,1),(235,216,'Teddiursa',60,80,50,50,50,40,2,0,1),(236,217,'Ursaring',90,130,75,75,75,55,2,0,1),(237,218,'Slugma',40,40,40,70,40,20,2,0,1),(238,219,'Magcargo',50,50,120,80,80,30,2,0,1),(239,220,'Swinub',50,50,40,30,30,50,2,0,1),(240,221,'Piloswine',100,100,80,60,60,50,2,0,1),(241,222,'Corsola',55,55,85,65,85,35,2,0,1),(242,223,'Remoraid',35,65,35,65,35,65,2,0,1),(243,224,'Octillery',75,105,75,105,75,45,2,0,1),(244,225,'Delibird',45,55,45,65,45,75,2,0,1),(245,226,'Mantine',65,40,70,80,140,70,2,0,1),(246,227,'Skarmory',65,80,140,40,70,70,2,0,1),(247,228,'Houndour',45,60,30,80,50,65,2,0,1),(248,229,'HoundoomMega Houndoom',75,90,90,140,90,115,2,0,1),(249,229,'Houndoom',75,90,50,110,80,95,2,0,1),(250,230,'Kingdra',75,95,95,95,95,85,2,0,1),(251,231,'Phanpy',90,60,60,40,40,40,2,0,1),(252,232,'Donphan',90,120,120,60,60,50,2,0,1),(253,233,'Porygon2',85,80,90,105,95,60,2,0,1),(254,234,'Stantler',73,95,62,85,65,85,2,0,1),(255,235,'Smeargle',55,20,35,20,45,75,2,0,1),(256,236,'Tyrogue',35,35,35,35,35,35,2,0,1),(257,237,'Hitmontop',50,95,95,35,110,70,2,0,1),(258,238,'Smoochum',45,30,15,85,65,65,2,0,1),(259,239,'Elekid',45,63,37,65,55,95,2,0,1),(260,240,'Magby',45,75,37,70,55,83,2,0,1),(261,241,'Miltank',95,80,105,40,70,100,2,0,1),(262,242,'Blissey',255,10,10,75,135,55,2,0,1),(263,243,'Raikou',90,85,75,115,100,115,2,1,1),(264,244,'Entei',115,115,85,90,75,100,2,1,1),(265,245,'Suicune',100,75,115,90,115,85,2,1,1),(266,246,'Larvitar',50,64,50,45,50,41,2,0,1),(267,247,'Pupitar',70,84,70,65,70,51,2,0,1),(268,248,'TyranitarMega Tyranitar',100,164,150,95,120,71,2,0,1),(269,248,'Tyranitar',100,134,110,95,100,61,2,0,1),(270,249,'Lugia',106,90,130,90,154,110,2,1,1),(271,250,'Ho-oh',106,130,90,110,154,90,2,1,1),(272,251,'Celebi',100,100,100,100,100,100,2,0,1),(273,252,'Treecko',40,45,35,65,55,70,3,0,1),(274,253,'Grovyle',50,65,45,85,65,95,3,0,1),(275,254,'SceptileMega Sceptile',70,110,75,145,85,145,3,0,1),(276,254,'Sceptile',70,85,65,105,85,120,3,0,1),(277,255,'Torchic',45,60,40,70,50,45,3,0,1),(278,256,'Combusken',60,85,60,85,60,55,3,0,1),(279,257,'BlazikenMega Blaziken',80,160,80,130,80,100,3,0,1),(280,257,'Blaziken',80,120,70,110,70,80,3,0,1),(281,258,'Mudkip',50,70,50,50,50,40,3,0,1),(282,259,'Marshtomp',70,85,70,60,70,50,3,0,1),(283,260,'SwampertMega Swampert',100,150,110,95,110,70,3,0,1),(284,260,'Swampert',100,110,90,85,90,60,3,0,1),(285,261,'Poochyena',35,55,35,30,30,35,3,0,1),(286,262,'Mightyena',70,90,70,60,60,70,3,0,1),(287,263,'Zigzagoon',38,30,41,30,41,60,3,0,1),(288,264,'Linoone',78,70,61,50,61,100,3,0,1),(289,265,'Wurmple',45,45,35,20,30,20,3,0,1),(290,266,'Silcoon',50,35,55,25,25,15,3,0,1),(291,267,'Beautifly',60,70,50,100,50,65,3,0,1),(292,268,'Cascoon',50,35,55,25,25,15,3,0,1),(293,269,'Dustox',60,50,70,50,90,65,3,0,1),(294,270,'Lotad',40,30,30,40,50,30,3,0,1),(295,271,'Lombre',60,50,50,60,70,50,3,0,1),(296,272,'Ludicolo',80,70,70,90,100,70,3,0,1),(297,273,'Seedot',40,40,50,30,30,30,3,0,1),(298,274,'Nuzleaf',70,70,40,60,40,60,3,0,1),(299,275,'Shiftry',90,100,60,90,60,80,3,0,1),(300,276,'Taillow',40,55,30,30,30,85,3,0,1),(301,277,'Swellow',60,85,60,50,50,125,3,0,1),(302,278,'Wingull',40,30,30,55,30,85,3,0,1),(303,279,'Pelipper',60,50,100,85,70,65,3,0,1),(304,280,'Ralts',28,25,25,45,35,40,3,0,1),(305,281,'Kirlia',38,35,35,65,55,50,3,0,1),(306,282,'GardevoirMega Gardevoir',68,85,65,165,135,100,3,0,1),(307,282,'Gardevoir',68,65,65,125,115,80,3,0,1),(308,283,'Surskit',40,30,32,50,52,65,3,0,1),(309,284,'Masquerain',70,60,62,80,82,60,3,0,1),(310,285,'Shroomish',60,40,60,40,60,35,3,0,1),(311,286,'Breloom',60,130,80,60,60,70,3,0,1),(312,287,'Slakoth',60,60,60,35,35,30,3,0,1),(313,288,'Vigoroth',80,80,80,55,55,90,3,0,1),(314,289,'Slaking',150,160,100,95,65,100,3,0,1),(315,290,'Nincada',31,45,90,30,30,40,3,0,1),(316,291,'Ninjask',61,90,45,50,50,160,3,0,1),(317,292,'Shedinja',1,90,45,30,30,40,3,0,1),(318,293,'Whismur',64,51,23,51,23,28,3,0,1),(319,294,'Loudred',84,71,43,71,43,48,3,0,1),(320,295,'Exploud',104,91,63,91,73,68,3,0,1),(321,296,'Makuhita',72,60,30,20,30,25,3,0,1),(322,297,'Hariyama',144,120,60,40,60,50,3,0,1),(323,298,'Azurill',50,20,40,20,40,20,3,0,1),(324,299,'Nosepass',30,45,135,45,90,30,3,0,1),(325,300,'Skitty',50,45,45,35,35,50,3,0,1),(326,301,'Delcatty',70,65,65,55,55,70,3,0,1),(327,302,'SableyeMega Sableye',50,85,125,85,115,20,3,0,1),(328,302,'Sableye',50,75,75,65,65,50,3,0,1),(329,303,'MawileMega Mawile',50,105,125,55,95,50,3,0,1),(330,303,'Mawile',50,85,85,55,55,50,3,0,1),(331,304,'Aron',50,70,100,40,40,30,3,0,1),(332,305,'Lairon',60,90,140,50,50,40,3,0,1),(333,306,'AggronMega Aggron',70,140,230,60,80,50,3,0,1),(334,306,'Aggron',70,110,180,60,60,50,3,0,1),(335,307,'Meditite',30,40,55,40,55,60,3,0,1),(336,308,'MedichamMega Medicham',60,100,85,80,85,100,3,0,1),(337,308,'Medicham',60,60,75,60,75,80,3,0,1),(338,309,'Electrike',40,45,40,65,40,65,3,0,1),(339,310,'ManectricMega Manectric',70,75,80,135,80,135,3,0,1),(340,310,'Manectric',70,75,60,105,60,105,3,0,1),(341,311,'Plusle',60,50,40,85,75,95,3,0,1),(342,312,'Minun',60,40,50,75,85,95,3,0,1),(343,313,'Volbeat',65,73,55,47,75,85,3,0,1),(344,314,'Illumise',65,47,55,73,75,85,3,0,1),(345,315,'Roselia',50,60,45,100,80,65,3,0,1),(346,316,'Gulpin',70,43,53,43,53,40,3,0,1),(347,317,'Swalot',100,73,83,73,83,55,3,0,1),(348,318,'Carvanha',45,90,20,65,20,65,3,0,1),(349,319,'SharpedoMega Sharpedo',70,140,70,110,65,105,3,0,1),(350,319,'Sharpedo',70,120,40,95,40,95,3,0,1),(351,320,'Wailmer',130,70,35,70,35,60,3,0,1),(352,321,'Wailord',170,90,45,90,45,60,3,0,1),(353,322,'Numel',60,60,40,65,45,35,3,0,1),(354,323,'CameruptMega Camerupt',70,120,100,145,105,20,3,0,1),(355,323,'Camerupt',70,100,70,105,75,40,3,0,1),(356,324,'Torkoal',70,85,140,85,70,20,3,0,1),(357,325,'Spoink',60,25,35,70,80,60,3,0,1),(358,326,'Grumpig',80,45,65,90,110,80,3,0,1),(359,327,'Spinda',60,60,60,60,60,60,3,0,1),(360,328,'Trapinch',45,100,45,45,45,10,3,0,1),(361,329,'Vibrava',50,70,50,50,50,70,3,0,1),(362,330,'Flygon',80,100,80,80,80,100,3,0,1),(363,331,'Cacnea',50,85,40,85,40,35,3,0,1),(364,332,'Cacturne',70,115,60,115,60,55,3,0,1),(365,333,'Swablu',45,40,60,40,75,50,3,0,1),(366,334,'AltariaMega Altaria',75,110,110,110,105,80,3,0,1),(367,334,'Altaria',75,70,90,70,105,80,3,0,1),(368,335,'Zangoose',73,115,60,60,60,90,3,0,1),(369,336,'Seviper',73,100,60,100,60,65,3,0,1),(370,337,'Lunatone',70,55,65,95,85,70,3,0,1),(371,338,'Solrock',70,95,85,55,65,70,3,0,1),(372,339,'Barboach',50,48,43,46,41,60,3,0,1),(373,340,'Whiscash',110,78,73,76,71,60,3,0,1),(374,341,'Corphish',43,80,65,50,35,35,3,0,1),(375,342,'Crawdaunt',63,120,85,90,55,55,3,0,1),(376,343,'Baltoy',40,40,55,40,70,55,3,0,1),(377,344,'Claydol',60,70,105,70,120,75,3,0,1),(378,345,'Lileep',66,41,77,61,87,23,3,0,1),(379,346,'Cradily',86,81,97,81,107,43,3,0,1),(380,347,'Anorith',45,95,50,40,50,75,3,0,1),(381,348,'Armaldo',75,125,100,70,80,45,3,0,1),(382,349,'Feebas',20,15,20,10,55,80,3,0,1),(383,350,'Milotic',95,60,79,100,125,81,3,0,1),(384,351,'Castform',70,70,70,70,70,70,3,0,1),(385,352,'Kecleon',60,90,70,60,120,40,3,0,1),(386,353,'Shuppet',44,75,35,63,33,45,3,0,1),(387,354,'BanetteMega Banette',64,165,75,93,83,75,3,0,1),(388,354,'Banette',64,115,65,83,63,65,3,0,1),(389,355,'Duskull',20,40,90,30,90,25,3,0,1),(390,356,'Dusclops',40,70,130,60,130,25,3,0,1),(391,357,'Tropius',99,68,83,72,87,51,3,0,1),(392,358,'Chimecho',65,50,70,95,80,65,3,0,1),(393,359,'AbsolMega Absol',65,150,60,115,60,115,3,0,1),(394,359,'Absol',65,130,60,75,60,75,3,0,1),(395,360,'Wynaut',95,23,48,23,48,23,3,0,1),(396,361,'Snorunt',50,50,50,50,50,50,3,0,1),(397,362,'GlalieMega Glalie',80,120,80,120,80,100,3,0,1),(398,362,'Glalie',80,80,80,80,80,80,3,0,1),(399,363,'Spheal',70,40,50,55,50,25,3,0,1),(400,364,'Sealeo',90,60,70,75,70,45,3,0,1),(401,365,'Walrein',110,80,90,95,90,65,3,0,1),(402,366,'Clamperl',35,64,85,74,55,32,3,0,1),(403,367,'Huntail',55,104,105,94,75,52,3,0,1),(404,368,'Gorebyss',55,84,105,114,75,52,3,0,1),(405,369,'Relicanth',100,90,130,45,65,55,3,0,1),(406,370,'Luvdisc',43,30,55,40,65,97,3,0,1),(407,371,'Bagon',45,75,60,40,30,50,3,0,1),(408,372,'Shelgon',65,95,100,60,50,50,3,0,1),(409,373,'SalamenceMega Salamence',95,145,130,120,90,120,3,0,1),(410,373,'Salamence',95,135,80,110,80,100,3,0,1),(411,374,'Beldum',40,55,80,35,60,30,3,0,1),(412,375,'Metang',60,75,100,55,80,50,3,0,1),(413,376,'MetagrossMega Metagross',80,145,150,105,110,110,3,0,1),(414,376,'Metagross',80,135,130,95,90,70,3,0,1),(415,377,'Regirock',80,100,200,50,100,50,3,1,1),(416,378,'Regice',80,50,100,100,200,50,3,1,1),(417,379,'Registeel',80,75,150,75,150,50,3,1,1),(418,380,'LatiasMega Latias',80,100,120,140,150,110,3,1,1),(419,380,'Latias',80,80,90,110,130,110,3,1,1),(420,381,'LatiosMega Latios',80,130,100,160,120,110,3,1,1),(421,381,'Latios',80,90,80,130,110,110,3,1,1),(422,382,'KyogrePrimal Kyogre',100,150,90,180,160,90,3,1,1),(423,382,'Kyogre',100,100,90,150,140,90,3,1,1),(424,383,'GroudonPrimal Groudon',100,180,160,150,90,90,3,1,1),(425,383,'Groudon',100,150,140,100,90,90,3,1,1),(426,384,'RayquazaMega Rayquaza',105,180,100,180,100,115,3,1,1),(427,384,'Rayquaza',105,150,90,150,90,95,3,1,1),(428,385,'Jirachi',100,100,100,100,100,100,3,1,1),(429,386,'DeoxysNormal Forme',50,150,50,150,50,150,3,1,1),(430,386,'DeoxysAttack Forme',50,180,20,180,20,150,3,1,1),(431,386,'DeoxysDefense Forme',50,70,160,70,160,90,3,1,1),(432,386,'DeoxysSpeed Forme',50,95,90,95,90,180,3,1,1),(433,387,'Turtwig',55,68,64,45,55,31,4,0,1),(434,388,'Grotle',75,89,85,55,65,36,4,0,1),(435,389,'Torterra',95,109,105,75,85,56,4,0,1),(436,390,'Chimchar',44,58,44,58,44,61,4,0,1),(437,391,'Monferno',64,78,52,78,52,81,4,0,1),(438,392,'Infernape',76,104,71,104,71,108,4,0,1),(439,393,'Piplup',53,51,53,61,56,40,4,0,1),(440,394,'Prinplup',64,66,68,81,76,50,4,0,1),(441,395,'Empoleon',84,86,88,111,101,60,4,0,1),(442,396,'Starly',40,55,30,30,30,60,4,0,1),(443,397,'Staravia',55,75,50,40,40,80,4,0,1),(444,398,'Staraptor',85,120,70,50,60,100,4,0,1),(445,399,'Bidoof',59,45,40,35,40,31,4,0,1),(446,400,'Bibarel',79,85,60,55,60,71,4,0,1),(447,401,'Kricketot',37,25,41,25,41,25,4,0,1),(448,402,'Kricketune',77,85,51,55,51,65,4,0,1),(449,403,'Shinx',45,65,34,40,34,45,4,0,1),(450,404,'Luxio',60,85,49,60,49,60,4,0,1),(451,405,'Luxray',80,120,79,95,79,70,4,0,1),(452,406,'Budew',40,30,35,50,70,55,4,0,1),(453,407,'Roserade',60,70,65,125,105,90,4,0,1),(454,408,'Cranidos',67,125,40,30,30,58,4,0,1),(455,409,'Rampardos',97,165,60,65,50,58,4,0,1),(456,410,'Shieldon',30,42,118,42,88,30,4,0,1),(457,411,'Bastiodon',60,52,168,47,138,30,4,0,1),(458,412,'Burmy',40,29,45,29,45,36,4,0,1),(459,413,'WormadamPlant Cloak',60,59,85,79,105,36,4,0,1),(460,413,'WormadamSandy Cloak',60,79,105,59,85,36,4,0,1),(461,413,'WormadamTrash Cloak',60,69,95,69,95,36,4,0,1),(462,414,'Mothim',70,94,50,94,50,66,4,0,1),(463,415,'Combee',30,30,42,30,42,70,4,0,1),(464,416,'Vespiquen',70,80,102,80,102,40,4,0,1),(465,417,'Pachirisu',60,45,70,45,90,95,4,0,1),(466,418,'Buizel',55,65,35,60,30,85,4,0,1),(467,419,'Floatzel',85,105,55,85,50,115,4,0,1),(468,420,'Cherubi',45,35,45,62,53,35,4,0,1),(469,421,'Cherrim',70,60,70,87,78,85,4,0,1),(470,422,'Shellos',76,48,48,57,62,34,4,0,1),(471,423,'Gastrodon',111,83,68,92,82,39,4,0,1),(472,424,'Ambipom',75,100,66,60,66,115,4,0,1),(473,425,'Drifloon',90,50,34,60,44,70,4,0,1),(474,426,'Drifblim',150,80,44,90,54,80,4,0,1),(475,427,'Buneary',55,66,44,44,56,85,4,0,1),(476,428,'LopunnyMega Lopunny',65,136,94,54,96,135,4,0,1),(477,428,'Lopunny',65,76,84,54,96,105,4,0,1),(478,429,'Mismagius',60,60,60,105,105,105,4,0,1),(479,430,'Honchkrow',100,125,52,105,52,71,4,0,1),(480,431,'Glameow',49,55,42,42,37,85,4,0,1),(481,432,'Purugly',71,82,64,64,59,112,4,0,1),(482,433,'Chingling',45,30,50,65,50,45,4,0,1),(483,434,'Stunky',63,63,47,41,41,74,4,0,1),(484,435,'Skuntank',103,93,67,71,61,84,4,0,1),(485,436,'Bronzor',57,24,86,24,86,23,4,0,1),(486,437,'Bronzong',67,89,116,79,116,33,4,0,1),(487,438,'Bonsly',50,80,95,10,45,10,4,0,1),(488,439,'Mime Jr.',20,25,45,70,90,60,4,0,1),(489,440,'Happiny',100,5,5,15,65,30,4,0,1),(490,441,'Chatot',76,65,45,92,42,91,4,0,1),(491,442,'Spiritomb',50,92,108,92,108,35,4,0,1),(492,443,'Gible',58,70,45,40,45,42,4,0,1),(493,444,'Gabite',68,90,65,50,55,82,4,0,1),(494,445,'GarchompMega Garchomp',108,170,115,120,95,92,4,0,1),(495,445,'Garchomp',108,130,95,80,85,102,4,0,1),(496,446,'Munchlax',135,85,40,40,85,5,4,0,1),(497,447,'Riolu',40,70,40,35,40,60,4,0,1),(498,448,'LucarioMega Lucario',70,145,88,140,70,112,4,0,1),(499,448,'Lucario',70,110,70,115,70,90,4,0,1),(500,449,'Hippopotas',68,72,78,38,42,32,4,0,1),(501,450,'Hippowdon',108,112,118,68,72,47,4,0,1),(502,451,'Skorupi',40,50,90,30,55,65,4,0,1),(503,452,'Drapion',70,90,110,60,75,95,4,0,1),(504,453,'Croagunk',48,61,40,61,40,50,4,0,1),(505,454,'Toxicroak',83,106,65,86,65,85,4,0,1),(506,455,'Carnivine',74,100,72,90,72,46,4,0,1),(507,456,'Finneon',49,49,56,49,61,66,4,0,1),(508,457,'Lumineon',69,69,76,69,86,91,4,0,1),(509,458,'Mantyke',45,20,50,60,120,50,4,0,1),(510,459,'Snover',60,62,50,62,60,40,4,0,1),(511,460,'AbomasnowMega Abomasnow',90,132,105,132,105,30,4,0,1),(512,460,'Abomasnow',90,92,75,92,85,60,4,0,1),(513,461,'Weavile',70,120,65,45,85,125,4,0,1),(514,462,'Magnezone',70,70,115,130,90,60,4,0,1),(515,463,'Lickilicky',110,85,95,80,95,50,4,0,1),(516,464,'Rhyperior',115,140,130,55,55,40,4,0,1),(517,465,'Tangrowth',100,100,125,110,50,50,4,0,1),(518,466,'Electivire',75,123,67,95,85,95,4,0,1),(519,467,'Magmortar',75,95,67,125,95,83,4,0,1),(520,468,'Togekiss',85,50,95,120,115,80,4,0,1),(521,469,'Yanmega',86,76,86,116,56,95,4,0,1),(522,470,'Leafeon',65,110,130,60,65,95,4,0,1),(523,471,'Glaceon',65,60,110,130,95,65,4,0,1),(524,472,'Gliscor',75,95,125,45,75,95,4,0,1),(525,473,'Mamoswine',110,130,80,70,60,80,4,0,1),(526,474,'Porygon-Z',85,80,70,135,75,90,4,0,1),(527,475,'GalladeMega Gallade',68,165,95,65,115,110,4,0,1),(528,475,'Gallade',68,125,65,65,115,80,4,0,1),(529,476,'Probopass',60,55,145,75,150,40,4,0,1),(530,477,'Dusknoir',45,100,135,65,135,45,4,0,1),(531,478,'Froslass',70,80,70,80,70,110,4,0,1),(532,479,'RotomHeat Rotom',50,65,107,105,107,86,4,0,1),(533,479,'RotomWash Rotom',50,65,107,105,107,86,4,0,1),(534,479,'RotomFrost Rotom',50,65,107,105,107,86,4,0,1),(535,479,'RotomFan Rotom',50,65,107,105,107,86,4,0,1),(536,479,'RotomMow Rotom',50,65,107,105,107,86,4,0,1),(537,479,'Rotom',50,50,77,95,77,91,4,0,1),(538,480,'Uxie',75,75,130,75,130,95,4,1,1),(539,481,'Mesprit',80,105,105,105,105,80,4,1,1),(540,482,'Azelf',75,125,70,125,70,115,4,1,1),(541,483,'Dialga',100,120,120,150,100,90,4,1,1),(542,484,'Palkia',90,120,100,150,120,100,4,1,1),(543,485,'Heatran',91,90,106,130,106,77,4,1,1),(544,486,'Regigigas',110,160,110,80,110,100,4,1,1),(545,487,'GiratinaAltered Forme',150,100,120,100,120,90,4,1,1),(546,487,'GiratinaOrigin Forme',150,120,100,120,100,90,4,1,1),(547,488,'Cresselia',120,70,120,75,130,85,4,0,1),(548,489,'Phione',80,80,80,80,80,80,4,0,1),(549,490,'Manaphy',100,100,100,100,100,100,4,0,1),(550,491,'Darkrai',70,90,90,135,90,125,4,1,1),(551,492,'ShayminLand Forme',100,100,100,100,100,100,4,1,1),(552,492,'ShayminSky Forme',100,103,75,120,75,127,4,1,1),(553,493,'Arceus',120,120,120,120,120,120,4,1,1),(554,494,'Victini',100,100,100,100,100,100,5,1,1),(555,495,'Snivy',45,45,55,45,55,63,5,0,1),(556,496,'Servine',60,60,75,60,75,83,5,0,1),(557,497,'Serperior',75,75,95,75,95,113,5,0,1),(558,498,'Tepig',65,63,45,45,45,45,5,0,1),(559,499,'Pignite',90,93,55,70,55,55,5,0,1),(560,500,'Emboar',110,123,65,100,65,65,5,0,1),(561,501,'Oshawott',55,55,45,63,45,45,5,0,1),(562,502,'Dewott',75,75,60,83,60,60,5,0,1),(563,503,'Samurott',95,100,85,108,70,70,5,0,1),(564,504,'Patrat',45,55,39,35,39,42,5,0,1),(565,505,'Watchog',60,85,69,60,69,77,5,0,1),(566,506,'Lillipup',45,60,45,25,45,55,5,0,1),(567,507,'Herdier',65,80,65,35,65,60,5,0,1),(568,508,'Stoutland',85,110,90,45,90,80,5,0,1),(569,509,'Purrloin',41,50,37,50,37,66,5,0,1),(570,510,'Liepard',64,88,50,88,50,106,5,0,1),(571,511,'Pansage',50,53,48,53,48,64,5,0,1),(572,512,'Simisage',75,98,63,98,63,101,5,0,1),(573,513,'Pansear',50,53,48,53,48,64,5,0,1),(574,514,'Simisear',75,98,63,98,63,101,5,0,1),(575,515,'Panpour',50,53,48,53,48,64,5,0,1),(576,516,'Simipour',75,98,63,98,63,101,5,0,1),(577,517,'Munna',76,25,45,67,55,24,5,0,1),(578,518,'Musharna',116,55,85,107,95,29,5,0,1),(579,519,'Pidove',50,55,50,36,30,43,5,0,1),(580,520,'Tranquill',62,77,62,50,42,65,5,0,1),(581,521,'Unfezant',80,115,80,65,55,93,5,0,1),(582,522,'Blitzle',45,60,32,50,32,76,5,0,1),(583,523,'Zebstrika',75,100,63,80,63,116,5,0,1),(584,524,'Roggenrola',55,75,85,25,25,15,5,0,1),(585,525,'Boldore',70,105,105,50,40,20,5,0,1),(586,526,'Gigalith',85,135,130,60,80,25,5,0,1),(587,527,'Woobat',55,45,43,55,43,72,5,0,1),(588,528,'Swoobat',67,57,55,77,55,114,5,0,1),(589,529,'Drilbur',60,85,40,30,45,68,5,0,1),(590,530,'Excadrill',110,135,60,50,65,88,5,0,1),(591,531,'AudinoMega Audino',103,60,126,80,126,50,5,0,1),(592,531,'Audino',103,60,86,60,86,50,5,0,1),(593,532,'Timburr',75,80,55,25,35,35,5,0,1),(594,533,'Gurdurr',85,105,85,40,50,40,5,0,1),(595,534,'Conkeldurr',105,140,95,55,65,45,5,0,1),(596,535,'Tympole',50,50,40,50,40,64,5,0,1),(597,536,'Palpitoad',75,65,55,65,55,69,5,0,1),(598,537,'Seismitoad',105,95,75,85,75,74,5,0,1),(599,538,'Throh',120,100,85,30,85,45,5,0,1),(600,539,'Sawk',75,125,75,30,75,85,5,0,1),(601,540,'Sewaddle',45,53,70,40,60,42,5,0,1),(602,541,'Swadloon',55,63,90,50,80,42,5,0,1),(603,542,'Leavanny',75,103,80,70,80,92,5,0,1),(604,543,'Venipede',30,45,59,30,39,57,5,0,1),(605,544,'Whirlipede',40,55,99,40,79,47,5,0,1),(606,545,'Scolipede',60,100,89,55,69,112,5,0,1),(607,546,'Cottonee',40,27,60,37,50,66,5,0,1),(608,547,'Whimsicott',60,67,85,77,75,116,5,0,1),(609,548,'Petilil',45,35,50,70,50,30,5,0,1),(610,549,'Lilligant',70,60,75,110,75,90,5,0,1),(611,550,'Basculin',70,92,65,80,55,98,5,0,1),(612,551,'Sandile',50,72,35,35,35,65,5,0,1),(613,552,'Krokorok',60,82,45,45,45,74,5,0,1),(614,553,'Krookodile',95,117,80,65,70,92,5,0,1),(615,554,'Darumaka',70,90,45,15,45,50,5,0,1),(616,555,'DarmanitanZen Mode',105,30,105,140,105,55,5,0,1),(617,555,'DarmanitanStandard Mode',105,140,55,30,55,95,5,0,1),(618,556,'Maractus',75,86,67,106,67,60,5,0,1),(619,557,'Dwebble',50,65,85,35,35,55,5,0,1),(620,558,'Crustle',70,95,125,65,75,45,5,0,1),(621,559,'Scraggy',50,75,70,35,70,48,5,0,1),(622,560,'Scrafty',65,90,115,45,115,58,5,0,1),(623,561,'Sigilyph',72,58,80,103,80,97,5,0,1),(624,562,'Yamask',38,30,85,55,65,30,5,0,1),(625,563,'Cofagrigus',58,50,145,95,105,30,5,0,1),(626,564,'Tirtouga',54,78,103,53,45,22,5,0,1),(627,565,'Carracosta',74,108,133,83,65,32,5,0,1),(628,566,'Archen',55,112,45,74,45,70,5,0,1),(629,567,'Archeops',75,140,65,112,65,110,5,0,1),(630,568,'Trubbish',50,50,62,40,62,65,5,0,1),(631,569,'Garbodor',80,95,82,60,82,75,5,0,1),(632,570,'Zorua',40,65,40,80,40,65,5,0,1),(633,571,'Zoroark',60,105,60,120,60,105,5,0,1),(634,572,'Minccino',55,50,40,40,40,75,5,0,1),(635,573,'Cinccino',75,95,60,65,60,115,5,0,1),(636,574,'Gothita',45,30,50,55,65,45,5,0,1),(637,575,'Gothorita',60,45,70,75,85,55,5,0,1),(638,576,'Gothitelle',70,55,95,95,110,65,5,0,1),(639,577,'Solosis',45,30,40,105,50,20,5,0,1),(640,578,'Duosion',65,40,50,125,60,30,5,0,1),(641,579,'Reuniclus',110,65,75,125,85,30,5,0,1),(642,580,'Ducklett',62,44,50,44,50,55,5,0,1),(643,581,'Swanna',75,87,63,87,63,98,5,0,1),(644,582,'Vanillite',36,50,50,65,60,44,5,0,1),(645,583,'Vanillish',51,65,65,80,75,59,5,0,1),(646,584,'Vanilluxe',71,95,85,110,95,79,5,0,1),(647,585,'Deerling',60,60,50,40,50,75,5,0,1),(648,586,'Sawsbuck',80,100,70,60,70,95,5,0,1),(649,587,'Emolga',55,75,60,75,60,103,5,0,1),(650,588,'Karrablast',50,75,45,40,45,60,5,0,1),(651,589,'Escavalier',70,135,105,60,105,20,5,0,1),(652,590,'Foongus',69,55,45,55,55,15,5,0,1),(653,591,'Amoonguss',114,85,70,85,80,30,5,0,1),(654,592,'Frillish',55,40,50,65,85,40,5,0,1),(655,593,'Jellicent',100,60,70,85,105,60,5,0,1),(656,594,'Alomomola',165,75,80,40,45,65,5,0,1),(657,595,'Joltik',50,47,50,57,50,65,5,0,1),(658,596,'Galvantula',70,77,60,97,60,108,5,0,1),(659,597,'Ferroseed',44,50,91,24,86,10,5,0,1),(660,598,'Ferrothorn',74,94,131,54,116,20,5,0,1),(661,599,'Klink',40,55,70,45,60,30,5,0,1),(662,600,'Klang',60,80,95,70,85,50,5,0,1),(663,601,'Klinklang',60,100,115,70,85,90,5,0,1),(664,602,'Tynamo',35,55,40,45,40,60,5,0,1),(665,603,'Eelektrik',65,85,70,75,70,40,5,0,1),(666,604,'Eelektross',85,115,80,105,80,50,5,0,1),(667,605,'Elgyem',55,55,55,85,55,30,5,0,1),(668,606,'Beheeyem',75,75,75,125,95,40,5,0,1),(669,607,'Litwick',50,30,55,65,55,20,5,0,1),(670,608,'Lampent',60,40,60,95,60,55,5,0,1),(671,609,'Chandelure',60,55,90,145,90,80,5,0,1),(672,610,'Axew',46,87,60,30,40,57,5,0,1),(673,611,'Fraxure',66,117,70,40,50,67,5,0,1),(674,612,'Haxorus',76,147,90,60,70,97,5,0,1),(675,613,'Cubchoo',55,70,40,60,40,40,5,0,1),(676,614,'Beartic',95,110,80,70,80,50,5,0,1),(677,615,'Cryogonal',70,50,30,95,135,105,5,0,1),(678,616,'Shelmet',50,40,85,40,65,25,5,0,1),(679,617,'Accelgor',80,70,40,100,60,145,5,0,1),(680,618,'Stunfisk',109,66,84,81,99,32,5,0,1),(681,619,'Mienfoo',45,85,50,55,50,65,5,0,1),(682,620,'Mienshao',65,125,60,95,60,105,5,0,1),(683,621,'Druddigon',77,120,90,60,90,48,5,0,1),(684,622,'Golett',59,74,50,35,50,35,5,0,1),(685,623,'Golurk',89,124,80,55,80,55,5,0,1),(686,624,'Pawniard',45,85,70,40,40,60,5,0,1),(687,625,'Bisharp',65,125,100,60,70,70,5,0,1),(688,626,'Bouffalant',95,110,95,40,95,55,5,0,1),(689,627,'Rufflet',70,83,50,37,50,60,5,0,1),(690,628,'Braviary',100,123,75,57,75,80,5,0,1),(691,629,'Vullaby',70,55,75,45,65,60,5,0,1),(692,630,'Mandibuzz',110,65,105,55,95,80,5,0,1),(693,631,'Heatmor',85,97,66,105,66,65,5,0,1),(694,632,'Durant',58,109,112,48,48,109,5,0,1),(695,633,'Deino',52,65,50,45,50,38,5,0,1),(696,634,'Zweilous',72,85,70,65,70,58,5,0,1),(697,635,'Hydreigon',92,105,90,125,90,98,5,0,1),(698,636,'Larvesta',55,85,55,50,55,60,5,0,1),(699,637,'Volcarona',85,60,65,135,105,100,5,0,1),(700,638,'Cobalion',91,90,129,90,72,108,5,1,1),(701,639,'Terrakion',91,129,90,72,90,108,5,1,1),(702,640,'Virizion',91,90,72,90,129,108,5,1,1),(703,641,'TornadusIncarnate Forme',79,115,70,125,80,111,5,1,1),(704,641,'TornadusTherian Forme',79,100,80,110,90,121,5,1,1),(705,642,'ThundurusIncarnate Forme',79,115,70,125,80,111,5,1,1),(706,642,'ThundurusTherian Forme',79,105,70,145,80,101,5,1,1),(707,643,'Reshiram',100,120,100,150,120,90,5,1,1),(708,644,'Zekrom',100,150,120,120,100,90,5,1,1),(709,645,'LandorusIncarnate Forme',89,125,90,115,80,101,5,1,1),(710,645,'LandorusTherian Forme',89,145,90,105,80,91,5,1,1),(711,646,'KyuremBlack Kyurem',125,170,100,120,90,95,5,1,1),(712,646,'KyuremWhite Kyurem',125,120,90,170,100,95,5,1,1),(713,646,'Kyurem',125,130,90,130,90,95,5,1,1),(714,647,'KeldeoOrdinary Forme',91,72,90,129,90,108,5,0,1),(715,647,'KeldeoResolute Forme',91,72,90,129,90,108,5,0,1),(716,648,'MeloettaAria Forme',100,77,77,128,128,90,5,0,1),(717,648,'MeloettaPirouette Forme',100,128,90,77,77,128,5,0,1),(718,649,'Genesect',71,120,95,120,95,99,5,0,1),(719,650,'Chespin',56,61,65,48,45,38,6,0,1),(720,651,'Quilladin',61,78,95,56,58,57,6,0,1),(721,652,'Chesnaught',88,107,122,74,75,64,6,0,1),(722,653,'Fennekin',40,45,40,62,60,60,6,0,1),(723,654,'Braixen',59,59,58,90,70,73,6,0,1),(724,655,'Delphox',75,69,72,114,100,104,6,0,1),(725,656,'Froakie',41,56,40,62,44,71,6,0,1),(726,657,'Frogadier',54,63,52,83,56,97,6,0,1),(727,658,'Greninja',72,95,67,103,71,122,6,0,1),(728,659,'Bunnelby',38,36,38,32,36,57,6,0,1),(729,660,'Diggersby',85,56,77,50,77,78,6,0,1),(730,661,'Fletchling',45,50,43,40,38,62,6,0,1),(731,662,'Fletchinder',62,73,55,56,52,84,6,0,1),(732,663,'Talonflame',78,81,71,74,69,126,6,0,1),(733,664,'Scatterbug',38,35,40,27,25,35,6,0,1),(734,665,'Spewpa',45,22,60,27,30,29,6,0,1),(735,666,'Vivillon',80,52,50,90,50,89,6,0,1),(736,667,'Litleo',62,50,58,73,54,72,6,0,1),(737,668,'Pyroar',86,68,72,109,66,106,6,0,1),(738,669,'FlabÃ©bÃ©',44,38,39,61,79,42,6,0,1),(739,670,'Floette',54,45,47,75,98,52,6,0,1),(740,671,'Florges',78,65,68,112,154,75,6,0,1),(741,672,'Skiddo',66,65,48,62,57,52,6,0,1),(742,673,'Gogoat',123,100,62,97,81,68,6,0,1),(743,674,'Pancham',67,82,62,46,48,43,6,0,1),(744,675,'Pangoro',95,124,78,69,71,58,6,0,1),(745,676,'Furfrou',75,80,60,65,90,102,6,0,1),(746,677,'Espurr',62,48,54,63,60,68,6,0,1),(747,678,'MeowsticMale',74,48,76,83,81,104,6,0,1),(748,678,'MeowsticFemale',74,48,76,83,81,104,6,0,1),(749,679,'Honedge',45,80,100,35,37,28,6,0,1),(750,680,'Doublade',59,110,150,45,49,35,6,0,1),(751,681,'AegislashBlade Forme',60,150,50,150,50,60,6,0,1),(752,681,'AegislashShield Forme',60,50,150,50,150,60,6,0,1),(753,682,'Spritzee',78,52,60,63,65,23,6,0,1),(754,683,'Aromatisse',101,72,72,99,89,29,6,0,1),(755,684,'Swirlix',62,48,66,59,57,49,6,0,1),(756,685,'Slurpuff',82,80,86,85,75,72,6,0,1),(757,686,'Inkay',53,54,53,37,46,45,6,0,1),(758,687,'Malamar',86,92,88,68,75,73,6,0,1),(759,688,'Binacle',42,52,67,39,56,50,6,0,1),(760,689,'Barbaracle',72,105,115,54,86,68,6,0,1),(761,690,'Skrelp',50,60,60,60,60,30,6,0,1),(762,691,'Dragalge',65,75,90,97,123,44,6,0,1),(763,692,'Clauncher',50,53,62,58,63,44,6,0,1),(764,693,'Clawitzer',71,73,88,120,89,59,6,0,1),(765,694,'Helioptile',44,38,33,61,43,70,6,0,1),(766,695,'Heliolisk',62,55,52,109,94,109,6,0,1),(767,696,'Tyrunt',58,89,77,45,45,48,6,0,1),(768,697,'Tyrantrum',82,121,119,69,59,71,6,0,1),(769,698,'Amaura',77,59,50,67,63,46,6,0,1),(770,699,'Aurorus',123,77,72,99,92,58,6,0,1),(771,700,'Sylveon',95,65,65,110,130,60,6,0,1),(772,701,'Hawlucha',78,92,75,74,63,118,6,0,1),(773,702,'Dedenne',67,58,57,81,67,101,6,0,1),(774,703,'Carbink',50,50,150,50,150,50,6,0,1),(775,704,'Goomy',45,50,35,55,75,40,6,0,1),(776,705,'Sliggoo',68,75,53,83,113,60,6,0,1),(777,706,'Goodra',90,100,70,110,150,80,6,0,1),(778,707,'Klefki',57,80,91,80,87,75,6,0,1),(779,708,'Phantump',43,70,48,50,60,38,6,0,1),(780,709,'Trevenant',85,110,76,65,82,56,6,0,1),(781,710,'PumpkabooAverage Size',49,66,70,44,55,51,6,0,1),(782,710,'PumpkabooSmall Size',44,66,70,44,55,56,6,0,1),(783,710,'PumpkabooLarge Size',54,66,70,44,55,46,6,0,1),(784,710,'PumpkabooSuper Size',59,66,70,44,55,41,6,0,1),(785,711,'GourgeistAverage Size',65,90,122,58,75,84,6,0,1),(786,711,'GourgeistSmall Size',55,85,122,58,75,99,6,0,1),(787,711,'GourgeistLarge Size',75,95,122,58,75,69,6,0,1),(788,711,'GourgeistSuper Size',85,100,122,58,75,54,6,0,1),(789,712,'Bergmite',55,69,85,32,35,28,6,0,1),(790,713,'Avalugg',95,117,184,44,46,28,6,0,1),(791,714,'Noibat',40,30,35,45,40,55,6,0,1),(792,715,'Noivern',85,70,80,97,80,123,6,0,1),(793,716,'Xerneas',126,131,95,131,98,99,6,1,1),(794,717,'Yveltal',126,131,95,131,98,99,6,1,1),(795,718,'Zygarde50% Forme',108,100,121,81,95,95,6,1,1),(796,719,'DiancieMega Diancie',50,160,110,160,110,110,6,1,1),(797,719,'Diancie',50,100,150,100,150,50,6,1,1),(798,720,'HoopaHoopa Unbound',80,160,60,170,130,80,6,1,1),(799,720,'HoopaHoopa Confined',80,110,60,150,130,70,6,1,1),(800,721,'Volcanion',80,110,120,130,90,70,6,1,1);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-13 13:21:46