# projeto pizzaria senailicious

create database db_senailicious;
use db_senailicious;
show tables;
select * from tbl_ingrediente;
select * from tbl_produto;
select * from tbl_mensagem;
select * from tbl_tipo_mensagem;

##############################################################

# tabelas de PRODUTOS 

create table tbl_ingrediente(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (30),
    unique index(id)
);

create table tbl_produto (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (45) NOT NULL,
    imagem VARCHAR (200),
    tamanho VARCHAR(45),
    tipo VARCHAR(45) NOT NULL,
    preco FLOAT NOT NULL,
    desconto INT,
    unique index (id)
);

create table tbl_produto_ingrediente (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    id_ingrediente INT NOT NULL,
    constraint FK_produto_produto_ingrediente
		foreign key (id_produto)
			references tbl_produto(id),
    constraint FK_ingrediente_produto_ingrediente
		foreign key (id_ingrediente)
			references tbl_ingrediente(id),
    unique index (id)        
);

create table tbl_bebida (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(45) NOT NULL,
    id_produto INT,
   constraint FK_produto_bebida
   foreign key (id_produto)
   references tbl_produto (id),
   unique index (id)
);

create table tbl_pizza (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(45) NOT NULL,
    quantidade_vezes_favorito INT NOT NULL,
    id_produto INT NOT NULL,
    constraint FK_produto_pizza
    foreign key (id_produto)
    references tbl_produto(id),
    unique index(id)
);

##############################################################

# tabela de MENSAGEM

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

drop table tbl_mensagem;



create table tbl_tipo_mensagem (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (15) NOT NULL,
    unique index (id)
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



#################################################################### INSERT TESTE ###################################################################################


# insert tabela produto
insert into tbl_produto (
	nome,
    imagem,
    tamanho,
    tipo,
    preco,
    desconto
) values(
	'Calabresa',
    'https://img.freepik.com/fotos-premium/pizza-a-brasileira-com-queijo-mussarela-linguica-calabresa-e-cebola-vista-do-topo_261158-2018.jpg?w=2000',
    'Grande',
    'Pizza',
    '39,90',
    NULL
);

# insert tabela ingrediente

insert into tbl_ingrediente(
	nome
) values (
	'Calabresa'
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

# select  cast(tbl_curso.id as float) as id_curso, tbl_curso.nome as nome_curso, tbl_curso.sigla as sigla_curso, 
   #                 tbl_curso.carga_horaria,
    #                tbl_aluno_curso.matricula, tbl_aluno_curso.status_aluno
     #               from tbl_aluno 
      #                  inner join tbl_aluno_curso
       #                     on tbl_aluno.id = tbl_aluno_curso.id_aluno
        #                inner join tbl_curso
         #                   on tbl_curso.id = tbl_aluno_curso.id_curso;




