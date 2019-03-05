-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: pays
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `t_continents`
--

DROP TABLE IF EXISTS `t_continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_continents` (
  `id_continent` smallint(3) NOT NULL AUTO_INCREMENT,
  `libelle_continent` varchar(255) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_continent`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_continents`
--

LOCK TABLES `t_continents` WRITE;
/*!40000 ALTER TABLE `t_continents` DISABLE KEYS */;
INSERT INTO `t_continents` VALUES (1,'Afrique'),(2,'Amérique Latine et Caraïbes'),(3,'Amérique Septentrionale'),(4,'Asie'),(5,'Europe'),(6,'Océanie');
/*!40000 ALTER TABLE `t_continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pays`
--

DROP TABLE IF EXISTS `t_pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pays` (
  `id_pays` smallint(3) NOT NULL AUTO_INCREMENT,
  `libelle_pays` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `population_pays` int(11) NOT NULL,
  `taux_natalite_pays` decimal(5,0) NOT NULL,
  `taux_mortalite_pays` decimal(5,0) NOT NULL,
  `esperance_vie_pays` decimal(5,0) NOT NULL,
  `taux_mortalite_infantile_pays` decimal(5,0) NOT NULL,
  `nombre_enfants_par_femme_pays` decimal(5,0) NOT NULL,
  `taux_croissance_pays` decimal(5,0) NOT NULL,
  `population_plus_65_pays` int(11) NOT NULL,
  `continent_id` smallint(3) DEFAULT NULL,
  `region_id` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id_pays`),
  KEY `fk_region` (`region_id`),
  KEY `fk_continent` (`continent_id`),
  CONSTRAINT `fk_continent` FOREIGN KEY (`continent_id`) REFERENCES `t_continents` (`id_continent`),
  CONSTRAINT `fk_region` FOREIGN KEY (`region_id`) REFERENCES `t_regions` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pays`
--

LOCK TABLES `t_pays` WRITE;
/*!40000 ALTER TABLE `t_pays` DISABLE KEYS */;
INSERT INTO `t_pays` VALUES (202,'Antigua-et-Barbuda',93,16,6,77,8,2,10,7,2,13),(203,'Aruba',104,10,9,76,14,2,4,13,2,13),(204,'Bahamas',392,15,6,76,8,2,12,34,2,13),(205,'Barbade',289,13,9,76,9,2,5,34,2,13),(206,'Cuba',11236,9,8,80,4,1,-1,1620,2,13),(207,'Curaçao',167,12,9,78,10,2,11,25,2,13),(208,'Dominicaine (République)',10773,20,6,74,23,2,11,727,2,13),(209,'Grenade',107,19,7,73,8,2,3,8,2,13),(210,'Guadeloupe',472,13,7,82,5,2,4,69,2,13),(211,'Haïti',10744,25,8,64,37,3,13,498,2,13),(212,'Îles Vierges américaines',107,14,8,81,9,2,0,19,2,13),(213,'Jamaïque',2827,18,7,74,19,2,5,234,2,13),(214,'Martinique',407,11,8,82,6,2,2,72,2,13),(215,'Porto Rico',3678,12,8,79,6,2,-1,543,2,13),(216,'Sainte Lucie',186,15,7,75,10,2,7,17,2,13),(217,'St Vincent-et-les-Grenadines',109,16,7,73,16,2,0,8,2,13),(218,'Trinité-et-Tobago',1349,14,10,70,23,2,1,134,2,13),(219,'Belize',355,22,4,75,12,3,22,15,2,6),(220,'Costa Rica',5064,14,4,81,8,2,12,394,2,6),(221,'Guatemala',16653,30,5,73,20,4,24,785,2,6),(222,'Honduras',8587,25,5,75,20,3,19,403,2,6),(223,'Mexique',126635,17,5,78,13,2,11,8893,2,6),(224,'Nicaragua',6342,22,5,76,14,2,13,312,2,6),(225,'Panama',4050,19,5,78,13,2,15,314,2,6),(226,'Salvador',6467,20,7,73,15,2,6,479,2,6),(227,'Argentine',42501,16,8,77,10,2,8,4829,2,7),(228,'Bolivie',11202,25,7,68,35,3,16,576,2,7),(229,'Brésil',205231,14,7,75,17,2,8,17000,2,7),(230,'Chili',18073,14,6,81,5,2,8,1965,2,7),(231,'Colombie',50119,18,6,75,15,2,12,3449,2,7),(232,'Equateur',16467,20,5,77,15,2,15,1156,2,7),(233,'Guyane',811,19,7,67,27,2,5,30,2,7),(234,'Guyane (française)',268,23,4,78,11,3,24,14,2,7),(235,'Paraguay',7148,23,6,73,29,3,16,418,2,7),(236,'Pérou',31550,19,5,76,14,2,12,2165,2,7),(237,'Surinam',553,17,7,72,16,2,8,38,2,7),(238,'Uruguay',3441,14,9,78,11,2,3,496,2,7),(239,'Venezuela',31729,19,5,75,14,2,14,2164,2,7),(240,'Burundi',11153,43,12,55,82,6,31,267,1,2),(241,'Comores',788,34,8,62,64,5,23,23,1,2),(242,'Djibouti',913,26,8,63,51,3,15,38,1,2),(243,'Erythrée',6937,35,6,64,35,4,29,164,1,2),(244,'Ethiopie',101407,32,7,65,44,4,25,3560,1,2),(245,'Kenya',47959,33,8,63,48,4,25,1352,1,2),(246,'Madagascar',24915,34,6,66,31,4,28,717,1,2),(247,'Malawi',17802,39,11,57,80,5,28,583,1,2),(248,'Maurice',1258,11,8,74,10,2,3,125,1,2),(249,'Mayotte',240,27,2,80,4,4,25,6,1,2),(250,'Mozambique',27781,38,13,51,67,5,24,925,1,2),(251,'Ouganda',41468,42,9,60,52,6,32,1000,1,2),(252,'Réunion',905,16,5,80,4,2,11,84,1,2),(253,'Rwanda',12760,33,7,65,44,4,26,330,1,2),(254,'Seychelles',94,15,8,74,7,2,5,7,1,2),(255,'Somalie',11446,43,12,56,73,6,29,325,1,2),(256,'Sud Soudan',12531,35,11,57,70,5,29,439,1,2),(257,'Tanzanie',53851,38,8,63,44,5,29,1758,1,2),(258,'Zambie',16034,42,9,61,59,6,33,410,1,2),(259,'Zimbabwe',15483,30,8,63,34,3,28,596,1,2),(260,'Angola',23521,42,13,53,90,6,30,570,1,1),(261,'Cameroun',23977,36,11,56,68,5,25,769,1,1),(262,'Centrafricaine (République)',4898,33,14,52,86,4,19,186,1,1),(263,'Congo',4785,36,10,60,58,5,24,162,1,1),(264,'Congo (Rép. dém. du) (ex-Zaïre)',73172,41,15,51,104,6,27,2097,1,1),(265,'Gabon',1791,31,9,65,40,4,23,90,1,1),(266,'Guinée équatoriale',821,34,12,54,80,5,26,23,1,1),(267,'Sao Tomé-et-Principe',208,32,7,67,42,4,24,7,1,1),(268,'Tchad',14009,44,13,53,89,6,29,332,1,1),(269,'Algérie',41316,23,6,71,24,3,16,1989,1,3),(270,'Egypte',86010,22,6,72,17,3,15,5176,1,3),(271,'Libye',6395,19,4,76,12,2,13,326,1,3),(272,'Maroc',34388,22,6,72,23,3,12,1796,1,3),(273,'Sahara occidental',623,19,6,69,34,2,31,19,1,3),(274,'Soudan',40519,32,8,63,52,4,23,1354,1,3),(275,'Tunisie',11351,17,6,77,13,2,10,879,1,3),(276,'Afrique du Sud',53835,20,13,58,34,2,6,3163,1,4),(277,'Botswana',2075,23,16,49,28,3,9,81,1,4),(278,'Lesotho',2142,27,15,50,53,3,10,90,1,4),(279,'Namibie',2436,25,7,65,30,3,18,90,1,4),(280,'Swaziland',1303,29,15,49,60,3,13,48,1,4),(281,'Bénin',11165,35,9,60,66,5,26,325,1,5),(282,'Burkina Faso',18420,39,10,58,64,5,28,445,1,5),(283,'Cap-Vert',513,19,5,76,15,2,9,27,1,5),(284,'Côte d\'Ivoire',21784,36,14,52,68,5,23,693,1,5),(285,'Gambie',2033,42,9,60,53,6,31,47,1,5),(286,'Ghana',27532,29,9,62,49,4,20,948,1,5),(287,'Guinée',12656,36,11,57,69,5,25,397,1,5),(288,'Guinée-Bissau',1830,36,12,55,88,5,23,57,1,5),(289,'Libéria',4615,34,8,62,55,5,24,140,1,5),(290,'Mali',16775,46,12,56,79,7,32,444,1,5),(291,'Mauritanie',4177,33,9,62,69,4,23,135,1,5),(292,'Niger',20033,49,10,60,48,7,39,523,1,5),(293,'Nigéria',188630,40,12,54,68,6,27,5140,1,5),(294,'Sénégal',15390,36,7,64,46,5,28,448,1,5),(295,'Sierra Leone',6432,35,17,46,110,4,18,172,1,5),(296,'Togo',7349,35,10,58,62,4,24,203,1,5),(297,'Canada',36222,11,8,82,4,2,10,5929,3,NULL),(298,'Etats-Unis',327690,13,8,79,6,2,8,49223,3,NULL),(299,'Biélorussie',9213,11,16,70,5,2,-5,1292,5,14),(300,'Bulgarie',7057,9,16,74,8,2,-8,1427,5,14),(301,'Hongrie',9890,10,14,75,5,1,-2,1780,5,14),(302,'Moldavie',3413,12,14,69,13,1,-7,413,5,14),(303,'Pologne',38219,11,11,77,5,1,0,6059,5,14),(304,'Roumanie',21516,10,13,74,10,1,-3,3384,5,14),(305,'Russie',141729,12,16,68,9,2,-3,19108,5,14),(306,'Slovaquie',5461,11,11,76,5,1,1,769,5,14),(307,'Tchèque (République)',10812,11,11,78,2,2,3,1953,5,14),(308,'Ukraine',44354,11,17,69,11,2,-7,6714,5,14),(309,'Anglo-Normandes (Îles)',164,9,9,81,8,1,5,29,5,16),(310,'Danemark',5684,11,10,80,3,2,4,1077,5,16),(311,'Estonie',1277,11,14,75,4,2,-3,238,5,16),(312,'Finlande',5478,11,10,81,2,2,3,1144,5,16),(313,'Irlande',4776,15,6,81,3,2,10,617,5,16),(314,'Islande',340,14,7,83,2,2,11,47,5,16),(315,'Lettonie',2021,11,16,73,7,2,-6,377,5,16),(316,'Lituanie',2988,12,14,73,5,2,-4,473,5,16),(317,'Norvège',5196,12,8,82,2,2,10,863,5,16),(318,'Royaume Uni',64200,12,9,81,4,2,6,11745,5,16),(319,'Suède',9759,12,9,82,2,2,7,1969,5,16),(320,'Albanie',3207,13,7,78,13,2,3,371,5,17),(321,'Bosnie-Herzégovine',3814,9,11,77,7,1,-2,615,5,17),(322,'Croatie',4240,9,13,78,5,2,-4,821,5,17),(323,'Espagne',47333,10,9,83,3,2,3,8748,5,17),(324,'Grèce',11120,9,11,81,3,2,-1,2279,5,17),(325,'Italie',61211,9,10,83,2,2,1,13442,5,17),(326,'Macédoine',2110,10,10,76,9,1,0,280,5,17),(327,'Malte',432,9,9,80,4,1,2,79,5,17),(328,'Monténégro',621,11,11,75,9,2,0,88,5,17),(329,'Portugal',10607,8,10,81,3,1,0,2086,5,17),(330,'Serbie',9377,10,13,74,10,1,-5,1451,5,17),(331,'Slovénie',2083,10,10,80,3,2,2,381,5,17),(332,'Allemagne',82453,9,11,81,3,1,-1,17866,5,15),(333,'Autriche',8589,10,10,82,3,2,4,1615,5,15),(334,'Belgique',11222,12,10,81,3,2,3,2120,5,15),(335,'France (métropolitaine)',65316,12,9,82,3,2,5,12458,5,15),(336,'Luxembourg',550,12,8,81,2,2,12,80,5,15),(337,'Pays-Bas',16885,11,9,81,3,2,2,3125,5,15),(338,'Suisse',8320,11,8,83,3,2,10,1530,5,15),(339,'Australie',24223,13,7,83,4,2,13,3696,6,12),(340,'Nouvelle-Zélande',4641,13,7,82,4,2,10,695,6,12),(341,'Fidji',898,19,7,70,15,3,6,54,6,19),(342,'Nouvelle-Calédonie',266,15,7,77,12,2,13,28,6,19),(343,'Papouasie-Nouvelle-Guinée',7788,28,8,63,46,4,20,240,6,19),(344,'Salomon (Îles)',596,29,6,68,35,4,19,20,6,19),(345,'Vanuatu',270,26,5,72,21,3,21,11,6,19),(346,'Guam',172,17,5,80,9,2,13,16,6,18),(347,'Kiribati',107,23,6,70,30,3,15,5,6,18),(348,'Micronésie (États fédérés de)',105,24,6,69,31,3,8,5,6,18),(349,'Polynésie française',286,16,6,77,6,2,10,22,6,20),(350,'Samoa occidentales',195,25,5,74,18,4,7,10,6,20),(351,'Tonga',107,24,6,73,19,4,8,6,6,20),(352,'Chine',1408922,13,7,76,12,2,5,138782,4,8),(353,'Chine - Hong Kong',7365,9,7,84,2,1,7,1144,4,8),(354,'Chine - Macao',593,11,5,81,4,1,15,57,4,8),(355,'Corée du Nord',25282,14,9,71,19,2,5,2391,4,8),(356,'Corée du Sud',49976,10,6,82,3,1,4,6708,4,8),(357,'Japon',126598,8,11,84,2,1,-2,34139,4,8),(358,'Mongolie',2964,21,7,68,23,2,14,116,4,8),(359,'Taïwan',23467,9,7,80,4,1,2,3001,4,8),(360,'Brunei',434,15,3,79,4,2,12,23,4,11),(361,'Cambodge',15940,24,6,73,35,3,16,925,4,11),(362,'Indonésie',258553,18,6,71,23,2,11,14426,4,11),(363,'Laos',7146,25,6,70,30,3,18,281,4,11),(364,'Malaisie',31106,18,5,76,4,2,15,1851,4,11),(365,'Myanmar (Birmanie)',54591,16,9,66,46,2,8,3063,4,11),(366,'Philippines',103509,24,6,69,20,3,17,4366,4,11),(367,'Singapour',5717,10,5,83,2,1,17,668,4,11),(368,'Thaïlande',67541,10,8,75,9,1,2,7342,4,11),(369,'Timor-Est',1194,36,5,69,33,5,18,42,4,11),(370,'Viêt Nam',94191,15,6,76,13,2,8,6580,4,11),(371,'Afghanistan',32730,31,7,62,61,4,22,823,4,10),(372,'Bangladesh',162285,19,6,72,27,2,12,7987,4,10),(373,'Bhoutan',787,19,6,70,25,2,13,40,4,10),(374,'Inde',1297075,20,8,67,39,2,11,72780,4,10),(375,'Iran',80460,18,5,75,13,2,12,4582,4,10),(376,'Kazakhstan',16931,19,10,67,23,2,9,1168,4,10),(377,'Kirgizistan',5795,26,7,68,31,3,16,241,4,10),(378,'Maldives',364,20,3,79,8,2,17,18,4,10),(379,'Népal',28757,20,7,70,30,2,11,1561,4,10),(380,'Ouzbékistan',30087,20,7,69,42,2,12,1327,4,10),(381,'Pakistan',191177,24,7,67,61,3,16,8501,4,10),(382,'Sri Lanka',21771,17,7,75,8,2,7,2017,4,10),(383,'Tadjikistan',8811,32,6,68,54,4,23,281,4,10),(384,'Turkménistan',5439,21,8,66,44,2,12,231,4,10),(385,'Arabie saoudite',30414,18,3,76,10,2,17,958,4,9),(386,'Arménie',2992,13,9,75,18,2,1,317,4,9),(387,'Azerbaïdjan',9706,17,7,71,37,2,9,556,4,9),(388,'Bahreïn',1381,14,2,77,6,2,16,32,4,9),(389,'Chypre',1176,11,7,80,3,1,10,154,4,9),(390,'Emirats Arabes Unis',9756,12,1,77,5,2,20,55,4,9),(391,'Georgie',4286,13,12,75,18,2,-5,641,4,9),(392,'Irak',36752,30,5,70,26,4,27,1181,4,9),(393,'Israël',8028,19,6,82,3,3,14,891,4,9),(394,'Jordanie',7820,25,4,74,15,3,14,292,4,9),(395,'Koweït',3680,20,3,75,8,3,25,91,4,9),(396,'Liban',5075,14,5,81,7,1,-1,465,4,9),(397,'Oman',4312,19,3,77,6,3,29,131,4,9),(398,'Palestine',4663,30,4,74,18,4,25,145,4,9),(399,'Qatar',2415,10,1,79,6,2,23,23,4,9),(400,'Syrie',22775,23,4,75,16,3,26,1006,4,9),(401,'Turquie',77485,16,6,76,10,2,10,6133,4,9),(402,'Yémen',26107,30,7,64,53,4,22,782,4,9),(404,'Mauritanie',1000,6,7,70,10,3,9,200,NULL,NULL);
/*!40000 ALTER TABLE `t_pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_regions`
--

DROP TABLE IF EXISTS `t_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_regions` (
  `id_region` smallint(3) NOT NULL AUTO_INCREMENT,
  `libelle_region` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `continent_id` smallint(3) NOT NULL,
  PRIMARY KEY (`id_region`),
  KEY `fk_region_continent` (`continent_id`),
  CONSTRAINT `fk_region_continent` FOREIGN KEY (`continent_id`) REFERENCES `t_continents` (`id_continent`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_regions`
--

LOCK TABLES `t_regions` WRITE;
/*!40000 ALTER TABLE `t_regions` DISABLE KEYS */;
INSERT INTO `t_regions` VALUES (1,'Afrique Centrale',1),(2,'Afrique Orientale',1),(3,'Afrique Septentrionale',1),(4,'Afrique australe',1),(5,'Afrique occidentale',1),(6,'Amérique centrale',2),(7,'Amérique du Sud',2),(8,'Asie de l\'Est',4),(9,'Asie de l\'Ouest',4),(10,'Asie du Centre et du Sud',4),(11,'Asie du Sud-Est',4),(12,'Australie Nouvelle Zélande',6),(13,'Caraïbes',2),(14,'Europe de l\'Est',5),(15,'Europe de l\'Ouest',5),(16,'Europe du Nord',5),(17,'Europe du Sud',5),(18,'Micronésie',6),(19,'Mélanésie',6),(20,'Polynésie',6);
/*!40000 ALTER TABLE `t_regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-18  9:37:26
