-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-12-2023 a las 17:24:00
-- Versión del servidor: 5.5.62-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdcontrolasistenciasalas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE IF NOT EXISTS `carreras` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `estado`) VALUES
(1, 'INGENIERÃA DE SISTEMAS', 1),
(2, 'INGENIERÃA DE ALIMENTOS', 1),
(3, 'CONTADURÃA PÃšBLICA', 1),
(4, 'ADMINISTRACIÃ“N DE EMPRESAS', 1),
(5, 'TRABAJO SOCIAL', 1),
(6, 'TECNOLOGÃA EN DESARROLLO DE SOFTWARE', 1),
(7, 'TECNOLOGÃA EN ELECTRÃ“NICA', 1),
(8, 'TECNOLOGÃA EN ALIMENTOS', 1),
(9, 'CONSTRUCCIÃ“N', 1),
(10, 'NUTRICIÃ“N Y DIETÃ‰TICA', 1),
(11, 'TECNOLOGÃA EN SISTEMAS DE INFORMACIÃ“N', 1),
(20, 'ESPECIALIZACIÃ“N EN CALIDAD DE LA GESTIÃ“N Y PRODUCTIVIDAD', 1),
(30, 'MAESTRÃA EN ADMINISTRACIÃ“N', 1),
(31, 'MAESTRÃA EN GERENCIA DE PROYECTOS', 1),
(110, 'NO APLICA - DOCENTE', 1),
(120, 'NO APLICA - FUNCIONARIO', 1),
(130, 'NO APLICA - NO REGISTRADO', 1),
(131, 'prueba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE IF NOT EXISTS `configuracion` (
`id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `telefono`, `email`, `direccion`) VALUES
(1, 'UNIVERSIDAD', '2241816', 'recursostecnologicos.tulua@correounivalle.edu.co', 'Tulua - Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
`id` int(20) NOT NULL,
  `codigo` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL COMMENT 'Código',
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `identificacion` varchar(15) COLLATE utf8_spanish_ci NOT NULL COMMENT 'identificación',
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Dirección de Correo',
  `estado` int(11) NOT NULL DEFAULT '1',
  `id_carrera` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `metodo_hash` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'Metodo Hash',
  `clave` text COLLATE utf8_spanish_ci COMMENT 'Clave'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `codigo`, `nombre`, `apellido`, `identificacion`, `direccion`, `estado`, `id_carrera`, `id_nivel`, `metodo_hash`, `clave`) VALUES
(9, '201255414-3753', 'JHON EDINSON', 'BLANDON QUINTERO', '1234567', 'jhon.blandon@correounivalle.edu.co', 0, 1, 10, 'MD5', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE IF NOT EXISTS `eventos` (
  `TimeStamp` datetime DEFAULT NULL,
  `Host` tinytext,
  `Ip` varchar(15) DEFAULT NULL,
  `Machine` tinytext,
  `Message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`TimeStamp`, `Host`, `Ip`, `Machine`, `Message`) VALUES
('2023-11-30 15:24:36', 'PRISALSIS0130', '172.16.0.40', 'PRISALSIS0130', '[9] Logon user: 201255414-3743'),
('2023-11-30 15:25:56', 'PRISALSIS0130', '172.16.0.40', 'PRISALSIS0130', '[9] Logoff user: 201255414-3743'),
('2023-11-30 17:16:54', 'Pruebas', '192.168.14.45', 'PRUEBAS', '[8] Logoff user: --Unknown--');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
`grupo_id` bigint(20) NOT NULL,
  `grupo_nombre` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`grupo_id`, `grupo_nombre`) VALUES
(2, 'Docentes'),
(1, 'Estudiantes'),
(3, 'Funcionarios'),
(4, 'Invitados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE IF NOT EXISTS `niveles` (
`id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id`, `nombre`, `estado`) VALUES
(1, '01', 1),
(2, '02', 1),
(3, '03', 1),
(4, '04', 1),
(5, '05', 1),
(6, '06', 1),
(7, '07', 1),
(8, '08', 1),
(9, '09', 1),
(10, '10', 1),
(110, 'NO APLICA - DOCENTE', 1),
(120, 'NO APLICA - FUNCIONARIO', 1),
(130, 'NO REGISTRADO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE IF NOT EXISTS `sesion` (
`dbid` bigint(20) NOT NULL,
  `loginstamp` datetime NOT NULL,
  `logoutstamp` datetime NOT NULL,
  `username` text NOT NULL,
  `machine` text NOT NULL,
  `ipaddress` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`dbid`, `loginstamp`, `logoutstamp`, `username`, `machine`, `ipaddress`) VALUES
(1, '2023-11-30 15:24:36', '2023-11-30 15:25:56', '201255414-3743', 'PRISALSIS0130', '172.16.0.40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`idusuario` int(11) NOT NULL,
  `codigo` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Código ó Cédula',
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `perfil` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `codigo`, `nombre`, `correo`, `clave`, `direccion`, `perfil`, `estado`) VALUES
(1, '94475125', 'PEDRO PABLO BERMUDEZ MEDINA', 'pedro@gmail.com', '$2y$10$rOqp0/CIOKio4RyAAlaHK.xYtjO4b4w6QBM3I6LGQagCA5zy4LZmW', 'address', '1', 1),
(2, '9931160', 'UNIVERSIDAD DEL VALLE', 'recursostecnologicos.tulua@correounivalle.edu.co', '$2y$10$rOqp0/CIOKio4RyAAlaHK.xYtjO4b4w6QBM3I6LGQagCA5zy4LZmW', 'home', '1', 1),
(3, '200359083', 'KAREN LIZETH QUINTERO FRANCO', 'karen@gmail.com', '$2y$10$rOqp0/CIOKio4RyAAlaHK.xYtjO4b4w6QBM3I6LGQagCA5zy4LZmW', 'CRA 39', '2', 1),
(4, '1234567', 'JHON EDINSON BLANDON', 'jhon@gmail.com', '$2y$10$PmOVl3JWr2iscvXNLy5HA.gJQjJaRUkb1P/sZD4snMv.IzTv0Bjwm', 'Principe', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariogrupo`
--

CREATE TABLE IF NOT EXISTS `usuariogrupo` (
  `grupo_id` bigint(20) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuariogrupo`
--

INSERT INTO `usuariogrupo` (`grupo_id`, `id`) VALUES
(3, 1),
(3, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
 ADD PRIMARY KEY (`codigo`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_carrera` (`id_carrera`), ADD KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
 ADD PRIMARY KEY (`grupo_id`), ADD UNIQUE KEY `grupo_nombre` (`grupo_nombre`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
 ADD KEY `dbid` (`dbid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `codigo` (`codigo`), ADD KEY `codigo_2` (`codigo`);

--
-- Indices de la tabla `usuariogrupo`
--
ALTER TABLE `usuariogrupo`
 ADD PRIMARY KEY (`id`,`grupo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
MODIFY `grupo_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT de la tabla `sesion`
--
ALTER TABLE `sesion`
MODIFY `dbid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `niveles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
