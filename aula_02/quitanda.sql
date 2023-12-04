
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
data_validade date,
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate",100, "2022-04-10", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã",20, "2022-04-12", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("laranja",50, "2022-04-10", 10.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana",200, "2022-04-13", 12.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("uva",1200, "2022-04-14", 30.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("pêra",500, "2022-04-15", 2.90);

select * from tb_produtos;

SELECT nome, preco FROM tb_produtos;

-- Visualizar somente o nome e o preço formatado para Reais
SELECT nome_produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS valor FROM tb_produtos;

ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

SELECT nome_produto, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 5.00;

SELECT * FROM tb_produtos WHERE nome_produto = "maçã";

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

UPDATE tb_produtos SET preco = 2.90 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 2;




