# INSERÇÃO DOS DADOS DAS TABELAS DO PROJETO SENAILICIOUS

use db_senailicious;
show tables;

insert into tbl_produtos (
    nome,
	descricao,
    tamanho,
    tipo,
    preco,
    desconto
) 
values (
	'Mussarela',
    'Queijo mussarela, rodelas de tomate e orégano',
    'Grande',
    'Pizza',
	'39,90',
    '0'
),
	(
	'Calabresa',
	'Linguiça calabresa e cebola',
    'Grande',
    'Pizza',
    '39,90',
    '0'
),
	(
    'Escarola',
    'Escarola refogada, mussarela e orégano'
    'Grande',
    'Pizza',
    '41,90',
    '0'
);


