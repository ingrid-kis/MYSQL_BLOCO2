USE db_farmacia_do_bem;

-- criar tabela1
CREATE TABLE tb_categoria (
id_categoria INT(6) AUTO_INCREMENT,
fabricante VARCHAR(30) NOT NULL,
controlado BOOLEAN, -- 0=false, 1=true
PRIMARY KEY (id_categoria)
);

-- criar tabela2
CREATE TABLE tb_produto(
id_produto INT(6) AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
tipo VARCHAR(30) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
fk_categoria INT(6) NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

-- Popule esta tabela Categoria com até 5 dados
INSERT INTO tb_categoria (fabricante, controlado)
VALUES ("Sanofi Avenis", 0);
INSERT INTO tb_categoria (fabricante, controlado)
VALUES ("Norvatis", 1);
INSERT INTO tb_categoria (fabricante, controlado)
VALUES ("Norvatis", 1);
INSERT INTO tb_categoria (fabricante, controlado)
VALUES ("Medley", 1);
INSERT INTO tb_categoria (fabricante, controlado)
VALUES ("Medley", 1);

-- Popule esta tabela Produto com até 8 dados
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria)
VALUES ("Allegra", "antialérgico", 34.49, 1);
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria)
VALUES ("Cataflam", "anti-inflamatório", 43.73, 2);
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria)
VALUES ("Voltaren", "anti-inflamatório", 42.68, 3);
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria)
VALUES ("Azitromicina", "antibiótico", 26.87, 4);
INSERT INTO tb_produto (nome, tipo, preco, fk_categoria)
VALUES ("Amoxicilina", "antibiótico", 42.84, 5);

-- select que retorne os Produtos com o valor maior do que 50 reais
SELECT * FROM tb_produto WHERE preco > 50.00;

-- select que retorne Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

-- select  utilizando LIKE buscando os Produtos com a letra B
SELECT * FROM tb_produto WHERE tipo LIKE "%b%";

-- select com Inner join entre  tabela categoria e produto
SELECT nome, tipo, preco FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;

--  select onde traga todos os Produtos de uma categoria específica
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria
	WHERE tipo = "anti-inflamatório";