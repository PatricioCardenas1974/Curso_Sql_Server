--  Subconsulta Escalares
SELECT
	nombre,
	precio,
	(SELECT AVG(precio) FROM productos) AS PrecioPromedio
FROM Productos;


--  Subconsulta de Lista
SELECT *
FROM Ventas
WHERE ID_cliente IN (SELECT ID_cliente FROM Clientes WHERE nombre LIKE 'A%');
	

--  Subconsulta Correlacionales
SELECT nombre
FROM Productos p
WHERE EXISTS (SELECT 1 FROM DetallesVentas dv WHERE dv.ID_producto = p.ID_producto AND dv.cantidad > 1 );


-- Subconsulta con el nombre del cliente (en otra tabla)
SELECT
	ID_venta,
	(SELECT nombre FROM clientes WHERE clientes.ID_cliente = ventas.ID_cliente) AS NombreCliente
FROM Ventas;

-- Subconsulta desde la clausula From

SELECT
	c.nombre,
	VentasTotales.TotalVentas
FROM Clientes c
JOIN (SELECT ID_cliente,
	SUM(total) AS TotalVentas
	FROM Ventas
	GROUP BY
	ID_cliente) AS VentasTotales
	ON c.ID_cliente = VentasTotales.ID_cliente;


 -- Subconsulta en clausula where
 -- productos vendidos al menos 1 vez
 SELECT
	nombre,
	precio
FROM
	Productos
WHERE ID_producto IN (SELECT ID_producto FROM DetallesVentas);