
CREATE TRIGGER ActualizarStockManejoErrores    -- trigger se ejecuta despues de hacer insercion en la tabla Detralleventas
ON DetalleSVentas
AFTER INSERT   -- SE HARA justo despues de una insercioin
AS
BEGIN    --- el cuerpo
	BEGIN TRY   --para capturar errores
		--  actualizando el stock del producto
		UPDATE Productos
		SET stock = stock - i.cantidad   --  reducir en la cantidad que fue vendida, en tes caso la ' i '
		FROM Productos p
		INNER JOIN inserted i ON p.ID_producto = i.ID_producto;  -- combinacion con el registro insertado y lo relaciona con el signo =

		-- comprobar si hay stock negativo
		IF EXISTS (SELECT 1 FROM Productos WHERE stock < 0)

		BEGIN
			RAISERROR ('Error: Stock negativo detectado', 16, 1)
			ROLLBACK TRANSACTION; 
		END

	END TRY

	BEGIN CATCH   --  el posible error muestra un mensaje aqui
		PRINT 'Se ha producido un error al actualizar stock: ' + ERROR_MESSAGE();
		ROLLBACK TRANSACTION;
	END CATCH
END


--  probar el trigger
SELECT * FROM Productos  --  SE vendera el Proyector con ID 10 con un stock 6 para que sea negativo

INSERT INTO Ventas(ID_cliente, fecha, total)
VALUES (5, GETDATE(), 3000);

SELECT * FROM DetallesVentas

INSERT INTO DetallesVentas(ID_venta, ID_producto, cantidad, precio)
VALUES (5, 10, 6, 500);
