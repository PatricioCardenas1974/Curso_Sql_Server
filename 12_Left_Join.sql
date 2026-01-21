SELECT
	v.ID_venta,
	v.fecha,
	p.nombre AS Producto,
	dv.cantidad,
	dv.precio

FROM
	Ventas v
LEFT JOIN   -- Es como datos de la izquierda más interseccion en conjuntos
	DetallesVentas dv ON v.ID_venta = dv.ID_venta
LEFT JOIN   -- Es como datos de la izquierda más interseccion en conjuntos
	Productos p ON dv.ID_producto = p.ID_producto;