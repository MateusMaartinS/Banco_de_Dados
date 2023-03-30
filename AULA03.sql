CREATE TABLE Pessoas
(
	numCPF varchar (11) PRIMARY KEY NOT NULL,
	nome varchar(150) not null,
	numTelefone varchar(15)
);

CREATE TABLE Locador
(
	codLocador int PRIMARY KEY NOT NULL,
	CPF varchar,
	CONSTRAINT fk_pessoas FOREIGN KEY
	(CPF) references Pessoas (numCPF)
);

CREATE TABLE Locatario
(
	codLocatario int PRIMARY KEY NOT NULL,
	CPF varchar,
	CONSTRAINT fk_pessoas FOREIGN KEY
	(CPF) references Pessoas (numCPF)
);

CREATE TABLE Imovel
(
	codImovel int PRIMARY KEY NOT NULL,
	numRegIPU varchar (150) not null,
	endereço varchar (150) not null,
	valorDiaria varchar (100) not null
);

CREATE TABLE Locacao
(
	codLocacao int PRIMARY KEY NOT NULL,
	numDias int not null,
	dataInicio date,
	valorAluguel varchar (200),
	idLocatario int,
	idLocador int,
	idImovel int,
	CONSTRAINT fk_locatario FOREIGN KEY
	(idLocatario) references Locatario (codLocatario),
	CONSTRAINT fk_locador FOREIGN KEY
	(idLocador) references Locador (codLocador),
	CONSTRAINT fk_imovel FOREIGN KEY
	(idImovel) references Imovel (codImovel)
);

select * from Locacao;