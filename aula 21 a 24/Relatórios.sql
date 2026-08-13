# Relatório 1 (Marketing): "Flash Sale"
	select * from produtos where categoria like 'Hardware' 
    and quantidade_estoque > 0 order by preco limit 3;
    
# Relatório 2 (Compras): "Auditoria de Estoque"
    select nome_produto, sku from produtos where quantidade_estoque = 0;

# Relatório 3 (Marketing): "Itens de Luxo"
	select nome_produto, preco from produtos order by nome_produto desc limit 2;

# Relatório 4 (Busca): "Itens Específicos" 
	select * from produtos WHERE nome_produto LIKE '%Placa%';

#  Relatório 5 (Finanças): "Produtos Mais Caros por Categoria"
	select * from produtos where categoria like 'periféricos' order by categoria desc limit 3;
                           