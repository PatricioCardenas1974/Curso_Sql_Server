-- Creacion de trigger, actualice el campo stock de la tabla Productos 
-- cada vez que se inserta un detalle en la tabla DetalleVentas.

CREATE TRIGGER ActualizarStock
ON DetallesVentas
AFTER INSERT   -- cuando se ejecutara este trigger, osea despues de una insercion
AS
BEGIN    --  empieza cuerpo trigger
	UPDATE Productos  -- actualizar tabla Producto
	SET Stock = stock - inserted.cantidad   -- cambiar campo stock
	FROM Productos
	INNER JOIN inserted ON productos.ID_producto = inserted.ID_producto;  -- hacer un inner join con campo que se acaba de insertar 'inserted', lo relaciona mediante 
END;

INSERT INTO Ventas(ID_cliente, fecha, total)
VALUES (4, GETDATE(), 500.00);

INSERT INTO DetallesVentas(ID_venta, ID_producto, cantidad, precio) --- insertaremos para que posterior se ejecute nuestro trigger
VALUES (4, 2, 10, 50.00);

SELECT * FROM Productos;