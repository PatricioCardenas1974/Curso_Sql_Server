SELECT 
    l.Titulo,
    a.nombre_Apellido AS Autor
FROM Libros l
INNER JOIN Autores a ON l.ID_Autor = a.ID_Autor;
