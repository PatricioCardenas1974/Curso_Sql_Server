create trigger PrevenirEliminacionCliente
ON Clientes
INSTEAD OF DELETE
AS BEGIN
	-- una subconsulta que devuelve si se cumple una condicion que el cliente tenga una venta	
	IF EXISTS (SELECT 1 FROM Ventas WHERE Ventas.ID_cliente IN (SELECT ID_cliente FROM deleted))
	BEGIN
		PRINT('No se puede eliminar el cliente porque tiene ventas asociadas')
	END
	ELSE
	BEGIN 
		DELETE FROM Clientes WHERE ID_cliente IN (SELECT ID_cliente FROM deleted)
	END
END;

DELETE FROM Clientes WHERE ID_cliente = 4;