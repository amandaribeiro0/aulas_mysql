CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id bigint primary key auto_increment,
    nome varchar(255) not null
);

CREATE TABLE tb_produtos(
	id bigint primary key auto_increment,
    nome varchar(255) not null,
    valor decimal(8,2) not null,
    estoque int not null,
    categorias_id bigint not null,
    CONSTRAINT fk_categoria FOREIGN KEY(categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome)
VALUES 
('Carnes vermelhas'),
('Carnes brancas'),
('Peixes'),
('Legumes'),
('Frutas');

INSERT INTO tb_produtos (nome, valor, estoque, categorias_id) VALUES 
('Picanha',  85.50, 50, 1),
('Linguiça',  19.90, 290, 1),
('Frango', 19.90, 130, 2),
('Sushi', 75.50, 120, 3),
('Tilapia', 99.90, 30, 3),
('Pernil', 39.90, 70, 1),
('Limão',  4.99, 150, 5),
('Cenoura', 7.50, 250, 4);

SELECT * FROM tb_produtos 
WHERE valor > 50;

SELECT * FROM tb_produtos
 WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos 
WHERE nome LIKE '%C%';

SELECT P.nome , C.nome
FROM tb_produtos P
INNER JOIN tb_categorias C
ON P.categorias_id = C.id;

SELECT P.nome, C.nome
FROM tb_produtos P
INNER JOIN tb_categorias C
ON P.categorias_id = C.id
WHERE C.nome = 'Peixes';