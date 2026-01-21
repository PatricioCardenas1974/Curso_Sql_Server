/* CREATE VIEW nombre_vista AS
SELECT *
FROM Clientes;

SELECT * FROM  nombre_vista */

-- *******************************************

CREATE VIEW VistaVentaPorCliente AS    --  creo la vista
SELECT
	c.nombre AS NombreCliente,        -- pedir nombre cliente con su alias
	p.nombre AS NombreProducto,       --  pedir nombre producto con su alias
	SUM(d.cantidad) AS TotalCantidad ,    --  calcular la sumatoria de la cantidad con su alias
	SUM(d.precio * d.cantidad) AS TotalVentas  --  calcular total ventas echas por el cliente con su alias
FROM
	Ventas v                  -- lo consultamos de la tabla ventas con su alias
	INNER JOIN Clientes c ON v.ID_cliente = c.ID_cliente    --  relacion (mediante sus ID) con la tabla Clientes
	INNER JOIN DetallesVentas d ON d.ID_venta = v.Id_venta  --  relacion (mediante sus ID) con la tabla DetallesVentas
	INNER JOIN Productos p ON d.ID_producto = p.ID_producto  --  relacion (mediante sus ID) con la tabla Productos
GROUP BY
	c.nombre, p.nombre    --  agrupar por nombre del cliente y nombre del producto

/* SELECT * FROM VistaVentaPorCliente
WHERE TotalVentas > 500;  */

SELECT * FROM VistaVentaPorCliente;

DROP VIEW VistaVentaPorCliente;   --- Elimina la vista
