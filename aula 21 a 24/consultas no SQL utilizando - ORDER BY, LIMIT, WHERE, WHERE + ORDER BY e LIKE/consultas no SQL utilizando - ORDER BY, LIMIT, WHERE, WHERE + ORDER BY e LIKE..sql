# Nível 1: Ordenação (ORDER BY)

# 1)Liste todos os funcionários, ordenados pelo nome em ordem alfabética (A-Z).
	select * from funcionarios order by nome asc;
  # ou assim (select * from funcionarios order by nome ;)
    
# 2)Mostre todos os funcionários, ordenados domaior salario para o menor.
	select * from funcionarios order by salario desc;
    
# 3)Encontre todos os funcionários e ordene-os pela data de nascimento, do mais velho para o mais novo.
	select * from funcionarios order by nascimento asc;

#  Nível 2: Limitando Resultados (LIMIT)

#1)Encontre os 5 funcionários com os maiores salários.
  select * from funcionarios order by salario desc limit 5;
  
#2)  Liste os 3 funcionários mais novos da empresa (com base na data de nascimento).
	select * from funcionarios order by nascimento desc limit 3;

#  Nível 3: Filtragem (WHERE)

#1)Liste todos os funcionários que têm o cargo de ‘Analista de Dados’.
	select * from funcionarios where cargo like 'Analista de Dados';
    
#2)Mostre todos os funcionários que ganham exatamente R$ 3.500,00.
	select * from funcionarios where salario = 3500.00;

#3)Encontre todos os funcionários que recebem um salario maior que R$5.000,00.
	select * from funcionarios where salario > 5000.00;

#4)Liste todos os funcionários com salario menor que R$ 2.000,00.
	select * from funcionarios where salario < 2000.00;

#5)Encontre todos os funcionários que nasceram depois de '1990-01-01’.
	select * from funcionarios where nascimento > '1990-01-01';

#6)Liste os funcionários do cargo 'Médico' E que ganham mais de R$4.000,00.
	select * from funcionarios where cargo = 'Médico' and salario > 4000.00 order by salario;

#7)Mostre todos os funcionários que são 'Contador' OU ‘Contador Fiscal'.
	select * from funcionarios where cargo like 'Contador' or cargo like 'Contador Fiscal';
    
#Nível 4: Desafios (WHERE + ORDER BY)
#1)Liste todos os funcionários do cargo 'Nutricionista', ordenados alfabeticamente pelo nome.
	select * from funcionarios where cargo like 'Nutricionista' order by nome asc; 

#2)Mostre todos os funcionários que ganham mais de R$ 3.000,00, ordenando-os do menor salario para o maior.
	select * from funcionarios where salario > 3000.00 order by salario asc;
    
#Nível 5: LIKE
#1)Mostre o nome, cargo e salário de todos os funcionários cujo nome começa com a letra M.
	select nome, cargo, salario from funcionarios where nome like 'M%';

#2)Mostre o nome e o cargo dos funcionários que possuem a palavra Analista em qualquer parte do cargo.
	select nome, cargo from funcionarios where cargo like '%Analista%';

#3)Mostre o nome, CPF e nascimento dos funcionários cujo nome termina com Williams.   
	select nome, CPF, nascimento from funcionarios where nome like '%Williams';