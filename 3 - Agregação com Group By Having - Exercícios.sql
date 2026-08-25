-- EXERCÍCIO 1: filmes alugados mais de 5 vezes
	select id_filme, count(*) AS alugudos_mais_de_cinco from alugueis
    group by id_filme 
    having alugudos_mais_de_cinco > 5;

-- EXERCÍCIO 2: clientes que fizeram 3 ou mais alugueis
	select id_cliente, count(*) as clientes_mais_de_tres_alugueis from alugueis
    group by id_cliente
    having clientes_mais_de_tres_alugueis >= 3;

-- EXERCÍCIO 3: gêneros com média de preço acima de 2.50
	select genero, round((preco_aluguel),2) as media_generos from filmes
    group by genero
    having media_generos > 2.50;

-- EXERCÍCIO 4: anos com mais de 4 filmes cadastrados
	select ano_lancamento, count(*) as mais_de_quatro_anos from filmes
    group by ano_lancamento
    having mais_de_quatro_anos > 4;

-- EXERCÍCIO 5: atores que atuaram em mais de 1 filme # pedir pro vitor explicar na correção.
	select id_ator, count(*) as atores_mais_de_um_filme from atuacoes
    group by id_ator
    having atores_mais_de_um_filme > 1;

-- EXERCÍCIO 6: estados com mais de 6 clientes
	select estado, count(*) as mais_de_seis from clientes 
    group by estado
    having mais_de_seis > 6;

-- EXERCÍCIO 7: filmes com média de nota maior que 8


-- EXERCÍCIO 8: clientes que alugaram 2+ filmes diferentes


-- EXERCÍCIO 9: anos cuja soma de duração ultrapassa 500


-- EXERCÍCIO 10: nacionalidades com mais de 8 atores

