-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2020 a las 21:51:43
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_acciones`
--

CREATE TABLE `ad_acciones` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_aplicaciones` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre_aplicacion` varchar(250) NOT NULL,
  `user_administrador` varchar(4) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ad_aplicaciones`
--

INSERT INTO `ad_aplicaciones` (`codigo`, `descripcion`, `abreviatura`, `nombre_aplicacion`, `user_administrador`, `estado`) VALUES
(8, 'APLICACION PRINCIPAL', 'ADMIN', 'ADMINISTRACION', 'SI', 'AC'),
(9, 'SISTEMA DE VENTAS HERBALIFE', 'SV', 'SISTEMA DE VENTAS HERBALIFE', 'NO', 'AC'),
(10, 'SISTEMA DE VENTAS FARMACIA', 'SVF', 'SISTEMA DE VENTAS FARMACIA', 'SI', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_configuraciones_empresas`
--

CREATE TABLE `ad_configuraciones_empresas` (
  `id` int(11) NOT NULL,
  `codad_empresa` int(11) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `valor1` varchar(100) NOT NULL,
  `valor2` varchar(100) NOT NULL,
  `valor3` varchar(100) NOT NULL,
  `valor4` varchar(100) NOT NULL,
  `valor5` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ad_configuraciones_empresas`
--

INSERT INTO `ad_configuraciones_empresas` (`id`, `codad_empresa`, `concepto`, `valor1`, `valor2`, `valor3`, `valor4`, `valor5`, `fecha`, `fecha_registro`) VALUES
(1, 2, 'VISTA ACTUALIZAR ALMACEN', 'actualizar_almacen_valoracion', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(2, 3, 'VISTA ACTUALIZAR ALMACEN', 'actualizar_almacen', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(3, 2, 'MODELO TOTALES', 'almacen_totales_valoracion', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(4, 2, 'MODELO PRODUCTOS A SELECCIONAR', 'listaproductoselecionado_valoracion', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(5, 3, 'MODELO TOTALES', 'almacen_totales', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(6, 3, 'MODELO PRODUCTOS A SELECCIONAR', 'listaproductoselecionado', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(7, 2, 'VISTA ACUMULADOR ALMACEN', 'lista_acumulador_datos_valoracion', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(8, 3, 'VISTA ACUMULADOR ALMACEN', 'lista_acumulador_datos', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(9, 2, 'MODELO DETALLE ALMACEN', 'almacen_detalles_valoracion', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(10, 3, 'MODELO DETALLE ALMACEN', 'almacen_detalles', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(11, 2, 'VISTA DETALLE ALMACEN', 'detalle_almacen_valoracion', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(12, 3, 'VISTA DETALLE ALMACEN', 'detalle_almacen', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(13, 2, 'VISTA DETALLE ALMACEN', 'detalle_almacen', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(14, 3, 'VISTA DETALLE ALMACEN', 'detalle_almacen', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(15, 2, 'VISTA VENTA PRODUCTOS', 'venta_herbalife', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(16, 3, 'VISTA VENTA PRODUCTOS', 'venta_productos_farmacia', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(17, 2, 'MODELO VENTA PRODUCTOS TOTALES', 'almacen_totales_herbalife', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(18, 3, 'MODELO VENTA PRODUCTOS TOTALES', 'almacen_totales_farmacia', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(19, 2, 'MODELO VENTA ACUMULADOR PRODUCTOS VIRTUAL', 'listaproductoselecionado_herbalife', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(20, 3, 'MODELO VENTA ACUMULADOR PRODUCTOS VIRTUAL', 'listaproductoselecionado_farmacia', 'MODELO', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(21, 2, 'VISTA ACUMULADOR VENTA', 'lista_acumulador_datos', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(22, 3, 'VISTA ACUMULADOR VENTA', 'lista_acumulador_datos_farmacia', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(23, 2, 'VISTA PRECIOS PRODUCTO', 'precios_herbalife', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(24, 3, 'VISTA PRECIOS PRODUCTO', 'precios_farmacia', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00'),
(25, 2, 'MODELO LISTA PRODUCTOS SELECCIONADOS', 'listaproductoselecionado_herbalife', 'MODELO', '', '', '', '2020-04-05', '0000-00-00 00:00:00'),
(26, 3, 'MODELO LISTA PRODUCTOS SELECCIONADOS', 'listaproductoselecionado_farmacia', 'MODELO', '', '', '', '2020-04-05', '0000-00-00 00:00:00'),
(27, 3, 'VISTA ARQUEO VENTA', 'lista_arqueo_farmacia', 'VISTA', '', '', '', '2019-09-02', '2019-09-02 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_empresas`
--

CREATE TABLE `ad_empresas` (
  `codigo` int(11) NOT NULL,
  `codad_aplicacion` int(11) NOT NULL,
  `denominacion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `descripcion_entidad` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `valoracionproducto` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ad_empresas`
--

INSERT INTO `ad_empresas` (`codigo`, `codad_aplicacion`, `denominacion`, `correo`, `abreviatura`, `propietario`, `telefono`, `direccion`, `descripcion_entidad`, `fecha`, `valoracionproducto`, `estado`) VALUES
(1, 0, 'ADMINISTRACION SISTEMA', 'aldidacom@gmail.com', 'VLH', 'ALVARO DIEGO DAZA ALCARAZ', '78720504', 'DELICIAS', 'ADMINISTRACION SISTEMA', '2019-09-11', 0, 'AC'),
(2, 9, 'VENTA LETICIA HERBALIFE', 'lety@gmail.com	', 'VLH', 'LETICIA DORIS DAZA ALCARAZ', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS DE HERBALIFE', '2019-09-11', 1, 'AC'),
(3, 10, 'VENTA LETICIA FARMACIA', 'lety@gmail.com', 'VLF', 'DORIS DAZA', '72433002', 'DELICIAS', 'VENTA DE PRODUCTOS FARMACEUTICOS', '2019-09-26', 0, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_logs`
--

CREATE TABLE `ad_logs` (
  `id` int(11) NOT NULL,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_accion` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_modulos` (
  `codigo` int(11) NOT NULL,
  `codad_aplicacion` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ad_opciones` (
  `codigo` int(11) NOT NULL,
  `codad_modulo` int(11) NOT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `opcion` varchar(20) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `nivel` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(39, 17, 31, 'CAMBIAR PRECIO', '', 'Precios', 2, 3, 'AC'),
(40, 17, 31, 'VALORIZACION PRODUCT', '', '', 2, 4, 'AC'),
(41, 17, 31, 'MODIFICAR PRODUCTO', '', '', 2, 5, 'AC'),
(42, 17, 31, 'BAJA PRODUCTO', '', '', 2, 6, 'AC'),
(43, 21, 34, 'DETALLE ALMACEN', '', 'Almacen/detalle_almacen', 2, 1, 'AC'),
(44, 21, 34, 'ACTUALIZAR ALMACEN', '', 'Almacen', 2, 2, 'AC'),
(45, 20, 30, 'REGISTRAR VENTA', '', 'Ventas', 2, 1, 'AC'),
(46, 20, 30, 'REGISTRAR DEVOLUCION', '', 'Devolucion', 2, 2, 'AC'),
(47, 18, 32, 'LISTA PROVEEDORES', '', '', 2, 1, 'AC'),
(48, 18, 33, 'STOCK PRODUCTOS', '', '', 2, 1, 'AC'),
(49, 18, 33, 'STOCK PRODUCTOS', '', '', 2, 1, 'AC'),
(50, 18, 33, 'REPORTES DE VENTAS', '', '', 2, 2, 'AC'),
(51, 18, 33, 'REPORTE POR CANTIDAD', '', '', 2, 3, 'AC'),
(52, 18, 33, 'VENTA POR CLIENTE', '', '', 2, 4, 'AC'),
(53, 18, 33, 'INGRESO A PRESTAMO', '', '', 2, 5, 'AC'),
(54, 18, 33, 'VENTA A PRESTAMO', '', '', 2, 6, 'AC'),
(55, 22, 55, 'CLIENTES', '', '', 1, 0, 'AC'),
(56, 55, 55, 'LISTA CLIENTES', '', '', 2, 1, 'AC'),
(57, 18, 33, 'ARQUEO', '', 'Ventas/arqueo', 2, 7, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_opciones_usuarios`
--

CREATE TABLE `ad_opciones_usuarios` (
  `id` int(11) NOT NULL,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(106, 13, 50, 11, 'AC'),
(107, 13, 51, 11, 'AC'),
(108, 13, 52, 11, 'AC'),
(109, 13, 53, 11, 'AC'),
(110, 13, 54, 11, 'AC'),
(111, 13, 55, 11, 'AC'),
(112, 13, 56, 11, 'AC'),
(113, 13, 57, 11, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_usuarios`
--

CREATE TABLE `ad_usuarios` (
  `id` int(11) NOT NULL,
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
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ve_acumulador_almacen` (
  `id` int(11) NOT NULL,
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
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_acumulador_venta`
--

CREATE TABLE `ve_acumulador_venta` (
  `id` int(11) NOT NULL,
  `codad_empresa` int(11) NOT NULL,
  `idad_usuario` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `idve_porcentaje` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_almacenes`
--

CREATE TABLE `ve_almacenes` (
  `id` int(11) NOT NULL,
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
  `fecha_hora_ingreso` datetime NOT NULL,
  `factura` int(11) NOT NULL DEFAULT 1,
  `num_factura` int(11) NOT NULL,
  `observaciones` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `tipoingreso` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ve_almacenes`
--

INSERT INTO `ve_almacenes` (`id`, `idad_usuario`, `idve_producto`, `idve_proveedor`, `idve_porcentaje`, `entrada`, `salida`, `saldo`, `precio_compra`, `precio_venta`, `vencimiento`, `fecha_vencimiento`, `fecha`, `fecha_hora_ingreso`, `factura`, `num_factura`, `observaciones`, `estado`, `tipoingreso`) VALUES
(6, 11, 7, 0, 35, 5, 5, 0, 200, 200, 1, '2019-11-23', '2019-09-16', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(7, 11, 1, 0, 4, 2, 2, 0, 162, 300, 1, '2019-11-30', '2019-09-16', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(8, 11, 2, 0, 9, 5, 5, 0, 214.2, 400, 1, '2019-11-30', '2019-09-16', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(9, 11, 2, 0, 9, 2, 2, 0, 214.2, 400, 1, '2020-01-24', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(10, 11, 7, 0, 34, 1, 1, 0, 108, 200, 1, '2019-09-01', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(11, 11, 3, 0, 14, 2, 2, 0, 162, 300, 1, '2020-01-24', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(12, 11, 5, 0, 24, 3, 3, 0, 151.3, 280, 1, '2020-04-30', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(13, 11, 6, 0, 29, 5, 5, 0, 73.2, 140, 1, '2020-02-01', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(14, 11, 4, 0, 19, 3, 3, 0, 131.5, 250, 1, '2020-03-28', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(15, 11, 8, 0, 39, 5, 5, 0, 226, 405, 1, '2020-06-20', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(16, 11, 9, 0, 44, 6, 6, 0, 129.2, 250, 1, '2020-05-15', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(17, 11, 10, 0, 49, 6, 6, 0, 75, 145, 1, '2020-05-02', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(18, 11, 11, 0, 54, 4, 4, 0, 183, 320, 1, '2020-08-29', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(19, 11, 12, 0, 59, 4, 4, 0, 189, 335, 1, '2020-05-30', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(20, 11, 13, 0, 64, 2, 2, 0, 214.2, 400, 1, '2020-08-01', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(21, 11, 14, 0, 69, 1, 1, 0, 379, 630, 1, '2020-06-12', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(22, 11, 15, 0, 74, 3, 3, 0, 166.3, 250, 1, '2020-07-24', '2019-09-24', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(23, 13, 19, 0, 0, 10, 3, 7, 2.5, 3.7, 1, '2020-12-12', '2019-09-27', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(24, 13, 813, 0, 0, 20, 0, 20, 2.8, 4.2, 1, '2020-09-25', '2019-09-29', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(25, 13, 43, 0, 0, 50, 1, 49, 3, 4.2, 1, '2020-09-26', '2019-09-29', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(26, 13, 23, 0, 0, 15, 0, 15, 6.25, 8.2, 1, '2020-02-14', '2019-09-29', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(27, 11, 3, 0, 14, 2, 2, 0, 162, 300, 1, '2020-01-24', '2019-09-29', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(28, 13, 862, 0, 0, 3, 3, 0, 25, 32, 1, '2020-04-25', '2019-09-29', '0000-00-00 00:00:00', 0, 0, '', 'AC', 0),
(29, 13, 49, 0, 0, 50, 0, 50, 5, 6.5, 1, '2020-03-14', '2019-09-29', '2019-09-29 20:02:44', 0, 0, '', 'AC', 0),
(30, 11, 1, 0, 4, 1, 1, 0, 162, 300, 1, '2020-02-22', '2019-09-29', '2019-09-29 20:12:20', 0, 0, '', 'AC', 0),
(31, 11, 1, 0, 4, 5, 5, 0, 162, 300, 1, '2020-05-23', '2019-10-18', '2019-10-18 01:09:03', 0, 0, '', 'AC', 0),
(32, 11, 1, 0, 4, 10, 9, 1, 166, 310, 1, '2020-05-10', '2020-04-11', '2020-04-11 12:03:30', 0, 0, '', 'AC', 0),
(33, 13, 16, 0, 0, 6, 1, 5, 2, 6, 1, '2020-06-07', '2020-04-12', '2020-04-12 11:24:54', 0, 0, '', 'AC', 0),
(34, 13, 20, 0, 0, 10, 5, 5, 3, 5, 1, '2020-05-10', '2020-04-12', '2020-04-12 11:24:54', 0, 0, '', 'AC', 0),
(35, 11, 1, 0, 4, 3, 0, 3, 166, 310, 1, '2020-05-10', '2020-04-12', '2020-04-12 11:32:30', 0, 0, '', 'AC', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_castigos`
--

CREATE TABLE `ve_castigos` (
  `id` int(11) NOT NULL,
  `idve_almacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_clientes`
--

CREATE TABLE `ve_clientes` (
  `id` int(11) NOT NULL,
  `codad_empresa` int(11) NOT NULL,
  `num_documento` varchar(200) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ve_clientes`
--

INSERT INTO `ve_clientes` (`id`, `codad_empresa`, `num_documento`, `nombres`, `telefono`, `direccion`, `email`, `estado`) VALUES
(1, 3, '000000', 'POR DEFECTO', '0000000', 'POR DEFECTO', '', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_devoluciones`
--

CREATE TABLE `ve_devoluciones` (
  `id` int(11) NOT NULL,
  `idve_cliente` int(11) NOT NULL,
  `idve_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_ingreso_prestamos`
--

CREATE TABLE `ve_ingreso_prestamos` (
  `id` int(11) NOT NULL,
  `idve_almacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_linea_producto`
--

CREATE TABLE `ve_linea_producto` (
  `id` int(11) NOT NULL,
  `codad_empresa` int(11) NOT NULL,
  `nombre_linea` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Estructura de tabla para la tabla `ve_precios_actualizados`
--

CREATE TABLE `ve_precios_actualizados` (
  `id` int(11) NOT NULL,
  `idad_usuario` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `idve_precio_porcentaje` int(11) NOT NULL,
  `valor_anterior` float NOT NULL,
  `valor_actual` float NOT NULL,
  `fecha_actualizacion` datetime NOT NULL,
  `estado` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ve_precios_actualizados`
--

INSERT INTO `ve_precios_actualizados` (`id`, `idad_usuario`, `idve_producto`, `idve_precio_porcentaje`, `valor_anterior`, `valor_actual`, `fecha_actualizacion`, `estado`) VALUES
(1, 0, 19, 0, 3.7, 5, '2019-11-18 14:15:10', 'AC'),
(2, 13, 23, 0, 9.7, 9.7, '2019-11-18 14:18:08', 'AC'),
(3, 11, 1, 5, 300, 310, '2019-11-19 22:19:19', 'AC'),
(4, 11, 1, 3, 180, 150, '2019-11-19 22:25:57', 'AC'),
(5, 11, 1, 5, 310, 312, '2019-11-19 22:26:35', 'AC'),
(6, 11, 1, 4, 162, 170, '2019-11-19 22:26:35', 'AC'),
(7, 11, 1, 3, 150, 165, '2019-11-19 22:26:35', 'AC'),
(8, 11, 1, 2, 196, 200, '2019-11-19 22:26:35', 'AC'),
(9, 11, 1, 1, 219, 250, '2019-11-19 22:26:35', 'AC'),
(10, 11, 1, 5, 312, 310, '2019-12-04 13:21:39', 'AC'),
(11, 11, 1, 4, 170, 166, '2019-12-04 13:21:39', 'AC'),
(12, 11, 1, 3, 165, 185, '2019-12-04 13:21:39', 'AC'),
(13, 11, 1, 2, 200, 202, '2019-12-04 13:21:39', 'AC'),
(14, 11, 1, 1, 250, 225, '2019-12-04 13:21:39', 'AC'),
(15, 11, 3, 15, 300, 310, '2019-12-04 13:23:11', 'AC'),
(16, 11, 3, 14, 162, 166, '2019-12-04 13:23:11', 'AC'),
(17, 11, 3, 13, 180, 185, '2019-12-04 13:23:11', 'AC'),
(18, 11, 3, 12, 196, 202, '2019-12-04 13:23:11', 'AC'),
(19, 11, 3, 11, 219, 225, '2019-12-04 13:23:11', 'AC'),
(20, 11, 2, 10, 400, 412, '2019-12-04 13:24:25', 'AC'),
(21, 11, 2, 9, 214.2, 220, '2019-12-04 13:24:25', 'AC'),
(22, 11, 2, 8, 235.5, 243, '2019-12-04 13:24:25', 'AC'),
(23, 11, 2, 7, 256, 263, '2019-12-04 13:24:25', 'AC'),
(24, 11, 2, 6, 284, 292, '2019-12-04 13:24:25', 'AC'),
(25, 11, 4, 20, 250, 260, '2019-12-04 13:27:21', 'AC'),
(26, 11, 4, 19, 131.5, 135, '2019-12-04 13:27:21', 'AC'),
(27, 11, 4, 18, 146.5, 151, '2019-12-04 13:27:21', 'AC'),
(28, 11, 4, 17, 159.5, 164, '2019-12-04 13:27:21', 'AC'),
(29, 11, 4, 16, 178.2, 183, '2019-12-04 13:27:21', 'AC'),
(30, 11, 5, 25, 280, 290, '2019-12-04 13:28:30', 'AC'),
(31, 11, 5, 24, 151.3, 156, '2019-12-04 13:28:30', 'AC'),
(32, 11, 5, 23, 160, 164, '2019-12-04 13:28:30', 'AC'),
(33, 11, 5, 22, 167, 172, '2019-12-04 13:28:30', 'AC'),
(34, 11, 5, 21, 178, 183, '2019-12-04 13:28:30', 'AC'),
(35, 11, 3, 11, 225, 2, '2019-12-29 10:11:03', 'AC'),
(36, 11, 3, 11, 2, 2.22225, '2019-12-29 10:13:46', 'AC'),
(37, 11, 3, 11, 2.22225, 2.5, '2019-12-29 10:14:40', 'AC'),
(38, 11, 3, 11, 2.5, 3, '2019-12-29 10:18:21', 'AC'),
(39, 11, 3, 11, 3, 5, '2019-12-29 10:21:40', 'AC'),
(40, 11, 3, 11, 5, 15, '2019-12-29 10:24:36', 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_precios_porcentajes`
--

CREATE TABLE `ve_precios_porcentajes` (
  `id` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `porcentaje` float NOT NULL,
  `precio_porcentaje` float NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ve_precios_porcentajes`
--

INSERT INTO `ve_precios_porcentajes` (`id`, `idve_producto`, `porcentaje`, `precio_porcentaje`, `fecha`, `estado`) VALUES
(1, 1, 25, 225, '2019-09-12', 'AC'),
(2, 1, 35, 202, '2019-09-12', 'AC'),
(3, 1, 42, 185, '2019-09-12', 'AC'),
(4, 1, 50, 166, '2019-09-12', 'AC'),
(5, 1, 100, 310, '2019-09-12', 'AC'),
(6, 2, 25, 292, '2019-09-12', 'AC'),
(7, 2, 35, 263, '2019-09-12', 'AC'),
(8, 2, 42, 243, '2019-09-12', 'AC'),
(9, 2, 50, 220, '2019-09-12', 'AC'),
(10, 2, 100, 412, '2019-09-12', 'AC'),
(11, 3, 25, 15, '2019-09-12', 'AC'),
(12, 3, 35, 202, '2019-09-12', 'AC'),
(13, 3, 42, 185, '2019-09-12', 'AC'),
(14, 3, 50, 166, '2019-09-12', 'AC'),
(15, 3, 100, 310, '2019-09-12', 'AC'),
(16, 4, 25, 183, '2019-09-12', 'AC'),
(17, 4, 35, 164, '2019-09-12', 'AC'),
(18, 4, 42, 151, '2019-09-12', 'AC'),
(19, 4, 50, 135, '2019-09-12', 'AC'),
(20, 4, 100, 260, '2019-09-12', 'AC'),
(21, 5, 25, 183, '2019-09-12', 'AC'),
(22, 5, 35, 172, '2019-09-12', 'AC'),
(23, 5, 42, 164, '2019-09-12', 'AC'),
(24, 5, 50, 156, '2019-09-12', 'AC'),
(25, 5, 100, 290, '2019-09-12', 'AC'),
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

CREATE TABLE `ve_productos` (
  `id` int(11) NOT NULL,
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
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(7, 2, 1, 'NRG', 'NATURE\'S RAW GUARANA TEA ', '', '50GR', 'FRASCO', 'FRASCO', 'S/S', 1, 1, 1, 'AC'),
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
(405, 3, 12, 'Guantes de Latex \"L\"', 'Guantes ', '', '100 ', 'Caja ', '', '', 1, 1, 0, 'AC'),
(406, 3, 12, 'Guantes de Latex \"S\"', 'Guantes', '', '100', 'Caja', '', '', 1, 1, 0, 'AC'),
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

CREATE TABLE `ve_proveedores` (
  `id` int(11) NOT NULL,
  `codad_empresa` int(11) NOT NULL,
  `idve_linea` int(11) NOT NULL,
  `nombre_proveedor` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_totales`
--

CREATE TABLE `ve_totales` (
  `id` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `compra` float NOT NULL,
  `venta` float NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ve_totales`
--

INSERT INTO `ve_totales` (`id`, `idve_producto`, `saldo`, `compra`, `venta`, `estado`) VALUES
(1, 1, 4, 166, 310, 'ac'),
(2, 2, 0, 214.2, 412, 'AC'),
(3, 3, 0, 162, 310, 'AC'),
(4, 4, 0, 131.5, 260, 'AC'),
(5, 5, 0, 151.3, 290, 'AC'),
(6, 6, 0, 73.2, 140, 'ac'),
(7, 7, 0, 108, 200, 'AC'),
(8, 8, 0, 226, 405, 'AC'),
(9, 9, 0, 129.2, 250, 'AC'),
(10, 10, 0, 75, 145, 'AC'),
(11, 11, 0, 183, 320, 'AC'),
(12, 12, 0, 189, 335, 'AC'),
(13, 13, 0, 168, 310, 'AC'),
(14, 14, 0, 379, 630, 'AC'),
(15, 15, 0, 166.3, 250, 'AC'),
(16, 16, 5, 2, 6, 'AC'),
(17, 17, 0, 0, 0, 'AC'),
(18, 18, 0, 0, 0, 'AC'),
(19, 19, 7, 2.5, 5, 'AC'),
(20, 20, 5, 3, 5, 'AC'),
(21, 21, 0, 0, 0, 'AC'),
(22, 22, 0, 0, 0, 'AC'),
(23, 23, 15, 6.25, 9.7, 'AC'),
(24, 24, 0, 0, 0, 'AC'),
(25, 25, 0, 0, 0, 'AC'),
(26, 26, 0, 0, 0, 'AC'),
(27, 27, 0, 0, 0, 'AC'),
(28, 28, 0, 0, 0, 'AC'),
(29, 29, 0, 0, 0, 'AC'),
(30, 30, 0, 0, 0, 'AC'),
(31, 31, 0, 0, 0, 'AC'),
(32, 32, 0, 0, 0, 'AC'),
(33, 33, 0, 0, 0, 'AC'),
(34, 34, 0, 0, 0, 'AC'),
(35, 35, 0, 0, 0, 'AC'),
(36, 36, 0, 0, 0, 'AC'),
(37, 37, 0, 0, 0, 'AC'),
(38, 38, 0, 0, 0, 'AC'),
(39, 39, 0, 0, 0, 'AC'),
(40, 40, 0, 0, 0, 'AC'),
(41, 41, 0, 0, 0, 'AC'),
(42, 42, 0, 0, 0, 'AC'),
(43, 43, 49, 3, 4.2, 'AC'),
(44, 44, 0, 0, 0, 'AC'),
(45, 45, 0, 0, 0, 'AC'),
(46, 46, 0, 0, 0, 'AC'),
(47, 47, 0, 0, 0, 'AC'),
(48, 48, 0, 0, 0, 'AC'),
(49, 49, 50, 5, 6.5, 'AC'),
(50, 50, 0, 0, 0, 'AC'),
(51, 51, 0, 0, 0, 'AC'),
(52, 52, 0, 0, 0, 'AC'),
(53, 53, 0, 0, 0, 'AC'),
(54, 54, 0, 0, 0, 'AC'),
(55, 55, 0, 0, 0, 'AC'),
(56, 56, 0, 0, 0, 'AC'),
(57, 57, 0, 0, 0, 'AC'),
(58, 58, 0, 0, 0, 'AC'),
(59, 59, 0, 0, 0, 'AC'),
(60, 60, 0, 0, 0, 'AC'),
(61, 61, 0, 0, 0, 'AC'),
(62, 62, 0, 0, 0, 'AC'),
(63, 63, 0, 0, 0, 'AC'),
(64, 64, 0, 0, 0, 'AC'),
(65, 65, 0, 0, 0, 'AC'),
(66, 66, 0, 0, 0, 'AC'),
(67, 67, 0, 0, 0, 'AC'),
(68, 68, 0, 0, 0, 'AC'),
(69, 69, 0, 0, 0, 'AC'),
(70, 70, 0, 0, 0, 'AC'),
(71, 71, 0, 0, 0, 'AC'),
(72, 72, 0, 0, 0, 'AC'),
(73, 73, 0, 0, 0, 'AC'),
(74, 74, 0, 0, 0, 'AC'),
(75, 75, 0, 0, 0, 'AC'),
(76, 76, 0, 0, 0, 'AC'),
(77, 77, 0, 0, 0, 'AC'),
(78, 78, 0, 0, 0, 'AC'),
(79, 79, 0, 0, 0, 'AC'),
(80, 80, 0, 0, 0, 'AC'),
(81, 81, 0, 0, 0, 'AC'),
(82, 82, 0, 0, 0, 'AC'),
(83, 83, 0, 0, 0, 'AC'),
(84, 84, 0, 0, 0, 'AC'),
(85, 85, 0, 0, 0, 'AC'),
(86, 86, 0, 0, 0, 'AC'),
(87, 87, 0, 0, 0, 'AC'),
(88, 88, 0, 0, 0, 'AC'),
(89, 89, 0, 0, 0, 'AC'),
(90, 90, 0, 0, 0, 'AC'),
(91, 91, 0, 0, 0, 'AC'),
(92, 92, 0, 0, 0, 'AC'),
(93, 93, 0, 0, 0, 'AC'),
(94, 94, 0, 0, 0, 'AC'),
(95, 95, 0, 0, 0, 'AC'),
(96, 96, 0, 0, 0, 'AC'),
(97, 97, 0, 0, 0, 'AC'),
(98, 98, 0, 0, 0, 'AC'),
(99, 99, 0, 0, 0, 'AC'),
(100, 100, 0, 0, 0, 'AC'),
(101, 101, 0, 0, 0, 'AC'),
(102, 102, 0, 0, 0, 'AC'),
(103, 103, 0, 0, 0, 'AC'),
(104, 104, 0, 0, 0, 'AC'),
(105, 105, 0, 0, 0, 'AC'),
(106, 106, 0, 0, 0, 'AC'),
(107, 107, 0, 0, 0, 'AC'),
(108, 108, 0, 0, 0, 'AC'),
(109, 109, 0, 0, 0, 'AC'),
(110, 110, 0, 0, 0, 'AC'),
(111, 111, 0, 0, 0, 'AC'),
(112, 112, 0, 0, 0, 'AC'),
(113, 113, 0, 0, 0, 'AC'),
(114, 114, 0, 0, 0, 'AC'),
(115, 115, 0, 0, 0, 'AC'),
(116, 116, 0, 0, 0, 'AC'),
(117, 117, 0, 0, 0, 'AC'),
(118, 118, 0, 0, 0, 'AC'),
(119, 119, 0, 0, 0, 'AC'),
(120, 120, 0, 0, 0, 'AC'),
(121, 121, 0, 0, 0, 'AC'),
(122, 122, 0, 0, 0, 'AC'),
(123, 123, 0, 0, 0, 'AC'),
(124, 124, 0, 0, 0, 'AC'),
(125, 125, 0, 0, 0, 'AC'),
(126, 126, 0, 0, 0, 'AC'),
(127, 127, 0, 0, 0, 'AC'),
(128, 128, 0, 0, 0, 'AC'),
(129, 129, 0, 0, 0, 'AC'),
(130, 130, 0, 0, 0, 'AC'),
(131, 131, 0, 0, 0, 'AC'),
(132, 132, 0, 0, 0, 'AC'),
(133, 133, 0, 0, 0, 'AC'),
(134, 134, 0, 0, 0, 'AC'),
(135, 135, 0, 0, 0, 'AC'),
(136, 136, 0, 0, 0, 'AC'),
(137, 137, 0, 0, 0, 'AC'),
(138, 138, 0, 0, 0, 'AC'),
(139, 139, 0, 0, 0, 'AC'),
(140, 140, 0, 0, 0, 'AC'),
(141, 141, 0, 0, 0, 'AC'),
(142, 142, 0, 0, 0, 'AC'),
(143, 143, 0, 0, 0, 'AC'),
(144, 144, 0, 0, 0, 'AC'),
(145, 145, 0, 0, 0, 'AC'),
(146, 146, 0, 0, 0, 'AC'),
(147, 147, 0, 0, 0, 'AC'),
(148, 148, 0, 0, 0, 'AC'),
(149, 149, 0, 0, 0, 'AC'),
(150, 150, 0, 0, 0, 'AC'),
(151, 151, 0, 0, 0, 'AC'),
(152, 152, 0, 0, 0, 'AC'),
(153, 153, 0, 0, 0, 'AC'),
(154, 154, 0, 0, 0, 'AC'),
(155, 155, 0, 0, 0, 'AC'),
(156, 156, 0, 0, 0, 'AC'),
(157, 157, 0, 0, 0, 'AC'),
(158, 158, 0, 0, 0, 'AC'),
(159, 159, 0, 0, 0, 'AC'),
(160, 160, 0, 0, 0, 'AC'),
(161, 161, 0, 0, 0, 'AC'),
(162, 162, 0, 0, 0, 'AC'),
(163, 163, 0, 0, 0, 'AC'),
(164, 164, 0, 0, 0, 'AC'),
(165, 165, 0, 0, 0, 'AC'),
(166, 166, 0, 0, 0, 'AC'),
(167, 167, 0, 0, 0, 'AC'),
(168, 168, 0, 0, 0, 'AC'),
(169, 169, 0, 0, 0, 'AC'),
(170, 170, 0, 0, 0, 'AC'),
(171, 171, 0, 0, 0, 'AC'),
(172, 172, 0, 0, 0, 'AC'),
(173, 173, 0, 0, 0, 'AC'),
(174, 174, 0, 0, 0, 'AC'),
(175, 175, 0, 0, 0, 'AC'),
(176, 176, 0, 0, 0, 'AC'),
(177, 177, 0, 0, 0, 'AC'),
(178, 178, 0, 0, 0, 'AC'),
(179, 179, 0, 0, 0, 'AC'),
(180, 180, 0, 0, 0, 'AC'),
(181, 181, 0, 0, 0, 'AC'),
(182, 182, 0, 0, 0, 'AC'),
(183, 183, 0, 0, 0, 'AC'),
(184, 184, 0, 0, 0, 'AC'),
(185, 185, 0, 0, 0, 'AC'),
(186, 186, 0, 0, 0, 'AC'),
(187, 187, 0, 0, 0, 'AC'),
(188, 188, 0, 0, 0, 'AC'),
(189, 189, 0, 0, 0, 'AC'),
(190, 190, 0, 0, 0, 'AC'),
(191, 191, 0, 0, 0, 'AC'),
(192, 192, 0, 0, 0, 'AC'),
(193, 193, 0, 0, 0, 'AC'),
(194, 194, 0, 0, 0, 'AC'),
(195, 195, 0, 0, 0, 'AC'),
(196, 196, 0, 0, 0, 'AC'),
(197, 197, 0, 0, 0, 'AC'),
(198, 198, 0, 0, 0, 'AC'),
(199, 199, 0, 0, 0, 'AC'),
(200, 200, 0, 0, 0, 'AC'),
(201, 201, 0, 0, 0, 'AC'),
(202, 202, 0, 0, 0, 'AC'),
(203, 203, 0, 0, 0, 'AC'),
(204, 204, 0, 0, 0, 'AC'),
(205, 205, 0, 0, 0, 'AC'),
(206, 206, 0, 0, 0, 'AC'),
(207, 207, 0, 0, 0, 'AC'),
(208, 208, 0, 0, 0, 'AC'),
(209, 209, 0, 0, 0, 'AC'),
(210, 210, 0, 0, 0, 'AC'),
(211, 211, 0, 0, 0, 'AC'),
(212, 212, 0, 0, 0, 'AC'),
(213, 213, 0, 0, 0, 'AC'),
(214, 214, 0, 0, 0, 'AC'),
(215, 215, 0, 0, 0, 'AC'),
(216, 216, 0, 0, 0, 'AC'),
(217, 217, 0, 0, 0, 'AC'),
(218, 218, 0, 0, 0, 'AC'),
(219, 219, 0, 0, 0, 'AC'),
(220, 220, 0, 0, 0, 'AC'),
(221, 221, 0, 0, 0, 'AC'),
(222, 222, 0, 0, 0, 'AC'),
(223, 223, 0, 0, 0, 'AC'),
(224, 224, 0, 0, 0, 'AC'),
(225, 225, 0, 0, 0, 'AC'),
(226, 226, 0, 0, 0, 'AC'),
(227, 227, 0, 0, 0, 'AC'),
(228, 228, 0, 0, 0, 'AC'),
(229, 229, 0, 0, 0, 'AC'),
(230, 230, 0, 0, 0, 'AC'),
(231, 231, 0, 0, 0, 'AC'),
(232, 232, 0, 0, 0, 'AC'),
(233, 233, 0, 0, 0, 'AC'),
(234, 234, 0, 0, 0, 'AC'),
(235, 235, 0, 0, 0, 'AC'),
(236, 236, 0, 0, 0, 'AC'),
(237, 237, 0, 0, 0, 'AC'),
(238, 238, 0, 0, 0, 'AC'),
(239, 239, 0, 0, 0, 'AC'),
(240, 240, 0, 0, 0, 'AC'),
(241, 241, 0, 0, 0, 'AC'),
(242, 242, 0, 0, 0, 'AC'),
(243, 243, 0, 0, 0, 'AC'),
(244, 244, 0, 0, 0, 'AC'),
(245, 245, 0, 0, 0, 'AC'),
(246, 246, 0, 0, 0, 'AC'),
(247, 247, 0, 0, 0, 'AC'),
(248, 248, 0, 0, 0, 'AC'),
(249, 249, 0, 0, 0, 'AC'),
(250, 250, 0, 0, 0, 'AC'),
(251, 251, 0, 0, 0, 'AC'),
(252, 252, 0, 0, 0, 'AC'),
(253, 253, 0, 0, 0, 'AC'),
(254, 254, 0, 0, 0, 'AC'),
(255, 255, 0, 0, 0, 'AC'),
(256, 256, 0, 0, 0, 'AC'),
(257, 257, 0, 0, 0, 'AC'),
(258, 258, 0, 0, 0, 'AC'),
(259, 259, 0, 0, 0, 'AC'),
(260, 260, 0, 0, 0, 'AC'),
(261, 261, 0, 0, 0, 'AC'),
(262, 262, 0, 0, 0, 'AC'),
(263, 263, 0, 0, 0, 'AC'),
(264, 264, 0, 0, 0, 'AC'),
(265, 265, 0, 0, 0, 'AC'),
(266, 266, 0, 0, 0, 'AC'),
(267, 267, 0, 0, 0, 'AC'),
(268, 268, 0, 0, 0, 'AC'),
(269, 269, 0, 0, 0, 'AC'),
(270, 270, 0, 0, 0, 'AC'),
(271, 271, 0, 0, 0, 'AC'),
(272, 272, 0, 0, 0, 'AC'),
(273, 273, 0, 0, 0, 'AC'),
(274, 274, 0, 0, 0, 'AC'),
(275, 275, 0, 0, 0, 'AC'),
(276, 276, 0, 0, 0, 'AC'),
(277, 277, 0, 0, 0, 'AC'),
(278, 278, 0, 0, 0, 'AC'),
(279, 279, 0, 0, 0, 'AC'),
(280, 280, 0, 0, 0, 'AC'),
(281, 281, 0, 0, 0, 'AC'),
(282, 282, 0, 0, 0, 'AC'),
(283, 283, 0, 0, 0, 'AC'),
(284, 284, 0, 0, 0, 'AC'),
(285, 285, 0, 0, 0, 'AC'),
(286, 286, 0, 0, 0, 'AC'),
(287, 287, 0, 0, 0, 'AC'),
(288, 288, 0, 0, 0, 'AC'),
(289, 289, 0, 0, 0, 'AC'),
(290, 290, 0, 0, 0, 'AC'),
(291, 291, 0, 0, 0, 'AC'),
(292, 292, 0, 0, 0, 'AC'),
(293, 293, 0, 0, 0, 'AC'),
(294, 294, 0, 0, 0, 'AC'),
(295, 295, 0, 0, 0, 'AC'),
(296, 296, 0, 0, 0, 'AC'),
(297, 297, 0, 0, 0, 'AC'),
(298, 298, 0, 0, 0, 'AC'),
(299, 299, 0, 0, 0, 'AC'),
(300, 300, 0, 0, 0, 'AC'),
(301, 301, 0, 0, 0, 'AC'),
(302, 302, 0, 0, 0, 'AC'),
(303, 303, 0, 0, 0, 'AC'),
(304, 304, 0, 0, 0, 'AC'),
(305, 305, 0, 0, 0, 'AC'),
(306, 306, 0, 0, 0, 'AC'),
(307, 307, 0, 0, 0, 'AC'),
(308, 308, 0, 0, 0, 'AC'),
(309, 309, 0, 0, 0, 'AC'),
(310, 310, 0, 0, 0, 'AC'),
(311, 311, 0, 0, 0, 'AC'),
(312, 312, 0, 0, 0, 'AC'),
(313, 313, 0, 0, 0, 'AC'),
(314, 314, 0, 0, 0, 'AC'),
(315, 315, 0, 0, 0, 'AC'),
(316, 316, 0, 0, 0, 'AC'),
(317, 317, 0, 0, 0, 'AC'),
(318, 318, 0, 0, 0, 'AC'),
(319, 319, 0, 0, 0, 'AC'),
(320, 320, 0, 0, 0, 'AC'),
(321, 321, 0, 0, 0, 'AC'),
(322, 322, 0, 0, 0, 'AC'),
(323, 323, 0, 0, 0, 'AC'),
(324, 324, 0, 0, 0, 'AC'),
(325, 325, 0, 0, 0, 'AC'),
(326, 326, 0, 0, 0, 'AC'),
(327, 327, 0, 0, 0, 'AC'),
(328, 328, 0, 0, 0, 'AC'),
(329, 329, 0, 0, 0, 'AC'),
(330, 330, 0, 0, 0, 'AC'),
(331, 331, 0, 0, 0, 'AC'),
(332, 332, 0, 0, 0, 'AC'),
(333, 333, 0, 0, 0, 'AC'),
(334, 334, 0, 0, 0, 'AC'),
(335, 335, 0, 0, 0, 'AC'),
(336, 336, 0, 0, 0, 'AC'),
(337, 337, 0, 0, 0, 'AC'),
(338, 338, 0, 0, 0, 'AC'),
(339, 339, 0, 0, 0, 'AC'),
(340, 340, 0, 0, 0, 'AC'),
(341, 341, 0, 0, 0, 'AC'),
(342, 342, 0, 0, 0, 'AC'),
(343, 343, 0, 0, 0, 'AC'),
(344, 344, 0, 0, 0, 'AC'),
(345, 345, 0, 0, 0, 'AC'),
(346, 346, 0, 0, 0, 'AC'),
(347, 347, 0, 0, 0, 'AC'),
(348, 348, 0, 0, 0, 'AC'),
(349, 349, 0, 0, 0, 'AC'),
(350, 350, 0, 0, 0, 'AC'),
(351, 351, 0, 0, 0, 'AC'),
(352, 352, 0, 0, 0, 'AC'),
(353, 353, 0, 0, 0, 'AC'),
(354, 354, 0, 0, 0, 'AC'),
(355, 355, 0, 0, 0, 'AC'),
(356, 356, 0, 0, 0, 'AC'),
(357, 357, 0, 0, 0, 'AC'),
(358, 358, 0, 0, 0, 'AC'),
(359, 359, 0, 0, 0, 'AC'),
(360, 360, 0, 0, 0, 'AC'),
(361, 361, 0, 0, 0, 'AC'),
(362, 362, 0, 0, 0, 'AC'),
(363, 363, 0, 0, 0, 'AC'),
(364, 364, 0, 0, 0, 'AC'),
(365, 365, 0, 0, 0, 'AC'),
(366, 366, 0, 0, 0, 'AC'),
(367, 367, 0, 0, 0, 'AC'),
(368, 368, 0, 0, 0, 'AC'),
(369, 369, 0, 0, 0, 'AC'),
(370, 370, 0, 0, 0, 'AC'),
(371, 371, 0, 0, 0, 'AC'),
(372, 372, 0, 0, 0, 'AC'),
(373, 373, 0, 0, 0, 'AC'),
(374, 374, 0, 0, 0, 'AC'),
(375, 375, 0, 0, 0, 'AC'),
(376, 376, 0, 0, 0, 'AC'),
(377, 377, 0, 0, 0, 'AC'),
(378, 378, 0, 0, 0, 'AC'),
(379, 379, 0, 0, 0, 'AC'),
(380, 380, 0, 0, 0, 'AC'),
(381, 381, 0, 0, 0, 'AC'),
(382, 382, 0, 0, 0, 'AC'),
(383, 383, 0, 0, 0, 'AC'),
(384, 384, 0, 0, 0, 'AC'),
(385, 385, 0, 0, 0, 'AC'),
(386, 386, 0, 0, 0, 'AC'),
(387, 387, 0, 0, 0, 'AC'),
(388, 388, 0, 0, 0, 'AC'),
(389, 389, 0, 0, 0, 'AC'),
(390, 390, 0, 0, 0, 'AC'),
(391, 391, 0, 0, 0, 'AC'),
(392, 392, 0, 0, 0, 'AC'),
(393, 393, 0, 0, 0, 'AC'),
(394, 394, 0, 0, 0, 'AC'),
(395, 395, 0, 0, 0, 'AC'),
(396, 396, 0, 0, 0, 'AC'),
(397, 397, 0, 0, 0, 'AC'),
(398, 398, 0, 0, 0, 'AC'),
(399, 399, 0, 0, 0, 'AC'),
(400, 400, 0, 0, 0, 'AC'),
(401, 401, 0, 0, 0, 'AC'),
(402, 402, 0, 0, 0, 'AC'),
(403, 403, 0, 0, 0, 'AC'),
(404, 404, 0, 0, 0, 'AC'),
(405, 405, 0, 0, 0, 'AC'),
(406, 406, 0, 0, 0, 'AC'),
(407, 407, 0, 0, 0, 'AC'),
(408, 408, 0, 0, 0, 'AC'),
(409, 409, 0, 0, 0, 'AC'),
(410, 410, 0, 0, 0, 'AC'),
(411, 411, 0, 0, 0, 'AC'),
(412, 412, 0, 0, 0, 'AC'),
(413, 413, 0, 0, 0, 'AC'),
(414, 414, 0, 0, 0, 'AC'),
(415, 415, 0, 0, 0, 'AC'),
(416, 416, 0, 0, 0, 'AC'),
(417, 417, 0, 0, 0, 'AC'),
(418, 418, 0, 0, 0, 'AC'),
(419, 419, 0, 0, 0, 'AC'),
(420, 420, 0, 0, 0, 'AC'),
(421, 421, 0, 0, 0, 'AC'),
(422, 422, 0, 0, 0, 'AC'),
(423, 423, 0, 0, 0, 'AC'),
(424, 424, 0, 0, 0, 'AC'),
(425, 425, 0, 0, 0, 'AC'),
(426, 426, 0, 0, 0, 'AC'),
(427, 427, 0, 0, 0, 'AC'),
(428, 428, 0, 0, 0, 'AC'),
(429, 429, 0, 0, 0, 'AC'),
(430, 430, 0, 0, 0, 'AC'),
(431, 431, 0, 0, 0, 'AC'),
(432, 432, 0, 0, 0, 'AC'),
(433, 433, 0, 0, 0, 'AC'),
(434, 434, 0, 0, 0, 'AC'),
(435, 435, 0, 0, 0, 'AC'),
(436, 436, 0, 0, 0, 'AC'),
(437, 437, 0, 0, 0, 'AC'),
(438, 438, 0, 0, 0, 'AC'),
(439, 439, 0, 0, 0, 'AC'),
(440, 440, 0, 0, 0, 'AC'),
(441, 441, 0, 0, 0, 'AC'),
(442, 442, 0, 0, 0, 'AC'),
(443, 443, 0, 0, 0, 'AC'),
(444, 444, 0, 0, 0, 'AC'),
(445, 445, 0, 0, 0, 'AC'),
(446, 446, 0, 0, 0, 'AC'),
(447, 447, 0, 0, 0, 'AC'),
(448, 448, 0, 0, 0, 'AC'),
(449, 449, 0, 0, 0, 'AC'),
(450, 450, 0, 0, 0, 'AC'),
(451, 451, 0, 0, 0, 'AC'),
(452, 452, 0, 0, 0, 'AC'),
(453, 453, 0, 0, 0, 'AC'),
(454, 454, 0, 0, 0, 'AC'),
(455, 455, 0, 0, 0, 'AC'),
(456, 456, 0, 0, 0, 'AC'),
(457, 457, 0, 0, 0, 'AC'),
(458, 458, 0, 0, 0, 'AC'),
(459, 459, 0, 0, 0, 'AC'),
(460, 460, 0, 0, 0, 'AC'),
(461, 461, 0, 0, 0, 'AC'),
(462, 462, 0, 0, 0, 'AC'),
(463, 463, 0, 0, 0, 'AC'),
(464, 464, 0, 0, 0, 'AC'),
(465, 465, 0, 0, 0, 'AC'),
(466, 466, 0, 0, 0, 'AC'),
(467, 467, 0, 0, 0, 'AC'),
(468, 468, 0, 0, 0, 'AC'),
(469, 469, 0, 0, 0, 'AC'),
(470, 470, 0, 0, 0, 'AC'),
(471, 471, 0, 0, 0, 'AC'),
(472, 472, 0, 0, 0, 'AC'),
(473, 473, 0, 0, 0, 'AC'),
(474, 474, 0, 0, 0, 'AC'),
(475, 475, 0, 0, 0, 'AC'),
(476, 476, 0, 0, 0, 'AC'),
(477, 477, 0, 0, 0, 'AC'),
(478, 478, 0, 0, 0, 'AC'),
(479, 479, 0, 0, 0, 'AC'),
(480, 480, 0, 0, 0, 'AC'),
(481, 481, 0, 0, 0, 'AC'),
(482, 482, 0, 0, 0, 'AC'),
(483, 483, 0, 0, 0, 'AC'),
(484, 484, 0, 0, 0, 'AC'),
(485, 485, 0, 0, 0, 'AC'),
(486, 486, 0, 0, 0, 'AC'),
(487, 487, 0, 0, 0, 'AC'),
(488, 488, 0, 0, 0, 'AC'),
(489, 489, 0, 0, 0, 'AC'),
(490, 490, 0, 0, 0, 'AC'),
(491, 491, 0, 0, 0, 'AC'),
(492, 492, 0, 0, 0, 'AC'),
(493, 493, 0, 0, 0, 'AC'),
(494, 494, 0, 0, 0, 'AC'),
(495, 495, 0, 0, 0, 'AC'),
(496, 496, 0, 0, 0, 'AC'),
(497, 497, 0, 0, 0, 'AC'),
(498, 498, 0, 0, 0, 'AC'),
(499, 499, 0, 0, 0, 'AC'),
(500, 500, 0, 0, 0, 'AC'),
(501, 501, 0, 0, 0, 'AC'),
(502, 502, 0, 0, 0, 'AC'),
(503, 503, 0, 0, 0, 'AC'),
(504, 504, 0, 0, 0, 'AC'),
(505, 505, 0, 0, 0, 'AC'),
(506, 506, 0, 0, 0, 'AC'),
(507, 507, 0, 0, 0, 'AC'),
(508, 508, 0, 0, 0, 'AC'),
(509, 509, 0, 0, 0, 'AC'),
(510, 510, 0, 0, 0, 'AC'),
(511, 511, 0, 0, 0, 'AC'),
(512, 512, 0, 0, 0, 'AC'),
(513, 513, 0, 0, 0, 'AC'),
(514, 514, 0, 0, 0, 'AC'),
(515, 515, 0, 0, 0, 'AC'),
(516, 516, 0, 0, 0, 'AC'),
(517, 517, 0, 0, 0, 'AC'),
(518, 518, 0, 0, 0, 'AC'),
(519, 519, 0, 0, 0, 'AC'),
(520, 520, 0, 0, 0, 'AC'),
(521, 521, 0, 0, 0, 'AC'),
(522, 522, 0, 0, 0, 'AC'),
(523, 523, 0, 0, 0, 'AC'),
(524, 524, 0, 0, 0, 'AC'),
(525, 525, 0, 0, 0, 'AC'),
(526, 526, 0, 0, 0, 'AC'),
(527, 527, 0, 0, 0, 'AC'),
(528, 528, 0, 0, 0, 'AC'),
(529, 529, 0, 0, 0, 'AC'),
(530, 530, 0, 0, 0, 'AC'),
(531, 531, 0, 0, 0, 'AC'),
(532, 532, 0, 0, 0, 'AC'),
(533, 533, 0, 0, 0, 'AC'),
(534, 534, 0, 0, 0, 'AC'),
(535, 535, 0, 0, 0, 'AC'),
(536, 536, 0, 0, 0, 'AC'),
(537, 537, 0, 0, 0, 'AC'),
(538, 538, 0, 0, 0, 'AC'),
(539, 539, 0, 0, 0, 'AC'),
(540, 540, 0, 0, 0, 'AC'),
(541, 541, 0, 0, 0, 'AC'),
(542, 542, 0, 0, 0, 'AC'),
(543, 543, 0, 0, 0, 'AC'),
(544, 544, 0, 0, 0, 'AC'),
(545, 545, 0, 0, 0, 'AC'),
(546, 546, 0, 0, 0, 'AC'),
(547, 547, 0, 0, 0, 'AC'),
(548, 548, 0, 0, 0, 'AC'),
(549, 549, 0, 0, 0, 'AC'),
(550, 550, 0, 0, 0, 'AC'),
(551, 551, 0, 0, 0, 'AC'),
(552, 552, 0, 0, 0, 'AC'),
(553, 553, 0, 0, 0, 'AC'),
(554, 554, 0, 0, 0, 'AC'),
(555, 555, 0, 0, 0, 'AC'),
(556, 556, 0, 0, 0, 'AC'),
(557, 557, 0, 0, 0, 'AC'),
(558, 558, 0, 0, 0, 'AC'),
(559, 559, 0, 0, 0, 'AC'),
(560, 560, 0, 0, 0, 'AC'),
(561, 561, 0, 0, 0, 'AC'),
(562, 562, 0, 0, 0, 'AC'),
(563, 563, 0, 0, 0, 'AC'),
(564, 564, 0, 0, 0, 'AC'),
(565, 565, 0, 0, 0, 'AC'),
(566, 566, 0, 0, 0, 'AC'),
(567, 567, 0, 0, 0, 'AC'),
(568, 568, 0, 0, 0, 'AC'),
(569, 569, 0, 0, 0, 'AC'),
(570, 570, 0, 0, 0, 'AC'),
(571, 571, 0, 0, 0, 'AC'),
(572, 572, 0, 0, 0, 'AC'),
(573, 573, 0, 0, 0, 'AC'),
(574, 574, 0, 0, 0, 'AC'),
(575, 575, 0, 0, 0, 'AC'),
(576, 576, 0, 0, 0, 'AC'),
(577, 577, 0, 0, 0, 'AC'),
(578, 578, 0, 0, 0, 'AC'),
(579, 579, 0, 0, 0, 'AC'),
(580, 580, 0, 0, 0, 'AC'),
(581, 581, 0, 0, 0, 'AC'),
(582, 582, 0, 0, 0, 'AC'),
(583, 583, 0, 0, 0, 'AC'),
(584, 584, 0, 0, 0, 'AC'),
(585, 585, 0, 0, 0, 'AC'),
(586, 586, 0, 0, 0, 'AC'),
(587, 587, 0, 0, 0, 'AC'),
(588, 588, 0, 0, 0, 'AC'),
(589, 589, 0, 0, 0, 'AC'),
(590, 590, 0, 0, 0, 'AC'),
(591, 591, 0, 0, 0, 'AC'),
(592, 592, 0, 0, 0, 'AC'),
(593, 593, 0, 0, 0, 'AC'),
(594, 594, 0, 0, 0, 'AC'),
(595, 595, 0, 0, 0, 'AC'),
(596, 596, 0, 0, 0, 'AC'),
(597, 597, 0, 0, 0, 'AC'),
(598, 598, 0, 0, 0, 'AC'),
(599, 599, 0, 0, 0, 'AC'),
(600, 600, 0, 0, 0, 'AC'),
(601, 601, 0, 0, 0, 'AC'),
(602, 602, 0, 0, 0, 'AC'),
(603, 603, 0, 0, 0, 'AC'),
(604, 604, 0, 0, 0, 'AC'),
(605, 605, 0, 0, 0, 'AC'),
(606, 606, 0, 0, 0, 'AC'),
(607, 607, 0, 0, 0, 'AC'),
(608, 608, 0, 0, 0, 'AC'),
(609, 609, 0, 0, 0, 'AC'),
(610, 610, 0, 0, 0, 'AC'),
(611, 611, 0, 0, 0, 'AC'),
(612, 612, 0, 0, 0, 'AC'),
(613, 613, 0, 0, 0, 'AC'),
(614, 614, 0, 0, 0, 'AC'),
(615, 615, 0, 0, 0, 'AC'),
(616, 616, 0, 0, 0, 'AC'),
(617, 617, 0, 0, 0, 'AC'),
(618, 618, 0, 0, 0, 'AC'),
(619, 619, 0, 0, 0, 'AC'),
(620, 620, 0, 0, 0, 'AC'),
(621, 621, 0, 0, 0, 'AC'),
(622, 622, 0, 0, 0, 'AC'),
(623, 623, 0, 0, 0, 'AC'),
(624, 624, 0, 0, 0, 'AC'),
(625, 625, 0, 0, 0, 'AC'),
(626, 626, 0, 0, 0, 'AC'),
(627, 627, 0, 0, 0, 'AC'),
(628, 628, 0, 0, 0, 'AC'),
(629, 629, 0, 0, 0, 'AC'),
(630, 630, 0, 0, 0, 'AC'),
(631, 631, 0, 0, 0, 'AC'),
(632, 632, 0, 0, 0, 'AC'),
(633, 633, 0, 0, 0, 'AC'),
(634, 634, 0, 0, 0, 'AC'),
(635, 635, 0, 0, 0, 'AC'),
(636, 636, 0, 0, 0, 'AC'),
(637, 637, 0, 0, 0, 'AC'),
(638, 638, 0, 0, 0, 'AC'),
(639, 639, 0, 0, 0, 'AC'),
(640, 640, 0, 0, 0, 'AC'),
(641, 641, 0, 0, 0, 'AC'),
(642, 642, 0, 0, 0, 'AC'),
(643, 643, 0, 0, 0, 'AC'),
(644, 644, 0, 0, 0, 'AC'),
(645, 645, 0, 0, 0, 'AC'),
(646, 646, 0, 0, 0, 'AC'),
(647, 647, 0, 0, 0, 'AC'),
(648, 648, 0, 0, 0, 'AC'),
(649, 649, 0, 0, 0, 'AC'),
(650, 650, 0, 0, 0, 'AC'),
(651, 651, 0, 0, 0, 'AC'),
(652, 652, 0, 0, 0, 'AC'),
(653, 653, 0, 0, 0, 'AC'),
(654, 654, 0, 0, 0, 'AC'),
(655, 655, 0, 0, 0, 'AC'),
(656, 656, 0, 0, 0, 'AC'),
(657, 657, 0, 0, 0, 'AC'),
(658, 658, 0, 0, 0, 'AC'),
(659, 659, 0, 0, 0, 'AC'),
(660, 660, 0, 0, 0, 'AC'),
(661, 661, 0, 0, 0, 'AC'),
(662, 662, 0, 0, 0, 'AC'),
(663, 663, 0, 0, 0, 'AC'),
(664, 664, 0, 0, 0, 'AC'),
(665, 665, 0, 0, 0, 'AC'),
(666, 666, 0, 0, 0, 'AC'),
(667, 667, 0, 0, 0, 'AC'),
(668, 668, 0, 0, 0, 'AC'),
(669, 669, 0, 0, 0, 'AC'),
(670, 670, 0, 0, 0, 'AC'),
(671, 671, 0, 0, 0, 'AC'),
(672, 672, 0, 0, 0, 'AC'),
(673, 673, 0, 0, 0, 'AC'),
(674, 674, 0, 0, 0, 'AC'),
(675, 675, 0, 0, 0, 'AC'),
(676, 676, 0, 0, 0, 'AC'),
(677, 677, 0, 0, 0, 'AC'),
(678, 678, 0, 0, 0, 'AC'),
(679, 679, 0, 0, 0, 'AC'),
(680, 680, 0, 0, 0, 'AC'),
(681, 681, 0, 0, 0, 'AC'),
(682, 682, 0, 0, 0, 'AC'),
(683, 683, 0, 0, 0, 'AC'),
(684, 684, 0, 0, 0, 'AC'),
(685, 685, 0, 0, 0, 'AC'),
(686, 686, 0, 0, 0, 'AC'),
(687, 687, 0, 0, 0, 'AC'),
(688, 688, 0, 0, 0, 'AC'),
(689, 689, 0, 0, 0, 'AC'),
(690, 690, 0, 0, 0, 'AC'),
(691, 691, 0, 0, 0, 'AC'),
(692, 692, 0, 0, 0, 'AC'),
(693, 693, 0, 0, 0, 'AC'),
(694, 694, 0, 0, 0, 'AC'),
(695, 695, 0, 0, 0, 'AC'),
(696, 696, 0, 0, 0, 'AC'),
(697, 697, 0, 0, 0, 'AC'),
(698, 698, 0, 0, 0, 'AC'),
(699, 699, 0, 0, 0, 'AC'),
(700, 700, 0, 0, 0, 'AC'),
(701, 701, 0, 0, 0, 'AC'),
(702, 702, 0, 0, 0, 'AC'),
(703, 703, 0, 0, 0, 'AC'),
(704, 704, 0, 0, 0, 'AC'),
(705, 705, 0, 0, 0, 'AC'),
(706, 706, 0, 0, 0, 'AC'),
(707, 707, 0, 0, 0, 'AC'),
(708, 708, 0, 0, 0, 'AC'),
(709, 709, 0, 0, 0, 'AC'),
(710, 710, 0, 0, 0, 'AC'),
(711, 711, 0, 0, 0, 'AC'),
(712, 712, 0, 0, 0, 'AC'),
(713, 713, 0, 0, 0, 'AC'),
(714, 714, 0, 0, 0, 'AC'),
(715, 715, 0, 0, 0, 'AC'),
(716, 716, 0, 0, 0, 'AC'),
(717, 717, 0, 0, 0, 'AC'),
(718, 718, 0, 0, 0, 'AC'),
(719, 719, 0, 0, 0, 'AC'),
(720, 720, 0, 0, 0, 'AC'),
(721, 721, 0, 0, 0, 'AC'),
(722, 722, 0, 0, 0, 'AC'),
(723, 723, 0, 0, 0, 'AC'),
(724, 724, 0, 0, 0, 'AC'),
(725, 725, 0, 0, 0, 'AC'),
(726, 726, 0, 0, 0, 'AC'),
(727, 727, 0, 0, 0, 'AC'),
(728, 728, 0, 0, 0, 'AC'),
(729, 729, 0, 0, 0, 'AC'),
(730, 730, 0, 0, 0, 'AC'),
(731, 731, 0, 0, 0, 'AC'),
(732, 732, 0, 0, 0, 'AC'),
(733, 733, 0, 0, 0, 'AC'),
(734, 734, 0, 0, 0, 'AC'),
(735, 735, 0, 0, 0, 'AC'),
(736, 736, 0, 0, 0, 'AC'),
(737, 737, 0, 0, 0, 'AC'),
(738, 738, 0, 0, 0, 'AC'),
(739, 739, 0, 0, 0, 'AC'),
(740, 740, 0, 0, 0, 'AC'),
(741, 741, 0, 0, 0, 'AC'),
(742, 742, 0, 0, 0, 'AC'),
(743, 743, 0, 0, 0, 'AC'),
(744, 744, 0, 0, 0, 'AC'),
(745, 745, 0, 0, 0, 'AC'),
(746, 746, 0, 0, 0, 'AC'),
(747, 747, 0, 0, 0, 'AC'),
(748, 748, 0, 0, 0, 'AC'),
(749, 749, 0, 0, 0, 'AC'),
(750, 750, 0, 0, 0, 'AC'),
(751, 751, 0, 0, 0, 'AC'),
(752, 752, 0, 0, 0, 'AC'),
(753, 753, 0, 0, 0, 'AC'),
(754, 754, 0, 0, 0, 'AC'),
(755, 755, 0, 0, 0, 'AC'),
(756, 756, 0, 0, 0, 'AC'),
(757, 757, 0, 0, 0, 'AC'),
(758, 758, 0, 0, 0, 'AC'),
(759, 759, 0, 0, 0, 'AC'),
(760, 760, 0, 0, 0, 'AC'),
(761, 761, 0, 0, 0, 'AC'),
(762, 762, 0, 0, 0, 'AC'),
(763, 763, 0, 0, 0, 'AC'),
(764, 764, 0, 0, 0, 'AC'),
(765, 765, 0, 0, 0, 'AC'),
(766, 766, 0, 0, 0, 'AC'),
(767, 767, 0, 0, 0, 'AC'),
(768, 768, 0, 0, 0, 'AC'),
(769, 769, 0, 0, 0, 'AC'),
(770, 770, 0, 0, 0, 'AC'),
(771, 771, 0, 0, 0, 'AC'),
(772, 772, 0, 0, 0, 'AC'),
(773, 773, 0, 0, 0, 'AC'),
(774, 774, 0, 0, 0, 'AC'),
(775, 775, 0, 0, 0, 'AC'),
(776, 776, 0, 0, 0, 'AC'),
(777, 777, 0, 0, 0, 'AC'),
(778, 778, 0, 0, 0, 'AC'),
(779, 779, 0, 0, 0, 'AC'),
(780, 780, 0, 0, 0, 'AC'),
(781, 781, 0, 0, 0, 'AC'),
(782, 782, 0, 0, 0, 'AC'),
(783, 783, 0, 0, 0, 'AC'),
(784, 784, 0, 0, 0, 'AC'),
(785, 785, 0, 0, 0, 'AC'),
(786, 786, 0, 0, 0, 'AC'),
(787, 787, 0, 0, 0, 'AC'),
(788, 788, 0, 0, 0, 'AC'),
(789, 789, 0, 0, 0, 'AC'),
(790, 790, 0, 0, 0, 'AC'),
(791, 791, 0, 0, 0, 'AC'),
(792, 792, 0, 0, 0, 'AC'),
(793, 793, 0, 0, 0, 'AC'),
(794, 794, 0, 0, 0, 'AC'),
(795, 795, 0, 0, 0, 'AC'),
(796, 796, 0, 0, 0, 'AC'),
(797, 797, 0, 0, 0, 'AC'),
(798, 798, 0, 0, 0, 'AC'),
(799, 799, 0, 0, 0, 'AC'),
(800, 800, 0, 0, 0, 'AC'),
(801, 801, 0, 0, 0, 'AC'),
(802, 802, 0, 0, 0, 'AC'),
(803, 803, 0, 0, 0, 'AC'),
(804, 804, 0, 0, 0, 'AC'),
(805, 805, 0, 0, 0, 'AC'),
(806, 806, 0, 0, 0, 'AC'),
(807, 807, 0, 0, 0, 'AC'),
(808, 808, 0, 0, 0, 'AC'),
(809, 809, 0, 0, 0, 'AC'),
(810, 810, 0, 0, 0, 'AC'),
(811, 811, 0, 0, 0, 'AC'),
(812, 812, 0, 0, 0, 'AC'),
(813, 813, 20, 2.8, 4.2, 'AC'),
(814, 814, 0, 0, 0, 'AC'),
(815, 815, 0, 0, 0, 'AC'),
(816, 816, 0, 0, 0, 'AC'),
(817, 817, 0, 0, 0, 'AC'),
(818, 818, 0, 0, 0, 'AC'),
(819, 819, 0, 0, 0, 'AC'),
(820, 820, 0, 0, 0, 'AC'),
(821, 821, 0, 0, 0, 'AC'),
(822, 822, 0, 0, 0, 'AC'),
(823, 823, 0, 0, 0, 'AC'),
(824, 824, 0, 0, 0, 'AC'),
(825, 825, 0, 0, 0, 'AC'),
(826, 826, 0, 0, 0, 'AC'),
(827, 827, 0, 0, 0, 'AC'),
(828, 828, 0, 0, 0, 'AC'),
(829, 829, 0, 0, 0, 'AC'),
(830, 830, 0, 0, 0, 'AC'),
(831, 831, 0, 0, 0, 'AC'),
(832, 832, 0, 0, 0, 'AC'),
(833, 833, 0, 0, 0, 'AC'),
(834, 834, 0, 0, 0, 'AC'),
(835, 835, 0, 0, 0, 'AC'),
(836, 836, 0, 0, 0, 'AC'),
(837, 837, 0, 0, 0, 'AC'),
(838, 838, 0, 0, 0, 'AC'),
(839, 839, 0, 0, 0, 'AC'),
(840, 840, 0, 0, 0, 'AC'),
(841, 841, 0, 0, 0, 'AC'),
(842, 842, 0, 0, 0, 'AC'),
(843, 843, 0, 0, 0, 'AC'),
(844, 844, 0, 0, 0, 'AC'),
(845, 845, 0, 0, 0, 'AC'),
(846, 846, 0, 0, 0, 'AC'),
(847, 847, 0, 0, 0, 'AC'),
(848, 848, 0, 0, 0, 'AC'),
(849, 849, 0, 0, 0, 'AC'),
(850, 850, 0, 0, 0, 'AC'),
(851, 851, 0, 0, 0, 'AC'),
(852, 852, 0, 0, 0, 'AC'),
(853, 853, 0, 0, 0, 'AC'),
(854, 854, 0, 0, 0, 'AC'),
(855, 855, 0, 0, 0, 'AC'),
(856, 856, 0, 0, 0, 'AC'),
(857, 857, 0, 0, 0, 'AC'),
(858, 858, 0, 0, 0, 'AC'),
(859, 859, 0, 0, 0, 'AC'),
(860, 860, 0, 0, 0, 'AC'),
(861, 861, 0, 0, 0, 'AC'),
(862, 862, 0, 25, 32, 'AC'),
(863, 863, 0, 0, 0, 'AC'),
(864, 864, 0, 0, 0, 'AC'),
(865, 865, 0, 0, 0, 'AC'),
(866, 866, 0, 0, 0, 'AC'),
(867, 867, 0, 0, 0, 'AC'),
(868, 868, 0, 0, 0, 'AC'),
(869, 869, 0, 0, 0, 'AC'),
(870, 870, 0, 0, 0, 'AC'),
(871, 871, 0, 0, 0, 'AC'),
(872, 872, 0, 0, 0, 'AC'),
(873, 873, 0, 0, 0, 'AC'),
(874, 874, 0, 0, 0, 'AC'),
(875, 875, 0, 0, 0, 'AC'),
(876, 876, 0, 0, 0, 'AC'),
(877, 877, 0, 0, 0, 'AC'),
(878, 878, 0, 0, 0, 'AC'),
(879, 879, 0, 0, 0, 'AC'),
(880, 880, 0, 0, 0, 'AC'),
(881, 881, 0, 0, 0, 'AC'),
(882, 882, 0, 0, 0, 'AC'),
(883, 883, 0, 0, 0, 'AC'),
(884, 884, 0, 0, 0, 'AC'),
(885, 885, 0, 0, 0, 'AC'),
(886, 886, 0, 0, 0, 'AC'),
(887, 887, 0, 0, 0, 'AC'),
(888, 888, 0, 0, 0, 'AC'),
(889, 889, 0, 0, 0, 'AC'),
(890, 890, 0, 0, 0, 'AC'),
(891, 891, 0, 0, 0, 'AC'),
(892, 892, 0, 0, 0, 'AC'),
(893, 893, 0, 0, 0, 'AC'),
(894, 894, 0, 0, 0, 'AC'),
(895, 895, 0, 0, 0, 'AC'),
(896, 896, 0, 0, 0, 'AC'),
(897, 897, 0, 0, 0, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_valorizaciones`
--

CREATE TABLE `ve_valorizaciones` (
  `id` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `puntos` float NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ve_ventas` (
  `id` int(11) NOT NULL,
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
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipoventa` int(11) NOT NULL DEFAULT 1,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ve_ventas`
--

INSERT INTO `ve_ventas` (`id`, `codad_empresa`, `idad_usuario`, `idve_cliente`, `idve_producto`, `idve_porcentaje`, `numero_venta`, `compra`, `precio`, `cantidad`, `total`, `fecha`, `fecha_hora`, `tipoventa`, `estado`) VALUES
(1, 2, 11, 1, 7, 33, 1, 108, 120.3, 1, 120.3, '0000-00-00', '2020-08-07 00:02:33', 0, 'AC'),
(2, 2, 11, 1, 2, 10, 2, 214.2, 400, 5, 2000, '2020-04-18', '2020-08-07 00:02:33', 0, 'AC'),
(3, 2, 11, 1, 2, 10, 3, 214.2, 400, 1, 400, '0000-00-00', '2020-08-07 00:02:33', 0, 'AC'),
(4, 2, 11, 1, 8, 40, 3, 226, 405, 1, 405, '0000-00-00', '2020-08-07 00:02:33', 0, 'AC'),
(5, 2, 11, 1, 10, 50, 4, 75, 145, 1, 145, '0000-00-00', '2020-08-07 00:02:33', 0, 'AC'),
(6, 2, 11, 1, 5, 25, 5, 151.3, 280, 1, 280, '0000-00-00', '2020-08-07 00:02:33', 0, 'AC'),
(7, 2, 11, 1, 6, 30, 6, 73.2, 140, 1, 140, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(8, 2, 11, 1, 1, 5, 7, 162, 300, 2, 600, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(9, 2, 11, 1, 2, 10, 7, 214.2, 400, 1, 400, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(10, 2, 11, 1, 3, 15, 7, 162, 300, 1, 300, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(11, 2, 11, 1, 3, 15, 8, 162, 300, 1, 300, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(12, 2, 11, 1, 4, 20, 9, 131.5, 250, 3, 750, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(13, 2, 11, 1, 5, 25, 9, 151.3, 280, 2, 560, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(14, 2, 11, 1, 6, 30, 9, 73.2, 140, 4, 560, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(15, 2, 11, 1, 7, 35, 9, 108, 200, 5, 1000, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(16, 2, 11, 1, 8, 40, 9, 226, 405, 4, 1620, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(17, 2, 11, 1, 9, 45, 9, 129.2, 250, 6, 1500, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(18, 2, 11, 1, 10, 50, 9, 75, 145, 5, 725, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(19, 2, 11, 1, 11, 55, 9, 183, 320, 4, 1280, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(20, 2, 11, 1, 12, 60, 9, 189, 335, 4, 1340, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(21, 2, 11, 1, 13, 65, 9, 168, 310, 2, 620, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(22, 2, 11, 1, 14, 70, 9, 379, 630, 1, 630, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(23, 2, 11, 1, 15, 75, 9, 166.3, 250, 3, 750, '2019-09-25', '2020-08-07 00:02:33', 0, 'AC'),
(24, 3, 13, 1, 19, 0, 1, 2.5, 3.7, 1, 3.7, '2019-09-26', '2020-08-07 00:02:33', 0, 'AC'),
(25, 2, 11, 1, 1, 5, 10, 162, 300, 1, 300, '2019-09-29', '2020-08-07 00:02:33', 0, 'AC'),
(26, 2, 11, 1, 3, 15, 11, 162, 300, 1, 300, '2019-09-29', '2020-08-07 00:02:33', 0, 'AC'),
(27, 2, 11, 1, 1, 5, 12, 162, 310, 1, 310, '2020-04-05', '2020-08-07 00:02:33', 0, 'AC'),
(28, 3, 13, 1, 43, 0, 2, 3, 4.2, 1, 4.2, '2020-04-05', '2020-08-07 00:02:33', 0, 'AC'),
(29, 2, 11, 1, 3, 15, 13, 162, 310, 1, 310, '2020-04-10', '2020-08-07 00:02:33', 0, 'AC'),
(30, 2, 11, 1, 1, 5, 14, 162, 310, 1, 310, '2020-04-11', '2020-08-07 00:02:33', 0, 'AC'),
(31, 2, 11, 1, 1, 5, 15, 166, 310, 12, 3720, '2020-04-11', '2020-08-07 00:02:33', 0, 'AC'),
(32, 3, 13, 1, 862, 0, 3, 25, 32, 1, 32, '2020-04-12', '2020-08-07 00:02:33', 0, 'AC'),
(33, 3, 13, 1, 16, 0, 4, 2, 6, 1, 6, '2020-08-06', '2020-08-07 00:02:33', 0, 'AC'),
(34, 3, 13, 1, 19, 0, 4, 2.5, 5, 2, 10, '2020-08-06', '2020-08-07 00:02:33', 0, 'AC'),
(35, 3, 13, 1, 20, 0, 4, 3, 5, 5, 25, '2020-08-06', '2020-08-07 00:02:33', 0, 'AC'),
(36, 3, 13, 0, 862, 0, 5, 25, 32, 2, 64, '2020-08-06', '2020-08-07 02:12:14', 0, 'AC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ve_venta_prestamos`
--

CREATE TABLE `ve_venta_prestamos` (
  `id` int(11) NOT NULL,
  `idve_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ad_acciones`
--
ALTER TABLE `ad_acciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_aplicaciones`
--
ALTER TABLE `ad_aplicaciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_configuraciones_empresas`
--
ALTER TABLE `ad_configuraciones_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ad_empresas`
--
ALTER TABLE `ad_empresas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_logs`
--
ALTER TABLE `ad_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ad_modulos`
--
ALTER TABLE `ad_modulos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_opciones`
--
ALTER TABLE `ad_opciones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ad_opciones_usuarios`
--
ALTER TABLE `ad_opciones_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ad_usuarios`
--
ALTER TABLE `ad_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_acumulador_almacen`
--
ALTER TABLE `ve_acumulador_almacen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_acumulador_venta`
--
ALTER TABLE `ve_acumulador_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_almacenes`
--
ALTER TABLE `ve_almacenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_castigos`
--
ALTER TABLE `ve_castigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_clientes`
--
ALTER TABLE `ve_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_devoluciones`
--
ALTER TABLE `ve_devoluciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_ingreso_prestamos`
--
ALTER TABLE `ve_ingreso_prestamos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_linea_producto`
--
ALTER TABLE `ve_linea_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_precios_actualizados`
--
ALTER TABLE `ve_precios_actualizados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_precios_porcentajes`
--
ALTER TABLE `ve_precios_porcentajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_productos`
--
ALTER TABLE `ve_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_proveedores`
--
ALTER TABLE `ve_proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_totales`
--
ALTER TABLE `ve_totales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_valorizaciones`
--
ALTER TABLE `ve_valorizaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_ventas`
--
ALTER TABLE `ve_ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ve_venta_prestamos`
--
ALTER TABLE `ve_venta_prestamos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ad_acciones`
--
ALTER TABLE `ad_acciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ad_aplicaciones`
--
ALTER TABLE `ad_aplicaciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ad_configuraciones_empresas`
--
ALTER TABLE `ad_configuraciones_empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `ad_empresas`
--
ALTER TABLE `ad_empresas`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ad_logs`
--
ALTER TABLE `ad_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ad_modulos`
--
ALTER TABLE `ad_modulos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `ad_opciones`
--
ALTER TABLE `ad_opciones`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `ad_opciones_usuarios`
--
ALTER TABLE `ad_opciones_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `ad_usuarios`
--
ALTER TABLE `ad_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ve_acumulador_almacen`
--
ALTER TABLE `ve_acumulador_almacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ve_acumulador_venta`
--
ALTER TABLE `ve_acumulador_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ve_almacenes`
--
ALTER TABLE `ve_almacenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `ve_castigos`
--
ALTER TABLE `ve_castigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ve_clientes`
--
ALTER TABLE `ve_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ve_devoluciones`
--
ALTER TABLE `ve_devoluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ve_ingreso_prestamos`
--
ALTER TABLE `ve_ingreso_prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ve_linea_producto`
--
ALTER TABLE `ve_linea_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `ve_precios_actualizados`
--
ALTER TABLE `ve_precios_actualizados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `ve_precios_porcentajes`
--
ALTER TABLE `ve_precios_porcentajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `ve_productos`
--
ALTER TABLE `ve_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT de la tabla `ve_proveedores`
--
ALTER TABLE `ve_proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ve_totales`
--
ALTER TABLE `ve_totales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT de la tabla `ve_valorizaciones`
--
ALTER TABLE `ve_valorizaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ve_ventas`
--
ALTER TABLE `ve_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `ve_venta_prestamos`
--
ALTER TABLE `ve_venta_prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
