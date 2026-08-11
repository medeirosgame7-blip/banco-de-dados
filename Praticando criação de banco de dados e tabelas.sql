CREATE DATABASE gestao_escolar_esthevan;
use gestao_escolar_esthevan;

create table aluno (
   id_aluno int,
   nome varchar(45),
   data_nascimento DATE,
   telefone char(13)
);

 insert into aluno (
   id_aluno, nome, data_nascimento, telefone
 ) values (
   1, 'Esthevan', '1999-10-5', '229673-1945'
 ),
 (2, 'Maria', '1983-3-29', '554332-1932'),
 (3, 'João', '2010-6-2', '454356-1987'),
 (4, 'Pedro', '2013-1-25', '567234-7653'), 
 (5, 'Bartolomeu', '1999-9-2', '290456-2784');
 
 create table turma (
   id_turma int,
   nome_turma varchar(45),
   turno enum('manhã', 'tarde', 'noite'),
   ano_letivo varchar(45)
);
insert into turma (
   id_turma, nome_turma, turno, ano_letivo
 ) values (
   1, '3002', manhã, '3º'
 ), 
 (2, '2003', tarde, '2º');

 