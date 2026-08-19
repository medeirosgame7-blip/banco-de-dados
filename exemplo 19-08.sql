create database escola_nova; 
use escola_nova; 

create table aluno (
	id_aluno int primary key auto_increment, 
    nome varchar(60),
    cpf char(11) unique, 
    data_nascimento date, 
    email varchar(80)
);

create table turma (
	id_turma int primary key auto_increment, 
    codigo_turma char(10),
    curso varchar(60),
    turno varchar(20),
    sala varchar(10)
);

create table aluno_turma (
	id_aluno int,
    id_turma int,
    foreign key (id_aluno) references aluno (id_aluno),
    foreign key (id_turma) references turma (id_turma)
);

insert into aluno ( id_aluno, nome, cpf, data_nascimento, email)
values (1, 'Davi', '1278623544', '2003-09-28', 'davi@email.com');

select * from aluno;

insert into turma (id_turma, codigo_turma, curso, turno, sala)
value (30, 'TEC0068', 'Técnico em Desenvolvimento de Sistemas', 'Tarde', 'lab. infomática');

select * from turma;

insert into aluno_turma (id_aluno, id_turma)
value(1,30)
