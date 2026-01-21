-- SUM
SELECT
	SUM(total) AS TotalIngresos
FROM Ventas;

-- AVG
SELECT
	AVG(precio) AS PrecioPromedio
FROM Productos;

-- COUNT
SELECT
	COUNT(10) AS TotalClientes
FROM Clientes;

--  MIN
SELECT
	MIN(precio) AS PrecioMinimo
FROM Productos;

--  MAX
SELECT
	MAX(precio) AS PrecioMaximo
FROM Productos;


-- Agrupacion filas mismos valores en columnas especificadas
SELECT
	p.nombre AS Nombreproducto,
	SUM (dv.cantidad) AS TotalVendidos
FROM Productos p
JOIN
	DetallesVentas dv ON p.ID_producto = dv.ID_producto
GROUP BY
	p.nombre
HAVING
	SUM (dv.cantidad) >1;