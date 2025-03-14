DROP DATABASE IF EXISTS tickets;
CREATE DATABASE tickets;
USE tickets;

CREATE TABLE empresas (
    empresa_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    cif VARCHAR(20) NOT NULL,
    PRIMARY KEY (empresa_id)
);

CREATE TABLE prioridades (
    prioridad_id CHAR(2) NOT NULL,
    descripcion VARCHAR(20) NOT NULL,
    relevancia INT NOT NULL,
    PRIMARY KEY (prioridad_id)
);

CREATE TABLE estados (
    estado_id CHAR(2) NOT NULL,
    descripcion VARCHAR(20) NOT NULL,
    relevancia INT NOT NULL,
    PRIMARY KEY (estado_id)
);

CREATE TABLE grupos (
    grupo_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY (grupo_id)
);

CREATE TABLE roles (
	rol_id INT NOT NULL,
    descripcion VARCHAR(20) NOT NULL,
    PRIMARY KEY(rol_id)
);

CREATE TABLE usuarios (
	usuario_id INT NOT NULL auto_increment,
	nombre VARCHAR(30) NOT NULL,
	correo VARCHAR(60) NOT NULL,
    telefono CHAR(12) NOT NULL,
    password VARCHAR(128) NOT NULL,
    rol_id INT NOT NULL DEFAULT 1,
    grupo_id INT NOT NULL DEFAULT 1,
    recibe_correos BOOL NOT NULL DEFAULT TRUE,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (rol_id) REFERENCES roles(rol_id),
    FOREIGN KEY (grupo_id) REFERENCES grupos(grupo_id)
);

CREATE TABLE contactos (
    contacto_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    telefono1 CHAR(12) NOT NULL,
    telefono2 CHAR(12),
    empresa_id INT NOT NULL,
    PRIMARY KEY (contacto_id),
	FOREIGN KEY (empresa_id) REFERENCES empresas(empresa_id) ON DELETE CASCADE
);

CREATE TABLE tipos (
    tipo_id INT NOT NULL,
    nombre VARCHAR(40) NOT NULL,
    PRIMARY KEY (tipo_id)
);

CREATE TABLE tickets (
    ticket_id INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(40) NOT NULL,
    cuerpo TEXT NOT NULL,
    propietario INT,
    agente_id INT,
    grupo_id INT,
    contacto_id INT,
    empresa_id INT NOT NULL,
	estado_id CHAR(2) NOT NULL,
    prioridad_id CHAR(2) NOT NULL,
    tipo_id INT NOT NULL,
    fecini TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecobj DATE,
    fecfin DATE,
    PRIMARY KEY (ticket_id),
	FOREIGN KEY (propietario) REFERENCES usuarios(usuario_id) ON DELETE CASCADE,
	FOREIGN KEY (agente_id) REFERENCES usuarios(usuario_id),
	FOREIGN KEY (contacto_id) REFERENCES contactos(contacto_id),
	FOREIGN KEY (empresa_id) REFERENCES empresas(empresa_id) ON DELETE CASCADE,
	FOREIGN KEY (estado_id) REFERENCES estados(estado_id),
	FOREIGN KEY (prioridad_id) REFERENCES prioridades(prioridad_id),
	FOREIGN KEY (tipo_id) REFERENCES tipos(tipo_id)
);

CREATE TABLE notas (
	nota_id INT NOT NULL AUTO_INCREMENT,
    ticket_id INT NOT NULL,
    cuerpo VARCHAR(500) NOT NULL,
    propietario INT NOT NULL,
    fecini DATETIME NOT NULL,
    PRIMARY KEY (nota_id),
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (propietario) REFERENCES usuarios(usuario_id)
);

CREATE TABLE consultas (
	consulta_id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    descripcion VARCHAR(30) NOT NULL,
    fecObjDespuesDe DATE,
    fecObjAntesDe DATE,
    empresa_id INT,
    tipo_id INT,
    estado_id CHAR(2),
    prioridad_id CHAR(2),
    grupo_id INT,
    agente_id INT,
	PRIMARY KEY (consulta_id),
	FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (empresa_id) REFERENCES empresas(empresa_id),
    FOREIGN KEY (tipo_id) REFERENCES tipos(tipo_id),
    FOREIGN KEY (estado_id) REFERENCES estados(estado_id),
    FOREIGN KEY (prioridad_id) REFERENCES prioridades(prioridad_id),
	FOREIGN KEY (grupo_id) REFERENCES grupos(grupo_id),
    FOREIGN KEY (agente_id) REFERENCES usuarios(usuario_id)
);

CREATE TABLE adjuntos (
	adjunto_id INT NOT NULL AUTO_INCREMENT,
    ticket_id INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    archivo BLOB NOT NULL,
    PRIMARY KEY (adjunto_id),
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id) ON DELETE CASCADE
);


/* INSERTS NECESARIOS */

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

INSERT INTO `tickets`.`roles` (`rol_id`, `descripcion`) VALUES ('1', 'Usuario');
INSERT INTO `tickets`.`roles` (`rol_id`, `descripcion`) VALUES ('2', 'Agente');

INSERT INTO `tickets`.`grupos` (`grupo_id`, `nombre`) VALUES ('1', 'Ninguno');
INSERT INTO `tickets`.`empresas` (`nombre`, `cif`) VALUES ('Develoopers', 'B66799297');

