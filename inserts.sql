INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('1', 'Incidencia');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('2', 'Mejora');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('3', 'Petición de nueva funcionalidad');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('4', 'Duda sobre funcionamiento');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('5', 'Pedido');
INSERT INTO `tickets`.`tipos` (`tipo_id`, `nombre`) VALUES ('6', 'Otras tareas');

INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`) VALUES ('AL', 'Alta');
INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`) VALUES ('BA', 'Baja');
INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`) VALUES ('ME', 'Media');
INSERT INTO `tickets`.`prioridades` (`prioridad_id`, `descripcion`) VALUES ('UR', 'Urgente');

INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`) VALUES ('AB', 'Abierto');
INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`) VALUES ('CE', 'Cerrado');
INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`) VALUES ('PE', 'Pendiente');
INSERT INTO `tickets`.`estados` (`estado_id`, `descripcion`) VALUES ('RE', 'Resuelto');

INSERT INTO `tickets`.`empresas` (`nombre`, `cif`) VALUES ('Aúna', 'B21112311');
INSERT INTO `tickets`.`grupos` (`nombre`) VALUES ('Developer');
INSERT INTO `tickets`.`usuarios` (`nombre`, `password`) VALUES ('Xavi', 'xavi');
INSERT INTO `tickets`.`agentes` (`nombre`, `correo`, `grupo_id`, `usuario_id`) VALUES ( 'Xavi', 'xavi@develoopers.cat', 1, 1);
INSERT INTO `tickets`.`contactos` (`nombre`, `correo`, `telefono1`, `empresa_id`) VALUES ('juan', 'juan@gmail.com', '123123123', 1);

INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto', 'Descripcion etc etc etc etc etc', 1, 1, 1, 'AB', 'UR', 1, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto2', 'Descripcion etc etc etc etc etc', 1, 1, 1, 'AB', 'UR', 5, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Prueba de ticket', 'Esto es una prueba de diseño de ticket. Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.', 1, 1, 1, 'AB', 'UR', 6, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto', 'Descripcion etc etc etc etc etc', 1, 1, 1, 'AB', 'UR', 2, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto2', 'Descripcion etc etc etc etc etc', 1, 1, 1, 'AB', 'UR', 3, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente_id`, `contacto_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Prueba de ticket', 'Esto es una prueba de diseño de ticket. Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.', 1, 1, 1, 'AB', 'UR', 4, '2025-03-04', '2025-03-05');