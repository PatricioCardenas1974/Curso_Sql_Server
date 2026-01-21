SELECT
    p.id_producto,
    p.nombre,
    p.descripcion,
    p.precio,
    p.stock,
    (SELECT COUNT(*)   --  La subconsulta (por cada fila lo mostrara en una columna)
     FROM Productos    -- El  minimo de stock en este caso se considero 15
     WHERE stock < 15) AS TotalProductosBajoMinimo
FROM Productos p
WHERE p.stock < 15;  