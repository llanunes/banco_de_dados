select * from tbl_ingrediente;
select * from tbl_produto;
select * from tbl_produto_ingrediente;
select * from tbl_mensagem;
select * from tbl_tipo_mensagem;
select * from tbl_bebida;
select * from tbl_pizza;
select * from tbl_tipo_bebida;
select * from tbl_tipo_pizza;
select * from tbl_administrador;
select * from tbl_tipo_produto;

#################################################################### INSERT TESTE ###################################################################################

# insert tabela produto
insert into tbl_produto (
	nome,
    imagem,
    tamanho,
    preco,
    desconto,
    id_tipo_produto
) values(
	'Calabresa',
    'https://img.freepik.com/fotos-premium/pizza-a-brasileira-com-queijo-mussarela-linguica-calabresa-e-cebola-vista-do-topo_261158-2018.jpg?w=2000',
    'Grande',
    39.90,
    NULL,
    1
);

insert into tbl_produto (
	nome,
    imagem,
    tamanho,
    preco,
    desconto,
    id_tipo_produto
) values(
	'Laranja',
	'https://riomarfortalezaonline.com.br/fortalezashopping/2020/05/Suco_de_laranja_cheppitos.jpg',
    '400 ml',
    39.90,
    NULL,
    2
);

INSERT INTO tbl_tipo_produto(
	tipo
) values (
	'Pizza'
), (
	'Bebida'
);

# insert tabela ingrediente

insert into tbl_ingrediente(
	nome
) values (
	'Calabresa'
);

insert into tbl_ingrediente(
	nome
) values (
	'Cebola'
), (
	'Azeitona'
);

# insert tabela tipo mensagem

insert into tbl_tipo_mensagem (
	tipo
)values(
	'Sugestão'
);


insert into tbl_tipo_mensagem(
	tipo
) values (
	'Crítica'
);

# insert tabela mensagem

insert into tbl_mensagem (
	nome,
    email,
    telefone,
    celular,
    mensagem,
    id_tipo_mensagem
) values (
	'Larissa',
    'larissanunes@senai.com',
    '35993326',
    '11 986271996',
    'Sugiro que coloquem mais calabresa na pizza de calabresa.',
    1
);


insert into tbl_pizza (
    quantidade_vezes_favorito,
    id_produto
)values(
	0,
	1
);

INSERT INTO tbl_bebida(
    id_produto
) values (
	
);

INSERT INTO tbl_produto_ingrediente (
	id_produto,
    id_ingrediente
) values 
(1,1),
(1,2), 
(1,3);

INSERT INTO tbl_tipo_pizza (	
	tipo
) values (
	'Salgada'
), (
	'Doce'
);

INSERT INTO tbl_tipo_bebida (	
	tipo
) values (
	'Alcoólica'
), (
	'Suco'
), (
	'Refrigerante'
);
