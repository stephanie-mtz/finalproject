-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2021 a las 23:44:27
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `muci`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_user`
--

CREATE TABLE `reg_user` (
  `id` int(11) NOT NULL,
  `nomb` varchar(255) NOT NULL,
  `apell` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `direc` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reg_user`
--

INSERT INTO `reg_user` (`id`, `nomb`, `apell`, `username`, `email`, `direc`, `cargo`, `password`, `fecha`) VALUES
(1, 'a', 'a', 'aa', 'a@a.com', 'a', 'a', '$2y$10$Lbl3sX5RGmqM.Z3Z1UIvy.RRAnKpga3Aoyg7XjVfXMMd5QdkD0Bi6', '2021-06-24 15:02:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reg_user`
--
ALTER TABLE `reg_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
