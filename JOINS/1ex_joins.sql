USE db_generation_game_online;

-- abstração
CREATE TABLE tb_classe (
id_classe BIGINT (5) AUTO_INCREMENT,
tipo_classe VARCHAR(100) NOT NULL,
habilidade VARCHAR(100) NOT NULL,
PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem (
id_personagem BIGINT (5)  AUTO_INCREMENT,
raça VARCHAR(100) NOT NULL,
poder_ataque BIGINT(10) NOT NULL,
poder_defesa BIGINT(10) NOT NULL,
fk_classe BIGINT NOT NULL,
PRIMARY KEY (id_personagem), 
FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe) -- fk = foreign key
);

-- popular tabela classe
INSERT INTO tb_classe (tipo_classe, habilidade) 
VALUES ("Curandeiro", "Sabedoria");
INSERT INTO tb_classe (tipo_classe, habilidade) 
VALUES ("Paladino", "Fé");
INSERT INTO tb_classe (tipo_classe, habilidade) 
VALUES ("Assassino", "Agilidade");
INSERT INTO tb_classe (tipo_classe, habilidade) 
VALUES ("Arqueiro", "Precisão");
INSERT INTO tb_classe (tipo_classe, habilidade) 
VALUES ("Viking", "Força");

-- popular tabela personagem
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Elfo", 1000, 2500, 1);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Humano", 2500, 800, 4);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Humano", 3000, 2100, 3);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Humano", 4000, 1900, 5);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Elfo", 3300, 2600, 2);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Reptiliano",4100, 1800, 5);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Elfo", 2800, 3000, 4);
INSERT INTO tb_personagem (raça, poder_ataque, poder_defesa, fk_classe)
VALUES ("Reptiliano", 3200, 2000, 3);

SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;

SELECT * FROM  tb_personagem WHERE poder_ataque > 2000; -- visualiza poder ataque >
SELECT * FROM  tb_personagem WHERE poder_defesa BETWEEN 1000 AND 2000; -- visualiza valor entre x e y

SELECT * FROM tb_classe WHERE tipo_classe LIKE "%c%"; -- pesquisa de letra/termo específico

-- UNIR 2 tabelas com INNER JOIN
SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;

-- pesquisar uma caracteristica em comum nas tabelas
SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe
    WHERE id_classe=3;