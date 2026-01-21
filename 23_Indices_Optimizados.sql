CREATE CLUSTERED INDEX idx_nombre_categoria  --  creo indice clusterizado en tabla Categorias ya que no lo tenia
ON  Categorias(nombre);


CREATE NONCLUSTERED INDEX idx_fecha_venta
ON Ventas(fecha);

SELECT * FROM Ventas

EXEC sp_rename 'Ventas.idx_fecha_venta', 'idx_fecha', 'INDEX';  -- renombrar indice

CREATE INDEX idx_fecha_total
ON Ventas(Fecha, Total);

DROP INDEX idx_fecha_total ON Ventas;  ---Eliminar indice
