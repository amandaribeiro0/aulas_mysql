CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    categoria varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (categoria) 
VALUES ("Doce"),("Salgada");

CREATE TABLE tb_pizzas(
	id BIGINT auto_increment,
    sabor VARCHAR(100) not null,
    preco DECIMAL(6,2) not null,
    tamanho char(1) not null,
    categoria_id bigint,
    PRIMARY KEY (id), 
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, preco, tamanho, categoria_id)
VALUES ("Mussarela","48.90","M",2),
("Banana com Chocolate","58.90","P",1),
("Brocolis","42.90","P",2),
("Portuguesa","48.90","M",2),
("Calabresa","48.90","M",2),
("Chcocolate","68.90","M",1),
("Frango com Catupiry","48.90","M",2),
("Leite em pó","58.90","P",1);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT id, sabor, preco FROM tb_pizzas WHERE preco > 45;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT id, sabor, preco FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

/* Faça um SELECT utilizando a cláusula INNER JOIN, 
unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.*/
SELECT * FROM tb_pizzas P
INNER JOIN tb_categorias C 
ON P.categoria_id = C.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela
 tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas 
 que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/
SELECT * FROM tb_pizzas P
INNER JOIN tb_categorias C 
ON P.categoria_id = C.id
WHERE P.categoria_id = 1;
 