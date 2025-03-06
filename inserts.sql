INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('6', 'Incidencia');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('5', 'Mejora');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('4', 'Petición de nueva funcionalidad');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('3', 'Duda sobre funcionamiento');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('2', 'Pedido');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('1', 'Otras tareas');

INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`, `relevancia`) VALUES ('AL', 'Alta', 3);
INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`, `relevancia`) VALUES ('BA', 'Baja', 1);
INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`, `relevancia`) VALUES ('ME', 'Media', 2);
INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`, `relevancia`) VALUES ('UR', 'Urgente', 4);

INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`, `relevancia`) VALUES ('AB', 'Abierto', 4);
INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`, `relevancia`) VALUES ('CE', 'Cerrado', 1);
INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`, `relevancia`) VALUES ('PE', 'Pendiente', 3);
INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`, `relevancia`) VALUES ('RE', 'Resuelto', 2);


INSERT INTO `tickets`.`empresas` (`nombre`, `cif`) VALUES ('Develoopers', 'B99712392');
INSERT INTO `tickets`.`empresas` (`nombre`, `cif`) VALUES ('Aúna', 'B21112311');
INSERT INTO `tickets`.`grupos` (`grupo_id`, `nombre`) VALUES ('1', 'Ninguno');
INSERT INTO `tickets`.`grupos` (`nombre`) VALUES ('Developer');
INSERT INTO `tickets`.`grupos` (`nombre`) VALUES ('Soporte');
INSERT INTO `tickets`.`usuarios` (`nombre`,`correo`,`telefono` ,`password`) VALUES ('Xavi','xavi@develoopers.cat' ,'123123123','xavi');
INSERT INTO `tickets`.`usuarios` (`nombre`,`correo`,`telefono` , `password`) VALUES ('Arnau','arnau@develoopers.cat', '123123123', 'arnau');

INSERT INTO `tickets`.`agentes` (`nombre`, `grupo_id`, `usuario_id`) VALUES ( 'Xavi', 2, 1);
INSERT INTO `tickets`.`agentes` (`nombre`, `grupo_id`, `usuario_id`) VALUES ( 'Arnau', 3, 2);

INSERT INTO `tickets`.`contactos` (`nombre`, `correo`, `telefono1`, `empresa_id`) VALUES ('juan', 'juan@gmail.com', '123123123', 1);

INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'AB', 'UR', 1, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto2', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'CE', 'AL', 5, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Prueba de ticket', 'Esto es una prueba de diseño de ticket. Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.', 1, 1, 1, 1, 'AB', 'ME', 6, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'PE', 'BA', 2, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto2', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'RE', 'UR', 3, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Prueba de ticket', 'Esto es una prueba de diseño de ticket. Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.', 1, 1, 1, 1, 'AB', 'UR', 4, '2025-03-04', '2025-03-05');