-- INSERTS simples para Autores
INSERT INTO Autores (nombre_Apellido) VALUES ('Gabriel García Márquez');
INSERT INTO Autores (nombre_Apellido) VALUES ('Isabel Allende');
INSERT INTO Autores (nombre_Apellido) VALUES ('Mario Vargas Llosa');
INSERT INTO Autores (nombre_Apellido) VALUES ('Jorge Luis Borges');
INSERT INTO Autores (nombre_Apellido) VALUES ('Laura Esquivel');

-- INSERTS  para Libros (usando los ID_Autor asumidos: 1..5)
INSERT INTO Libros (Titulo, ID_Autor, Año_Publicacion) VALUES
('Cien años de soledad', 1, 1967),
('El amor en los tiempos del cólera', 1, 1985),
('La casa de los espíritus', 2, 1982),
('Conversación en La Catedral', 3, 1969),
('Ficciones', 4, 1944),
('Rayuela', 3, 1963),
('Como agua para chocolate', 5, 1989),
('El Aleph', 4, 1949);

-- INSERTS para Prestamos (referenciando ID_Libro asumidos: 1..8)
INSERT INTO Prestamos (ID_Libro, Fecha_Prestamo, Fecha_Devolucion) VALUES
(1, '20250901 10:00:00', '20250915 18:00:00'),
(3, '20250905 14:30:00', '20250912 12:00:00'),
(5, '20250910 09:00:00', '20250924 17:00:00'),
(2, '20250911 11:15:00', '20250918 11:15:00'),
(7, '20250915 16:45:00', '20250929 16:45:00'),
(8, '20250920 08:00:00', '20251004 08:00:00');


-- Consultas para verificar los datos insertados
SELECT * FROM Autores;
SELECT * FROM Libros;
SELECT * FROM Prestamos;

-- SE ingreso un autor con libro posterior al año 2.000
INSERT INTO Autores (nombre_Apellido) VALUES ('Carlos Ruiz Zafon');

INSERT INTO Libros (Titulo, ID_Autor, Año_Publicacion) VALUES
('La Sombra del Viento', 6, 2001);


-- Consultas para verificar los datos insertados
SELECT * FROM Autores;
SELECT * FROM Libros;
SELECT * FROM Prestamos;