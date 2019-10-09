/* Criar banco */
CREATE DATABASE boletim;

/*deletar banco*/
DROP DATABASE boletim;

/*usar o banco*/
USE boletim;

/*criar tabela aluno*/
-- not null - serve para obrigar o dado a ser preenchido
-- identity - serve para autoincrementar de 1 em 1
CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL, 
	Ra VARCHAR(20),
	Idade INT
);

/*Criar tabela de materia*/
CREATE TABLE materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50)
);

/*criar tabela de trabalho*/
CREATE TABLE trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,
	-- chaves estrangeiras sao chamadas
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno)
);

/*Incluir nova coluna*/
ALTER TABLE materia ADD Teste VARCHAR(2);

-- excluir coluna
ALTER TABLE materia DROP COLUMN Teste