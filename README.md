# SQL Manager 2005 for MySQL 3.7.6.2
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : kw


SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `kw`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `kw`;

#
# Structure for the `bollywood_photos` table : 
#

CREATE TABLE `bollywood_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(2000) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `tags` varchar(2000) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `category_news` table : 
#

CREATE TABLE `category_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(20000) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2795 DEFAULT CHARSET=latin1;


#
# Structure for the `music_album` table : 
#

CREATE TABLE `music_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(50) DEFAULT NULL,
  `album_image` varchar(200) DEFAULT NULL,
  `total_songs` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Structure for the `music` table : 
#

CREATE TABLE `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `album_name` varchar(200) DEFAULT NULL,
  `album_image` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `singer` varchar(200) DEFAULT NULL,
  `music_director` varchar(200) DEFAULT NULL,
  `lyricsist` varchar(200) DEFAULT NULL,
  `link` varchar(2000) DEFAULT NULL,
  `actors` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` date DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `music_fk` FOREIGN KEY (`album_id`) REFERENCES `music_album` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

#
# Structure for the `nature_photos` table : 
#

CREATE TABLE `nature_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(2000) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `tags` varchar(2000) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for the `news` table : 
#

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(2000) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(20000) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `url` varchar(4000) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2327 DEFAULT CHARSET=latin1;

#
# Structure for the `photo` table : 
#

CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(2000) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=latin1;

#
# Structure for the `population` table : 
#

CREATE TABLE `population` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(20) DEFAULT NULL,
  `population` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Structure for the `video` table : 
#

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(2000) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `youtube_id` varchar(200) DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=latin1;

# YouAreMine
# Its an Entertainment web project using java, hibernate, SpringMVC, MySQL, jsp, html, templates
# Also using Youtube Rest API, News.org API, File Uploading, bootstrap, template etc

#YOu have to install mysql before run this project
# here is script of mysql database



