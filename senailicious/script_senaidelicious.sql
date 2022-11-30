# projeto pizzaria senailicious

create database db_senailicious;
use db_senailicious;
show tables;

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


drop table tbl_pizza;
drop table tbl_bebida;
drop table tbl_tipo_produto;
drop table tbl_produto_ingrediente;
drop table tbl_mensagem;
drop table tbl_ingrediente;
drop table tbl_produto;
drop table tbl_produto_ingrediente;
drop table tbl_tipo_produto;
drop table tbl_tipo_pizza;
drop table tbl_tipo_bebida;
drop table tbl_tipo_mensagem;
drop table teste;


##############################################################

# tabelas de PRODUTOS 

create table tbl_ingrediente(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (30),
    unique index(id)
);


create table tbl_tipo_produto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(20),
    unique index(id)
);

create table tbl_produto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45) NOT NULL,
    imagem VARCHAR (200),
    tamanho VARCHAR(45),
    preco FLOAT NOT NULL,
    desconto INT,
    id_tipo_produto INT NOT NULL,
    constraint FK_tipo_produto_produto
    foreign key (id_tipo_produto)
    references tbl_tipo_produto(id),
    unique index (id)
);

ALTER TABLE tbl_produto
	MODIFY column preco DECIMAL(4,2);

create table tbl_produto_ingrediente (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_tipo_produto INT NOT NULL,
    id_ingrediente INT,
    constraint FK_tipo_produto_produto_ingrediente
		foreign key (id_tipo_produto)
			references tbl_tipo_produto(id),
    constraint FK_ingrediente_produto_ingrediente
		foreign key (id_ingrediente)
			references tbl_ingrediente(id),
    unique index (id)        
);

create table tbl_tipo_bebida (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (20),
	unique index (id)
);

create table tbl_bebida (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    id_tipo_bebida INT NOT NULL,
   constraint FK_produto_bebida
   foreign key (id_produto)
   references tbl_produto(id),
   constraint FK_tipo_bebida_bebida
   foreign key (id_tipo_bebida)
   references tbl_tipo_bebida(id),
   unique index (id)
);


create table tbl_tipo_pizza (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (20),
	unique index (id)
);


create table tbl_pizza (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quantidade_vezes_favorito INT NOT NULL,
    id_produto INT NOT NULL,
    id_tipo_pizza INT NOT NULL,
    constraint FK_produto_pizza
		foreign key (id_produto)
			references tbl_produto(id),
    constraint FK_tipo_pizza_pizza
		foreign key(id_tipo_pizza)
			references tbl_tipo_pizza(id),
    unique index(id)
);

##############################################################

# tabela de MENSAGEM

create table tbl_tipo_mensagem (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (15) NOT NULL,
    unique index (id)
);

create table tbl_mensagem (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR (256) NOT NULL,
    telefone VARCHAR (20) NOT NULL,
    celular VARCHAR (20) NOT NULL,
    mensagem TEXT NOT NULL,
    id_tipo_mensagem INT NOT NULL,
	constraint FK_tipo_mensagem_mensagem
    foreign key (id_tipo_mensagem)
    references tbl_tipo_mensagem(id),
    unique index(id)
);

#####################################################################

# tabela de ADMINISTRADOR

create table tbl_administrador (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(256) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    nome VARCHAR(100) NOT NULL, 	
    unique index (id)
);









