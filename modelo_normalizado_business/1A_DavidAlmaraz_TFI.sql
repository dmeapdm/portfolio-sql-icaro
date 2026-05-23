DROP DATABASE IF EXISTS business;
CREATE DATABASE business CHARACTER SET utf8mb4;
USE business;

CREATE TABLE cliente (
	Id_cliente INT PRIMARY KEY NOT NULL,
    Nom_cliente VARCHAR (100),
    Ciudad VARCHAR (50)
);

CREATE TABLE ordenes (
	id_orden INT PRIMARY KEY NOT NULL,
    Fecha DATE,
    Id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE articulo (
	Id_art INT PRIMARY KEY NOT NULL,
    Nom_art VARCHAR (100),
    Precio DECIMAL (10,2)
);

CREATE TABLE detalle_orden (
	Id_orden INT,
    Id_art INT,
    Cant INT,
    PRIMARY KEY (Id_orden, Id_art),
    FOREIGN KEY (Id_orden) REFERENCES ordenes (Id_orden),
    FOREIGN KEY (Id_art) REFERENCES articulo (Id_art)
);