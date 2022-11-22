use db_video_locadora;
#TRABALHANDO COM DATA E HORA

#Retorna a data atual do servidor
select curdate() as data_atual;
select current_date() as data_atual;

#Retorna a hora atual do servidor
select curtime() as hora_atual;
select current_time() as hora_atual;

#Retorna a data e a hora atual do servidor
select current_timestamp() as data_hora_atual;

#Funçoes para formatar a hora com time_format

# %H - retona a hora de 00 a 23
# %h - retorna a hora de 00 a 12
# %m ou %i - retorna o minuto
# %s - retorna o segundo
# %r - retorna a hora com AM ou PM
# %T - retorna a hora completa de 00 a 23
select time_format(current_time(), '%H') as hora; 
select time_format(current_time(), '%h') as hora;
select time_format(current_time(), '%m') as minuto;
select time_format(current_time(), '%i') as minuto;
select time_format(current_time(), '%s') as segundo;
select time_format(current_time(), '%r') as hora_completa;
select time_format(current_time(), '%T') as hora;
select time_format(current_time(), '%H:%i') as hora_minuto;

#Funçao para retornar somente  hora, minuto e segundo
select hour(current_time()) as hora;
select minute(current_time()) as minuto;
select second(current_time()) as segundo;

#Funçao para formatar a data date_format

# %a - retorna o dia da semana abreviado
# %W - retorna o dia da semana
# %w - retorna o dia da semana em numeral (0 = domingo .... 6 = sabado)
# %m - retorna o mes da data (1 = janeiro e 12 = dezembro)
# %M - retorna o mes da data por escrito
# %b - retorna o mes da data por escrito abreviado
# %d - retorna o dia da data
# %y - retorna o ano da data com 2 digitos
# %Y - retorna o ano da data com 4 digitos

select date_format(current_date(), '%W');
select date_format(current_date(), '%w');
select date_format(current_date(), '%a');
select date_format(current_date(), '%m');
select date_format(current_date(), '%M');
select date_format(current_date(), '%b');
select date_format(current_date(), '%d');
select date_format(current_date(), '%y');
select date_format(current_date(), '%Y');


#Formatacao da data para o padrao brasileiro
select date_format(current_date(), '%d/%m/%Y');

#Funcao para retornar somente o dia, mes e ano
select day(current_date());
select month(current_date());
select year(current_date());

#Funcoes para calcular diferença de datas e horas
select timediff('13:00:00', '10:00:00') as qtdeHoras;

select datediff('2022-11-21', '2022-11-25') as qtdeDias;

#Retorna a diferança dos dias e calcula um valor de diaria
select concat('R$ ', ((datediff('2022-11-21', '2022-11-25') * 30.90)*-1)) as ValorPagar;

#Retorna somente a parte da data
select date(current_timestamp());

#Retorna somente a parte da hora
select time(current_timestamp());

####### Realizando Calculos #########
select 10 + 10;
select 10 - 10;
select 10 * 10;
select 10 / 10;

select (count(*) * 50.30) as qtdeFilmes from tbl_filme;
select  concat('Existe(m) ', count(*), ' filme(s) cadastrados, e custou R$ ', 
		count(*) * 30.90, ' reais para a video locadora.')  as resultado
from tbl_filme;

#alter table tbl_filme add column qtde int;
#update tbl_filme set qtde = 7 where id = 6;

#Soma valores de uma coluna
select sum(qtde) as soma from tbl_filme;

#Media de valores de uma coluna
#round - permite arredondar e limitar a qtde de casas decimais
select round(avg(qtde), 1) as media from tbl_filme;

#Retorna o menor e o maior valor
select min(qtde) as minimo from tbl_filme;
select max(qtde) as minimo from tbl_filme;

select id, nome, sinopse, qtde, '4.60' as valorUnitario,  
(qtde * 4.60) as valorTotal  
from tbl_filme
where qtde >= 4 and qtde <=8;

#between - retorna dados que estao entre dois valores (range valores)
#not between - retorna dados que nao estao entre dois valores (range valores)

select id, nome, sinopse, qtde, '4.60' as valorUnitario,  
(qtde * 4.60) as valorTotal  
from tbl_filme
where qtde not between 4 and 8;

select id, nome, sinopse, qtde, '4.60' as valorUnitario,  
(qtde * 4.60) as valorTotal  
from tbl_filme
where qtde = 2 or qtde = 4 or qtde = 6 or qtde = 9 or qtde = 10;

#in - retorna dados conforme uma sequencia de valores 
#  (ele substitui o operador lógico OR)
#not in - retorna dados que nao estao na sequencia de valores 
#  (ele substitui o operador lógico OR)
select id, nome, sinopse, qtde, '4.60' as valorUnitario,  
(qtde * 4.60) as valorTotal  
from tbl_filme
where qtde not in (2,4,6,9,10);








