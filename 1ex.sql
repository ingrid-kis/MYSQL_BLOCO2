USE empresa_rh;

CREATE TABLE tab_funcionarios( -- parâmetros, caracts que a tab contém
	id BIGINT (5) auto_increment,
    nome VARCHAR (60) not null, -- ñ aceita dados em branco
    genero CHAR(1) not null,
    cpf BIGINT (11) not null,
    setor VARCHAR (20) not null,
    salario DOUBLE (9,2) not null, -- (size, d) (tamanho, nº dp da vírgula)
		PRIMARY KEY (id) -- no ( ) identificar quem vai carregar a chave primária
);

INSERT INTO tab_funcionarios(nome, genero, cpf, setor, salario)
VALUES ("Alice da Silva", 'F', 17334595025, "Financeiro", 10000.00);
INSERT INTO tab_funcionarios(nome, genero, cpf, setor, salario)
VALUES ("Carlos Alberto Praça", 'M', 79175243024, "Recursos Humanos", 7000.00);
INSERT INTO tab_funcionarios(nome, genero, cpf, setor, salario)
VALUES ("Rosa Angela Oliveira", 'F', 29042883090, "Recepção", 2300.00);
INSERT INTO tab_funcionarios(nome, genero, cpf, setor, salario)
VALUES ("Pedro Baptista", 'M', 17310393015, "Almoxarife", 1700.00);

SELECT * FROM tab_funcionarios WHERE salario > 2000.00; -- seleciona salário maior
SELECT * FROM tab_funcionarios WHERE salario < 2000.00; -- seleciona salário menor

UPDATE tab_funcionarios SET salario = 1750.00 WHERE id=4; -- atualiza salário 

SELECT * FROM tab_funcionarios; 