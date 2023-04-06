CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
	id int auto_increment,
    nome varchar(255) not null,
    sala int not null,
    media_final decimal(4,2) not null,
    matricula varchar(15) not null,
    email varchar(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, sala, media_final, matricula, email)
values ("Amanda",10,10,"12348","amandinha@email.com"),
("Pedro",5,8.8,"78309","pedroca@email.com"),
("Bianca",11,9.5,"52985","bia@email.com"),
("Matheus",10,3.5,"09874","matheus02@email.com"),
("José",1,9.9,"65340","joseph@email.com"),
("Luana",2,10,"98651","luluca@email.com"),
("Eduarda",3,8,"67801","dudinha@email.com"),
("Marta",9,10,"560912","marta_05@email.com");

SELECT nome, sala, media_final FROM tb_alunos WHERE media_final > 7;
SELECT nome, sala, media_final FROM tb_alunos WHERE media_final < 7;

UPDATE tb_alunos SET media_final = 8 WHERE nome = 'Bianca';