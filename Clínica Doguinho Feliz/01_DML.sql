-------------------------------
INSERT INTO Clinica (Nome, Endereco) VALUES ('Doguinho Feliz', 'Avenida do Breu, nº 45');
SELECT * FROM Clinica

INSERT INTO Veterinario(IdClinica, Nome, CRV) VALUES (1, 'Doutor Paulo Brandão', '4312-432');
SELECT * FROM Veterinario

INSERT INTO TipoPet(Descricao) VALUES ('Cachorro');
SELECT * FROM TipoPet

INSERT INTO Raca(Descricao) VALUES ('Yorkshire');
SELECT * FROM Raca

INSERT INTO Dono(Nome) VALUES ('Alex');
SELECT * FROM Dono

INSERT INTO Pet(IdRaca, IdDono, Nome, DataNascimento) VALUES (1, 1, 'Tiago', '2012-08-05T00:00:00');
SELECT * FROM Pet



--DELETE FROM Raca
--DELETE FROM Clinica WHERE IdClinica = 1;
-- UPDATE tabela SET (informação aqui) WHERE IdTabela = x;