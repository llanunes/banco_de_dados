#Permite criar um database
create database db_video_locadora;

#Permite visualizar os databases existentes
show databases;

#Permite apagar um database
drop database db_video_locadora;

#Permite escolher qual o database será utiilizado 
use db_video_locadora;

#Tabela de generos
create table tbl_genero (
	id int not null auto_increment primary key, #Cria a PK no inicio
    nome varchar(45) not null,
    unique index(id)
);

#Permite visualizar as tabelas existentes no database
show tables;

#Tabela de Classificacao
create table tbl_classificacao (
	id int not null auto_increment,
    nome varchar(20) not null,
    classificacao varchar(30) not null,
    caracteristica varchar(80) not null,
    unique index (id),
    primary key(id) #Cria a PK no final
);

#Comandos para visualizar a estrutura de uma tabela
desc tbl_genero; #Exemplo 1
describe tbl_genero; #Exemplo 2

#Permite apagar uma tabela
#drop table tbl_genero;

#Tabela de Nacionalidade
create table tbl_nacionalidade (
	id int not null auto_increment primary key,
    nome varchar(30) not null,
    unique index(id)
);

#Tabela de Sexo
create table tbl_sexo (
	id int not null auto_increment primary key,
    sigla varchar(6) not null,
    descricao varchar(30) not null,
    unique index(id)
);

desc tbl_sexo;

#Permite apagar um atributo de uma tabela
alter table tbl_sexo
	drop column descricao;

#Permite criar um atributo novo na tabela
alter table tbl_sexo
	add column descricao varchar(30);

#Permite alterar a estrutura de um atributo sem apagar o atributo
alter table tbl_sexo
	modify column descricao varchar(30) not null;

#Permite alterar a estrutura de um atributo e renomear a escrita
alter table tbl_sexo
	change descricao 			descricao varchar(30) not null;
			#Coluna original   #Nova escrita


#Tabela de Filme
create table tbl_filme (
	id int not null auto_increment primary key,
    nome varchar(50) not null,
    nome_original varchar(50),
    duracao time,
    sinopse text,
    data_lancamento date not null,
    data_relancamento date,
    foto_capa varchar(200),
    id_classificacao int not null, #Atributo para receber a FK
    constraint FK_classificacao_filme  #É apenas um nome (apelido) para FK
		foreign key (id_classificacao) #Identifica quem será a FK nesta tabela
		references tbl_classificacao (id), #De onde virá a PK 
        
	unique index(id)
);

desc tbl_filme;

#Permite alterar o nome de uma tabela
alter table tbl_filme rename tbl_filme2;
rename table tbl_filme to tbl_filme2;

drop table tbl_classificacao;

#Permite apagar uma constraint (um relacionamento) de uma tabela
alter table tbl_filme
	drop foreign key FK_classificacao_filme;

#Permite adicionar uma constraint (relacionamento) em uma tabela já criadas
alter table tbl_filme
	add constraint FK_classificacao_filme
			foreign key (id_classificacao)
			references tbl_classificacao (id);
            
desc tbl_filme;   

         
    
#Tabela de Ator_Diretor
create table tbl_ator_diretor (
	id int not null auto_increment primary key,
    nome varchar(80) not null,
    nome_artistico varchar(50),
    data_nascimento date not null,
    data_falecimento date,
    foto varchar(200),
    id_sexo int not null, #Atributo para receber a FK
    constraint FK_sexo_ator_diretor  #É apenas um nome (apelido) para FK
		foreign key (id_sexo) #Identifica quem será a FK nesta tabela
		references tbl_sexo (id), #De onde virá a PK 
        
	unique index(id)
);

#Tabela de Diretor
create table tbl_diretor (
	id int not null auto_increment primary key,
    qtde_filmes int,
    biografia text,
    ano_inicio_carreira year,
    id_ator_diretor int not null, #Atributo para receber a FK
    constraint FK_ator_diretor_diretor  #É apenas um nome (apelido) para FK
		foreign key (id_ator_diretor) #Identifica quem será a FK nesta tabela
		references tbl_ator_diretor (id), #De onde virá a PK 
        
	unique index(id)
);

#Tabela de Ator
create table tbl_ator (
	id int not null auto_increment primary key,
    qtde_filmes int,
    biografia text,
    ano_inicio_carreira year,
    id_ator_diretor int not null, #Atributo para receber a FK
    constraint FK_ator_diretor_ator  #É apenas um nome (apelido) para FK
		foreign key (id_ator_diretor) #Identifica quem será a FK nesta tabela
		references tbl_ator_diretor (id), #De onde virá a PK 
        
	unique index(id)
);

#Tabela de Filme_Ator
create table tbl_filme_ator (
	id int not null auto_increment primary key,
    id_filme int not null, #Atributo para receber a FK
    id_ator int not null, #Atributo para receber a FK
    constraint FK_filme_filme_ator  #É apenas um nome (apelido) para FK
		foreign key (id_filme) #Identifica quem será a FK nesta tabela
		references tbl_filme (id), #De onde virá a PK 
        
        constraint FK_ator_filme_ator  #É apenas um nome (apelido) para FK
		foreign key (id_ator) #Identifica quem será a FK nesta tabela
		references tbl_ator (id), #De onde virá a PK 
        
	unique index(id)
);

#Tabela de Filme_Diretor
create table tbl_filme_diretor (
	id int not null auto_increment primary key,
    id_filme int not null, #Atributo para receber a FK
    id_diretor int not null, #Atributo para receber a FK
    constraint FK_filme_filme_diretor  #É apenas um nome (apelido) para FK
		foreign key (id_filme) #Identifica quem será a FK nesta tabela
		references tbl_filme (id), #De onde virá a PK 
        
        constraint FK_diretor_filme_diretor  #É apenas um nome (apelido) para FK
		foreign key (id_diretor) #Identifica quem será a FK nesta tabela
		references tbl_diretor (id), #De onde virá a PK 
        
	unique index(id)
);

#Tabela de Ator_Diretor_nacionalidade
create table tbl_ator_diretor_nacionalidade (
	id int not null auto_increment primary key,
    id_ator_diretor int not null, #Atributo para receber a FK
    id_nacionalidade int not null, #Atributo para receber a FK
    constraint FK_ator_diretor_ator_diretor_nacionalidade  #É apenas um nome (apelido) para FK
		foreign key (id_ator_diretor) #Identifica quem será a FK nesta tabela
		references tbl_ator_diretor (id), #De onde virá a PK 
        
        constraint FK_nacionalidade_ator_diretor_nacionalidade  #É apenas um nome (apelido) para FK
		foreign key (id_nacionalidade) #Identifica quem será a FK nesta tabela
		references tbl_nacionalidade (id), #De onde virá a PK 
        
	unique index(id)
);


#Tabela de filme genero
create table tbl_filme_genero (
	id int not null auto_increment primary key,
    id_filme int not null, #Atributo para receber a FK
    id_genero int not null, #Atributo para receber a FK
    constraint FK_filme_filme_genero  #É apenas um nome (apelido) para FK
		foreign key (id_filme) #Identifica quem será a FK nesta tabela
		references tbl_filme (id), #De onde virá a PK 
        
        constraint FK_genero_filme_genero  #É apenas um nome (apelido) para FK
		foreign key (id_genero) #Identifica quem será a FK nesta tabela
		references tbl_genero (id), #De onde virá a PK 
        
	unique index(id)
);
show tables;





