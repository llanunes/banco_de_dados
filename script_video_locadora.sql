# criar um database. 
create database db_video_locadora;

# visualizar os databases existentes.
show databases; 

# apagar um database. 
drop database db_video_locadora;

# sempre que abrir o banco precisamaos especificar qual database estamos utilizando.
use db_video_locadora;

# ********* comecar a criar as tabelas que nao recebem chaves estrangeiras, apenas fornece. *************	7tb njio0-t6opryf

# visualizar as tabelas
show tables;

# visualizar estrutura de uma tabela
desc tbl_classificacao;
describe tbl_classificacao;

# apagar uma tabela 
#drop table tbl_genero;

# apagar dados de uma tabela



# tabela de generos -- cria a PK no inicio
create table tbl_genero (
id INT not null auto_increment primary key,
nome varchar(45) not null, 
unique index(id)
);


# tabela de classificacao -- cria a PK no final
create table tbl_classificacao (
id INT not null auto_increment,
nome varchar(20) not null,
classificacao varchar(80) not null,
caracteristica varchar(50) not null,
unique index(id),
primary key (id)	
);

# tabela de nacionalidade
create table tbl_nacionalidade (
id INT not null auto_increment primary key, 
nome varchar(30) not null,
unique index(id)
);

# tabela de sexo 
create table tbl_sexo(
id INT not null auto_increment primary key,
sigla varchar(6) not null,
descricao varchar(30) not null, 
unique index(id)
);


# alterar uma tabela
alter table tbl_sexo
	# apagar atributo 
	drop column descricao;

# alterar uma tabela    
alter table tbl_sexo    
	# criar um atributo novo
		add column descricao varchar(30);
        
# alterar uma tabela 
alter table tbl_sexo
	# modify - modifica a estrutura
	modify column descricao varchar(30) not null; 
    
# alterar uma tabela
alter table tbl_sexo
	# change renomeia e modifica a estrutura    
    change descricao			 descricao varchar(30) not null;
		# coluna original		# coluna nova

    
    
        





