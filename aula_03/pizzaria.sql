CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar (255) NOT NULL,
tamanho varchar (255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo, tamanho)
VALUES ("Doce", "Broto"),
("Doce", "Média"),
("Salgada", "Broto"),
("Salgada", "Média"),
("Salgada", "Grande");

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
vegano boolean, 
ingredientes varchar (500),
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

ALTER TABLE tb_pizzas MODIFY vegano varchar (255);

INSERT INTO tb_pizzas (nome, vegano, ingredientes, preco, categoria_id)
VALUES ("Portuguesa", "Não", "Mussarela, Presunto, Ovo, Palmito, Ervilha, Milho e Cebola.", 70, 5),
("Mussarela", "Não", "Mussarela, Tomate e Orégano", 39, 4),
("Calabresa", "Não", "Mussarela, Calabresa e Cebola", 39.50, 5),
("Romeu e Julieta", "Não", "Goiabada e Queijo Branco", 45, 1),
("Prestigio", "Sim", "Brigadeiro feito com leite condensado de soja e Coco ralado", 42, 2),
("Banoffee", "Sim", "Doce de leite de soja, Banana e Canela", 45, 2),
("Pirituba", "Sim", "Berinjela, Tomate seco, Alho poró e Queijo de soja", 65, 4),
("Baiana", "Não", "Calabresa ralada, Cebola, Tomate e Pimenta", 50, 5);

SELECT * FROM tb_pizzas;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 and 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, preco, vegano, tb_categorias.tipo, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias  
ON categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON categoria_id = tb_categorias.id
WHERE vegano = "Sim";














