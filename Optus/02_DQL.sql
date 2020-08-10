------------- Busca Específica
SELECT * FROM Artista WHERE Nome LIKE '%I%'

------------- Dado Específico
SELECT * FROM Artista WHERE IdArtista = 2;

------------- Total
SELECT * FROM Artista 

------------- Crescente
SELECT * FROM Artista ORDER BY Nome ASC;

------------- Decrescente
SELECT * FROM Artista ORDER BY Nome DESC;

------------------JOINS------------------

SELECT 
	Album.Nome,
	Artista.Nome
FROM Album
INNER JOIN Artista ON Album.IdArtista = Artista.IdArtista
;
