#	Manipulação e Manutenção (DML)

# Atualização de Dados do Usuário: O usuário com id_usuario = 5 mudou-se. Utilize o comando UPDATE para alterar o campo cidade deste usuário para 'São Paulo'. (Dica:
# Utilize o filtro WHERE pelo ID).
	update usuarios 
    set cidade = 'São paulo' 
    where id_usuario = 5;
    
    select * from usuarios where id_usuario = 5;
    
#Conclusão de Meta: O usuário 'Ana Silva' atingiu uma de suas metas. Atualize o status da meta com id_meta = 2 para 'Concluida'. 
	update metas 
    set status =  'Concluida'
    where id_meta = 2;
	select * from metas where id_meta = 2;
    
#   Consultas e Relatórios (DQL) 

# Metas Ativas (Filtro Simples): Liste o nome, email e o status de todos os usuários que possuem pelo menos uma meta com status = 'Ativa'.
	select u.nome, u.email, m.status from usuarios as u
    inner join metas as m 
    on u.id_usuario = m.id_usuario
    where m.status = 'ativa';
    
# Usuários por Região (Agregação Simples): Utilize o comando COUNT para informar quantos usuários moram na cidade do 'Rio de Janeiro'.
	select count(*) as mora_rj from usuarios 
    where cidade 
    like 'Rio de Janeiro';

# Histórico de Atividades (Join Simples): Faça uma consulta que mostre o nome do usuário junto com o tipo_exercicio que ele realizou. 
# (Dica: Use INNER JOIN entre as tabelas usuarios e atividades).
	select  u.nome, a.tipo_exercicio from usuarios as u
    inner join atividades as a 
    on u.id_usuario = a.id_usuario;

# Progresso do Usuário (Join com Filtro): Liste o nome do usuário, tipo_meta, o valor_alvo e o status de todas as metas criadas pela usuária de nome 'Juliana Castro'.
	select u.nome, m.tipo_meta, m.valor_alvo, m.status from usuarios as u
    inner join metas as m 
    on u.id_usuario = m.id_usuario
    where u.nome = 'Juliana Castro';















