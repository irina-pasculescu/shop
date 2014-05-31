# ************************************************************
# Sequel Pro SQL dump
# Version 3560
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: shop
# Generation Time: 2014-05-31 19:02:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table basket
# ------------------------------------------------------------

DROP TABLE IF EXISTS `basket`;

CREATE TABLE "basket" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "bookId" int(11) NOT NULL,
  "added" int(11) NOT NULL,
  "sessionId" varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY ("id")
);



# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE "books" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "author" varchar(100) NOT NULL,
  "title" varchar(100) NOT NULL,
  "details" text NOT NULL,
  PRIMARY KEY ("id")
);

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `author`, `title`, `details`)
VALUES
	(3,'author3','title3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque, elit vel fringilla fermentum, ipsum sem porttitor augue, nec lacinia augue eros sit amet velit. Pellentesque rhoncus, ligula vel lacinia ultrices, turpis justo imperdiet mauris, non placerat sapien ante ut justo. Etiam in felis risus. Proin nisl risus, feugiat fringilla varius non, laoreet porta urna. Curabitur varius, ipsum sed tristique porta, nisl turpis aliquet ipsum, fermentum iaculis tellus neque quis justo. Morbi sagittis dolor ut nibh consectetur, a pellentesque nisl condimentum. Nullam id suscipit lacus, vel laoreet mi. Quisque fermentum mattis neque in luctus. Praesent cursus turpis nunc, vel venenatis orci egestas ut. Proin suscipit placerat dui. Donec et rutrum arcu. Praesent porttitor turpis vel dolor scelerisque, nec eleifend felis cursus. Proin dignissim hendrerit mauris, eget tincidunt nisi luctus nec. Sed semper elementum velit eu consequat.'),
	(4,'author4','title4','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque, elit vel fringilla fermentum, ipsum sem porttitor augue, nec lacinia augue eros sit amet velit. Pellentesque rhoncus, ligula vel lacinia ultrices, turpis justo imperdiet mauris, non placerat sapien ante ut justo. Etiam in felis risus. Proin nisl risus, feugiat fringilla varius non, laoreet porta urna. Curabitur varius, ipsum sed tristique porta, nisl turpis aliquet ipsum, fermentum iaculis tellus neque quis justo. Morbi sagittis dolor ut nibh consectetur, a pellentesque nisl condimentum. Nullam id suscipit lacus, vel laoreet mi. Quisque fermentum mattis neque in luctus. Praesent cursus turpis nunc, vel venenatis orci egestas ut. Proin suscipit placerat dui. Donec et rutrum arcu. Praesent porttitor turpis vel dolor scelerisque, nec eleifend felis cursus. Proin dignissim hendrerit mauris, eget tincidunt nisi luctus nec. Sed semper elementum velit eu consequat.'),
	(5,'author5','title5','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque, elit vel fringilla fermentum, ipsum sem porttitor augue, nec lacinia augue eros sit amet velit. Pellentesque rhoncus, ligula vel lacinia ultrices, turpis justo imperdiet mauris, non placerat sapien ante ut justo. Etiam in felis risus. Proin nisl risus, feugiat fringilla varius non, laoreet porta urna. Curabitur varius, ipsum sed tristique porta, nisl turpis aliquet ipsum, fermentum iaculis tellus neque quis justo. Morbi sagittis dolor ut nibh consectetur, a pellentesque nisl condimentum. Nullam id suscipit lacus, vel laoreet mi. Quisque fermentum mattis neque in luctus. Praesent cursus turpis nunc, vel venenatis orci egestas ut. Proin suscipit placerat dui. Donec et rutrum arcu. Praesent porttitor turpis vel dolor scelerisque, nec eleifend felis cursus. Proin dignissim hendrerit mauris, eget tincidunt nisi luctus nec. Sed semper elementum velit eu consequat.'),
	(6,'author 6','title 6','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque, elit vel fringilla fermentum, ipsum sem porttitor augue, nec lacinia augue eros sit amet velit. Pellentesque rhoncus, ligula vel lacinia ultrices, turpis justo imperdiet mauris, non placerat sapien ante ut justo. Etiam in felis risus. Proin nisl risus, feugiat fringilla varius non, laoreet porta urna. Curabitur varius, ipsum sed tristique porta, nisl turpis aliquet ipsum, fermentum iaculis tellus neque quis justo. Morbi sagittis dolor ut nibh consectetur, a pellentesque nisl condimentum. Nullam id suscipit lacus, vel laoreet mi. Quisque fermentum mattis neque in luctus. Praesent cursus turpis nunc, vel venenatis orci egestas ut. Proin suscipit placerat dui. Donec et rutrum arcu. Praesent porttitor turpis vel dolor scelerisque, nec eleifend felis cursus. Proin dignissim hendrerit mauris, eget tincidunt nisi luctus nec. Sed semper elementum velit eu consequat.');

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
