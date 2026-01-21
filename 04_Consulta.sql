CREATE VIEW VentasPorCliente AS
SELECT c.nombre AS NombreCliente,
	   p.nombre AS NombreProducto,
	   SUM(d.cantidad) as TotalCantidad,
	   SUM(d.precio * d.cantidad) as TotalVentas

FROM Ventas v
	INNER JOIN Clientes c ON v.ID_cliente = c.ID_cliente
	INNER JOIN DetallesVentas d ON d.ID_venta = v.ID_venta
	INNER JOIN Productos p ON d.ID_producto = p.ID_producto
GROUP BY 