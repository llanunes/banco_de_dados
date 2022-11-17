# projeto pizzaria senailicious

create database db_senailicious;

use db_senailicious;


create table tbl_desconto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    porcentagem INT NOT NULL,
    unique index (id)
);

create table tbl_pizza (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45) NOT NULL,
	descricao TEXT NOT NULL,
    tamanho VARCHAR(45),
    tipo VARCHAR(45) NOT NULL,
    preco FLOAT NOT NULL,
    favorita BOOLEAN NOT NULL,
    id_desconto INT NOT NULL,
    constraint FK_desconto_pizza
    foreign key (id_desconto) 
    references tbl_desconto (id),
    unique index (id)
);

create table tbl_bebida (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45) NOT NULL,
	descricao TEXT,
    tamanho VARCHAR(45),
    tipo VARCHAR(45) NOT NULL,
    preco FLOAT NOT NULL,
    id_desconto INT NOT NULL,
   constraint FK_desconto_bebida
   foreign key (id_desconto)
   references tbl_desconto (id),
   unique index (id)
);

