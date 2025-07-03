/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.41-log : Database - suministros
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`suministros` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `suministros`;

/*Table structure for table `auditoria_general` */

DROP TABLE IF EXISTS `auditoria_general`;

CREATE TABLE `auditoria_general` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `accion` varchar(100) DEFAULT NULL,
  `tabla` varchar(100) DEFAULT NULL,
  `id_registro` int(11) DEFAULT NULL,
  `atributo` varchar(100) DEFAULT NULL,
  `valor_anterior` varchar(1000) DEFAULT NULL,
  `valor_actual` varchar(1000) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `estado` int(11) NOT NULL COMMENT '0: Activo, 1:Inactivo, 2:Eliminado',
  `cat_padre` int(11) NOT NULL COMMENT '0:Principal, 1:Secundaria,2:Terciaria',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Table structure for table `dependencia_detalles` */

DROP TABLE IF EXISTS `dependencia_detalles`;

CREATE TABLE `dependencia_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dependencia` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dependenciaDetalles_dependencia` (`id_dependencia`),
  CONSTRAINT `dependenciaDetalles_dependencia` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `dependencias` */

DROP TABLE IF EXISTS `dependencias`;

CREATE TABLE `dependencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_secretaria` int(11) DEFAULT NULL,
  `id_sector` int(11) DEFAULT NULL,
  `id_oficina` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `detalles_pedidos` */

DROP TABLE IF EXISTS `detalles_pedidos`;

CREATE TABLE `detalles_pedidos` (
  `id_pedidos` int(11) DEFAULT NULL,
  `id_productos` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  KEY `detallesPedidos_pedidos` (`id_pedidos`),
  KEY `detallesPedidos_productos` (`id_productos`),
  CONSTRAINT `detallesPedidos_pedidos` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detallesPedidos_productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `divisiones` */

DROP TABLE IF EXISTS `divisiones`;

CREATE TABLE `divisiones` (
  `id` int(11) NOT NULL,
  `id_oficina` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `medidas` */

DROP TABLE IF EXISTS `medidas`;

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `menu_grupos` */

DROP TABLE IF EXISTS `menu_grupos`;

CREATE TABLE `menu_grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `id_grupo_sup` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `menu_items` */

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Table structure for table `oficinas` */

DROP TABLE IF EXISTS `oficinas`;

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL,
  `id_secretaria` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `orden_compra` */

DROP TABLE IF EXISTS `orden_compra`;

CREATE TABLE `orden_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emitido` date NOT NULL COMMENT 'fecha en la cual se creo la nota',
  `num_nota` int(11) NOT NULL,
  `id_productos` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ordenCompra_productos` (`id_productos`),
  CONSTRAINT `ordenCompra_productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `parametros` */

DROP TABLE IF EXISTS `parametros`;

CREATE TABLE `parametros` (
  `clave` varchar(20) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` int(11) NOT NULL COMMENT '0:Enviado,1:Aceptado,2:Rechazado',
  `fecha` date NOT NULL COMMENT 'Fecha el cual fue emitido el pedido',
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_usuarios` (`id_usuario`),
  CONSTRAINT `pedidos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `perfiles_permisos` */

DROP TABLE IF EXISTS `perfiles_permisos`;

CREATE TABLE `perfiles_permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) DEFAULT NULL,
  `controlador` varchar(100) DEFAULT NULL,
  `permisos` varchar(10) DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `perfiles_usuarios` */

DROP TABLE IF EXISTS `perfiles_usuarios`;

CREATE TABLE `perfiles_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `permisos_perfiles` */

DROP TABLE IF EXISTS `permisos_perfiles`;

CREATE TABLE `permisos_perfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) DEFAULT NULL,
  `id_menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `permisos_productos` */

DROP TABLE IF EXISTS `permisos_productos`;

CREATE TABLE `permisos_productos` (
  `id_dependencia` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  KEY `permisosProductos_dependencia` (`id_dependencia`),
  KEY `permisosProductos_productos` (`id_producto`),
  CONSTRAINT `permisosProductos_dependencia` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `permisosProductos_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `permisos_usuarios` */

DROP TABLE IF EXISTS `permisos_usuarios`;

CREATE TABLE `permisos_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `fecha_ingreso` date NOT NULL COMMENT 'Fecha de creacion del producto',
  `estado` int(11) NOT NULL COMMENT '0:Activo,1:Inactivo',
  `codigo_barra` varchar(250) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `permisos` int(11) DEFAULT '0' COMMENT '0:Todos tienen acceso',
  PRIMARY KEY (`id`),
  KEY `producto_categoria` (`id_categoria`),
  CONSTRAINT `producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `reporte_hist` */

DROP TABLE IF EXISTS `reporte_hist`;

CREATE TABLE `reporte_hist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL COMMENT '0:Orden de compra, 1: Reporte Stock, 2:Reporte Producto',
  `fecha_emitido` date NOT NULL COMMENT 'Fecha de creacion del reporte',
  `ubicacion_sist` varchar(150) NOT NULL COMMENT 'En que parte del sistema fue generado el reporte',
  `id_usuario` int(11) NOT NULL COMMENT 'Usuario que genero el reporte',
  PRIMARY KEY (`id`),
  KEY `reporteHist_usuarios` (`id_usuario`),
  CONSTRAINT `reporteHist_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `secretarias` */

DROP TABLE IF EXISTS `secretarias`;

CREATE TABLE `secretarias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL COMMENT 'El total de nuestro inventario del producto',
  `estado` int(11) NOT NULL COMMENT '2:Sin stock,1:Inactivo,0:Activo',
  `id_productos` int(11) NOT NULL,
  `id_medidas` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_productos` (`id_productos`),
  KEY `stock_medidas` (`id_medidas`),
  CONSTRAINT `stock_medidas` FOREIGN KEY (`id_medidas`) REFERENCES `medidas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stock_productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `clave` varchar(300) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `hora_ultimo_acceso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidad_acceso` int(10) unsigned DEFAULT NULL,
  `verificacion` varchar(300) DEFAULT NULL,
  `estado` int(11) DEFAULT '0',
  `imagen` varchar(300) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
