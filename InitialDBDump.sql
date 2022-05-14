
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
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` datetime DEFAULT NULL,
  `deathdate` datetime DEFAULT NULL,
  `image_url` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wiki_url` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Entity_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES (1,'IBM','1924-01-01 00:00:00',NULL,'https://upload.wikimedia.org/wikipedia/commons/f/fc/IBM_logo_in.jpg','https://es.wikipedia.org/wiki/IBM'),(2,'CERN','1952-01-01 00:00:00',NULL,'https://upload.wikimedia.org/wikipedia/en/a/ae/CERN_logo.svg','https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Europea_para_la_Investigaci%C3%B3n_Nuclear'),(3,'W3C','1994-01-01 00:00:00',NULL,'https://www.paymentscardsandmobile.com/wp-content/uploads/2015/01/W3C.jpg','https://es.wikipedia.org/wiki/World_Wide_Web_Consortium');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_contributes_product`
--

DROP TABLE IF EXISTS `entity_contributes_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_contributes_product` (
  `product_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`entity_id`),
  KEY `IDX_772C40B24584665A` (`product_id`),
  KEY `IDX_772C40B281257D5D` (`entity_id`),
  CONSTRAINT `FK_772C40B24584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_772C40B281257D5D` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_contributes_product`
--

LOCK TABLES `entity_contributes_product` WRITE;
/*!40000 ALTER TABLE `entity_contributes_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_contributes_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` datetime DEFAULT NULL,
  `deathdate` datetime DEFAULT NULL,
  `image_url` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wiki_url` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Person_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2,'Vannervar Bush','1890-03-11 00:00:00','1974-06-30 00:00:00','http://4.bp.blogspot.com/-LnlyNlOhEz4/U4W70olA60I/AAAAAAAAANA/pSCczDRS4-c/s1600/vannevarbush.jpg','https://es.wikipedia.org/wiki/Vannevar_Bush'),(3,'Tim Berners Lee','1955-06-08 00:00:00',NULL,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Sir_Tim_Berners-Lee_%28cropped%29.jpg/220px-Sir_Tim_Berners-Lee_%28cropped%29.jpg','https://es.wikipedia.org/wiki/Tim_Berners-Lee');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_contributes_product`
--

DROP TABLE IF EXISTS `person_contributes_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_contributes_product` (
  `product_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`person_id`),
  KEY `IDX_5EBE1F014584665A` (`product_id`),
  KEY `IDX_5EBE1F01217BBB47` (`person_id`),
  CONSTRAINT `FK_5EBE1F01217BBB47` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_5EBE1F014584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_contributes_product`
--

LOCK TABLES `person_contributes_product` WRITE;
/*!40000 ALTER TABLE `person_contributes_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_contributes_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_participates_entity`
--

DROP TABLE IF EXISTS `person_participates_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_participates_entity` (
  `entity_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`entity_id`,`person_id`),
  KEY `IDX_9A036581257D5D` (`entity_id`),
  KEY `IDX_9A0365217BBB47` (`person_id`),
  CONSTRAINT `FK_9A0365217BBB47` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK_9A036581257D5D` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_participates_entity`
--

LOCK TABLES `person_participates_entity` WRITE;
/*!40000 ALTER TABLE `person_participates_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_participates_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` datetime DEFAULT NULL,
  `deathdate` datetime DEFAULT NULL,
  `image_url` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wiki_url` varchar(2047) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Product_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'SGML','1986-01-01 00:00:00',NULL,'https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photo/7122993/image/b6c98ea121bc14d8d0518eac7a5201e4','https://es.wikipedia.org/wiki/SGML'),(3,'XML','1999-01-01 00:00:00',NULL,'https://images-ext-2.discordapp.net/external/XR_oa0hoHQRsBq1W45TzGGjCqGEXPcKbZ2RSN-INge4/https/png.pngtree.com/png-vector/20190330/ourlarge/pngtree-xml-file-document-icon-png-image_893042.jpg','https://es.wikipedia.org/wiki/Extensible_Markup_Language'),(4,'HTML','1980-01-01 00:00:00',NULL,'https://images-ext-1.discordapp.net/external/Ccv48vdujMB92PC8N3DmYDViWIAvV0pdiM08ZINxHaQ/https/fernandosarachaga.com/wp-content/uploads/programming-language-html.jpeg','https://es.wikipedia.org/wiki/HTML'),(5,'HTTP','1989-01-01 00:00:00',NULL,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/HTTP_logo_-_2014.svg/290px-HTTP_logo_-_2014.svg.png','https://es.wikipedia.org/wiki/Protocolo_de_transferencia_de_hipertexto'),(6,'CSS','1996-01-01 00:00:00',NULL,'https://picodotdev.github.io/blog-bitix/assets/images/structured-data/css-750.png','https://es.wikipedia.org/wiki/CSS'),(7,'JavaScript','1995-01-01 00:00:00',NULL,'https://pngset.com/images/logo-javascript-pattern-copyright-framework-free-javascript-logo-label-text-symbol-trademark-transparent-png-1498648.png','https://es.wikipedia.org/wiki/JavaScript');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_value` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_UNIQ_USERNAME` (`username`),
  UNIQUE KEY `IDX_UNIQ_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'adminUser','adminUser@example.com','$2y$10$jBHold8vfKr2h6QHA9Brsu6s1M/3C8tj5Eqs8cfvSICbTuUMfokCS',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

