SELECT 
    p.ID_Prestamo,
    l.Titulo,
    a.nombre_Apellido AS Autor,
    p.Fecha_Prestamo,
    p.Fecha_Devolucion
FROM Prestamos p
INNER JOIN Libros l ON p.ID_Libro = l.ID_Libro
INNER JOIN Autores a ON l.ID_Autor = a.ID_Autor
WHERE p.Fecha_Devolucion > GETDATE();