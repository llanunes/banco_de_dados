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
INSERT INTO tbl_produto (
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
), (
	'Suco de laranja',
	'https://riomarfortalezaonline.com.br/fortalezashopping/2020/05/Suco_de_laranja_cheppitos.jpg',
    '400 ml',
    6.00,
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

INSERT INTO tbl_ingrediente(
	nome
) values (
	'Calabresa'
),( 
	'Cebola'
), (
	'Azeitona'
);

INSERT INTO tbl_ingrediente(
	nome
) values (
	'Água'
),( 
	'Laranja'
), (
	'Açucar'
); 

# insert tabela tipo mensagem

INSERT INTO tbl_tipo_mensagem (
	tipo
)values(
	'Sugestão'
), (
	'Crítica'
);

# insert tabela mensagem

INSERT INTO tbl_mensagem (
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


INSERT INTO tbl_pizza (
    quantidade_vezes_favorito,
    id_produto,
    id_tipo_pizza
) values (
	0,
	1,
    1
);

INSERT INTO tbl_bebida(
    id_produto,
    id_tipo_bebida
) values (
	2,
    2
);

INSERT INTO tbl_produto_ingrediente (
	id_produto,
    id_ingrediente
) values 
(1,1),
(1,2), 
(1,3),
(2,4),
(2,5),
(2,6);

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
