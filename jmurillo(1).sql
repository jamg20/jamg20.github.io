-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:5060
-- Tiempo de generación: 01-04-2025 a las 19:27:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jmurillo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_user`
--

CREATE TABLE `estado_user` (
  `id_estado_user` int(11) NOT NULL,
  `estado_usuario` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_user`
--

INSERT INTO `estado_user` (`id_estado_user`, `estado_usuario`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios_user`
--

CREATE TABLE `privilegios_user` (
  `id_privilegios` int(11) NOT NULL,
  `nombre_privilegio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `privilegios_user`
--

INSERT INTO `privilegios_user` (`id_privilegios`, `nombre_privilegio`) VALUES
(1, 'Administrador'),
(2, 'Gerencia'),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  `contraseña_usuario` varchar(255) DEFAULT NULL,
  `id_privilegios` int(11) DEFAULT NULL,
  `id_estado_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `contraseña_usuario`, `id_privilegios`, `id_estado_user`) VALUES
(1, 'jmurillo', '06333f12a6', 1, 1),
(16, 'beto', '45215189', 2, 1),
(17, 'zaira', '45215189', 3, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estado_user`
--
ALTER TABLE `estado_user`
  ADD PRIMARY KEY (`id_estado_user`);

--
-- Indices de la tabla `privilegios_user`
--
ALTER TABLE `privilegios_user`
  ADD PRIMARY KEY (`id_privilegios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_estado_user` (`id_estado_user`),
  ADD KEY `id_privilegios` (`id_privilegios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estado_user`
--
ALTER TABLE `estado_user`
  MODIFY `id_estado_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `privilegios_user`
--
ALTER TABLE `privilegios_user`
  MODIFY `id_privilegios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_privilegios`) REFERENCES `privilegios_user` (`id_privilegios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_estado_user`) REFERENCES `estado_user` (`id_estado_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
