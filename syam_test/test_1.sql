/*
SQLyog Community v8.5 Beta2
MySQL - 5.1.41-3ubuntu12 : Database - test_1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test_1`;

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `album_id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name_n` varchar(20) DEFAULT NULL,
  `details` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;

/*Data for the table `album` */

insert  into `album`(`album_id`,`name_n`,`details`) values (190,'sdsad','sadasd'),(184,'asas','asasasasas'),(96,NULL,NULL),(94,NULL,NULL),(103,NULL,NULL),(186,'sdsad','sadasd'),(107,'',''),(12,'fdsf','dsff'),(13,'fdsf','dsff'),(14,'fdsf','dsff'),(15,'fdgdg','dfgdg'),(16,'fdgdg','dfgdg'),(93,NULL,NULL),(18,'dsgdsg','sdgsdgsd'),(188,'sdsad','sadasd'),(20,'fhfh','fhfgh'),(21,'fhfh','fhfgh'),(193,'asda','dasdad'),(23,'',''),(24,'',''),(25,'',''),(26,'',''),(27,'',''),(28,'',''),(29,'',''),(30,'',''),(31,'gdfgd','fdgdfgd'),(32,'',''),(33,'',''),(34,'',''),(35,'',''),(36,'',''),(38,'fdsfsf','sfsfs'),(39,'fdsfsf','sfsfs'),(40,'fdsfsf','sfsfs'),(185,'sdsad','sadasd'),(101,NULL,NULL),(102,NULL,NULL),(116,'fsdffs','sfsfsdfsdf'),(104,NULL,NULL),(106,'',''),(109,'sadsad','sadasdas'),(112,'dwqdwqd','wqdwqd'),(114,'hfdhdf','fdhdfhd'),(189,'sdsad','sadasd'),(95,NULL,NULL),(97,NULL,NULL),(98,NULL,NULL),(187,'sdsad','sadasd'),(64,'ertet','etetet'),(65,'ertet','etetet'),(66,'ertet','etetet'),(119,'scsd','sdcsdc'),(191,'sdsad','sadasd'),(192,'asda','dasdad'),(194,'asda','dasdad'),(195,'asda','dasdad'),(196,'11','e3'),(197,'11','e3'),(198,'vdfggdfg','fdgdfgdfg'),(199,'retrt','ertert'),(200,'dfg','fdgd'),(201,'fdsfsdf','sdfdsfsd');

/*Table structure for table `album_det` */

DROP TABLE IF EXISTS `album_det`;

CREATE TABLE `album_det` (
  `loc_id` int(3) NOT NULL AUTO_INCREMENT,
  `album_id` int(2) DEFAULT NULL,
  `desc_n` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `album_det` */

insert  into `album_det`(`loc_id`,`album_id`,`desc_n`) values (1,12,'gkhgk'),(2,12,'fasfaf'),(3,13,'asddasd'),(4,15,'adasd'),(5,2,'adasd'),(6,8,'asdasd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
