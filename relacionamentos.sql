show tables;
SELECT  * FROM tbl_filme;
SELECT  * FROM tbl_genero;
SELECT  * FROM tbl_filme_genero;

######### obrigatorio usar AND no where
select tbl_filme.nome AS nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_filme.genero.nome AS nomeGenero 
	from tbl_fime, tbl_genero, tbl_filme_genero
		where tbl_filme.id = tbl_filme_genero.id_filme AND 
        tbl_genero.id = tbl_filme_genero.id_genero;
        
        
        
        
        
        
        
        
# inner join         
select tbl_filme.nome AS nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento, tbl_filme.genero.nome AS nomeGenero, tbl_classificacao.nome AS nomeClassificacao, tbl_classificacao.classificacao     
		FROM tbl_filme 
# se relaciona com
			inner join tbl_filme_genero
				on tbl_filme.id = tbl_filme_genero.id_filme
					inner join tbl_genero 
						on tbl_genero.id = tbl_filme_genero.id_genero
                        
                        inner join tbl_classificacao
							on tbl_classificacao.id = tbl_filme.id_classificacao
order by tbl_filme.nome; # ordernar pelo nome do filme