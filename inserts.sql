INSERT INTO `tickets`.`empresas` (`nombre`, `cif`) VALUES ('Develoopers', 'B99712392');
INSERT INTO `tickets`.`empresas` (`nombre`, `cif`) VALUES ('Aúna', 'B21112311');
INSERT INTO `tickets`.`grupos` (`grupo_id`, `nombre`) VALUES ('1', 'Ninguno');
INSERT INTO `tickets`.`grupos` (`nombre`) VALUES ('Developer');
INSERT INTO `tickets`.`grupos` (`nombre`) VALUES ('Soporte');
INSERT INTO `tickets`.`usuarios` (`nombre`,`correo`,`telefono`, `password`, `rol_id`, `grupo_id`) VALUES ('Xavi','xavi@develoopers.cat' ,'123123123','xavi', 2, 1);
INSERT INTO `tickets`.`usuarios` (`nombre`,`correo`,`telefono`, `password`, `rol_id`, `grupo_id`) VALUES ('Arnau','arnau@develoopers.cat', '123123123', 'arnau', 2, 2);

INSERT INTO `tickets`.`contactos` (`nombre`, `correo`, `telefono1`, `empresa_id`) VALUES ('juan', 'juan@gmail.com', '123123123', 1);

INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'AB', 'UR', 1, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto2', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'CE', 'AL', 5, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Prueba de ticket', 'Esto es una prueba de diseño de ticket. Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.', 1, 1, 1, 1, 'AB', 'ME', 6, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'PE', 'BA', 2, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Asunto2', 'Descripcion etc etc etc etc etc', 1, 1, 1, 1, 'RE', 'UR', 3, '2025-03-04', '2025-03-05');
INSERT INTO `tickets`.`tickets` (`descripcion`, `cuerpo`, `propietario`, `agente`, `contacto_id`, `empresa_id`, `estado_id`, `prioridad_id`, `tipo_id`, `fecobj`, `fecfin`) VALUES ('Prueba de ticket', 'Esto es una prueba de diseño de ticket. Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.Esto es una prueba de diseño de ticket.', 1, 1, 1, 1, 'AB', 'UR', 4, '2025-03-04', '2025-03-05');