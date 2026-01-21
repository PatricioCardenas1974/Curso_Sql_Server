CREATE PROC AgregarCiente   -- creamos procedimiento
	@nombre VARCHAR (50),    --  creramos parametros entrada
	@direccion VARCHAR(50),
	@telefono VARCHAR(50),
	@email VARCHAR(50)
AS
BEGIN
	INSERT INTO Clientes(nombre, direccion, telefono, email)
	VALUES (@nombre, @direccion, @telefono, @email);
END;
 -- DROP PROCEDURE AgregarCiente
 EXEC AgregarCiente 'Juan Villalba', 'Avenida Principal 123', '54545454', 'juanvillalba@example.com';
 SELECT * FROM Clientes;

ALTER PROC AgregarCiente   -- modificarlo con la clausula alter
	@nombre VARCHAR (50),    --  creramos parametros entrada
	@direccion VARCHAR(50),
	@telefono VARCHAR(50),
	@email VARCHAR(50),
	@ciudad VARCHAR(50)
AS
BEGIN
	INSERT INTO Clientes(nombre, direccion, telefono, email, ciudad)
	VALUES (@nombre, @direccion, @telefono, @email, @ciudad);
END;

 EXEC AgregarCiente 'Juan Villalba', 'Avenida Principal 123', '54545454', 'juanvillalba@example.com', 'Bogota';
 SELECT * FROM Clientes;

  -- DROP PROCEDURE AgregarCiente     -- eliminamos procedimiento almacenado 'AgregarCliente'