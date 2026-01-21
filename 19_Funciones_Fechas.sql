SELECT GETDATE()  AS FechaActual

SELECT Fecha, DATEADD(day, 30, fecha) AS FechaMas30Dias
FROM Ventas

SELECT Fecha, DATEDIFF(day, fecha, GETDATE()) AS DiasDesdeVenta
FROM Ventas

SELECT Fecha, FORMAT(fecha, 'dd/MM/yyyy') AS Formateada
FROM Ventas