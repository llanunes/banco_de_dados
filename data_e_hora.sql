# AULA SOBRE DATA E HORA 

use db_video_locadora;
show tables;

# retorna a data atual do servidor
SELECT curdate() as data_atual;
SELECT current_date () as data_atual;


# retorna a hora atual do servidor
SELECT curtime() as hora_atual;
SELECT current_time() as hora_Atual;


# retorna a data e a hora atual do servidor
SELECT current_timestamp() as data_hora_atual;


############# funcoes para formatacao da hora com TIME_FORMAT()
SELECT time_format (current_time(), '%H') as hora; # retorna de 0 a 23h
SELECT time_format (current_time(), '%h') as hora; # retorna de 0 a 12h
SELECT time_format (current_time(), '%r') as hora; # retorna a hora com AM ou PM, hora completa
SELECT time_format (current_time(),'%i') as minuto; #retorna os minutos
SELECT time_format (current_time(), '%r') as hora; # retorna a hora com AM ou PM, hora completa
SELECT time_format (current_time(), '%H:%i') as hora_e_minuto; # retorna a hora e o minuto


# Função para retornas somente hora, minuto e segundo - forma mais rapida. Funcoes nativas, funciona em qualquer banco

SELECT hour(current_time()) as hora;
SELECT minute(current_time()) as minuto;
SELECT second(current_time()) as segundo;


#################### funcao para formatar a data 

SELECT date_format (current_date(), '%W'); # retorna o dia da semana por escrito em ingles
SELECT date_format (current_date(), '%w'); # retorna o dia da semana por numero. EX: domingo é 0, segunda é 1, terça é 2...
SELECT date_format (current_date(), '%a'); # retorna o dia da semana por escrito em ingles abreviadamente
SELECT date_format (current_date(), '%m'); # retorna o mes por numero
SELECT date_format (current_date(), '%M'); # retorna o mes por escrito em ingles
SELECT date_format (current_date(), '%b'); # retorna o mes escrito em ingles abreviadamente
SELECT date_format (current_date(), '%d'); # retorna o dia 
SELECT date_format (current_date(), '%y'); # retorna o ano com 2 digitos
SELECT date_format (current_date(), '%Y'); # retorna o ano com 4 digitos
SELECT date_format (current_datr(), '%u'); # retorna a semana do ano

SELECT date_format (current_date(), '%d/%m/%y'); # retorna dia mes e ano no formato brasileiro

select day (current_date());	# retorna o dia
select month (current_date());	# retorna o mes
select year (current_date());	# retorna o ano


################### funcoes para calcular diferenca de datas e horas
SELECT timediff ('10:00:00', '13:00:00') as quantidade_horas; # diferenca de horas
SELECT datediff ('2022-11-22', '2022-12-22') as quantidade_dias; # diferenca de dias 

SELECT ((datediff ('2022-11-22', '2022-12-22') * 30) * -1) as quantidade_dias; # diferenca de dias // valor pagar

select concat('R$ ', ((datediff ('2022-11-22', '2022-12-22') * 30) * -1)) as valor_pagar; # retorna a diferenca dos dias e calcula um valor a pagar

select date (current_timestamp()); # retorna somente a parte do dia
select time (current_timestamp()); # retorna somente a parte da hora


################## REALIZANDO CALCULOS #####################

select 10 + 10;
select 10 - 10;
select 10 / 10;
select 10 * 10;

select * from tbl_filme;
SELECT count(*) as quantidade_filmes from tbl_filme; # mostra a quantidade de filmes
SELECT (count(*)*50) as quantidade_filmes from tbl_filme; # mostra a quantidade total se cada filme custasse 50 reais

select concat ('Existem ', count(*) , ' filmes cadastrados, e custou ', count(*) * 30.90,  ' reais para a vídeo locadora. ') as resultado from tbl_filme;

alter table tbl_filme add column qtde INT;

update tbl_filme SET qtde = 19 where id = 12; 

select qtde from tbl_filme;

# Soma os valores de uma coluna
SELECT sum(qtde) as soma from tbl_filme;

# media de valores de uma coluna
SELECT round (avg(qtde), 1) as media from tbl_filme;


# retorna o menor e o maior valor 
SELECT min(qtde) as minimo from tbl_filme;
SELECT max(qtde) as minimo from tbl_filme;



# in - retorna dados conforme uma sequencia de valores EXTREMAMENTE UTILIZADO JUNTO COM O LIKE (pega pedaço de palavrass que a pessoa deseja)
SELECT id, nome, sinopse, qtde,  '4.50' as valor_unitario, (qtde * 4.50) as valor_total from tbl_filme where qtde < 22 AND qtde > 2; # devolve todos os valores menores que 22 e maiores que 2
SELECT id, nome, sinopse, qtde,  '4.50' as valor_unitario, (qtde * 4.50) as valor_total from tbl_filme where qtde < 22 AND qtde > 2;
SELECT id, nome, sinopse, qtde,  '4.50' as valor_unitario, (qtde * 4.50) as valor_total from tbl_filme where qtde = 22 or qtde = 17 or qtde = 6; 
SELECT id, nome, sinopse, qtde,  '4.50' as valor_unitario, (qtde * 4.50) as valor_total from tbl_filme where qtde in (22, 17, 6, 2); # substituição dos OR. Trazer soemnte o que for ticado
SELECT id, nome, sinopse, qtde,  '4.50' as valor_unitario, (qtde * 4.50) as valor_total from tbl_filme where qtde not in (22, 17, 6, 2); # substituição dos OR. Trazer somente os que náo foram ticados















