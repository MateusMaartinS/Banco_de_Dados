CREATE TABLE Departamento
(
	IdDepartamento int PRIMARY KEY NOT NULL,
	NomeDepar varchar (150) not null,
	Ativo boolean not null
);

CREATE TABLE Colaborador
(
	IdColaborador int PRIMARY KEY NOT NULL,
	NomeColab varchar (150) not null,
	CPF varchar (15) not null,
	DataNascimento varchar (10),
	DataAdmissao varchar (10),
	DepartColab int,
	CONSTRAINT fk_Departamento FOREIGN KEY (DepartColab) references Departamento (IdDepartamento)
);

CREATE TABLE EPIs
(
	IdEpi int PRIMARY KEY NOT NULL,
	Descricao varchar (150),
	DataFabricacao varchar (10),
	DataVencimento varchar (10)
);

CREATE TABLE ControleEPI
(
	IdEntrega int PRIMARY KEY NOT NULL,
	DataEntrega varchar (10) not null,
	IdColaborador int,
	IdEpi int,
	CONSTRAINT fk_Colaborador FOREIGN KEY (IdColaborador) references Colaborador (IdColaborador),
	CONSTRAINT fk_Epis FOREIGN KEY (IdEpi) references EPIs (IdEpi)
);

select * from Departamento

INSERT INTO Departamento (IdDepartamento,NomeDepar,Ativo)
		VALUES (1,'Estudos',true)
INSERT INTO Departamento (IdDepartamento,NomeDepar,Ativo)
		VALUES (2,'Biblioteca',true)
INSERT INTO Departamento (IdDepartamento,NomeDepar,Ativo)
		VALUES (3,'Financeiro',true)
INSERT INTO Departamento (IdDepartamento,NomeDepar,Ativo)
		VALUES (4,'Segurança',true)
INSERT INTO Departamento (IdDepartamento,NomeDepar,Ativo)
		VALUES (5,'Música',true)
INSERT INTO Departamento (IdDepartamento,NomeDepar,Ativo)
		VALUES (6,'Suporte',true)

select * from Colaborador

INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (1,'Jonas Edaniel','112.345.678.91','11/02/1985','26/10/2003',5);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (2,'Patricio Esterga','112.345.678.91','07/01/1890','05/10/2005',2);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (3,'Jessica Ramalho','112.345.678.91','02/04/1995','01/11/2010',1);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (4,'Manuel Gomes','112.345.678.91','02/12/1996','15/05/2020',3);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (5,'Marta Nascimento','112.345.678.91','19/04/1998','11/02/2002',4);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (6,'Maria Nava','112.345.678.91','15/04/1999','04/06/2021',5);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (7,'Mateus Martins','112.345.678.91','08/09/2003','30/09/2021',6);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (8,'Humberto Bento','112.345.678.91','11/02/1998','14/08/2004',6);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (9,'Laura Rodrigues','112.345.678.91','04/04/2002','10/05/2020',2);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (10,'Maurico de Souza','112.345.678.91','27/10/1935','20/02/2002',1);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (11,'Jonas Brother','112.345.678.91','01/01/2005','03/07/2023',4);
INSERT INTO Colaborador (IdColaborador,NomeColab,CPF,DataNascimento,DataAdmissao,DepartColab)
		VALUES (12,'Gabriel Apenas','112.345.678.91','12/12/1992','02/06/2022',3);