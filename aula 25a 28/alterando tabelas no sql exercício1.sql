create database exercício_1;
use exercício_1;

CREATE TABLE clientes (
	id VARCHAR(200), 
    nome INT,
    cpf DATE, 
    data_nascimento VARCHAR(10), 
    renda_mensal BOOLEAN
);
DROP TABLE CLIENTES; 

CREATE TABLE produtos (
	id TEXT, 
    nome BOOLEAN,
    preco VARCHAR(5),
    quantidade DECIMAL(10,2),
    ativo INT
);    
DROP TABLE produtos; 

CREATE TABLE pedidos ( 
	id VARCHAR(100), 
    cliente_id DATE, 
    valor_total CHAR(5),
    data_pedido INT, 
    STATUS VARCHAR(3)
);
DROP TABLE pedidos; 

# CLIENTES 
ALTER TABLE clientes modify COLUMN id INT;

ALTER TABLE clientes modify COLUMN nome VARCHAR(100);

ALTER TABLE clientes modify COLUMN cpf CHAR(11);

ALTER TABLE clientes modify COLUMN data_nascimento DATE;

ALTER TABLE clientes modify COLUMN renda_mensal DECIMAL;

# PRODUTOS 
ALTER TABLE produtos modify COLUMN id INT;

ALTER TABLE produtos modify COLUMN nome VARCHAR(100);

ALTER TABLE produtos modify COLUMN preco DECIMAL;

ALTER TABLE produtos modify COLUMN quantidade INT;

ALTER TABLE produtos modify COLUMN ativo boolean;

# pedidos 
ALTER TABLE pedidos modify COLUMN id INT;
ALTER TABLE pedidos modify COLUMN cliente_id int;
ALTER TABLE pedidos modify COLUMN valor_total decimal;
ALTER TABLE pedidos modify COLUMN data_pedido date;
ALTER TABLE pedidos modify COLUMN status enum('á caminho', 'entregue', 'aguarde');