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


################################################################### RELAÇÕES #####################################################################

# relações de produto com ingredientes

SELECT tbl_produto.nome AS nome_produto, tbl_produto.imagem, tbl_produto.tamanho, tbl_produto.tipo, tbl_produto.preco, tbl_produto.desconto, tbl_ingrediente.nome AS ingrediente
FROM tbl_produto 

INNER JOIN tbl_produto_ingrediente
ON tbl_produto.id = tbl_produto_ingrediente.id_produto

INNER JOIN tbl_ingrediente
ON tbl_ingrediente.id = tbl_produto_ingrediente.id_ingrediente;
