-- Primera consulta
WITH VentasPorCliente AS (
    SELECT v.ID_cliente, SUM(v.total) AS TotalVentas    -- suma de total para cada cliente
    FROM Ventas v
    GROUP BY v.ID_cliente          --- agrupa las ventas x cliente
)
SELECT
    c.nombre,
    c.email,
    vpc.TotalVentas
FROM VentasPorCliente vpc
JOIN Clientes c ON c.ID_cliente = vpc.ID_cliente
ORDER BY vpc.TotalVentas DESC;

-- Segunda consulta (debes volver a declarar la CTE para obener los 5 clientes con mayor vebta )
WITH VentasPorCliente AS (
    SELECT v.ID_cliente, SUM(v.total) AS TotalVentas    -- suma de total para cada cliente
    FROM Ventas v
    GROUP BY v.ID_cliente       --- agrupa las ventas x cliente
)
SELECT TOP 5
    c.nombre,
    c.email,
    vpc.TotalVentas
FROM VentasPorCliente vpc
JOIN Clientes c ON c.ID_cliente = vpc.ID_cliente
ORDER BY vpc.TotalVentas DESC;
