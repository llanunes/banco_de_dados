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
        

create table tbl_nacionalidade(
	id INT not null auto_increment primary key,
    nome varchar (30),
    unique index(id)
);

create table tbl_filme (
	id INT not null auto_increment primary key,
	nome varchar(50) not null,
	nome_original varchar(50),
	duracao time,
	sinopse text,
	data_lancamento date not null, 
	data_relancamento date,
	foto_capa varchar (200),
    id_classificacao int not null, 
    constraint FK_classificacao_filme # apenas um nome (apelido) para a FK
    foreign key (id_classificacao) # indica quem sera a chave estrangeira nessa tabela
    references tbl_classificacao (id), # de onde virá a PK e o id dela
    unique index(id)
);        

# permite alterar o nome da tabela
rename table tbl_filme to tbl_filme2;
alter table tbl_filme rename tbl_filme2;

# quebrar o relacionamento (constraint) de tabelas para poder alterar nomes ou dados de tabelas que fornecem chave extrangeira
alter table tbl_filme
	drop foreign key FK_classificacao_filme;
    
alter table tbl_filme
		add constraint FK_classificacao_filme
			foreign key (id_classificacao)
				references tbl_classificacao(id);


create table tbl_ator_diretor(
	id INT not null auto_increment primary key,
    nome varchar (80) not null,
    nome_artistico varchar (45),
    data_nascimento DATE not null,
    data_falecimento DATE, 
    foto varchar(150),
    id_sexo INT not null,
    constraint FK_sexo_ator_diretor
    foreign key (id_sexo)
    references tbl_sexo(id),
    unique index(id)
);


create table tbl_ator(
	id INT not null auto_increment primary key,
    quantidade_filmes INT,
    biografia TEXT, 
    ano_inicio_carreira YEAR,
    id_ator_diretor INT not null,
    constraint FK_ator_diretor_ator
    foreign key (id_ator_diretor)
    references tbl_ator_diretor(id),
    unique index(id)
);   

create table tbl_diretor(
	id INT not null auto_increment primary key,
	quantidade_filmes INT,
    ano_inicio_carreira year,
    id_ator_diretor INT not null,
    constraint FK_ator_diretor_diretor
    foreign key (id_ator_diretor)
    references tbl_ator_diretor(id),
    unique index(id)
); 	

create table tbl_genero_filme(
	id INT not null auto_increment primary key,
    id_filme INT not null,
    constraint FK_filme_genero_filme
    foreign key (id_filme)	
    references tbl_filme(id),
    id_genero INT not null,
    constraint FK_genero_genero_filme
    foreign key (id_genero)
    references tbl_genero(id),
    unique index(id)
);





