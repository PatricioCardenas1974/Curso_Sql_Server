SELECT nombre, LEN(nombre) AS LongitudNombre
FROM Productos;

SELECT nombre, SUBSTRING(nombre, 1, 3) AS PrefijoNombre
FROM Productos;

SELECT nombre, UPPER(nombre) AS NombreMayuscula,  LOWER(nombre) AS NombreMinuscula
FROM Productos;

SELECT  CONCAT(nombre, ' - ' , descripcion) AS ProductoDescripcion
FROM Productos;