INSERT INTO Productos (nombre, descripcion, precio, stock) VALUES
	('Laptop','Laptop de 15 pulgadas',150.00,20),
	('Mouse','Mouse inalambrico',50.00,20),
	('Teclado','Teclado Mecánico',60.00,14),
	('Monitor','Monitor de 14 pulgadas',50.00,20);

SELECT * FROM Productos;

INSERT INTO Productos (nombre, descripcion, precio, stock) VALUES
	('Impresora','Impresora laser',300.00,15),
	('Escaner','escaner de documentos',150.00,25),
	('Mochila','Mochila para laptop',45.00,40),
	('Auriculares','auriculares con cancelación de ruido',80.00,35),
	('Camara','Camara digital',400.00,10),
	('Proyector','proyector portatil',500.00,5);

/* DELETE FROM Productos; */

DBCC CHECKIDENT ('Productos', RESEED, 0);

INSERT INTO Clientes (nombre, direccion, telefono, email, ciudad) VALUES
	('Juan Perez', 'Calle Falsa 123', '555-1234', 'juan@example.com', 'Ciudad de Mexico'),
	('Maria Lopez', 'Av. Siempreviva 456', '555-5678', 'maria@example.com', 'Bogota'),
	('Carlos Garcia', 'Boulevard de los Sueños 789', '555-9012', 'carlos@example.com', 'Medellin'),
	('Ana Torres', 'Camino Real 123', '555-3456', 'ana@example.com', 'Buenos Aires'),
	('Pedro Martinez', 'Plaza Central 1', '555-6789', 'pedro@example.com', 'Caracas'),
	('Laura Fernandez', 'Calle Luna 99', '5556-4321', 'laura@example.com', 'Lima'),
	('Sofia Ruiz', 'Av. Libertad 45', '555-1122', 'sofia@example.com', 'Caracas'),
	('Diego Jimenez', 'Calle sol 33', '555-3344', 'diego@example.com', 'Cancun'),
	('Cristian Gomez', 'Camino Viejo 77', '555-5566', 'cristian@example.com', 'Bogota'),
	('Roberto Diaz', 'Calle Mar 22', '555-7788', 'roberto@example.com', 'Ciudad de Mexico');

DELETE FROM Clientes
DBCC CHECKIDENT ('Clientes', RESEED, 0);
SELECT * FROM Clientes;

DBCC CHECKIDENT ('Productos', RESEED, 0);

DELETE FROM Ventas

INSERT INTO Ventas (ID_cliente, fecha, total) VALUES
	(1, '20240715',1275.00),
	(2, '20240716',125.00),
	(3, '20240717',275.00),
	(4, '20240718',450.00),
	(5, '20240719',650.00),
	(6, '20240720',820.00),
	(7, '20240721',910.00),
	(8, '20240722',230.00),
	(9, '20240723',180.00),
	(10, '20240724',300.00);

DELETE FROM Ventas
DBCC CHECKIDENT ('Ventas', RESEED, 0);
SELECT * FROM Ventas;

INSERT INTO DetallesVentas (ID_venta, ID_producto, cantidad, precio) VALUES
	(1,1,1,1500.00),
	(1,2,1,25.00),
	(2,2,2,25.00),
	(3,3,3,75.00),
	(4,4,1,200.00),
	(5,5,1,300.00),
	(6,6,1,150.00),
	(7,7,1,45.00),
	(8,8,1,80.00),
	(9,9,1,400.00);

SELECT * FROM DetallesVentas;