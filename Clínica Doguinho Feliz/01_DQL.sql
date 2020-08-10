------------- Busca Específica
SELECT * FROM Pet WHERE Nome LIKE '%B%'

------------- Dado Específico
SELECT * FROM Pet WHERE IdRaca = 1;

------------- Total
SELECT * FROM Pet

------------- Crescente
SELECT * FROM Pet ORDER BY Nome ASC;

------------- Decrescente
SELECT * FROM Pet ORDER BY Nome DESC;

------------------JOINS------------------

SELECT 
	Pet.Nome,
	Raca.Descricao,
	Dono.Nome
FROM Pet
INNER JOIN Raca ON Pet.IdRaca = Raca.IdRaca
INNER JOIN Dono ON Pet.IdDono = Dono.IdDono
;
