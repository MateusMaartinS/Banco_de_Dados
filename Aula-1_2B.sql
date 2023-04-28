CREATE TABLE Funcionarios
(
	CodFun int PRIMARY KEY NOT NULL,
	nomeFun varchar (150) not null,
	endereco varchar (150),
	telefone varchar (50),
	Cod_Depar int,
	CONSTRAINT fk_Departamento FOREIGN KEY (Cod_Depar) references Departamento (CodDepar)
);

CREATE TABLE Departamento
(
	CodDepar int PRIMARY KEY NOT NULL,
	Descricao varchar (150)
);

CREATE TABLE Dependentes
(
	CodDepen int PRIMARY KEY NOT NULL,
	Cod_Fun int,
	CONSTRAINT fk_Funcionarios FOREIGN KEY (Cod_Fun) references Funcionarios(CodFun),
	nomeDepen varchar (150),
	data_nasc varchar (10)
);

CREATE TABLE Salarios
(
	CodSala int PRIMARY KEY NOT NULL,
	Valor_Salario numeric (12,2),
	Cod_Fun int,
	CONSTRAINT fk_Funcionarios FOREIGN KEY (Cod_Fun) references Funcionarios (CodFun),
	data_alteracao varchar (10)
);

select * from Departamento;
select * from Funcionarios;
select * from Salarios;

INSERT INTO Departamento (CodDepar,Descricao)
	VALUES (3,'Suporte');

INSERT INTO Funcionarios (CodFun,nomeFun,endereco,telefone,Cod_Depar)
	VALUES (5,'Lenine','Rua Tal Nº Tal','45 991234-5678',2);
	
INSERT INTO Salarios (CodSala,Valor_Salario,Cod_Fun,data_alteracao)
	VALUES (1,1500.69,1,'15/02/2021');
INSERT INTO Salarios (CodSala,Valor_Salario,Cod_Fun,data_alteracao)
	VALUES (2,1750.55,2,'15/02/2021');
INSERT INTO Salarios (CodSala,Valor_Salario,Cod_Fun,data_alteracao)
	VALUES (3,1750.55,5,'15/02/2021');
INSERT INTO Salarios (CodSala,Valor_Salario,Cod_Fun,data_alteracao)
	VALUES (4,1970.55,3,'15/02/2021');
INSERT INTO Salarios (CodSala,Valor_Salario,Cod_Fun,data_alteracao)
	VALUES (4,1970.55,3,'15/02/2021');
	
SELECT f1.nomeFun, s1.valor_salario, d1.descricao 
from Funcionarios f1
INNER JOIN Salarios s1 ON s1.cod_fun = f1.codfun
INNER JOIN Departamento d1 ON d1.coddepar = f1.cod_depar