CREATE TABLE Cliente
(
	codCliente int PRIMARY KEY NOT NULL,
	nomeCL varchar(100) not null,
	CPF varchar(20) not null,
	telefoneCL varchar(40) not null
);

CREATE TABLE Assinatura
(
	codAss int PRIMARY KEY NOT NULL,
	cod_CLiente int, CONSTRAINT fk_Cliente FOREIGN KEY
	(cod_Cliente) references Cliente (codCliente),
	cod_Plano int, CONSTRAINT fk_Plano FOREIGN KEY
	(cod_Plano) references Plano (codPlano)
);

CREATE TABLE Plano
(
	codPlano int PRIMARY KEY NOT NULL,
	nomePL varchar(100) not null,
	valorPL float(10) not null,
	duracaoPL varchar(40) not null
);

ALTER TABLE Plano ADD COLUMN cod_Ativ int references Atividade (codAtiv)

CREATE TABLE Atividade
(
	codAtiv int PRIMARY KEY NOT NULL,
	nomeAtiv varchar(100) not null
);

ALTER TABLE Atividade ADD COLUMN cod_Hora int references Horario (codHora)

CREATE TABLE Horario
(
	codHora int PRIMARY KEY NOT NULL,
	hora float(5) not null,
	data varchar(10) not null
);


Select * from Atividade;