WITH ProductosCTE AS(
	SELECT *
	FROM Productos
	WHERE precio >50
)

SELECT * 
FROM ProductosCTE;

-- ***************************************

WITH VentasPorClientes AS (
	SELECT ID_cliente, SUM(total) AS TotalCompras    ---Calcula el total de compras por cliente
	FROM Ventas
	GROUP BY ID_cliente                        --  Los agrupa por cliente
),
ClientesFiltrados AS (                         --  Filtra los clientes 
	SELECT c.ID_cliente, c.nombre AS NombreCLiente, v.TotalCompras
	FROM Clientes c
	JOIN VentasPorClientes v ON c.ID_cliente = v.ID_cliente  -- Filtra los clientes con total de compras mayores a mil
	WHERE v.TotalCompras > 1000
)

SELECT *
FROM ClientesFiltrados;

SELECT * FROM Clientes;
SELECT * FROM DetallesVentas;
SELECT * FROM Productos;
SELECT * FROM Ventas;