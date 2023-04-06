CREATE DATABASE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome VARCHAR(255) not null,
    quantidade INT,
    preco DECIMAL not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, preco) VALUES ("Água", 5, 5.50);
INSERT INTO tb_produtos (nome, quantidade, preco) VALUES ("Sabonete", 5, 10);
INSERT INTO tb_produtos (nome, quantidade, preco) VALUES ("Arroz", 5, 13);
INSERT INTO tb_produtos (nome, quantidade, preco) VALUES ("Arroz", 5, 7.55);

SELECT * FROM tb_produtos;
SELECT nome,quantidade FROM tb_produtos;
SELECT nome FROM tb_produtos WHERE nome = 'Arroz';

SELECT * FROM tb_produtos WHERE nome = 'Sabonete' AND preco < 50;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produtos SET preco = 5 WHERE nome = 'Sabonete';

DELETE FROM tb_produtos WHERE id = 3;

ALTER TABLE tb_produtos modify preco decimal(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(100);

ALTER TABLE tb_produtos DROP COLUMN descricao ;

ALTER TABLE tb_produtos CHANGE nome nomeProduto VARCHAR(255);
