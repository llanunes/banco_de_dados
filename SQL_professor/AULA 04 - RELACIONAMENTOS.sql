use db_video_locadora;

show tables;

select * from tbl_filme;
select * from tbl_genero;
select * from tbl_filme_genero;

#Relacionamento pelo Where
select  tbl_filme.nome as nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento,
		tbl_genero.nome as nomeGenero
from tbl_filme, tbl_genero, tbl_filme_genero
where  tbl_filme.id = tbl_filme_genero.id_filme and 
	   tbl_genero.id = tbl_filme_genero.id_genero;	
       

#Relacionamento pelo From

#inner join
select  tbl_filme.nome as nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento,
		tbl_genero.nome as nomeGenero, tbl_classificacao.nome as nomeClassificacao,
        tbl_classificacao.classificacao
from 	tbl_filme
			inner join tbl_filme_genero
				on tbl_filme.id = tbl_filme_genero.id_filme
			inner join tbl_genero
				on tbl_genero.id = tbl_filme_genero.id_genero
			inner join tbl_classificacao
				on tbl_classificacao.id = tbl_filme.id_classificacao
order by tbl_filme.nome;

        
        
        
        
