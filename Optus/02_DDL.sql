--Criando banco optus

CREATE DATABASE optus;
-------------------------------------------------
Use optus;
------------------------------------------------
CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,

	Nome VARCHAR(100) NOT NULL,
);
-----------------------------------------------
CREATE TABLE Artista(
	IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo),

	Nome VARCHAR(100) NOT NULL,
);
------------------------------------------------
CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista),

	Nome VARCHAR(100) NOT NULL,
	DataLancamento DATETIME,
	Localizacao VARCHAR(100),
	QtdMinutos INT,
	Ativo VARCHAR(100)

);
-----------------------------------------------------
CREATE TABLE EstiloAlbum(
	IdEstiloAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo),
);
----------------------------------------------------------
CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,

	Nome VARCHAR(100) NOT NULL,
	Permissao VARCHAR(100),
	Email VARCHAR(100),
	Senha VARCHAR(100)
);
---------------------------------------------------------
