USE db_cidade_das_frutas;

-- Criar tabela c/ 3 atributos
CREATE TABLE tb_categoria (
id_categoria INT(6) AUTO_INCREMENT,
tipo VARCHAR (50) NOT NULL,
da_estacao BOOLEAN, -- 0=false, 1=true
PRIMARY KEY (id_categoria)
);

-- Criar tabela c/ 5 atributos
CREATE TABLE tb_produto(
id_produto INT(6) AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cor  VARCHAR(50) NOT NULL,
familia VARCHAR(50)NOT NULL,
fk_categoria INT(6) NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

ALTER TABLE tb_produto  -- selecionar nome da tabela
CHANGE familia valor DECIMAL; -- para alterar atributo de FAMILIA para VALOR (tipo)

SELECT * FROM tb_produto;

-- Popule esta tabela Categoria com até 5 dados
INSERT INTO tb_categoria (tipo, da_estacao)
VALUES ("Fruta",0);
INSERT INTO tb_categoria (tipo, da_estacao)
VALUES ("Fruta",1);
INSERT INTO tb_categoria (tipo, da_estacao)
VALUES ("Legume",0);
INSERT INTO tb_categoria (tipo, da_estacao)
VALUES ("Legume",1);

-- Popule esta tabela Produto com até 8 dados
INSERT INTO tb_produto (nome, cor, valor, fk_categoria)
VALUES ("Maçã","Vermelha",50.00,2);
INSERT INTO tb_produto (nome, cor, valor, fk_categoria)
VALUES ("Berinjela","Roxo",80.00,1);
INSERT INTO tb_produto (nome, cor, valor, fk_categoria)
VALUES ("Pimenta","Vermelha",30.00,1);
INSERT INTO tb_produto (nome, cor, valor, fk_categoria)
VALUES ("Uva","Verde",10.00,1);
INSERT INTO tb_produto (nome, cor, valor, fk_categoria)
VALUES ("Brócolis","Verde",7.00,3);

-- select que retorne os Produtos com o valor maior do que 50 reais
SELECT * FROM tb_produto WHERE valor > 50.00;

-- select trazendo os Produtos com valor entre 3 e 60 reais
SELECT * FROM tb_produto WHERE valor
BETWEEN 3.00 AND 60.00;

-- select  utilizando LIKE buscando os Produtos com a letra C
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

-- um select com Inner join entre  tabela categoria e produto
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.fk_categoria;
    
-- um select onde traga todos os Produtos de uma categoria específica
SELECT * FROM tb_produto
WHERE fk_categoria = 2;