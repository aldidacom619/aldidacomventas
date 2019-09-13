
INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(15, 10, 15, 11, 'AC'),
(16, 10, 16, 11, 'AC'),
(17, 10, 17, 11, 'AC'),
(18, 10, 18, 11, 'AC'),
(19, 10, 19, 11, 'AC'),
(20, 10, 20, 11, 'AC'),
(21, 10, 21, 11, 'AC');



INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(30, 10, 31, 11, 'AC');




INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(22, 10, 26, 11, 'AC'),
(23, 10, 27, 11, 'AC'),
(24, 10, 28, 11, 'AC'),
(25, 10, 29, 11, 'AC');


INSERT INTO `ad_opciones` (`codigo`, `codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(30, 16, 26, 'REIMPRESION COMPROBANTES', '', 'Reportes_otros/reimpresioncomprobante', 2, 4, 'AC');

Reportes_otros/reimpresioncomprobante



INSERT INTO `ad_opciones` (`codigo`, `codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(22, 14, 21, 'CONTROL CUENTAS', '', '', 1, 0, 'AC'),
(23, 14, 21, 'REGISTRO CUENTAS', '', 'DDDDDD', 2, 1, 'AC'),
(24, 14, 21, 'MODIFICACION CUENTAS', '', 'DDDDDD', 2, 2, 'AC'),
(25, 14, 21, 'BAJA CUENTAS', '', 'DDDDDD', 2, 3, 'AC');




INSERT INTO `ad_opciones` (`codigo`, `codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(15, 15, 15, 'REGISTRO CONTABLE', '', '', 1, 0, 'AC'),
(16, 15, 15, 'REGISTRO INGRESOS', '', 'DDDDDD', 2, 1, 'AC'),
(17, 15, 15, 'MODIFICACION INGRESOS', '', 'DDDDDD', 2, 2, 'AC'),
(18, 15, 15, 'REGISTRO EGRESOS', '', 'DDDDDD', 2, 3, 'AC'),
(19, 15, 15, 'MODIFICACION EGRESOS', '', 'DDDDDD', 2, 4, 'AC'),
(20, 15, 15, 'BORAR INGRESOS', '', 'DDDDDD', 2, 6, 'AC'),
(21, 15, 15, 'BORRAR EGRESOS', '', 'DDDDDD', 2, 7, 'AC');




CREATE TABLE IF NOT EXISTS `cb_cuentas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codcb_cuenta` int(11) DEFAULT NULL,
  `denominacion_cuenta` varchar(100) NOT NULL,
  `descripcion_cuenta` varchar(200) NOT NULL,  
  `nivel` int(11) NOT NULL,  
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) 





INSERT INTO `cb_cuentas` (`codad_entidad`,`codcb_cuenta`, `denominacion_cuenta`, `descripcion_cuenta`, `nivel`, `estado`) VALUES
(2,0, 'CUENTA 3', 'CUENTA 3', '0', 'AC'),
(2,0, 'CUENTA 4', 'CUENTA 4', '0', 'AC');



INSERT INTO `ad_usuarios` (`id`, `codad_entidad`, `codad_aplicacion`, `nombres`, `apellidos`, `nro_documento`, `tipo_documento`, `idad_logs`, `direccion`, `tel_cel`, `fecha_nacimiento`, `correo`, `cargo`, `login`, `clave`, `tipo_user`, `estado`) VALUES
(9, 2, 9, 'ORLANDO', 'QUISPE ARCANI', '1234567', 'CI', 10, 'EL ALTO', '78720504', '1985-11-09', 'orlando@gmail.com', 'GERENTE', 'ADMORLANDO.DSP', '952c4c39d5460b647fa9f7f4cf36fb13', 'ADMINISTRADOR', 'AC');



INSERT INTO `ad_usuarios` (`id`, `codad_entidad`, `codad_aplicacion`, `nombres`, `apellidos`, `nro_documento`, `tipo_documento`, `idad_logs`, `direccion`, `tel_cel`, `fecha_nacimiento`, `correo`, `cargo`, `login`, `clave`, `tipo_user`, `estado`) VALUES
(10, 2, 9, 'ORLANDO', 'QUISPE ARCANI', '1234567', 'CI', 10, 'EL ALTO', '78720504', '1985-11-09', 'orlando@gmail.com', 'TECNICO CONTABLE', 'OQUISPE.DSP', '952c4c39d5460b647fa9f7f4cf36fb13', 'TECNICO', 'AC');





INSERT INTO `ad_modulos` (`codad_aplicacion`, `descripcion`, `abreviatura`, `nombre`, `estado`) VALUES
(9, 'PRODUCTOS', 'PROD', 'PRODUCTOS', 'AC'),
(9, 'PROVEEDORES', 'PRO', 'PROVEEDORES', 'AC'),
(9, 'REPORTES', 'REP', 'REPORTES', 'AC'),
(9, 'VENTAS', 'VET', 'VENTAS', 'AC');



--opcion nivel uno

INSERT INTO `ad_opciones` (`codad_modulo`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(20, 'VENTAS', '', '',1 , 1, 'AC'),
(17, 'PRODUCTOS', '', '',1 , 1, 'AC'),
(18, 'PROVEEDORES', '', '',1 , 1, 'AC'),
(19, 'REPORTES', '', '',1 , 1, 'AC'),
(22, 'CLIENTES', '', '',1 , 1, 'AC'),
(21, 'ALMACEN', '', '',1 , 1, 'AC');


--opcion nivel dos

--PRODUCTOS
INSERT INTO `ad_opciones` (`codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(17, 31, 'DETALLE PRODUCTO', '', '', 2, 1, 'AC'),
(17, 31, 'REGISTRAR PRODUCTO', '', '', 2, 2, 'AC'),
(17, 31, 'CAMBIAR PRECIO', '', '', 2, 3, 'AC'),
(17, 31, 'VALORIZACION PRODUCTO', '', '', 2, 4, 'AC'),
(17, 31, 'MODIFICAR PRODUCTO', '', '', 2, 5, 'AC'),
(17, 31, 'BAJA PRODUCTO', '', '', 2, 6, 'AC');



--ALMACEN
INSERT INTO `ad_opciones` (`codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(21, 34, 'DETALLE ALMACEN', '', '', 2, 1, 'AC'),
(21, 34, 'ACTUALIZAR ALMACEN', '', '', 2, 2, 'AC');


--VENTAS
INSERT INTO `ad_opciones` (`codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(20, 30, 'REGISTRAR VENTA', '', '', 2, 1, 'AC'),
(20, 30, 'REGISTRAR DEVOLUCION', '', '', 2, 2, 'AC');



--PROVEEDORES
INSERT INTO `ad_opciones` (`codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(18, 32, 'LISTA PROVEEDORES', '', '', 2, 1, 'AC');


--REPORTES
INSERT INTO `ad_opciones` (`codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(18, 33, 'STOCK PRODUCTOS', '', '', 2, 1, 'AC'),
(18, 33, 'REPORTES DE VENTAS', '', '', 2, 2, 'AC'),
(18, 33, 'REPORTE POR CANTIDAD', '', '', 2, 3, 'AC'),
(18, 33, 'VENTA POR CLIENTE', '', '', 2, 4, 'AC'),
(18, 33, 'INGRESO A PRESTAMO', '', '', 2, 5, 'AC'),
(18, 33, 'VENTA A PRESTAMO', '', '', 2, 6, 'AC');



---CLIENTES
INSERT INTO `ad_opciones` (`codad_modulo`, `codad_opcion`, `opcion`, `descripcion`, `link`, `nivel`, `orden`, `estado`) VALUES
(55, 55, 'LISTA CLIENTES', '', '', 2, 1, 'AC');



INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(15, 10, 15, 11, 'AC'),
(16, 10, 16, 11, 'AC'),
(17, 10, 17, 11, 'AC'),
(18, 10, 18, 11, 'AC'),
(19, 10, 19, 11, 'AC'),
(20, 10, 20, 11, 'AC'),
(21, 10, 21, 11, 'AC');



INSERT INTO `ad_opciones_usuarios` (`id`, `idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(30, 10, 31, 11, 'AC');



---LETY
INSERT INTO `ad_opciones_usuarios` (`idad_usuario`, `codad_opcion`, `idad_logs`, `estado`) VALUES
(11, 30, 11, 'AC'),
(11, 31, 11, 'AC'),
(11, 33, 11, 'AC'),
(11, 34, 11, 'AC'),
(11, 35, 11, 'AC'),
(11, 36, 11, 'AC'),
(11, 37, 11, 'AC'),
(11, 38, 11, 'AC'),
(11, 39, 11, 'AC'),
(11, 40, 11, 'AC'),
(11, 41, 11, 'AC'),
(11, 42, 11, 'AC'),
(11, 43, 11, 'AC'),
(11, 44, 11, 'AC'),
(11, 45, 11, 'AC'),
(11, 46, 11, 'AC'),
(11, 48, 11, 'AC'),
(11, 49, 11, 'AC'),
(11, 50, 11, 'AC'),
(11, 51, 11, 'AC'),
(11, 52, 11, 'AC'),
(11, 53, 11, 'AC'),
(11, 54, 11, 'AC'),
(11, 55, 11, 'AC'),
(11, 56, 11, 'AC');