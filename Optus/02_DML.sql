
INSERT INTO Estilo(Nome) VALUES ('K-pop');
SELECT * FROM Estilo

INSERT INTO Artista(IdEstilo,Nome) VALUES (1, 'Iz*one');
SELECT * FROM Artista

INSERT INTO Album(IdArtista, Nome, DataLancamento, Localizacao, QtdMinutos, Ativo )
VALUES ('3', 'Oneiric Diary', '2020-06-15T00:00:00', 'Coréia do Sul', '24', 'Sim');
SELECT * FROM Album

INSERT INTO EstiloAlbum(IdAlbum, IdEstilo) VALUES ('4', '1');
SELECT * FROM EstiloAlbum

INSERT INTO Usuario(Nome, Permissao, Email, Senha) VALUES ('Maria', 'User', 'Maria@gmail.com', '12345678');
SELECT * FROM Usuario

