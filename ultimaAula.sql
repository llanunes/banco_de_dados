# estrutura basica do SELECT


# Retorna todas as colunas e todos os registros
select * from tbl_filme;

select tbl_filme.* from tbl_filme;

# retorna apenas os atributos selecionados de todos os registros
select nome, duracao, data_lancamento from tbl_filme;

select tbl_filme.nome, tbl_filme.duracao, tbl_filme.data_lancamento from tbl_filme;


# filtro pelo id
select * from tbl_filme where id = 3;
select nome, sinopse from tbl_filme where id = 3;

# filtro por outros atributos 
select * from tbl_filme where nome like '%Batman%';


# ordenar
select * from tbl_filme order by nome asc; # ordem crescente
select * from tbl_filme order by nome desc; # ordem decrescente

select * from tbl_filme order by nome asc, nome_original desc;

# operadores de comparacao
# = igual
# > maior
# < menor
# >= maior ou igual
# <= menor ou igual
# <> diferente

select * from tbl_filme where data_lancamento < '1990-12-31';
select * from tbl_filme where data_lancamento > '1990-12-31';
select * from tbl_filme where data_lancamento <= '1990-12-31';
select * from tbl_filme where data_lancamento >= '1990-12-31';
select * from tbl_filme where data_lancamento <> '2000-12-31';

# operadores logicos
# E ----- and
# OU ---- or
# NAO --- not

# OR
select * from tbl_filme where nome like 'a%' or nome like 'o%'; 

# AND
# filmes que comcam com a letra A e foi lancado antes de 2010
select * from tbl_filme where nome like 'a%' AND data_lancamento < '2010-01-01';

# nome com a letra a se nao comecar, o nome original começa com a letra a, o nome do filme tem que comecar com a letra o, se nao começar, o nome original começa com a letra o e a data de lancamento < 2010

select nome, nome_original, sinopse, duracao, data_lancamento from tbl_filme where 
(((nome LIKE 'a%' OR nome_original LIKE 'a%')
OR 
(nome like 'o%' OR nome_original like 'o%'))
AND
data_lancamento < '2010-01-01');



# Ordem de execucao dos operadores logicos
# Prioridade 	0 - 	()
# Prioridadde	1 -		NOT
# Prioridade   	2 - 	AND
# Prioridade 	3 - 	OR






