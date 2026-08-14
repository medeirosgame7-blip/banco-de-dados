-- criação do banco
CREATE DATABASE empresa_tech_esthevan; # FALTOU O 'A' ENTRE B E S, E O PONTO E VÍRGULA.
USE empresa_tech_esthevan; #estava escrito tek ao invés de tech.

-- tabela setores
CREATE TABLE setores (
id_setor INT PRIMARY KEY AUTO_INCREMENT,
nome_setor VARCHAR(50), #faltou uma vírgula.
localizacao VARCHAR(30) #vírgula adicionada em local errado.
);

-- tabela funcionarios
CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(80),#faltou uma vírgula.
salario DECIMAL(8.2), #faltou uma vírgula.
data_admissao DATE,
id_setor INT  #vírgula adicionada em local errado.
);

-- inserindo setores
INSERT INTO setores (nome_setor, localizacao) VALUES
('Administrativo', '1º andar'),#faltou uma vírgula fora do parêntese.
('Financeiro', '2º andar'),
('Produção', 'Galpão A'),
('Limpeza', 'Térreo');#faltou uma vírgula entre limpeza e térreo.

select * from setores; # APÓS FROM ESTÁVA ESCRITO SETORES_EMPRESA.

-- inserindo funcionários
INSERT INTO funcionarios (nome_funcionario, salario, data_admissao, id_setor) VALUES
('Carlos Silva', 3500.00, '2022-03-01', 1),# Erro estava no 3500 e 00 que etava separado por vírgula.
('Maria Souza', 4100.00, '2021-08-10', 2),#faltou uma vírgula entre 4100.00 e '2021-08-10'.
('João Lima', 2800, '2023-02-20', 3),#faltou uma vírgula entre '2023-02-20' e 3.
('Fernanda Alves', '3200', '2024-01-15', 4);

-- consulta
SELECT * FROM funcionarios
