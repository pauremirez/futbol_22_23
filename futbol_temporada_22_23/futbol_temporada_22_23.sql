-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 18, 2023 at 11:03 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futbol_temporada_22_23`
--
CREATE DATABASE IF NOT EXISTS `futbol_temporada_22_23` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `futbol_temporada_22_23`;

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `localidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `foto_escudo` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `localidad`, `foto_escudo`) VALUES
(1, 'C.A. Osasuna', 'Pamplona (Navarra)', '/osasuna/escudo/osasuna.png'),
(2, 'Athletic Club', 'Bilbao (Vizcaya)', '/athletic/escudo/athletic.png');

-- --------------------------------------------------------

--
-- Table structure for table `equipo_tiene_plantilla`
--

CREATE TABLE `equipo_tiene_plantilla` (
  `id_equipo` int(11) NOT NULL,
  `id_plantilla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `equipo_tiene_plantilla`
--

INSERT INTO `equipo_tiene_plantilla` (`id_equipo`, `id_plantilla`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58);

-- --------------------------------------------------------

--
-- Table structure for table `plantilla`
--

CREATE TABLE `plantilla` (
  `id_plantilla` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dorsal` int(2) DEFAULT NULL,
  `foto` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `plantilla`
--

INSERT INTO `plantilla` (`id_plantilla`, `nombre`, `fecha_nacimiento`, `nacionalidad`, `dorsal`, `foto`, `posicion`) VALUES
(1, 'Unai Simón', '1997-06-11', 'Española', 1, '/athletic/porteros/unai-simon-mendibil.png', 1),
(2, 'Julen Aguirrezabala', '2000-12-26', 'Española', 13, '/athletic/porteros/julen-agirrezabala-astulez.png.png', 1),
(3, 'Ander Iruarrizaga', '1998-08-22', 'Española', 35, '/athletic/porteros/ander-iruarrizaga-diez.png', 1),
(4, 'Daniel Vivian', '1999-07-05', 'Española', 3, '/athletic/defensas/daniel-vivian-moreno.png', 2),
(5, 'Iñigo Martínez', '1991-05-17', 'Española', 4, '/athletic/defensas/inigo-martinez-berridi.png', 2),
(6, 'Yeray Álvarez', '1995-01-24', 'Española', 5, '/athletic/defensas/yeray-alvarez-lopez.png', 2),
(7, 'Iñigo Lekue', '1993-05-04', 'Española', 15, '/athletic/defensas/inigo-lekue-martinez.png', 2),
(8, 'Yuri Berchiche', '1990-02-10', 'Española', 17, '/athletic/defensas/yuri-berchiche-izeta.png', 2),
(9, 'Óscar de Marcos', '1989-04-14', 'Española', 18, '/athletic/defensas/oscar-de-marcos-arana.png', 2),
(10, 'Ander Capa', '1992-02-08', 'Española', 21, '/athletic/defensas/ander-capa-rodriguez.png', 2),
(13, 'Mikel Balenziaga', '1988-02-29', 'Española', 24, '/athletic/defensas/mikel-balenziaga-oruesagasti.png', 2),
(14, 'Aitor Paredes', '2000-04-29', 'Española', 31, '/athletic/defensas/aitor-paredes-casamichana.png', 2),
(15, 'Mikel Vesga', '1993-04-08', 'Española', 6, '/athletic/centrocampistas/mikel-vesga-arruti.png', 3),
(16, 'Oihan Sancet', '2000-04-25', 'Española', 8, '/atheltic/centrocampistas/oihan-sancet-tirapu.png', 3),
(17, 'Daniel García Carrillo', '1990-05-24', 'Española', 14, '/athletic/centrocampistas/daniel-garcia-carrillo.png', 3),
(18, 'Unai Vencedor', '2000-11-15', 'Española', 16, '/athletic/centrocampistas/unai-vencedor-paris.png', 3),
(19, 'Oier Zarraga', '1999-01-04', 'Española', 19, '/athletic/centrocampistas/oier-zarraga-egana.png', 3),
(20, 'Raúl García', '1986-07-11', 'Española', 22, '/athletic/delanteros/raul-garcia-escudero.png', 4),
(21, 'Ander Herrera', '1986-08-14', 'Española', 23, '/athletic/centrocampistas/ander-herrera-aguera.png', 3),
(22, 'Jon Morcillo', '1998-09-15', 'Española', 2, '/athletic/delanteros/jon-morcillo-conesa.png', 4),
(23, 'Alejandro Berenguer', '1995-07-04', 'Española', 7, '/athletic/delanteros/alejandro-berenguer-remiro.png', 4),
(24, 'Iñaki Williams', '1994-06-15', 'Ghana', 9, '/athletic/delanteros/inaki-williams-arthuer.png', 4),
(25, 'Iker Muniain', '1992-12-19', 'Española', 10, '/athletic/centrocampistas/iker-muniain-goni.png', 3),
(26, 'Nicholas Williams Arthuer', '2002-07-12', 'Española', 11, '/athletic/delanteros/nicholas-williams-arthuer.png', 4),
(27, 'Gorka Guruzeta', '1996-09-12', 'Española', 12, '/athletic/delanteros/gorka-guruzeta-rodriguez.png', 4),
(28, 'Malcom Abdulai Ares (Adu)', '2001-10-13', 'Española', 29, '/athletic/delanteros/malcom-adu-ares-djalo.png', 4),
(29, 'Ernesto Valverde', '1964-02-09', 'Española', NULL, '/athletic/entrenadores/ernesto-valverde.jpeg', 5),
(30, 'Jon Iñaki Aspiazu', '1962-11-05', 'Española', NULL, '/athletic/entrenadores/jon-inaki-aspiazu.jpeg', 5),
(31, 'Isusko Ortuzar', '1900-01-01', 'Española', NULL, '/athletic/staff_tecnico/isusko-ortuzar.jpeg', 6),
(32, 'Joseba Arrasate', '1978-04-22', 'Española', 0, '/osasuna/entrenadores/jagoba-arrasate.png', 5),
(33, 'Bittor Alkiza', '1970-10-26', 'Española', NULL, '/osasuna/entrenadores/alkiza.png', 5),
(34, 'Sergio Herrera', '1993-06-05', 'Española', 1, '/osasuna/porteros/sergio-herrera.png', 1),
(35, 'Aitor Fernández', '1991-05-03', 'Española', 25, '/osasuna/porteros/aitor-fernandez.png', 1),
(36, 'Darío Ramos', '1999-10-19', 'Española', 39, '/osasuna/porteros/dario.png', 1),
(37, 'Nacho Vidal', '1995-01-24', 'Española', 2, '/osasuna/defensas/nacho-vidal.png', 2),
(38, 'Juan Cruz', '1992-07-28', 'Española', 3, '/osasuna/defensas/juan-cruz.png', 2),
(39, 'Unai García', '1992-02-03', 'Española', 4, '/osasuna/defensas/unai-garcia.png', 2),
(40, 'David García', '1994-02-14', 'Española', 5, '/osasuna/defensas/david-garcia.png', 2),
(41, 'Manu Sánchez', '2000-08-24', 'Española', 20, '/osasuna/defensas/manu-sanchez.png', 2),
(42, 'Aridane Hernández', '1989-03-23', 'Española', 23, '/osasuna/defensas/aridane-hernandez.png', 2),
(43, 'Jorge Herrando', '2001-02-28', 'Española', 31, '/osasuna/defensas/jorge-herrando.png', 2),
(44, 'Diego Moreno', '2001-06-21', 'Española', 35, '/osasuna/defensas/diego-moreno.png', 2),
(45, 'Lucas Torró', '1994-07-19', 'Española', 6, '/osasuna/centrocampistas/lucas-torro.png', 3),
(46, 'Jon Moncayola', '1998-05-13', 'Española', 7, '/osasuna/centrocampistas/jon-moncayola.png', 3),
(47, 'Darko Brasanac', '1992-02-12', 'Española', 8, '/osasuna/centrocampistas/darko-brasanac.png', 3),
(48, 'Moi Gómez', '1994-06-23', 'Española', 16, '/osasuna/centrocampistas/moi-gomez.png', 3),
(49, 'Pablo Ibañez', '1998-09-20', 'Española', NULL, '/osasuna/centrocampistas/pablo-ibanez.png', 3),
(50, 'Chimy Ávil', '1994-02-06', 'Argentina', 9, '/osasuna/delanteros/chimy-avila.png', 4),
(51, 'Kike Barja', '1997-04-01', 'Española', 11, '/osasunas/delanteros/kike-barja.png', 4),
(52, 'Abde Ezzalzouli', '2001-12-17', 'Marroquí', 12, '/osasuna/delanteros/adbe-ezzalzouli.png', 4),
(53, 'Rubén García', '1993-07-14', 'Española', 14, '/osasuna/delanteros/ruben-garcia.png', 4),
(54, 'Ruben Peña', '1991-07-18', 'Española', 15, '/osasuna/delanteros/ruben-pena.png', 4),
(55, 'Ante Budimir', '1991-07-22', 'Española', 17, '/osasuna/delanteros/ante-budimir.png', 4),
(56, 'Aimar Oroz', '2001-11-27', 'Española', 22, '/osasuna/delanteros/aimar-oroz.png', 4),
(57, 'Iker Benito Sánchez', '2002-08-10', 'Española', 33, '/osasuna/delantros/iker-benito-sanchez.png', 4),
(58, 'Unai Miqueleiz', '1900-01-01', 'Española', NULL, '/osasuna/staff_tecnico/unai-miqueleiz.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `posiciones`
--

CREATE TABLE `posiciones` (
  `id_posicion` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `posiciones`
--

INSERT INTO `posiciones` (`id_posicion`, `descripcion`) VALUES
(1, 'Portero'),
(2, 'Defensa'),
(3, 'Centrocampista'),
(4, 'Delantero'),
(5, 'Entrenador'),
(6, 'Staff técnico');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indexes for table `equipo_tiene_plantilla`
--
ALTER TABLE `equipo_tiene_plantilla`
  ADD PRIMARY KEY (`id_equipo`,`id_plantilla`),
  ADD KEY `id_plantilla` (`id_plantilla`);

--
-- Indexes for table `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id_plantilla`),
  ADD KEY `posicion` (`posicion`);

--
-- Indexes for table `posiciones`
--
ALTER TABLE `posiciones`
  ADD PRIMARY KEY (`id_posicion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id_plantilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `posiciones`
--
ALTER TABLE `posiciones`
  MODIFY `id_posicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipo_tiene_plantilla`
--
ALTER TABLE `equipo_tiene_plantilla`
  ADD CONSTRAINT `equipo_tiene_plantilla_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `equipo_tiene_plantilla_ibfk_2` FOREIGN KEY (`id_plantilla`) REFERENCES `plantilla` (`id_plantilla`);

--
-- Constraints for table `plantilla`
--
ALTER TABLE `plantilla`
  ADD CONSTRAINT `plantilla_ibfk_1` FOREIGN KEY (`posicion`) REFERENCES `posiciones` (`id_posicion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
