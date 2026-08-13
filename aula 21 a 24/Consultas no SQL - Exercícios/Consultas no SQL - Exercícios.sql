select * from clientes;

# Exercício 1 – Ordem alfabética
#Mostre todos os clientes em ordem alfabética crescente pelo nome.
	select nome from clientes order by nome asc;

# Exercício 2 – Ordem decrescente
#Mostre todos os clientes em ordem alfabética decrescente pelo nome.
	select nome from clientes order by nome desc;

# Exercício 3 – Idade crescente
#Liste o nome e a idade dos clientes, do mais novo para o mais velho.
	select nome, idade from clientes order by idade asc;

# Exercício 4 – Idade decrescente
#
	select nome, idade from clientes order by idade desc;
    
#  Exercício 5 – Primeiros resultados
	select * from clientes limit 5;   

#  Exercício 6 – Combinação de ORDER BY e LIMIT
    select nome, idade from clientes order by idade desc limit 3; 

#  Exercício 7 – Clientes mais novos   
	 select nome, idade from clientes order by idade asc limit 3; 

# Exercício 8 – Cidades em ordem
	select distinct cidade from clientes order by cidade asc;

# Exercício 9 – Visualização rápida
	select nome from clientes order by nome asc limit 10;

# Exercício 10 – Desafio final        
	select nome, cidade, idade from clientes where cidade = 'Rio de Janeiro' order by idade desc limit 5;
    
#seleção por texto 
select * from clientes where cidade like 'são paulo';

#seleção por número 
select * from clientes where idade = 28;

	