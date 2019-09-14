CREATE TABLE IF NOT EXISTS `ad_acciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;



CREATE TABLE IF NOT EXISTS `ad_aplicaciones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;




CREATE TABLE IF NOT EXISTS `ad_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_accion` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;




CREATE TABLE IF NOT EXISTS `ad_opciones_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idad_usuario` int(11) DEFAULT NULL,
  `codad_opcion` int(11) DEFAULT NULL,
  `idad_logs` int(11) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;


CREATE TABLE IF NOT EXISTS `ad_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;




CREATE TABLE IF NOT EXISTS `ad_modulos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codad_aplicacion` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `abreviatura` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

CREATE TABLE IF NOT EXISTS `ad_empresas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `abreviatura` varchar(100) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `descripcion_entidad` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
)


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
)


-------------------- tablas de contabilidad-----------------------

CREATE TABLE IF NOT EXISTS `cb_cuentas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codcb_cuenta` int(11) DEFAULT NULL,
  `denominacion_cuenta` varchar(100) NOT NULL,
  `descripcion_cuenta` varchar(200) NOT NULL,  
  `nivel` int(11) NOT NULL,  
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
) 



CREATE TABLE IF NOT EXISTS `cb_cuentas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codcb_cuenta` int(11) DEFAULT NULL,
  `denominacion_cuenta` varchar(100) NOT NULL,
  `descripcion_cuenta` varchar(200) NOT NULL,  
  `nivel` int(11) NOT NULL,  
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
)




CREATE TABLE IF NOT EXISTS `cb_cuentas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codcb_cuenta` int(11) DEFAULT NULL,
  `denominacion_cuenta` varchar(100) NOT NULL,
  `descripcion_cuenta` varchar(200) NOT NULL,  
  `nivel` int(11) NOT NULL,  
  `estado` varchar(250) NOT NULL,
  PRIMARY KEY (`codigo`)
)


----------------------VENTAS

CREATE TABLE `ve_proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `nombre_pro` varchar(200) NOT NULL,
  `linea` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `ve_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `num_documento` varchar(200) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)


CREATE TABLE `ve_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idve_proveedor` int(11) NOT NULL,
  `valor1` varchar(200) NOT NULL,
  `valor2` varchar(200) NOT NULL,
  `composicion` varchar(200) NOT NULL,
  `presentacion` varchar(200) NOT NULL,
  `unidad` varchar(100) NOT NULL,  
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `ve_almacenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tipoingreso` int(11) NOT NULL DEFAULT '1',
  `estado` varchar(20) NOT NULL,
  
  PRIMARY KEY (`id`)
) 

CREATE TABLE `ve_ingreso_prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_almacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `ve_totales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_producto` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `compra` float NOT NULL,
  `venta` float NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) 


CREATE TABLE `ve_valorizaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_producto` int(11) NOT NULL,
  `puntos` float NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `ve_precios_porcentajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_producto` int(11) NOT NULL,
  `porcentaje` float NOT NULL,
  `precio_porcentaje` float NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) 


CREATE TABLE `ve_castigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_almacen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) 


CREATE TABLE `ve_ventas` (
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
  PRIMARY KEY (`id`)
)

CREATE TABLE `ve_venta_prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)


CREATE TABLE `ve_devoluciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idve_cliente` int(11) NOT NULL,
  `idve_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `respaldo` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
)



CREATE TABLE IF NOT EXISTS `ve_acumulador_almacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codad_empresa` int(11) NOT NULL,
  `idad_usuario` int(11) NOT NULL,
  `idve_producto` int(11) NOT NULL,
  `idve_proveedor` int(11) NOT NULL,
  `idve_porcentaje` int(11) NOT NULL,
  `entrada` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `vencimiento` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL 
) 


'prec_com' => $compra,
      'prec_ven' => $venta,
      'vencimiento' => $venc


INSERT INTO `ve_precios_porcentajes` (`idve_producto`, `porcentaje`, `precio_porcentaje`, `fecha`, `estado`) VALUES
(3, 25, 219, '2019-09-12', 'AC'),
(3, 35, 196, '2019-09-12', 'AC'),
(3, 42, 180, '2019-09-12', 'AC'),
(3, 50, 162, '2019-09-12', 'AC'),
(3, 100, 300, '2019-09-12', 'AC'),
(4, 25, 178.2, '2019-09-12', 'AC'),
(4, 35, 159.5, '2019-09-12', 'AC'),
(4, 42, 146.5, '2019-09-12', 'AC'),
(4, 50, 131.5, '2019-09-12', 'AC'),
(4, 100, 250, '2019-09-12', 'AC'),
(5, 25, 178, '2019-09-12', 'AC'),
(5, 35, 167, '2019-09-12', 'AC'),
(5, 42, 160, '2019-09-12', 'AC'),
(5, 50, 151.3, '2019-09-12', 'AC'),
(5, 100, 280, '2019-09-12', 'AC'),
(6, 25, 99.2, '2019-09-12', 'AC'),
(6, 35, 89, '2019-09-12', 'AC'),
(6, 42, 81.5, '2019-09-12', 'AC'),
(6, 50, 73.2, '2019-09-12', 'AC'),
(6, 100, 140, '2019-09-12', 'AC'),
(7, 25, 146.4, '2019-09-12', 'AC'),
(7, 35, 131, '2019-09-12', 'AC'),
(7, 42, 120.3, '2019-09-12', 'AC'),
(7, 50, 108, '2019-09-12', 'AC'),
(7, 100, 200, '2019-09-12', 'AC'),
(8, 25, 306, '2019-09-12', 'AC'),
(8, 35, 274, '2019-09-12', 'AC'),
(8, 42, 251.4, '2019-09-12', 'AC'),
(8, 50, 226, '2019-09-12', 'AC'),
(8, 100, 405, '2019-09-12', 'AC'),
(9, 25, 175.1, '2019-09-12', 'AC'),
(9, 35, 157, '2019-09-12', 'AC'),
(9, 42, 244, '2019-09-12', 'AC'),
(9, 50, 129.2, '2019-09-12', 'AC'),
(9, 100, 250, '2019-09-12', 'AC'),
(10, 25, 102, '2019-09-12', 'AC'),
(10, 35, 91, '2019-09-12', 'AC'),
(10, 42, 83.6, '2019-09-12', 'AC'),
(10, 50, 75, '2019-09-12', 'AC'),
(10, 100, 145, '2019-09-12', 'AC'),
(11, 25, 248, '2019-09-12', 'AC'),
(11, 35, 222, '2019-09-12', 'AC'),
(11, 42, 203.5, '2019-09-12', 'AC'),
(11, 50, 183, '2019-09-12', 'AC'),
(11, 100,320, '2019-09-12', 'AC'),
(12, 25, 256, '2019-09-12', 'AC'),
(12, 35, 229, '2019-09-12', 'AC'),
(12, 42, 210.2, '2019-09-12', 'AC'),
(12, 50, 189, '2019-09-12', 'AC'),
(12, 100, 335, '2019-09-12', 'AC'),
(13, 25, 284, '2019-09-12', 'AC'),
(13, 35, 256, '2019-09-12', 'AC'),
(13, 42, 235.5, '2019-09-12', 'AC'),
(13, 50, 214.2, '2019-09-12', 'AC'),
(13, 100, 400, '2019-09-12', 'AC'),
(14, 25, 505.3, '2019-09-12', 'AC'),
(14, 35, 455, '2019-09-12', 'AC'),
(14, 42, 419.4, '2019-09-12', 'AC'),
(14, 50, 379, '2019-09-12', 'AC'),
(14, 100, 630, '2019-09-12', 'AC'),
(15, 25, 217, '2019-09-12', 'AC'),
(15, 35, 197, '2019-09-12', 'AC'),
(15, 42, 182.5, '2019-09-12', 'AC'),
(15, 50, 166.3, '2019-09-12', 'AC'),
(15, 100, 250, '2019-09-12', 'AC');






INSERT INTO `ve_totales` (`idve_producto`, `saldo`, `compra`, `venta`, `estado`) VALUES
(6, 0, 0, 0, 'ac'),
(7, 0, 0, 0, 'AC'),
(8, 0, 0, 0, 'AC'),
(9, 0, 0, 0, 'AC'),
(10, 0, 0, 0, 'AC'),
(11, 0, 0, 0, 'AC'),
(12, 0, 0, 0, 'AC'),
(13, 0, 0, 0, 'AC'),
(14, 0, 0, 0, 'AC'),
(15, 0, 0, 0, 'AC');



INSERT INTO `ve_valorizaciones` (`idve_producto`, `puntos`, `fecha`, `estado`) VALUES
(3, 24.65, '2019-09-12', 'AC'),
(4, 18.5, '2019-09-12', 'AC'),
(5, 13.4, '2019-09-12', 'AC'),
(6, 10.30, '2019-09-12', 'AC'),
(7, 15.19, '2019-09-12', 'AC'),
(8, 36, '2019-09-12', 'AC'),
(9, 20.55, '2019-09-12', 'AC'),
(10, 10.56, '2019-09-12', 'AC'),
(11, 25.7, '2019-09-12', 'AC'),
(12, 26.52, '2019-09-12', 'AC'),
(13, 24.21, '2019-09-12', 'AC'),
(14, 53.65, '2019-09-12', 'AC'),
(15, 25.65, '2019-09-12', 'AC');



select *
  from ve_productos p,
       ve_valorizaciones v,
       ve_totales t
  where p.id = v.idve_producto
    and p.id = t.idve_producto
  
  
  