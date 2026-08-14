set sql_safe_updates = 0;

update clientes set email = 'novoemail@gmail' where id_cliente = 3;

select * from clientes where id_cliente = 3;

update clientes set nome = 'esthevan' where id_cliente = 1;

update clientes set email = 'medeirosgame7@gmail.com' where id_cliente = 1;

select nome, email from clientes where id_cliente = 1;

delete from clientes where id_cliente = 1;
# delete from clientes; where id_cliente = 1;  (não fazer assim com o ponto e vírgula.)

select * from clientes;