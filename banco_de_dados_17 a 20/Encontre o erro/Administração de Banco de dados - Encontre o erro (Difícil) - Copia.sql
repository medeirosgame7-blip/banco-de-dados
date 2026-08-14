-- Criação do banco
CREATE DATABASE biblioteca_esthevan;# FALTOU O 'A' ENTRE B E S, E O PONTO E VÍRGULA.
USE biblioteca_esthevan; # palavra biblioteca escrita errado.

-- Tabela de livros
CREATE TABLE livros (
  id_livro INT PRIMARY KEY AUTO_INCREMENT, #tinha um ponto e vírgula ao invés de uma vírgula apenas
  titulo VARCHAR(80) NOT NULL,
  ano_publicacao INT, #faltava uma vírgula.
  preco DECIMAL(10,2),
  estoque INT #vírgula desnecessária.
);

-- Tabela de autores
CREATE TABLE autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome_autor VARCHAR(80) NOT NULL,
  nacionalidade VARCHAR(40)
);

-- Inserções em LIVROS (nomes e ordens inconsistentes)
INSERT INTO livros (titulo, preco, estoque) VALUES #faltou um s ao final de livros.
('Dom Casmurro', 39.90, 12);#vírgula ao invés de ponto.
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES #erro em preco escrito com ç, e ano ao invés de ano_publicacao.
('Capitães da Areia', '1937', 45.50, 20);
INSERT INTO livros (titulo, ano_publicacao, preco) VALUES
('Vidas Secas', 1938, 49.90);
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Grande Sertão: Veredas', '1956', 59.90, 10); #estoque estava escrito "dez" e preço com aspas simples e vírgula ao invés de ponto.

-- Inserções em AUTORES (nome de tabela/colunas)
INSERT INTO autor (nome_autor , nacionalidade) VALUES #Estava escrito 'autores' e nome ao invés de nome_autor. 
('Machado de Assis', 'Brasil');
INSERT INTO autor (nome_autor, nacionalidade) VALUES
('Jorge Amado', 'Brasil');
INSERT INTO autor (nome_autor) VALUES
( 'Guimarães Rosa' )
;

-- SELECTs (nomes inconsistentes)
SELECT * FROM livros; #Estava escrito livro ao invés de livros.
SELECT * FROM autor; #Estava escrito autores ao invés de autor.

# Os dois abaixo estão duplicados.
SELECT * FROM livros; 
SELECT * FROM autor;
