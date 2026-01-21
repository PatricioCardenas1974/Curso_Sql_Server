SELECT * FROM Autores
SELECT * FROM Libros
SELECT * FROM Prestamos


SELECT
	l.Titulo,
	p.Fecha_Prestamo,
	p.Fecha_Devolucion
FROM Libros l	 
RIGHT JOIN
	Prestamos p ON l.ID_Libro = p.ID_Libro
	-- WHERE l.ID_Libro IS NULL;   -- casos sin coincidencia 