/*Mostrar dados*/
SELECT * FROM aluno;

SELECT * FROM materia;

/*Mostrar dados específicos de um aluno*/
SELECT * FROM aluno WHERE Idade = 28;

SELECT * FROM aluno WHERE IdAluno = 3;


/*Mostrar dados em uma "busca" com like */
-- ENTRE ASPAS DEVE-SE COLOCAR O % ANTES E/OU DEPOIS PARA VISUALIZAR COM A CADEIA DE CARACTERES ESPECÍFICA ANTES OU DEPOIS QUALQUER TEXTO
SELECT * FROM ALUNO WHERE NOME LIKE '%BRUNA%'


SELECT * FROM aluno order by nome asc;