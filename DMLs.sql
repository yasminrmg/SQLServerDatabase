-- inserindo dados na tabela
INSERT INTO aluno (Nome,Ra,Idade) VALUES ('Alef', 'RA1233',23);

INSERT INTO aluno (Nome,Ra,Idade) VALUES ('Bruna', 'RA4463',22);

-- inserindo dados
INSERT INTO materia(Materia) values ('Matematica');

-- alteração de dado
UPDATE aluno SET
	NOME = 'Bruna Ribeiro',
	Idade = 21
WHERE IdAluno = 2


-- excluir dado 
DELETE FROM materia WHERE IdMateria = 2;
