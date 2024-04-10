-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-04-2024 a las 18:46:05
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
(131, 'prueba', 0),
(132, 'TECNOLOGÃA EN ELECTRÃ“NICA INDUSTRIAL ', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `codigo`, `nombre`, `apellido`, `identificacion`, `direccion`, `estado`, `id_carrera`, `id_nivel`, `metodo_hash`, `clave`) VALUES
(1, '201255414-3743', 'JHON EDINSON nnn', 'BLANDON QUINTERO', '1234567', 'jhon.blandon@correounivalle.edu.co', 1, 1, 10, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(5, '209011321', 'Lionel', 'Messi', '209011321', 'lionel.messi@correounivalle.edu.co', 1, 1, 5, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(6, '209012345', 'Diego', 'Maradona', '1113456789', 'diego.maradona@correounivalle.edu.co', 1, 2, 2, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(8, '2090147357', 'Zinedine', 'Zidane', '1114357123', 'zinedine.zidane@correounivalle.edu.co', 1, 4, 5, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(9, '2090154763', 'Paolo', 'Maldini', '1113845168', 'paolo.maldini@correounivalle.edu.co', 1, 3, 6, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(16, '2090337854', 'Philipp', 'Lahm', '1117974315', 'philipp.lahm@correounivalle.edu.co', 1, 3, 9, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(11, '2090366741', 'Dani', 'Alves', '1115448963', 'dani.alves@correounivalle.edu.co', 1, 2, 3, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(7, '2090369258', 'Cristiano', 'Ronaldo', '1116741852', 'cristiano.ronaldo@corrreounivalle.edu.co', 1, 132, 1, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(15, '2090444971', 'Wayne ', 'Rooney', '1118397490', 'wayne.rooney@correounivalle.edu.co', 1, 4, 7, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(4, '209044654', 'Marcus Aurelius', 'Antoninus', '1115789123', 'marcus.aurelius.antoninus@correounivalle.edu.co', 1, 132, 1, 'MD5', '14e1b600b1fd579f47433b88e8d85291'),
(13, '2090553793', 'Frank ', 'Rijkaard', '1116973315', 'frank.rijkaard@correounivalle.edu.co', 1, 10, 2, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(12, '2090557634', 'Eric ', 'Cantona', '111454993', 'eric.cantona@correounivalle.edu.co', 1, 132, 1, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(10, '2090562442', 'Gianluigi ', 'Buffon', '1116845196', 'gianluigi.buffon@correounivalle.edu.co', 1, 10, 2, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(3, '209077987-3743', 'Maximo', 'Decimo Meridio', '1112456789', 'maximo.decimo@correounivalle.edu.co', 1, 1, 10, 'MD5', '14e1b600b1fd579f47433b88e8d85291'),
(14, '2090888136', 'Luka', 'Modric', '1117493181', 'luka.modric@correounivalle.edu.co', 1, 1, 8, 'MD5', 'e10adc3949ba59abbe56e057f20f883e'),
(2, '94475125', 'PEDRO PABLO', 'BERMUDEZ MEDINA', '94475125', 'pedro.bermudez@correounivalle.edu.co', 1, 1, 120, 'MD5', '21712929679070a0bd536d84ceb04fd4');

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
('2024-02-23 10:06:57', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-02-23 11:25:32', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-23 11:26:15', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[2] Logon user: --Unknown--'),
('2024-02-23 11:30:54', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[2] Logoff user: --Unknown--'),
('2024-02-23 11:33:10', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[3] Logon user: --Unknown--'),
('2024-02-23 12:33:00', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[3] Logoff user: --Unknown--'),
('2024-02-23 12:33:00', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-23 16:29:23', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[10] Logon user: 209077987'),
('2024-02-23 16:30:36', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[10] Logoff user: 209077987'),
('2024-02-23 16:31:09', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[11] Logon user: --Unknown--'),
('2024-02-23 21:41:14', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[11] Logoff user: --Unknown--'),
('2024-02-24 07:11:40', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-24 07:11:49', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-24 07:12:47', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: --Unknown--'),
('2024-02-24 07:13:22', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[3] Logon user: --Unknown--'),
('2024-02-24 10:47:54', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[3] Logoff user: --Unknown--'),
('2024-02-24 10:47:57', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: --Unknown--'),
('2024-02-24 18:06:11', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-26 07:57:08', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-26 13:02:27', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-26 14:07:07', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-26 16:58:09', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: 209044654'),
('2024-02-26 17:50:58', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: 209044654'),
('2024-02-26 19:54:25', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-27 07:06:02', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-27 12:05:14', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-27 14:31:56', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-27 15:52:31', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-27 15:55:30', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: 2090147357'),
('2024-02-27 15:58:52', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: 2090147357'),
('2024-02-27 15:59:12', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[3] Logon user: --Unknown--'),
('2024-02-27 16:01:06', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[3] Logoff user: --Unknown--'),
('2024-02-27 16:04:57', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[4] Logon user: 2090147357'),
('2024-02-27 16:06:19', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[4] Logoff user: 2090147357'),
('2024-02-27 16:06:31', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[5] Logon user: --Unknown--'),
('2024-02-27 16:36:39', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[5] Logoff user: --Unknown--'),
('2024-02-27 16:36:58', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[6] Logon user: 201255414-3743'),
('2024-02-27 16:40:15', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[6] Logoff user: 201255414-3743'),
('2024-02-27 16:41:27', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: --Unknown--'),
('2024-02-27 17:36:40', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-27 17:42:16', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: --Unknown--'),
('2024-02-27 17:42:59', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-27 17:43:06', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[4] Logon user: --Unknown--'),
('2024-02-27 17:47:44', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[4] Logoff user: --Unknown--'),
('2024-02-27 17:50:07', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-27 17:51:34', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-27 19:57:21', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-28 07:07:08', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-28 07:20:40', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-02-28 07:26:48', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-28 07:27:15', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: 201255414-3743'),
('2024-02-28 07:28:15', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: 201255414-3743'),
('2024-02-28 07:28:27', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[3] Logon user: --Unknown--'),
('2024-02-28 07:34:22', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[3] Logoff user: --Unknown--'),
('2024-02-28 07:35:44', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: 201255414-3743'),
('2024-02-28 07:36:45', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: 201255414-3743'),
('2024-02-28 08:08:42', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-28 08:21:41', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-28 08:28:40', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-02-28 08:33:20', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-02-28 08:37:42', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[3] Logon user: 201255414-3743'),
('2024-02-28 08:40:05', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[3] Logoff user: 201255414-3743'),
('2024-02-28 08:40:15', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[4] Logon user: --Unknown--'),
('2024-02-28 09:31:25', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-28 10:08:06', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[4] Logoff user: --Unknown--'),
('2024-02-28 10:08:07', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: 201255414-3743'),
('2024-02-28 12:00:13', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: --Unknown--'),
('2024-02-28 12:00:15', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-28 13:59:34', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-02-28 14:05:35', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-28 14:34:17', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: 201255414-3743'),
('2024-02-28 14:37:50', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: 201255414-3743'),
('2024-02-28 16:56:11', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-28 18:30:35', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-02-28 20:17:38', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-29 07:13:17', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-29 08:29:19', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-02-29 08:37:41', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-02-29 08:38:18', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[2] Logon user: 201255414-3743'),
('2024-02-29 08:47:54', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[2] Logoff user: 201255414-3743'),
('2024-02-29 08:49:37', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: 201255414-3743'),
('2024-02-29 08:49:54', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[2] Logon user: 201255414-3743'),
('2024-02-29 08:53:34', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[2] Logoff user: 201255414-3743'),
('2024-02-29 12:13:39', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-02-29 12:14:51', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-29 13:56:00', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-02-29 13:59:50', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-02-29 17:28:20', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-02-29 17:50:56', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-02-29 18:02:57', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: --Unknown--'),
('2024-02-29 21:16:47', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-02-29 22:05:14', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: --Unknown--'),
('2024-02-29 22:05:17', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-01 07:13:09', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-01 07:44:00', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-01 08:50:41', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-01 10:09:55', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: 2160128-3743'),
('2024-03-01 12:00:18', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-01 12:27:49', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: 2160128-3743'),
('2024-03-01 15:30:10', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-01 21:07:00', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-01 21:54:13', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-02 07:08:20', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-02 07:11:05', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-02 09:51:08', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-02 11:01:57', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-02 13:09:51', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-02 13:23:21', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: --Unknown--'),
('2024-03-02 15:00:32', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-02 15:18:09', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-02 16:35:48', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-02 16:40:52', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-04 07:06:11', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-04 07:17:18', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-04 09:12:29', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session lock user: --Unknown--'),
('2024-03-04 09:13:32', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session unlock user: --Unknown--'),
('2024-03-04 09:31:40', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-04 09:47:24', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-04 10:00:34', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-04 10:13:19', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-04 11:46:19', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-04 12:24:02', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logoff user: --Unknown--'),
('2024-03-04 12:24:19', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-04 12:27:58', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-04 12:31:20', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[2] Logon user: --Unknown--'),
('2024-03-04 12:33:59', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[2] Logoff user: --Unknown--'),
('2024-03-04 12:55:09', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-04 13:05:50', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-04 13:10:23', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-04 13:15:24', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-04 14:05:55', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-04 14:56:20', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-04 20:03:29', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-05 07:08:58', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-05 07:09:09', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-05 07:10:13', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-05 08:02:04', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-05 08:51:34', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-05 08:51:47', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-05 08:52:34', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-05 08:52:51', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-05 08:53:28', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-05 08:53:58', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-05 10:33:42', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-05 11:04:53', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-05 12:01:08', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-05 12:21:30', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-05 12:44:02', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-05 12:44:10', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-05 12:45:25', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-05 12:48:46', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-05 13:06:39', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-05 14:06:38', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-05 16:16:53', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-05 16:58:59', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-05 16:59:04', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-05 17:36:54', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-05 18:01:29', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-05 18:12:49', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-05 18:55:02', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-05 19:51:42', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-05 19:54:02', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-05 19:54:26', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-05 20:00:28', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-06 08:47:30', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-06 08:58:14', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-06 10:09:58', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-06 11:50:39', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-06 11:50:41', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-06 11:50:43', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-06 11:50:45', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-06 11:51:13', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-06 12:05:49', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-06 12:46:52', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-06 13:58:59', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-06 15:12:08', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-06 15:13:20', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-06 15:15:21', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-06 15:31:01', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-06 16:23:55', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-06 16:49:13', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-06 17:56:20', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-06 19:28:29', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-06 20:54:36', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-07 07:13:19', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-07 08:30:02', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-07 08:57:25', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-07 08:58:50', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-07 08:59:26', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-07 09:00:11', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-07 09:01:22', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-07 09:14:40', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-07 11:40:33', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-07 11:57:40', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-07 11:57:47', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-07 11:58:49', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-07 11:59:01', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-07 11:59:36', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-07 11:59:37', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-07 12:00:04', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-07 12:01:45', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-07 12:51:23', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session lock user: --Unknown--'),
('2024-03-07 14:05:44', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-07 14:07:28', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session unlock user: --Unknown--'),
('2024-03-08 08:27:42', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-08 08:27:59', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-08 08:28:05', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-08 09:04:00', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-08 09:44:27', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-08 10:00:51', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-08 11:28:46', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-08 11:43:33', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-08 11:58:43', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-08 12:00:25', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-08 12:01:02', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-08 12:40:31', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-08 14:08:22', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-08 14:45:29', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-08 16:27:55', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-08 16:38:50', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-08 17:13:13', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-08 17:13:27', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-08 17:26:32', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-08 18:14:03', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-08 18:21:31', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-08 18:23:29', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-08 21:15:46', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-08 21:18:04', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-08 22:13:13', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-09 07:02:56', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-09 07:05:45', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-09 07:55:19', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-09 07:56:01', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logon user: --Unknown--'),
('2024-03-09 09:52:43', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-09 09:53:21', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-09 09:56:29', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-09 09:57:20', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-09 09:57:28', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-09 10:59:44', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[2] Logoff user: --Unknown--'),
('2024-03-09 10:59:46', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-09 13:22:02', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-09 13:50:21', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-09 13:50:29', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-09 14:00:48', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-09 14:05:35', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-09 14:05:57', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-09 17:44:49', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-09 17:45:31', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-09 17:45:48', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-09 17:45:58', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-09 17:46:26', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-09 17:51:52', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-09 17:56:53', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-09 18:01:16', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-09 18:01:23', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logon user: --Unknown--'),
('2024-03-09 18:09:08', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logoff user: --Unknown--'),
('2024-03-09 18:11:26', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-11 07:04:40', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-11 07:17:54', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-11 08:06:49', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-11 08:35:36', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-11 08:40:29', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-11 10:00:47', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-11 10:14:55', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-11 11:03:12', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-11 11:48:10', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-11 11:48:33', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-11 11:48:38', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-11 11:59:44', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-11 12:09:39', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-11 12:27:24', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-11 12:57:14', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-11 13:59:53', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-11 15:04:39', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-11 15:05:14', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-11 17:54:11', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-11 17:55:39', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-11 18:03:15', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-11 19:12:06', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-11 19:12:06', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-11 19:12:59', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-11 19:13:46', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logon user: --Unknown--'),
('2024-03-11 19:14:22', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logoff user: --Unknown--'),
('2024-03-11 19:14:23', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-12 07:01:27', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-12 07:18:56', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-12 09:42:51', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-12 09:47:40', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-12 10:00:54', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-12 10:01:30', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-12 10:01:55', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-12 10:06:49', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: xc'),
('2024-03-12 10:18:34', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-12 10:20:41', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-12 10:48:12', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-12 11:11:06', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-12 11:24:02', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-12 11:26:26', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session lock user: --Unknown--'),
('2024-03-12 11:29:52', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session unlock user: --Unknown--'),
('2024-03-12 12:24:28', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-12 12:25:42', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-12 12:27:26', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-12 12:33:13', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: xc'),
('2024-03-12 12:45:23', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-12 13:12:42', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-12 13:18:47', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-12 13:26:19', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-12 14:17:27', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-12 15:55:27', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-12 16:00:18', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-12 16:38:47', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-12 17:02:42', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-12 17:42:49', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:24:13', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-12 19:26:16', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-12 19:27:39', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-12 19:36:06', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-12 19:37:01', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-12 19:38:27', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-12 19:40:10', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:40:10', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:40:10', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:40:10', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:40:10', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:40:10', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-12 19:58:10', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-13 08:27:43', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-13 09:01:12', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-13 09:06:17', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-13 09:08:22', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-13 10:02:21', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-13 10:42:24', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-13 12:01:49', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-13 12:02:03', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-13 12:02:50', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-13 12:49:34', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-13 14:02:04', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-13 14:05:22', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-13 15:24:20', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-13 15:46:39', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-13 17:16:47', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-13 18:04:20', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-13 18:32:40', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-13 19:06:58', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-13 19:17:33', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-13 21:05:04', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-13 21:10:36', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-13 21:27:16', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-13 21:27:23', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-13 21:30:47', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-13 21:38:23', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-14 03:01:03', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-14 07:28:13', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-14 09:00:51', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-14 09:01:30', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-14 09:03:57', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-14 11:58:36', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-14 12:01:43', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-14 12:04:20', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-14 12:04:32', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-14 12:07:25', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-14 14:00:46', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-14 14:01:06', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-14 14:02:29', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-14 17:32:21', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-14 17:33:21', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-14 17:56:41', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-14 18:02:39', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-14 18:05:33', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-14 18:21:47', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-14 18:26:56', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-14 18:26:59', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-14 19:16:38', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-14 19:45:38', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-14 19:57:17', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session lock user: --Unknown--'),
('2024-03-14 20:20:09', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Session unlock user: --Unknown--'),
('2024-03-14 21:19:49', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-14 21:59:48', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-14 22:07:07', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-14 22:08:48', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-15 07:02:29', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-15 07:03:59', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-15 07:04:31', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-15 07:05:49', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-15 07:06:00', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-15 07:09:30', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-15 08:39:46', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-15 08:44:18', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-15 08:44:34', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-15 08:47:58', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-15 08:52:01', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-15 09:08:35', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-15 11:32:51', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-15 12:02:00', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-15 13:04:52', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-15 14:07:36', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-15 15:07:51', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-15 15:12:03', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-15 15:12:09', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logon user: --Unknown--'),
('2024-03-15 15:14:59', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-15 17:36:48', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-15 17:37:19', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-15 17:37:31', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-15 17:37:44', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-15 17:41:26', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[2] Logoff user: --Unknown--'),
('2024-03-15 18:11:28', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-15 21:28:28', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-15 21:29:17', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-15 22:18:18', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-16 07:29:00', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-16 10:05:24', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-16 10:05:51', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-16 10:05:58', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-16 10:07:21', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-16 10:07:33', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-16 10:57:55', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-16 13:20:28', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-16 13:57:16', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-16 14:00:18', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-16 14:00:24', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-16 14:02:54', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-16 16:51:57', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-16 16:52:30', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-16 17:46:49', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-16 17:51:56', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-16 17:56:03', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-16 18:06:09', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-16 18:06:42', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-18 08:08:17', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-18 11:47:58', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-18 11:49:40', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-18 12:11:40', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-18 12:32:35', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-18 13:03:46', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-18 14:10:36', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-18 14:51:41', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-18 15:04:22', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-18 17:03:41', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-18 17:49:09', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-18 18:12:58', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-18 18:15:45', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-18 18:20:39', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-19 07:23:23', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-19 08:10:05', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-19 09:35:58', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-19 09:52:55', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-19 09:54:59', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-19 10:04:59', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-19 10:15:53', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-19 12:40:10', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-19 12:43:41', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-19 12:43:59', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-19 12:47:08', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-19 13:02:33', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-19 14:07:03', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-19 16:24:40', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-19 16:55:10', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-19 17:00:18', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-19 17:02:09', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-19 17:02:50', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-19 19:58:16', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-20 07:11:20', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-20 09:03:49', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-20 09:09:50', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logon user: --Unknown--'),
('2024-03-20 09:11:37', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-20 11:53:58', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-20 11:56:07', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-20 11:57:10', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-20 12:04:39', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-20 12:04:45', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-20 12:07:47', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-20 12:08:17', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-20 13:05:58', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-20 13:06:47', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-20 13:24:30', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-20 13:44:47', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-20 13:51:50', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-20 13:54:49', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-20 14:01:52', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-20 14:11:45', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-20 14:11:46', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-20 14:12:52', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-20 14:16:18', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-20 15:25:47', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--');
INSERT INTO `eventos` (`TimeStamp`, `Host`, `Ip`, `Machine`, `Message`) VALUES
('2024-03-20 15:45:54', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-20 15:47:54', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-20 15:49:32', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-20 16:05:01', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-20 17:41:50', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-20 19:54:39', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-21 08:35:15', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-21 09:02:51', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-21 09:03:01', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-21 09:04:23', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-21 11:53:34', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-21 12:09:04', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-21 12:10:30', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-21 12:14:06', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-21 12:18:24', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-21 14:00:25', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-21 14:04:06', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-21 16:52:23', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-21 17:54:57', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-21 17:54:57', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-21 17:55:21', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-21 17:57:23', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-21 18:21:04', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-21 18:22:28', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-03-21 18:36:33', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-21 21:09:45', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-21 21:13:08', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-21 21:25:24', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-21 21:25:34', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-21 22:03:52', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-22 09:00:55', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-22 09:03:45', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-22 09:05:48', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-22 09:27:15', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-22 10:36:44', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-22 12:11:43', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-22 12:12:16', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-22 12:16:39', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-22 13:05:37', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-22 13:06:15', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-22 13:30:12', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-22 13:30:22', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-22 13:30:39', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-22 13:31:49', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-22 13:40:53', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-22 15:11:38', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-22 15:16:34', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-22 17:48:22', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-22 17:48:35', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-03-22 17:48:37', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-03-22 17:48:47', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-22 17:50:23', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-22 21:02:19', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-22 21:49:21', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-22 22:20:14', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-23 08:04:22', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-23 10:22:34', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-23 10:51:21', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-03-23 12:18:43', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-23 13:34:02', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-03-23 14:06:37', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-03-23 14:09:12', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-03-23 14:09:46', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-03-23 14:10:13', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logon user: --Unknown--'),
('2024-03-23 14:14:38', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-03-23 14:46:25', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-03-23 14:51:48', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-03-23 14:58:56', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-03-23 15:54:41', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-03-23 16:00:57', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-23 16:08:31', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-03-23 17:52:07', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-04-01 08:00:35', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logon user: --Unknown--'),
('2024-04-01 08:03:50', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-04-01 08:48:17', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-04-01 09:03:45', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-04-01 09:11:47', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-04-01 09:11:57', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-04-01 09:12:04', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-04-01 09:34:23', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-04-01 10:50:03', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logoff user: --Unknown--'),
('2024-04-01 13:10:36', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-04-01 15:14:42', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--'),
('2024-04-01 15:15:29', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logon user: --Unknown--'),
('2024-04-01 15:49:15', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-04-01 17:56:24', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-04-01 17:57:09', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-04-01 17:57:37', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logoff user: --Unknown--'),
('2024-04-01 18:00:31', 'TUL-53983622', '192.168.56.1', 'TUL-53983622', '[1] Logoff user: --Unknown--'),
('2024-04-01 19:42:15', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-04-02 07:08:52', 'TUL-53983610', '192.168.56.1', 'TUL-53983610', '[1] Logoff user: --Unknown--'),
('2024-04-02 07:18:48', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logon user: --Unknown--'),
('2024-04-02 07:59:09', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logon user: --Unknown--'),
('2024-04-02 08:13:30', 'Pruebas', '192.168.14.45', 'PRUEBAS', '[1] Session lock user: --Unknown--'),
('2024-04-02 08:13:31', 'Pruebas', '192.168.14.45', 'PRUEBAS', '[1] Logon user: --Unknown--'),
('2024-04-02 08:13:54', 'Pruebas', '192.168.14.45', 'PRUEBAS', '[1] Session unlock user: --Unknown--'),
('2024-04-10 10:30:11', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-04-10 11:54:00', 'TUL-53975444', '192.168.56.1', 'TUL-53975444', '[1] Logoff user: --Unknown--'),
('2024-04-10 12:01:42', 'TUL-53943799', '192.168.40.1', 'TUL-53943799', '[1] Logoff user: --Unknown--'),
('2024-04-10 12:05:28', 'TUL-53983626', '192.168.56.1', 'TUL-53983626', '[1] Logoff user: --Unknown--'),
('2024-04-10 15:34:49', 'TUL-53975436', '192.168.56.1', 'TUL-53975436', '[1] Logon user: --Unknown--'),
('2024-04-10 16:53:25', 'PRISALSIS0130', '192.168.56.1', 'PRISALSIS0130', '[1] Logoff user: --Unknown--'),
('2024-04-10 17:07:35', 'TUL-53983614', '192.168.56.1', 'TUL-53983614', '[1] Logon user: --Unknown--');

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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`dbid`, `loginstamp`, `logoutstamp`, `username`, `machine`, `ipaddress`) VALUES
(1, '2024-02-23 10:06:57', '2024-02-23 11:25:32', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(2, '2024-02-23 11:26:14', '2024-02-23 11:30:54', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(3, '2024-02-23 11:33:10', '2024-02-23 12:32:59', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(4, '2024-02-23 16:29:23', '2024-02-23 16:30:36', '209077987', 'TUL-53943799', '192.168.40.1'),
(5, '2024-02-23 16:31:09', '2024-02-23 21:41:14', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(6, '2024-02-24 07:11:40', '2024-02-24 07:11:49', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(7, '2024-02-24 07:12:47', '2024-02-24 07:13:22', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(8, '2024-02-24 07:13:22', '2024-02-24 10:47:54', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(9, '2024-02-26 07:57:08', '2024-02-26 13:02:27', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(10, '2024-02-26 14:07:06', '2024-02-26 19:54:24', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(11, '2024-02-26 16:58:09', '2024-02-26 17:50:58', '209044654', 'PRISALSIS0130', '192.168.56.1'),
(12, '2024-02-27 07:06:02', '2024-02-27 12:05:14', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(13, '2024-02-27 14:31:55', '2024-02-27 15:52:31', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(14, '2024-02-27 15:55:30', '2024-02-27 15:58:51', '2090147357', 'TUL-53943799', '192.168.40.1'),
(15, '2024-02-27 15:59:11', '2024-02-27 16:01:06', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(16, '2024-02-27 16:04:57', '2024-02-27 16:06:19', '2090147357', 'TUL-53943799', '192.168.40.1'),
(17, '2024-02-27 16:06:31', '2024-02-27 16:36:39', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(18, '2024-02-27 16:36:58', '2024-02-27 16:40:15', '201255414-3743', 'TUL-53943799', '192.168.40.1'),
(19, '2024-02-27 16:41:27', '2024-02-27 17:42:16', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(20, '2024-02-27 17:43:06', '2024-02-27 17:47:44', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(21, '2024-02-27 17:50:06', '2024-02-27 17:51:34', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(22, '2024-02-28 07:07:08', '2024-02-28 07:26:48', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(23, '2024-02-28 07:20:40', '2024-02-28 08:08:41', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(24, '2024-02-28 07:27:15', '2024-02-28 07:28:15', '201255414-3743', 'TUL-53943799', '192.168.40.1'),
(25, '2024-02-28 07:28:27', '2024-02-28 07:34:22', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(26, '2024-02-28 07:35:44', '2024-02-28 07:36:45', '201255414-3743', 'TUL-53943799', '192.168.40.1'),
(27, '2024-02-28 08:28:40', '2024-02-28 09:31:25', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(28, '2024-02-28 08:37:42', '2024-02-28 08:40:05', '201255414-3743', 'TUL-53983622', '192.168.56.1'),
(29, '2024-02-28 08:40:15', '2024-02-28 10:08:06', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(30, '2024-02-28 13:59:34', '2024-02-28 16:56:11', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(31, '2024-02-28 14:05:35', '2024-02-28 20:17:37', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(32, '2024-02-28 14:34:17', '2024-02-28 14:37:50', '201255414-3743', 'TUL-53983622', '192.168.56.1'),
(33, '2024-02-29 07:13:16', '2024-02-29 12:14:51', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(34, '2024-02-29 08:29:18', '2024-02-29 08:37:41', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(35, '2024-02-29 08:38:18', '2024-02-29 08:47:54', '201255414-3743', 'TUL-53983622', '192.168.56.1'),
(36, '2024-02-29 08:49:54', '2024-02-29 08:53:34', '201255414-3743', 'TUL-53983622', '192.168.56.1'),
(37, '2024-02-29 13:56:00', '2024-02-29 17:50:55', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(38, '2024-02-29 13:59:50', '2024-02-29 17:28:20', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(39, '2024-02-29 18:02:57', '2024-02-29 22:05:14', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(40, '2024-03-01 07:13:09', '2024-03-01 08:50:41', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(41, '2024-03-01 07:44:00', '2024-03-01 15:30:10', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(42, '2024-03-01 10:09:55', '2024-03-01 12:27:49', '2160128-3743', 'PRISALSIS0130', '192.168.56.1'),
(43, '2024-03-01 15:30:10', '2024-03-01 21:54:13', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(44, '2024-03-02 07:08:20', '2024-03-02 09:51:08', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(45, '2024-03-02 07:11:05', '2024-03-02 11:01:57', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(46, '2024-03-02 13:23:21', '2024-03-02 16:35:48', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(47, '2024-03-02 15:00:32', '2024-03-02 15:18:08', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(48, '2024-03-02 16:35:48', '2024-03-04 07:06:11', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(49, '2024-03-02 16:40:52', '2024-03-04 09:31:40', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(50, '2024-03-04 07:06:11', '2024-03-04 14:05:54', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(51, '2024-03-04 07:17:18', '2024-03-04 10:00:34', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(52, '2024-03-04 09:31:40', '2024-03-04 09:47:24', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(53, '2024-03-04 10:13:19', '2024-03-04 11:46:19', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(54, '2024-03-04 12:24:19', '2024-03-04 12:27:58', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(55, '2024-03-04 12:31:20', '2024-03-04 12:33:58', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(56, '2024-03-05 07:08:58', '2024-03-05 08:51:34', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(57, '2024-03-05 07:09:09', '2024-03-05 08:52:51', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(58, '2024-03-05 07:10:13', '2024-03-05 08:51:47', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(59, '2024-03-05 08:02:04', '2024-03-05 13:06:39', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(60, '2024-03-05 10:33:42', '2024-03-05 12:48:46', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(61, '2024-03-05 11:04:52', '2024-03-05 12:21:30', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(62, '2024-03-05 12:01:08', '2024-03-05 12:44:02', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(63, '2024-03-05 14:06:38', '2024-03-05 16:59:04', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(64, '2024-03-05 16:16:53', '2024-03-05 17:36:54', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(65, '2024-03-05 18:12:49', '2024-03-05 20:00:27', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(66, '2024-03-05 19:54:02', '2024-03-05 19:54:26', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(67, '2024-03-06 08:47:30', '2024-03-06 11:50:41', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(68, '2024-03-06 08:58:14', '2024-03-06 11:50:39', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(69, '2024-03-06 10:09:58', '2024-03-06 12:46:51', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(70, '2024-03-06 13:58:59', '2024-03-06 16:23:55', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(71, '2024-03-06 15:12:08', '2024-03-06 17:56:20', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(72, '2024-03-06 15:13:20', '2024-03-06 15:15:21', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(73, '2024-03-06 15:15:21', '2024-03-06 20:54:36', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(74, '2024-03-06 15:31:01', '2024-03-06 16:49:13', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(75, '2024-03-07 07:13:19', '2024-03-07 12:01:45', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(76, '2024-03-07 08:30:02', '2024-03-07 11:59:37', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(77, '2024-03-07 08:57:25', '2024-03-07 11:57:47', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(78, '2024-03-07 08:58:50', '2024-03-07 11:57:40', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(79, '2024-03-07 08:59:26', '2024-03-07 11:59:35', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(80, '2024-03-07 09:00:11', '2024-03-07 11:58:49', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(81, '2024-03-07 09:01:22', '2024-03-07 11:59:01', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(82, '2024-03-07 09:14:40', '2024-03-07 11:40:33', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(83, '2024-03-07 12:00:04', '2024-03-08 09:44:27', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(84, '2024-03-07 14:05:44', '2024-03-08 21:15:46', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(85, '2024-03-08 09:04:00', '2024-03-08 12:00:25', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(86, '2024-03-08 10:00:51', '2024-03-08 12:40:31', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(87, '2024-03-08 11:43:33', '2024-03-08 16:27:54', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(88, '2024-03-08 14:08:22', '2024-03-08 17:26:32', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(89, '2024-03-08 14:45:29', '2024-03-08 17:13:13', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(90, '2024-03-08 16:27:54', '2024-03-08 22:13:13', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(91, '2024-03-08 16:38:50', '2024-03-09 09:53:21', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(92, '2024-03-08 17:13:13', '2024-03-08 17:13:27', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(93, '2024-03-08 18:14:03', '2024-03-08 21:18:04', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(94, '2024-03-08 18:21:31', '2024-03-08 18:23:29', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(95, '2024-03-09 07:02:56', '2024-03-09 09:57:20', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(96, '2024-03-09 07:05:45', '2024-03-09 09:56:29', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(97, '2024-03-09 07:55:19', '2024-03-09 07:56:01', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(98, '2024-03-09 07:56:01', '2024-03-09 10:59:43', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(99, '2024-03-09 13:22:02', '2024-03-09 18:11:26', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(100, '2024-03-09 13:50:20', '2024-03-09 17:45:58', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(101, '2024-03-09 13:50:28', '2024-03-09 17:45:48', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(102, '2024-03-09 14:00:47', '2024-03-09 17:44:49', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(103, '2024-03-09 14:05:35', '2024-03-09 17:51:52', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(104, '2024-03-09 14:05:57', '2024-03-09 17:46:26', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(105, '2024-03-09 17:56:53', '2024-03-09 18:01:16', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(106, '2024-03-09 18:01:23', '2024-03-09 18:09:08', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(107, '2024-03-11 07:04:40', '2024-03-11 11:59:44', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(108, '2024-03-11 07:17:54', '2024-03-11 10:00:47', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(109, '2024-03-11 08:06:49', '2024-03-11 08:35:36', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(110, '2024-03-11 08:40:28', '2024-03-11 11:48:33', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(111, '2024-03-11 10:14:55', '2024-03-11 12:27:23', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(112, '2024-03-11 11:03:11', '2024-03-11 11:48:10', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(113, '2024-03-11 12:09:39', '2024-03-11 12:57:14', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(114, '2024-03-11 13:59:53', '2024-03-12 09:47:40', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(115, '2024-03-11 15:04:39', '2024-03-11 19:12:06', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(116, '2024-03-11 15:05:14', '2024-03-11 19:12:06', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(117, '2024-03-11 19:12:59', '2024-03-11 19:13:46', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(118, '2024-03-11 19:13:46', '2024-03-11 19:14:22', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(119, '2024-03-12 07:01:27', '2024-03-12 10:01:55', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(120, '2024-03-12 07:18:56', '2024-03-12 10:01:30', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(121, '2024-03-12 10:06:49', '2024-03-12 12:33:13', 'xc', 'TUL-53983610', '192.168.56.1'),
(122, '2024-03-12 10:20:40', '2024-03-12 10:48:12', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(123, '2024-03-12 13:12:42', '2024-03-12 13:18:47', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(124, '2024-03-12 13:26:19', '2024-03-12 15:55:27', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(125, '2024-03-12 14:17:27', '2024-03-12 16:38:47', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(126, '2024-03-12 16:00:18', '2024-03-12 17:02:42', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(127, '2024-03-12 19:24:13', '2024-03-12 19:40:10', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(128, '2024-03-12 19:26:16', '2024-03-12 19:40:10', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(129, '2024-03-12 19:27:39', '2024-03-12 19:40:10', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(130, '2024-03-12 19:36:06', '2024-03-12 19:40:10', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(131, '2024-03-12 19:37:00', '2024-03-12 19:40:10', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(132, '2024-03-12 19:38:27', '2024-03-12 19:40:10', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(133, '2024-03-13 08:27:43', '2024-03-13 09:01:12', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(134, '2024-03-13 09:06:17', '2024-03-13 12:02:03', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(135, '2024-03-13 09:08:22', '2024-03-13 12:02:50', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(136, '2024-03-13 10:02:21', '2024-03-13 12:49:34', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(137, '2024-03-13 14:02:04', '2024-03-13 17:16:47', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(138, '2024-03-13 14:05:22', '2024-03-13 21:05:04', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(139, '2024-03-13 15:24:20', '2024-03-13 18:04:20', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(140, '2024-03-13 18:32:40', '2024-03-13 21:27:22', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(141, '2024-03-13 19:06:58', '2024-03-13 19:17:33', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(142, '2024-03-13 21:30:47', '2024-03-13 21:38:23', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(143, '2024-03-14 07:28:13', '2024-03-14 12:07:25', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(144, '2024-03-14 09:00:51', '2024-03-14 12:04:32', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(145, '2024-03-14 09:01:30', '2024-03-14 11:58:36', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(146, '2024-03-14 09:03:57', '2024-03-14 12:04:20', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(147, '2024-03-14 14:00:45', '2024-03-14 17:32:21', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(148, '2024-03-14 14:01:06', '2024-03-14 17:56:41', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(149, '2024-03-14 14:02:29', '2024-03-14 18:05:33', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(150, '2024-03-14 18:21:47', '2024-03-14 22:08:48', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(151, '2024-03-14 18:26:56', '2024-03-14 22:07:06', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(152, '2024-03-14 18:26:59', '2024-03-14 19:45:38', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(153, '2024-03-14 19:16:38', '2024-03-14 21:19:49', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(154, '2024-03-15 07:02:29', '2024-03-15 08:52:01', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(155, '2024-03-15 07:03:59', '2024-03-15 07:05:49', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(156, '2024-03-15 07:04:31', '2024-03-15 08:44:34', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(157, '2024-03-15 07:06:00', '2024-03-15 08:47:58', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(158, '2024-03-15 07:09:30', '2024-03-15 08:44:17', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(159, '2024-03-15 08:52:01', '2024-03-21 18:36:33', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(160, '2024-03-15 09:08:35', '2024-03-15 11:32:51', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(161, '2024-03-15 14:07:36', '2024-03-15 22:18:18', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(162, '2024-03-15 15:07:51', '2024-03-15 15:12:03', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(163, '2024-03-15 15:12:09', '2024-03-15 17:41:26', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(164, '2024-03-15 15:14:59', '2024-03-15 17:37:19', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(165, '2024-03-15 18:11:28', '2024-03-15 21:29:17', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(166, '2024-03-16 07:29:00', '2024-03-16 10:05:51', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(167, '2024-03-16 13:20:28', '2024-03-16 17:51:56', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(168, '2024-03-16 13:57:16', '2024-03-16 14:00:18', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(169, '2024-03-16 14:00:24', '2024-03-16 16:51:57', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(170, '2024-03-16 14:02:54', '2024-03-16 18:06:42', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(171, '2024-03-18 08:08:17', '2024-03-18 13:03:46', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(172, '2024-03-18 12:11:40', '2024-03-18 12:32:35', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(173, '2024-03-18 14:10:36', '2024-03-19 08:10:05', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(174, '2024-03-18 15:04:22', '2024-03-18 18:15:45', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(175, '2024-03-18 17:03:41', '2024-03-18 18:20:39', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(176, '2024-03-19 08:10:05', '2024-03-19 13:02:33', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(177, '2024-03-19 10:04:59', '2024-03-19 12:43:41', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(178, '2024-03-19 14:07:03', '2024-03-19 17:02:09', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(179, '2024-03-19 16:24:40', '2024-03-19 17:02:50', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(180, '2024-03-19 17:00:18', '2024-03-19 19:58:16', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(181, '2024-03-20 07:11:20', '2024-03-20 12:04:44', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(182, '2024-03-20 09:03:49', '2024-03-20 11:53:58', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(183, '2024-03-20 09:09:50', '2024-03-20 12:08:17', '--UNKNOWN--', 'TUL-53983626', '192.168.56.1'),
(184, '2024-03-20 09:11:37', '2024-03-20 12:04:38', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(185, '2024-03-20 11:56:07', '2024-03-20 11:57:10', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(186, '2024-03-20 13:05:58', '2024-03-20 14:01:52', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(187, '2024-03-20 13:06:47', '2024-03-20 13:44:47', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(188, '2024-03-20 13:24:30', '2024-03-20 13:51:50', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(189, '2024-03-20 14:11:44', '2024-03-20 15:49:32', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(190, '2024-03-20 14:11:46', '2024-03-20 15:47:53', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(191, '2024-03-20 14:12:52', '2024-03-20 15:45:53', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(192, '2024-03-20 15:25:47', '2024-03-20 19:54:39', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(193, '2024-03-20 16:05:01', '2024-03-20 17:41:50', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(194, '2024-03-21 08:35:14', '2024-03-21 11:53:34', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(195, '2024-03-21 09:02:51', '2024-03-21 12:18:24', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(196, '2024-03-21 09:03:00', '2024-03-21 12:10:30', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(197, '2024-03-21 09:04:23', '2024-03-21 12:14:06', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(198, '2024-03-21 14:00:25', '2024-03-21 17:54:57', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(199, '2024-03-21 14:04:06', '2024-03-21 17:55:21', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(200, '2024-03-21 16:52:23', '2024-03-21 17:54:57', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(201, '2024-03-21 18:21:04', '2024-03-21 21:25:24', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(202, '2024-03-21 18:22:28', '2024-03-21 21:25:34', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(203, '2024-03-21 18:36:33', '2024-03-21 21:09:45', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(204, '2024-03-22 09:00:55', '2024-03-22 21:49:21', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(205, '2024-03-22 09:03:45', '2024-03-22 12:16:39', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(206, '2024-03-22 09:05:48', '2024-03-22 12:11:43', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(207, '2024-03-22 13:05:37', '2024-03-22 13:30:22', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(208, '2024-03-22 13:06:15', '2024-03-22 13:30:39', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(209, '2024-03-22 15:11:38', '2024-03-22 17:48:47', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(210, '2024-03-22 15:16:34', '2024-03-22 17:48:22', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(211, '2024-03-23 08:04:22', '2024-03-23 10:51:20', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(212, '2024-03-23 10:22:34', '2024-03-23 12:18:43', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(213, '2024-03-23 13:34:02', '2024-03-23 17:52:07', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(214, '2024-03-23 14:06:36', '2024-03-23 16:00:57', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(215, '2024-03-23 14:09:11', '2024-03-23 14:51:48', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(216, '2024-03-23 14:09:46', '2024-03-23 14:58:56', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(217, '2024-03-23 14:10:13', '2024-03-23 15:54:41', '--UNKNOWN--', 'TUL-53975444', '192.168.56.1'),
(218, '2024-03-23 14:14:38', '2024-03-23 14:46:25', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(219, '2024-04-01 08:00:35', '2024-04-01 09:11:47', '--UNKNOWN--', 'TUL-53983610', '192.168.56.1'),
(220, '2024-04-01 08:03:50', '2024-04-01 09:12:04', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(221, '2024-04-01 15:14:42', '2024-04-01 17:57:37', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1'),
(222, '2024-04-01 15:15:29', '2024-04-01 18:00:31', '--UNKNOWN--', 'TUL-53983622', '192.168.56.1'),
(223, '2024-04-02 07:18:48', '2024-04-10 10:30:11', '--UNKNOWN--', 'PRISALSIS0130', '192.168.56.1'),
(224, '2024-04-02 07:59:09', '2024-04-10 12:01:42', '--UNKNOWN--', 'TUL-53943799', '192.168.40.1'),
(225, '2024-04-02 08:13:30', '0000-00-00 00:00:00', '--UNKNOWN--', 'PRUEBAS', '192.168.14.45'),
(226, '2024-04-10 15:34:49', '0000-00-00 00:00:00', '--UNKNOWN--', 'TUL-53975436', '192.168.56.1'),
(227, '2024-04-10 17:07:35', '0000-00-00 00:00:00', '--UNKNOWN--', 'TUL-53983614', '192.168.56.1');

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
(4, '1234567', 'JHON EDINSON BLANDON', 'jhon@gmail.com', '$2y$10$PmOVl3JWr2iscvXNLy5HA.gJQjJaRUkb1P/sZD4snMv.IzTv0Bjwm', 'Principe', '1', 1);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
MODIFY `dbid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=228;
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
