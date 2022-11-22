use db_video_locadora;

show tables;

#Insert

#Tabela de Sexo
insert into tbl_sexo (sigla, descricao)
	values ('F', 'Feminino');
    
insert into tbl_sexo (sigla, descricao)
	values ('M', 'Masculino');

select * from tbl_sexo;

#Tabela de Classificacao
#Exemplo de insert com multiplos valores 
insert into tbl_classificacao (nome, classificacao, caracteristica)
	values ('L','Livre', 'Não expõe crianças a conteúdos potencialmente prejudiciais.'),
		   ('10','Exibição em qualquer horário','Conteúdo violento ou linquagem inapropriada para criancas, ainda que em menor intensidade.'),
		   ('12', 'Não recomendado para menores de 12 anos', 'As cenas podem conter agressão física, consumo de drogas e insinuaçãosexual.'),
           ('14', 'Não recomendado para menores de 14 anos', 'Conteúdos mais acentuados com violência e ou linguagem sexual.'),
           ('16', 'Não recomendado para menores de 16 anos', 'Conteúdos de sexo ou violência mais intensos, com cenas de tortura, suicídio, estupro ou nudez total.'),
           ('18', 'Não recomendado para menores de 18 anos', 'Conteúdos violentos e sexuais extremos. Cenas de sexo, incesto ou atos repetidos de tortura, multilação ou abuso sexual.');

desc tbl_classificacao;

alter table tbl_classificacao
	modify column classificacao varchar(80) not null,
    modify column caracteristica varchar(150) not null;
    
select * from tbl_classificacao;



#Update
update tbl_classificacao set nome = 'LI';
update tbl_classificacao set caracteristica = '0' where id = 17;

#Delete
delete from tbl_classificacao;
#delete from tbl_classificacao where id = 18;
#delete  from tbl_classificacao where classificacao;

#Tabela de Filme
insert into tbl_filme (nome, nome_original, duracao, data_lancamento, data_relancamento,  sinopse, foto_capa, id_classificacao)
		values 	('O PODEROSO CHEFÃO','The Godfather','02:55:00','1972-03-24','2022-02-24','Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça", vingança na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão severamente castigados. Vito porém deixa claro que ele pode chamar Bonasera algum dia para devolver o "favor". Do lado de fora, no meio da festa, está o terceiro filho de Vito, Michael (Al Pacino), um capitão da marinha muito decorado que há pouco voltou da 2ª Guerra Mundial. Universitário educado, sensível e perceptivo, ele quase não é notado pela maioria dos presentes, com exceção de uma namorada da faculdade, Kay Adams (Diane Keaton), que não tem descendência italiana mas que ele ama. Em contrapartida há alguém que é bem notado, Johnny Fontane (Al Martino), um cantor de baladas românticas que provoca gritos entre as jovens que beiram a histeria. Don Corleone já o tinha ajudado, quando Johnny ainda estava em começo de carreira e estava preso por um contrato com o líder de uma grande banda, mas a carreira de Johnny deslanchou e ele queria fazer uma carreira solo. Por ser seu padrinho Vito foi procurar o líder da banda e ofereceu 10 mil dólares para deixar Johnny sair, mas teve o pedido recusado. Assim, no dia seguinte Vito voltou acompanhado por Luca Brasi (Lenny Montana), um capanga, e após uma hora ele assinou a liberação por apenas mil dólares, mas havia um detalhe: nas "negociações" Luca colocou uma arma na cabeça do líder da banda. Agora, no meio da alegria da festa, Johnny quer falar algo sério com Vito, pois precisa conseguir o principal papel em um filme para levantar sua carreira, mas o chefe do estúdio, Jack Woltz (John Marley), nem pensa em contratá-lo. Nervoso, Johnny começa a chorar e Vito, irritado, o esbofeteia, mas promete que ele conseguirá o almejado papel. Enquanto a festa continua acontecendo, Don Corleone comunica a Tom Hagen (Robert Duvall), seu filho adotivo que atua como conselheiro, que Carlo terá um emprego mas nada muito importante, e que os "negócios" não devem ser discutidos na sua frente. Os verdadeiros problemas começam para Vito quando Sollozzo (Al Lettieri), um gângster que tem apoio de uma família rival, encabeçada por Phillip Tattaglia (Victor Rendina) e seu filho Bruno (Tony Giorgio). Sollozzo, em uma reunião com Vito, Sonny e outros, conta para a família que ele pretende estabelecer um grande esquema de vendas de narcóticos em Nova York, mas exige permissão e proteção política de Vito para agir. Don Corleone odeia esta idéia, pois está satisfeito em operar com jogo, mulheres e proteção, mas isto será apenas a ponta do iceberg de uma mortal luta entre as "famílias".','https://br.web.img.acsta.net/c_310_420/medias/nmedia/18/90/93/20/20120876.jpg',23),
				('O REI LEÃO','The Lion King','01:29:00','1994-07-08','2011-08-26','Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.','https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/84/28/19962110.jpg',21),
				('FORREST GUMP - O CONTADOR DE HISTÓRIAS','Forrest Gump','02:20:00','1994-12-07',null,'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran','https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/30/21/19874092.jpg',22),
				('À ESPERA DE UM MILAGRE','The Green Mile','03:09:00','2000-03-03',null,'1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.','https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/66/66/20156966.jpg',23),
				('Vingadores: Ultimato',null,'03:01:00','2019-04-25','2019-07-11','Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.','https://br.web.img2.acsta.net/c_310_420/pictures/19/04/26/17/30/2428965.jpg',22),
				('BATMAN - O CAVALEIRO DAS TREVAS','The Dark Knight','02:32:00','2008-07-18',null,'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.','https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/86/98/32/19870786.jpg',23);

select * from tbl_filme;

#Tabela de Genero
insert into tbl_genero (nome) 
		values  ('Policial'),
				('Drama'),
				('Aventura'),
				('Animação'),
				('Musical'),
				('Comédia'),
				('Romance'),
				('Fantasia'),
				('Suspense'),
				('Ação');
                
			select * from tbl_genero;
            
#Tabela de filme Genero
insert into tbl_filme_genero (id_filme, id_genero)
	values (1,1),
	       (1,2),
	       (2,3),
	       (2,4),
	       (2,5),
	       (3,6),
	       (3,2),
	       (3,7),
	       (4,1),
	       (4,8),
	       (5,10),
	       (5,3),
	       (5,8),
	       (6,10),
	       (6,9);

#Tabela de Atores
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
	values  ('MARLON BRANDO', 'MARLON BRANDO', '1924-04-03', '2004-07-01', 'https://www.adorocinema.com/personalidades/personalidade-375/biografia/', 1),
			('Alfredo James Pacino', 'AL PACINO', '1940-04-25', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/03/19/18/33/1337912.jpg', 1),
			('James Edmund Caan', 'JAMES CAAN', '1940-03-26', '2022-07-06', 'https://br.web.img3.acsta.net/c_310_420/pictures/15/06/09/21/29/576102.jpg', 1),
			('GARCIA JÚNIOR', 'GARCIA JÚNIOR', '1967-03-02', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/14/01/16/13/52/556410.jpg', 1),
			('MATTHEW BRODERICK', 'MATTHEW BRODERICK', '1962-03-21', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/19/07/02/22/47/0236519.jpg', 1),
			('JAMES EARL JONES', 'JAMES EARL JONES', '1931-01-17', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/55/34/20040970.jpg', 1),
			('Thomas Jeffrey Hanks', 'TOM HANKS', '1956-07-09', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/18/08/08/18/47/1167635.jpg', 1),
			('Gary Alan Sinise', 'GARY SINISE', '1955-03-17', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/92/45/36/20200745.jpg', 1),
			('Robin Wright Penn', 'ROBIN WRIGHT', '1966-04-08', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/11/05/01/50/2018682.jpg', 2),
			('MICHAEL CLARKE DUNCAN', 'MICHAEL CLARKE DUNCAN', '1957-12-10' ,'2012-09-03', 'https://br.web.img3.acsta.net/c_310_420/pictures/14/09/06/19/41/147683.jpg', 1),
			('David Bowditch Morse', 'DAVID MORSE', '1953-10-11', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/14/09/06/19/41/147683.jpg', 1),
			('Robert John Downey Jr', 'ROBERT DOWNEY JR', '1965-04-04', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/18/06/29/00/35/0101925.jpg', 1),
			('Christopher Robert Evans', 'CHRIS EVANS', '1981-07-13', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/19/59/2129500.jpg', 1),
			('Mark Alan Ruffalo', 'MARK RUFFALO', '1967-11-22', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/20/02/3083743.jpg', 1),
			('Christian Charles Philip Bale', 'CHRISTIAN BALE', '1974-01-30', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/24/18/43/126776.jpg', 1),
			('Heathcliff Andrew Ledger', 'HEATH LEDGER', '1979-04-04', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/18/08/16/19/43/2593099.jpg', 1),
			('Aaron Edward Eckhart', 'AARON ECKHART', '1968-03-12', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/16/01/28/10/38/041658.jpg', 1);


#Tabela de Diretor
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
	values  ('FRANCIS FORD COPPOLA', 'Francis F. Coppola', '1939-04-07', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/35/21/99/19187501.jpg', 1),
	        ('ROGER ALLERS', 'ROGER ALLERS', '1960-04-03', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/54/06/20150846.jpg', 1),
	        ('ROB MINKOFF', 'Robert Ralph Minkoff', '1962-08-11', null, 'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/91/54/07/20150847.jpg', 1),
	        ('Robert Lee Zemeckis', 'ROBERT ZEMECKIS', '1952-05-14', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/57/81/20030814.jpg', 1);

select * from tbl_ator_diretor;
  
#Tabela de Nacionalidade
insert into tbl_nacionalidade (nome) 
	values ('Americano'),
	       ('Brasileiro'),
	       ('Britanico');
  
#Tabela de Ator_diretor_nacionalidade
insert into tbl_ator_diretor_nacionalidade (id_ator_diretor, id_nacionalidade)
	values (18,1),
	       (19,1),
	       (20,1),
	       (21,2),
	       (22,1),
	       (23,1),
	       (24,1),
	       (25,1),
	       (26,1),
	       (27,1),
	       (28,1),
	       (29,1),
	       (30,1),
	       (31,1),
	       (32,1),
	       (32,3),
	       (33,1),
	       (34,1);

insert into tbl_ator_diretor_nacionalidade (id_ator_diretor, id_nacionalidade)
	values
	       (35,1),
	       (36,1),
	       (37,1),
	       (38,1);