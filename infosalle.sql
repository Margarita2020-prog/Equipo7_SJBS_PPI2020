-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: byffdb4zjrz0bsnbxn65-mysql.services.clever-cloud.com:3306
-- Generation Time: Nov 11, 2020 at 02:14 AM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byffdb4zjrz0bsnbxn65`
--
CREATE DATABASE IF NOT EXISTS `byffdb4zjrz0bsnbxn65` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `byffdb4zjrz0bsnbxn65`;

-- --------------------------------------------------------

--
-- Table structure for table `acudiente`
--

CREATE TABLE `acudiente` (
  `doc_acu` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acud_not`
--

CREATE TABLE `acud_not` (
  `doc_acu` int(25) NOT NULL,
  `nota` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `doc_est` varchar(100) NOT NULL,
  `id_mat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `estudiante`
--

CREATE TABLE `estudiante` (
  `docente` varchar(100) NOT NULL,
  `id_grupo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `est_acu`
--

CREATE TABLE `est_acu` (
  `doc_est` int(25) NOT NULL,
  `doc_acu` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `id_mat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notificacion`
--

CREATE TABLE `notificacion` (
  `id_not` int(5) NOT NULL,
  `doc_rec` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prof_mat`
--

CREATE TABLE `prof_mat` (
  `id_mat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rector`
--

CREATE TABLE `rector` (
  `doc_rec` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acudiente`
--
ALTER TABLE `acudiente`
  ADD PRIMARY KEY (`doc_acu`);

--
-- Indexes for table `acud_not`
--
ALTER TABLE `acud_not`
  ADD KEY `doc_acu` (`doc_acu`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`doc_est`),
  ADD KEY `id_mat` (`id_mat`);

--
-- Indexes for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`docente`),
  ADD KEY `id_grupo` (`id_grupo`);

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_mat`);

--
-- Indexes for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`id_not`),
  ADD KEY `doc_rec` (`doc_rec`);

--
-- Indexes for table `prof_mat`
--
ALTER TABLE `prof_mat`
  ADD KEY `id_mat` (`id_mat`);

--
-- Indexes for table `rector`
--
ALTER TABLE `rector`
  ADD PRIMARY KEY (`doc_rec`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acud_not`
--
ALTER TABLE `acud_not`
  ADD CONSTRAINT `acud_not_ibfk_1` FOREIGN KEY (`doc_acu`) REFERENCES `acudiente` (`doc_acu`);

--
-- Constraints for table `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_mat`) REFERENCES `materias` (`id_mat`);

--
-- Constraints for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`);

--
-- Constraints for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`doc_rec`) REFERENCES `rector` (`doc_rec`);

--
-- Constraints for table `prof_mat`
--
ALTER TABLE `prof_mat`
  ADD CONSTRAINT `prof_mat_ibfk_1` FOREIGN KEY (`id_mat`) REFERENCES `materias` (`id_mat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
