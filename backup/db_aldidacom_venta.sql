-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-09-2019 a las 01:01:51
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
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `ad_aplicaciones`
--

INSERT INTO `ad_aplicaciones` (`codigo`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(8, 'APLICACION PRINCIPAL', 'ADMIN', 'ADMINISTRACION', 'AC'),
(9, 'SISTEMA DE VENTAS', 'SV', 'SISTEMA DE VENTAS', 'AC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `ad_empresas`
--

INSERT INTO `ad_empresas` (`codigo`, `denominacion`, `correo`, `abreviatura`, `propietario`, `telefono`, `direccion`, `descripcion_entidad`, `fecha`, `valoracionproducto`, `estado`) VALUES
(1, 'VENTA LETICIA HERBALIFE', 'lety@gmail.com', 'VLH', 'LETICIA DORIS DAZA ALCARAZ', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS DE HERBALIFE', '2019-09-11', 0, 'AC'),
(2, 'VENTA LETICIA HERBALIFE', 'lety@gmail.com	', 'VLH', 'LETICIA DORIS DAZA ALCARAZ', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS DE HERBALIFE', '2019-09-11', 1, 'AC');

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
(45, 20, 30, 'REGISTRAR VENTA', '', '', 2, 1, 'AC'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

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
(87, 11, 56, 11, 'AC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `ad_usuarios`
--

INSERT INTO `ad_usuarios` (`id`, `codad_empresa`, `codad_aplicacion`, `nombres`, `apellidos`, `nro_documento`, `tipo_documento`, `idad_logs`, `direccion`, `tel_cel`, `fecha_nacimiento`, `correo`, `cargo`, `login`, `clave`, `tipo_user`, `estado`) VALUES
(8, 1, 8, 'DIEGO', 'DAZA ALCARAZ', '6703132', 'CI', 8, 'HEROINAS', '78720504', '1989-11-26', 'aldidacom@gmail.com', 'GERENTE', 'DDAZA.ADMIN', '952c4c39d5460b647fa9f7f4cf36fb13', 'SUPER ADMINISTRADOR', 'AC'),
(11, 2, 1, 'LETICIA DORIS', 'DAZA ALCARAZ', '6549871', 'CI', 11, 'DELICIAS', '72433002', '1987-07-04', 'lety@gmail.com', 'GERENTE PROPIETARIA', 'LETYDAZA.HLV', '952c4c39d5460b647fa9f7f4cf36fb13', 'USUARIO CENTRAL', 'AC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ve_acumulador_almacen`
--

INSERT INTO `ve_acumulador_almacen` (`id`, `codad_empresa`, `idad_usuario`, `idve_producto`, `porcentaje`, `idve_porcentaje`, `entrada`, `precio_compra`, `precio_venta`, `vencimiento`, `fecha_vencimiento`, `estado`) VALUES
(11, 2, 11, 2, 1, 9, 2, 214.2, 400, 1, '2020-01-24', 'AC'),
(13, 2, 11, 7, 1, 34, 1, 108, 200, 1, '2019-09-01', 'AC'),
(14, 2, 11, 3, 1, 14, 2, 162, 300, 1, '2020-01-24', 'AC'),
(15, 2, 11, 5, 1, 24, 3, 151.3, 280, 1, '2020-04-30', 'AC');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `ve_almacenes`
--

INSERT INTO `ve_almacenes` (`id`, `idad_usuario`, `idve_producto`, `idve_proveedor`, `idve_porcentaje`, `entrada`, `salida`, `saldo`, `precio_compra`, `precio_venta`, `vencimiento`, `fecha_vencimiento`, `fecha`, `factura`, `num_factura`, `observaciones`, `estado`, `tipoingreso`) VALUES
(6, 11, 7, 0, 35, 5, 0, 5, 200, 200, 1, '2019-11-23', '2019-09-16', 0, 0, '', 'AC', 0),
(7, 11, 1, 0, 4, 2, 0, 2, 162, 300, 1, '2019-11-30', '2019-09-16', 0, 0, '', 'AC', 0),
(8, 11, 2, 0, 9, 5, 0, 5, 214.2, 400, 1, '2019-11-30', '2019-09-16', 0, 0, '', 'AC', 0);

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
(61, 13, 25, 284, '2019-09-12', 'AC'),
(62, 13, 35, 256, '2019-09-12', 'AC'),
(63, 13, 42, 235.5, '2019-09-12', 'AC'),
(64, 13, 50, 214.2, '2019-09-12', 'AC'),
(65, 13, 100, 400, '2019-09-12', 'AC'),
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
  `idve_proveedor` int(11) NOT NULL,
  `valor1` varchar(200) NOT NULL,
  `valor2` varchar(200) NOT NULL,
  `composicion` varchar(200) NOT NULL,
  `presentacion` varchar(200) NOT NULL,
  `unidad` varchar(100) NOT NULL,
  `sabor` varchar(50) NOT NULL,
  `vencimiento` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `precioporcentaje` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `ve_productos`
--

INSERT INTO `ve_productos` (`id`, `codad_empresa`, `idve_proveedor`, `valor1`, `valor2`, `composicion`, `presentacion`, `unidad`, `sabor`, `vencimiento`, `valoracion`, `precioporcentaje`, `estado`) VALUES
(1, 2, 0, 'FORMULA 1 /MEZXLA NUTRICIONAL PROTEICA ', 'BATIDO', '550 GR.', 'BOTE GRANDE', 'BOTE', 'NARANJA', 1, 1, 1, 'AC'),
(2, 2, 0, 'PDM / PROTEIN DRINK MIX', 'PROTEINA', '616 GR.', 'BOTE GRANDE', 'BOTE', 'VAINILLA', 1, 1, 1, 'AC'),
(3, 2, 0, 'FORMULA 1 /MEZXLA NUTRICIONAL PROTEICA ', 'BATIDO', '550 GR.', 'BOTE GRANDE', 'BOTE', 'VAINILLA', 1, 1, 1, 'AC'),
(4, 2, 0, 'PERFORMANCE PROTEIN POWDER', 'PROTEINA NATURAL', '', 'BOTE MEDIANO', 'BOTE', 'NORMAL', 1, 1, 1, 'AC'),
(5, 2, 0, 'BARRAS DE PROTEINA DELUZA', 'BARRAS DE PROTEINA', '14 UNIDADES', 'BARRAS PEQUEÑAS', 'BARRA', 'VAINILLA CON ALMENDRAS', 1, 1, 1, 'AC'),
(6, 2, 0, 'FORMULA 2 VITAMINA-MINERAL HERBAL', 'VITAMINAS', '', 'TABLETAS', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(7, 2, 0, 'NRG', 'NATURE''S RAW GUARANA TEA ', '50GR', 'FRASCO', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(8, 2, 0, 'THEMO HERBAL CONCENTRATE', 'TE DE HIERBAS', '100 GR', 'FRASCO', 'FRASCO', 'LIMON', 1, 1, 1, 'AC'),
(9, 2, 0, 'THEMO HERBAL CONCENTRATE', 'TE DE HIERBAS', '51 GR', 'FRASCO', 'FRASCO', 'CHAI', 1, 1, 1, 'AC'),
(10, 2, 0, 'XTRA-CAL', 'TABLETAS DE CALCIO', '', 'TABLETAS', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(11, 2, 0, 'HERBAL ALOE DRINK ', 'JUGO CONCENTRADO DE SABILA', 'SABILA', 'BOTE DELGADO', 'BOTE', 'NATURAL', 1, 1, 1, 'AC'),
(12, 2, 0, 'HERBALIFELINE', 'CAPSULAS DE ACEITE DE PESCADO', '', 'CAPSULAS', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
(13, 2, 0, 'FIBRA ACTIVA', 'FIBRA', '', 'BOTE MEDIANO', 'BOTE', 'MANZANA', 1, 1, 1, 'AC'),
(14, 2, 0, 'H24 REBUILD STRENGTH', 'NUTRICION PARA RECUPERACION', '1000 GR', 'BOTE GRANDE', 'BOTE', 'S/S', 1, 1, 1, 'AC'),
(15, 2, 0, 'H24 CR7', 'BEBIDA HIDRATANTE DEPORTISTAS ', '24 GR', 'BOTE MEDIANO', 'BOTE', 'S/S', 1, 1, 1, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_proveedores`
--

CREATE TABLE IF NOT EXISTS `ve_proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `nombre_pro` varchar(200) NOT NULL,
  `linea` varchar(100) NOT NULL,
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
(1, 1, 2, 162, 300, 'ac'),
(2, 2, 5, 214.2, 400, 'AC'),
(3, 3, 0, 0, 0, 'AC'),
(4, 4, 0, 0, 0, 'AC'),
(5, 5, 0, 0, 0, 'AC'),
(6, 6, 0, 0, 0, 'ac'),
(7, 7, 5, 200, 200, 'AC'),
(8, 8, 0, 0, 0, 'AC'),
(9, 9, 0, 0, 0, 'AC'),
(10, 10, 0, 0, 0, 'AC'),
(11, 11, 0, 0, 0, 'AC'),
(12, 12, 0, 0, 0, 'AC'),
(13, 13, 0, 0, 0, 'AC'),
(14, 14, 0, 0, 0, 'AC'),
(15, 15, 0, 0, 0, 'AC');

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
  `idve_valorizacion` int(11) NOT NULL,
  `numero_venta` int(11) NOT NULL,
  `compra` float NOT NULL,
  `precio` float NOT NULL,
  `cantidad` float NOT NULL,
  `total` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipoventa` int(11) NOT NULL DEFAULT '1',
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
