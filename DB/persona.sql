/*Si la base de datos existe eliminala*/ 
DROP SCHEMA IF EXISTS `fes_ico`;

/* creacion base de datos */

CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
 

 /* usamos la base de datos*/
 use `fes_ico`; 

 /*crar una tabla*/
CREATE TABLE `alumno`(
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int(10) not null,
    `direccion` text not null,
    `telefono` varchar (10) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha_registro` datetime not null default CURRENT_TIMESTAMP,
    `permisos` int (11) not null default '1',

    CONSTRAINT pk_Cuenta PRIMARY KEY(no_cuenta)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `alumno` (`nombre_usuario`, `carrera`, `no_cuenta`, `direccion`, `telefono`, `email`, `password`)
values('Julio Mendez', 'ICO', '317355682', 'HDA tapaxco', '5531332751', 'juliotorres82@aragon.unam.mx', '1234'),
('Juan Perez', 'Pedagogia', '318356752', 'HDA Escondida', '5533436751', 'juanperez52@aragon.unam.mx', '12345'),
('Miguel Sanchez', 'Derecho', '316895679', 'AV Rancho Seco', '5531872777', 'miguelsanchez79@aragon.unam.mx', '123456');



