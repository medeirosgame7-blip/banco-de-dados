# Atualização de registros no SQL - Exercícios


# Exercício 1- Corrigir o e-mail abreviado da Gabriela (id 7)
	update clientes set email = 'gabriela.costa@yahoo.com' 
    where id_cliente = 7;
    
    select * from clientes where id_cliente = 7;

# Exercício 2 Ajustar cidade da Carla (id 3) de “Belo Horizonte” para “Contagem”   
	update clientes set cidade = 'Contagem' 
    where id_cliente = 3;
    select * from clientes where id_cliente = 3;
    
# Exercício 3 Atualizar a idade do Felipe (id 6) de 40 para 41    
	update clientes set idade = 41 
    where id_cliente = 6;
    select * from clientes where id_cliente = 6;

# Exercício 4 Padronizar cidade do Bruno (id 2) para incluir UF: “São Paulo - SP”
	update clientes set cidade = 'São Paulo - SP' 
    where id_cliente = 2;
    
    update clientes set idade = 35 
    where id_cliente = 2;
    
    select * from clientes where id_cliente = 2;

# Exercício 5 Corrigir e-mail da Karen (id 11) para @empresa.com
	update clientes set email = 'karen.santos@empresa.com' 
    where id_cliente = 11;
    update clientes set cidade = 'Campinas' where id_cliente = 11;
	select * from clientes where id_cliente = 11;

# Exercício 6 Trocar cidade do João Pedro (id 10) de “Vitória” para “Cariacica”
	update clientes set cidade = 'Cariacica' where id_cliente = 10;
    select * from clientes where id_cliente = 10;
    
# Exercício 7 Atualizar idade da Patrícia (id 16) de 35 para 36
	update clientes set idade = 36 where id_cliente = 16;
    select * from clientes where id_cliente = 16;

#   Exercício 8 Corrigir cidade da Isabela (id 9) para “Caxias do Sul” 
	update clientes set cidade = 'Caxias do Sul' where id_cliente = 9; 
    select * from clientes where id_cliente = 9;

#     Exercício 9 Padronizar e-mail do Vinícius (id 20)
	update clientes set email = 'vinicius.teixeira@empresa.com' where id_cliente = 20; 
	select * from clientes where id_cliente = 20;

# Exercício 10 Aumentar em 1 a idade de todos os clientes do Rio de Janeiro
	 update clientes set idade = idade + 1 where cidade = 'Rio de Janeiro';
     select * from clientes;
     
     
# Exclusão de registros no SQL - Exercícios

# Exercício 1 Exclua o cliente com id_cliente igual a 5
	delete from clientes where id_cliente = 5;
    select * from clientes where id_cliente = 5;

# Exercício 2 Exclua o Felipe Mendes do banco de dados
	delete from clientes where nome = 'Felipe Mendes';
    select * from clientes where nome = 'Felipe Mendes';
    
# Exercício 3 Exclua todos os clientes de Manaus
	delete from clientes where cidade = 'Manaus'; 
	select * from clientes where cidade = 'Manaus';

# Exercício 4 Exclua clientes com idade abaixo ou igual a 23 anos
	delete from clientes where idade < 23; 
    select * from clientes where idade < 23; 