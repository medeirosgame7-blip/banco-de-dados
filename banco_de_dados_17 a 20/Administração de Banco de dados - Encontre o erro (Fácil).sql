-- Criar banco de dados
CREATE DATABASE papelaria; # FALTOU O 'A' ENTRE B E S, E O PONTO E VÍRGULA.

USE papelaria; # FALTOOU PONTO E VÍRGULA.

-- Criar tabela produtos
CREATE TABLE produtos (
id_produtos INT PRIMARY KEY AUTO_INCREMENT, #FALTOU A VÍRGULA NO FINAL.
nome VARCHAR(50), # FALTOU O PARÊNTESE.
preco DECIMAL(10.2), # FALTOU A VÍRGULA E ESTAVA ESCRITO 'DECIMALS'.
quantidade INT,
ativo BOOL # APÓS O 'BOOL' TINHA UMA VÍRGULA DESNECESSÁRIA.
);

-- Inserir registros
INSERT INTO produtos (nome, preco, quantidade, ativo) #faltou a separação por vírgula dentro do parêntese.
VALUES 
('Caneta Azul', 2.50, 100, TRUE), #faltou uma vírgula após o cem e após caneta azul, outro erro estava no dois e cinquenta que etava separado por vírgula.
('Lápis', 1.20, 200, TRUE),
('Caderno', 15.00, 50, 1),
('Borracha', 0.5, 300, true);

-- Consultar dados
SELECT nome, preco 
FROM produtos
