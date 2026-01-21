CREATE TABLE AuditoriaVentas(
	ID_venta INT PRIMARY KEY,
	fecha_cambio DATETIME,
	antiguo_total DECIMAL (12,2),
	nuevo_total DECIMAL (12,2)
)

CREATE TRIGGER RegistrarCambioVentas
ON Ventas
AFTER UPDATE
AS
BEGIN
	INSERT INTO AuditoriaVentas (ID_venta, fecha_cambio, antiguo_total, nuevo_total)
	SELECT
		d.ID_venta,
		GETDATE(),
		d.total,
		i.total
	FROM
	deleted d
	INNER JOIN inserted i ON d.ID_venta = i.ID_venta;
END;


SELECT * FROM Ventas


UPDATE Ventas
SET total = 450.00
WHERE ID_venta = 10;

SELECT * FROM Ventas
SELECT * FROM AuditoriaVentas