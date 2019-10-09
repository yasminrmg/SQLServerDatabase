--***********ATIVIDADE 7***********
CREATE DATABASE escola;

USE escola 
CREATE TABLE responsavel (
	idResponsavel INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Endereco varchar(400)
);

use escola
CREATE TABLE turma (
	IdTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Turma VARCHAR(50) NOT NULL,
	Sala INT
);

use escola
CREATE TABLE aluno (
	idAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	IdTurma INT FOREIGN KEY REFERENCES turma(IdTurma),
	IdResponsavel INT FOREIGN KEY REFERENCES responsavel(IdResponsavel)
);

INSERT INTO responsavel (Nome,Endereco) VALUES 
	('Pai teste','rua dcjkjhksg'),
	('Pai merli','rua a19c'),
	('Pai joana','Rua 392kjhke');

INSERT INTO turma (Turma, Sala) values 
	('dsjhf',12),
	('testen',22),
	('dsjhf',3);

SELECT * FROM responsavel;
SELECT * FROM turma;
SELECT * FROM ALUNO;

INSERT INTO aluno (Nome,IdResponsavel,IdTurma) VALUES
	('THALITA',1,3),
	('MARI',3,4),
	('MONICA',3,1),
	('ALAN',1,3)