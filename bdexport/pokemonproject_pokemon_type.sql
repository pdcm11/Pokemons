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
-- Table structure for table `pokemon_type`
--

DROP TABLE IF EXISTS `pokemon_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_type` (
  `id_pokemon_type` int NOT NULL AUTO_INCREMENT,
  `pokemon_type_level` int NOT NULL,
  `pokemon_id` int NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id_pokemon_type`),
  UNIQUE KEY `id_pokemon_type` (`id_pokemon_type`),
  KEY `pokemon_id` (`pokemon_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `pokemon_type_ibfk_1` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id_pokemon`),
  CONSTRAINT `pokemon_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_type`
--

LOCK TABLES `pokemon_type` WRITE;
/*!40000 ALTER TABLE `pokemon_type` DISABLE KEYS */;
INSERT INTO `pokemon_type` VALUES (1,1,1,10),(2,1,2,10),(3,1,3,10),(4,1,3,10),(5,1,4,7),(6,1,5,7),(7,1,6,7),(8,1,6,7),(9,1,6,7),(10,1,7,18),(11,1,8,18),(12,1,9,18),(13,1,9,18),(14,1,10,1),(15,1,11,1),(16,1,12,1),(17,1,13,1),(18,1,14,1),(19,1,15,1),(20,1,15,1),(21,1,16,13),(22,1,17,13),(23,1,18,13),(24,1,18,13),(25,1,19,13),(26,1,20,13),(27,1,21,13),(28,1,22,13),(29,1,23,14),(30,1,24,14),(31,1,25,4),(32,1,26,4),(33,1,27,11),(34,1,28,11),(35,1,29,14),(36,1,30,14),(37,1,31,14),(38,1,32,14),(39,1,33,14),(40,1,34,14),(41,1,35,5),(42,1,36,5),(43,1,37,7),(44,1,38,7),(45,1,39,13),(46,1,40,13),(47,1,41,14),(48,1,42,14),(49,1,43,10),(50,1,44,10),(51,1,45,10),(52,1,46,1),(53,1,47,1),(54,1,48,1),(55,1,49,1),(56,1,50,11),(57,1,51,11),(58,1,52,13),(59,1,53,13),(60,1,54,18),(61,1,55,18),(62,1,56,6),(63,1,57,6),(64,1,58,7),(65,1,59,7),(66,1,60,18),(67,1,61,18),(68,1,62,18),(69,1,63,15),(70,1,64,15),(71,1,65,15),(72,1,65,15),(73,1,66,6),(74,1,67,6),(75,1,68,6),(76,1,69,10),(77,1,70,10),(78,1,71,10),(79,1,72,18),(80,1,73,18),(81,1,74,16),(82,1,75,16),(83,1,76,16),(84,1,77,7),(85,1,78,7),(86,1,79,18),(87,1,80,18),(88,1,80,18),(89,1,81,4),(90,1,82,4),(91,1,83,13),(92,1,84,13),(93,1,85,13),(94,1,86,18),(95,1,87,18),(96,1,88,14),(97,1,89,14),(98,1,90,18),(99,1,91,18),(100,1,92,9),(101,1,93,9),(102,1,94,9),(103,1,94,9),(104,1,95,16),(105,1,96,15),(106,1,97,15),(107,1,98,18),(108,1,99,18),(109,1,100,4),(110,1,101,4),(111,1,102,10),(112,1,103,10),(113,1,104,11),(114,1,105,11),(115,1,106,6),(116,1,107,6),(117,1,108,13),(118,1,109,14),(119,1,110,14),(120,1,111,11),(121,1,112,11),(122,1,113,13),(123,1,114,10),(124,1,115,13),(125,1,115,13),(126,1,116,18),(127,1,117,18),(128,1,118,18),(129,1,119,18),(130,1,120,18),(131,1,121,18),(132,1,122,15),(133,1,123,1),(134,1,124,12),(135,1,125,4),(136,1,126,7),(137,1,127,1),(138,1,127,1),(139,1,128,13),(140,1,129,18),(141,1,130,18),(142,1,130,18),(143,1,131,18),(144,1,132,13),(145,1,133,13),(146,1,134,18),(147,1,135,4),(148,1,136,7),(149,1,137,13),(150,1,138,16),(151,1,139,16),(152,1,140,16),(153,1,141,16),(154,1,142,16),(155,1,142,16),(156,1,143,13),(157,1,144,12),(158,1,145,4),(159,1,146,7),(160,1,147,3),(161,1,148,3),(162,1,149,3),(163,1,150,15),(164,1,150,15),(165,1,150,15),(166,1,151,15),(167,1,152,10),(168,1,153,10),(169,1,154,10),(170,1,155,7),(171,1,156,7),(172,1,157,7),(173,1,158,18),(174,1,159,18),(175,1,160,18),(176,1,161,13),(177,1,162,13),(178,1,163,13),(179,1,164,13),(180,1,165,1),(181,1,166,1),(182,1,167,1),(183,1,168,1),(184,1,169,14),(185,1,170,18),(186,1,171,18),(187,1,172,4),(188,1,173,5),(189,1,174,13),(190,1,175,5),(191,1,176,5),(192,1,177,15),(193,1,178,15),(194,1,179,4),(195,1,180,4),(196,1,181,4),(197,1,181,4),(198,1,182,10),(199,1,183,18),(200,1,184,18),(201,1,185,16),(202,1,186,18),(203,1,187,10),(204,1,188,10),(205,1,189,10),(206,1,190,13),(207,1,191,10),(208,1,192,10),(209,1,193,1),(210,1,194,18),(211,1,195,18),(212,1,196,15),(213,1,197,2),(214,1,198,2),(215,1,199,18),(216,1,200,9),(217,1,201,15),(218,1,202,15),(219,1,203,13),(220,1,204,1),(221,1,205,1),(222,1,206,13),(223,1,207,11),(224,1,208,17),(225,1,208,17),(226,1,209,5),(227,1,210,5),(228,1,211,18),(229,1,212,1),(230,1,212,1),(231,1,213,1),(232,1,214,1),(233,1,214,1),(234,1,215,2),(235,1,216,13),(236,1,217,13),(237,1,218,7),(238,1,219,7),(239,1,220,12),(240,1,221,12),(241,1,222,18),(242,1,223,18),(243,1,224,18),(244,1,225,12),(245,1,226,18),(246,1,227,17),(247,1,228,2),(248,1,229,2),(249,1,229,2),(250,1,230,18),(251,1,231,11),(252,1,232,11),(253,1,233,13),(254,1,234,13),(255,1,235,13),(256,1,236,6),(257,1,237,6),(258,1,238,12),(259,1,239,4),(260,1,240,7),(261,1,241,13),(262,1,242,13),(263,1,243,4),(264,1,244,7),(265,1,245,18),(266,1,246,16),(267,1,247,16),(268,1,248,16),(269,1,248,16),(270,1,249,15),(271,1,250,7),(272,1,251,15),(273,1,252,10),(274,1,253,10),(275,1,254,10),(276,1,254,10),(277,1,255,7),(278,1,256,7),(279,1,257,7),(280,1,257,7),(281,1,258,18),(282,1,259,18),(283,1,260,18),(284,1,260,18),(285,1,261,2),(286,1,262,2),(287,1,263,13),(288,1,264,13),(289,1,265,1),(290,1,266,1),(291,1,267,1),(292,1,268,1),(293,1,269,1),(294,1,270,18),(295,1,271,18),(296,1,272,18),(297,1,273,10),(298,1,274,10),(299,1,275,10),(300,1,276,13),(301,1,277,13),(302,1,278,18),(303,1,279,18),(304,1,280,15),(305,1,281,15),(306,1,282,15),(307,1,282,15),(308,1,283,1),(309,1,284,1),(310,1,285,10),(311,1,286,10),(312,1,287,13),(313,1,288,13),(314,1,289,13),(315,1,290,1),(316,1,291,1),(317,1,292,1),(318,1,293,13),(319,1,294,13),(320,1,295,13),(321,1,296,6),(322,1,297,6),(323,1,298,13),(324,1,299,16),(325,1,300,13),(326,1,301,13),(327,1,302,2),(328,1,302,2),(329,1,303,17),(330,1,303,17),(331,1,304,17),(332,1,305,17),(333,1,306,17),(334,1,306,17),(335,1,307,6),(336,1,308,6),(337,1,308,6),(338,1,309,4),(339,1,310,4),(340,1,310,4),(341,1,311,4),(342,1,312,4),(343,1,313,1),(344,1,314,1),(345,1,315,10),(346,1,316,14),(347,1,317,14),(348,1,318,18),(349,1,319,18),(350,1,319,18),(351,1,320,18),(352,1,321,18),(353,1,322,7),(354,1,323,7),(355,1,323,7),(356,1,324,7),(357,1,325,15),(358,1,326,15),(359,1,327,13),(360,1,328,11),(361,1,329,11),(362,1,330,11),(363,1,331,10),(364,1,332,10),(365,1,333,13),(366,1,334,3),(367,1,334,3),(368,1,335,13),(369,1,336,14),(370,1,337,16),(371,1,338,16),(372,1,339,18),(373,1,340,18),(374,1,341,18),(375,1,342,18),(376,1,343,11),(377,1,344,11),(378,1,345,16),(379,1,346,16),(380,1,347,16),(381,1,348,16),(382,1,349,18),(383,1,350,18),(384,1,351,13),(385,1,352,13),(386,1,353,9),(387,1,354,9),(388,1,354,9),(389,1,355,9),(390,1,356,9),(391,1,357,10),(392,1,358,15),(393,1,359,2),(394,1,359,2),(395,1,360,15),(396,1,361,12),(397,1,362,12),(398,1,362,12),(399,1,363,12),(400,1,364,12),(401,1,365,12),(402,1,366,18),(403,1,367,18),(404,1,368,18),(405,1,369,18),(406,1,370,18),(407,1,371,3),(408,1,372,3),(409,1,373,3),(410,1,373,3),(411,1,374,17),(412,1,375,17),(413,1,376,17),(414,1,376,17),(415,1,377,16),(416,1,378,12),(417,1,379,17),(418,1,380,3),(419,1,380,3),(420,1,381,3),(421,1,381,3),(422,1,382,18),(423,1,382,18),(424,1,383,11),(425,1,383,11),(426,1,384,3),(427,1,384,3),(428,1,385,17),(429,1,386,15),(430,1,386,15),(431,1,386,15),(432,1,386,15),(433,1,387,10),(434,1,388,10),(435,1,389,10),(436,1,390,7),(437,1,391,7),(438,1,392,7),(439,1,393,18),(440,1,394,18),(441,1,395,18),(442,1,396,13),(443,1,397,13),(444,1,398,13),(445,1,399,13),(446,1,400,13),(447,1,401,1),(448,1,402,1),(449,1,403,4),(450,1,404,4),(451,1,405,4),(452,1,406,10),(453,1,407,10),(454,1,408,16),(455,1,409,16),(456,1,410,16),(457,1,411,16),(458,1,412,1),(459,1,413,1),(460,1,413,1),(461,1,413,1),(462,1,414,1),(463,1,415,1),(464,1,416,1),(465,1,417,4),(466,1,418,18),(467,1,419,18),(468,1,420,10),(469,1,421,10),(470,1,422,18),(471,1,423,18),(472,1,424,13),(473,1,425,9),(474,1,426,9),(475,1,427,13),(476,1,428,13),(477,1,428,13),(478,1,429,9),(479,1,430,2),(480,1,431,13),(481,1,432,13),(482,1,433,15),(483,1,434,14),(484,1,435,14),(485,1,436,17),(486,1,437,17),(487,1,438,16),(488,1,439,15),(489,1,440,13),(490,1,441,13),(491,1,442,9),(492,1,443,3),(493,1,444,3),(494,1,445,3),(495,1,445,3),(496,1,446,13),(497,1,447,6),(498,1,448,6),(499,1,448,6),(500,1,449,11),(501,1,450,11),(502,1,451,14),(503,1,452,14),(504,1,453,14),(505,1,454,14),(506,1,455,10),(507,1,456,18),(508,1,457,18),(509,1,458,18),(510,1,459,10),(511,1,460,10),(512,1,460,10),(513,1,461,2),(514,1,462,4),(515,1,463,13),(516,1,464,11),(517,1,465,10),(518,1,466,4),(519,1,467,7),(520,1,468,5),(521,1,469,1),(522,1,470,10),(523,1,471,12),(524,1,472,11),(525,1,473,12),(526,1,474,13),(527,1,475,15),(528,1,475,15),(529,1,476,16),(530,1,477,9),(531,1,478,12),(532,1,479,4),(533,1,479,4),(534,1,479,4),(535,1,479,4),(536,1,479,4),(537,1,479,4),(538,1,480,15),(539,1,481,15),(540,1,482,15),(541,1,483,17),(542,1,484,18),(543,1,485,7),(544,1,486,13),(545,1,487,9),(546,1,487,9),(547,1,488,15),(548,1,489,18),(549,1,490,18),(550,1,491,2),(551,1,492,10),(552,1,492,10),(553,1,493,13),(554,1,494,15),(555,1,495,10),(556,1,496,10),(557,1,497,10),(558,1,498,7),(559,1,499,7),(560,1,500,7),(561,1,501,18),(562,1,502,18),(563,1,503,18),(564,1,504,13),(565,1,505,13),(566,1,506,13),(567,1,507,13),(568,1,508,13),(569,1,509,2),(570,1,510,2),(571,1,511,10),(572,1,512,10),(573,1,513,7),(574,1,514,7),(575,1,515,18),(576,1,516,18),(577,1,517,15),(578,1,518,15),(579,1,519,13),(580,1,520,13),(581,1,521,13),(582,1,522,4),(583,1,523,4),(584,1,524,16),(585,1,525,16),(586,1,526,16),(587,1,527,15),(588,1,528,15),(589,1,529,11),(590,1,530,11),(591,1,531,13),(592,1,531,13),(593,1,532,6),(594,1,533,6),(595,1,534,6),(596,1,535,18),(597,1,536,18),(598,1,537,18),(599,1,538,6),(600,1,539,6),(601,1,540,1),(602,1,541,1),(603,1,542,1),(604,1,543,1),(605,1,544,1),(606,1,545,1),(607,1,546,10),(608,1,547,10),(609,1,548,10),(610,1,549,10),(611,1,550,18),(612,1,551,11),(613,1,552,11),(614,1,553,11),(615,1,554,7),(616,1,555,7),(617,1,555,7),(618,1,556,10),(619,1,557,1),(620,1,558,1),(621,1,559,2),(622,1,560,2),(623,1,561,15),(624,1,562,9),(625,1,563,9),(626,1,564,18),(627,1,565,18),(628,1,566,16),(629,1,567,16),(630,1,568,14),(631,1,569,14),(632,1,570,2),(633,1,571,2),(634,1,572,13),(635,1,573,13),(636,1,574,15),(637,1,575,15),(638,1,576,15),(639,1,577,15),(640,1,578,15),(641,1,579,15),(642,1,580,18),(643,1,581,18),(644,1,582,12),(645,1,583,12),(646,1,584,12),(647,1,585,13),(648,1,586,13),(649,1,587,4),(650,1,588,1),(651,1,589,1),(652,1,590,10),(653,1,591,10),(654,1,592,18),(655,1,593,18),(656,1,594,18),(657,1,595,1),(658,1,596,1),(659,1,597,10),(660,1,598,10),(661,1,599,17),(662,1,600,17),(663,1,601,17),(664,1,602,4),(665,1,603,4),(666,1,604,4),(667,1,605,15),(668,1,606,15),(669,1,607,9),(670,1,608,9),(671,1,609,9),(672,1,610,3),(673,1,611,3),(674,1,612,3),(675,1,613,12),(676,1,614,12),(677,1,615,12),(678,1,616,1),(679,1,617,1),(680,1,618,11),(681,1,619,6),(682,1,620,6),(683,1,621,3),(684,1,622,11),(685,1,623,11),(686,1,624,2),(687,1,625,2),(688,1,626,13),(689,1,627,13),(690,1,628,13),(691,1,629,2),(692,1,630,2),(693,1,631,7),(694,1,632,1),(695,1,633,2),(696,1,634,2),(697,1,635,2),(698,1,636,1),(699,1,637,1),(700,1,638,17),(701,1,639,16),(702,1,640,10),(703,1,641,8),(704,1,641,8),(705,1,642,4),(706,1,642,4),(707,1,643,3),(708,1,644,3),(709,1,645,11),(710,1,645,11),(711,1,646,3),(712,1,646,3),(713,1,646,3),(714,1,647,18),(715,1,647,18),(716,1,648,13),(717,1,648,13),(718,1,649,1),(719,1,650,10),(720,1,651,10),(721,1,652,10),(722,1,653,7),(723,1,654,7),(724,1,655,7),(725,1,656,18),(726,1,657,18),(727,1,658,18),(728,1,659,13),(729,1,660,13),(730,1,661,13),(731,1,662,7),(732,1,663,7),(733,1,664,1),(734,1,665,1),(735,1,666,1),(736,1,667,7),(737,1,668,7),(738,1,669,5),(739,1,670,5),(740,1,671,5),(741,1,672,10),(742,1,673,10),(743,1,674,6),(744,1,675,6),(745,1,676,13),(746,1,677,15),(747,1,678,15),(748,1,678,15),(749,1,679,17),(750,1,680,17),(751,1,681,17),(752,1,681,17),(753,1,682,5),(754,1,683,5),(755,1,684,5),(756,1,685,5),(757,1,686,2),(758,1,687,2),(759,1,688,16),(760,1,689,16),(761,1,690,14),(762,1,691,14),(763,1,692,18),(764,1,693,18),(765,1,694,4),(766,1,695,4),(767,1,696,16),(768,1,697,16),(769,1,698,16),(770,1,699,16),(771,1,700,5),(772,1,701,6),(773,1,702,4),(774,1,703,16),(775,1,704,3),(776,1,705,3),(777,1,706,3),(778,1,707,17),(779,1,708,9),(780,1,709,9),(781,1,710,9),(782,1,710,9),(783,1,710,9),(784,1,710,9),(785,1,711,9),(786,1,711,9),(787,1,711,9),(788,1,711,9),(789,1,712,12),(790,1,713,12),(791,1,714,8),(792,1,715,8),(793,1,716,5),(794,1,717,2),(795,1,718,3),(796,1,719,16),(797,1,719,16),(798,1,720,15),(799,1,720,15),(800,1,721,7),(801,2,1,14),(802,2,2,14),(803,2,3,14),(804,2,3,14),(805,2,6,8),(806,2,6,3),(807,2,6,8),(808,2,12,8),(809,2,13,14),(810,2,14,14),(811,2,15,14),(812,2,15,14),(813,2,16,8),(814,2,17,8),(815,2,18,8),(816,2,18,8),(817,2,21,8),(818,2,22,8),(819,2,31,11),(820,2,34,11),(821,2,39,5),(822,2,40,5),(823,2,41,8),(824,2,42,8),(825,2,43,14),(826,2,44,14),(827,2,45,14),(828,2,46,10),(829,2,47,10),(830,2,48,14),(831,2,49,14),(832,2,62,6),(833,2,69,14),(834,2,70,14),(835,2,71,14),(836,2,72,14),(837,2,73,14),(838,2,74,11),(839,2,75,11),(840,2,76,11),(841,2,79,15),(842,2,80,15),(843,2,80,15),(844,2,81,17),(845,2,82,17),(846,2,83,8),(847,2,84,8),(848,2,85,8),(849,2,87,12),(850,2,91,12),(851,2,92,14),(852,2,93,14),(853,2,94,14),(854,2,94,14),(855,2,95,11),(856,2,102,15),(857,2,103,15),(858,2,111,16),(859,2,112,16),(860,2,121,15),(861,2,122,5),(862,2,123,8),(863,2,124,15),(864,2,127,8),(865,2,130,8),(866,2,130,2),(867,2,131,12),(868,2,138,18),(869,2,139,18),(870,2,140,18),(871,2,141,18),(872,2,142,8),(873,2,142,8),(874,2,144,8),(875,2,145,8),(876,2,146,8),(877,2,149,8),(878,2,150,6),(879,2,163,8),(880,2,164,8),(881,2,165,8),(882,2,166,8),(883,2,167,14),(884,2,168,14),(885,2,169,8),(886,2,170,4),(887,2,171,4),(888,2,174,5),(889,2,176,8),(890,2,177,8),(891,2,178,8),(892,2,181,3),(893,2,183,5),(894,2,184,5),(895,2,187,8),(896,2,188,8),(897,2,189,8),(898,2,193,8),(899,2,194,11),(900,2,195,11),(901,2,198,8),(902,2,199,15),(903,2,203,15),(904,2,205,17),(905,2,207,8),(906,2,208,11),(907,2,208,11),(908,2,211,14),(909,2,212,17),(910,2,212,17),(911,2,213,16),(912,2,214,6),(913,2,214,6),(914,2,215,12),(915,2,219,16),(916,2,220,11),(917,2,221,11),(918,2,222,16),(919,2,225,8),(920,2,226,8),(921,2,227,8),(922,2,228,7),(923,2,229,7),(924,2,229,7),(925,2,230,3),(926,2,238,15),(927,2,246,11),(928,2,247,11),(929,2,248,2),(930,2,248,2),(931,2,249,8),(932,2,250,8),(933,2,251,10),(934,2,254,3),(935,2,256,6),(936,2,257,6),(937,2,257,6),(938,2,259,11),(939,2,260,11),(940,2,260,11),(941,2,267,8),(942,2,269,14),(943,2,270,10),(944,2,271,10),(945,2,272,10),(946,2,274,2),(947,2,275,2),(948,2,276,8),(949,2,277,8),(950,2,278,8),(951,2,279,8),(952,2,280,5),(953,2,281,5),(954,2,282,5),(955,2,282,5),(956,2,283,18),(957,2,284,8),(958,2,286,6),(959,2,290,11),(960,2,291,8),(961,2,292,9),(962,2,298,5),(963,2,302,9),(964,2,302,9),(965,2,303,5),(966,2,303,5),(967,2,304,16),(968,2,305,16),(969,2,306,16),(970,2,307,15),(971,2,308,15),(972,2,308,15),(973,2,315,14),(974,2,318,2),(975,2,319,2),(976,2,319,2),(977,2,322,11),(978,2,323,11),(979,2,323,11),(980,2,329,3),(981,2,330,3),(982,2,332,2),(983,2,333,8),(984,2,334,8),(985,2,334,5),(986,2,337,15),(987,2,338,15),(988,2,339,11),(989,2,340,11),(990,2,342,2),(991,2,343,15),(992,2,344,15),(993,2,345,10),(994,2,346,10),(995,2,347,1),(996,2,348,1),(997,2,357,8),(998,2,363,18),(999,2,364,18),(1000,2,365,18),(1001,2,369,16),(1002,2,373,8),(1003,2,373,8),(1004,2,374,15),(1005,2,375,15),(1006,2,376,15),(1007,2,376,15),(1008,2,380,15),(1009,2,380,15),(1010,2,381,15),(1011,2,381,15),(1012,2,383,7),(1013,2,384,8),(1014,2,384,8),(1015,2,385,15),(1016,2,389,11),(1017,2,391,6),(1018,2,392,6),(1019,2,395,17),(1020,2,396,8),(1021,2,397,8),(1022,2,398,8),(1023,2,400,18),(1024,2,406,14),(1025,2,407,14),(1026,2,410,17),(1027,2,411,17),(1028,2,413,10),(1029,2,413,11),(1030,2,413,17),(1031,2,414,8),(1032,2,415,8),(1033,2,416,8),(1034,2,423,11),(1035,2,425,8),(1036,2,426,8),(1037,2,428,6),(1038,2,430,8),(1039,2,434,2),(1040,2,435,2),(1041,2,436,15),(1042,2,437,15),(1043,2,439,5),(1044,2,441,8),(1045,2,442,2),(1046,2,443,11),(1047,2,444,11),(1048,2,445,11),(1049,2,445,11),(1050,2,448,17),(1051,2,448,17),(1052,2,451,1),(1053,2,452,2),(1054,2,453,6),(1055,2,454,6),(1056,2,458,8),(1057,2,459,12),(1058,2,460,12),(1059,2,460,12),(1060,2,461,12),(1061,2,462,17),(1062,2,464,16),(1063,2,468,8),(1064,2,469,8),(1065,2,472,8),(1066,2,473,11),(1067,2,475,6),(1068,2,475,6),(1069,2,476,17),(1070,2,478,9),(1071,2,479,9),(1072,2,479,7),(1073,2,479,18),(1074,2,479,12),(1075,2,479,8),(1076,2,479,10),(1077,2,483,3),(1078,2,484,3),(1079,2,485,17),(1080,2,487,3),(1081,2,487,3),(1082,2,492,8),(1083,2,494,7),(1084,2,499,6),(1085,2,500,6),(1086,2,519,8),(1087,2,520,8),(1088,2,521,8),(1089,2,527,8),(1090,2,528,8),(1091,2,530,17),(1092,2,531,5),(1093,2,536,11),(1094,2,537,11),(1095,2,540,10),(1096,2,541,10),(1097,2,542,10),(1098,2,543,14),(1099,2,544,14),(1100,2,545,14),(1101,2,546,5),(1102,2,547,5),(1103,2,551,2),(1104,2,552,2),(1105,2,553,2),(1106,2,555,15),(1107,2,557,16),(1108,2,558,16),(1109,2,559,6),(1110,2,560,6),(1111,2,561,8),(1112,2,564,16),(1113,2,565,16),(1114,2,566,8),(1115,2,567,8),(1116,2,580,8),(1117,2,581,8),(1118,2,585,10),(1119,2,586,10),(1120,2,587,8),(1121,2,589,17),(1122,2,590,14),(1123,2,591,14),(1124,2,592,9),(1125,2,593,9),(1126,2,595,4),(1127,2,596,4),(1128,2,597,17),(1129,2,598,17),(1130,2,607,7),(1131,2,608,7),(1132,2,609,7),(1133,2,618,4),(1134,2,622,9),(1135,2,623,9),(1136,2,624,17),(1137,2,625,17),(1138,2,627,8),(1139,2,628,8),(1140,2,629,8),(1141,2,630,8),(1142,2,632,17),(1143,2,633,3),(1144,2,634,3),(1145,2,635,3),(1146,2,636,7),(1147,2,637,7),(1148,2,638,6),(1149,2,639,6),(1150,2,640,6),(1151,2,642,8),(1152,2,642,8),(1153,2,643,7),(1154,2,644,4),(1155,2,645,8),(1156,2,645,8),(1157,2,646,12),(1158,2,646,12),(1159,2,646,12),(1160,2,647,6),(1161,2,647,6),(1162,2,648,15),(1163,2,648,6),(1164,2,649,17),(1165,2,652,6),(1166,2,655,15),(1167,2,658,2),(1168,2,660,11),(1169,2,661,8),(1170,2,662,8),(1171,2,663,8),(1172,2,666,8),(1173,2,667,13),(1174,2,668,13),(1175,2,675,2),(1176,2,679,9),(1177,2,680,9),(1178,2,681,9),(1179,2,681,9),(1180,2,686,15),(1181,2,687,15),(1182,2,688,18),(1183,2,689,18),(1184,2,690,18),(1185,2,691,3),(1186,2,694,13),(1187,2,695,13),(1188,2,696,3),(1189,2,697,3),(1190,2,698,12),(1191,2,699,12),(1192,2,701,8),(1193,2,702,5),(1194,2,703,5),(1195,2,707,5),(1196,2,708,10),(1197,2,709,10),(1198,2,710,10),(1199,2,710,10),(1200,2,710,10),(1201,2,710,10),(1202,2,711,10),(1203,2,711,10),(1204,2,711,10),(1205,2,711,10),(1206,2,714,3),(1207,2,715,3),(1208,2,717,8),(1209,2,718,11),(1210,2,719,5),(1211,2,719,5),(1212,2,720,9),(1213,2,720,2),(1214,2,721,18);
/*!40000 ALTER TABLE `pokemon_type` ENABLE KEYS */;
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
