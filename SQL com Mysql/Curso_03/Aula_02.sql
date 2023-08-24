CREATE DATABASE VENDAS_SUCOS;


CREATE TABLE PRODUTOS
( CODIGO VARCHAR(10) NOT NULL,
DESCRITOR VARCHAR(100) NULL,
SABOR VARCHAR(50) NULL,
TAMANHO VARCHAR(50) NULL,
EMBALAGEM VARCHAR(50) NULL,
PRECO_LISTA FLOAT NULL,
PRIMARY KEY (CODIGO));


CREATE TABLE VENDENDORES(
MATRICULA VARCHAR(5) NOT NULL,
NOME VARCHAR(100) NULL,
BAIRRO VARCHAR(100) NULL,
COMISSAO FLOAT NULL,
DATA_ADMISSAO DATE NULL,
FERIAS BIT(1) NULL,
PRIMARY KEY (MATRICULA)
);


CREATE TABLE TABELA_DE_VENDAS
(NUMERO VARCHAR(5) NOT NULL,
DATA_VENDA DATE NULL,
CPF VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPOSTO FLOAT NULL,
PRIMARY KEY (NUMERO)
);

ALTER TABLE TABELA_DE_VENDAS ADD CONSTRAINT FK_CLIENTES
FOREIGN KEY (CPF) REFERENCES CLIENTE(CPF);


ALTER TABLE TABELA_DE_VENDAS ADD CONSTRAINT FK_VENDEDORES
FOREIGN KEY (MATRICULA) REFERENCES VENDENDORES(MATRICULA); 
 
ALTER TABLE tabela_de_vendas RENAME NOTAS;

ALTER TABLE vendendores RENAME VENDEDORES;

CREATE TABLE ITENS_NOTAS
(NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
QUANTIDADE INT,
PRECO FLOAT,
PRIMARY KEY (NUMERO,CODIGO)
);

ALTER TABLE ITENS_NOTAS ADD CONSTRAINT FK_NOTAS
FOREIGN KEY (NUMERO)
REFERENCES NOTAS (NUMERO);


ALTER TABLE ITENS_NOTAS ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO)
REFERENCES PRODUTOS (CODIGO);