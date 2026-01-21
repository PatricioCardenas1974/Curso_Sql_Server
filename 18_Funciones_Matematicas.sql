SELECT precio, ABS(precio - 100) AS DiferenciaAbsoluta
FROM Productos;

SELECT precio, ROUND(precio , 1) AS PrecioRedondeado
FROM Productos;

SELECT CEILING(5.67)

SELECT FLOOR(5.67)


SELECT precio, POWER(precio , 2) AS PrecioCuadrado
FROM Productos;