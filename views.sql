-- 1) ejercicio uno con view y procedimientos almacenados
CREATE TABLE estudiantes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    materia_favorita_id INT
);

INSERT INTO estudiantes (nombre, apellido, materia_favorita_id)
VALUES ('test', 'test apellido', 1);

CREATE TABLE materia_favorita (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);


INSERT INTO materia_favorita (nombre)
VALUES ('ingles');

CREATE VIEW vista_estudiantes_materia_favorita AS
SELECT estudiantes.nombre AS nombre_estudiante, materia_favorita.nombre AS nombre_materia_favorita 
FROM estudiantes
JOIN materia_favorita ON estudiantes.materia_favorita_id = materia_favorita.id;

SELECT * FROM vista_estudiantes_materia_favorita;

CREATE PROCEDURE inserto_estudiante (
    IN p_nombre VARCHAR(45),
    IN p_apellido VARCHAR(45),
    IN p_materia_favorita_id INT
)
BEGIN
    INSERT INTO estudiantes (nombre, apellido, materia_favorita_id)
    VALUES (p_nombre, p_apellido, p_materia_favorita_id);
END

-- 2)Ejercicio con view y procedimientos almacenados

CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    departamento_id INT
);


INSERT INTO empleados (nombre, apellido, departamento_id)
VALUES ('Victor', 'Mejia', 1);


CREATE TABLE departamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);


INSERT INTO departamentos (nombre)
VALUES ('Desarrollo');

CREATE VIEW vista_empleados_departamentos AS
SELECT empleados.nombre AS nombre_empleado, departamentos.nombre AS nombre_departamentos
FROM empleados
JOIN departamentos ON empleados.departamento_id = departamentos.id;

SELECT * FROM vista_empleados_departamentos;


CREATE PROCEDURE actualizarApellidos()
BEGIN
    UPDATE usuarios SET apellido = CONCAT(apellido, '_Nuevo');
END //

CALL actualizarApellidos();

-- 3) Ejercicio de view y procedimientos almacenados

CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    precio DECIMAL(10, 2)
);


INSERT INTO productos (nombre, precio)
VALUES ('Laptop', 1200.00);

CREATE TABLE proveedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    direccion VARCHAR(100)
);


INSERT INTO proveedores (nombre, direccion)
VALUES ('Proveedor A', 'Calle 123');

CREATE VIEW vista_productos_proveedores AS
SELECT productos.nombre AS nombre_producto, productos.precio, proveedores.nombre AS nombre_proveedor, proveedores.direccion
FROM productos
JOIN proveedores ON productos.id = proveedores.id;


CREATE PROCEDURE insertar_producto_proveedor (
    IN p_nombre_producto VARCHAR(45),
    IN p_precio DECIMAL(10, 2),
    IN p_nombre_proveedor VARCHAR(45),
    IN p_direccion_proveedor VARCHAR(100)
)
BEGIN
   
    INSERT INTO productos (nombre, precio)
    VALUES (p_nombre_producto, p_precio);

    
    INSERT INTO proveedores (nombre, direccion)
    VALUES (p_nombre_proveedor, p_direccion_proveedor);
END //

CALL insertar_producto_proveedor('Impresora', 399.99, 'Proveedor B', 'Calle 456');


-- 4) Ejercicio con view y procedimiento almacenado
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    direccion VARCHAR(100),
    ciudad VARCHAR(45),
    telefono VARCHAR(45)
);

INSERT INTO clientes (nombre, direccion, ciudad, telefono)
VALUES ('Ana', 'Calle 123', 'Envigado', '1234567891');

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    fecha_pedido DATE
);

INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha_pedido)
VALUES (1, 1, 2, '2024-03-01');

CREATE VIEW vista_pedidos_clientes AS
SELECT c.nombre AS nombre_cliente, c.direccion, c.ciudad, c.telefono,
       p.id AS pedido_id, p.producto_id, p.cantidad, p.fecha_pedido
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id;



CREATE PROCEDURE insertar_pedido (
    IN p_cliente_id INT,
    IN p_producto_id INT,
    IN p_cantidad INT,
    IN p_fecha_pedido DATE
)
BEGIN
   
    INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha_pedido)
    VALUES (p_cliente_id, p_producto_id, p_cantidad, p_fecha_pedido);
END //


CALL insertar_pedido(1, 2, 3, '2024-03-05');

-- 5) Ejercicio de view y procedimiento almacenado

CREATE TABLE libros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45),
    autor VARCHAR(45),
    categoria_id INT
);

INSERT INTO libros (titulo, autor, categoria_id)
VALUES ('Aranjuez', 'Gilmer Mesa', 1);


CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

INSERT INTO categorias (nombre)
VALUES ('Novela');

CREATE VIEW vista_libros_categorias AS
SELECT l.id AS id_libro, l.titulo, l.autor, c.nombre AS categoria
FROM libros l
JOIN categorias c ON l.categoria_id = c.id;



CREATE PROCEDURE insertar_libro (
    IN p_titulo VARCHAR(45),
    IN p_autor VARCHAR(45),
    IN p_categoria_id INT
)
BEGIN
    
    INSERT INTO libros (titulo, autor, categoria_id)
    VALUES (p_titulo, p_autor, p_categoria_id);
END //

CALL insertar_libro('Cien años de soledad', 'Gabriel García Márquez', 1);



