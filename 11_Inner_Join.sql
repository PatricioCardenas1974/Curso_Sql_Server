SELECT
	v.ID_venta,
	v.fecha,
	p.nombre AS Producto,
	dv.cantidad,
	dv.precio

FROM
	Ventas v
INNER JOIN
	DetallesVentas dv ON v.ID_venta = dv.ID_venta
INNER JOIN
	Productos p ON dv.ID_producto = p.ID_producto;