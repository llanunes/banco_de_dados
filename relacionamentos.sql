show tables;
SELECT * FROM tbl_filme;
SELECT * FROM tbl_genero;
SELECT * FROM tbl_filme_genero;

######### obrigatorio usar AND no where
select tbl_filme.nome AS nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_filme.genero.nome AS nomeGenero 
	from tbl_fime, tbl_genero, tbl_filme_genero
		where tbl_filme.id = tbl_filme_genero.id_filme AND 
        tbl_genero.id = tbl_filme_genero.id_genero;
        
        
        
# INNER JOIN 
select tbl_filme.nome AS nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_filme.genero.nome AS nomeGenero, tbl_classificacao.nome AS nomeClassificacao, tbl_classificacao.classificacao     
		FROM tbl_filme 
			inner join tbl_filme_genero
				on tbl_filme.id = tbl_filme_genero.id_filme
					inner join tbl_genero 
						on tbl_genero.id = tbl_filme_genero.id_genero
                        
                        inner join tbl_classificacao
							on tbl_classificacao.id = tbl_filme.id_classificacao
order by tbl_filme.nome; # ordernar pelo nome do filme


# Exemplo 02 de INNER JOIN
	# Existem atores que nao foram relacionados com a nacionalidade, assim o inner join nao consegue trazer os dados desses atores
SELECT tbl_filme.nome AS nome_filme, tbl_filme.sinopse, tbl_genero.nome AS nome_genero, tbl_classificacao.nome AS nome_classificacao, tbl_classificacao.classificacao, tbl_classificacao.caracteristica, tbl_ator_diretor.nome AS nome_ator, 
tbl_ator_diretor.nome_artistico, tbl_nacionalidade.nome AS nacionalidade_ator
FROM tbl_filme
INNER JOIN tbl_filme_genero
	ON tbl_filme.id = tbl_filme_genero.id_filme
INNER JOIN tbl_genero
	ON tbl_genero.id = tbl_filme_genero.id_genero
INNER JOIN tbl_classificacao
	ON tbl_classificacao.id = tbl_filme.id_classificacao
INNER JOIN tbl_filme_ator 
	ON tbl_filme.id = tbl_filme_ator.id_filme
INNER JOIN tbl_ator
	ON tbl_ator.id = tbl_filme_ator.id_ator
INNER JOIN tbl_ator_diretor
	ON tbl_ator_diretor.id = tbl_ator.id_ator_diretor
INNER JOIN tbl_ator_diretor_nacionalidade
	ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
INNER JOIN tbl_nacionalidade
ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade
WHERE tbl_filme.id = 1;
        
        
 
        
        
# INNER JOIN - retorna apenas os registros que possuem relação em ambos os ladoos da relação 

SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico
FROM tbl_ator_diretor
	INNER JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	INNER JOIN tbl_nacionalidade
			ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;

# LEFT JOIN - retorna todos os registros que possuem relação em ambos os lados da relacao e que na tabela da esquerda possue dados e que nao foi relacionado com a tabela da direita 

SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico
FROM tbl_ator_diretor
	LEFT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	LEFT JOIN tbl_nacionalidade
			ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade; 
        
# RIGHT JOIN - retorna todos os registros que possuem relação em ambos os lados da relacao e que na tabela da direita possue dados e que nao foi relacionado com a tabela da esquerda  
        
SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico
FROM tbl_ator_diretor
	RIGHT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	RIGHT JOIN tbl_nacionalidade
			ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade; 
            
########################### UNION ###############################
# UNIAO DE SELECTS - para funcionar, os dois scripts precisam ter a mesma quantidade de colunas

SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico
FROM tbl_ator_diretor
	LEFT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	LEFT JOIN tbl_nacionalidade
			ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade
            
UNION            
            
SELECT tbl_ator_diretor.nome AS nome_ator, tbl_ator_diretor.nome_artistico
FROM tbl_ator_diretor
	RIGHT JOIN tbl_ator_diretor_nacionalidade
		ON tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
	RIGHT JOIN tbl_nacionalidade
			ON tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;             
        
        
        
        
        
        
        
        
        
        
