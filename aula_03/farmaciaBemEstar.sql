CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
classificacao varchar (255) NOT NULL,
prescricao varchar (255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (classificacao, prescricao) 
VALUES ("Medicamento", "Sem prescrição"),
("Medicamento", "Com prescrição"),
("Cosmético", "Sem prescrição");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(6,2),
descricao varchar(255),
fabricante varchar(255),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, preco, descricao, fabricante, categoria_id)
VALUES ("Sabonete Effaclar Alta Tolerancia LA ROCHE POSAY 200ml", 69.90, null, "LA ROCHE POSAY LAB.", 3),
("Ibuprofeno 400mg", 22.00, "Ibuprofeno 400mg - 20 unidades: Para dores musuculares, dores de cabeça, enxaqueca e cólicas", "EUROFARMA", 1),
("Protetor Solar Corporal Nivea FPS 50 200ml", 52.35, null, "NIVEA", 3),
("Mesigyna", 38.90, "Mesigyna é um anticoncepcional injetável com aplicação mensal ou semestral. Siga a risca as datas de aplicações para efeito efetivo do medicameno.", "CIMED", 2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 and 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON categoria_id =  tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON categoria_id =  tb_categorias.id
WHERE classificacao = "Cosmético";


