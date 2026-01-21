CREATE TABLE categorias(
	ID INT,
	Nombre NVARCHAR(100),
	ID_Padre INT NULL  -- REferencia ala categoria padre
);

INSERT INTO Categorias(ID, Nombre, ID_Padre)
VALUES
	(1,'Electronica',NULL),
	(2,'Computadoras',1),
	(3,'Telefonos',1),
	(4,'Laptops',2),
	(5,'Escritorios',2),
	(6,'Smartphones',3),
	(7,'Accesorios',3);

SELECT * FROM Categorias;

WITH CategoriaJerarquica AS(
	-- Parte ancla: Selecciona las categirias raiz (sin categoria padre)
	SELECT ID,Nombre, ID_Padre, 1 AS Nivel
	FROM Categorias
	WHERE ID_Padre IS NULL

	UNION ALL

	-- Parte recursiva: Selecciona las subcategorias de las categorias actuales
	SELECT c.ID, c.Nombre, c.ID_Padre, cj.Nivel+1
	FROM Categorias c
	JOIN CategoriaJerarquica cj ON c.ID_Padre = cj.ID
)
-- Seleccion final: Muestra todas las categorias con sus niveles
SELECT ID,Nombre, ID_Padre, Nivel
FROM CategoriaJerarquica
ORDER BY Nivel, ID;