SELECT * FROM Autores
SELECT * FROM Libros
SELECT * FROM Prestamos

SELECT
	l.ID_Libro,
	l.Titulo,
	a.nombre_Apellido,
	l.Año_Publicacion
FROM
	Libros l	
INNER JOIN
	Autores a ON a.ID_Autor = l.ID_Autor;
