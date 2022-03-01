-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2022 a las 19:58:34
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entries`
--

CREATE TABLE `entries` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `email`, `password`, `fecha`) VALUES
(1, 'Ronaldo', 'Nazario', 'ronaldo@nazario.com', 'ronaldo1234', '0000-00-00'),
(3, 'James', 'Rodriguez', 'james@james.com', 'james1234', '2022-04-04'),
(4, 'Iker', 'Muniain', 'iker@bilbao.com', 'iker1234', '2022-02-03'),
(5, 'Antoine', 'Griezmann', 'antoine@griezmann.com', '$2y$04$lPojSDkMOwXGGQ5u1pepI.3Tgi.2KWNCRW.sTwsSqOIXF.b6ero3y', '2022-02-22'),
(6, '\"xavi\"', '\"hernandez\"', 'xavi@hernandez.es', '$2y$04$8667IrWqZOi//vA5wY2YeuNYEXDDv1Y9/KKfQv0tpYcu1kSVcy.Cq', '2022-02-22'),
(8, '\"xavii\"', '\"hernandez\"', 'xavi@hernandez.com', '$2y$04$DSHWdY3ujOEl1dqw5.XehuKaVF56kzxNu2mJnZ.mMG/WDgCKpGY72', '2022-02-22'),
(9, 'luis', 'rede', 'luis@hook.es', '$2y$04$CYbqRkFLUIlQP0Crksb3MOqZentkBnWF2.S.z2J8ZN24q8wCj6BcK', '2022-02-22'),
(10, 'felicidad\"', 'carrasco', 'carrasco@gyu.com', '$2y$04$Eq8NTsj7YqZl81lOI6S0deZsrZTMtyOw97vkjFH6C1naXy/RYCJAy', '2022-02-22'),
(12, '\"dollar\"', 'account', 'dollar@account.com', '$2y$04$DUvasgijR4w8BiRWnD.eYe7k6bKIE6oXejeJvU62Q1f/lu7k/5A1e', '2022-02-22'),
(13, 'zlatan', 'ibrahimovic', 'zlatan@zlatan.com', '$2y$04$cFZJ9N2jBWIx4KDtYJgLaOGGPfvHvbuj/0IDujNq8yxDKVq/IGKtW', '2022-02-22'),
(14, 'ronaldinho', 'gaucho', 'ronaldinho@gaucho.com', '$2y$04$MKJLI654NzOzhLOflc7wLOgYjpzrS7vjY6.uiDlbnuobg6V/oR06m', '2022-02-22'),
(15, 'neymar', 'junior', 'neymar@neymar.com', '$2y$04$NhCU.TRNzHAKB7FuaCBp0eRmcfoAcJEs4yqLhh0zkZYKyqjs54Fby', '2022-02-22'),
(16, 'vladimir', 'Puttin', 'vladi@puttin.com', '$2y$04$HStxWc6n9oVQeEQ.adKQnOm0NKW0PbJ.GKg5k7MtPNWfL8wPQo4Ga', '2022-02-27'),
(17, 'jose maria', 'Jimenez', 'josema@jimenez.com', '$2y$04$bf.n.Mgf.bJwrB.pWftSaOdwJ/Ahwqhn1pR2L76PqwydbKoyqmB3S', '2022-02-28'),
(18, 'javier', 'mascherano', 'javi@masche.com', '$2y$04$92Vm/tFzkjmtKodzqV/VvuEZXcw.XAohWearRNj1QqCiG.Jt5LOmu', '2022-02-28'),
(19, 'francesco', 'totti', 'francesco@gmail.com', '$2y$04$YT9Xj2p0tGpTmQ.kW8ANOugbfKNs2jhbbfjE/YvcxLxjfwzCerRSq', '2022-02-28'),
(20, 'resino', 'jimenez', 'resino@jminez.com', '$2y$04$eZQtxOyNMmHZVy4JT65QK.aOyOEGT4UupYG.n.55U.4ckYst3lev6', '2022-02-28'),
(21, 'pepe', 'fernandez', 'pepe@frndz.es', '$2y$04$NFB7adf/LJqxA3VkAY4VLewvDfh1w88pzLjcyiXb4TfQPDugrTAzG', '2022-02-28'),
(22, 'jose maria', 'quesada', 'jsmaria@qsada.com', '$2y$04$.tRrtszUtgB3mK4zPbJt7u9oSARz99n3NA6epsg.7D/q81M4IS/aq', '2022-02-28'),
(23, 'juan', 'Restrepo', 'juan@rstrepo.com', '$2y$04$TIY0otw.wl4RrjbxKmzRl.CLnKN.88QiiKg7h/LV5TvxO2RvwTNki', '2022-02-28'),
(24, 'reinaldo', 'rueda', 'reinaldo@rueda.com', '$2y$04$LOddWMwsNxrp1YOM7G/F1ectIPQsKhinazSnkxgP6cCIrTvQvYeNq', '2022-02-28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_entries_user` (`usuario_id`),
  ADD KEY `fk_entries_categories` (`categoria_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_entries_categories` FOREIGN KEY (`categoria_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_entries_user` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
