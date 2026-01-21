SELECT 
    CAST(fecha AS DATE) AS Fecha,       -- Se convierte a solo fecha (sin hora)
    SUM(total) AS TotalVentasPorDia     -- Suma total de ventas por día
FROM Ventas
GROUP BY CAST(fecha AS DATE)            -- Agrupa por día
ORDER BY Fecha;

SELECT 
    CAST(fecha AS DATE) AS Fecha,   -- calcula total ventas x dia
    SUM(total) AS TotalVentasPorDia
FROM Ventas
GROUP BY CAST(fecha AS DATE)
HAVING SUM(total) = (
    SELECT MAX(TotalPorDia)     --- encuentra el maximo por dia
    FROM (
        SELECT 
            CAST(fecha AS DATE) AS Fecha,
            SUM(total) AS TotalPorDia
        FROM Ventas
        GROUP BY CAST(fecha AS DATE)
    ) AS Subconsulta
);