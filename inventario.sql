CREATE DATABASE inventario;
USE inventario;

CREATE TABLE usuario (
	id_usuario INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    telefono numeric(15,0) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    contrasena VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_usuario)
);

CREATE TABLE categoria(
	id_categoria INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripccion VARCHAR(150) NOT NULL,
    fecha_creacion DATE NOT NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE proveedor (
	id_proveedor INT AUTO_INCREMENT,
	descripcion VARCHAR(150) NOT NULL DEFAULT 'N/A',
    PRIMARY KEY (id_proveedor)
);

CREATE TABLE presentacion (
	id_presentacion INT AUTO_INCREMENT,
	descripcion VARCHAR(50) NOT NULL DEFAULT 'N/A',
    PRIMARY KEY (id_presentacion)
);

CREATE TABLE marca (
	id_marca INT AUTO_INCREMENT,
	descripcion VARCHAR(100) NOT NULL DEFAULT 'N/A',
    PRIMARY KEY (id_marca)
);

CREATE TABLE zona (
	id_zona INT AUTO_INCREMENT,
	descripcion VARCHAR(50) NOT NULL DEFAULT 'N/A',
    PRIMARY KEY (id_zona)
);
CREATE TABLE producto (
	id_producto INT AUTO_INCREMENT,
	id_marca INT,
	id_presentacion INT,
	id_proveedor INT,
	id_zona INT,
    id_categoria INT,
    nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(150) NOT NULL DEFAULT 'N/A',
    costo NUMERIC(10,2) NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    cantidad NUMERIC(10,0) NOT NULL DEFAULT 1, 
    fecha_entrada DATE NOT NULL,
    estado BOOLEAN NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_marca) REFERENCES marca(id_marca),
	FOREIGN KEY (id_presentacion) REFERENCES presentacion(id_presentacion),
	FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor),
  	FOREIGN KEY (id_zona) REFERENCES zona(id_zona),
  	FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);






