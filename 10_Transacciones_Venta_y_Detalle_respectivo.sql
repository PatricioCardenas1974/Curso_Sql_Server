
SELECT * FROM Ventas
SELECT * FROM Productos


BEGIN TRANSACTION

INSERT INTO Ventas(ID_cliente, fecha, total)     -- Insertar venta
VALUES (2, GETDATE(), 300.00)

DECLARE @ID_venta INT;        -- Declarar variable
SET @ID_venta = SCOPE_IDENTITY();      -- Asignar valor del ultimo valor insertado

INSERT INTO DetallesVentas (ID_venta, ID_producto, cantidad, precio)    --  Insertar detalles de esa venta
VALUES (@ID_venta, 1, 2, 150.00)

UPDATE Productos    --Actualizar tabla 

SET stock = stock - 2  --  actualizar el stock que se ha vendido
WHERE ID_producto = 1; -- Filtra ese Id_producto ya que es el ingresado

COMMIT  -- confirmarlo

ROLLBACK  -- deshacer todo


SELECT * FROM Ventas
SELECT * FROM Productos