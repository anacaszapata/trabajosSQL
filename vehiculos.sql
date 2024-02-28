CREATE DATABASE ejercicioVehiculos;
use  ejercicioVehiculos;

CREATE TABLE marcas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(45)
)

CREATE TABLE tipo_vehiculo(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_vehiculo VARCHAR(45),
    marcas_id INT
)

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(45),
    placa VARCHAR(45),
    colores_id INT,
    tipo_vehiculo_id INT,
    tipo_vehiculo_marcas_id INT
)

CREATE TABLE colores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(45)
)

INSERT INTO marcas(id,marca)VALUES
('Ford'),
('AKT');


INSERT INTO tipo_vehiculo(tipo_vehiculo)VALUES
('Moto'),
('Carro');

INSERT INTO vehiculos(modelo,placa)VALUES
('2021','FFF211'),
('2021','AAD234'),
('2021','GGH434'),
('2021','JHJ787'),
('2021','KLI876'),
('2021','JKI999'),
('2021','NNN777'),
('2021','BVB247'),
('2021','VBM991'),
('2021','QAA553');

INSERT INTO colores(color)VALUES
('Gris'),
('Negro')


ALTER TABLE vehiculos ADD FOREIGN KEY(colores_id) REFERENCES colores(id)


ALTER TABLE tipo_vehiculo ADD FOREIGN KEY(marcas_id) REFERENCES marcas(id)

ALTER TABLE vehiculos ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES tipo_vehiculo(id)

ALTER TABLE vehiculos ADD FOREIGN KEY (tipo_vehiculo_marcas_id) REFERENCES tipo_vehiculo(marcas_id)