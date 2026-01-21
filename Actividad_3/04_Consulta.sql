CREATE VIEW Ultimas100Ventas AS  --- creo la vista Ultimas100Ventas
SELECT TOP 100                  -- ultima 100 filas con fecha más reciente
    v.ID_venta,
    v.fecha,
    c.ID_cliente,
    c.nombre AS NombreCliente,
    c.email,
    c.direccion,
    c.telefono,
    p.ID_producto,
    p.nombre AS NombreProducto,
    p.descripcion,
    dv.cantidad,
    dv.precio AS PrecioUnitario,
    (dv.cantidad * dv.precio) AS Subtotal,
    v.total AS TotalVenta
FROM Ventas v
JOIN Clientes c ON v.ID_cliente = c.ID_cliente    -- une datos del cliente
JOIN DetallesVentas dv ON v.ID_venta = dv.ID_venta   --  une detalles de cada producto vendido en esa venta
JOIN Productos p ON dv.ID_producto = p.ID_producto   -- añade datos del producto
ORDER BY v.fecha DESC;

SELECT * FROM Ultimas100Ventas;  --  consulta la vista creada