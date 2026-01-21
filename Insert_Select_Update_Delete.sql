INSERT INTO Clientes (nombre, direccion, telefono, email, ciudad)
VALUES ('Juan Perez', 'Calle larga 69', '555-5454', 'juan.perez@example.com', 'Santiago');


SELECT * from Clientes;

SELECT nombre from Clientes;

UPDATE Clientes
SET ciudad = 'Lima'
WHERE ID_cliente = 1;

DELETE FROM Clientes;

DELETE FROM Clientes
WHERE ID_cliente = 1;