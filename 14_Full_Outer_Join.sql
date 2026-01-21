SELECT
	v.ID_venta,
	v.fecha,
	p.nombre AS Producto,
	dv.cantidad,
	dv.precio

FROM
	Ventas v
FULL OUTER JOIN   -- Es como union en conjuntos
	DetallesVentas dv ON v.ID_venta = dv.ID_venta
FULL OUTER JOIN   -- Es como union en conjuntos
	Productos p ON dv.ID_producto = p.ID_producto;

