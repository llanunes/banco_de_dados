SHOW TABLES;
USE db_senailicious;

SELECT * FROM tbl_ingrediente;
SELECT * FROM tbl_produto;
SELECT * FROM tbl_produto_ingrediente;
SELECT * FROM tbl_mensagem;
SELECT * FROM tbl_tipo_mensagem;
SELECT * FROM tbl_bebida;
SELECT * FROM tbl_pizza;
SELECT * FROM tbl_tipo_bebida;
SELECT * FROM tbl_tipo_pizza;
SELECT * FROM tbl_administrador;
SELECT * FROM tbl_tipo_produto;

################################################################### RELAÇÕES ################################################################################

# ID, nome, imagem, tamanho, % desconto produto, ingredientes do produto e o tipo de produto.
SELECT tbl_produto.id, tbl_produto.nome AS nome_produto, tbl_produto.imagem, tbl_produto.tamanho, tbl_produto.preco, tbl_produto.desconto, tbl_ingrediente.nome AS ingrediente, tbl_tipo_produto.tipo AS tipo_produto
FROM tbl_produto 
INNER JOIN tbl_produto_ingrediente
	ON tbl_produto.id = tbl_produto_ingrediente.id_tipo_produto
INNER JOIN tbl_tipo_produto 
	ON tbl_tipo_produto.id = tbl_produto.id_tipo_produto
INNER JOIN tbl_ingrediente
	ON tbl_ingrediente.id = tbl_produto_ingrediente.id_ingrediente;

# Dados de quem mandou a mensagem (nome, telefone, celular, email) e o tipo de mensagem.
SELECT tbl_mensagem.id, tbl_tipo_mensagem.tipo AS tipo_de_mensagem, tbl_mensagem.nome AS nome_pessoa,  tbl_mensagem.mensagem, tbl_mensagem.celular,tbl_mensagem.email, tbl_mensagem.telefone
FROM tbl_mensagem
INNER JOIN tbl_tipo_mensagem
	ON tbl_tipo_mensagem.id = tbl_mensagem.id_tipo_mensagem;
    
# Retorna os dados da pizza (nome, imagem, preco, tamanho, desconto, ingrediente, tipo, quantidade de vezes favorita)
SELECT tbl_produto.id, tbl_tipo_produto.tipo AS tipo_produto, tbl_produto.nome AS nome_produto, tbl_produto.imagem, tbl_produto.preco, tbl_produto.tamanho, tbl_produto.desconto, tbl_ingrediente.nome AS ingrediente, tbl_tipo_pizza.tipo, tbl_pizza.quantidade_vezes_favorito
FROM tbl_produto
INNER JOIN tbl_tipo_produto
ON tbl_tipo_produto.id = tbl_produto.id_tipo_produto
INNER JOIN tbl_produto_ingrediente
ON tbl_tipo_produto.id = tbl_produto_ingrediente.id_tipo_produto
INNER JOIN tbl_ingrediente
	ON tbl_ingrediente.id = tbl_produto_ingrediente.id_ingrediente
INNER JOIN tbl_pizza
    ON  tbl_produto.id = tbl_pizza.id_produto
INNER JOIN tbl_tipo_pizza 
    ON tbl_tipo_pizza.id = tbl_pizza.id_tipo_pizza;
    
# Retorna os dados de uma bebida (nome, imagem, preco, tamanho, ingrediente (suco), tipo)
SELECT tbl_produto.id, tbl_tipo_produto.tipo AS tipo_produto, tbl_produto.nome AS nome_produto, tbl_produto.imagem, tbl_produto.preco, tbl_produto.tamanho, tbl_produto.desconto, tbl_ingrediente.nome AS ingrediente, tbl_tipo_bebida.tipo
FROM tbl_produto
INNER JOIN tbl_tipo_produto
ON tbl_tipo_produto.id = tbl_produto.id_tipo_produto
INNER JOIN tbl_produto_ingrediente
ON tbl_tipo_produto.id = tbl_produto_ingrediente.id_tipo_produto
INNER JOIN tbl_ingrediente
	ON tbl_ingrediente.id = tbl_produto_ingrediente.id_ingrediente
INNER JOIN tbl_bebida
    ON  tbl_produto.id = tbl_bebida.id_produto
INNER JOIN tbl_tipo_bebida
    ON tbl_tipo_bebida.id = tbl_bebida.id_tipo_bebida;

