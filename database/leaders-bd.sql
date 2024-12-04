-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 04, 2024 at 10:38 AM
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
-- Database: `leadersmoyenne`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `ID_Etudiant` int NOT NULL AUTO_INCREMENT COMMENT 'this is the student ID auto incremented',
  `Nom_Etudiant` varchar(30) NOT NULL COMMENT 'this the student name varchar of length 30',
  `Prenom_Etudiant` varchar(30) NOT NULL COMMENT 'this is the student surname varchar of length 30',
  `Email` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Etudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`ID_Etudiant`, `Nom_Etudiant`, `Prenom_Etudiant`, `Email`) VALUES
(1, 'etu1', 'prenom1', 'flanfoulani@email.com'),
(2, 'etu2', 'prenom2', 'foulaniflan@email.com'),
(3, 'etu3', 'prenom3', 'somedudes@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `Id_Matiere` int NOT NULL AUTO_INCREMENT,
  `Nom_Matiere` varchar(30) NOT NULL,
  `Coeff` float NOT NULL,
  PRIMARY KEY (`Id_Matiere`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`Id_Matiere`, `Nom_Matiere`, `Coeff`) VALUES
(1, 'mat1', 1),
(2, 'mat2', 2),
(3, 'mat3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `ID_Etudiant` int NOT NULL,
  `id_Matiere` int NOT NULL,
  `note` float DEFAULT NULL,
  PRIMARY KEY (`ID_Etudiant`,`id_Matiere`),
  KEY `id_Matiere` (`id_Matiere`)
) ;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`ID_Etudiant`, `id_Matiere`, `note`) VALUES
(1, 1, 10.5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
