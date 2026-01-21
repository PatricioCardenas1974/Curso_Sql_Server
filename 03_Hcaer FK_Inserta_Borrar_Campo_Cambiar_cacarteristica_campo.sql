ALTER TABLE DetallesVentas
ADD CONSTRAINT FK_DetalleProducto
FOREIGN KEY (ID_producto) REFERENCES Productos(ID_producto);


ALTER TABLE DetallesVentas
ADD CONSTRAINT FK_DetalleVenta
FOREIGN KEY (ID_venta) REFERENCES Ventas(ID_venta);


ALTER TABLE Clientes
ADD ciudad VARCHAR(50);


/* Eliminar campo
ALTER TABLE Clientes
DROP COLUMN ciudad;  */


ALTER TABLE Productos
ALTER COLUMN precio DECIMAL (12,2) NOT NULL