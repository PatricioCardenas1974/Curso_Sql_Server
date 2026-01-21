SELECT * FROM Autores
SELECT * FROM Libros
SELECT * FROM Prestamos


SELECT
	a.nombre_Apellido,
	l.Titulo
FROM Autores a	 
LEFT JOIN
	Libros l ON a.ID_Autor = l.ID_Autor;