-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-09-2019 a las 03:08:44
-- Versión del servidor: 5.5.20
-- Versión de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_aldidacom_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_acciones`
--

CREATE TABLE IF NOT EXISTS `ad_acciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ad_acciones`
--

INSERT INTO `ad_acciones` (`codigo`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(8, 'REGISTRO DE USUARIOS', 'RU', 'REGISTRO USUARIO', 'AC'),
(9, 'MODIFIACION DE USUARIOS', 'MU', 'MODIFICAR USUARIOS', 'AC'),
(10, 'AGREGAR ROLES', 'AR', 'AGREGAR ROLES', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_aplicaciones`
--

CREATE TABLE IF NOT EXISTS `ad_aplicaciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre_aplicacion` varchar(250) NOT NULL,
  `user_administrador` varchar(4) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ad_aplicaciones`
--

INSERT INTO `ad_aplicaciones` (`codigo`, `descripcion`, `abreviatura`, `nombre_aplicacion`, `user_administrador`, `estado`) VALUES
(8, 'APLICACION PRINCIPAL', 'ADMIN', 'ADMINISTRACION', 'SI', 'AC'),
(9, 'SISTEMA DE VENTAS', 'SV', 'SISTEMA DE VENTAS', 'NO', 'AC'),
(10, 'SISTEMA DE VENTAS FARMACIA', 'SVF', 'SISTEMA DE VENTAS FARMACIA', 'SI', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_configuraciones_empresas`
--

CREATE TABLE IF NOT EXISTS `ad_configuraciones_empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `valor1` varchar(100) NOT NULL,
  `valor2` varchar(100) NOT NULL,
  `valor3` varchar(100) NOT NULL,
  `valor4` varchar(100) NOT NULL,
  `valor5` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `fecha_registro` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_empresas`
--

CREATE TABLE IF NOT EXISTS `ad_empresas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `descripcion_entidad` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `valoracionproducto` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `ad_empresas`
--

INSERT INTO `ad_empresas` (`codigo`, `denominacion`, `correo`, `abreviatura`, `propietario`, `telefono`, `direccion`, `descripcion_entidad`, `fecha`, `valoracionproducto`, `estado`) VALUES
(1, 'VENTA LETICIA HERBALIFE', 'lety@gmail.com', 'VLH', 'LETICIA DORIS DAZA ALCARAZ', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS DE HERBALIFE', '2019-09-11', 0, 'AC'),
(2, 'VENTA LETICIA HERBALIFE', 'lety@gmail.com	', 'VLH', 'LETICIA DORIS DAZA ALCARAZ', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS DE HERBALIFE', '2019-09-11', 1, 'AC'),
(3, 'VENTA LETICIA FARMACIA', 'lety@gmail.com', 'VLF', 'DORIS DAZA', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS FARMACEUTICOS', '2019-09-26', 0, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_logs`
--

CREATE TABLE IF NOT EXISTS `ad_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_accion` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ad_logs`
--

INSERT INTO `ad_logs` (`id`, `idad_usuario`, `codad_accion`, `fecha`) VALUES
(8, NULL, 8, '2019-06-16 18:30:00'),
(9, NULL, 9, '2019-06-16 18:30:00'),
(10, 8, 8, '2019-07-02 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_modulos`
--

CREATE TABLE IF NOT EXISTS `ad_modulos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codad_aplicacion` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `ad_modulos`
--

INSERT INTO `ad_modulos` (`codigo`, `codad_aplicacion`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(10, 8, 'ADMINISTRACION DE USUARIOS', 'US', 'USUARIOS', 'AC'),
(11, 8, 'ADMINISTRACION DE APLICACIONES', 'AP', 'APLICACIONES', 'AC'),
(12, 8, 'OPCIONES ENTORNO', 'IN', 'ENTORNO', 'AC'),
(13, 8, 'CONTROL DE PAGOS', 'CP', 'CONTROL DE PAGOS', 'AC'),
(14, 9, 'CONTROL CUENTAS', 'US', 'USUARIOS', 'AC'),
(15, 9, 'REGISTRO DE INGRESO Y SALIDAS', 'AP', 'APLICACIONES', 'AC'),
(16, 9, 'REPORTE CONSULTAS', 'IN', 'ENTORNO', 'AC'),
(17, 9, 'PRODUCTOS', 'PROD', 'PRODUCTOS', 'AC'),
(18, 9, 'PROVEEDORES', 'PRO', 'PROVEEDORES', 'AC'),
(19, 9, 'REPORTES', 'REP', 'REPORTES', 'AC'),
(20, 9, 'VENTAS', 'VET', 'VENTAS', 'AC'),
(21, 9, 'ALMACEN', 'PROD', 'ALMACEN', 'AC'),
(22, 9, 'CLIENTES', 'CLI', 'CLIENTES', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_opciones`
--

CREATE TABLE IF NOT EXISTS `ad_opciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codad_modulo` int(11) NOT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `opcion` varchar(20) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `nivel` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Volcado de datos para la tabla `ad_opciones`
--

INSERT INTO `ad_opciones` (`codigo`, `codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(8, 11, 8, 'APLICACIONES', '', '', 1, 0, 'AC'),
(9, 11, 8, 'REGISTRO APLICACIÓN', '', 'DDDDDD', 2, 1, 'AC'),
(10, 11, 8, 'MODIFICAR APLICACIÓN', '', 'DDDDD', 2, 2, 'AC'),
(11, 12, 11, 'INICIO', 'INCIO', 'Inicio', 0, 1, 'AC'),
(12, 10, 12, 'USUARIOS', '', '', 1, 1, 'AC'),
(13, 10, 12, 'REGISTRO USUARIO', '', '', 2, 1, 'AC'),
(14, 13, 8, 'CONTROL PAGOS', '', '', 2, 3, 'AC'),
(15, 15, 15, 'REGISTRO CONTABLE', '', '', 1, 1, 'AC'),
(16, 15, 15, 'REGISTRO INGRESOS', '', 'Registrar_ingresos', 2, 1, 'AC'),
(17, 15, 15, 'MODIFICACION INGRESO', '', 'Modificar_ingresos', 2, 2, 'AC'),
(18, 15, 15, 'REGISTRO EGRESOS', '', 'Registrar_egresos', 2, 3, 'AC'),
(19, 15, 15, 'MODIFICACION EGRESOS', '', 'Modificar_egresos', 2, 4, 'AC'),
(20, 15, 15, 'BORAR INGRESOS', '', 'Eliminar_ingresos', 2, 6, 'AC'),
(21, 15, 15, 'BORRAR EGRESOS', '', 'Eliminar_egresos', 2, 7, 'AC'),
(30, 20, 30, 'VENTAS', '', '', 1, 0, 'AC'),
(31, 17, 31, 'PRODUCTOS', '', '', 1, 0, 'AC'),
(32, 18, 32, 'PROVEEDORES', '', '', 1, 0, 'AC'),
(33, 19, 33, 'REPORTES', '', '', 1, 0, 'AC'),
(34, 21, 34, 'ALMACEN', '', '', 1, 0, 'AC'),
(37, 17, 31, 'DETALLE PRODUCTO', '', '', 2, 1, 'AC'),
(38, 17, 31, 'REGISTRAR PRODUCTO', '', '', 2, 2, 'AC'),
(39, 17, 31, 'CAMBIAR PRECIO', '', '', 2, 3, 'AC'),
(40, 17, 31, 'VALORIZACION PRODUCT', '', '', 2, 4, 'AC'),
(41, 17, 31, 'MODIFICAR PRODUCTO', '', '', 2, 5, 'AC'),
(42, 17, 31, 'BAJA PRODUCTO', '', '', 2, 6, 'AC'),
(43, 21, 34, 'DETALLE ALMACEN', '', '', 2, 1, 'AC'),
(44, 21, 34, 'ACTUALIZAR ALMACEN', '', 'Almacen', 2, 2, 'AC'),
(45, 20, 30, 'REGISTRAR VENTA', '', 'Ventas', 2, 1, 'AC'),
(46, 20, 30, 'REGISTRAR DEVOLUCION', '', '', 2, 2, 'AC'),
(47, 18, 32, 'LISTA PROVEEDORES', '', '', 2, 1, 'AC'),
(48, 18, 33, 'STOCK PRODUCTOS', '', '', 2, 1, 'AC'),
(49, 18, 33, 'STOCK PRODUCTOS', '', '', 2, 1, 'AC'),
(50, 18, 33, 'REPORTES DE VENTAS', '', '', 2, 2, 'AC'),
(51, 18, 33, 'REPORTE POR CANTIDAD', '', '', 2, 3, 'AC'),
(52, 18, 33, 'VENTA POR CLIENTE', '', '', 2, 4, 'AC'),
(53, 18, 33, 'INGRESO A PRESTAMO', '', '', 2, 5, 'AC'),
(54, 18, 33, 'VENTA A PRESTAMO', '', '', 2, 6, 'AC'),
(55, 22, 55, 'CLIENTES', '', '', 1, 0, 'AC'),
(56, 55, 55, 'LISTA CLIENTES', '', '', 2, 1, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_opciones_usuarios`
--

CREATE TABLE IF NOT EXISTS `ad_opciones_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Volcado de datos para la tabla `ad_opciones_usuarios`
--

INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(8, 8, 8, 9, 'AC'),
(9, 8, 9, 9, 'AC'),
(10, 8, 10, 9, 'AC'),
(11, 8, 11, 9, 'AC'),
(12, 8, 12, 9, 'AC'),
(13, 8, 13, 9, 'AC'),
(14, 8, 14, 9, 'AC'),
(62, 11, 30, 11, 'AC'),
(63, 11, 31, 11, 'AC'),
(64, 11, 33, 11, 'AC'),
(65, 11, 34, 11, 'AC'),
(66, 11, 35, 11, 'AC'),
(67, 11, 36, 11, 'AC'),
(68, 11, 37, 11, 'AC'),
(69, 11, 38, 11, 'AC'),
(70, 11, 39, 11, 'AC'),
(72, 11, 40, 11, 'AC'),
(73, 11, 41, 11, 'AC'),
(74, 11, 42, 11, 'AC'),
(75, 11, 43, 11, 'AC'),
(76, 11, 44, 11, 'AC'),
(77, 11, 45, 11, 'AC'),
(78, 11, 46, 11, 'AC'),
(79, 11, 48, 11, 'AC'),
(80, 11, 49, 11, 'AC'),
(81, 11, 50, 11, 'AC'),
(82, 11, 51, 11, 'AC'),
(83, 11, 52, 11, 'AC'),
(84, 11, 53, 11, 'AC'),
(85, 11, 54, 11, 'AC'),
(86, 11, 55, 11, 'AC'),
(87, 11, 56, 11, 'AC'),
(88, 13, 30, 11, 'AC'),
(89, 13, 31, 11, 'AC'),
(90, 13, 33, 11, 'AC'),
(91, 13, 34, 11, 'AC'),
(92, 13, 35, 11, 'AC'),
(93, 13, 36, 11, 'AC'),
(94, 13, 37, 11, 'AC'),
(95, 13, 38, 11, 'AC'),
(96, 13, 39, 11, 'AC'),
(97, 13, 40, 11, 'AC'),
(98, 13, 41, 11, 'AC'),
(99, 13, 42, 11, 'AC'),
(100, 13, 43, 11, 'AC'),
(101, 13, 44, 11, 'AC'),
(102, 13, 45, 11, 'AC'),
(103, 13, 46, 11, 'AC'),
(104, 13, 48, 11, 'AC'),
(105, 13, 49, 11, 'AC'),
(106, 13, 50, 11, 'AC'),
(107, 13, 51, 11, 'AC'),
(108, 13, 52, 11, 'AC'),
(109, 13, 53, 11, 'AC'),
(110, 13, 54, 11, 'AC'),
(111, 13, 55, 11, 'AC'),
(112, 13, 56, 11, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_usuarios`
--

CREATE TABLE IF NOT EXISTS `ad_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `codad_aplicacion` int(11) DEFAULT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `nro_documento` varchar(30) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `direccion` varchar(250) NOT NULL,
  `tel_cel` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `cargo` varchar(250) NOT NULL,
  `login` varchar(50) NOT NULL,
  `clave` varchar(250) NOT NULL,
  `tipo_user` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `ad_usuarios`
--

INSERT INTO `ad_usuarios` (`id`, `codad_empresa`, `codad_aplicacion`, `nombres`, `apellidos`, `nro_documento`, `tipo_documento`, `idad_logs`, `direccion`, `tel_cel`, `fecha_nacimiento`, `correo`, `cargo`, `login`, `clave`, `tipo_user`, `estado`) VALUES
(8, 1, 8, 'DIEGO', 'DAZA ALCARAZ', '6703132', 'CI', 8, 'HEROINAS', '78720504', '1989-11-26', 'aldidacom@gmail.com', 'GERENTE', 'DDAZA.ADMIN', '952c4c39d5460b647fa9f7f4cf36fb13', 'SUPER ADMINISTRADOR', 'AC'),
(11, 2, 9, 'LETICIA DORIS', 'DAZA ALCARAZ', '6549871', 'CI', 11, 'DELICIAS', '72433002', '1987-07-04', 'lety@gmail.com', 'GERENTE PROPIETARIA', 'LETYDAZA.HLV', '952c4c39d5460b647fa9f7f4cf36fb13', 'USUARIO CENTRAL', 'AC'),
(12, 3, 10, 'DORIS', 'ALCARAZ', '6549871', 'CI', 11, 'DELICIAS', '72433002', '1987-07-04', 'lety@gmail.com', 'GERENTE PROPIETARIA', 'ADMLETYDAZA.HLF', '952c4c39d5460b647fa9f7f4cf36fb13', 'ADMINISTRADOR', 'AC'),
(13, 3, 10, 'DORIS', 'ALCARAZ', '6549871', 'CI', 11, 'DELICIAS', '72433002', '1987-07-04', 'lety@gmail.com', 'EJECUTIVOS DE VENTAS', 'LETYDAZA2.HLF', '952c4c39d5460b647fa9f7f4cf36fb13', 'USUARIO_NORMAL', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_acumulador_almacen`
--

CREATE TABLE IF NOT EXISTS `ve_acumulador_almacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idad_usuario` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `idve_porcentaje` int(11) NOT NULL,
  `entrada` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `vencimiento` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_acumulador_venta`
--

CREATE TABLE IF NOT EXISTS `ve_acumulador_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idad_usuario` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `idve_porcentaje` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_almacenes`
--

CREATE TABLE IF NOT EXISTS `ve_almacenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `idve_proveedor` int(11) NOT NULL,
  `idve_porcentaje` int(11) NOT NULL,
  `entrada` int(11) NOT NULL,
  `salida` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `vencimiento` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha` date NOT NULL,
  `factura` int(11) NOT NULL DEFAULT '1',
  `num_factura` int(11) NOT NULL,
  `observaciones` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `tipoingreso` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `ve_almacenes`
--

INSERT INTO `ve_almacenes` (`id`, `idad_usuario`, `idve_producto`, `idve_proveedor`, `idve_porcentaje`, `entrada`, `salida`, `saldo`, `precio_compra`, `precio_venta`, `vencimiento`, `fecha_vencimiento`, `fecha`, `factura`, `num_factura`, `observaciones`, `estado`, `tipoingreso`) VALUES
(6, 11, 7, 0, 35, 5, 5, 0, 200, 200, 1, '2019-11-23', '2019-09-16', 0, 0, '', 'AC', 0),
(7, 11, 1, 0, 4, 2, 2, 0, 162, 300, 1, '2019-11-30', '2019-09-16', 0, 0, '', 'AC', 0),
(8, 11, 2, 0, 9, 5, 5, 0, 214.2, 400, 1, '2019-11-30', '2019-09-16', 0, 0, '', 'AC', 0),
(9, 11, 2, 0, 9, 2, 2, 0, 214.2, 400, 1, '2020-01-24', '2019-09-24', 0, 0, '', 'AC', 0),
(10, 11, 7, 0, 34, 1, 1, 0, 108, 200, 1, '2019-09-01', '2019-09-24', 0, 0, '', 'AC', 0),
(11, 11, 3, 0, 14, 2, 2, 0, 162, 300, 1, '2020-01-24', '2019-09-24', 0, 0, '', 'AC', 0),
(12, 11, 5, 0, 24, 3, 3, 0, 151.3, 280, 1, '2020-04-30', '2019-09-24', 0, 0, '', 'AC', 0),
(13, 11, 6, 0, 29, 5, 5, 0, 73.2, 140, 1, '2020-02-01', '2019-09-24', 0, 0, '', 'AC', 0),
(14, 11, 4, 0, 19, 3, 3, 0, 131.5, 250, 1, '2020-03-28', '2019-09-24', 0, 0, '', 'AC', 0),
(15, 11, 8, 0, 39, 5, 5, 0, 226, 405, 1, '2020-06-20', '2019-09-24', 0, 0, '', 'AC', 0),
(16, 11, 9, 0, 44, 6, 6, 0, 129.2, 250, 1, '2020-05-15', '2019-09-24', 0, 0, '', 'AC', 0),
(17, 11, 10, 0, 49, 6, 6, 0, 75, 145, 1, '2020-05-02', '2019-09-24', 0, 0, '', 'AC', 0),
(18, 11, 11, 0, 54, 4, 4, 0, 183, 320, 1, '2020-08-29', '2019-09-24', 0, 0, '', 'AC', 0),
(19, 11, 12, 0, 59, 4, 4, 0, 189, 335, 1, '2020-05-30', '2019-09-24', 0, 0, '', 'AC', 0),
(20, 11, 13, 0, 64, 2, 2, 0, 214.2, 400, 1, '2020-08-01', '2019-09-24', 0, 0, '', 'AC', 0),
(21, 11, 14, 0, 69, 1, 1, 0, 379, 630, 1, '2020-06-12', '2019-09-24', 0, 0, '', 'AC', 0),
(22, 11, 15, 0, 74, 3, 3, 0, 166.3, 250, 1, '2020-07-24', '2019-09-24', 0, 0, '', 'AC', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_castigos`
--

CREATE TABLE IF NOT EXISTS `ve_castigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_almacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_clientes`
--

CREATE TABLE IF NOT EXISTS `ve_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `num_documento` varchar(200) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_devoluciones`
--

CREATE TABLE IF NOT EXISTS `ve_devoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_cliente` int(11) NOT NULL,
  `idve_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_ingreso_prestamos`
--

CREATE TABLE IF NOT EXISTS `ve_ingreso_prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_almacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_linea_producto`
--

CREATE TABLE IF NOT EXISTS `ve_linea_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `nombre_linea` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `ve_linea_producto`
--

INSERT INTO `ve_linea_producto` (`id`, `codad_empresa`, `nombre_linea`, `estado`) VALUES
(1, 2, 'HERBALIFE', 'AC'),
(4, 3, 'BAGO', 'AC'),
(5, 3, 'TERBOL', 'AC'),
(6, 3, 'BAYER', 'AC'),
(7, 3, 'COFAR', 'AC'),
(8, 3, 'SAE', 'AC'),
(9, 3, 'CRESPAL', 'AC'),
(10, 3, 'INALTEX', 'AC'),
(11, 3, 'INTI', 'AC'),
(12, 3, 'HOSPIMED', 'AC'),
(13, 3, 'IFARBO', 'AC'),
(14, 3, 'DISMEBOL', 'AC'),
(15, 3, 'TECNOFARMA', 'AC'),
(16, 3, 'DELTA', 'AC'),
(17, 3, 'LAFAR', 'AC'),
(18, 3, 'CORMED', 'AC'),
(19, 3, 'QUIMIZA', 'AC'),
(20, 3, 'HAHNEMANN', 'AC'),
(21, 3, 'SAVAL', 'AC'),
(22, 3, 'SCHMIDTS PHARMA', 'AC'),
(23, 3, 'ALFA', 'AC'),
(24, 3, 'VITA', 'AC'),
(25, 3, 'LAQFAGAL', 'AC'),
(26, 3, 'ALCOS', 'AC'),
(27, 3, 'IFA', 'AC'),
(28, 3, 'FARMEDICAL', 'AC'),
(29, 3, 'CORMESA', 'AC'),
(30, 3, 'PROMEDICAL', 'AC'),
(31, 3, 'VALENCIA', 'AC'),
(32, 3, 'CARLITOS', 'AC'),
(33, 3, 'LEMAITRE', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_precios_porcentajes`
--

CREATE TABLE IF NOT EXISTS `ve_precios_porcentajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_producto` int(11) NOT NULL,
  `porcentaje` float NOT NULL,
  `precio_porcentaje` float NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Volcado de datos para la tabla `ve_precios_porcentajes`
--

INSERT INTO `ve_precios_porcentajes` (`id`, `idve_producto`, `porcentaje`, `precio_porcentaje`, `fecha`, `estado`) VALUES
(1, 1, 25, 219, '2019-09-12', 'AC'),
(2, 1, 35, 196, '2019-09-12', 'AC'),
(3, 1, 42, 180, '2019-09-12', 'AC'),
(4, 1, 50, 162, '2019-09-12', 'AC'),
(5, 1, 100, 300, '2019-09-12', 'AC'),
(6, 2, 25, 284, '2019-09-12', 'AC'),
(7, 2, 35, 256, '2019-09-12', 'AC'),
(8, 2, 42, 235.5, '2019-09-12', 'AC'),
(9, 2, 50, 214.2, '2019-09-12', 'AC'),
(10, 2, 100, 400, '2019-09-12', 'AC'),
(11, 3, 25, 219, '2019-09-12', 'AC'),
(12, 3, 35, 196, '2019-09-12', 'AC'),
(13, 3, 42, 180, '2019-09-12', 'AC'),
(14, 3, 50, 162, '2019-09-12', 'AC'),
(15, 3, 100, 300, '2019-09-12', 'AC'),
(16, 4, 25, 178.2, '2019-09-12', 'AC'),
(17, 4, 35, 159.5, '2019-09-12', 'AC'),
(18, 4, 42, 146.5, '2019-09-12', 'AC'),
(19, 4, 50, 131.5, '2019-09-12', 'AC'),
(20, 4, 100, 250, '2019-09-12', 'AC'),
(21, 5, 25, 178, '2019-09-12', 'AC'),
(22, 5, 35, 167, '2019-09-12', 'AC'),
(23, 5, 42, 160, '2019-09-12', 'AC'),
(24, 5, 50, 151.3, '2019-09-12', 'AC'),
(25, 5, 100, 280, '2019-09-12', 'AC'),
(26, 6, 25, 99.2, '2019-09-12', 'AC'),
(27, 6, 35, 89, '2019-09-12', 'AC'),
(28, 6, 42, 81.5, '2019-09-12', 'AC'),
(29, 6, 50, 73.2, '2019-09-12', 'AC'),
(30, 6, 100, 140, '2019-09-12', 'AC'),
(31, 7, 25, 146.4, '2019-09-12', 'AC'),
(32, 7, 35, 131, '2019-09-12', 'AC'),
(33, 7, 42, 120.3, '2019-09-12', 'AC'),
(34, 7, 50, 108, '2019-09-12', 'AC'),
(35, 7, 100, 200, '2019-09-12', 'AC'),
(36, 8, 25, 306, '2019-09-12', 'AC'),
(37, 8, 35, 274, '2019-09-12', 'AC'),
(38, 8, 42, 251.4, '2019-09-12', 'AC'),
(39, 8, 50, 226, '2019-09-12', 'AC'),
(40, 8, 100, 405, '2019-09-12', 'AC'),
(41, 9, 25, 175.1, '2019-09-12', 'AC'),
(42, 9, 35, 157, '2019-09-12', 'AC'),
(43, 9, 42, 244, '2019-09-12', 'AC'),
(44, 9, 50, 129.2, '2019-09-12', 'AC'),
(45, 9, 100, 250, '2019-09-12', 'AC'),
(46, 10, 25, 102, '2019-09-12', 'AC'),
(47, 10, 35, 91, '2019-09-12', 'AC'),
(48, 10, 42, 83.6, '2019-09-12', 'AC'),
(49, 10, 50, 75, '2019-09-12', 'AC'),
(50, 10, 100, 145, '2019-09-12', 'AC'),
(51, 11, 25, 248, '2019-09-12', 'AC'),
(52, 11, 35, 222, '2019-09-12', 'AC'),
(53, 11, 42, 203.5, '2019-09-12', 'AC'),
(54, 11, 50, 183, '2019-09-12', 'AC'),
(55, 11, 100, 320, '2019-09-12', 'AC'),
(56, 12, 25, 256, '2019-09-12', 'AC'),
(57, 12, 35, 229, '2019-09-12', 'AC'),
(58, 12, 42, 210.2, '2019-09-12', 'AC'),
(59, 12, 50, 189, '2019-09-12', 'AC'),
(60, 12, 100, 335, '2019-09-12', 'AC'),
(61, 13, 25, 228, '2019-09-12', 'AC'),
(62, 13, 35, 204, '2019-09-12', 'AC'),
(63, 13, 42, 187.1, '2019-09-12', 'AC'),
(64, 13, 50, 168, '2019-09-12', 'AC'),
(65, 13, 100, 310, '2019-09-12', 'AC'),
(66, 14, 25, 505.3, '2019-09-12', 'AC'),
(67, 14, 35, 455, '2019-09-12', 'AC'),
(68, 14, 42, 419.4, '2019-09-12', 'AC'),
(69, 14, 50, 379, '2019-09-12', 'AC'),
(70, 14, 100, 630, '2019-09-12', 'AC'),
(71, 15, 25, 217, '2019-09-12', 'AC'),
(72, 15, 35, 197, '2019-09-12', 'AC'),
(73, 15, 42, 182.5, '2019-09-12', 'AC'),
(74, 15, 50, 166.3, '2019-09-12', 'AC'),
(75, 15, 100, 250, '2019-09-12', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_productos`
--

CREATE TABLE IF NOT EXISTS `ve_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idve_linea` int(11) NOT NULL,
  `valor1` varchar(200) NOT NULL,
  `valor2` varchar(200) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `composicion` varchar(200) NOT NULL,
  `presentacion` varchar(200) NOT NULL,
  `unidad` varchar(100) NOT NULL,
  `sabor` varchar(50) NOT NULL,
  `vencimiento` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `precioporcentaje` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=898 ;

--
-- Volcado de datos para la tabla `ve_productos`
--

INSERT INTO `ve_productos` (`id`, `codad_empresa`, `idve_linea`, `valor1`, `valor2`, `descripcion_producto`, `composicion`, `presentacion`, `unidad`, `sabor`, `vencimiento`, `valoracion`, `precioporcentaje`, `estado`) VALUES
(1, 2, 1, 'FORMULA 1 /MEZXLA NUTRICIONAL PROTEICA ', 'BATIDO', '', '550 GR.', 'BOTE GRANDE', 'BOTE', 'NARANJA', 1, 1, 1, 'AC'),
(2, 2, 1, 'PDM / PROTEIN DRINK MIX', 'PROTEINA', '', '616 GR.', 'BOTE GRANDE', 'BOTE', 'VAINILLA', 1, 1, 1, 'AC'),
(3, 2, 1, 'FORMULA 1 /MEZXLA NUTRICIONAL PROTEICA ', 'BATIDO', '', '550 GR.', 'BOTE GRANDE', 'BOTE', 'VAINILLA', 1, 1, 1, 'AC'),
(4, 2, 1, 'PERFORMANCE PROTEIN POWDER', 'PROTEINA NATURAL', '', '', 'BOTE MEDIANO', 'BOTE', 'NORMAL', 1, 1, 1, 'AC'),
(5, 2, 1, 'BARRAS DE PROTEINA DELUZA', 'BARRAS DE PROTEINA', '', '14 UNIDADES', 'BARRAS PEQUEÑAS', 'BARRA', 'VAINILLA CON ALMENDRAS', 1, 1, 1, 'AC'),
(6, 2, 1, 'FORMULA 2 VITAMINA-MINERAL HERBAL', 'VITAMINAS', '', '', 'TABLETAS', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(7, 2, 1, 'NRG', 'NATURE''S RAW GUARANA TEA ', '', '50GR', 'FRASCO', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(8, 2, 1, 'THEMO HERBAL CONCENTRATE', 'TE DE HIERBAS', '', '100 GR', 'FRASCO', 'FRASCO', 'LIMON', 1, 1, 1, 'AC'),
(9, 2, 1, 'THEMO HERBAL CONCENTRATE', 'TE DE HIERBAS', '', '51 GR', 'FRASCO', 'FRASCO', 'CHAI', 1, 1, 1, 'AC'),
(10, 2, 1, 'XTRA-CAL', 'TABLETAS DE CALCIO', '', '', 'TABLETAS', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(11, 2, 1, 'HERBAL ALOE DRINK ', 'JUGO CONCENTRADO DE SABILA', '', 'SABILA', 'BOTE DELGADO', 'BOTE', 'NATURAL', 1, 1, 1, 'AC'),
(12, 2, 1, 'HERBALIFELINE', 'CAPSULAS DE ACEITE DE PESCADO', '', '', 'CAPSULAS', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(13, 2, 1, 'FIBRA ACTIVA', 'FIBRA', '', '', 'BOTE MEDIANO', 'BOTE', 'MANZANA', 1, 1, 1, 'AC'),
(14, 2, 1, 'H24 REBUILD STRENGTH', 'NUTRICION PARA RECUPERACION', '', '1000 GR', 'BOTE GRANDE', 'BOTE', 'S/S', 1, 1, 1, 'AC'),
(15, 2, 1, 'H24 CR7', 'BEBIDA HIDRATANTE DEPORTISTAS ', '', '24 GR', 'BOTE MEDIANO', 'BOTE', 'S/S', 1, 1, 1, 'AC'),
(16, 3, 4, 'refrianex dia/noche', 'refrianex dia/noche', '', '500MG', 'COMPRIMIDOS', '', '', 1, 1, 0, 'AC'),
(17, 3, 4, 'refrianex dia naranja miel ', 'refrianex dia naranja miel ', '', '500MG', 'sobres', '', '', 1, 1, 0, 'AC'),
(18, 3, 4, 'refrianex noche naranja miel', 'refrianex noche naranja miel', '', '500MG', 'sobres', '', '', 1, 1, 0, 'AC'),
(19, 3, 4, 'tusigen ', 'tusigen', '', '100', 'jarabe', '', '', 1, 1, 0, 'AC'),
(20, 3, 4, 'Tusigen Infantil ', 'Tusigen ', '', '100mL', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(21, 3, 4, 'Ulcozol ', 'Omeprazol', '', '20mg', 'Capsula', '', '', 1, 1, 0, 'AC'),
(22, 3, 4, 'Ulcozol Rapid ', 'Omeprazol ', '', '20mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(23, 3, 4, 'Verotonil', 'Multivitaminico', '', '2mg', 'Capsula', '', '', 1, 1, 0, 'AC'),
(24, 3, 4, 'Pen di Ben 1200', 'Penicilina ', '', '1200mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(25, 3, 4, 'Pen Di Ben 2.400', 'Penicilina', '', '2400', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(26, 3, 4, 'Pironal Flu Forte', 'Ibuprofeno/Pseudoefedrina', '', '400/60mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(27, 3, 4, 'Pironal Flu Forte ', 'Ibuprofeno/Pseudoefedrina', '', '200/30', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(28, 3, 4, 'Pironal Flu ', 'Ibuprofeno/Pseudoefedrina', '', '100/15', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(29, 3, 4, 'Pironal ', 'Ibuprofeno ', '', '100mg', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(30, 3, 4, 'Pironal Forte', 'Ibuprofeno ', '', '200mg', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(31, 3, 4, 'Remitex', 'Cetirizina ', '', '10mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(32, 3, 4, 'Remitex D', 'Cetirizina/Pseudoefedrina', '', '5/120mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(33, 3, 4, 'Remitex ', 'Cetirizina ', '', '10mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(34, 3, 4, 'Remitex ', 'Cetirizina', '', '10mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(35, 3, 4, 'Refrianex ', 'Refrianex', '', '15ml', 'Gotas', '', '', 1, 1, 0, 'AC'),
(36, 3, 4, 'Refrianex', 'Refrianex', '', '100mL', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(37, 3, 4, 'Septicide', 'Ciprofloxacina ', '', '500 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(38, 3, 4, 'Tocex', 'Hedera Helix', '', '35 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(39, 3, 4, 'Triapen 6.3.3.', 'Penicilinas ', '', '6.3.3. mg ', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(40, 3, 4, 'Triapem Forte', 'Penicilina', '', '12.6.6. mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(41, 3, 4, 'Talflex TU ', 'ketoprofeno ', '', '200 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(42, 3, 4, 'Estreptocarbocaftiazol', 'Ftalilsulfatiazol', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(43, 3, 4, 'Espasmo Dioxadol Plus', 'Propinox/Clonixinato de lisina', '', '20/125 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(44, 3, 4, 'Espasmo Dioxadol Plus ', 'Propinox', '', '10 mg/mL', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(45, 3, 4, 'Glicenex', 'Metformina ', '', '500 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(46, 3, 4, 'Glicenex ', 'Metformina ', '', '850 mg ', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(47, 3, 4, 'Glicenex Duo 500/2.5', 'Metformina/Glibenclamida', '', '500/2.5 mg ', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(48, 3, 4, 'Glicenex Duo 500/5', 'Metformina/Glibenclamida', '', '500/5 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(49, 3, 4, 'Glemaz ', 'Glimepirida', '', '4 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(50, 3, 4, 'IBL Duo', 'Amoxicilina/Subactam', '', '875/125 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(51, 3, 4, 'IBL Duo', 'Amoxicilina/sulbabtam', '', '1000/250 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(52, 3, 4, 'Migranol', 'Paracetamol/Ergotamina', '', '650/1 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(53, 3, 4, 'Maxibiotic ', 'Cefalecina', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(54, 3, 4, 'Nodolex', 'Paracetamol', '', '120 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(55, 3, 4, 'Nifurat', 'Nifuroxazida', '', '200 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(56, 3, 4, 'Nifurat', 'Nifuroxazida', '', '200 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(57, 3, 4, 'Nastizol', 'D-isoefedrina/Clorfeniramina', '', '60/4 mg', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(58, 3, 4, 'Nastizol', 'D-Isoefedrina/Clorfeniramina', '', '30/1 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(59, 3, 4, 'Nastizol', 'D-Isoefedrina/Clorfeniramina', '', '30/2 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(60, 3, 4, 'Otazol', 'Polimixina/Neomicina/Betametasona', '', '10/3.5/1 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(61, 3, 4, 'Clofenac Relax', 'Diclofenaco/Pridinol', '', '50/4 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(62, 3, 4, 'Clofenac Gesic', 'Diclofenaco/Codeina', '', '50/50 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(63, 3, 4, 'Clofenac ', 'Diclofenaco', '', '50 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(64, 3, 4, 'Clofenac ', 'Diclofenaco ', '', '1.16/100 mg', 'Gel', '', '', 1, 1, 0, 'AC'),
(65, 3, 4, 'Clofenac 75 ', 'Diclofenaco', '', '75 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(66, 3, 4, 'Doxifen', 'Miconazol/Tinidazol', '', '100/150 mg', 'Ovulos', '', '', 1, 1, 0, 'AC'),
(67, 3, 4, 'Degraler ', 'Levocetiricina', '', '5 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(68, 3, 4, 'Degraler Plus', 'Levocetirizina ', '', '5 mg', 'Comprimido dispersable', '', '', 1, 1, 0, 'AC'),
(69, 3, 4, 'Degraler ', 'Levocetirizina', '', '5 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(70, 3, 4, 'Degraler ', 'Levocetirizina', '', '5 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(71, 3, 4, 'Dinamicina Duo ', 'Amoxicilina ', '', '875 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(72, 3, 4, 'Dinamicina Duo', 'Amoxicilina ', '', '1000mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(73, 3, 4, 'Donodol ', 'Ketorolaco', '', '20 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(74, 3, 4, 'Donodol ', 'Ketorolaco', '', '60 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(75, 3, 4, 'Dioxadol', 'Dipirona ', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(76, 3, 4, 'Dioxadol G ', 'Dipirona', '', '500 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(77, 3, 4, 'Enalap', 'Enalapril', '', '10 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(78, 3, 4, 'Ecax 15', 'Meloxican', '', '15 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(79, 3, 4, 'Abramax', 'Claritromicina', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(80, 3, 4, 'Bagoderm', 'Acexamato/Cetrimida', '', '5/1%', 'Crema', '', '', 1, 1, 0, 'AC'),
(81, 3, 4, 'bogomicina', 'Minociclina', '', '50 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(82, 3, 4, 'Bagociletas Naranja ', 'Benzocaina ', '', '6 mg', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(83, 3, 4, 'Bagociletas Frambuesa', 'Benzocaina ', '', '6 mg', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(84, 3, 4, 'Bagociletas Miel Limon ', 'Benzocaina ', '', '6 mg', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(85, 3, 4, 'Bagociletas Plus ', 'Benzocaina/Tirotricina', '', '6/1 mg', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(86, 3, 4, 'Bacticel Forte', 'Cotrimoxazol ', '', '960', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(87, 3, 4, 'Bacticel ', 'Cotrimoxazol', '', '240', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(88, 3, 4, 'Bacticel Forte ', 'Cotrimoxazol ', '', '480', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(89, 3, 4, 'Brevex', 'Clorzoxazona/Paracetal', '', '250/300 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(90, 3, 4, 'Cefin ', 'Ketoconazol ', '', '2%', 'Shampoo', '', '', 1, 1, 0, 'AC'),
(91, 3, 4, 'Clofenac 75', 'Diclofenaco ', '', '75 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(92, 3, 4, 'Clofenac Retard', 'Diclofenaco ', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(93, 3, 4, 'Clofenac B1B6B12', 'Diclofenaco', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(94, 3, 4, 'Sancor Bebe Premiun 1', 'Leche', '', '800 mg', 'Caja ', '', '', 1, 1, 0, 'AC'),
(95, 3, 4, 'Sanco Bebe Premium 3', 'Leche', '', '800 mg', 'Caja ', '', '', 1, 1, 0, 'AC'),
(96, 3, 4, 'Lety AT4 Crema Facial ', 'Crema', '', '50 mL', 'Bote', '', '', 1, 1, 0, 'AC'),
(97, 3, 4, 'Lety AT4 Crema Intensiva', 'Crema ', '', '100 mL', 'Bote', '', '', 1, 1, 0, 'AC'),
(98, 3, 4, 'Heliocare XF ', 'Crema ', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(99, 3, 4, 'Heliocare Toque Sol ', 'Crema ', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(100, 3, 4, 'Heliocare Spray ', 'Crema ', '', '200 mL', 'Spray', '', '', 1, 1, 0, 'AC'),
(101, 3, 6, 'Diane 35 ', 'Anticonceptivo', '', '21 grageas', 'Grageas', '', '', 1, 1, 0, 'AC'),
(102, 3, 6, 'Minigynon 30', 'Anticonceptivo', '', '21 grageas', 'Grageas', '', '', 1, 1, 0, 'AC'),
(103, 3, 6, 'Pankreoflat', 'Ensimas', '', '500mg', 'Tabletas Recubiertas', '', '', 1, 1, 0, 'AC'),
(104, 3, 6, 'Actron 400', 'Ibuprofeno ', '', '400 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(105, 3, 6, 'Actron 600', 'Ibuprofeno ', '', '600 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(106, 3, 6, 'Alka-Seltzer ', 'Alka-Seltzer', '', '600 mg', 'Tabletas Efervecentes', '', '', 1, 1, 0, 'AC'),
(107, 3, 6, 'Aspirina ', 'AAS', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(108, 3, 6, 'Aspirinetas ', 'AAS', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(109, 3, 6, 'Cafiaspirina', 'AAS/Cafeina', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(110, 3, 6, 'Cardioaspirina ', 'AAS', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(111, 3, 6, 'Redoxon ', 'Vitamina C', '', '1 g', 'Comprimido Efervecente', '', '', 1, 1, 0, 'AC'),
(112, 3, 6, 'Redoxon Limon ', 'Vitamina C', '', '2 g', 'Comprimido Efervecente', '', '', 1, 1, 0, 'AC'),
(113, 3, 5, 'Dicloxacil ', 'Dicloxacilina ', '', '500 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(114, 3, 5, 'Ciproxacin', 'Ciprofloxacina', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(115, 3, 5, 'Dolpiret Forte', 'Ibuprofeno/Paracetamol', '', '400/500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(116, 3, 5, 'Dolpiret', 'ibuprofeno/Paracetamol', '', '200/325 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(117, 3, 5, 'Dicloxacil', 'Dicloxacilina ', '', '250 mg', 'Suspencion', '', '', 1, 1, 0, 'AC'),
(118, 3, 5, 'Piredol', 'Paracetamol', '', '100 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(119, 3, 5, 'Omega-Zol', 'Omeprazol', '', '20 mg', 'Capsulas', '', '', 1, 1, 0, 'AC'),
(120, 3, 5, 'Triacef', 'Cefixima', '', '400 mg', 'Capsulas', '', '', 1, 1, 0, 'AC'),
(121, 3, 5, 'Asgesic', 'Ketorolaco', '', '20 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(122, 3, 5, 'Aviral', 'Aciclovir', '', '800 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(123, 3, 5, 'Flamax', 'Meloxicam ', '', '15 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(124, 3, 5, 'Moxilin ', 'Amoxicilina ', '', '1 g', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(125, 3, 5, 'Asgesic ', 'Ketorolaco', '', '30 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(126, 3, 5, 'Asgesic', 'Ketorolaco', '', '60 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(127, 3, 5, 'Cobaneurin ', 'Vitamina B12', '', '25.000 UI', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(128, 3, 5, 'Terbometasona', 'Dexametasona', '', '4 mg ', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(129, 3, 5, 'Terbometasona ', 'Dexametasona ', '', '8 mg ', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(130, 3, 5, 'Moxilin ', 'Amoxicilina', '', '250 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(131, 3, 5, 'Moxilin ', 'Amoxicilina ', '', '500 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(132, 3, 5, 'Bromex', 'Bromhexina Clorhidrato', '', '4 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(133, 3, 5, 'Gelbronquial', 'Salbutamol/Ambroxol', '', '2/7.5 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(134, 3, 5, 'Tusbol', 'Dextrometorfano', '', '10 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(135, 3, 5, 'Aviral', 'Aciclovir', '', '200 mg/5mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(136, 3, 5, 'Dolpiret', 'Ibuprofeno /Paracetamol', '', '100 mg/125mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(137, 3, 5, 'Ibupronal', 'Ibuprofeno ', '', '100 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(138, 3, 5, 'Ibupronal Forte', 'Ibuprofeno', '', '200 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(139, 3, 5, 'Sulfatrim', 'Cotrimoxazol', '', '240 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(140, 3, 5, 'Sulfatrim Forte', 'Cotrimoxazol', '', '480 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(141, 3, 5, '4 Derm', 'Miconazol/Gentamicina/Betametasona', '', '10 g', 'Crema', '', '', 1, 1, 0, 'AC'),
(142, 3, 5, '4 Derm', 'Miconazol/Gentamicina/Betametasona ', '', '20 g', 'Crema', '', '', 1, 1, 0, 'AC'),
(143, 3, 5, 'Aviral', 'Aciclovir ', '', '5 g', 'Crema', '', '', 1, 1, 0, 'AC'),
(144, 3, 5, 'Vitamina E ', 'Vitamina E', '', '1000 UI', 'Capsulas Blandas ', '', '', 1, 1, 0, 'AC'),
(145, 3, 5, 'Gumys Multivitaminico', 'Vitaminas ', '', '60 mg', 'Masticables', '', '', 1, 1, 0, 'AC'),
(146, 3, 5, 'Gumys Omega 3', 'Omega ', '', '60 mg', 'Masticables', '', '', 1, 1, 0, 'AC'),
(147, 3, 5, 'Gumys Pro-Inmune', 'Echinacea/vitamina C/Zinc', '', '60 mg', 'Masticables', '', '', 1, 1, 0, 'AC'),
(148, 3, 5, 'Gumys Vitamina C', 'Vitamina C', '', '60 mg', 'Masticables', '', '', 1, 1, 0, 'AC'),
(149, 3, 5, 'Isoton C', 'Magnesio', '', '131.74 mg', 'Tabletas Efervecentes', '', '', 1, 1, 0, 'AC'),
(150, 3, 5, 'Terbotonico', 'Vitaminas', '', '100 ml', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(151, 3, 7, 'Acetilcisteina ', 'Acetilcisteina ', '', '200 mg', 'Sobres', '', '', 1, 1, 0, 'AC'),
(152, 3, 7, 'Acetilcisteina ', 'Acetilcisteina ', '', '600 mg', 'Sobres', '', '', 1, 1, 0, 'AC'),
(153, 3, 7, 'Ambrox Adulto', 'Ambroxol ', '', '30 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(154, 3, 7, 'Ambrox Niños ', 'Ambroxol ', '', '15 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(155, 3, 7, 'Amoxicilina Cofar', 'Amoxicilina ', '', '1 g', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(156, 3, 7, 'Amoxicilima Cofar', 'Amoxicilima ', '', '500 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(157, 3, 7, 'Amoxicilina ', 'Amoxicilina ', '', '500 mg/5mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(158, 3, 7, 'Azimax ', 'Azitromicina ', '', '1 g', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(159, 3, 7, 'Azimax ', 'Azitromicina ', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(160, 3, 7, 'Azitromicina ', 'Azitromicina ', '', '200 mg/5mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(161, 3, 7, 'Azitromicina ', 'Azitromicina', '', '500 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(162, 3, 7, 'Bacitracina Neomicina ', 'Bacitracina/Neomicina ', '', '10 g', 'Crema ', '', '', 1, 1, 0, 'AC'),
(163, 3, 7, 'Bonagel Menta ', 'Hidroxido de aluminio/magnesio', '', '120 mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(164, 3, 7, 'Bonagel Plus Banana', 'Hidroxido de aluminio/magnesio', '', '200 mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(165, 3, 7, 'bonagel Plus Cherry', 'Hidroxido de Aluminio/Magnesio', '', '200 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(166, 3, 7, 'Bonagel Plus Cherry', 'Hidroxido de Aluminio/Magnesio', '', '200 mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(167, 3, 7, 'Celecoxib ', 'Celecoxib', '', '200 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(168, 3, 7, 'Ciprofloxacina ', 'Ciprofloxacina ', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(169, 3, 7, 'Claritromicina ', 'Claritromicina ', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(170, 3, 7, 'Clobetasol', 'Clobetasol', '', '0.05%', 'Crema', '', '', 1, 1, 0, 'AC'),
(171, 3, 7, 'Cloranfenicol Oftalmico', 'Cloranfenicol ', '', '0.5%', 'Gotas', '', '', 1, 1, 0, 'AC'),
(172, 3, 7, 'Caneszol', 'Clotrimazol', '', '1.0%', 'Crema Dermica', '', '', 1, 1, 0, 'AC'),
(173, 3, 7, 'Cofargot', 'Ergotamina/Cafeina', '', '1mg /100 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(174, 3, 7, 'Cofargot forte ', 'Ergotamina/Cafeina', '', '2mg /100 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(175, 3, 7, 'Cofibran ', 'Salvado de Trigo', '', '30mg', 'Sobres', '', '', 1, 1, 0, 'AC'),
(176, 3, 7, 'Xelprim Forte', 'Cotrimoxazol ', '', '960mg ', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(177, 3, 7, 'Chakitabs ', 'Chakitabs', '', '100 mg ', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(178, 3, 7, 'Dexacofasona ', 'Dexametasona ', '', '0.5 mg ', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(179, 3, 7, 'Optadex ', 'Dexametasona ', '', '0.1%', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(180, 3, 7, 'Dextrometorfano  ', 'Dextrometorfano ', '', '10mg/5mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(181, 3, 7, 'Diclomed ', 'Diclofenaco', '', '1.0%', 'Gel', '', '', 1, 1, 0, 'AC'),
(182, 3, 4, 'FLAVICOLD PLUS DIA NARANJA', 'FLAVICOL', '', '60 MG', 'SOBRE', '', '', 1, 1, 0, 'AC'),
(183, 3, 7, 'Flavicold Plus Niños ', 'Flavicold', '', '60 mg ', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(184, 3, 7, 'Flavicold Plus Noche Limon ', 'Flavicold', '', '60 mg ', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(185, 3, 7, 'Flavicolin Cherry', 'Flavicold', '', '60 mg ', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(186, 3, 7, 'Hedera Helix', 'Hedera Helix', '', '35 mg/5mL ', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(187, 3, 7, 'Hidroclorotiazida', 'Hidroclorotiazida', '', '50 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(188, 3, 7, 'Hioscina ', 'Hioscina ', '', '10 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(189, 3, 7, 'Ibuprofeno ', 'Ibuprofeno ', '', '100 mg/5mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(190, 3, 7, 'Ibuprofeno ', 'Ibuprofeno ', '', '200 mg/5mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(191, 3, 7, 'Lagrimas Artificiales ', 'Lagrimas ', '', '1.0%', 'Gotas Oftamologicas ', '', '', 1, 1, 0, 'AC'),
(192, 3, 7, 'Levofloxacina ', 'Levofloxacina ', '', '500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(193, 3, 7, 'Optasept', 'Nafazolina ', '', '0.1%', 'Gotas Oftalmologicas', '', '', 1, 1, 0, 'AC'),
(194, 3, 7, 'Nistatina ', 'Nistatina ', '', '100.000 UI', 'Crema ', '', '', 1, 1, 0, 'AC'),
(195, 3, 7, 'Omeprazol ', 'Omeprazol ', '', '20 mg ', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(196, 3, 7, 'Omeprazol ', 'Omeprazol ', '', '40 mg ', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(197, 3, 7, 'Optacloran ', 'Cloranfenicol ', '', '0.5%', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(198, 3, 7, 'Paracetamol ', 'Paeacetamol ', '', '100 mg', 'Gotas Orales ', '', '', 1, 1, 0, 'AC'),
(199, 3, 7, 'Paracetamol ', 'Paracetamol ', '', '125 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(200, 3, 7, 'Prednix', 'Prednisona ', '', '20 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(201, 3, 7, 'Xartan ', 'Losartan ', '', '50 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(202, 3, 7, 'Zinc ', 'Zinc ', '', '20 mg/5mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(203, 3, 8, 'Azucena', 'L-Arginina/Pfaffia', '', '15 g', 'Gel Intimo', '', '', 1, 1, 0, 'AC'),
(204, 3, 8, 'Dermocutyl ', 'Peroxido de Benzoilo', '', '5%', 'Gel ', '', '', 1, 1, 0, 'AC'),
(205, 3, 8, 'Dolmus', 'Ketoprofeno', '', '50 g', 'Gel ', '', '', 1, 1, 0, 'AC'),
(206, 3, 8, 'Dolmus X 3', 'Ketoprofeno ', '', '50 g', 'Parche', '', '', 1, 1, 0, 'AC'),
(207, 3, 8, 'Elidol Miel-Limon ', 'Benzocaina ', '', '6 mg', 'Pastilla', '', '', 1, 1, 0, 'AC'),
(208, 3, 8, 'Elidol Naranja ', 'Benzocaina ', '', '6 mg', 'Pastilla', '', '', 1, 1, 0, 'AC'),
(209, 3, 8, 'Figuvit Memory ', 'Omega 3', '', '6 mg', 'Pastilla', '', '', 1, 1, 0, 'AC'),
(210, 3, 8, 'Golpex ', 'Diclofenaco ', '', '1.61 mg', 'Spray', '', '', 1, 1, 0, 'AC'),
(211, 3, 8, 'Higeen Bolsillo-Agua Marina  ', 'Alcohol en Gel', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(212, 3, 8, 'Higeen Bolsillo-Frutas Rojas ', 'Alcohol en Gel', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(213, 3, 8, 'Higeen Bolsillo-Limon ', 'Alcohol en Gel', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(214, 3, 8, 'Higeen Bolsillo-Rosa de Damasco', 'Alcohol en Gel ', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(215, 3, 8, 'Higeen Bolsillo-Jazmin ', 'Alcohol en Gel ', '', '50 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(216, 3, 8, 'higeen infantil-Bibo-Boml ', 'Alcohol en Gel ', '', '80 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(217, 3, 8, 'Higeen Infantil-Dooh', 'Alcohol en Gel ', '', '80 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(218, 3, 8, 'Higeen Infantil-Filo ', 'Alcohol en Gel ', '', '80 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(219, 3, 8, 'Higeen Infantil-Gito', 'Alcohol en Gel ', '', '80 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(220, 3, 8, 'Maxmen 3B ', 'Preservativo', '', 'x3', 'caja X 3', '', '', 1, 1, 0, 'AC'),
(221, 3, 8, 'Pompiglos ', 'Pompiglos ', '', '35 g', 'Crema', '', '', 1, 1, 0, 'AC'),
(222, 3, 8, 'Pompiglos Pañitos Clasicos ', 'Pompiglos ', '', '50 unidades ', 'Tohallas ', '', '', 1, 1, 0, 'AC'),
(223, 3, 8, 'Pompiglos Pañitos Premium ', 'Pompiglos ', '', '60 unidades ', 'Tohallas ', '', '', 1, 1, 0, 'AC'),
(224, 3, 8, 'Sanatusin Antitusivo Infantil D/N', 'Sanatusin ', '', '60 mL ', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(225, 3, 8, 'Actifem ', 'paracetamol/ibuprofeno ', '', '320/200 mg ', 'Capsula ', '', '', 1, 1, 0, 'AC'),
(226, 3, 8, 'Antigripal L-CH D/N', 'Antigripal ', '', '100 mg ', 'Comprimidos Recubiertos', '', '', 1, 1, 0, 'AC'),
(227, 3, 8, 'Aquablan ', 'Nafasolina ', '', '1%', 'Gotas oftalmologicas  ', '', '', 1, 1, 0, 'AC'),
(228, 3, 8, 'Dolo-Octirona ', 'Paracetmol /Ibuprofeno ', '', '500/400 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(229, 3, 8, 'Dr. Bell Spray ', 'Terbinafina ', '', '100 mL', 'Spray', '', '', 1, 1, 0, 'AC'),
(230, 3, 8, 'Dr. Bell ', 'Terbinafina', '', '1%', 'Crema', '', '', 1, 1, 0, 'AC'),
(231, 3, 8, 'Dr. Bell Talco', 'Terbinafina', '', '75 g ', 'Talco', '', '', 1, 1, 0, 'AC'),
(232, 3, 8, 'Elidol Frambuesa', 'Benzocaina ', '', '6 mg', 'Pastillas ', '', '', 1, 1, 0, 'AC'),
(233, 3, 8, 'Figuvit ', 'Vitamina C', '', '100 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(234, 3, 8, 'Golpex ', 'Diclofenaco ', '', '1%', 'Gel ', '', '', 1, 1, 0, 'AC'),
(235, 3, 8, 'Higeen Infantil Bitty & Mitty', 'Alcohol en Gel', '', '80 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(236, 3, 8, 'Hiedrix ', 'Hedera Helix ', '', '35mg/5mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(237, 3, 8, 'Sanatusin Antitusivo Adulto D/N', 'Sanatusin ', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(238, 3, 8, 'Sanatusin Gelcaps D/N', 'Sanatusin ', '', '100 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(239, 3, 8, 'Sanatusin Miel Dia ', 'Sanatusin ', '', '100 mg', 'Sachets', '', '', 1, 1, 0, 'AC'),
(240, 3, 8, 'Sanatusin Miel Noche ', 'Sanatusin ', '', '100 mg', 'Sachets', '', '', 1, 1, 0, 'AC'),
(241, 3, 8, 'Cerelac Prob 5 Cereales ', 'Cerelac ', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(242, 3, 8, 'NAN 1 Pro ', 'Leche ', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(243, 3, 8, 'NAN 2 Pro ', 'Leche ', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(244, 3, 8, 'Nestogeno 1 Form ', 'Leche ', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(245, 3, 8, 'Nestogeno 2 Form ', 'Leche ', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(246, 3, 8, 'Armonyl Noche ', 'Armonyl ', '', '100 mg ', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(247, 3, 8, 'Armonyl Dia ', 'Armonyl', '', '100 mg ', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(248, 3, 8, 'Disfruta ', 'Disfruta ', '', '100 mg ', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(249, 3, 8, 'Dolorub ', 'Ibuprofeno ', '', '4%', 'Crema ', '', '', 1, 1, 0, 'AC'),
(250, 3, 8, 'Dolorub', 'Ibuprofeno', '', '4%', 'Gel', '', '', 1, 1, 0, 'AC'),
(251, 3, 8, 'Nenegloss Advance ', 'Nistatina ', '', '40 g', 'Crema', '', '', 1, 1, 0, 'AC'),
(252, 3, 8, 'Tapsin Dia', 'Tapsin ', '', '40 g', 'Sobre', '', '', 1, 1, 0, 'AC'),
(253, 3, 8, 'Tapsin Forte ', 'Tapsin', '', '40 g', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(254, 3, 8, 'Tapsin Infantil Masticable', 'Tapsin', '', '160 mg', 'Comprimido Masticable', '', '', 1, 1, 0, 'AC'),
(255, 3, 8, 'Tapsin Infantil MAsticable', 'Tapsin', '', '80 mg', 'Comprimido Masticable', '', '', 1, 1, 0, 'AC'),
(256, 3, 8, 'Tapsin Instaflu D/N', 'Tapsin', '', '80 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(257, 3, 8, 'Tapsin Noche ', 'Tapsin', '', '40 g', 'Sobre', '', '', 1, 1, 0, 'AC'),
(258, 3, 8, 'Aciclovir ', 'Aciclovir ', '', '5%', 'Crema', '', '', 1, 1, 0, 'AC'),
(259, 3, 8, 'Alertop ', 'Cetirizina ', '', '10 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(260, 3, 8, 'Autdol', 'Diclofenaco ', '', '10 mg', 'Gotas', '', '', 1, 1, 0, 'AC'),
(261, 3, 8, 'Betametazona ', 'Betametazona ', '', '0.05%', 'Crema', '', '', 1, 1, 0, 'AC'),
(262, 3, 8, 'Calcefor D Forte ', 'Calcio ', '', '600 mg ', 'Capsula ', '', '', 1, 1, 0, 'AC'),
(263, 3, 8, 'Contralmor ', 'Betametaso/Lidocaina ', '', '600 mg ', 'Supositorios ', '', '', 1, 1, 0, 'AC'),
(264, 3, 8, 'Cortiprex ', 'Prednisona ', '', '20 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(265, 3, 8, 'Despex ', 'Desloratadina ', '', '5 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(266, 3, 8, 'Despex', 'Desloratadina ', '', '2.5 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(267, 3, 8, 'Dolgex Forte ', 'Ibuprofeno ', '', '200mg/5mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(268, 3, 8, 'Furosemida ', 'Furosemida ', '', '40 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(269, 3, 8, 'Glibenclamida ', 'Glibenclamida', '', '5 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(270, 3, 8, 'Loperamida ', 'Loperamida ', '', '2 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(271, 3, 8, 'Loratadina ', 'Loratadina ', '', '10 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(272, 3, 8, 'Meloxxicam ', 'Meloxxicam ', '', '15 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(273, 3, 8, 'Mixgen ', 'Gentamicina /Betametasona ', '', '15 mg ', 'Crema', '', '', 1, 1, 0, 'AC'),
(274, 3, 8, 'Naproxeno ', 'Naproxeno ', '', '550 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(275, 3, 8, 'Neoalertop', 'Levocetiricina ', '', '5 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(276, 3, 8, 'Pangastren', 'Simeticona/Metoclopramida ', '', '5 mg ', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(277, 3, 8, 'Paracetamol ', 'Paracetamol ', '', '100 mg ', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(278, 3, 8, 'Paracetamol', 'Paracetamol', '', '500 mg ', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(279, 3, 8, 'Rehsal ', 'Suero de Hidratacion ', '', '60 MEQ', 'Sobre', '', '', 1, 1, 0, 'AC'),
(280, 3, 8, 'Aceclofen Duo ', 'Aceclofenaco ', '', '10 mg ', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(281, 3, 8, 'Ambroxol Adulto ', 'Ambroxol ', '', '30 mg ', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(282, 3, 8, 'Ambroxol Infantil ', 'Ambroxol', '', '15 mg ', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(283, 3, 8, 'Biocicatrizante ', 'Biocicatrizante ', '', '50 mg ', 'Crema ', '', '', 1, 1, 0, 'AC'),
(284, 3, 8, 'Broxmol ', 'Ambroxol/Salbutamol ', '', '15 mg/1 mg ', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(285, 3, 8, 'Diclofenaco ', 'Diclofenaco ', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(286, 3, 8, 'Duocid ', 'Omeprazol/Bicarbonato', '', '20 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(287, 3, 8, 'Duocid', 'Omeprazol/Bicarbonato', '', '20 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(288, 3, 8, 'Esomex ', 'Esomeprazol', '', '20 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(289, 3, 8, 'Ibuprofeno ', 'Ibuprofeno ', '', '600 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(290, 3, 8, 'Ibuprofeno', 'Ibuprofeno', '', '800 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(291, 3, 8, 'Metformina ', 'Metformina ', '', '850 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(292, 3, 8, 'Omeprazol ', 'Omeprazol ', '', '20 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(293, 3, 8, 'Paracetamol SAE', 'Paracetamol ', '', '500 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(294, 3, 8, 'Probiotic  ', 'Probiotic ', '', '10 mg ', 'Sobre', '', '', 1, 1, 0, 'AC'),
(295, 3, 8, 'T-36', 'Tadalafilo ', '', '20 mg ', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(296, 3, 8, 'Vitamina C', 'Vitamina C', '', '120 mg ', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(297, 3, 9, 'Bacitracina Neomicina ', 'Bacitracina/Neomicina ', '', '10 g', 'Pomada', '', '', 1, 1, 0, 'AC'),
(298, 3, 9, 'Hidrocortizona', 'Hidrocortizona', '', '1%', 'Pomada', '', '', 1, 1, 0, 'AC'),
(299, 3, 9, 'Nitrofurazona ', 'Nitrofurazona ', '', '0.2%', 'Pomada', '', '', 1, 1, 0, 'AC'),
(300, 3, 9, 'Metoclopramida ', 'Metoclopramida ', '', '0.35%', 'Gotas', '', '', 1, 1, 0, 'AC'),
(301, 3, 9, 'Out Pain ', 'Out Pain ', '', '0.35%', 'Unguento', '', '', 1, 1, 0, 'AC'),
(302, 3, 9, 'Wipe Antibacterial', 'Wipe Antibacterial', '', '10 mg', 'Toallas', '', '', 1, 1, 0, 'AC'),
(303, 3, 9, 'Wipe Hemorroidal', 'Wipe Hemorroidal', '', '10 mg', 'Toallas', '', '', 1, 1, 0, 'AC'),
(304, 3, 9, 'Wipe Eu Boral Higiene Intima ', 'Wipe Eu Boral', '', '10 mg', 'Toallas', '', '', 1, 1, 0, 'AC'),
(305, 3, 9, 'Clobederm', 'Clobetasol ', '', '0.05%', 'Crema ', '', '', 1, 1, 0, 'AC'),
(306, 3, 9, 'Juveacne ', 'Eritromicina ', '', '2%', 'Crema ', '', '', 1, 1, 0, 'AC'),
(307, 3, 9, 'Juveacne', 'Eritromicina', '', '3%', 'Locion ', '', '', 1, 1, 0, 'AC'),
(308, 3, 9, 'Quemaderm', 'Biyoduro de timolol /lidocaina ', '', '3%', 'Crema', '', '', 1, 1, 0, 'AC'),
(309, 3, 9, 'Revederm', 'Hidroquinona ', '', '2%', 'Crema', '', '', 1, 1, 0, 'AC'),
(310, 3, 9, 'Tetraderm', 'Gentamicina/Betametasona ', '', '2%', 'Crema', '', '', 1, 1, 0, 'AC'),
(311, 3, 9, 'Verruguil Callicida', 'Ac. salicilico/Lactico', '', '20%', 'Solucion', '', '', 1, 1, 0, 'AC'),
(312, 3, 9, 'Alcohol Medicinal 125mL', 'Alcohol ', '', '75%', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(313, 3, 9, 'Alcohol Medicinal 500mL', 'Alcohol', '', '75%', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(314, 3, 9, 'Alcohol Yodado 125mL', 'Alcohol ', '', '1%', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(315, 3, 9, 'Cerofluit L', 'Carbonato de sodio /Lidocaina ', '', '3%', 'Gotas Oticas', '', '', 1, 1, 0, 'AC'),
(316, 3, 9, 'Glicerina Bi Destilada ', 'Glicerina ', '', '37.5 g', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(317, 3, 9, 'Podomicol Locion Fuerte', 'yodo metaloide/ac. salicilico/benzoico ', '', '2g', 'Locion ', '', '', 1, 1, 0, 'AC'),
(318, 3, 9, 'Podomicol ', 'Ac. undecilenico', '', '2g', 'Talco', '', '', 1, 1, 0, 'AC'),
(319, 3, 9, 'Pomada Nasal ', 'Romenol/Oxido de Zinc ', '', '2%', 'Tubo', '', '', 1, 1, 0, 'AC'),
(320, 3, 9, 'Suplizinc Jarabe de Zinc)', 'ZInc ', '', '20mg/5mL ', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(321, 3, 9, 'Sorojchi Pills', 'AAS/cafeina ', '', '100 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(322, 3, 9, 'Valeriana Tintura ', 'Valeriana ', '', '20 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(323, 3, 9, 'Almond Cream Baby', 'Almond ', '', '70 mg', 'Crema', '', '', 1, 1, 0, 'AC'),
(324, 3, 9, 'Babycolic', 'Bicarbonato de sodio ', '', '1g', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(325, 3, 9, 'Escaldbaby Pasta ', 'Oxido de Zinc ', '', '25g', 'Pasta ', '', '', 1, 1, 0, 'AC'),
(326, 3, 10, 'Algodon Bolitas ', 'Algodon ', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(327, 3, 10, 'Algodon Disco', 'Algodon', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(328, 3, 10, 'Compresa de Gasa 7.5 x 7.5', 'Compresa', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(329, 3, 10, 'Compresa de Gasa 10 x 10', 'Compresa', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(330, 3, 10, 'Venda de Gasa 5cm ', 'Venda ', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(331, 3, 10, 'Venda de Gasa 7.5cm', 'Venda', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(332, 3, 10, 'Venda de Gasa 10cm', 'Venda', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(333, 3, 10, 'Venda de Gasa 12.5cm', 'Venda', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(334, 3, 10, 'Venda de Gasa 15cm', 'Venda ', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(335, 3, 10, 'Venda de Gasa 20cm', 'Venda ', '', '50 g', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(336, 3, 11, 'A-Vimin ', 'Vitamina A', '', '10000 U.I.', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(337, 3, 11, 'ACD-Vimin ', 'Vitamina ACD', '', '10000 U.I.', 'Gotas', '', '', 1, 1, 0, 'AC'),
(338, 3, 11, 'Algifeno ', 'Tramadol ', '', '50 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(339, 3, 11, 'Algifeno Compuesto ', 'Tramadol/Paracetamol ', '', '50/500 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(340, 3, 11, 'Alumag ', 'Hidroxido de aluminio/magnesio', '', '200 mg ', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(341, 3, 11, 'Alumag', 'Hidroxido de aluminio/magnesio', '', '200 mg ', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(342, 3, 11, 'Anara ', 'Picosulfato de Sodio ', '', '5 mg ', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(343, 3, 11, 'Angidol Mango', 'Angidol ', '', '5 mg ', 'Pastillas ', '', '', 1, 1, 0, 'AC'),
(344, 3, 11, 'Antifludes', 'Antifludes', '', '350 mg ', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(345, 3, 11, 'Antigripal Compuesto', 'Antigripal ', '', '350 mg ', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(346, 3, 11, 'Bebe-lax', 'Glicerina ', '', '4 mL ', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(347, 3, 11, 'Bebelac 1', 'Leche ', '', '400 g', 'Caja', '', '', 1, 1, 0, 'AC'),
(348, 3, 11, 'Bebelac 1', 'Leche', '', '200 g', 'Caja', '', '', 1, 1, 0, 'AC'),
(349, 3, 11, 'Bebelac 2', 'Leche', '', '400 g', 'Caja', '', '', 1, 1, 0, 'AC'),
(350, 3, 11, 'Bebelac 2', 'Leche', '', '200 g', 'Caja', '', '', 1, 1, 0, 'AC'),
(351, 3, 11, 'Bicarbonato de Soda', 'Bicarbonato de sodio ', '', '20 g', 'Sobre', '', '', 1, 1, 0, 'AC'),
(352, 3, 11, 'Bilisan ', 'Acido Dehidrocolico', '', '100 g', 'Tabletas', '', '', 1, 1, 0, 'AC'),
(353, 3, 11, 'C-Vimin ', 'Vitamina C', '', '2000 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(354, 3, 11, 'Coba-Vimin Compuesto', 'Cianocobalamina ', '', '12.6.3mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(355, 3, 11, 'Coba-Vimin Compuesto', 'Cianocobalamina', '', '10.000 UI', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(356, 3, 11, 'Coba-Vimin Compuesto', 'Cianocobalamina', '', '25.000 UI', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(357, 3, 11, 'Complejo B-Vimin  ', 'Complejo B', '', '100mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(358, 3, 11, 'Dentinox-N ', 'Tintura de manzanilla /lidocaina ', '', '10 g', 'Gel', '', '', 1, 1, 0, 'AC'),
(359, 3, 11, 'Dextroton ', 'Glucosa ', '', '15 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(360, 3, 11, 'Diposan ', 'Dimetilpolisiloxano', '', '100 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(361, 3, 11, 'Espasmo Veramidon ', ' Clonixinato de Lisina/Propinoxato', '', '250 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(362, 3, 11, 'Florestor', 'Saccharomyces Boulardii', '', '250 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(363, 3, 11, 'Hemorsan ', 'Hemorsan ', '', '25 mg', 'Supositorio ', '', '', 1, 1, 0, 'AC'),
(364, 3, 11, 'Intibroxol ', 'Ambroxol ', '', '30 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(365, 3, 11, 'Intibroxol', 'Ambroxol', '', '30 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(366, 3, 11, 'K-Vimin ', 'Vitamina K', '', '10 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(367, 3, 11, 'Mentisan Menta ', 'Mentisan ', '', '10 mg', 'Pastillas ', '', '', 1, 1, 0, 'AC'),
(368, 3, 11, 'Mentisan Plus D Cherry', 'Mentisan', '', '10 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(369, 3, 11, 'Mentisan Plus N Limon ', 'Mentisan', '', '10 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(370, 3, 11, 'Mentisan Unguento ', 'Mentisan', '', '25 g', 'Lata ', '', '', 1, 1, 0, 'AC'),
(371, 3, 11, 'Mentisan Unguento', 'Mentisan', '', '15 g', 'Lata ', '', '', 1, 1, 0, 'AC'),
(372, 3, 11, 'Muxatil ', 'Acetilcisteina ', '', '200 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(373, 3, 11, 'Muxatil', 'Acetilcisteina', '', '600 mg', 'Sobre', '', '', 1, 1, 0, 'AC'),
(374, 3, 11, 'Neuro Vimin ', 'Neuro Vimin ', '', '200 mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(375, 3, 11, 'Pan-Vimin  Mineralizado ', 'Pan-Vimin ', '', '200 mg', 'Grageas', '', '', 1, 1, 0, 'AC'),
(376, 3, 11, 'Pasuma ', 'Sildenafil ', '', '50 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(377, 3, 11, 'Quemacuran-L ', 'Quemacuran ', '', '60 g', 'Tubo', '', '', 1, 1, 0, 'AC'),
(378, 3, 11, 'Quetorol 10', 'Ketorolaco', '', '10 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(379, 3, 11, 'Quetorol 20', 'Ketorolaco', '', '20 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(380, 3, 11, 'Quetorol 20 SL', 'Ketorolaco', '', '20 mg', 'Tabletas Sub lingual', '', '', 1, 1, 0, 'AC'),
(381, 3, 11, 'Quetorol 30 SL', 'Ketorolaco', '', '30 mg', 'Tabletas Sub lingual', '', '', 1, 1, 0, 'AC'),
(382, 3, 11, 'Rinofrin', 'Solucion  Fisiologica ', '', '10 mL', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(383, 3, 11, 'Somniclona ', 'Zopiclone ', '', '7.5 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(384, 3, 11, 'Suero de la Vida ', 'Suero de Hidratacion ', '', '2 g', 'Sobre', '', '', 1, 1, 0, 'AC'),
(385, 3, 11, 'Sumax', 'Sumatriptan ', '', '50 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(386, 3, 11, 'Tonico Inti ', 'Tonico Inti ', '', '200 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(387, 3, 11, 'Veramidon ', 'Clonixinato de Lisina ', '', '250 mg', 'Tabletas Recubiertas ', '', '', 1, 1, 0, 'AC'),
(388, 3, 11, 'Veramidon B', 'Clonixinato de Lisina/vitamina  B12', '', '250 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(389, 3, 11, 'Veramidon Migra ', 'Clonixinato de Lisina/Ergotamina ', '', '250 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(390, 3, 11, 'Virusan ', 'Aciclovir ', '', '200 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(391, 3, 11, 'Virusan', 'Aciclovir', '', '400 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(392, 3, 11, 'Nutrilon Premium 1', 'Leche ', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(393, 3, 11, 'Nutrilon Premium 2', 'Leche', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(394, 3, 11, 'Nutrilon Premium 3', 'Leche', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(395, 3, 11, 'Nutrilon Soya', 'Leche', '', '400 g', 'Lata', '', '', 1, 1, 0, 'AC'),
(396, 3, 11, 'Pyralvex', 'Pyralvex', '', '10 mL', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(397, 3, 12, 'Algodon Premier  100 g', 'Algodon ', '', '100 gr', 'Rollo', '', '', 1, 1, 0, 'AC'),
(398, 3, 12, 'Algodon Premier 400 g', 'Algodon ', '', '400 gr', 'Rollo', '', '', 1, 1, 0, 'AC'),
(399, 3, 12, 'Algodon Premier 50 g', 'Algodon', '', '50 gr', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(400, 3, 12, 'Algodon Premier 10 g', 'Algodon', '', '10 gr', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(401, 3, 12, 'Venda Elastica 5cm', 'Venda ', '', '5 cm', 'Rollo', '', '', 1, 1, 0, 'AC'),
(402, 3, 12, 'Venda Elastica 7.5cm', 'Venda', '', '7.5 cm', 'Rollo', '', '', 1, 1, 0, 'AC'),
(403, 3, 12, 'Venda Elastica 10cm', 'Venda', '', '10 cm', 'Rollo', '', '', 1, 1, 0, 'AC'),
(404, 3, 12, 'Barbijo con Elastico', 'Barbijo', '', '10 cm', 'Caja ', '', '', 1, 1, 0, 'AC'),
(405, 3, 12, 'Guantes de Latex "L"', 'Guantes ', '', '100 ', 'Caja ', '', '', 1, 1, 0, 'AC'),
(406, 3, 12, 'Guantes de Latex "S"', 'Guantes', '', '100', 'Caja', '', '', 1, 1, 0, 'AC'),
(407, 3, 12, 'Equipo de Infusion Sin Aguja ', 'Equipos', '', '100', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(408, 3, 12, 'Jeringa de Insulina ', 'Jeringa', '', '1 mL', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(409, 3, 12, 'Jeringa 3 mL', 'Jeringa', '', '3 mL', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(410, 3, 12, 'Jeringa', 'Jeringa', '', '5 mL', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(411, 3, 12, 'Jeringa 10 mL', 'Jeringa', '', '10 mL', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(412, 3, 13, 'Aftisan Plus Gel ', 'Aftisan ', '', '5 gr', 'Tubo', '', '', 1, 1, 0, 'AC'),
(413, 3, 13, 'Bioelton ', 'Bioelton ', '', '175 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(414, 3, 13, 'Calmatos Antitusivo ', 'Calmatos ', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(415, 3, 13, 'Calmatos Plus ', 'Calmatos', '', '100 mL', 'Pastillas ', '', '', 1, 1, 0, 'AC'),
(416, 3, 13, 'Clenbroxol ', 'Clenbuterol/Ambroxol ', '', '30 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(417, 3, 13, 'Etusar Antitusigeno ', 'Dextrometorfano', '', '15mg/5mL', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(418, 3, 13, 'Gripalgin ', 'Paracetamol/Clorfeniramina ', '', '15mg/5mL', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(419, 3, 13, 'Terolbrox Niños ', 'Ambroxol ', '', '15 mg', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(420, 3, 13, 'Terolbrox Adulto', 'Ambroxol', '', '30 mg', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(421, 3, 13, 'Vitamina C ', 'Vitamina C ', '', '100 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(422, 3, 13, 'Reumalgin Antireunatico', 'Reumalgin ', '', '25 g', 'Unguento ', '', '', 1, 1, 0, 'AC'),
(423, 3, 13, 'Neurocerebrin  ', 'Neurocerebrin ', '', '120 mL', 'Solucion', '', '', 1, 1, 0, 'AC'),
(424, 3, 13, 'Neurocerebrin Gelcaps', 'Neurocerebrin', '', '120 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(425, 3, 13, 'Verruguin', 'Ac. salicilico/lactico/aceitico', '', '10 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(426, 3, 13, 'Ambroxol Ifarbo ', 'Ambroxol', '', '30 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(427, 3, 13, 'Agua Oxigenada ', 'Agua Oxigenada', '', '60 ml', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(428, 3, 13, 'Agua Oxigenada', 'Agua Oxigenada', '', '500 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(429, 3, 13, 'Agua Oxigenada', 'Agua Oxigenada', '', '1000 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(430, 3, 13, 'Glicerina Bidestilada ', 'Glicerina ', '', '30 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(431, 3, 13, 'Mercuro Cromo ', 'Mercuro Cromo ', '', '10 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(432, 3, 13, 'Mercuro Cromo', 'Mercuro Cromo', '', '30 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(433, 3, 13, 'Tintura de Yodo ', 'Tintura de Yodo ', '', '10 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(434, 3, 13, 'Tintura de Yodo ', 'Tintura de Yodo ', '', '30 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(435, 3, 13, 'Vaselina Liquida ', 'Vaselina Liquida ', '', '30 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(436, 3, 13, 'Violeta de Genciana ', 'Violeta de Genciana ', '', '10 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(437, 3, 13, 'Bicarbonato de Sodio ', 'Bicarbonato de Sodio ', '', '20 gr ', 'Sobre', '', '', 1, 1, 0, 'AC'),
(438, 3, 13, 'Belladona ', 'Belladona ', '', '12 gr ', 'Pomada ', '', '', 1, 1, 0, 'AC'),
(439, 3, 13, 'Gripobron  ', 'Gripobron ', '', '12 gr ', 'Pomada ', '', '', 1, 1, 0, 'AC'),
(440, 3, 13, 'Vaselina Solida Blanca ', 'Vaselina', '', '12 gr ', 'Pomada ', '', '', 1, 1, 0, 'AC'),
(441, 3, 13, 'Vaselina Solida Perfumada ', 'Vaselina', '', '12 gr ', 'Pomada ', '', '', 1, 1, 0, 'AC'),
(442, 3, 13, 'Dermasecol ', 'Dermasecol ', '', '26 gr ', 'Pomada ', '', '', 1, 1, 0, 'AC'),
(443, 3, 14, 'Botiquin ', 'Botiquin ', '', '20%', 'Caja ', '', '', 1, 1, 0, 'AC'),
(444, 3, 14, 'Alikal', 'Bicarbonato de Sodio ', '', '10 gr', 'Sobre', '', '', 1, 1, 0, 'AC'),
(445, 3, 14, 'Digestan Compuesto ', 'Digestan ', '', '10 gr', 'Sobre', '', '', 1, 1, 0, 'AC'),
(446, 3, 14, 'Propoleo Reina Obrera ', 'Propoleo ', '', '10 gr', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(447, 3, 14, 'Curitas ', 'Curitas ', '', '10 gr', 'Vendita ', '', '', 1, 1, 0, 'AC'),
(448, 3, 14, 'Curitas Infantiles ', 'Curitas ', '', '10 gr', 'Vendita ', '', '', 1, 1, 0, 'AC'),
(449, 3, 14, 'Dolorsan ', 'Dolorsan ', '', '15 gr', 'Lata', '', '', 1, 1, 0, 'AC'),
(450, 3, 11, 'Aci-Tip ', 'Magaldrato/Simeticona ', '', '800/40', 'Comprimido Masticable ', '', '', 1, 1, 0, 'AC'),
(451, 3, 11, 'Flogiatrim B12 ', 'Piroxicam/Vitamina B6yB12', '', '20mg ', 'Ampollas', '', '', 1, 1, 0, 'AC'),
(452, 3, 11, 'Flogiatrim B12', 'Piroxicam/Vitamina B6yB12', '', '20mg ', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(453, 3, 11, 'Plidan ', 'Tila/Valerianan ', '', '75mg', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(454, 3, 11, 'Sertal ', 'Propinox ', '', '1 %', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(455, 3, 11, 'Sertal', 'Clonixinato /Propinox', '', '1 %', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(456, 3, 11, 'Viadil Compuesto', 'Clonixinato/Propinox', '', '125/10mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(457, 3, 11, 'Di-Neumobron ', 'Paracetamol ', '', '30 mg', 'Supositorios', '', '', 1, 1, 0, 'AC'),
(458, 3, 11, 'Convertal', 'Losartan Potasico', '', '50 mg', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(459, 3, 7, 'Novadol ', 'Diclofenaco/ibuprofeno', '', '50/400', 'Capsula ', '', '', 1, 1, 0, 'AC'),
(460, 3, 16, 'Indometacina ', 'Indometacina ', '', '100 mg', 'Supositorio ', '', '', 1, 1, 0, 'AC'),
(461, 3, 16, 'Supositorio Bronquial Infantil ', 'Guayacolato de Gliserilo/Eucalipto', '', '100 mg', 'Supositorio ', '', '', 1, 1, 0, 'AC'),
(462, 3, 17, 'Typirec', 'Typirec', '', '100mg', 'Capsula ', '', '', 1, 1, 0, 'AC'),
(463, 3, 17, 'Indofar ', 'Indometacina ', '', '100mg', 'Capsula ', '', '', 1, 1, 0, 'AC'),
(464, 3, 17, 'Relaxicam ', 'Carisoprodol ', '', '100mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(465, 3, 18, 'Uroplus ', 'Norfloxacina/fenazopiridina ', '', '400mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(466, 3, 15, 'Irrigor ', 'Nimodipino', '', '30 mg', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(467, 3, 18, 'Prueba-Embarazo ', 'Prueba-Embarazo ', '', '99%', 'Casset', '', '', 1, 1, 0, 'AC'),
(468, 3, 18, 'Colector de Orina ', 'Colector ', '', '99%', 'Vaso', '', '', 1, 1, 0, 'AC'),
(469, 3, 18, 'Colector de Eces ', 'Colector', '', '99%', 'Vaso', '', '', 1, 1, 0, 'AC'),
(470, 3, 20, 'Broncotos ', 'Bromexina ', '', '4mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(471, 3, 20, 'Broncotos', 'Bromexina', '', '2mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(472, 3, 20, 'Diclofenaco ', 'Diclofenaco ', '', '50 mg', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(473, 3, 20, 'Diclofenaco', 'Diclofenaco', '', '75 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(474, 3, 20, 'Diclohan ', 'Diclofenaco', '', '1%', 'Gel', '', '', 1, 1, 0, 'AC'),
(475, 3, 20, 'Dololaco', 'ketorolaco', '', '20 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(476, 3, 20, 'Echinacea Complex', 'Echinacea ', '', '20 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(477, 3, 20, 'Echinacea Complex', 'Echinacea ', '', '20 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(478, 3, 20, 'Enalapril ', 'Enalapril ', '', '10 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(479, 3, 20, 'Eritrocris ', 'Eritromicina ', '', '250 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(480, 3, 20, 'Ibufort Duo ', 'ibuprofeno /paracetamol ', '', '100/125 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(481, 3, 20, 'Metronidazol ', 'Metronidazol ', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(482, 3, 20, 'Ranitidina ', 'Ranitidina ', '', '150 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(483, 3, 20, 'Tetracris ', 'Tetraciclina ', '', '500 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(484, 3, 20, 'Alopurinol ', 'Alopurinol ', '', '300 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(485, 3, 21, 'Trio-Val D y N ', 'Trio-Val', '', 'por 3', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(486, 3, 21, 'Cloranfenicol Colirio ', 'Cloranfenicol ', '', '5 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(487, 3, 21, 'Antiax ', 'Magaldrato/Simeticona  ', '', '480/100 mg', 'Masticables ', '', '', 1, 1, 0, 'AC'),
(488, 3, 21, 'Bequium ', 'codeina /pseudoefedrina ', '', '10/30 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(489, 3, 21, 'Cloranfenicol Unguento ', 'Cloranfenicol ', '', '1%', 'Unguento oftalmico ', '', '', 1, 1, 0, 'AC'),
(490, 3, 21, 'Migrax', 'Paracetamol/Cafeina/Ergometrina ', '', '450/40/1 mg', 'Comprimido ', '', '', 1, 1, 0, 'AC'),
(491, 3, 21, 'Muxelix ', 'Hedera Helix ', '', '35mg/5ml ', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(492, 3, 21, 'Muxol ', 'Ambroxol', '', '30 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(493, 3, 21, 'Muxol Adulto ', 'Ambroxol ', '', '30 mg ', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(494, 3, 21, 'Muxol Pediatrico ', 'Ambroxol ', '', '15 mg ', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(495, 3, 21, 'Nicodrops Colirio ', 'Nafazolina/Dextran ', '', '1 mg ', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(496, 3, 21, 'Nicotears ', 'Hipromelosa/Dextran ', '', '1 mg ', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(497, 3, 21, 'Novo-Tears ', 'Nafazolina/Hipromelosa/Dextran', '', '1 mg ', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(498, 3, 21, 'Oftagen ', 'Gentamicina ', '', '0.3%', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(499, 3, 21, 'Trio-Val Clasico ', 'Trio-Val ', '', '500 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(500, 3, 21, 'Trio-Val D y N ', 'Trio-Val ', '', '500 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(501, 3, 21, 'Trio-Val ', 'Trio-Val', '', '120 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(502, 3, 21, 'Trio-Val', 'Trio-Val', '', '125 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(503, 3, 21, 'Zodol ', 'Tramadol ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(504, 3, 11, 'Eutirox ', 'Levotiroxina ', '', '75 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(505, 3, 22, 'Avamigran Plus ', 'Ergotamina/Cafeina ', '', '1/80 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(506, 3, 23, 'Suero de la Vida C/Sabor ', 'Suero de Rehidratacion ', '', '10 gr', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(507, 3, 24, 'Purgo Vita ', 'Purgo Vita ', '', '20 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(508, 3, 14, 'Lenor ', 'Levonorgestrel', '', '1.5 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(509, 3, 14, 'Nucleo C.M.P.', 'nucleo', '', '10 ml', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(510, 3, 11, 'Pantera Clasico', 'Pantera ', '', '3 condones ', 'Caja', '', '', 1, 1, 0, 'AC'),
(511, 3, 11, 'Pantera Gold', 'Pantera', '', '3 condones ', 'Caja', '', '', 1, 1, 0, 'AC'),
(512, 3, 11, 'Pantera Power', 'Pantera', '', '3 condones ', 'Caja', '', '', 1, 1, 0, 'AC'),
(513, 3, 7, 'Fluidimed 200', 'Acetilcisteina ', '', '200 mg', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(514, 3, 7, 'Fluidimed 600', 'Acetilcisteina', '', '600 mg', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(515, 3, 25, 'Daraquin ', 'Cloroquina ', '', '250 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(516, 3, 25, 'Algipal', 'Salicilato de Metilo ', '', '22g', 'Unguento ', '', '', 1, 1, 0, 'AC'),
(517, 3, 26, 'Alcolax', 'Bisacodilo', '', '5mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(518, 3, 26, 'Alcophenicol ', 'Cloranfenicol/Prednisona ', '', '4mg/7.5mg', 'Colirio ', '', '', 1, 1, 0, 'AC'),
(519, 3, 26, 'Urotrac Plus', 'Acido Pipemidico/Fenazopiridina ', '', '400mg/100mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(520, 3, 26, 'Uroalcos ', 'Norfloxacina/fenazopiridina', '', '400mg/100mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(521, 3, 26, 'Alergin ', 'Clorferinamina ', '', '4 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(522, 3, 26, 'Alergin', 'Clorferinamina ', '', '2  mg', 'Jarabe ', '', '', 1, 1, 0, 'AC');
INSERT INTO `ve_productos` (`id`, `codad_empresa`, `idve_linea`, `valor1`, `valor2`, `descripcion_producto`, `composicion`, `presentacion`, `unidad`, `sabor`, `vencimiento`, `valoracion`, `precioporcentaje`, `estado`) VALUES
(523, 3, 26, 'Nutrison Adulto ', 'Suplemento Vitaminico ', '', '200 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(524, 3, 26, 'Nutrison Niños ', 'Suplemento Vitaminico', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(525, 3, 26, 'Ucotrin ', 'Wiwa-Wira y Eucalipto', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(526, 3, 26, 'Alcofen', 'Paracetamol', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(527, 3, 26, 'Tosalcos', 'Dextrometorfano/Difenhidramina ', '', '10/8mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(528, 3, 26, 'Tosalcos ', 'Dextrometorfano', '', '10mg', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(529, 3, 26, 'Alcofen Femenino', 'Paracetamol/Cafeina ', '', '500/30mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(530, 3, 26, 'Calmadol ', 'ASA/Cafeina ', '', '500/20mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(531, 3, 26, 'Calmadolcito', 'ASA', '', '100mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(532, 3, 26, 'Resfriol', 'Paracetamol/clorfeniramina ', '', '300/10mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(533, 3, 26, 'Resfriolito', 'ASA/Clorferinamina ', '', '100/0.5mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(534, 3, 26, 'Alcoderm 20g', 'Gentamicina/Tolnaftato/Betametasona', '', '0.1%', 'Crema', '', '', 1, 1, 0, 'AC'),
(535, 3, 26, 'Alcoderm 10G', 'Gentamicina/Tolnaftato/Betametasona', '', '0.1%', 'Crema', '', '', 1, 1, 0, 'AC'),
(536, 3, 26, 'Resfriolito ', 'Salicilato de Sodio/Clorferinamina ', '', '80/0.75mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(537, 3, 27, 'Broncoflu ', 'Salbutamol/Ambroxol', '', '1/15mg', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(538, 3, 27, 'Dologrip ', 'Paracetamol/clorferinamina /pseudoefedrina ', '', '120/0.75/7.5mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(539, 3, 27, 'Dologrip Infantil ', 'Clorferinamina/Pseudoefedrina/Dextrometorfano', '', '2/15/10mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(540, 3, 27, 'Termo-Diprofen ', 'Paracetamol/Ibuprofeno ', '', '150/150mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(541, 3, 27, 'Tussinol ', 'Clorferinamina/Pseudoefedrina/codeina ', '', '2/15/10mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(542, 3, 27, 'Ciflox ', 'Ciprofloxacina ', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(543, 3, 27, 'Flamacox', 'Meloxicam ', '', '15 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(544, 3, 27, 'Flamadin ', 'Diclofenaco ', '', '1 %', 'Gel ', '', '', 1, 1, 0, 'AC'),
(545, 3, 27, 'Flamadin Relax ', 'Diclofenaco/Pridinol ', '', '50/4mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(546, 3, 27, 'Diprofen ', 'Ibuprofeno ', '', '100 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(547, 3, 27, 'Dontoflamon ', 'Paracetamol/Ibuprofeno', '', '125/100 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(548, 3, 27, 'Ifatrim Fuerte', 'Cotrimoxazol', '', '480 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(549, 3, 27, 'Ifatrim', 'Cotrimoxazol', '', '240 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(550, 3, 27, 'Terracolin ', 'Nifuroxazida', '', '200 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(551, 3, 27, 'Masculan Type 1', 'Preservativo', '', 'x 3', 'Caja ', '', '', 1, 1, 0, 'AC'),
(552, 3, 27, 'Masculan Type 2', 'Preservativo', '', 'x 3', 'Caja ', '', '', 1, 1, 0, 'AC'),
(553, 3, 27, 'Masculan Type 3', 'Preservativo', '', 'x 3', 'Caja ', '', '', 1, 1, 0, 'AC'),
(554, 3, 27, 'Masculan Type 4', 'Preservativo', '', 'x 3', 'Caja ', '', '', 1, 1, 0, 'AC'),
(555, 3, 27, 'Masculan Frutti Edition ', 'Preservativo', '', 'x 3', 'Caja ', '', '', 1, 1, 0, 'AC'),
(556, 3, 27, 'Masculan Largo Placer', 'Preservativo', '', 'x 3', 'Caja ', '', '', 1, 1, 0, 'AC'),
(557, 3, 27, 'Terracolin ', 'Nifuroxazida', '', '20 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(558, 3, 14, 'Bahia Super Block SPF55', 'Protector Solar', '', 'SPF55', 'Sachet', '', '', 1, 1, 0, 'AC'),
(559, 3, 14, 'Bahia Bebes SPF50', 'Protector Solar', '', 'SPF50', 'Sachet', '', '', 1, 1, 0, 'AC'),
(560, 3, 8, 'Carbamazepina ', 'Carbamazepina ', '', '200 mg', 'Sachet', '', '', 1, 1, 0, 'AC'),
(561, 3, 14, 'Ranitidina ', 'Ranitidina ', '', '300 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(562, 3, 16, 'Acido Nalidixico ', 'Acido Nalidixico ', '', '500 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(563, 3, 16, 'Carbamazepina ', 'Carbamazepina ', '', '200 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(564, 3, 16, 'Ibuprofeno ', 'Ibuprofeno ', '', '400 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(565, 3, 16, 'Levofloxacina ', 'Levofloxacina ', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(566, 3, 16, 'Metoclopramida ', 'Metoclopramida ', '', '10 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(567, 3, 16, 'Prednisona ', 'Prednisona ', '', '5 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(568, 3, 16, 'Sindenafil', 'Sindenafil', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(569, 3, 16, 'Supositorio de Glicerina ', 'Supositorio de Glicerina ', '', '90%', 'Supositorio ', '', '', 1, 1, 0, 'AC'),
(570, 3, 16, 'Yodo Povidona ', 'Yodo Povidona ', '', '10 %', 'Crema', '', '', 1, 1, 0, 'AC'),
(571, 3, 16, 'Yodo Povidona', 'Yodo Povidona', '', '10 %', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(572, 3, 4, 'Bacticel Forte ', 'Cotrimoxazol ', '', '960 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(573, 3, 28, 'Amoxidin Orange ', 'Amoxicilina ', '', '250 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(574, 3, 28, 'Amoxidin Orange', 'Amoxicilina', '', '500 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(575, 3, 28, 'Betasol ', 'Clobetasol ', '', '0.05%', 'Tubo', '', '', 1, 1, 0, 'AC'),
(576, 3, 28, 'Aliviol Gel ', 'Diclofenaco/linaza/Metil salicilato/mentol', '', '1%', 'Tubo', '', '', 1, 1, 0, 'AC'),
(577, 3, 28, 'Aliviol Plus ', 'Diclofenaco/Paracetamol', '', '50/500 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(578, 3, 28, 'Hozart', 'Losartan ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(579, 3, 28, 'Aracyl NF', 'Levocetirizina ', '', '5 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(580, 3, 28, 'Tambol DF', 'Paracetamol', '', '1 g', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(581, 3, 17, 'Amoxilanico', 'Amoxicilina/Acido Clavulanico', '', '250/62.5mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(582, 3, 17, 'Amoxicilina/Acido Clavulanico', 'Amoxilanico', '', '500/125mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(583, 3, 17, 'Amoxilanico Duo', 'Amoxicilina/Acido Clavulanico', '', '500/125mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(584, 3, 17, 'Amoxilanico Duo', 'Amoxicilina/Acido Clavulanico', '', '875/125mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(585, 3, 17, 'Clotrimazol ', 'Clotrimazol', '', '100 mg', 'Ovulos ', '', '', 1, 1, 0, 'AC'),
(586, 3, 17, 'Cozarin ', 'Losartan Potasico ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(587, 3, 17, 'Doloterm ', 'Ibuprofeno ', '', '200 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(588, 3, 17, 'Doloterm i ', 'Ibuprofeno ', '', '50 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(589, 3, 17, 'Typirec Infantil ', 'Typirec', '', '100 mL', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(590, 3, 17, 'Inicox 200', 'Celecoxib', '', '200 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(591, 3, 17, 'Luranil ', 'Norfloxacina/fenazopiridina ', '', '400/100 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(592, 3, 24, 'PULMOTOS PLUS ', 'CODEINA/PSEUDOEFEDRINA/CLORFENIRAMINA ', '', '10/7.5/0.5mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(593, 3, 24, 'CARISOPRODOL ', 'CARISOPRODOL ', '', '350 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(594, 3, 29, 'NAPROXENO', 'NAPROXENO SODICO', '', '550 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(595, 3, 29, 'ZILFIC', 'SILDENAFIL', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(596, 3, 8, 'COLGATE LUMINOUS WHITE', 'PASTA DENTAL', '', '75 mL', 'Pasta', '', '', 1, 1, 0, 'AC'),
(597, 3, 8, 'JUNIOR MINION', 'PASTA DELTAL', '', '75 mL/100gr', 'Pasta', '', '', 1, 1, 0, 'AC'),
(598, 3, 8, 'COLGATE FRESH MNT', 'PASTA DENTAL ', '', '75 mL', 'Pasta', '', '', 1, 1, 0, 'AC'),
(599, 3, 8, 'COLGATE SENSITIVE ORIGINAL ', 'PASTA DENTAL ', '', '100 gr', 'Pasta', '', '', 1, 1, 0, 'AC'),
(600, 3, 8, 'COLGATE TOTAL 12 HORAS  ENCIAS SALUDABLES ', 'PASTA DENTAL ', '', '75 mL', 'Pasta', '', '', 1, 1, 0, 'AC'),
(601, 3, 8, 'COLGATE 2X1 360 INTERDENTAL', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(602, 3, 8, 'COLGATE 2X1 360 SUROUND MEDIO ', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(603, 3, 8, 'COLGATE LUMINOUS 360 2X1 MEDIUM', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(604, 3, 8, 'COLGATE MAX WHITE SUAVE ', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(605, 3, 8, 'COLGATE PREMIER CLEAN ', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(606, 3, 8, 'COLGATE SMILE ANIMALITOS 0-2', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(607, 3, 8, 'COLGATE SMILES BARBIE PEGA POP 2-5', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(608, 3, 8, 'COLGATE SMILES BOB ESPONJA PEGA POP 2-5', 'CEPILLO DENTAL', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(609, 3, 8, 'COLGATE SMILES MINIONS 6+', 'CEPILLO DENTAL', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(610, 3, 8, 'COLGATE TWISTER 2X1', 'CEPILLO DENTAL ', '', '1', 'Cepillo ', '', '', 1, 1, 0, 'AC'),
(611, 3, 8, 'COLGATE LUMINOUS WHITE', 'ENJUAGUE BUCAL ', '', '250 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(612, 3, 8, 'COLGATE PLAX INFINITY', 'ENJUAGUE BUCAL ', '', '250 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(613, 3, 8, 'COLGATE PLAX KIDS MINIONS', 'ENJUAGUE BUCAL ', '', '250 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(614, 3, 8, 'COLGATE PLAX PERIOGARD ', 'ENJUAGUE BUCAL ', '', '250 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(615, 3, 8, 'COLGATE PLAX SOFT MINT', 'ENJUAGUE BUCAL ', '', '250 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(616, 3, 8, 'COLGATE HILO DENTAL TOTAL ', 'HILO DENTAL ', '', '25 mT', 'Bote ', '', '', 1, 1, 0, 'AC'),
(617, 3, 8, 'COLGATE DENTAL TOTAL MENTA ', 'HILO DENTAL', '', '25 mT', 'Bote ', '', '', 1, 1, 0, 'AC'),
(618, 3, 8, 'COLGATE JUNIOR BARBIE', 'PASTA DENTAL', '', '100 gr', 'Pasta', '', '', 1, 1, 0, 'AC'),
(619, 3, 8, 'COLGATE MENTA REFRES ROJA)', 'PASTA DENTAL ', '', '50 gr', 'Pasta', '', '', 1, 1, 0, 'AC'),
(620, 3, 8, 'COLGATE SENSITIVE BLANQUEADOR ', 'PASTA DENTAL ', '', '100 gr', 'Pasta ', '', '', 1, 1, 0, 'AC'),
(621, 3, 8, 'COLGATE TRIPLE ACCION ', 'PASTA DENTAL', '', '50 gr', 'Pasta ', '', '', 1, 1, 0, 'AC'),
(622, 3, 8, 'COLGATE TRIPLE ACCION ', 'PASTA DENTAL', '', '90 gr', 'Pasta', '', '', 1, 1, 0, 'AC'),
(623, 3, 8, 'COLGATE PLAX ICE ', 'ENJUAGUE BUCAL ', '', '250 ml', 'Bote ', '', '', 1, 1, 0, 'AC'),
(624, 3, 8, 'COLGATE PLAX ICE GLACIAL', 'ENJUAGUE BUCAL', '', '250 ml', 'Bote ', '', '', 1, 1, 0, 'AC'),
(625, 3, 8, 'COLGATE PLAX SOFT MINT ', 'ENJUAGUE BUCAL', '', '1 LT', 'Bote ', '', '', 1, 1, 0, 'AC'),
(626, 3, 8, 'COLGATE GEL DENTAL KIDS', 'GEL DENTAL ', '', '50 gr', 'Pasta ', '', '', 1, 1, 0, 'AC'),
(627, 3, 8, 'HILO DENTAL COLGATE MENTA ', 'HILO DENTAL ', '', '50 MT ', 'Bote ', '', '', 1, 1, 0, 'AC'),
(628, 3, 8, 'JABON PROTEX AVENA ', 'AVENA ', '', '130 gr', 'Barra ', '', '', 1, 1, 0, 'AC'),
(629, 3, 8, 'JABON PROTEX COMPLETE', 'COMPLETE ', '', '130 gr', 'Barra ', '', '', 1, 1, 0, 'AC'),
(630, 3, 8, 'JABON PROTEX FRESH', 'FRESH', '', '130 gr', 'Barra', '', '', 1, 1, 0, 'AC'),
(631, 3, 8, 'JABON PROTEX LIMP. PROF.', 'LIMPIEZA PROFUNDA ', '', '130 gr', 'Barra', '', '', 1, 1, 0, 'AC'),
(632, 3, 8, 'JABON PROTEX OMEGA 3', 'OMEGA 3', '', '130 gr', 'Barra', '', '', 1, 1, 0, 'AC'),
(633, 3, 8, 'JABON PROTEX PRO HIDRATA ', 'PRO HIDRATA ', '', '130 gr', 'Barra', '', '', 1, 1, 0, 'AC'),
(634, 3, 19, 'ASEPXIA CAMUFLAGE ', 'ASEPXIA ', '', '28 gr ', 'Crema ', '', '', 1, 1, 0, 'AC'),
(635, 3, 19, 'ASEPXIA JABON EXFOLIANTE ', 'ASEPXIA', '', '100 gr ', 'Barra ', '', '', 1, 1, 0, 'AC'),
(636, 3, 19, 'ASEPXIA JABON FORTE ', 'ASEPXIA', '', '100 gr ', 'Barra ', '', '', 1, 1, 0, 'AC'),
(637, 3, 19, 'ASEPXIA JABON HERBAL ', 'ASEPXIA', '', '100 gr ', 'Barra ', '', '', 1, 1, 0, 'AC'),
(638, 3, 19, 'ASEPXIA JABON NEUTRO', 'ASEPXIA', '', '100 gr ', 'Barra ', '', '', 1, 1, 0, 'AC'),
(639, 3, 19, 'ASEPXIA JABON AZUFRE ', 'ASEPXIA', '', '100 gr ', 'Barra ', '', '', 1, 1, 0, 'AC'),
(640, 3, 19, 'ASEPXIA SPOT', 'ASEPXIA', '', '28 gr ', 'Gel', '', '', 1, 1, 0, 'AC'),
(641, 3, 19, 'ASEPXIA TOALLITAS HUMEDAS ', 'ASEPXIA', '', '25 unidades ', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(642, 3, 19, 'ASEPXIA TOALLITAS HUMEDAS ', 'ASEPXIA', '', '10 unidades ', 'Bolsa', '', '', 1, 1, 0, 'AC'),
(643, 3, 19, 'ASEPXIA EXFOLIANTE PUNTOS NEGROS ', 'ASEPXIA', '', '150 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(644, 3, 19, 'ASEPXIA MAQUILLAJE POLVO COMPACTO BEIGE MATE ', 'ASEPXIA', '', '10 gr ', 'Polvo ', '', '', 1, 1, 0, 'AC'),
(645, 3, 19, 'ASEPXIA MAQUILLAJE POLVO CLARO ', 'ASEPXIA', '', '10 gr ', 'Polvo ', '', '', 1, 1, 0, 'AC'),
(646, 3, 19, 'CICATRICURE CREMA 30 GR', 'CICATRICURE ', '', '30 gr ', 'Crema ', '', '', 1, 1, 0, 'AC'),
(647, 3, 19, 'CICATRICURE CREMA 60GR ', 'CICATRICURE', '', '60 gr', 'Crema ', '', '', 1, 1, 0, 'AC'),
(648, 3, 19, 'CICATRICURE GEL 30 GR ', 'CICATRICURE', '', '30 gr', 'Gel', '', '', 1, 1, 0, 'AC'),
(649, 3, 19, 'CICATRICURE GEL 60 GR ', 'CICATRICURE', '', '60 gr', 'Gel', '', '', 1, 1, 0, 'AC'),
(650, 3, 19, 'CICATRICURE DERMOABRASION', 'CICATRICURE', '', '100 gr', 'Pack ', '', '', 1, 1, 0, 'AC'),
(651, 3, 19, 'SILUET 40  GEL TERMICO ', 'SILUET 40 ', '', '200 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(652, 3, 19, 'SILKA MEDIC 1%', 'SILKA MEDIC ', '', '1%', 'Gel ', '', '', 1, 1, 0, 'AC'),
(653, 3, 19, 'BIO-ELECTRO', 'PARACETAMOL/ASS/CAFEINA ', '', '250/250/65mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(654, 3, 19, 'PEQUEñIN TOALLITA HUMEDA RN', 'PEQUEñIN ', '', '80 unidades ', 'Toallas ', '', '', 1, 1, 0, 'AC'),
(655, 3, 19, 'PEQUEñIN PAñOS HUMEDOS ALOE', 'PEQUEñIN ', '', '24 unidades ', 'Paños ', '', '', 1, 1, 0, 'AC'),
(656, 3, 19, 'PEQUEñIN PAñOS HUMEDOS ALOE ', 'PEQUEñIN ', '', '50 unidades ', 'Paños ', '', '', 1, 1, 0, 'AC'),
(657, 3, 19, 'PEQUEñIN TOALLITAS HUMEDAS RN', 'PEQUEñIN ', '', '40 unidades ', 'Toallas ', '', '', 1, 1, 0, 'AC'),
(658, 3, 19, 'NOSOTRAS NATURAL ALAS TELA GEL ', 'NOSOTRAS', '', '10 unidades ', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(659, 3, 19, 'NOSOTRAS DIARIOS MULTIESTILO ', 'NOSOTRAS ', '', '15 unidades ', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(660, 3, 19, 'NOSOTRAS INVISIBLE CLASICA TELA ', 'NOSOTRAS ', '', '10 unidades ', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(661, 3, 19, 'NOSOTRAS NAT BUENAS NOCHES ', 'NOSOTRAS ', '', '10 unidades ', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(662, 3, 11, 'AKTIVANAD ADULTOS ', 'VITAMINA B12', '', '200 mL', 'Jarabe  ', '', '', 1, 1, 0, 'AC'),
(663, 3, 11, 'AKTIVANAD INFANTIL ', 'VITAMINA B12', '', '100 mL', 'Jarabe  ', '', '', 1, 1, 0, 'AC'),
(664, 3, 11, 'ANGIDOL FRAMBUESA ', 'ANGIDOL ', '', '24 g', 'Pastillas', '', '', 1, 1, 0, 'AC'),
(665, 3, 11, 'CEBION CALCIO', 'CALCIO/VITAMINA C ', '', '13 gr', 'Sobres ', '', '', 1, 1, 0, 'AC'),
(666, 3, 11, 'COBAN VENDA 3', 'COBAN VENDA ', '', '7.5 cm ', 'Venda Elastica ', '', '', 1, 1, 0, 'AC'),
(667, 3, 11, 'COMPLEJO B-VIMIN ', 'COMPLEJO B', '', '5 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(668, 3, 11, 'NIVEA DESODORANTE ACLARADO NATURAL', 'DESODORANTE ', '', '150 mL', 'Aerosol ', '', '', 1, 1, 0, 'AC'),
(669, 3, 11, 'NIVEA DESODORANTE COOL KICK', 'DESODORANTE ', '', '150 mL', 'Aerosol ', '', '', 1, 1, 0, 'AC'),
(670, 3, 11, 'NIVEA DESODORANTE DOUBLE EFFECT', 'DESODORANTE', '', '150 mL', 'Aerosol ', '', '', 1, 1, 0, 'AC'),
(671, 3, 11, 'NIVEA DESODORANTE DRY IMPACT ', 'DESODORANTE ', '', '150 mL', 'Aerosol ', '', '', 1, 1, 0, 'AC'),
(672, 3, 11, 'NIVEA DESODORANTE INVIS B&W CLEAR ', 'DESODORANTE ', '', '150 mL', 'Aerosol ', '', '', 1, 1, 0, 'AC'),
(673, 3, 11, 'NIVEA DESODORANTE B&W POW', 'DESODORANTE ', '', '150 mL', 'Aerosol ', '', '', 1, 1, 0, 'AC'),
(674, 3, 11, 'DERMOCREM CREMA ', 'DERMOCREM', '', '50 gr', 'Crema', '', '', 1, 1, 0, 'AC'),
(675, 3, 11, 'DERMOCREM LOCION ', 'DERMOCREM ', '', '100 mL', 'Locion ', '', '', 1, 1, 0, 'AC'),
(676, 3, 11, 'DEXTROMETORFANO ', 'GLUCOSA ', '', '350 gr', 'Bote ', '', '', 1, 1, 0, 'AC'),
(677, 3, 11, 'DG-6  SOLUCION ', 'DG-6 ', '', '60 mL', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(678, 3, 11, 'DIPOSAN ', 'DIMETILPOLISILOXANO', '', '40 mg/mL', 'Gotas', '', '', 1, 1, 0, 'AC'),
(679, 3, 11, 'DOLO COBA-VIMIN COMPUESTO', 'VITAMINA B12 B6 B1/PIROXICAM', '', '1000 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(680, 3, 11, 'DOLO-NEUROBION FORTE', 'DICLOFENACO/VITAMINA B1B6B12', '', '5000 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(681, 3, 11, 'EUTIROX ', 'LEVOTIROXINA ', '', '50 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(682, 3, 11, 'EUTIROX ', 'LEVOTIROXINA ', '', '100 mg ', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(683, 3, 11, 'FEEL PLEASURE ', 'PRESERVATIVOS ', '', 'x 3 Condones ', 'Caja', '', '', 1, 1, 0, 'AC'),
(684, 3, 11, 'FUN PLEASURE ', 'PRESERVATIVOS ', '', 'x 3 Condones ', 'Caja', '', '', 1, 1, 0, 'AC'),
(685, 3, 11, 'GLUCOPHAGE ', 'METFORMINA CLORHIDRATO', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(686, 3, 11, 'GLUCOPHAGE ', 'METFORMINA CLORHIDRATO ', '', '850 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(687, 3, 11, 'GLUCOVANCE 500/2.5', 'METFORMINA/GLIBENCLAMIDA', '', '500/2.5 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(688, 3, 11, 'GLUCOVANCE 500/5', 'METFORMINA/GLIBENCLAMIDA', '', '500/5 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(689, 3, 11, 'HEMORSAN ', 'HAMAMELIS/DRAGOSANTOL/ACEITES ESENCIALES ', '', '50 gr', 'Unguento', '', '', 1, 1, 0, 'AC'),
(690, 3, 11, 'HIPOPRES', 'LISINOPRIL', '', '10 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(691, 3, 11, 'HIPOPRES', 'LISINOPRIL', '', '20 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(692, 3, 11, 'IDANTINA COMPUESTA', 'FENITOINA/FENOBARBITAL', '', '100/15 mg', 'Tableta ', '', '', 1, 1, 0, 'AC'),
(693, 3, 11, 'ILIADIN ', 'OXIMETAZOLINA CLORHIDRATO', '', '0.05 %', 'Spray', '', '', 1, 1, 0, 'AC'),
(694, 3, 11, 'ILIADIN', 'OXIMETAZOLINA CLORHIDRATO', '', '0.025 %', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(695, 3, 11, 'JABON NIVEA PROTEINA DE LECHE ', 'JABON ', '', '90 gr ', 'Barra ', '', '', 1, 1, 0, 'AC'),
(696, 3, 11, 'PARCHE LEON TERMICO ', 'PARCHE ', '', '1 unidad ', 'Bolsa ', '', '', 1, 1, 0, 'AC'),
(697, 3, 11, 'LIDRAMINA', 'DIFENHIDRAMINA CLORHIDRATO', '', '15 g', 'poma ', '', '', 1, 1, 0, 'AC'),
(698, 3, 11, 'MENTISAN UNGUENTO ', 'MENTISAN ', '', '40 gr', 'Bote ', '', '', 1, 1, 0, 'AC'),
(699, 3, 11, 'MENTISAN UNGUENTO ', 'MENTISAN ', '', '60 gr', 'Bote ', '', '', 1, 1, 0, 'AC'),
(700, 3, 11, 'MICROPORE BLANCO ', 'TELA ADESIVA ', '', '1.25 cm ', 'Caja ', '', '', 1, 1, 0, 'AC'),
(701, 3, 11, 'MICROPORE PIEL ', 'TELA ADESIVA ', '', '1.25 cm ', 'Caja ', '', '', 1, 1, 0, 'AC'),
(702, 3, 11, 'MYCOTIX', 'FLUCONAZOL', '', '200 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(703, 3, 11, 'MYCOTIX ', 'FLUCONAZOL', '', '150 mg', 'Tabletas ', '', '', 1, 1, 0, 'AC'),
(704, 3, 11, 'NATURAL PLEASURE', 'PRESERVATIVO', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(705, 3, 11, 'NENE-DENT', 'MANZAMILLA/LIDOCAINA ', '', '10 g', 'Solucion ', '', '', 1, 1, 0, 'AC'),
(706, 3, 11, ' NIVEA CREMA ', 'CREMA ', '', '30 mL', 'Lata ', '', '', 1, 1, 0, 'AC'),
(707, 3, 11, 'NIVEA LIPCARE CHERRY ', 'NIVEA LIPCARE ', '', '5 mL', 'Labial ', '', '', 1, 1, 0, 'AC'),
(708, 3, 11, 'NIVEA LIPCARE DURAZNO ', 'NIVEA LIPCARE', '', '4.8 gr', 'Labial ', '', '', 1, 1, 0, 'AC'),
(709, 3, 11, 'NIVEA LIPCARE ESSENTIAL', 'NIVEA LIPCARE', '', '4.8 gr', 'Labial ', '', '', 1, 1, 0, 'AC'),
(710, 3, 11, 'NIVEA LIPCARE MED ', 'NIVEA LIPCARE', '', '4.8 gr', 'Labial ', '', '', 1, 1, 0, 'AC'),
(711, 3, 11, 'NIVEA LIPCARE SUN ', 'NIVEA LIPCARE', '', '4.8 gr', 'Labial ', '', '', 1, 1, 0, 'AC'),
(712, 3, 11, 'NIVEA SOFT 200 ML', 'NIVEA SOFT', '', '200 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(713, 3, 11, 'NIVEA SOFT 100 ML', 'NIVEA SOFT', '', '100 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(714, 3, 11, 'NIVEA SOFT 50 ML', 'NIVEA SOFT', '', '50 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(715, 3, 11, 'OMNIVAL ', 'VITAMINAS ', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(716, 3, 11, 'OSTEOCAPS', 'CALCIO/VITAMINA D', '', '1250mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(717, 3, 11, 'PANTUSIL ', 'CODEINA/PSEUDOEFEDRINA ', '', '200/600 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(718, 3, 11, 'PINK LOVE ', 'PRESERVATIVO', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(719, 3, 11, 'PLEASURE MIX ', 'PRESERVATIVO', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(720, 3, 11, 'REPLEX ULTRA ', 'REPELENTE ', '', '60 mL', 'Spray', '', '', 1, 1, 0, 'AC'),
(721, 3, 11, 'LARGE PLEASURE ', 'PRESERVATIVO', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(722, 3, 11, 'SKIN PLEUSARE ', 'PRESERVATIVO', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(723, 3, 11, 'SUPERAL DIGEST', 'BICARBONATO DE SODIO/ACIDO CITRICO', '', '2 GR', 'Sobre', '', '', 1, 1, 0, 'AC'),
(724, 3, 11, 'SUPRACORTIN COMPOSITUM', 'FLUPREDNIDENO/GENTAMICINA/MICONAZOL', '', '10 gr', 'Pomada', '', '', 1, 1, 0, 'AC'),
(725, 3, 11, 'TONICO INTI  S/CAFEINA ', 'TONICO INTI ', '', '200 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(726, 3, 11, 'TORNADO ', 'PRESERVATIVO', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(727, 3, 11, 'TROMBOFOB', 'HEPARINA SODICA ', '', '5000 U.I.', 'Pomada ', '', '', 1, 1, 0, 'AC'),
(728, 3, 11, 'TROMBOFOB ', 'HEPARINA SODICA', '', '60000 U.I.', 'Unguento', '', '', 1, 1, 0, 'AC'),
(729, 3, 11, 'TUSSAGIL', 'TOMILLO', '', '100 mL', 'Jarabe', '', '', 1, 1, 0, 'AC'),
(730, 3, 11, 'C-VIMIN 1GR', 'VITAMINA C ', '', '1000 MG', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(731, 3, 11, 'ABRILAR ', 'HEDERA HELIX', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(732, 3, 11, 'CINADIL', 'CINARIZINA ', '', '75 mg', 'Tableta', '', '', 1, 1, 0, 'AC'),
(733, 3, 11, 'DOLALGIAL FAST', 'CLONIXINATO DE LISINA ', '', '125 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(734, 3, 11, 'ENDIAL DIGEST', 'CINATAPRIDA/SIMETICONA/PANCREATINA', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(735, 3, 11, 'KALOBA', 'PELARGONIUM SIDOIDES', '', '20 mL', 'Gotas', '', '', 1, 1, 0, 'AC'),
(736, 3, 11, 'OTALEX', 'PROCAINA ANTIPIRINA', '', '10 mL', ' Gotas Otica', '', '', 1, 1, 0, 'AC'),
(737, 3, 11, 'PANDEL', 'HIDROCOTISONA BUTIRATO', '', '0.1%', 'Crema', '', '', 1, 1, 0, 'AC'),
(738, 3, 7, 'LOSARTAN ', 'LOSARTAN ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(739, 3, 9, 'ALCOHOL MEDICINAL ', 'ALCOHOL MEDICINAL ', '', '60 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(740, 3, 15, 'TIALGIN FORTE ', 'PARACETAMOL/DICLOFENACO ', '', '500/50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(741, 3, 30, 'B-VIT ', 'COMPLEJO B', '', '10 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(742, 3, 30, 'BIENEX ', 'MELOXICAM ', '', '15 mg', 'Capsulas Blandas ', '', '', 1, 1, 0, 'AC'),
(743, 3, 30, 'DOLANTAG', 'TRAMADOL/PARACETAMOL ', '', '37.5/325 mg', 'Capsulas Blandas ', '', '', 1, 1, 0, 'AC'),
(744, 3, 30, 'METROCAPS 500', 'METRONIDAZOL ', '', '500 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(745, 3, 30, 'METROCAPS N ', 'METRONIDAZOL/NISTATINA ', '', '500 mg/100000 U.I.', 'Ovulos ', '', '', 1, 1, 0, 'AC'),
(746, 3, 30, 'OMEPRAX 20', 'OMEPRAZOL ', '', '20 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(747, 3, 30, 'SUNLAT BAMBINI SPF45', 'PROTECTOR SOLAR ', '', '100 mL', 'Emulsion ', '', '', 1, 1, 0, 'AC'),
(748, 3, 30, 'FLORIL ', 'NAFAZOLINA CLORHIDRATO', '', '0.03%', 'Gotas Oftalmicas', '', '', 1, 1, 0, 'AC'),
(749, 3, 14, 'BAHIA FACE SPF 90', 'PROTECTOR SOLAR', '', '90 ', 'Sachet', '', '', 1, 1, 0, 'AC'),
(750, 3, 14, 'PARCHE LEON UNGUENTO ', 'PARCHE LEON ', '', '100 gr', 'Bote ', '', '', 1, 1, 0, 'AC'),
(751, 3, 8, 'ACICLOVIR 5% SAE ', 'ACICLOVIR ', '', '5%', 'Crema', '', '', 1, 1, 0, 'AC'),
(752, 3, 8, 'ALBENDAZOL SAE ', 'ALBENDAZOL', '', '400 mg', 'Masticable', '', '', 1, 1, 0, 'AC'),
(753, 3, 8, 'AZITROMICINA SAE', 'AZITROMICINA ', '', '500 MG', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(754, 3, 8, 'CLOTRIMAZOL SAE ', 'CLOTRIMAZOL ', '', '1 %', 'Crema ', '', '', 1, 1, 0, 'AC'),
(755, 3, 8, 'LOSARTAN SAE ', 'LOSARTAN ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(756, 3, 8, 'SILDENAFIL ', 'SILDENAFIL ', '', '100 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(757, 3, 8, 'VITAMINA E SAE ', 'VITAMINA E', '', '1000 U.I.', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(758, 3, 4, 'BIL 13 ', 'BIL 13', '', '150 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(759, 3, 4, 'CLOFENAC B12 FORTE ', 'DICLOFENACO/VITAMINA B12', '', '10000 U.I.', 'Ampollas ', '', '', 1, 1, 0, 'AC'),
(760, 3, 4, 'GLICENEX SR 500', 'METFORMINA ', '', '500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(761, 3, 4, 'TALFLEX 100 ', 'KETOPROFENO ', '', '100 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(762, 3, 8, 'ANAMAX', 'ACETAMINOFENO/CAFEINA/IBUPROFENO ', '', '575 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(763, 3, 8, 'DEFENDYL', 'VITAMINA C/ZINC ', '', '100710 mg', 'Comprimidos Efervecentes', '', '', 1, 1, 0, 'AC'),
(764, 3, 26, 'NEO-CODION ', 'CODEINA ', '', '0.025 g', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(765, 3, 31, 'AROCARBOL ', 'AROCARBOL ', '', '30 mL', 'Gotas', '', '', 1, 1, 0, 'AC'),
(766, 3, 31, 'AROCARBOL', 'AROCARBOL', '', '60 mL', 'Gotas', '', '', 1, 1, 0, 'AC'),
(767, 3, 31, 'AROCARBOL', 'AROCARBOL', '', '30 mg', 'Sobres', '', '', 1, 1, 0, 'AC'),
(768, 3, 31, 'AROCARBOL', 'AROCARBOL', '', '30 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(769, 3, 8, '2 EN 1 DIENTES BLANCOS ', 'PASTA DENTAL ', '', '100 mL', 'Pasta Dental', '', '', 1, 1, 0, 'AC'),
(770, 3, 8, 'FORAMEN CEPILLO KIDS SAFARI', 'CEPILLO DENTAL ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(771, 3, 8, 'FORAMEN CEPILLO ORTODONCIA 504', 'CEPILLO ORTODONCIA ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(772, 3, 8, 'FORAMEN CREMA DENTAL BLANQUEADOR ', 'CREMA DENTAL ', '', '75 mL', 'Crema dental ', '', '', 1, 1, 0, 'AC'),
(773, 3, 8, 'FORAMEN CREMA HERBAL ALOE ', 'CREMA DENTAL ', '', '75 mL', 'Crema dental ', '', '', 1, 1, 0, 'AC'),
(774, 3, 8, 'FORAMEN ENJUAGUE HERBAL ALOE ', 'ENJUAGUE BUCAL ', '', '500 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(775, 3, 8, 'FORAMEN ENJUAGUE JUNIOR ', 'ENJUAGUE BUCAL', '', '500 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(776, 3, 8, 'FORAMEN PROTECCION ', 'ENJUAGUE BUCAL ', '', '500 mL', 'Bote ', '', '', 1, 1, 0, 'AC'),
(777, 3, 8, 'FORAMEN CEPILLO F-30 TYNEX DURO 2X1', 'CEPILLO DENTAL', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(778, 3, 8, 'FORAMEN CEPILLO F-30 TYNEX MEDIO 2X1', 'CEPILLO DENTAL ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(779, 3, 8, 'FORAMEN CEPILLO F-92 CLINIC DOBLE 2X1 DURO', 'CEPILLO DENTAL ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(780, 3, 8, 'FORAMEN CEPILLO F-92 CLINIC DOBLE 2X1 MEDIO', 'CEPILLO DENTAL ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(781, 3, 8, 'FORAMEN CEPILLO F-92 CLINIC DOBLE 2X1 SUAVE ', 'CEPILLO DENTAL ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(782, 3, 8, 'FORAMEN GEL DENTAL BABY ', 'GEL DENTAL ', '', '30 mL', 'Gel Dental ', '', '', 1, 1, 0, 'AC'),
(783, 3, 8, 'FORAMEN GEL DENTAL JUNIOR ', 'GEL DENTAL ', '', '50 mL', 'gel dental ', '', '', 1, 1, 0, 'AC'),
(784, 3, 8, 'FORAMEN GEL DENTAL REFRESCANTE ', 'GEL DENTAL ', '', '75 mL', 'gel dental ', '', '', 1, 1, 0, 'AC'),
(785, 3, 8, 'FORAMEN INTERDENTAL FINO ', 'INTERDENTAL ', '', '6 unidades ', 'interdental ', '', '', 1, 1, 0, 'AC'),
(786, 3, 8, 'FORAMEN INTERDENTAL MEDIO', 'INTERDENTALES ', '', '6 unidades ', 'interdental ', '', '', 1, 1, 0, 'AC'),
(787, 3, 8, 'FORAMEN CEPILLO V-PLUS MEDIO ', 'CEPILLOS DENTALES ', '', '1', 'Cepillo Dental ', '', '', 1, 1, 0, 'AC'),
(788, 3, 11, 'INTIBROXOL ', 'AMBROXOL ', '', '15 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(789, 3, 11, 'PARCHE LEON ARNICA ', 'PARCHE LEON ', '', '15 mg', 'Parche ', '', '', 1, 1, 0, 'AC'),
(790, 3, 11, 'DOLO-NEUROBION ', 'DICLOFENACO/LIDOCAINA/VITAMINA B1B6B12', '', '10000 U.I. ', 'Ampolla ', '', '', 1, 1, 0, 'AC'),
(791, 3, 11, 'DEMOTIL AG ', 'PROPINOX CLORHIDRATO/DIMETILPOLILOXANO', '', '5/40 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(792, 3, 11, 'DOLO COBA-VIMIN COMPUESTO ', 'VITAMINA B1B6B12/DICLOFENACO ', '', '10000 U.I.', 'Ampollas ', '', '', 1, 1, 0, 'AC'),
(793, 3, 11, 'NEUROTRAT FORTE', 'VITAMINA B1B6B12', '', '10000 U.I.', 'Grageas ', '', '', 1, 1, 0, 'AC'),
(794, 3, 11, 'OPTI-VIMIN ', 'VITAMINA/MINERALES ', '', '10000 U.I.', 'Tabletas Recubiertas ', '', '', 1, 1, 0, 'AC'),
(795, 3, 11, 'PAN-VIMIN MINERALIZADO', 'VITAMINAS/MINERALES ', '', '100 mL', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(796, 3, 11, 'PAN-VIMIN MINERALIZADO', 'VITAMINAS/MINERALES', '', '15 mL', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(797, 3, 11, 'TROMBOGEL ', 'HEPARINA SODICA ', '', '30.000 U.I.', 'Gel', '', '', 1, 1, 0, 'AC'),
(798, 3, 24, 'LECHE DE AVENA ', 'LECHE DE AVENA ', '', '135 gr', 'Bote', '', '', 1, 1, 0, 'AC'),
(799, 3, 24, 'CREMA DE LIMON VITABEL', 'CREMA DE LIMON ', '', '30 gr', 'Bote', '', '', 1, 1, 0, 'AC'),
(800, 3, 24, 'CREMA DE LIMON VITABEL', 'CREMA DE LIMON', '', '60 gr', 'Bote', '', '', 1, 1, 0, 'AC'),
(801, 3, 24, 'LECHE DE ALMENDRAS VITABEL ', 'LECHE DE ALMENDRAS ', '', '125 gr', 'Bote', '', '', 1, 1, 0, 'AC'),
(802, 3, 24, 'LECHE DE PEPINO VITABEL ', 'LECHE DE PEPINO ', '', '125 gr', 'Bote', '', '', 1, 1, 0, 'AC'),
(803, 3, 24, 'FRICCION VITA-LINIMENTO', 'FRICCION VITA ', '', '140 gr', 'Bote', '', '', 1, 1, 0, 'AC'),
(804, 3, 24, 'PROCTO GLICERINA NIñOS ', 'GLICERINA ', '', '1.3 g', 'Supositorios ', '', '', 1, 1, 0, 'AC'),
(805, 3, 24, 'VITAGRIP COMPUESTO', 'PARACETAMOL/CLORFERINAMINA/PSEUDOEFEDRINA ', '', '250 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(806, 3, 24, 'MAREUM', 'DIMENHIDRINATO ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(807, 3, 24, 'PECTORAL SIMPLE', 'DEXTROMETORFANO ', '', '150 g', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(808, 3, 24, 'VASELAGAR SIMPLE ', 'ACEITE MINERAL ', '', '120 mL', 'Emulsion ', '', '', 1, 1, 0, 'AC'),
(809, 3, 24, 'VITANASAL ADULTO', 'OXIMETAZOLINA', '', '0.05%', 'Gotas Nasales ', '', '', 1, 1, 0, 'AC'),
(810, 3, 24, 'NASAL FISIOLOGICO ', 'CLORURO DE SODIO ', '', '0.9 %', 'Gotas Nasales ', '', '', 1, 1, 0, 'AC'),
(811, 3, 24, 'OFTAL VITAMICINA ', 'CLORANFENICOL', '', '0.5 %', 'Gotas oftalmicas ', '', '', 1, 1, 0, 'AC'),
(812, 3, 24, 'GLUCOSAMIN B12', 'GLUCOSA ', '', '15 g', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(813, 3, 24, 'VITAGRIP CALIENTE ', 'PARACETAMOL/CLORFERINAMINA/PSEUDOEFEDRINA', '', '15 g', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(814, 3, 24, 'LECHE DE ROSAS ', 'LECHE DE ROSAS ', '', '135 g', 'Bote ', '', '', 1, 1, 0, 'AC'),
(815, 3, 24, 'RELAX VITA ', 'CARISOPRODOL/ASS/CAFEINA ', '', '392 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(816, 3, 24, 'VITESPASMO', 'BUTILBROMURO DE HIOSCINA', '', '10 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(817, 3, 24, 'VITESPASMO COMPUESTO', 'BUTILBROMURO DE HIOSCINA/PARACETAMOL', '', '10/500 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(818, 3, 24, 'DICLOFENACO ', 'DICLOFENACO ', '', '100 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(819, 3, 24, 'FRIXZZZ ', 'FRIXZZZ', '', '30 g', 'Suspencion Topica ', '', '', 1, 1, 0, 'AC'),
(820, 3, 24, 'VITANASAL NIñOS ', 'OXIMETAZOLINA ', '', '0.025 %', 'Gota Nasal ', '', '', 1, 1, 0, 'AC'),
(821, 3, 24, 'DICLOFENACO VITA ', 'DICLOFENACO ', '', '12.5 MG', 'Supositorio  ', '', '', 1, 1, 0, 'AC'),
(822, 3, 15, 'BLADURIL ', 'FLAVOXATO CLORHIDRATO', '', '200 mg', 'comprimido', '', '', 1, 1, 0, 'AC'),
(823, 3, 15, 'DOLGENAL RAPID ', 'KETOROLACO ', '', '10 mg', 'comprimido Sublingual ', '', '', 1, 1, 0, 'AC'),
(824, 3, 15, 'DOMPER AG ', 'DOMPERIDONA/SIMETICONA', '', '10/100 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(825, 3, 15, 'DOMPER ', 'DOMPERIDONA ', '', '10 mg', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(826, 3, 15, 'FLOGENE 50', 'DICLOFENACO POTASICO ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(827, 3, 15, 'FLOGENE ', 'DICLOFENACO POTASICO ', '', '75 mg', 'Ampolla', '', '', 1, 1, 0, 'AC'),
(828, 3, 15, 'FLOGENE RELAX', 'DICLOFENACO POTASICO/CARISOPRODOL', '', '50/350 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(829, 3, 15, 'FLOGENE RETARD ', 'DICLOFENACO POTASICO ', '', '100 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(830, 3, 15, 'FLUXUS', 'FLUNARIZINA ', '', '10 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(831, 3, 15, 'GLANIQUE ', 'LEVONORGESTREL', '', '1.5 mg', 'Comprimido', '', '', 1, 1, 0, 'AC'),
(832, 3, 15, 'LERTUS FORTE', 'DICLOFENACO/CODEINA ', '', '50/50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(833, 3, 15, 'LERTUS GEL ', 'DICLOFENACO ', '', '1 %', 'Gel', '', '', 1, 1, 0, 'AC'),
(834, 3, 15, 'LERTUS RETARD', 'DICLOFENACO ', '', '100 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(835, 3, 15, 'LERTUS SR', 'DICLOFENACO ', '', '75 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(836, 3, 15, 'LERTUS ', 'DICLOFENACO ', '', '0.375 gr', 'Gotas', '', '', 1, 1, 0, 'AC'),
(837, 3, 15, 'MAGNATIL ', 'MAGNESIO/VITAMINA C', '', '134.86 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(838, 3, 15, 'PREBICTAL 75', 'PREGABALINA ', '', '75 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(839, 3, 15, 'REGENTAL PRE-NATAL', 'MULTIVITAMINICO/MINERALES/OLIGOELEMENTOS', '', '1000 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(840, 3, 15, 'RIGIX', 'SILDENAFIL', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(841, 3, 15, 'TIALGIN 1G', 'PARACETAMOL', '', '1 g', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(842, 3, 15, 'TIALGIN TRAM', 'PARACETAMOL/TRAMADOL', '', '325/37.5 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(843, 3, 15, 'URIDON F', 'NORFLOXACINA/FENILAZOPIRIDINA', '', '400/100 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(844, 3, 24, 'CHOCOLATE PURGANTE ', 'FENOLFTALEINA ', '', '0.200 g', 'Barra', '', '', 1, 1, 0, 'AC'),
(845, 3, 25, 'DOLAGAL RELAX ', 'DICLOFENACO POTASICO/CARISOPRODOL ', '', '50/350 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(846, 3, 25, 'VARNGEL', 'DICLOFENACO ', '', '1 %', 'Gel', '', '', 1, 1, 0, 'AC'),
(847, 3, 25, 'OXIDO DE ZINC', 'OXIDO DE ZINC', '', '100 g', 'Sobre', '', '', 1, 1, 0, 'AC'),
(848, 3, 25, 'COLORANTE VEGETAL ', 'COLORANTE VEGETAL ', '', '1 g', 'Sobre', '', '', 1, 1, 0, 'AC'),
(849, 3, 25, 'PROCOPS', 'SINDENAFIL ', '', '50 mg', 'Comprimidos ', '', '', 1, 1, 0, 'AC'),
(850, 3, 25, 'AGUJAS DESCARTABLES ', 'AGUJAS DESCARTABLES ', '', 'N° 23G', 'Sobre', '', '', 1, 1, 0, 'AC'),
(851, 3, 10, 'COMPRESA DE GASA 5X5CM', 'COMPRESA DE GASA ', '', '5x5', 'Sobre ', '', '', 1, 1, 0, 'AC'),
(852, 3, 7, 'DINOXAN FAST 20', 'KETOROL ', '', '20 MG', 'Comprimido Sublingual', '', '', 1, 1, 0, 'AC'),
(853, 3, 7, 'DINOXAN FAST 30', 'KETOROL ', '', '30 mg', 'Comprimido Sublingual', '', '', 1, 1, 0, 'AC'),
(854, 3, 7, 'ESPASMO LOXADIM', 'PROPINOXATO/CLONIXINATO DE LISINA ', '', '10/125 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(855, 3, 7, 'ESPASMO LOXADIM FORTE', 'PROPINOXATO/CLONIXINATO DE LISINA', '', '10/205 mg', 'Comprimidos', '', '', 1, 1, 0, 'AC'),
(856, 3, 7, 'NOVADOL 75', 'DICLOFENACO/PARACETAMOL ', '', '75/500 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(857, 3, 7, 'NOVADOL GEL', 'DICLOFENACO/SALICILATO DE METILO', '', '2 %', 'Tubo', '', '', 1, 1, 0, 'AC'),
(858, 3, 7, 'TRASSIL', 'PARACETAMOL', '', '1 gr', 'Sobres ', '', '', 1, 1, 0, 'AC'),
(859, 3, 7, 'UNIQUIN F', 'NORFLOXACINA/FENAZOPIRIDINA', '', '400/100 mg', 'Capsulas', '', '', 1, 1, 0, 'AC'),
(860, 3, 7, 'VIDIDROPS', 'NAFAZOL/DEXTRAN/HIDROXIPROPIL', '', '0.025/0.1/0.3%', 'Gotas Oftalmicas ', '', '', 1, 1, 0, 'AC'),
(861, 3, 32, 'VASO MAGICO ', 'VASO ', '', '340 mL', 'Vaso', '', '', 1, 1, 0, 'AC'),
(862, 3, 32, 'BIBERON CUELLO ANCHO ', 'BIBERON ', '', '10 oz', 'Biberon ', '', '', 1, 1, 0, 'AC'),
(863, 3, 32, 'BIBERON CUELLO ANCHO', 'BIBERON', '', '7 oz', 'Biberon ', '', '', 1, 1, 0, 'AC'),
(864, 3, 32, 'BIBERON CUELLO ESTANDAR', 'BIBERON', '', '9 oz', 'Biberon ', '', '', 1, 1, 0, 'AC'),
(865, 3, 32, 'BIBERON CUELLO ESTANDAR', 'BIBERON', '', '5 oz', 'Biberon ', '', '', 1, 1, 0, 'AC'),
(866, 3, 32, 'BIBERON CUELLO ESTANDAR', 'BIBERON ', '', '3 oz', 'Biberon ', '', '', 1, 1, 0, 'AC'),
(867, 3, 32, 'TETINA CUELLO ANCHO ', 'TETINA ', '', 'x 2', 'tetina ', '', '', 1, 1, 0, 'AC'),
(868, 3, 32, 'TETINA CUELLO  ESTANDAR SILICONA ', 'TETINA ', '', 'x 3', 'tetina ', '', '', 1, 1, 0, 'AC'),
(869, 3, 32, 'TETINA CUELLO ESTANDAR  ORTODOMCIA', 'TETINA', '', 'x 2', 'Tetina ', '', '', 1, 1, 0, 'AC'),
(870, 3, 32, 'MORDILLOS GRANDES ', 'MORDILLOS', '', 'x 1', 'Mordillos ', '', '', 1, 1, 0, 'AC'),
(871, 3, 32, 'MORDILLOS PEQUEñOS', 'MORDILLOS ', '', 'x 1', 'Mordillos ', '', '', 1, 1, 0, 'AC'),
(872, 3, 14, 'GEL INTIMO TULIPAN ', 'TULIPAN ', '', '30 mL', 'Gel ', '', '', 1, 1, 0, 'AC'),
(873, 3, 14, 'PRESERVATIVOS TULIPAN ', 'TULIPAN ', '', 'x 3', 'Caja', '', '', 1, 1, 0, 'AC'),
(874, 3, 30, 'BONESE ', 'ACIDO IBANDRONICO', '', '150 mg', 'Capsulas ', '', '', 1, 1, 0, 'AC'),
(875, 3, 30, 'BONFIBRA', 'CIRUELA', '', '2 g', 'Gomitas', '', '', 1, 1, 0, 'AC'),
(876, 3, 30, 'METROCAPS ', 'METRONIDAZOL', '', '25 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(877, 3, 30, 'SNIF SC', 'CLORURO DE SODIO', '', '0.9 %', 'Spray', '', '', 1, 1, 0, 'AC'),
(878, 3, 30, 'VAXIDUO', 'CLINDAMICINA/KETOCONAZOL', '', '100/400 mg', 'Ovulos', '', '', 1, 1, 0, 'AC'),
(879, 3, 8, 'VISIONAL', 'TETRIZOLINA CLORHIDRATO', '', '15 mL', 'Gotas', '', '', 1, 1, 0, 'AC'),
(880, 3, 14, 'TERMOMETRO DIGITAL', 'TERMOMETRO ', '', 'x 1', 'Termometro', '', '', 1, 1, 0, 'AC'),
(881, 3, 14, 'TERMOMETRO ORAL', 'TERMOMETRO', '', 'x 1', 'Termometro', '', '', 1, 1, 0, 'AC'),
(882, 3, 14, 'TERMOMETRO RECTAL', 'TERMOMETRO', '', 'x 1', 'Termometro', '', '', 1, 1, 0, 'AC'),
(883, 3, 14, 'VENDA ELASTICA ', 'VENDA ELASTICA ', '', '12 cm', 'Venda', '', '', 1, 1, 0, 'AC'),
(884, 3, 14, 'PROPOLEO CHUPETES ', 'PROPOLEO ', '', 'x 1', 'Chupetes ', '', '', 1, 1, 0, 'AC'),
(885, 3, 5, 'NEW DERMA FACE MASK', 'COLAGENO', '', '10 sobres', 'Sobre', '', '', 1, 1, 0, 'AC'),
(886, 3, 11, 'VIADIL ', 'PROPINOX CLORHIDRATO', '', '0.5 %', 'Gotas ', '', '', 1, 1, 0, 'AC'),
(887, 3, 9, 'BETAMETASONA', 'BETAMETASONA', '', '0.1 g', 'Pomada', '', '', 1, 1, 0, 'AC'),
(888, 3, 33, 'ACUAFIL', 'DEXTRAN/HIDROXIPROPILMETILCELULOSA', '', '10 mL', 'Gotas Oftalmologicas ', '', '', 1, 1, 0, 'AC'),
(889, 3, 33, 'MEGATEARS', 'NAFAZOLINA/DEXTRAN/METHOCEL', '', '10 mL', 'Gotas Oftalmologicas ', '', '', 1, 1, 0, 'AC'),
(890, 3, 33, 'NAFAZOLINA ', 'NAFAZOLINA ', '', '10 mL', 'Gotas Oftalmicas ', '', '', 1, 1, 0, 'AC'),
(891, 3, 33, 'ALFEN ', 'IBUPROFENO ', '', '100 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(892, 3, 33, 'ALFEN FORTE ', 'IBUPROFENO ', '', '200 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(893, 3, 33, 'ALMAXOL ', 'AMBROXOL ', '', '15 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(894, 3, 33, 'ALMAXOL ', 'AMBROXOL ', '', '30 mg', 'Jarabe ', '', '', 1, 1, 0, 'AC'),
(895, 3, 21, 'AMOVAL 250', 'AMOXICILINA ', '', '250 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(896, 3, 21, 'AMOVAL 500', 'AMOXICILINA', '', '500 mg', 'Suspencion ', '', '', 1, 1, 0, 'AC'),
(897, 3, 11, 'ANEMIDOX', 'HIERRO BISGLICINA ', '', '120 mL', 'Suspencion ', '', '', 1, 1, 0, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_proveedores`
--

CREATE TABLE IF NOT EXISTS `ve_proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idve_linea` int(11) NOT NULL,
  `nombre_proveedor` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_totales`
--

CREATE TABLE IF NOT EXISTS `ve_totales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_producto` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `compra` float NOT NULL,
  `venta` float NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ve_totales`
--

INSERT INTO `ve_totales` (`id`, `idve_producto`, `saldo`, `compra`, `venta`, `estado`) VALUES
(1, 1, 0, 162, 300, 'ac'),
(2, 2, 0, 214.2, 400, 'AC'),
(3, 3, 0, 162, 300, 'AC'),
(4, 4, 0, 131.5, 250, 'AC'),
(5, 5, 0, 151.3, 280, 'AC'),
(6, 6, 0, 73.2, 140, 'ac'),
(7, 7, 0, 108, 200, 'AC'),
(8, 8, 0, 226, 405, 'AC'),
(9, 9, 0, 129.2, 250, 'AC'),
(10, 10, 0, 75, 145, 'AC'),
(11, 11, 0, 183, 320, 'AC'),
(12, 12, 0, 189, 335, 'AC'),
(13, 13, 0, 168, 310, 'AC'),
(14, 14, 0, 379, 630, 'AC'),
(15, 15, 0, 166.3, 250, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_valorizaciones`
--

CREATE TABLE IF NOT EXISTS `ve_valorizaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_producto` int(11) NOT NULL,
  `puntos` float NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ve_valorizaciones`
--

INSERT INTO `ve_valorizaciones` (`id`, `idve_producto`, `puntos`, `fecha`, `estado`) VALUES
(1, 1, 24.65, '2019-09-12', 'AC'),
(2, 2, 31.7, '2019-09-12', 'AC'),
(3, 3, 24.65, '2019-09-12', 'AC'),
(4, 4, 18.5, '2019-09-12', 'AC'),
(5, 5, 13.4, '2019-09-12', 'AC'),
(6, 6, 10.3, '2019-09-12', 'AC'),
(7, 7, 15.19, '2019-09-12', 'AC'),
(8, 8, 36, '2019-09-12', 'AC'),
(9, 9, 20.55, '2019-09-12', 'AC'),
(10, 10, 10.56, '2019-09-12', 'AC'),
(11, 11, 25.7, '2019-09-12', 'AC'),
(12, 12, 26.52, '2019-09-12', 'AC'),
(13, 13, 24.21, '2019-09-12', 'AC'),
(14, 14, 53.65, '2019-09-12', 'AC'),
(15, 15, 25.65, '2019-09-12', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_ventas`
--

CREATE TABLE IF NOT EXISTS `ve_ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idad_usuario` int(11) NOT NULL,
  `idve_cliente` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `idve_porcentaje` int(11) NOT NULL,
  `numero_venta` int(11) NOT NULL,
  `compra` float NOT NULL,
  `precio` float NOT NULL,
  `cantidad` float NOT NULL,
  `total` float NOT NULL,
  `fecha` date NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipoventa` int(11) NOT NULL DEFAULT '1',
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `ve_ventas`
--

INSERT INTO `ve_ventas` (`id`, `codad_empresa`, `idad_usuario`, `idve_cliente`, `idve_producto`, `idve_porcentaje`, `numero_venta`, `compra`, `precio`, `cantidad`, `total`, `fecha`, `fecha_hora`, `tipoventa`, `estado`) VALUES
(1, 2, 11, 0, 7, 33, 1, 108, 120.3, 1, 120.3, '0000-00-00', '2019-09-26 04:00:00', 0, 'AC'),
(2, 2, 11, 0, 2, 10, 2, 214.2, 400, 5, 2000, '0000-00-00', '2019-09-26 04:00:00', 0, 'AC'),
(3, 2, 11, 0, 2, 10, 3, 214.2, 400, 1, 400, '0000-00-00', '2019-09-26 04:00:00', 0, 'AC'),
(4, 2, 11, 0, 8, 40, 3, 226, 405, 1, 405, '0000-00-00', '2019-09-26 04:00:00', 0, 'AC'),
(5, 2, 11, 0, 10, 50, 4, 75, 145, 1, 145, '0000-00-00', '2019-09-26 06:52:00', 0, 'AC'),
(6, 2, 11, 0, 5, 25, 5, 151.3, 280, 1, 280, '0000-00-00', '2019-09-26 02:54:37', 0, 'AC'),
(7, 2, 11, 0, 6, 30, 6, 73.2, 140, 1, 140, '2019-09-25', '2019-09-26 03:00:10', 0, 'AC'),
(8, 2, 11, 0, 1, 5, 7, 162, 300, 2, 600, '2019-09-25', '2019-09-26 03:01:17', 0, 'AC'),
(9, 2, 11, 0, 2, 10, 7, 214.2, 400, 1, 400, '2019-09-25', '2019-09-26 03:01:17', 0, 'AC'),
(10, 2, 11, 0, 3, 15, 7, 162, 300, 1, 300, '2019-09-25', '2019-09-26 03:01:17', 0, 'AC'),
(11, 2, 11, 0, 3, 15, 8, 162, 300, 1, 300, '2019-09-25', '2019-09-26 03:02:04', 0, 'AC'),
(12, 2, 11, 0, 4, 20, 9, 131.5, 250, 3, 750, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(13, 2, 11, 0, 5, 25, 9, 151.3, 280, 2, 560, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(14, 2, 11, 0, 6, 30, 9, 73.2, 140, 4, 560, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(15, 2, 11, 0, 7, 35, 9, 108, 200, 5, 1000, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(16, 2, 11, 0, 8, 40, 9, 226, 405, 4, 1620, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(17, 2, 11, 0, 9, 45, 9, 129.2, 250, 6, 1500, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(18, 2, 11, 0, 10, 50, 9, 75, 145, 5, 725, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(19, 2, 11, 0, 11, 55, 9, 183, 320, 4, 1280, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(20, 2, 11, 0, 12, 60, 9, 189, 335, 4, 1340, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(21, 2, 11, 0, 13, 65, 9, 168, 310, 2, 620, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(22, 2, 11, 0, 14, 70, 9, 379, 630, 1, 630, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC'),
(23, 2, 11, 0, 15, 75, 9, 166.3, 250, 3, 750, '2019-09-25', '2019-09-26 03:15:02', 0, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_venta_prestamos`
--

CREATE TABLE IF NOT EXISTS `ve_venta_prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
