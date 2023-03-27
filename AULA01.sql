CREATE TABLE Departamento
(
	codigo int PRIMARY KEY NOT NULL,
	descricao varchar(50)
);

CREATE TABLE Funcionario
(
	codigoFunc int PRIMARY KEY NOT NULL,
	nome varchar(150) not null,
	endereco varchar (150) not null,
	telefone varchar (50) not null,
	cod_departamento int,
	CONSTRAINT fk_departamento FOREIGN KEY
	(cod_departamento) references Departamento (codigo)
);

CREATE TABLE Dependentes
(
	codigoDepen int PRIMARY KEY NOT NULL,
	nomeDepen varchar (150) not null,
	dataNasc  varchar (10) not null,
	cod_funcionario int,
	CONSTRAINT fk_funcionario FOREIGN KEY
	(cod_funcionario) references Funcionario (codigoFunc)
	
);

INSERT INTO Departamento (codigo, descricao)
	VALUES (1,'FINANCEIRO');
INSERT INTO Departamento (codigo,descricao)
	VALUES (2,'CONTABILIDADE');
INSERT INTO Departamento (codigo,descricao)
	VALUES (3,'JONAS');
UPDATE Departamento set descricao = 'RH' WHERE codigo = 3;

	Select * from Departamento;
	Select descricao from Departamento;
	Select codigo from Departamento;
	Select count (*) from Departamento;


INSERT INTO Funcionario (codigoFunc, nome, endereco, telefone, cod_departamento)
	VALUES (4,'Selma','Rua boa de morar 11', '46-1010-1010',3);
	
UPDATE Funcionario set cod_departamento = '1' WHERE codigofunc =  1;
UPDATE Funcionario set telefone = '40-1010-1010' WHERE codigofunc =  1;

INSERT INTO Dependentes (codigoDepen, nomeDepen, dataNasc, cod_funcionario)
	VALUES (2,'SelmaDepe','08/092003',2);
	VALUES (1,'JoãoDepe','27/10/1998',1);
	
UPDATE Dependentes set nomedepen = 'João Antônio' WHERE cod_funcionario = 1;

INSERT INTO Dependentes (codigoDepen, nomeDepen, dataNasc, cod_funcionario)
	VALUES (3,'Roney','30/01/2004',2);
	
	Select * from Dependentes;


