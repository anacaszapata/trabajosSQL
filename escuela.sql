CREATE TABLE estudiantes(
    id int primary key AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(46)
)


CREATE TABLE materias(
    id int primary key AUTO_INCREMENT,
    nombre VARCHAR(45)
)



CREATE TABLE notas(
    id int primary key AUTO_INCREMENT,
    nombre VARCHAR(45),
    materia_id int,
    CONSTRAINT fk_nota_materia FOREIGN KEY (materia_id) REFERENCES materias(id)
)


CREATE TABLE materias_x_estudiante(
    id int primary key AUTO_INCREMENT,
     estudiante_id INT,
     materia_id INT,
     CONSTRAINT fk_estudiante_materia FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
     CONSTRAINT fk_materia_estudiante FOREIGN KEY (materia_id) REFERENCES materias(id)
)


INSERT INTO estudiantes (id, nombre, apellido) VALUES
(1, 'Juan', 'Perez'),
(2, 'Maria', 'Garcia'),
(3, 'Pedro', 'Lopez'),
(4, 'Ana', 'Martinez'),
(5, 'Carlos', 'Gonzalez'),
(6, 'Laura', 'Rodriguez'),
(7, 'Manuel', 'Hernandez'),
(8, 'Sofia', 'Diaz'),
(9, 'Jorge', 'Sanchez'),
(10, 'Luis', 'Torres');


INSERT INTO materias (id, nombre) VALUES
(1, 'Matemáticas'),
(2, 'Historia'),
(3, 'Ciencias'),
(4, 'Literatura'),
(5, 'Arte'),
(6, 'Música'),
(7, 'Física'),
(8, 'Química'),
(9, 'Biología'),
(10, 'Geografía');


INSERT INTO notas (id, nombre, materia_id) VALUES
(1, 'Nota 1', 1),
(2, 'Nota 2', 2),
(3, 'Nota 3', 3),
(4, 'Nota 4', 4),
(5, 'Nota 5', 5),
(6, 'Nota 6', 6),
(7, 'Nota 7', 7),
(8, 'Nota 8', 8),
(9, 'Nota 9', 9),
(10, 'Nota 10', 10);

INSERT INTO materias_x_estudiante (id, estudiante_id, materia_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);