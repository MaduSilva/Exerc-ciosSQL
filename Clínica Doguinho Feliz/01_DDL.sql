--Criando banco da clínica

CREATE DATABASE clinicadoguinhofeliz;
-------------------------------------------------
Use clinicadoguinhofeliz;
------------------------------------------------
CREATE TABLE Clinica(
	IdClinica INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
);
------------------------------------------------
CREATE TABLE Veterinario(
	IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),

	Nome VARCHAR(100) NOT NULL,
	CRV VARCHAR(50) NOT NULL
);
----------------------------------------------------
CREATE TABLE TipoPet(
	IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
	
	Descricao VARCHAR(100) NOT NULL,
);
---------------------------------------------------------
CREATE TABLE Raca(
	IdRaca INT PRIMARY KEY IDENTITY NOT NULL,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet),
	
	Descricao VARCHAR(100) NOT NULL,
);
--------------------------------------------------------------

CREATE TABLE Dono(
	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	
	Nome VARCHAR(100) NOT NULL,
);
---------------------------------------------------------------
CREATE TABLE Pet(
	IdPet INT PRIMARY KEY IDENTITY NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),

	Nome VARCHAR(100) NOT NULL,
	DataNascimento DATETIME NOT NULL
);
-----------------------------------------------------------------
CREATE TABLE Atendimentos(
	IdAtendimentos INT PRIMARY KEY IDENTITY NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario),

	Descricao VARCHAR(100) NOT NULL,
	DataAtendimento DATETIME NOT NULL
);