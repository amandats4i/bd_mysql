CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
id bigint AUTO_INCREMENT,
nome varchar (255) not null, 
salario decimal (7, 2) not null,
idade bigint,
cargo varchar (255) not null,
primary key (id)
);

INSERT INTO tb_colaboradores (nome, salario, idade, cargo)
VALUES ("José", 2000, 30, "Vendedor"),
("Amanda", 6000, 60, "Assistente do Gerente"),
("Luiza", 13000, 30, "Filha do dono"),
("Victoria", 13000, 10, "Cunhada do filho do dono"),
("Vitor", 700, 21, "Estagiario");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 20 WHERE id = 4;

UPDATE tb_colaboradores SET salario = 1200 WHERE id = 5;

SELECT * FROM tb_colaboradores;