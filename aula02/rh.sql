CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id BIGINT auto_increment,
    nome VARCHAR(255) not null,
    cargo VARCHAR(255) not null,
    cpf VARCHAR(11) not null,
    salario double(7,2),
    situacao varchar(10),
     PRIMARY KEY (id)
);

-- Inserts 

INSERT INTO tb_funcionarios (nome, cargo, cpf, salario, situacao) values ("Amanda Ribeiro", "Desenvolvedora Senior","12345678911",18000.00, "ativo");
INSERT INTO tb_funcionarios (nome, cargo, cpf, salario, situacao) values ("Katarina", "Desenvolvedora Pleno","8750964587",10000.00, "ativo");
INSERT INTO tb_funcionarios (nome, cargo, cpf, salario, situacao) values ("Nicolle", "Desenvolvedora Pleno","34569087653",10000.00, "ativo");
INSERT INTO tb_funcionarios (nome, cargo, cpf, salario, situacao) values ("Thiago", "Desenvolvedor Pleno","56863098745",10000.00, "ativo");
INSERT INTO tb_funcionarios (nome, cargo, cpf, salario, situacao) values ("Pedro", "Desenvolvedora Junior","34568012345",1800.00, "ativo");

-- Querys
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 20000.00 WHERE id = 5;

SELECT * FROM tb_funcionarios;