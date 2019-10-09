--***********ATIVIDADE 8***********

CREATE DATABASE empresa


USE empresa
CREATE TABLE departamento
(
	idDepartamento INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	ativo BIT DEFAULT 1
)

USE empresa
CREATE TABLE localizacao
(
	idLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
	endereco VARCHAR(400),
	idDepartamento INT FOREIGN KEY REFERENCES departamento(idDepartamento)
);

USE empresa
CREATE TABLE funcionario
(
	idFuncionario INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(200) NOT NULL,
	idDepartamento INT FOREIGN KEY REFERENCES departamento(idDepartamento)
);

USE empresa
CREATE TABLE dependentes
(
	idDependentes INT PRIMARY KEY IDENTITY NOT NULL,
	nome VARCHAR(200) NOT NULL,
	idFuncionario INT FOREIGN KEY REFERENCES funcionario(idFuncionario)
);

USE empresa
CREATE TABLE projeto
(
	idProjeto INT PRIMARY KEY IDENTITY NOT NULL,
	nomeProjeto VARCHAR(200),
	descricaoProjeto VARCHAR(2000),--OU TEXT??? 
	idDepartamento INT FOREIGN KEY REFERENCES departamento(idDepartamento)
);


USE empresa
CREATE TABLE projeto_funcionario
(
	id INT PRIMARY KEY IDENTITY NOT NULL,
	idProjeto INT FOREIGN KEY REFERENCES projeto(idProjeto),
	idFuncionario INT FOREIGN KEY REFERENCES funcionario(idFuncionario)
);