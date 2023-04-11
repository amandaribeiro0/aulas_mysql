CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Cria tabela categorias
CREATE TABLE tb_categorias (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR (255),
    descricao VARCHAR(255)
);

-- Insere dados na tabela categorias
INSERT INTO tb_categorias (categoria, descricao) 
VALUES ("Medicamento", "Substâncias que objetivam curar doenças ou aliviar sintomas."),
("Alimentos","Substância utilizada pelos seres vivos como fonte de matéria e energia"),
("Cosmetico", "Preparações constituídas por substâncias naturais ou sintéticas, de uso externo nas diversas partes do corpo humano"),
("Suplementos", "Sua finalidade é fornecer nutrientes, substâncias bioativas, enzimas ou probióticos em complemento à alimentação"),
("Higiene","Conjunto de conhecimentos e técnicas que visam a promover a saúde e evitar as doenças");

-- Cria tabela produtos
CREATE TABLE tb_produtos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
	quantidade int, 
	dtvalidade date,
	preco decimal(6, 2),
	categoria_id bigint, 
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Dipirona",1050,"2024-03-15",15.90,1),
("Dorflex",10,"2022-08-15",12.90,1),
("Amoxilina",105,"2025-07-17",45.90,1),
("Sabonete",200,"2026-03-15",10.90,5),
("Shampoo",1500,"2025-10-10",45.90,5),
("Condicionador",1500,"2025-10-10",49.90,5),
("Chiclete",150,"2028-9-10",5.90,2),
("Vitamina C",350,"2022-10-10",70.90,4);

/*Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.*/
SELECT nome AS Produto,preco AS Valor FROM tb_produtos WHERE preco > 50;

/*Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/
SELECT nome AS Produto,preco AS Valor FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

/*Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a
 letra C no atributo nome.*/
 SELECT nome AS Produto,preco AS Valor FROM tb_produtos WHERE nome LIKE "%c%";
 
 /*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
 tb_produtos com os dados da tabela tb_categorias*/
 SELECT * FROM tb_produtos P
 INNER JOIN tb_categorias C
 ON P.categoria_id = C.id;
 
 /*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os 
 dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria 
 específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/
  SELECT * FROM tb_produtos P
 INNER JOIN tb_categorias C
 ON P.categoria_id = C.id
 WHERE P.categoria_id = 1;
 