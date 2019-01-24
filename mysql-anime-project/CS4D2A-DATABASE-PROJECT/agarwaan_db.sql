-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2018 at 03:10 AM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agarwaan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ANIME`
--

CREATE TABLE IF NOT EXISTS `ANIME` (
  `TITLE` varchar(50) NOT NULL DEFAULT '',
  `ANIME_ID` int(11) DEFAULT NULL,
  `CREATOR` varchar(30) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `EPISODES` int(11) DEFAULT NULL,
  `AIRED` date DEFAULT NULL,
  `ENDED` date DEFAULT NULL,
  `STATUS` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ANIME`
--

INSERT INTO `ANIME` (`TITLE`, `ANIME_ID`, `CREATOR`, `TYPE`, `RATING`, `EPISODES`, `AIRED`, `ENDED`, `STATUS`) VALUES
('BOKU NO HERO ACADEMIA', 6, 'Kohei Horikoshi', 'TV SERIES', 10, 75, '2016-05-04', '0000-00-00', 'ON-GOING'),
('BORUTO:NARUTO NEXT GENERATIONS', 4, 'UKYO KODACHI', 'TV SERIES', 9, 83, '2017-04-05', '2018-11-26', 'ON-GOING'),
('BORUTO:NARUTO THE MOVIE', 3, 'UKYO KODACHI', 'MOVIE', 9, 4, '2015-08-07', '2015-08-07', 'COMPLETED'),
('KIMI NO NA WA', 7, 'MAKATO SHINKAI', 'MOVIE', 10, 1, '2016-05-04', '0000-00-00', 'COMPLETED'),
('NARUTO ORIGINAL', 1, 'Masashi Kishimoto', 'TV SERIES', 9, 220, '2002-10-03', '2007-02-08', 'COMPLETED'),
('NARUTO SHIPPUDEN', 2, 'Masashi Kishimoto', 'TV SERIES', 10, 500, '2007-02-15', '2017-03-23', 'COMPLETED'),
('The Day Naruto Became Hokage', 5, 'Masashi Kishimoto', 'OVA', 9, 1, '2016-05-04', '2016-05-04', 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_LIST`
--

CREATE TABLE IF NOT EXISTS `CHARACTER_LIST` (
  `CHARACTER_ID` int(11) NOT NULL DEFAULT '0',
  `ANIME` varchar(50) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHARACTER_LIST`
--

INSERT INTO `CHARACTER_LIST` (`CHARACTER_ID`, `ANIME`, `NAME`, `GENDER`, `RATING`) VALUES
(1, 'NARUTO ORIGINAL', 'NARUTO', 'M', 9),
(2, 'NARUTO ORIGINAL', 'SASUKE', 'M', 8),
(3, 'NARUTO ORIGINAL', 'SAKURA', 'F', 9),
(4, 'NARUTO ORIGINAL', 'KAKASHI', 'M', 9),
(5, 'NARUTO ORIGINAL', 'YAMATO', 'M', 8);

-- --------------------------------------------------------

--
-- Table structure for table `CREATOR`
--

CREATE TABLE IF NOT EXISTS `CREATOR` (
  `CREATOR_ID` int(11) NOT NULL DEFAULT '0',
  `ANIME` varchar(50) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `DATE_OF_DEATH` date DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CREATOR`
--

INSERT INTO `CREATOR` (`CREATOR_ID`, `ANIME`, `NAME`, `GENDER`, `DATE_OF_BIRTH`, `DATE_OF_DEATH`, `RATING`) VALUES
(1, 'NARUTO ORIGINAL', 'Masashi Kishimoto', 'M', '1974-11-08', '0000-00-00', 8),
(2, 'NARUTO SHIPPUDEN', 'Masashi Kishimoto', 'M', '1974-11-08', '0000-00-00', 8),
(3, 'BORUTO:NARUTO NEXT GENERATIONS', 'UKYO KODACHI', 'M', '1979-04-01', '0000-00-00', 8),
(4, 'BOKU NO HERO ACADEMIA', 'Kohei Horikoshi', 'M', '1987-07-09', '0000-00-00', 9),
(5, 'KIMI NO NA WA', 'MAKATO SHINKAI', 'M', '1983-02-19', '0000-00-00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `GROUP_LIST`
--

CREATE TABLE IF NOT EXISTS `GROUP_LIST` (
  `ANIME` varchar(50) DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL DEFAULT '0',
  `NAME` varchar(30) DEFAULT NULL,
  `P_NAME` varchar(30) DEFAULT NULL,
  `LANGUAGES` varchar(30) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `DATE_ESTABLISHED` date DEFAULT NULL,
  `URL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GROUP_LIST`
--

INSERT INTO `GROUP_LIST` (`ANIME`, `GROUP_ID`, `NAME`, `P_NAME`, `LANGUAGES`, `RATING`, `DATE_ESTABLISHED`, `URL`) VALUES
('BORUTO:NARUTO NEXT GENERATIONS', 1, 'Tv Tokyo', 'VIZ MEDIA', 'JAPANESE,ENGLISH', 7, '0000-00-00', ''),
('NARUTO ORIGINAL', 2, 'Tv Tokyo', 'VIZ MEDIA', 'JAPANESE,ENGLISH', 6, '0000-00-00', ''),
('NARUTO SHIPPUDEN', 3, 'Tv Tokyo', 'VIZ MEDIA', 'JAPANESE,ENGLISH', 6, '0000-00-00', ''),
('BOKU NO HERO ACADEMIA', 4, 'Tv Tokyo', 'VIZ MEDIA', 'JAPANESE,ENGLISH', 8, '0000-00-00', ''),
('KIMI NO NA wA', 5, 'Tv Tokyo', 'VIZ MEDIA', 'JAPANESE,ENGLISH', 9, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `LATEST`
--

CREATE TABLE IF NOT EXISTS `LATEST` (
  `ANIME_ID` int(11) NOT NULL DEFAULT '0',
  `ANIME` varchar(50) DEFAULT NULL,
  `GROUP_NAME` varchar(30) DEFAULT NULL,
  `INFO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LATEST`
--

INSERT INTO `LATEST` (`ANIME_ID`, `ANIME`, `GROUP_NAME`, `INFO`) VALUES
(1, 'BORUTO:NARUTO NEXT GENERATIONS', 'Tv Tokyo', 'The ninja adventures continue '),
(2, 'NARUTO ORIGINAL', 'Tv Tokyo', '...'),
(3, 'NARUTO SHIPPUDEN', 'Tv Tokyo', '...'),
(4, 'KIMI NO NA WA', 'VIZ MEDIA', '...'),
(5, 'BOKU NO HERO ACADEMIA', 'YOUPEI', '...');

-- --------------------------------------------------------

--
-- Table structure for table `OPENING`
--

CREATE TABLE IF NOT EXISTS `OPENING` (
  `SONG_ID` int(11) NOT NULL DEFAULT '0',
  `ANIME` varchar(50) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `PERFORMER` varchar(30) DEFAULT NULL,
  `LENGTH` int(11) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OPENING`
--

INSERT INTO `OPENING` (`SONG_ID`, `ANIME`, `NAME`, `PERFORMER`, `LENGTH`, `RATING`) VALUES
(1, 'NARUTO ORIGINAL', 'No Boy,No Cry', 'Stance Punks', 3, 8),
(2, 'NARUTO SHIPPUDEN', 'BLUE BIRD', 'Ikimono-Gakari', 3, 8),
(3, 'BORUTO:NARUTO NEXT GENERATIONS', 'Lonely Go!', 'Brian the Sun', 3, 8),
(4, 'NARUTO SHIPPUDEN', 'DIVER', 'ELENA', 2, 8),
(5, 'KIMI NO NA WA', 'GO ON', 'THE TEANGENT', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `USER_LIST`
--

CREATE TABLE IF NOT EXISTS `USER_LIST` (
  `ANIME` varchar(50) DEFAULT NULL,
  `USER_NAME` varchar(30) NOT NULL DEFAULT '',
  `PASSWORD` varchar(30) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER_LIST`
--

INSERT INTO `USER_LIST` (`ANIME`, `USER_NAME`, `PASSWORD`, `STATUS`, `RATING`) VALUES
('NARUTO ORIGINAL', '003', 'GOGOTAH', 'ONGOING', 8),
('BOKU NO HERO ACADEMIA', '004', 'GOGOTAH', 'ONGOING', 9),
('KIMI NO NA WA', '005', 'GOGOTAH', 'ONGOING', 10),
('NARUTO SHIPPUDEN', '007', 'GOGOTAH', 'ONGOING', 7),
('BORUTO:NARUTO NEXT GENERATIONS', 'MORDRED_002', 'GOGOTAH', 'ONGOING', 8);

--
-- Triggers `USER_LIST`
--
DELIMITER //
CREATE TRIGGER `V_USER` BEFORE DELETE ON `USER_LIST`
 FOR EACH ROW BEGIN
      DELETE FROM CREATOR WHERE ANIME = USER_LIST.ANIME;
      END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v`
--
CREATE TABLE IF NOT EXISTS `v` (
`ANIME_ID` int(11)
,`TITLE` varchar(50)
,`CREATOR` varchar(30)
,`RATING` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `VIDEO_LIST`
--

CREATE TABLE IF NOT EXISTS `VIDEO_LIST` (
  `ANIME` varchar(50) DEFAULT NULL,
  `VIDEO_ID` int(11) NOT NULL DEFAULT '0',
  `SERVER_NAME` varchar(30) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `URL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VIDEO_LIST`
--

INSERT INTO `VIDEO_LIST` (`ANIME`, `VIDEO_ID`, `SERVER_NAME`, `RATING`, `URL`) VALUES
('BORUTO:NARUTO NEXT GENERATIONS', 1, 'RAPIDFIRE', 7, 'WWW.GOGOANIME.TV'),
('NARUTO ORIGINAL', 2, 'RAPIDFIRE', 7, 'WWW.GOGOANIME.TV'),
('NARUTO SHIPPUDEN', 3, 'RARE', 8, 'WWW.GOGOANIME.TV'),
('BOKU NO HERO ACADEMIA', 4, 'FIRE', 9, 'WWW.GOGOANIME.TV'),
('KIMI NO NA WA', 5, 'RAP', 10, 'WWW.GOGOANIME.TV');

--
-- Triggers `VIDEO_LIST`
--
DELIMITER //
CREATE TRIGGER `addUSER` AFTER INSERT ON `VIDEO_LIST`
 FOR EACH ROW BEGIN
    INSERT INTO USER_LIST SET ANIME = NEW.ANIME  ;
    INSERT INTO USER_LIST SET USER_NAME = NEW.SERVER_NAME  ;
       
    END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `W`
--
CREATE TABLE IF NOT EXISTS `W` (
`CHARACTER_ID` int(11)
,`NAME` varchar(30)
,`GENDER` varchar(1)
,`ANIME` varchar(50)
,`RATING` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `X`
--
CREATE TABLE IF NOT EXISTS `X` (
`GROUP_ID` int(11)
,`NAME` varchar(30)
,`P_NAME` varchar(30)
,`ANIME` varchar(50)
,`RATING` int(11)
,`URL` varchar(50)
);
-- --------------------------------------------------------

--
-- Structure for view `v`
--
DROP TABLE IF EXISTS `v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`agarwaan`@`localhost` SQL SECURITY DEFINER VIEW `v` AS select `ANIME`.`ANIME_ID` AS `ANIME_ID`,`ANIME`.`TITLE` AS `TITLE`,`ANIME`.`CREATOR` AS `CREATOR`,`ANIME`.`RATING` AS `RATING` from `ANIME`;

-- --------------------------------------------------------

--
-- Structure for view `W`
--
DROP TABLE IF EXISTS `W`;

CREATE ALGORITHM=UNDEFINED DEFINER=`agarwaan`@`localhost` SQL SECURITY DEFINER VIEW `W` AS select `CHARACTER_LIST`.`CHARACTER_ID` AS `CHARACTER_ID`,`CHARACTER_LIST`.`NAME` AS `NAME`,`CHARACTER_LIST`.`GENDER` AS `GENDER`,`CHARACTER_LIST`.`ANIME` AS `ANIME`,`CHARACTER_LIST`.`RATING` AS `RATING` from `CHARACTER_LIST`;

-- --------------------------------------------------------

--
-- Structure for view `X`
--
DROP TABLE IF EXISTS `X`;

CREATE ALGORITHM=UNDEFINED DEFINER=`agarwaan`@`localhost` SQL SECURITY DEFINER VIEW `X` AS select `GROUP_LIST`.`GROUP_ID` AS `GROUP_ID`,`GROUP_LIST`.`NAME` AS `NAME`,`GROUP_LIST`.`P_NAME` AS `P_NAME`,`GROUP_LIST`.`ANIME` AS `ANIME`,`GROUP_LIST`.`RATING` AS `RATING`,`GROUP_LIST`.`URL` AS `URL` from `GROUP_LIST`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ANIME`
--
ALTER TABLE `ANIME`
 ADD PRIMARY KEY (`TITLE`);

--
-- Indexes for table `CHARACTER_LIST`
--
ALTER TABLE `CHARACTER_LIST`
 ADD PRIMARY KEY (`CHARACTER_ID`), ADD KEY `ANIME_FK` (`ANIME`);

--
-- Indexes for table `CREATOR`
--
ALTER TABLE `CREATOR`
 ADD PRIMARY KEY (`CREATOR_ID`), ADD KEY `ANIME_FK1` (`ANIME`);

--
-- Indexes for table `GROUP_LIST`
--
ALTER TABLE `GROUP_LIST`
 ADD PRIMARY KEY (`GROUP_ID`), ADD KEY `ANIME_FK2` (`ANIME`);

--
-- Indexes for table `LATEST`
--
ALTER TABLE `LATEST`
 ADD PRIMARY KEY (`ANIME_ID`), ADD KEY `ANIME_FK3` (`ANIME`);

--
-- Indexes for table `OPENING`
--
ALTER TABLE `OPENING`
 ADD PRIMARY KEY (`SONG_ID`), ADD KEY `ANIME_FK4` (`ANIME`);

--
-- Indexes for table `USER_LIST`
--
ALTER TABLE `USER_LIST`
 ADD PRIMARY KEY (`USER_NAME`), ADD KEY `ANIME_FK5` (`ANIME`);

--
-- Indexes for table `VIDEO_LIST`
--
ALTER TABLE `VIDEO_LIST`
 ADD PRIMARY KEY (`VIDEO_ID`), ADD KEY `ANIME_FK6` (`ANIME`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CHARACTER_LIST`
--
ALTER TABLE `CHARACTER_LIST`
ADD CONSTRAINT `ANIME_FK` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

--
-- Constraints for table `CREATOR`
--
ALTER TABLE `CREATOR`
ADD CONSTRAINT `ANIME_FK1` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

--
-- Constraints for table `GROUP_LIST`
--
ALTER TABLE `GROUP_LIST`
ADD CONSTRAINT `ANIME_FK2` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

--
-- Constraints for table `LATEST`
--
ALTER TABLE `LATEST`
ADD CONSTRAINT `ANIME_FK3` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

--
-- Constraints for table `OPENING`
--
ALTER TABLE `OPENING`
ADD CONSTRAINT `ANIME_FK4` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

--
-- Constraints for table `USER_LIST`
--
ALTER TABLE `USER_LIST`
ADD CONSTRAINT `ANIME_FK5` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

--
-- Constraints for table `VIDEO_LIST`
--
ALTER TABLE `VIDEO_LIST`
ADD CONSTRAINT `ANIME_FK6` FOREIGN KEY (`ANIME`) REFERENCES `ANIME` (`TITLE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
