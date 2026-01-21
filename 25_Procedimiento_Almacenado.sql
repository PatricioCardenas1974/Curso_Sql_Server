CREATE PROC BuscarProductos AS   --- creo procedimiento
BEGIN                        -- empezar cuerpo del procedimiento almacenafdo
	SELECT *
	FROM Productos
	WHERE stock > 10;
END;                      --  fin del procedimiento almacenado

EXEC BuscarProductos;     -- ejecuto procedimiento



---- ejemplo procedimiento con pasó de parametros
CREATE PROC AgregarProducto
	@nombre varchar(50),
	@descripcion varchar(100),
	@precio decimal (10,2),
	@stock int
AS
BEGIN
	INSERT INTO Productos(nombre, descripcion, precio, stock)
	VALUES (@nombre,@descripcion,@precio, @stock );
END;

EXEC AgregarProducto 'ProductoX' , 'Descripcio productoX' , 99.00 , 50;

SELECT * FROM Productos


---- ejemplo procedimiento con parametros de salida
CREATE PROC ObtenerStockProducto
	@ID_producto INT,        --  variables a recibir, parametro entrada
	@stock INT OUTPUT     -- variables a recibir, parametro salida
AS
BEGIN
	SELECT @stock = stock    --  seleccionar el stock del parametro (@ID_producto) que los pasen y lo almacena en @stock
	FROM Productos
	WHERE ID_producto = @ID_producto;
END;


DECLARE @stock INT;      -- declaro variable
EXEC ObtenerStockProducto
	@ID_producto = 1,    --  le paso el id del producto que en este caso es 1
	@stock = @stock OUTPUT;
SELECT @stock AS StockDisponible;    --  por ultimo vamos a consultar el stock