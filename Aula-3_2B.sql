CREATE TABLE Alunos (
	id_Aluno int PRIMARY KEY NOT NULL,
	Nome_Aluno varchar (150) not null
); 

CREATE TABLE Notas (
	id_Nota int PRIMARY KEY NOT NULL,
	nota int not null,
	idDoAluno int,
	CONSTRAINT fk_Alunos FOREIGN KEY
	(idDoAluno) references Alunos (id_Aluno)
);

CREATE TABLE Alteracao_Das_Notas (
	id_alteracao int PRIMARY KEY NOT NULL,
	Ultima_Nota int not null,
	Ultima_Alteracao TIMESTAMP(6) not null
);

CREATE OR REPLACE FUNCTION alteracoes()
	returns trigger
	language PLPGSQL
	AS
$$
BEGIN
	IF NEW.nota <> OLD.nota THEN
		INSERT INTO Alteracao_Das_Notas(id_alteracao,Ultima_Nota,Ultima_Alteracao)
		VALUES (OLD.id_nota,OLD.nota,now());
	END IF;
	RETURN NEW;
END;
$$

CREATE TRIGGER Utilma_Alteracao_NOTA
	BEFORE UPDATE
	ON Notas
	FOR EACH ROW
	EXECUTE PROCEDURE alteracoes();

INSERT INTO Alunos (id_Aluno,Nome_Aluno)
	VALUES (1,'João');

INSERT INTO Alunos (id_Aluno,Nome_Aluno)
	VALUES (2,'Maicon Küster');
	
INSERT INTO Notas (id_Nota,nota,idDoAluno)
	VALUES (1,3,1);

INSERT INTO Notas (id_Nota,nota,idDoAluno)
	VALUES (2,10,2);

select * from Alunos;

select * from Notas;

UPDATE Notas SET nota = 5 WHERE id_nota = 1;

select * from Alteracao_Das_Notas;

DROP TABLE Alunos;




