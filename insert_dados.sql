use db_video_locadora;

show tables;

# Insert

	# tabela de sexo
insert into tbl_sexo (
	sigla,
	descricao
	) values (
		'F',
        'Feminino'
	);

insert into tbl_sexo (
	sigla,
    descricao
    ) values (
		'M',
        'Masculino'
    );
    
SELECT * FROM tbl_classificacao; 


# tabela de classificacao
insert into tbl_classificacao (
	nome, 
    classificacao,
    caracteristica
	) values 
		('L', 'Livre', 'Não expõe crianças a conteúdos potencialmente prejudiciais.'),
		('10', 'Exibição em qualquer horário', 'Conteúdo violento ou linguagem inapropriada para criancas, ainda que em menor intensidade.'),
		('12', 'Não recomendado para menores de 12 anos', 'As cenas podem conter agressão física, consumo de drogas e insinuação sexual.'),
        ('14', 'Não recomendado para menores de 14 anos', 'Conteúdos mais acentuados com violência e ou linguagem sexual.'),
        ('16', 'Não recomendado para menores de 16 anos', 'Conteúdos de sexo ou violência mais intensos, com cenas de tortura, suicídio, estupro ou nudez total.'),
        ('18', 'Não recomendado para menores de 18 anos', 'Conteúdos violentos e sexuais extremos. Cenas de sexo, incesto ou atos repetidos de tortura, multilação ou abuso sexual.'); 


SELECT * FROM tbl_classificacao;

alter table tbl_classificacao
	modify column classificacao varchar (100) not null,
    modify column caracteristica varchar (150) not null
;

DESC tbl_filme;

INSERT INTO
    tbl_filme (
        nome,
        duracao,
        sinopse,
        data_lancamento,
        data_relancamento,
        foto_capa,
        nome_original,
        id_classificacao
    )
VALUES (
        'O PODEROSO CHEFÃO',
        '02:55:00',
        'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça", vingança na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão severamente castigados. Vito porém deixa claro que ele pode chamar Bonasera algum dia para devolver o "favor". Do lado de fora, no meio da festa, está o terceiro filho de Vito, Michael (Al Pacino), um capitão da marinha muito decorado que há pouco voltou da 2ª Guerra Mundial. Universitário educado, sensível e perceptivo, ele quase não é notado pela maioria dos presentes, com exceção de uma namorada da faculdade, Kay Adams (Diane Keaton), que não tem descendência italiana mas que ele ama. Em contrapartida há alguém que é bem notado, Johnny Fontane (Al Martino), um cantor de baladas românticas que provoca gritos entre as jovens que beiram a histeria. Don Corleone já o tinha ajudado, quando Johnny ainda estava em começo de carreira e estava preso por um contrato com o líder de uma grande banda, mas a carreira de Johnny deslanchou e ele queria fazer uma carreira solo. Por ser seu padrinho Vito foi procurar o líder da banda e ofereceu 10 mil dólares para deixar Johnny sair, mas teve o pedido recusado. Assim, no dia seguinte Vito voltou acompanhado por Luca Brasi (Lenny Montana), um capanga, e após uma hora ele assinou a liberação por apenas mil dólares, mas havia um detalhe: nas "negociações" Luca colocou uma arma na cabeça do líder da banda. Agora, no meio da alegria da festa, Johnny quer falar algo sério com Vito, pois precisa conseguir o principal papel em um filme para levantar sua carreira, mas o chefe do estúdio, Jack Woltz (John Marley), nem pensa em contratá-lo. Nervoso, Johnny começa a chorar e Vito, irritado, o esbofeteia, mas promete que ele conseguirá o almejado papel. Enquanto a festa continua acontecendo, Don Corleone comunica a Tom Hagen (Robert Duvall), seu filho adotivo que atua como conselheiro, que Carlo terá um emprego mas nada muito importante, e que os "negócios" não devem ser discutidos na sua frente. Os verdadeiros problemas começam para Vito quando Sollozzo (Al Lettieri), um gângster que tem apoio de uma família rival, encabeçada por Phillip Tattaglia (Victor Rendina) e seu filho Bruno (Tony Giorgio). Sollozzo, em uma reunião com Vito, Sonny e outros, conta para a família que ele pretende estabelecer um grande esquema de vendas de narcóticos em Nova York, mas exige permissão e proteção política de Vito para agir. Don Corleone odeia esta idéia, pois está satisfeito em operar com jogo, mulheres e proteção, mas isto será apenas a ponta do iceberg de uma mortal luta entre as "famílias".',
        '1972-03-24',
        '2022-02-24',
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/93/20/20120876.jpg',
        'The Godfather',
        16
    ), (
        'O REI LEÃO',
        '01:29:00',
        'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
        '1994-07-08',
        '2011-08-26',
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/84/28/19962110.jpg',
        'The Lion King',
        13
    ), (
        'FORREST GUMP - O CONTADOR DE HISTÓRIAS',
        '02:20:00',
        'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
        '1994-12-07',
        null,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/30/21/19874092.jpg',
        'Forrest Gump',
        16
    ), (
        'À ESPERA DE UM MILAGRE',
        '03:09:00',
        '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.',
        '2000-03-10',
        null,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/66/66/20156966.jpg',
        'The Green Mile',
        16
    ), (
        'VINGADORES: ULTIMATO',
        '03:01:00',
        'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.',
        '2019-04-25',
        null,
        'https://br.web.img2.acsta.net/c_310_420/pictures/19/04/26/17/30/2428965.jpg',
        'Avengers: Endgame',
        15
    ), (
        'BATMAN - O CAVALEIRO DAS TREVAS',
        '02:32:00',
        'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.',
        '2008-07-18',
        null,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/86/98/32/19870786.jpg',
        'The Dark Knight',
        15
    );

UPDATE tbl_classificacao SET nome = 'LI';

DELETE FROM tbl_classificacao;

SELECT * FROM tbl_filme;

desc tbl_filme;

INSERT INTO 
	tbl_ator_diretor (
		nome,
		nome_artistico,
		data_nascimento,
		data_falecimento, 
		foto,
        id_sexo
    ) 
    VALUES (
		'Christopher Nolan',
        NULL,
        '1970-07-30',
        NULL,
        'https://www.adorocinema.com/personalidades/personalidade-30367/biografia/',
        1
    ),
    (
		'Christian Bale',
		NULL,
		'1974-01-30 ',
		NULL, 
		'https://www.adorocinema.com/personalidades/personalidade-8471/biografia/',
        2
    ),
    (
		'Heathcliff Andrew Ledger',
		'Heath Ledger',
		'1979-04-04',
		'2008/01/22', 
		'https://www.adorocinema.com/personalidades/personalidade-33198/biografia/',
        3
    ),
    (
		'Aaron Edward Eckhart',
		NULL,
		'1968-03-12',
        NULL,
		'https://www.adorocinema.com/personalidades/personalidade-21075/biografia/',
		4
    ),
    (
		'Jonathan Kolia Favreau',
        'Jon Favreau',
        '1966-10-19',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/15/09/18/12/27/315343.jpg',
        5
    ), 
    (
		'ÍCARO SILVA',
        NULL,
        '1987-03-19',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/19/11/22/19/58/2673323.jpg',
        6
    ),
    (
		'Donald McKinley Glover Jr.',
        NULL,
        '1983-09-25',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/pictures/15/09/28/12/11/478796.jpg',
        7
    ), 
    (
		'Beyoncé Giselle Knowles-Carter',
        NULL,
        '1981-09-04',
        NULL,
        'https://br.web.img2.acsta.net/c_310_420/pictures/19/04/10/17/53/4934423.jpg',
        8
    ),
    (
		'Francis Ford Coppola',
        NULL,
        '1939-04-07',
        NULL,
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/35/21/99/19187501.jpg',
        9
    ), 
    (
		'Marlon Brando',
        NULL,
        '1924-04-03'
        '2004-07-1',
        'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/51/54/20040663.jpg',
        10
    ),
    (
		
    ),
    (
		
    )
    ;
    
desc tbl_filme;

desc tbl_ator_diretor;

select * from tbl_filme;

