SELECT DISTINCT  c.nombre, c.email
FROM Clientes c
JOIN Ventas v ON c.ID_cliente = v.ID_cliente
WHERE v.fecha > '2024'-01-01