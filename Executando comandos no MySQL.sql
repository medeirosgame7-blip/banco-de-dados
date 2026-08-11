create database esthevan;
use esthevan;

create table cliente (
  id INT, 
  nome VARCHAR(100),
  email VARCHAR(100), 
  idade TINYINT, 
  data_nascimento DATE, 
  hora_cadastro TIME, 
  data_hora_registro DATETIME, 
  ativo TINYINT, 
  genero ENUM('Masculino', 'Feminino', 'Outro'), 
  saldo DECIMAL(10,2)
); 
drop table cliente;
 
insert into cliente ( 
  id, nome, email, idade, data_nascimento, hora_cadastro,
  data_hora_registro, ativo, genero, saldo 
  ) VALUE (
  1, 'Maria Silva', 'maria@email.com', 28, '1997-05-10',
  '14:30:00', '2025-11-04 14:30:00', 1, 'Feminino', 1500.75
  ); 
  select * from cliente;
  
  select nome, email, idade from cliente; 