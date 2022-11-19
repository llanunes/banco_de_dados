# projeto pizzaria senailicious

create database db_senailicious;
use db_senailicious;
show tables;

##############################################################

# tabelas de PRODUTOS 
create table tbl_produto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45) NOT NULL,
	descricao TEXT NOT NULL,
    tamanho VARCHAR(45),
    tipo VARCHAR(45) NOT NULL,
    preco FLOAT NOT NULL,
    desconto INT,
    unique index (id)
);

create table tbl_bebida (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(45) NOT NULL,
    imagem VARCHAR(200),
    id_produto INT NOT NULL,
   constraint FK_produto_bebida
   foreign key (id_produto)
   references tbl_produto (id),
   unique index (id)
);

create table tbl_pizza (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(45) NOT NULL,
    imagem VARCHAR (200),
    quantidade_vezes_favorito INT NOT NULL,
    id_produto INT NOT NULL,
    constraint FK_produto_pizza
    foreign key (id_produto)
    references tbl_produto(id),
    unique index(id)
);

##############################################################

# tabela de CLIENTES

create table tbl_cliente (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR (256) NOT NULL,
    telefone VARCHAR (20) NOT NULL,
    celular VARCHAR (20) NOT NULL,
    mensagem TEXT NOT NULL,
    unique index(id)
);

create table tbl_tipo_mensagem (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (15) NOT NULL,
    id_cliente INT NOT NULL,
    constraint FK_cliente_tipo_mensagem
    foreign key (id_cliente)
    references tbl_cliente(id),
    unique index (id)
);

#####################################################################

# tabela administrador

create table tbl_administrador (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(256) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    unique index (id)
);

#####################################################################

# tabela de servicos

create table tbl_servicos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    icone VARCHAR(200),
    nome VARCHAR (50),
    unique index (id)
);

