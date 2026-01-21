SELECT * FROM Productos;

UPDATE Productos
SET precio = 1600
WHERE ID_producto = 1;



INSERT INTO Clientes(nombre, direccion, telefono, email, ciudad)
VALUES ('Lucio Piñeros', 'Calle Central 23', '5665-5454', 'lucio@example.com', 'Bogota');

SELECT * FROM Clientes;

DELETE FROM Clientes
WHERE ID_cliente = 11;

/*  TRUNCATE TABLE Clientes;    Borra todo y no por filas   */