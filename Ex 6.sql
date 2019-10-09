--***********ATIVIDADE 6***********
-- criacao do banco
CREATE DATABASE EscolaVirtual;

-- CRIACAO DAS TABELAS
CREATE TABLE curso 
(
	IdCurso INT PRIMARY KEY IDENTITY NOT NULL,
	NomeCurso VARCHAR(100),
	Duracao DATETIME NOT NULL,
	Ativo BINARY
);

CREATE TABLE aluno (
	idAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	IdCurso INT FOREIGN KEY REFERENCES curso(IdCurso)
);

-- ALTEREI A TABELA E ADICIONEI UMA COLUNA
ALTER TABLE curso ADD DuracaoCurso DATETIME;

-- EXCLUI UMA COLUNA
ALTER TABLE curso DROP COLUMN DuracaoCurso;

-- ALTEREI O TIPO DE ENTRADA DE DADO DA COLUNA (DE DATETIME PARA TIME)
ALTER TABLE curso ALTER COLUMN Duracao TIME;

-- SEM SUCESSO TENTEI ALTERAR O NOME DA COLUNA IdCurso
--ALTER TABLE CURSO RENAME COLUMN IdCurso TO Id; 

--ADICIONEI DADOS AS TABELAS
--INSERT INTO curso (NomeCurso,Duracao,Ativo) values('front', '16:00',1),('back', '10:00',1);
--INSERT INTO curso (NomeCurso,Duracao,Ativo) values('ffff', '16:00',1),('bfffffack', '10:00',1);

--INSERT INTO aluno (Nome,IdCurso)VALUES('Cand 1',3),('Cand 2',4),('Cand 3',3);
--INSERT INTO aluno (Nome,IdCurso)VALUES('dkhhfgieg 1',7),('C2sahnbdkab',5),('dsnhgri 3',3);

-- exibicao de todos os dados existentes na tabela
SELECT * FROM curso;
SELECT * FROM aluno;