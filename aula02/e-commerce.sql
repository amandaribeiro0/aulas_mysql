CREATE DATABASE db_loja;
USE db_loja;

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome_produto VARCHAR(255) not null,
    preco decimal(5,2) not null,
    categoria VARCHAR(100) not null,
    estoque int not null,
    fornecedor VARCHAR(255) not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome_produto, preco, categoria, estoque, fornecedor)
values ("Bolsa",200.00,"Acessorio",100,"Prada"),
("Chinelo",60.00,"Calçado",50,"Havaianas"),
("Salto",250.00,"Calçado",100,"Prada"),
("Brinco",30.00,"Acessorio",45,"Vivara"),
("Brinco",50.00,"Acessorio",100,"Pandora"),
("Short Jeans",80.00,"Roupa",250,"C&A"),
("Calça Jeans",80.00,"Roupa",350,"Shein"),
("Camiseta",50.00,"Roupa",350,"Shein");


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 200 WHERE nome_produto = 'Brinco' AND fornecedor = 'Vivara';
