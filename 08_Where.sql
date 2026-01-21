SELECT * FROM Productos
WHERE ID_producto = 3;

SELECT * FROM Productos
WHERE precio > 100;

SELECT * FROM Productos
WHERE precio <> 1600;

SELECT * FROM Productos
WHERE precio > 100  AND stock > 10;

SELECT * FROM Productos
WHERE precio < 100  OR stock < 5;

SELECT * FROM Productos
WHERE NOT precio = 150;

SELECT * FROM Productos
WHERE precio BETWEEN 200 AND 300;

SELECT * FROM Productos
WHERE ID_producto IN (1,2 ,3 ,4, 5 ,6 ,7);

SELECT * FROM Clientes
WHERE direccion LIKE 'Calle%';