-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2021 a las 21:36:16
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
(1, 'a', 'a', 'aa', 'a@a.com', 'a', 'a', '$2y$10$K1SKl5YlmWCHK0STlCfkaeFWz4RQBtpoj3EiGcwIFFLnQUzOb4fti', '2021-06-24 15:02:48'),
(2, 'steph', 't', 'prueba', 'sample@sample.com', 'prueba', 'prueba', '$2y$10$VKuNKDPCseSTCW1GSXIc1Ou0ObOJELw6fjGESzhMnsC10yJrj4RVi', '2021-06-25 14:35:05'),
(3, 'Stephanie', 'Tejeira', 'stejeira', 'phaniehuehue@gmail.com', 'a', 'a', '$2y$10$lUsE/HU1OiyK6TypoDkzc.Hcb5JYAc1/IHuT84qI31x/Opk8JROaK', '2021-06-30 08:52:17'),
(4, 'prueba', 'prueba', 'prueba1', 'prueba@prueba.com', 'prueba', 'prueba', '$2y$10$p5fZ9IEoenbGjMZ2MqNrp.kETzr9wiskTvuIB9ZSI8EwhBVzE/TMO', '2021-07-01 10:37:58'),
(5, 'registro', 'registro', 'registro', 'registro@registro.com', 'registro', 'registro', '$2y$10$6yNIqpLUAZqBpWiy08j/3.zFbQfuGp0YPiCZAZccY3RoeIxPXf9S6', '2021-07-01 10:42:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nom` varchar(100) NOT NULL,
  `apell` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `direc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`, `nom`, `apell`, `cargo`, `direc`) VALUES
(1, 'stejeira', '$2y$10$4UXyfINRZ8FY2AmIrnNiHeQ3IxaIpNosHkiIzXGaPeYhy2yFGCmNu', 'phaniehuehue@gmail.com', '2021-07-02 18:54:52', '', '', '', ''),
(2, 'stejeira2', '$2y$10$9exG/90NVV0M/dZC9Uv6GeiSkLjvHoaA3awyEDU0/aKOr.6wA9QKe', 'phaniehuehue2@gmail.com', '2021-07-02 18:56:20', '', '', '', ''),
(3, 'stejeiraa', '$2y$10$z48pdWZRPGABs7.5JH/Hi.VRk44h6UhnPxUCu.ptXxmwHZ8O9jEVC', 'stephyteji@gmail.com', '2021-07-02 18:59:48', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `apell` varchar(255) DEFAULT NULL,
  `username` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `cargo` varchar(300) DEFAULT NULL,
  `direc` varchar(300) DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indices de la tabla `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
