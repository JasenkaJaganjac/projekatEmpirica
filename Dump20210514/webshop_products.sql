-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: webshop
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_description` varchar(2000) DEFAULT NULL,
  `product_image_url` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `reduced_price` double DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT '1',
  `is_in_stock` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hydra Bebe® krema za lice s avokadom pruza trenutnu i dugorocnu zastitu njezne koze novorodencadi i djece, ostavljajuci ju mekom i podatnom.','assets\\img\\001.png','Mustela Hydra Bebe',15.95,10,NULL,0,1),(2,'Za dnevnu njegu koze izlozene stetnom vanjskom djelovanju (npr. vodi, vjetru), pomaze i kod blazih povreda koze (ogrebotina, manjih opeklina i nagnjecenja), nazuljanih mjesta na kozi, ogrubjele koze i koze nadrazene suncanjem','assets\\img\\002.jpg','Bepanthen krema',8.95,NULL,5,0,1),(3,'Ovaj losion sa zastitnim faktorom 50+ posebno je osmisljen za njeznu kozu beba i djece. Stiti njihovu kozu od UVA i UVB zraka, otporan je na vodu i pijesak. Bez mirisa. Za sve tipove koze, ukljucujuci osjetljivu kozu, kozu koja ne podnosi sunce i kozu sklonu atopiji.','assets\\img\\003.jpg','Mustela Losion SPF 50+',13.95,10,NULL,1,1),(4,'Visoka zastita od UV zraenja i vrlo lagano mlijeko koje se brzo upija, pogodno za sve tipove koze. Za lice i tijelo, moze se nanijeti na mokru ili suhu kožu. Bez bijelih tragova.','assets\\img\\004.png','Avene krema SPF 30',19.95,NULL,NULL,0,0),(5,'Nasa energetska pjenusava kupka za bebe i djecu nježno cisti djecje tijelo i kosu bez isusivanja. Prirodna formulacija visoke podnosljivosti koja sadrzi avokado može se koristiti i za novorodencad*.Glatka i lagana tekstura pretvara bebino kupanje u svakodnevnu zabavu!     *Pogodno i za bebe otpustene s neonatalne njege.','assets\\img\\005.jpg','Mustela kupka',8.95,NULL,NULL,1,1),(6,'Visoka zaita od UV zraenja i vrlo lagano mlijeko koje se brzo upija, pogodno za sve tipove koze. Za lice i tijelo, moze se nanijeti na mokru ili suhu kožu. Bez bijelih tragova.','assets/img/006.jpg','Vichy IDEAL SOLEIL SPF 50',19.95,NULL,5,1,1),(7,'Obnavljajuca zastitna krema koja svakodnevno umiruje, obnavlja* i prociscuje nadrazenu kozu cijele obitelji.  * potice oporavak epidermisa.','assets\\img\\007.jpg','Avene Cicalfate+',12.95,NULL,NULL,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 19:12:51
