use db_pizzaria_legal;

-- tabela categoria
CREATE TABLE tb_categoria(
id_categoria INT(5) AUTO_INCREMENT,
delivery VARCHAR(5) NOT NULL,
promocao VARCHAR(5) NOT NULL,
PRIMARY KEY (id_categoria)
);

-- tabela pizza
CREATE TABLE tb_pizza(
id_produto INT(5) AUTO_INCREMENT,
sabor VARCHAR(100) NOT NULL,
tamanho CHAR(1) NOT NULL,
preco DECIMAL (10,2) NOT NULL,
fk_categoria INT(5) NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (delivery, promocao)
VALUES ("Sim","Sim");
INSERT INTO tb_categoria (delivery, promocao)
VALUES ("Não","Não");
INSERT INTO tb_categoria (delivery, promocao)
VALUES ("Não","Sim");
INSERT INTO tb_categoria (delivery, promocao)
VALUES ("Sim","Não");

-- popular Tabela pizza
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Frango", 'M', 48.00, 1);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Mussarela", 'P', 35.00, 2);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Bacon", 'G', 60.00, 3);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Calabresa", 'M', 48.00, 4);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Portuguesa", 'P', 30.00, 1);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Marguerita", 'G', 62.00, 2);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Parmegianna", 'M', 48.00, 3);
INSERT INTO tb_pizza (sabor, tamanho, preco, fk_categoria)
VALUES ("Escarola com Queijo", 'P', 35.00, 4);

-- select que retorne os Produtos com o valor maior do que 45 reais
SELECT * FROM tb_pizza WHERE preco > 45.00;

-- select trazendo  os Produtos com valor entre 29 e 60 reais
SELECT * FROM tb_pizza WHERE preco BETWEEN 29.00 AND 60.00;

-- select  utilizando LIKE buscando os Produtos com a letra C
SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

--  select com Inner join entre  tabela categoria e pizza
SELECT sabor, tamanho, preco FROM tb_pizza
	INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria;
    
--  select onde traga todos os Produtos de uma categoria específica
SELECT sabor, tamanho, preco FROM tb_pizza
	INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria
    WHERE id_categoria = 1;
