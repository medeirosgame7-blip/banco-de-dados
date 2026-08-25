/* LISTA DE EXERCÍCIOS - AGREGAÇÃO SEM GROUP BY 
   Foco: COUNT, SUM, AVG, MIN, MAX com filtros (WHERE)
*/

-- 1. COUNT: Quantos filmes de 'Drama' existem no catálogo?
	select count(*) as total_drama from filmes where genero = 'Drama';
    
-- 2. SUM: Qual seria a receita total se alugássemos todos os filmes de 'Comédia' uma única vez?
	select round(sum(preco_aluguel),2) from filmes where genero = 'comedia';
    
-- 3. AVG: Qual é a média de duração (em minutos) dos filmes do gênero 'Ficção e Fantasia'?
	select round(avg(duracao),2) as media_em_minutos from filmes where genero =  'Ficção e Fantasia';
    
-- 4. MAX: Qual é o preço de aluguel mais caro entre os filmes lançados no ano de 2011?
	select max(preco_aluguel) as 'Aluguel mais caro' from filmes where ano_lancamento = 2011;
    
-- 5. MIN: Qual é o preço de aluguel mais barato entre os filmes do gênero 'Ação e Aventura'?
	select min(preco_aluguel) as 'Aluguel mais barato' from filmes where genero like 'Ação e Aventura';
    
-- 6. COUNT: Quantos clientes moram na região 'Sudeste'?
	select count(*) as clientes_sudeste from clientes where regiao like 'Sudeste';

-- 7. AVG: Qual é a média de preço de aluguel de todos os filmes lançados após o ano de 2010?
	select round(avg(preco_aluguel),2) from filmes where ano_lancamento > 2010;
    
-- 8. MIN: Qual é a data de nascimento do ator/atriz mais velho(a) registrado no banco?
	select min(ano_nascimento) from atores;
    
-- 9. MAX: Qual é a data de nascimento do cliente mais jovem do sexo 'masculino'?
	select max(data_nascimento) as data_de_nascimento_cliente_mais_jovem from clientes where sexo like 'masculino';
    
-- 10. COUNT: Quantos alugueis receberam a nota máxima (10)?
	select count(*) as 'total de nota 10' from alugueis where nota = 10;
    
-- 11. AVG: Qual é a média das notas dadas para o filme com id_filme = 5 (O Senhor dos Anéis)?
	select avg(nota) as senhor_dos_aneis from alugueis where id_filme = 5;
    
-- 12. SUM: Quantos minutos no total levaria para assistir a todos os filmes de 'Mistério e Suspense' em sequência?
	select sum(duracao) from filmes where genero = 'Mistério e Suspense';
    
-- 13. COUNT: Quantas atrizes (sexo feminino) nascidas nos EUA estão cadastradas?
	select count(*) AS TOTAL_DE_ATRIZES from atores where sexo = 'feminino' and nacionalidade = 'EUA';
    
-- 14. AVG: Qual é a média de preço dos filmes que têm duração maior que 150 minutos?
	select avg(preco_aluguel) from filmes where duracao > 150;
    
-- 15. COUNT: Quantos alugueis foram realizados no ano de 2018?
	select count(*) as total_alugueis from alugueis where data_aluguel = 2018; 
    select count(*) as total_alugueis from alugueis where year (data_aluguel) = 2018; 
    