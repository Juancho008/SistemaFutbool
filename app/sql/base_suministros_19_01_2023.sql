/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.6.51-log : Database - suministros
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auditoria_general` */

LOCK TABLES `auditoria_general` WRITE;

UNLOCK TABLES;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `id_estado` int(11) NOT NULL DEFAULT '12',
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCategorias`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `categorias` */

LOCK TABLES `categorias` WRITE;

insert  into `categorias`(`idCategorias`,`categoria`,`imagen`,`id_estado`,`fecha`) values 
(2,'aa','testsss.jpg',14,'2023-01-16 13:09:20'),
(5,'Probando','test.jpg',11,'2023-01-17 12:57:08'),
(6,'Probando','test.jpg',12,'2023-01-18 10:47:29');

UNLOCK TABLES;

/*Table structure for table `detalle_pedidos` */

DROP TABLE IF EXISTS `detalle_pedidos`;

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pedido` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `detalle_pedidos_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `detalle_pedidos` */

LOCK TABLES `detalle_pedidos` WRITE;

UNLOCK TABLES;

/*Table structure for table `estados` */

DROP TABLE IF EXISTS `estados`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `estados` */

LOCK TABLES `estados` WRITE;

insert  into `estados`(`id`,`descripcion`) values 
(1,'aceptado'),
(2,'rechazado'),
(3,'modificado aprobado'),
(4,'pendiente'),
(5,'enviado'),
(6,'aprobado'),
(7,'entregado'),
(8,'entregando'),
(9,'solicitado'),
(10,'anulado'),
(11,'cancelado'),
(12,'activo'),
(13,'inactivo'),
(14,'eliminado');

UNLOCK TABLES;

/*Table structure for table `medidas` */

DROP TABLE IF EXISTS `medidas`;

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `medidas` */

LOCK TABLES `medidas` WRITE;

insert  into `medidas`(`id`,`nombre`) values 
(1,'Unidad'),
(2,'Litros'),
(3,'Docena'),
(4,'Pack(50)'),
(5,'Pack(100)');

UNLOCK TABLES;

/*Table structure for table `menu_grupos` */

DROP TABLE IF EXISTS `menu_grupos`;

CREATE TABLE `menu_grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `id_grupo_sup` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `menu_grupos` */

LOCK TABLES `menu_grupos` WRITE;

insert  into `menu_grupos`(`id`,`nombre`,`orden`,`img`,`id_grupo_sup`) values 
(1,'Administracion',500,NULL,0),
(2,'Productos',2,'',NULL),
(3,'Categorías',3,'',NULL),
(4,'Pedidos',4,'',NULL),
(5,'Entregas',5,'',NULL);

UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `menu_items` */

LOCK TABLES `menu_items` WRITE;

insert  into `menu_items`(`id`,`url`,`nombre`,`id_grupo`,`orden`,`img`) values 
(1,'Home','Inicio',0,1,NULL),
(2,'Usuarios','Usuario',1,70,NULL),
(3,'Perfiles','Perfiles',1,80,NULL),
(4,'MenuGrupos','Grupos del Menu',1,90,NULL),
(5,'MenuItems','Items del manu',1,100,NULL),
(6,'productos/listas','Lista',2,1,''),
(7,'productos/nuevo','Nuevo',2,2,''),
(8,'categoria/lista','Lista',3,1,''),
(9,'categoria/nuevo','Nuevo',3,2,''),
(10,'pedidos/lista','Lista',4,1,''),
(11,'entregas/lista','Listas',5,1,'');

UNLOCK TABLES;

/*Table structure for table `parametros` */

DROP TABLE IF EXISTS `parametros`;

CREATE TABLE `parametros` (
  `clave` varchar(20) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `parametros` */

LOCK TABLES `parametros` WRITE;

insert  into `parametros`(`clave`,`valor`) values 
('id_perfil_admin','1'),
('planilla_nueva_id','7');

UNLOCK TABLES;

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaccion` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `id_estado` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pedidos` */

LOCK TABLES `pedidos` WRITE;

UNLOCK TABLES;

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

LOCK TABLES `perfiles_permisos` WRITE;

insert  into `perfiles_permisos`(`id`,`id_perfil`,`controlador`,`permisos`,`creado`) values 
(1,2,'Home','L','2021-04-13 15:58:47'),
(2,2,'Usuarios','ABML','2021-04-13 15:58:55');

UNLOCK TABLES;

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

LOCK TABLES `perfiles_usuarios` WRITE;

insert  into `perfiles_usuarios`(`id`,`nombre`,`descripcion`,`estado`) values 
(1,'Administrador',NULL,1),
(2,'Usuario',NULL,1);

UNLOCK TABLES;

/*Table structure for table `permisos_perfiles` */

DROP TABLE IF EXISTS `permisos_perfiles`;

CREATE TABLE `permisos_perfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_perfil` int(11) DEFAULT NULL,
  `id_menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `permisos_perfiles` */

LOCK TABLES `permisos_perfiles` WRITE;

insert  into `permisos_perfiles`(`id`,`id_perfil`,`id_menu_item`) values 
(1,2,1),
(2,2,2);

UNLOCK TABLES;

/*Table structure for table `permisos_usuarios` */

DROP TABLE IF EXISTS `permisos_usuarios`;

CREATE TABLE `permisos_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_menu_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `permisos_usuarios` */

LOCK TABLES `permisos_usuarios` WRITE;

UNLOCK TABLES;

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `codigoBarra` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_stock` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_medida` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT '12',
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  KEY `estado` (`id_estado`),
  KEY `medidas_productos_id` (`id_medida`),
  KEY `stock_productos_id` (`id_stock`),
  CONSTRAINT `estado` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`),
  CONSTRAINT `medidas_productos_id` FOREIGN KEY (`id_medida`) REFERENCES `medidas` (`id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`idCategorias`),
  CONSTRAINT `stock_productos_id` FOREIGN KEY (`id_stock`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

LOCK TABLES `productos` WRITE;

insert  into `productos`(`id`,`nombre`,`descripcion`,`imagen`,`codigoBarra`,`fecha`,`id_stock`,`id_categoria`,`id_medida`,`id_estado`) values 
(6,'Objeto3','algo copado','hola.jpg','3414133','2023-01-17 13:05:34',1,2,1,12);

UNLOCK TABLES;

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_estado` int(11) DEFAULT '12',
  PRIMARY KEY (`id`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `stock` */

LOCK TABLES `stock` WRITE;

insert  into `stock`(`id`,`cantidad`,`fecha`,`id_estado`) values 
(1,21,'2023-01-17 13:08:01',12),
(2,23,'2023-01-17 13:08:01',12);

UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`id`,`nombre`,`apellido`,`id_perfil`,`usuario`,`clave`,`email`,`telefono`,`hora_ultimo_acceso`,`cantidad_acceso`,`verificacion`,`estado`,`imagen`,`dni`,`id_municipio`) values 
(1,'Usuario','Administrador',1,'admin','21232f297a57a5a743894a0e4a801fc3','',NULL,'2023-01-19 08:29:09',NULL,NULL,0,NULL,NULL,NULL),
(2,'a','a',2,'a','0cc175b9c0f1b6a831c399e269772661','a','a','2022-11-18 08:21:30',NULL,NULL,0,NULL,0,0);

UNLOCK TABLES;

/* Procedure structure for procedure `buscador_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `buscador_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `buscador_categoria`(busqueda varchar(250))
begin
		SELECT id,categoria,fecha,id_estado FROM categorias WHERE
		(categoria like concat('%',busqueda,'%') or 
		fecha LIKE CONCAT('%',busqueda,'%')) AND id_estado != 14 ;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `delete_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `delete_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `delete_categoria`(idCate INT)
begin
		DECLARE existe_categoria INT;
		declare id INT;
		set existe_categoria = (SELECT COUNT(*) FROM categorias WHERE idCategorias = idCate);
		
		if existe_categoria > 0 then
		
			UPDATE categorias set id_estado = 14 WHERE idCategorias = idCate;
			SET id = 1;
		else 
			set id = 0;
		end if;
		SELECT id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `insert_categoria`(cat varchar(100),img VARCHAR(250))
begin
		DECLARE existe_persona INT;
		DECLARE id INT;
		set existe_persona = (SELECT COUNT(*) FROM categorias WHERE categoria = cat);
		
		if existe_persona = 0 then
			insert into categorias(categoria,imagen) values(cat,img);
			SET id= last_insert_id();
		else 
			set id = 0;
		end if;
		SELECT id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `select_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `select_categoria`(id INT)
begin
		SELECT ca.id,ca.imagen,ca.categoria,ca.id_estado FROM categorias ca WHERE ca.id = id AND ca.id_estado != 14 ;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `select_categorias` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_categorias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `select_categorias`()
begin
		SELECT ca.id,ca.imagen, ca.categoria, es.id,es.descripcion FROM categorias ca INNER JOIN estados es ON ca.id_estado = es.id ORDER BY ca.id DESC;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `update_categoria` */

/*!50003 DROP PROCEDURE IF EXISTS  `update_categoria` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `update_categoria`(id INT,cat varchar(100),img VARCHAR(250),est INT)
begin
		DECLARE existe_categoria INT;
		declare existe_cat INT;
		DECLARE idCat INT;
		set existe_categoria = (SELECT COUNT(*) FROM categorias WHERE idCategorias = id);
		
		if existe_categoria > 0 then
			set existe_cat = (SELECT COUNT(*) FROM categorias WHERE categoria = cat and id_estado = est AND idCategorias = id AND imagen = img );
			
			if existe_cat = 0 then 
				UPDATE categorias SET categoria = cat, imagen = img,id_estado = est WHERE idCategorias = id;
				SET idCat = id;
			else
				SET idCat = 0;
			end if; 

		else 
			set idCat = 0;
		end if;
		SELECT idCat;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
