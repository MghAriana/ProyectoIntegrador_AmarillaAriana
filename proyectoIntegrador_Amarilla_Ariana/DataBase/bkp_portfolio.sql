-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 11:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkp_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `descripcione`, `nombree`) VALUES
(1, 'Cursito', 'Argentina Programa');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcione`, `nombree`) VALUES
(2, 'Developer', 'NTTData');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(45) DEFAULT NULL,
  `esTrabajoActual` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hys`
--

CREATE TABLE `hys` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `porcentaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hys`
--

INSERT INTO `hys` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'HTML', 99),
(2, 'Javascript', 80),
(3, 'Angular', 75),
(4, 'Springboot', 60);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `domicilio` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `sobre_mi` varchar(200) DEFAULT NULL,
  `url_foto` varchar(100) DEFAULT NULL,
  `img` varchar(40) DEFAULT NULL,
  `descripcion` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `domicilio`, `fechaNac`, `telefono`, `correo`, `sobre_mi`, `url_foto`, `img`, `descripcion`) VALUES
(1, 'Ariana', 'Amarilla', NULL, NULL, NULL, NULL, NULL, NULL, 'asdasd', ''),
(4, 'ignacio', 'Alvai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_empleo`
--

CREATE TABLE `tipo_empleo` (
  `id` int(11) NOT NULL,
  `nombre_tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'user@user.com', 'user', 'user', '$2a$10$I.gphbqueDUBhitzxsizI.sUWANg/wth32VzguBp6HcfwnliZMSqu'),
(2, 'admin@admin.com', 'admin', 'admin', '$2a$10$BeDfjeuspQso/9t/UK.roOMvJ5RRwQH2YA.PMp9YhxhdCHU1TM7xy');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(1, 2),
(2, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hys`
--
ALTER TABLE `hys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_empleo`
--
ALTER TABLE `tipo_empleo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hys`
--
ALTER TABLE `hys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
