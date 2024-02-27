--1 listado de las personas que tengan 20 años de edad
SELECT nombres,apellidos,edad FROM users WHERE edad = 20

-- 2listado de todas las mujeres que tengan entre 20 y 30 años de edad
SELECT nombres,genero,edad FROM users WHERE genero = 'M' AND edad > 19 AND edad < 31

-- 3la persona con menos edad de la base de datos
SELECT nombres,MIN(edad) FROM users 

-- 4Cuantos usuarios hay registrados en la base de datos
SELECT COUNT(id) FROM users

-- 5Traer los 5 primeros usuarios de la base de datos
SELECT * FROM users ORDER BY id LIMIT 5

-- 6traer los ultimos 10 usuarios de la base de datos
SELECT * FROM users ORDER BY id DESC LIMIT 10

-- 7listar usuarios que su correo finalice en .net
SELECT nombres,correo FROM users WHERE correo LIKE '%.net'

-- 8listar los usuarios que no vivan en colombia
SELECT nombres,pais FROM users WHERE pais !='colombia'

-- 9listar los usuarios que no vivan en ecuador y panama
SELECT nombres,pais FROM users WHERE pais != 'ecuador' AND pais != 'panama'

-- 10cuantos(numeros)usuarios son de colombia y les gusta el ROck
SELECT id,pais,musica FROM users  WHERE pais = 'colombia' and musica = 'rock'

-- 11 actualizar el genero musical de todos los usarios de la base de datos de metal a carranga
UPDATE users set musica='carranga' WHERE musica= 'metal'

-- 12listado de hombres que les gusta la carranga sean de colombia y tengan entre 10 y 20 años de edad
SELECT nombres,edad,genero,musica FROM users WHERE genero='H'AND musica='carranga' AND edad BETWEEN 10 AND 20

-- 13 actualizar todos los usuarios que tengan 99 años su nuevo genero musical favorito sera la carranga
UPDATE users set musica ='carranga' where edad = 99

SELECT musica from users where edad = 99

-- 14listar todos los usuarios que inicie con a A
SELECT nombres FROM users where nombres LIKE 'a%'

-- 15Listar todos los usuarios que su apellido finalice en z Z
SELECT apellidos FROM users where apellidos LIKE '%z'


-- 16Actualizar los usuarios que tengan 50 años de edad su nuevo genero musical sera NULL
UPDATE users set musica = '' WHERE edad = 50

-- 17Listar todos los usuarios que su genero musical sea igual a NULL

SELECT nombres,musica FROM users where musica= ''

-- 18cual es el resultado de la suma de todas las edades de la base de datos

SELECT SUM(edad)FROM users

-- 19cuantos usuarios tenemos registrados de ecuador

SELECT COUNT(id) FROM users WHERE pais= 'ecuador'

-- 20cuantos usuarios son de colombia y les gusta el vallenato
SELECT nombres,pais,musica FROM users where pais='colombia' AND musica= 'vallenato'