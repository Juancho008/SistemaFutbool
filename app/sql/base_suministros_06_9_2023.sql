/*
SQLyog Community v13.2.0 (64 bit)
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

/*Data for the table `auditoria_general` */

insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(1,1,'update','categorias',1,'nombre','test','test23','2023-08-03 11:28:08');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(2,1,'update','categorias',1,'imagen','hola.jpg','','2023-08-03 11:28:08');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(3,1,'update','categorias',1,'cat_padre','0','1','2023-08-03 11:28:08');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(4,1,'update','categorias',1,'nombre','test23','test234','2023-08-03 11:31:53');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(5,1,'update','categorias',1,'imagen','hola.jpg','','2023-08-03 11:31:53');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(6,1,'update','categorias',1,'cat_padre','0','1','2023-08-03 11:31:53');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(7,1,'update','categorias',1,'cat_padre','0','1','2023-08-03 11:34:28');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(8,1,'update','categorias',1,'nombre','Categoria de prueba','Categoria de prueba-teste','2023-08-03 11:54:26');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(9,1,'update','categorias',1,'imagen','imagen_Categoria de prueba_sub_categoria_20230803.jpg','','2023-08-03 11:54:26');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(10,1,'update','categorias',2,'imagen','imagen_Sub-categoria de prueba_categoria_20230803.jpg','','2023-08-03 11:55:46');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(11,1,'update','categorias',1,'nombre','Categoria de prueba-teste','Categoria de prueba-teste----22','2023-08-03 11:56:06');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(12,1,'update','categorias',1,'imagen','','imagen_Categoria de prueba-teste----22_sub_categoria_20230803.jpg','2023-08-03 11:56:06');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(13,1,'update','categorias',1,'imagen','imagen_Categoria de prueba-teste----22_sub_categoria_20230803.jpg','','2023-08-03 11:56:13');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(14,1,'update','categorias',1,'imagen','','imagen_Categoria de prueba-teste----22_sub_categoria_20230803.png','2023-08-03 11:56:54');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(15,1,'update','categorias',1,'imagen','imagen_Categoria de prueba-teste----22_sub_categoria_20230803.png','','2023-08-03 11:56:57');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(16,1,'update','categorias',1,'imagen','','imagen_Categoria de prueba-teste----22_sub_categoria_20230803.jpg','2023-08-03 11:58:32');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(17,1,'update','categorias',1,'nombre','Categoria de prueba-teste----22','Categoria de prueba-teste----2222','2023-08-03 11:58:37');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(18,1,'update','categorias',1,'imagen','imagen_Categoria de prueba-teste----22_sub_categoria_20230803.jpg','','2023-08-03 11:58:37');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(19,1,'update','categorias',1,'imagen','','imagen_Categoria de prueba-teste----2222_sub_categoria_20230803.png','2023-08-03 11:59:46');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(20,1,'update','categorias',1,'nombre','Categoria de prueba-teste----2222','Categ','2023-08-03 12:00:05');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(21,1,'update','categorias',1,'imagen','imagen_Categoria de prueba-teste----2222_sub_categoria_20230803.png','','2023-08-03 12:00:05');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(22,1,'update','categorias',1,'imagen','','imagen_Categ_sub_categoria_20230803.jpg','2023-08-03 12:10:15');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(23,1,'update','categorias',1,'imagen','imagen_Categ_sub_categoria_20230803.jpg','','2023-08-03 12:10:24');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(24,1,'update','categorias',1,'imagen','','imagen_Categ_sub_categoria_20230803.jpg','2023-08-03 12:10:53');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(25,1,'update','categorias',1,'imagen','imagen_Categ_sub_categoria_20230803.jpg','','2023-08-03 12:11:07');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(26,1,'update','categorias',1,'imagen','','imagen_Categ_sub_categoria_20230803.jpg','2023-08-03 12:12:27');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(27,1,'update','categorias',1,'nombre','Categ','Categ222','2023-08-03 12:13:16');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(28,1,'update','categorias',1,'imagen','imagen_Categ_sub_categoria_20230803.jpg','imagen_Categ222_sub_categoria_20230803.png','2023-08-03 12:13:35');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(29,1,'update','categorias',1,'nombre','Categ222','Categ22233)(','2023-08-03 14:22:15');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(30,1,'update','categorias',1,'imagen','imagen_Categ222_sub_categoria_20230803.png','imagen_Categ22233)(_sub_categoria_20230803.png','2023-08-03 14:22:15');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(31,1,'update','categorias',2,'imagen','','imagen_Sub-categoria de prueba_categoria_20230824.jpg','2023-08-24 12:25:33');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(32,1,'update','categorias',4,'imagen','','imagen_Categoria de prueba-2_sub_categoria_20230824.jpg','2023-08-24 12:25:53');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(33,1,'update','categorias',3,'imagen','','imagen_Categoria de prueba-1_categoria_20230824.png','2023-08-24 12:26:21');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(34,1,'update','categorias',1,'estado','1','0','2023-08-24 12:28:08');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(35,1,'update','categorias',1,'nombre','Categ22233)(','Categ','2023-08-24 12:28:41');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(36,1,'update','categorias',1,'nombre','Categ','Categoria','2023-08-24 12:29:15');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(37,1,'update','categorias',4,'nombre','Categoria de prueba-2','Categoria 2','2023-08-24 12:29:29');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(38,1,'update','categorias',8,'nombre','123','Categoria 3','2023-08-24 12:29:38');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(39,1,'update','categorias',12,'nombre','@hola','Categoria 4','2023-08-24 12:29:45');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(40,1,'update','categorias',14,'nombre','())()())(()()()(2','Categoria 5','2023-08-24 12:29:53');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(41,1,'update','categorias',2,'nombre','Sub-categoria de prueba','Sub-categoria','2023-08-24 12:30:21');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(42,1,'update','categorias',3,'nombre','Categoria de prueba-1','Sub-categoria 2','2023-08-24 12:30:36');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(43,1,'update','categorias',15,'nombre','123','Sub-Sub-categoria','2023-08-24 12:30:50');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(44,1,'update','categorias',20,'imagen','','imagen_test_categoria_20230824.png','2023-08-24 14:43:14');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(45,1,'update','categorias',1,'imagen','imagen_Categ22233)(_sub_categoria_20230803.png','imagen_Categoria_sub_categoria_20230825.gif','2023-08-25 13:40:46');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(46,1,'update','categorias',4,'imagen','imagen_Categoria de prueba-2_sub_categoria_20230824.jpg','imagen_Categoria 2_sub_categoria_20230825.gif','2023-08-25 13:40:57');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(47,1,'update','categorias',8,'imagen','imagen_123_sub_categoria_20230803.jpg','imagen_Categoria 3_sub_categoria_20230825.gif','2023-08-25 13:41:07');
insert  into `auditoria_general`(`id_auditoria`,`id_usuario`,`accion`,`tabla`,`id_registro`,`atributo`,`valor_anterior`,`valor_actual`,`fecha`) values 
(48,1,'update','categorias',12,'imagen','imagen_@hola_sub_categoria_20230803.jpg','imagen_Categoria 4_sub_categoria_20230825.gif','2023-08-25 13:41:38');

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `estado` int(11) NOT NULL COMMENT '0: Activo, 1:Inactivo, 2:Eliminado',
  `cat_padre` int(11) NOT NULL COMMENT '0:Principal, 1:Secundaria,2:Terciaria',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `categorias` */

insert  into `categorias`(`id`,`nombre`,`imagen`,`estado`,`cat_padre`) values 
(33,'Categoria','imagen_Producto_sub_categoria_20230901.png',1,0);
insert  into `categorias`(`id`,`nombre`,`imagen`,`estado`,`cat_padre`) values 
(34,'test','imagen_test_categoria_20230904.png',1,33);
insert  into `categorias`(`id`,`nombre`,`imagen`,`estado`,`cat_padre`) values 
(35,'test sub','imagen_test sub_categoria_20230904.png',1,33);
insert  into `categorias`(`id`,`nombre`,`imagen`,`estado`,`cat_padre`) values 
(36,'test sub sub','imagen_test sub sub_categoria_20230904.png',1,34);

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

/*Data for the table `dependencia_detalles` */

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

/*Data for the table `dependencias` */

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

/*Data for the table `detalles_pedidos` */

/*Table structure for table `divisiones` */

DROP TABLE IF EXISTS `divisiones`;

CREATE TABLE `divisiones` (
  `id` int(11) NOT NULL,
  `id_oficina` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `divisiones` */

/*Table structure for table `medidas` */

DROP TABLE IF EXISTS `medidas`;

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `medidas` */

insert  into `medidas`(`id`,`descripcion`) values 
(1,'Unidad');

/*Table structure for table `menu_grupos` */

DROP TABLE IF EXISTS `menu_grupos`;

CREATE TABLE `menu_grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `id_grupo_sup` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `menu_grupos` */

insert  into `menu_grupos`(`id`,`nombre`,`orden`,`img`,`id_grupo_sup`) values 
(1,'Administracion',500,NULL,0);
insert  into `menu_grupos`(`id`,`nombre`,`orden`,`img`,`id_grupo_sup`) values 
(2,'Categoria',5,'',NULL);
insert  into `menu_grupos`(`id`,`nombre`,`orden`,`img`,`id_grupo_sup`) values 
(3,'Producto',6,'',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `menu_items` */

insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(1,'Home','Inicio',0,1,NULL);
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(2,'Usuarios','Usuario',1,70,NULL);
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(3,'Perfiles','Perfiles',1,80,NULL);
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(4,'MenuGrupos','Grupos del Menu',1,90,NULL);
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(5,'MenuItems','Items del manu',1,100,NULL);
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(6,'Categoria/index','Inicio',2,1,'');
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(7,'Categoria/nuevo','Crear categoria',2,2,'');
insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(8,'Producto/index','lista',3,1,'');

/*Table structure for table `oficinas` */

DROP TABLE IF EXISTS `oficinas`;

CREATE TABLE `oficinas` (
  `id` int(11) NOT NULL,
  `id_secretaria` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oficinas` */

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

/*Data for the table `orden_compra` */

/*Table structure for table `parametros` */

DROP TABLE IF EXISTS `parametros`;

CREATE TABLE `parametros` (
  `clave` varchar(20) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `parametros` */

insert  into `parametros`(`clave`,`valor`) values 
('id_perfil_admin','1');
insert  into `parametros`(`clave`,`valor`) values 
('planilla_nueva_id','7');

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

/*Data for the table `pedidos` */

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

/*Data for the table `perfiles_permisos` */

insert  into `perfiles_permisos`(`id`,`id_perfil`,`controlador`,`permisos`,`creado`) values 
(1,2,'Home','L','2021-04-13 15:58:47');
insert  into `perfiles_permisos`(`id`,`id_perfil`,`controlador`,`permisos`,`creado`) values 
(2,2,'Usuarios','ABML','2021-04-13 15:58:55');

/*Table structure for table `perfiles_usuarios` */

DROP TABLE IF EXISTS `perfiles_usuarios`;

CREATE TABLE `perfiles_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `perfiles_usuarios` */

insert  into `perfiles_usuarios`(`id`,`nombre`,`descripcion`,`estado`) values 
(1,'Administrador',NULL,1);
insert  into `perfiles_usuarios`(`id`,`nombre`,`descripcion`,`estado`) values 
(2,'Usuario',NULL,1);

/*Table structure for table `permisos_perfiles` */

DROP TABLE IF EXISTS `permisos_perfiles`;

CREATE TABLE `permisos_perfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) DEFAULT NULL,
  `id_menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `permisos_perfiles` */

insert  into `permisos_perfiles`(`id`,`id_perfil`,`id_menu_item`) values 
(1,2,1);
insert  into `permisos_perfiles`(`id`,`id_perfil`,`id_menu_item`) values 
(2,2,2);

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

/*Data for the table `permisos_productos` */

/*Table structure for table `permisos_usuarios` */

DROP TABLE IF EXISTS `permisos_usuarios`;

CREATE TABLE `permisos_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `permisos_usuarios` */

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`id`,`nombre`,`descripcion`,`imagen`,`fecha_ingreso`,`estado`,`codigo_barra`,`id_categoria`,`permisos`) values 
(1,'Producto','test','producto.png','2023-09-01',1,'567575675',33,0);
insert  into `productos`(`id`,`nombre`,`descripcion`,`imagen`,`fecha_ingreso`,`estado`,`codigo_barra`,`id_categoria`,`permisos`) values 
(6,'Producto2','test2','producto.png','2023-09-04',1,'567575675',34,0);
insert  into `productos`(`id`,`nombre`,`descripcion`,`imagen`,`fecha_ingreso`,`estado`,`codigo_barra`,`id_categoria`,`permisos`) values 
(7,'Producto3','test3','producto.png','2023-09-04',1,'567575675',36,0);

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

/*Data for the table `reporte_hist` */

/*Table structure for table `secretarias` */

DROP TABLE IF EXISTS `secretarias`;

CREATE TABLE `secretarias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `secretarias` */

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `stock` */

insert  into `stock`(`id`,`cantidad`,`estado`,`id_productos`,`id_medidas`) values 
(1,33,0,1,1);
insert  into `stock`(`id`,`cantidad`,`estado`,`id_productos`,`id_medidas`) values 
(2,10,0,6,1);
insert  into `stock`(`id`,`cantidad`,`estado`,`id_productos`,`id_medidas`) values 
(3,5,0,7,1);

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

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`apellido`,`id_perfil`,`usuario`,`clave`,`email`,`telefono`,`hora_ultimo_acceso`,`cantidad_acceso`,`verificacion`,`estado`,`imagen`,`dni`,`id_municipio`) values 
(1,'Usuario','Administrador',1,'admin','21232f297a57a5a743894a0e4a801fc3','',NULL,'2023-09-01 06:57:05',NULL,NULL,0,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
