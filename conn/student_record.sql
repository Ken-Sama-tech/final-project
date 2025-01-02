-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2024 at 02:52 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE Database student_record;

USE student_record;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `articleID` int NOT NULL AUTO_INCREMENT,
  `article` varchar(1) DEFAULT NULL,
  `articleDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`userID`, `username`, `password`) VALUES
(1, 'Admin', '$2y$10$FG3ALke2mEUq6rpoQ4jkWupX1qPoTq2OnQCh2kdg6jRLya2eQqT9q');
COMMIT;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`articleID`, `article`, `articleDescription`) VALUES
(1, 'a', 'PAGLABAG SA AKADEMIKONG PAG-UNLAD'),
(2, 'b', 'PAGLABAS SA KILOS NG PAGIGING MAG-AARAL'),
(3, 'c', 'PAGLABAG SA KARAPATAN NG IBA'),
(4, 'd', 'PAGLABAG SA KARANGALAN NG PAARALAN');

-- --------------------------------------------------------

--
-- Table structure for table `articlesections`
--

DROP TABLE IF EXISTS `articlesections`;
CREATE TABLE IF NOT EXISTS `articlesections` (
  `articleSectionID` int NOT NULL AUTO_INCREMENT,
  `articleID` int NOT NULL,
  `articleSection` varchar(255) NOT NULL,
  `articleSectionDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`articleSectionID`),
  KEY `articleID` (`articleID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articlesections`
--

INSERT INTO `articlesections` (`articleSectionID`, `articleID`, `articleSection`, `articleSectionDescription`) VALUES
(1, 1, 'section 1', 'Paggamit ng Cellular Phone habang nagkaklase.'),
(2, 1, 'section 2', 'Hindi maituturing na paglabag kung ang paggamit ay emergency at kinakailangan talaga subalit dapat magpaalam sa guro na lalabas ng silid aralan ang bata upang hindi makistorbo.'),
(3, 1, 'section 3', 'Paggamit ng gadget na nakakalikha ng ingay habang mayroong klase liban na lamang kung ito ay pinapayagang gamitin ng guro at makakatulong sa gawaing pang-akademiko'),
(4, 1, 'section 4', 'Palagiang pagliban sa klase ng higit isang linggo kada buwan at hindi pagpapasa ng Liham Pagpapaliwanag'),
(5, 1, 'section 5', 'Palagiang pagpasok ng huli sa mga klase na umaabot na ng isang linggo'),
(6, 1, 'section 6', 'Malimit na pagkacutting classes'),
(7, 1, 'section 7', 'Paglabas ng silid aralan ng walang paalam sa mga guro at pagpapakita ng kawalang galang'),
(8, 1, 'section 8', 'Pagtakas sa gate ng paaralan ng walang kaukulang paalam na itinatala sa gwardya na pinapayagan na umuwi ang bata ng guro'),
(9, 1, 'section 9', 'Maari lamang na lumabas ang mga estudyante kung sila ay may LBM o sakit na di kayang lunasan ng paaralan at nangangailangan ng medikal na atensyon na alam ng magulang. Nararapat na may Pass Slip na naitala sa Gwardya at sinamahan ng sinumang kawani o ipin'),
(10, 2, 'section 1', 'Hindi pagsusuot ng tamang uniporme'),
(11, 2, 'section 2', 'Hindi pag-susuot ng Pagkakakilanlan o ID'),
(12, 2, 'section 3', 'Pagsusuot ng hikaw at pagkakaroon ng body piercing ng mga kalalakihan o piercing sa kababaihan na nagbibigay ng hindi magandang impresyon sa pagiging estudyante'),
(13, 2, 'section 4', 'Pagsusuot ng singsing na may spike at malalaking'),
(14, 2, 'section 5', 'metal na buckles ng sinturon na maaring gamitin upang makapanakit ng mga kamag-aral'),
(15, 2, 'section 6', 'Pagdadala ng baril, patalim o mga nakakasakit at nakakamatay na mga bagay.'),
(16, 2, 'section 7', 'Pagdadala ng pampasabog o mga bagay na may kinalaman sa terorismo'),
(17, 2, 'section 8', 'Vandalismo at iba’t ibang uri nito. Paglilinis o pagpipintura ng lugar na dinumihan o sinulatan at Komperesiya sa mga magulang. Pagpapatawag at pagpapaliwanag ng magulang at Pagpasok sa Interbensyon at Programang Paggabay. Ekspulsyon at di iisyuhan ng Cer'),
(18, 2, 'section 9', 'Pagdura sa kung saan saan'),
(19, 2, 'section 10', 'Pag-iwan sa CR ng madumi matapos itong gamitin'),
(20, 2, 'section 11', 'Paninigarilyo sa loob ng kampus'),
(21, 2, 'section 12', 'Intensyonal na pagsira ng mga silya, pintuan, pagbasag ng bintana o mga ilaw o anumang nasa sa loob ng silid aralan at paaralan'),
(22, 2, 'section 13', 'Pagdadala, pag-iinom ng nakalalasing na inumin o pagpasok ng lasing'),
(23, 2, 'section 14', 'Pagpapasok o paggamit ng droga o kahalintulad nito gaya ng marijuana, shabu, atbp.'),
(25, 2, 'section 16', 'Pagpapakita ng mahalay na gawi sa loob ng paaralan.'),
(26, 2, 'section 17', 'Pagsira sa ID'),
(27, 2, 'section 18', 'Paggamit ng ibang ID upang makapasok sa paaralan'),
(28, 2, 'section 19', 'Pagpapahiram ng sariling ID sa ibang estudyante liban na lamang kung manghihiram ng gamit sa silid aklatan o sa laboratoryo o katulad na Gawain'),
(29, 2, 'section 20', 'Hindi pagsasauli ng mga gamit na ipinahiram ng paaralang gaya ng Learner’s Material, mga kagamitan sa Silid Aklatan, at mga Laboratoryo'),
(30, 2, 'section 21', 'Pagnanakaw ng gamit ng paaralan o ng kagamitan ng mga guro o kawani nito.'),
(31, 2, 'section 22', 'Pandaraya o palsipikasyon ng mga tala ng paaralan'),
(32, 2, 'section 23', 'Pamemeke ng lagda ng magulang o tagapag-alaga, guro o kawani ng paaralan.'),
(33, 2, 'section 24', 'Pandaraya sa mga pagsusulit, eksaminasyon o mga gawaing pang-akademiko'),
(34, 2, 'section 25', 'Pagdadala ng mahahalay na magasin o babasahin o pelikulang ipinapapanood sa iba'),
(35, 2, 'section 26', 'Paglikha ng ingay na nakakaabala sa mga klase'),
(36, 2, 'section 27', 'Pagtambay sa pasilyo na lumilikha ng ingay o kaguluhan na nakaka-abala sa mga klase'),
(37, 2, 'section 28', 'Pagtatapon ng BASURA sa kung saan saan.'),
(38, 2, 'section 29', 'Kawalang galang sa mga guro at kawani ng paaralan.'),
(39, 3, 'section 1', 'Paghahamon ng away o pag-aamok na nagdulot ng kaguluhan sa loob o labas ng paaralan'),
(40, 3, 'section 2', 'Pambubully sa kahit sino sa paaralan: \r\n    - Maaring pasalitang pagbabanta, pananakot o malabis na panghihiya\r\n    - Sikolohikal o emosyonal\r\n    - Panunukso ng labis\r\n    - Pango-ngotong ng salapi o bagay\r\n    - Pagpigil sa kahit sino na makapasok sa pa'),
(41, 3, 'section 3', 'Pagmumura ng labis at pagsasalita ng may kabastusan na nakakasakit ng damdamin ng iba'),
(42, 3, 'section 4', 'Sekswal na pang-aabuso:\r\n    - Maaring pasalita\r\n    - Panghihipo sa maseselang bahagi\r\n    - Pagpapakita ng ari\r\n    - Panggagahasa o anupamang nasa sa probisyon ng CPP'),
(43, 3, 'section 5', 'Pananakit ng kapwa estudyante o guro. \n'),
(44, 3, 'section 6', 'Pagpatay sa kapuwa estudyante o sinuman sa paaralan'),
(45, 3, 'section 7', 'Kawalang galang sa mga guro at kawani ng paaralan at pananakit sa sinuman dito'),
(46, 3, 'section 8', 'Pagsali sa fraternity o sorority na nagdudulot ng pahamak o kaguluhan sa kapuwa estudyante'),
(47, 3, 'section 9', 'Pagsisimula ng rambol o riot sa loob at labas ng paaralan na ikinapahamak ng sinuman dito. \r\n'),
(48, 3, 'section 10', 'Pagkakasangkot sa inisyasyon o hazing na maaring ikamatay ng kapwa estudyante at depende sa naging epekto nito sa biktima'),
(49, 3, 'section 11', 'Pagpapalaganap ng mga mahahalay na materyal'),
(50, 4, 'section 1', 'Pagsosolicit sa labas ng paaralan ng hindi legal at pinapayagan nito.'),
(51, 4, 'section 2', 'Panloloko o panlilinlang sa magulang o tagapamatnubay sa mga inaprubahang gawain at koleksyon sa paaralan kung mayroon man'),
(52, 4, 'section 3', 'Pagbebenta ng tiket na hindi pinayagan ng pamunuan ng paaralan'),
(53, 4, 'section 4', 'Pamemeke ng lagda ng kahit sino sa paaralan at paggamit nito sa kalokohan '),
(54, 4, 'section 5', 'Paggamit ng pangalan ng paaralan sa kalokohan o sa mga bagay na ikasisira ng maganda nitong imahe');

-- --------------------------------------------------------

--
-- Table structure for table `sanctions`
--

DROP TABLE IF EXISTS `sanctions`;
CREATE TABLE IF NOT EXISTS `sanctions` (
  `sanctionID` int NOT NULL AUTO_INCREMENT,
  `sanction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sanctionID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sanctions`
--

INSERT INTO `sanctions` (`sanctionID`, `sanction`) VALUES
(1, 'Pagpapa-alaala'),
(2, 'Pagkumpiska at pagpapatawag sa magulang'),
(3, 'Pagdaan sa Programang Paggabay (Counseling)'),
(4, 'Pagpasok sa Interbensyon at Programang Paggabay'),
(5, 'Di-pagpasa sa mga asignatura dahil sa di pagpasok'),
(6, 'Pagpapatawag at pagpapaliwanag ng magulang'),
(7, 'Pagpapataw ng karampatang parusa na naaayon sa polisiya at batas'),
(8, 'Suspensiyon na di lalampas ng limang araw'),
(9, 'Suspensiyon na di lalampas ng limang araw at pagpasok sa Interbensyon at Programang Paggabay kasama ang magulang'),
(10, 'Ekspulsyon at di iisyuhan ng Certificate of Good Moral Character'),
(11, 'Pananagot sa Juvenile Delinquency Act of 2006 o RA 9344'),
(12, 'Paglilinis o pagpipintura ng lugar na dinumihan o sinulatan'),
(13, 'Paglilinis ng palikuran'),
(14, 'Pagpapalit o pagbabayad ng halaga ng nasirang kagamitan'),
(15, 'Pagpapasauli ng mga gamit na hiniram'),
(16, 'Pagpapalit o pagbabayad ng halaga ng di-naisauling LM o kagamitan'),
(17, 'Pagpapatawag at pagpapaliwanag ng magulang, suspensiyon na di lalampas ng limang araw, at pagbabayad ng danyos'),
(18, 'Ekspulsyon at di iisyuhan ng Certificate of Good Moral Character at pananagot sa Batas ng Cyber Bullying kung kinakailangan'),
(19, 'Pananagot sa R.A. 9344'),
(20, 'Pananagot sa Batas na naaayon sa DSWD');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
CREATE TABLE IF NOT EXISTS `student_info` (
  `studentID` int NOT NULL AUTO_INCREMENT,
  `learnerReferenceNumber` BIGINT DEFAULT NULL,
  `gradeLevel` enum('grade 7', 'grade 8', 'grade 9', 'grade 10', 'grade 11', 'grade 12'),
  `lastName` varchar(250) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `middleName` varchar(250) NOT NULL,
  `extensionName` varchar(50) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL,
  `presentAddress` varchar(250) NOT NULL,
  `permanentAddress` varchar(250) NOT NULL,
  `civilStatus` enum('single','taken','married','divorce','widowed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `religion` varchar(250) NOT NULL,
  `contactNumber` varchar(50) NOT NULL,
  `emailAddress` varchar(250) NOT NULL,
  `motherLastName` varchar(250) NOT NULL,
  `motherFirstName` varchar(250) NOT NULL,
  `motherMiddleName` varchar(250) NOT NULL,
  `motherMaidenName` varchar(250) NOT NULL,
  `motherContactNumber` varchar(50) NOT NULL,
  `fatherLastName` varchar(250) NOT NULL,
  `fatherFirstName` varchar(250) NOT NULL,
  `fatherMiddleName` varchar(250) NOT NULL,
  `fatherExtensionName` varchar(250) NOT NULL,
  `fatherContactNumber` varchar(50) NOT NULL,
  `articleID` int NOT NULL,
  `articleSectionID` int NOT NULL,
  `sanctionID` int NOT NULL,
  PRIMARY KEY (`studentID`),
  KEY `article_index` (`articleID`),
  KEY `sanction_index` (`sanctionID`),
  KEY `section_index` (`articleSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articlesections`
--
ALTER TABLE `articlesections`
  ADD CONSTRAINT `articlesections_ibfk_1` FOREIGN KEY (`articleID`) REFERENCES `articles` (`articleID`);

--
-- Constraints for table `student_info`
--
ALTER TABLE `student_info`
  ADD CONSTRAINT `student_info_ibfk_1` FOREIGN KEY (`articleID`) REFERENCES `articles` (`articleID`),
  ADD CONSTRAINT `student_info_ibfk_2` FOREIGN KEY (`articleSectionID`) REFERENCES `articlesections` (`articleSectionID`),
  ADD CONSTRAINT `student_info_ibfk_3` FOREIGN KEY (`sanctionID`) REFERENCES `sanctions` (`sanctionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
