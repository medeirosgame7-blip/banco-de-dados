create database cine_code;
use cine_code;

create table clientes (
	id_cliente int primary key auto_increment,
    nome_cliente varchar(60), 
    estado varchar(45), 
    regiao varchar(45), 
    sexo varchar(10), 
    data_nascimento date, 
    date_conta date
);
drop table clientes;

create table filmes (
	id_filme int primary key auto_increment,
    titulo varchar(60), 
    genero varchar(45), 
    duracao varchar(45), 
    ano_lancamento int, 
    preco_aluguel double
);

create table atores (
	id_ator int primary key auto_increment, 
    nome_ator varchar(60), 
    ano_nascimento date, 
    nacionalidade varchar(20), 
    sexo varchar(10)
);

create table alugueis (
	id_aluguel varchar(45) primary key ,
    id_cliente int,
    id_filme int,
    nota double,
    data_aluguel date, 
    foreign key (id_cliente) references clientes (id_cliente),
	foreign key (id_filme) references filmes (id_filme)
);
create table atuacoes ( 
	id_protagonista int primary key auto_increment,
    id_filme int, 
    id_ator int, 
    foreign key (id_filme) references filmes (id_filme), 
    foreign key (id_ator) references atores (id_ator)
);

insert into clientes ( id_cliente, nome_cliente, estado, regiao, sexo, data_nascimento, date_conta)
values (1, 'osmar santos', 'acre', 'rio branco', 'masculino', '1950')





