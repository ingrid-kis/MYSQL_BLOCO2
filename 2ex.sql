USE db_ecommerce;

CREATE TABLE tb_produtos(
ref INT (1) auto_increment,
categoria VARCHAR(50) not null,
marca VARCHAR(50) not null,
nome VARCHAR(100) not null,
tamanho VARCHAR (50) not null,
preco DOUBLE not null,
PRIMARY KEY (ref)
);

INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Perfume Feminino", "Lancôme", "La Vie Est Belle", "30ml", 300.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Perfume Feminino", "Lancôme", "Idôle", "25ml", 239.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Cabelo", "Wella Professionals", "Óleo capilar Oil Reflections", "30ml", 69.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Cabelo", "Kérastase", "Kit Shampoo e Condicionador Genesis", "Shampoo 250ml e Condicionador 200ml", 395.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Maquiagem", "Laura Mercier", "Pó translúcido Loose Setting Powder", "29g", 239.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Maquiagem", "Too Faced", "Base Born This Way", "30ml", 249.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Corpo e Banho", "Biossance", "Óleo corportal iluminador", "120ml", 299.00);
INSERT INTO tb_produtos (categoria, marca, nome, tamanho, preco)
VALUES ("Corpo e Banho", "Drunk Elephant", "Loção hidratante corporal Body Lotion", "240ml", 285.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 500; -- select de produto com valor menor

SELECT * FROM tb_produtos WHERE preco > 500; -- select de produto com valor maior

UPDATE tb_produtos SET nome = "Óleo capilar nutritivo Oil Reflections"
WHERE ref=4; -- atualização de dado

SELECT * FROM tb_produtos; -- visualização da tabela inteira