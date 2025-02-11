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

CREATE TABLE usuarios (
	usuario_id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    PRIMARY KEY (usuario_id)
);

CREATE TABLE agentes (
    agente_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    grupo_id INT NOT NULL,
    usuario_id INT NOT NULL,
    PRIMARY KEY (agente_id),
	FOREIGN KEY (grupo_id) REFERENCES grupos(grupo_id),
    	FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

CREATE TABLE contactos (
    contacto_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    telefono1 CHAR(12) NOT NULL,
    telefono2 CHAR(12),
    empresa_id INT NOT NULL,
    PRIMARY KEY (contacto_id),
	FOREIGN KEY (empresa_id) REFERENCES empresas(empresa_id)
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
	estado_id CHAR(2) NOT NULL,
    prioridad_id CHAR(2) NOT NULL,
    tipo_id INT NOT NULL,
    fecini TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecobj DATE,
    fecfin DATE,
    PRIMARY KEY (ticket_id),
	FOREIGN KEY (propietario) REFERENCES agentes(agente_id),
	FOREIGN KEY (agente_id) REFERENCES agentes(agente_id),
	FOREIGN KEY (contacto_id) REFERENCES contactos(contacto_id),
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
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY (propietario) REFERENCES agentes(agente_id)
);

