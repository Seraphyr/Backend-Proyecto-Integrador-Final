create table artistas (
	id serial primary key,
	nombre text,
	genero_id int
);

insert into artistas (nombre, genero_id) values ( 'Buitres Después de la Una', 1);
insert into artistas (nombre, genero_id) values ( 'Jhonny Cash', 2);
insert into artistas (nombre, genero_id) values ( 'Adele', 3);
insert into artistas (nombre, genero_id) values ( 'Frank Sinatra', 4);
insert into artistas (nombre, genero_id) values ( 'Lamb of God', 5);
insert into artistas (nombre, genero_id) values ( 'Tupac Shakur', 6);
insert into artistas (nombre, genero_id) values ('Taylor Swift', 7);
insert into artistas (nombre, genero_id) values ( 'Bob Marley', 8);
insert into artistas (nombre, genero_id) values ( 'Karibe con K', 9);
insert into artistas (nombre, genero_id) values ( 'Whitney Houston', 10);
insert into artistas (nombre, genero_id) values ( 'Antonio Vivaldi', 11);
insert into artistas (nombre, genero_id) values ( 'Billie Eilish', 12);
insert into artistas (nombre, genero_id) values ( 'Leo Matiolli', 13);
insert into artistas (nombre, genero_id) values ( 'Avicii', 14);
insert into artistas (nombre, genero_id) values ( 'Bad Bunny', 15);
insert into artistas (nombre, genero_id) values ( 'Daddy Yankee', 16);
insert into artistas (nombre, genero_id) values ( 'Green Day', 17);
insert into artistas (nombre, genero_id) values ( 'Tiësto', 18);

ALTER TABLE artistas ADD COLUMN imagen VARCHAR(255);

UPDATE artistas SET imagen = 'https://toomach.files.wordpress.com/2012/03/buitres.jpg?w=640' WHERE nombre = 'Buitres Después de la Una';
UPDATE artistas SET imagen = 'https://cloudfront-us-east-1.images.arcpublishing.com/copesa/JWYJOTMPWZCOHPUOYFIRNRBNWE.jpeg' WHERE nombre = 'Jhonny Cash';
UPDATE artistas SET imagen = 'https://variety.com/wp-content/uploads/2024/01/Adele-Clean-High-Res.jpeg?w=1000' WHERE nombre = 'Adele';
UPDATE artistas SET imagen = 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Frank_Sinatra_%281957_studio_portrait_close-up%29.jpg/800px-Frank_Sinatra_%281957_studio_portrait_close-up%29.jpg' WHERE nombre = 'Frank Sinatra';
UPDATE artistas SET imagen = 'https://i.scdn.co/image/ab6761610000e5ebb943a08242864dc3364a9478' WHERE nombre = 'Lamb of God';
UPDATE artistas SET imagen = 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b5/Tupac_Amaru_Shakur2.jpg/220px-Tupac_Amaru_Shakur2.jpg' WHERE nombre = 'Tupac Shakur';
UPDATE artistas SET imagen = 'https://img.asmedia.epimg.net/resizer/Qb47Gpgyb2YOaIwPM5p_OCE5E6k=/1472x828/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/4MBIEMYRLFEPLGCMTKCI5ABGMY.jpg' WHERE nombre = 'Taylor Swift';
UPDATE artistas SET imagen = 'https://t2.uc.ltmcdn.com/es/posts/4/2/2/como_murio_bob_marley_43224_600.jpg' WHERE nombre = 'Bob Marley';
UPDATE artistas SET imagen = 'https://i.scdn.co/image/ab67616d0000b2736766d91214f771ab22a8034d' WHERE nombre = 'Karibe con K';
UPDATE artistas SET imagen = 'https://people.com/thmb/9idFeR3h2Vg8kIWoN6xVidmHHtg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(541x285:543x287)/whitney-houston-c38cc63377ce40d6a47aaa36862514c4.jpg' WHERE nombre = 'Whitney Houston';
UPDATE artistas SET imagen = 'https://tmms.co.uk/wp-content/uploads/2023/01/cla_antonio_vivaldi_0afd763a-ae1c-487d-8e56-49b3d3209522.png' WHERE nombre = 'Antonio Vivaldi'
UPDATE artistas SET imagen = 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/BillieEilishO2160622_%2819_of_45%29_%2852153214339%29_%28cropped_3%29.jpg/640px-BillieEilishO2160622_%2819_of_45%29_%2852153214339%29_%28cropped_3%29.jpg' WHERE nombre = 'Billie Eilish';
UPDATE artistas SET imagen = 'https://www.infobae.com/new-resizer/_8pqRu6IZKPBG_EeelDD_uEZWCU=/992x744/filters:format(webp):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/08/10170653/Leo-Mattioli.jpg' WHERE nombre = 'Leo Matiolli';
UPDATE artistas SET imagen = 'https://images.wsj.net/im-7738?width=1280&size=1.77777778' WHERE nombre = 'Avicii';
UPDATE artistas SET imagen = 'https://i0.wp.com/elplanetaurbano.com/wp-content/uploads/2023/05/Bad-Bunny.jpg?fit=1320%2C880&ssl=1' WHERE nombre = 'Bad Bunny';
UPDATE artistas SET imagen = 'https://www.eltiempo.com/files/article_main_1200/uploads/2023/11/30/6568c8b324eb2.png' WHERE nombre = 'Daddy Yankee';
UPDATE artistas SET imagen = 'https://as01.epimg.net/epik/imagenes/2020/09/01/portada/1598954779_668010_1598959672_noticia_normal_recorte1.jpg' WHERE nombre = 'Green Day';
UPDATE artistas SET imagen = 'https://www.cartagenaelectronica.com/wp-content/uploads/2020/11/tiestodj.png' WHERE nombre = 'Tiësto';

select * from artistas
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

create table canciones (
	id serial primary key,
	nombre text,
	 artista_id,id int,
	duracion interval
);

insert into canciones (nombre, artista_id, duracion) values ('Carretera Perdida',1, '00:05:08');
insert into canciones (nombre, artista_id, duracion) values ('Cadillac Solitario',1,'00:03:55');
insert into canciones (nombre, artista_id, duracion) values ('Ojos Rojos',1,'00:03:01');
insert into canciones (nombre, artista_id, duracion) values ('I Walk The Line',2,'00:02:44');
insert into canciones (nombre, artista_id, duracion) values ('Hurt',2,'00:03:37');
insert into canciones (nombre, artista_id, duracion) values ('It Ain''t Me, Babe',2,'00:03:03');
insert into canciones (nombre, artista_id, duracion) values ('Rolling in the Deep',3,'00:03:49');
insert into canciones (nombre, artista_id, duracion) values ('Set Fire to the Rain',3,'00:04:03');
insert into canciones (nombre, artista_id, duracion) values ('Easy On Me',3,'00:03:45');
insert into canciones (nombre, artista_id, duracion) values ('Fly Me To The Moon',4,'00:02:28');
insert into canciones (nombre, artista_id, duracion) values ('My Way',4,'00:04:37');
insert into canciones (nombre, artista_id, duracion) values ('The World We Knew',4,'00:02:51');
insert into canciones (nombre, artista_id, duracion) values ('Laid to Rest',5,'00:03:51');
insert into canciones (nombre, artista_id, duracion) values ('Ruin',5,'00:03:54');
insert into canciones (nombre, artista_id, duracion) values ('512',5,'00:04:45');
insert into canciones (nombre, artista_id, duracion) values ('Keep Ya Head Up',6,'00:04:24');
insert into canciones (nombre, artista_id, duracion) values ('Hit Em Up',6,'00:05:16');
insert into canciones (nombre, artista_id, duracion) values ('All Eyez On Me',6,'00:04:39');
insert into canciones (nombre, artista_id, duracion) values ('Shake It Off',7,'00:03:40');
insert into canciones (nombre, artista_id, duracion) values ('Blank Space',7,'00:04:33');
insert into canciones (nombre, artista_id, duracion) values ('Lover',7,'00:03:59');
insert into canciones (nombre, artista_id, duracion) values ('Is This Love',8,'00:03:54');
insert into canciones (nombre, artista_id, duracion) values ('Sun Is Shining',8,'00:04:59');
insert into canciones (nombre, artista_id, duracion) values ('Could You Be Loved',8,'00:03:57');
insert into canciones (nombre, artista_id, duracion) values ('Yo Te Prometo',9,'00:03:20');
insert into canciones (nombre, artista_id, duracion) values ('Piénsalo Dos Veces',9,'00:04:01');
insert into canciones (nombre, artista_id, duracion) values ('Amiga Mia',9,'00:04:19');
insert into canciones (nombre, artista_id, duracion) values ('I Will Always Love You',10,'00:04:32');
insert into canciones (nombre, artista_id, duracion) values ('I Have Nothing',10,'00:04:50');
insert into canciones (nombre, artista_id, duracion) values ('I Wanna Dance with Somebody',10,'00:04:52');
insert into canciones (nombre, artista_id, duracion) values ('The 4 Seasons, Op. 8/4, RV 297 Winter',11,'00:09:26');
insert into canciones (nombre, artista_id, duracion) values ('Les Quatre Saison Concerto N.2 L''ete',11,'00:02:54');
insert into canciones (nombre, artista_id, duracion) values ('Winter (from The Four Seasons)',11,'00:02:15');
insert into canciones (nombre, artista_id, duracion) values ('Lovely',12,'00:03:21');
insert into canciones (nombre, artista_id, duracion) values ('Bad Guy',12,'00:03:15');
insert into canciones (nombre, artista_id, duracion) values ('Everything I Wanted',12,'00:04:06');
insert into canciones (nombre, artista_id, duracion) values ('Lloraras mas de diez veces',13,'00:03:28');
insert into canciones (nombre, artista_id, duracion) values ('Tan Solo Amantes',13,'00:03:56');
insert into canciones (nombre, artista_id, duracion) values ('Le Pido A Dios',13,'00:01:16');
insert into canciones (nombre, artista_id, duracion) values ('Wake Me Up',14,'00:04:08');
insert into canciones (nombre, artista_id, duracion) values ('Waiting For Love',14,'00:03:51');
insert into canciones (nombre, artista_id, duracion) values ('Levels',14,'00:05:39');
insert into canciones (nombre, artista_id, duracion) values ('PERRO NEGRO',15,'00:02:43');
insert into canciones (nombre, artista_id, duracion) values ('LA NOCHE DE ANOCHE',15,'00:03:24');
insert into canciones (nombre, artista_id, duracion) values ('DÁKITI',15,'00:03:26');
insert into canciones (nombre, artista_id, duracion) values ('Despacito',16,'00:03:49');
insert into canciones (nombre, artista_id, duracion) values ('Limbo',16,'00:03:45');
insert into canciones (nombre, artista_id, duracion) values ('Gasolina',16,'00:03:13');
insert into canciones (nombre, artista_id, duracion) values ('Holiday / Boulevard of Broken Dreams',17,'00:08:14');
insert into canciones (nombre, artista_id, duracion) values ('21 Guns',17,'00:05:22');
insert into canciones (nombre, artista_id, duracion) values ('Basket Case',17,'00:03:02');
insert into canciones (nombre, artista_id, duracion) values ('Don''t Be Shy',18,'00:02:21');
insert into canciones (nombre, artista_id, duracion) values ('The Business',18,'00:02:44');
insert into canciones (nombre, artista_id, duracion) values ('The Motto',18,'00:02:45');


ALTER TABLE canciones ADD COLUMN imagen VARCHAR(255);

UPDATE canciones SET imagen = 'https://toomach.files.wordpress.com/2012/03/buitres.jpg' WHERE nombre = 'Carretera Perdida';
UPDATE canciones SET imagen = 'https://i1.sndcdn.com/artworks-1gm3fC04rKW2-0-t500x500.jpg' WHERE nombre = 'Cadillac Solitario';
UPDATE canciones SET imagen = 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/e0/33/b3/e033b30c-77d8-812d-fe43-3ffe45bd2875/197189406034.jpg/1200x1200bf-60.jpg' WHERE nombre = 'Ojos Rojos';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b273761328ecf006aa215a44fed9' WHERE nombre = 'I Walk The Line';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b2736bfaa09961a17a60edebf43f' WHERE nombre = 'Hurt';
UPDATE canciones SET imagen = 'https://e.snmc.io/i/1200/s/38ff9b22417ba29fa39107fdde6ae6b0/4656525' WHERE nombre = 'It Ain''t Me, Babe';
UPDATE canciones SET imagen = 'https://www.eloriente.net/home/wp-content/uploads/2014/07/Adele21-Adele.jpg' WHERE nombre = 'Rolling in the Deep';
UPDATE canciones SET imagen = 'https://i1.sndcdn.com/artworks-QE6CaRQqq0i3yYlB-MQvzsQ-t500x500.jpg' WHERE nombre = 'Set Fire to the Rain';
UPDATE canciones SET imagen = 'https://i1.sndcdn.com/artworks-GSvPigmkmpKHRi8C-Sv4aJw-t500x500.jpg' WHERE nombre = 'Easy On Me';
UPDATE canciones SET imagen = 'https://i1.sndcdn.com/artworks-000141761213-3sxu71-t500x500.jpg' WHERE nombre = 'Fly Me To The Moon';
UPDATE canciones SET imagen = 'https://i0.wp.com/singingthesonginmyheart.com/wp-content/uploads/2015/06/My-Way-Frank-Sinatra.jpeg?fit=300%2C259' WHERE nombre = 'My Way';
UPDATE canciones SET imagen = 'https://m.media-amazon.com/images/I/81Dhj-gNf-L._UF1000,1000_QL80_.jpg' WHERE nombre = 'The World We Knew';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b273b12877d8bdfaa0f19b4624fa' WHERE nombre = 'Laid to Rest';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b2735e2f5d3da7ce49c09e81b88c' WHERE nombre = 'Ruin';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b27351ca6e164005e5ec306d05b0' WHERE nombre = '512';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/3/32/2Pac_-_Keep_Ya_Head_Up.jpg' WHERE nombre = 'Keep Ya Head Up';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b273d81a092eb373ded457d94eec' WHERE nombre = 'Hit Em Up';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/1/16/Alleyezonme.jpg' WHERE nombre = 'All Eyez On Me';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/c/c4/Taylor_Swift_-_Shake_It_Off.png' WHERE nombre = 'Shake It Off';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/7/7c/Taylor_Swift_-_Blank_Space_%28Official_Single_Cover%29.png' WHERE nombre = 'Blank Space';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/c/cd/Taylor_Swift_-_Lover.png' WHERE nombre = 'Lover';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/f/f8/Is_This_Love_%28Bob_Marley_%26_The_Wailers_single_-_cover_art%29.jpg' WHERE nombre = 'Is This Love';
UPDATE canciones SET imagen = 'https://static.qobuz.com/images/covers/7a/kh/w049ofpodkh7a_600.jpg' WHERE nombre = 'Sun Is Shining';
UPDATE canciones SET imagen = 'https://m.media-amazon.com/images/I/71qTt0KsZwL._UF1000,1000_QL80_.jpg' WHERE nombre = 'Could You Be Loved';
UPDATE canciones SET imagen = 'https://cdns-images.dzcdn.net/images/cover/aa6199a166049f9d82282137687b97b3/350x350.jpg' WHERE nombre = 'Yo Te Prometo';
UPDATE canciones SET imagen = 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/21/49/f1/2149f11a-a772-240a-08be-2938b0cb0298/197189510403.jpg/1200x1200bf-60.jpg' WHERE nombre = 'Piénsalo Dos Veces';
UPDATE canciones SET imagen = 'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/92/c7/5d/92c75d7d-f180-3ed9-ed13-09946765b88e/197190265224.jpg/600x600bf-60.jpg' WHERE nombre = 'Amiga Mia';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/thumb/6/60/I_Will_Always_Love_You_by_Whitney_Houston_US_CD_single.jpg/220px-I_Will_Always_Love_You_by_Whitney_Houston_US_CD_single.jpg' WHERE nombre = 'I Will Always Love You';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/c/c0/Whitney_Houston_I_Have_Nothing.jpg' WHERE nombre = 'I Have Nothing';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b273316cb816200bb0d21df71f2c' WHERE nombre = 'I Wanna Dance with Somebody';
UPDATE canciones SET imagen = 'https://is1-ssl.mzstatic.com/image/thumb/Music/d4/06/f2/mzi.fpyqkpdb.tif/400x400cc.jpg' WHERE nombre = 'The 4 Seasons, Op. 8/4, RV 297 Winter';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Antonio_Vivaldi_portrait.jpg/250px-Antonio_Vivaldi_portrait.jpg' WHERE nombre = 'Les Quatre Saison Concerto N.2 L''ete';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Antonio_Vivaldi_portrait.jpg/250px-Antonio_Vivaldi_portrait.jpg' WHERE nombre = 'Winter (from The Four Seasons)';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/f/fa/Billie_Eilish_and_Khalid_-_Lovely.png' WHERE nombre = 'Lovely';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b27350a3147b4edd7701a876c6ce' WHERE nombre = 'Bad Guy';
UPDATE canciones SET imagen = 'https://marquettemessenger.com/wp-content/uploads/2019/11/billie-eilish-900x600.jpg' WHERE nombre = 'Everything I Wanted';
UPDATE canciones SET imagen = 'https://i.ytimg.com/vi/VpxAV8S0ctI/maxresdefault.jpg' WHERE nombre = 'Lloraras mas de diez veces';
UPDATE canciones SET imagen = 'https://i.ytimg.com/vi/ZF7dHzR0S94/maxresdefault.jpg' WHERE nombre = 'Tan Solo Amantes';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d00001e02abbf55406c7731844081009d' WHERE nombre = 'Le Pido A Dios';
UPDATE canciones SET imagen = 'https://i1.sndcdn.com/artworks-000073995977-7n07wh-t500x500.jpg' WHERE nombre = 'Wake Me Up';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/8/81/Avicii%27s_Waiting_For_Love%2C_Cover_Artwork.png' WHERE nombre = 'Waiting For Love';
UPDATE canciones SET imagen = 'https://www.globalgroove.co.uk/product/z3628_back.jpg.ashx' WHERE nombre = 'Levels';
UPDATE canciones SET imagen = 'https://images.genius.com/d2dac447cfd4f26ea02474ae5fe476cf.1000x1000x1.jpg' WHERE nombre = 'PERRO NEGRO';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b273005ee342f4eef2cc6e8436ab' WHERE nombre = 'LA NOCHE DE ANOCHE';
UPDATE canciones SET imagen = 'https://i1.sndcdn.com/artworks-SdlXfW6VWI7aeDir-YXmaQA-t500x500.jpg' WHERE nombre = 'DÁKITI';
UPDATE canciones SET imagen = 'https://i.scdn.co/image/ab67616d0000b273a5971936e3b8d91f8b616b17' WHERE nombre = 'Despacito';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/e/e5/Limbo-by-daddy-yankee.jpg' WHERE nombre = 'Limbo';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/1/16/Daddy_Yankee_Gasolina_cover_art.png' WHERE nombre = 'Gasolina';
UPDATE canciones SET imagen = 'https://i.ytimg.com/vi/J0xe5DcnYSA/maxresdefault.jpg' WHERE nombre = 'Holiday / Boulevard of Broken Dreams';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/0/0e/GreenDay21Guns.jpg' WHERE nombre = '21 Guns';
UPDATE canciones SET imagen = 'https://m.media-amazon.com/images/I/61bYopKhEVL._UF1000,1000_QL80_.jpg' WHERE nombre = 'Basket Case';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/2/28/Ti%C3%ABsto_-_Don%27t_Be_Shy.jpg' WHERE nombre = 'Don''t Be Shy';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/d/de/Ti%C3%ABsto_-_The_Business.jpg' WHERE nombre = 'The Business';
UPDATE canciones SET imagen = 'https://upload.wikimedia.org/wikipedia/en/6/63/Ti%C3%ABsto_-_The_Motto.jpg' WHERE nombre = 'The Motto';

select * from canciones

------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------


create table usuarios (
	id serial primary key,
	nombre_de_usuario text,
	email text,
	contraseña text
);

insert into usuarios (nombre_de_usuario, email, contraseña) values ('gaston1','gaston1@gmail.com','10987654321');
insert into usuarios (nombre_de_usuario, email, contraseña) values ('mateo2','mateo2@gmail.com','12345678910');
insert into usuarios (nombre_de_usuario, email, contraseña) values ('alex','alex@gmail.com','741852963');
insert into usuarios (nombre_de_usuario, email, contraseña) values ('pepito34','pepito34@gmail.com','pepito4ever');
insert into usuarios (nombre_de_usuario, email, contraseña) values ('leomatiolli','leomatiolli@gmail.com','matiollileo');
insert into usuarios (nombre_de_usuario, email, contraseña) values ('bob34','esponja33@gmail.com','sicapitan');


select * from usuarios



------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

create table genero (
	id serial primary key,
	nombre text
);

insert into genero (nombre) values ('Rock');
insert into genero (nombre) values ('Country');
insert into genero (nombre) values ('Soul');
insert into genero (nombre) values ('Jazz');
insert into genero (nombre) values ('Metal');
insert into genero (nombre) values ('Hip-Hop');
insert into genero (nombre) values ('Pop');
insert into genero (nombre) values ('Reggae');
insert into genero (nombre) values ('Plena');
insert into genero (nombre) values ('R&B');
insert into genero (nombre) values ('Clásico');
insert into genero (nombre) values ('Alternativo');
insert into genero (nombre) values ('Cumbia');
insert into genero (nombre) values ('Electrónica');
insert into genero (nombre) values ('Trap');
insert into genero (nombre) values ('Reggaeton');
insert into genero (nombre) values ('Punk');
insert into genero (nombre) values ('EDM');

select * from genero

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------


create table actividad (
	id serial primary key,
	nombre text
);

insert into actividad (nombre) values ('Ejercicio Físico');
insert into actividad (nombre) values ('Limpieza');
insert into actividad (nombre) values ('Celebración');
insert into actividad (nombre) values ('Dormir');
insert into actividad (nombre) values ('Meditar');
insert into actividad (nombre) values ('Social');
insert into actividad (nombre) values ('Estudiar');
insert into actividad (nombre) values ('Relajación');
insert into actividad (nombre) values ('Viajando');


select * from actividad

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------



create table estado_de_animo (
	id serial primary key,
	nombre text
);

insert into estado_de_animo (nombre) values ('Enojade');
insert into estado_de_animo (nombre) values ('Sadge');
insert into estado_de_animo (nombre) values ('Cringe');
insert into estado_de_animo (nombre) values ('Happy');
insert into estado_de_animo (nombre) values ('Glow');
insert into estado_de_animo (nombre) values ('Flow');
insert into estado_de_animo (nombre) values ('De Joda');
insert into estado_de_animo (nombre) values ('After');
insert into estado_de_animo (nombre) values ('María');
insert into estado_de_animo (nombre) values ('Nada');
insert into estado_de_animo (nombre) values ('a Mimir');


select * from estado_de_animo

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

create table como_esta_el_clima (
	id serial primary key,
	nombre text
);


insert into como_esta_el_clima (nombre) values ('1000 grados');
insert into como_esta_el_clima (nombre) values ('Paletita de helado');
insert into como_esta_el_clima (nombre) values ('Suave brisa');
insert into como_esta_el_clima (nombre) values ('Nublado con chance de chicharrones');
insert into como_esta_el_clima (nombre) values ('Se me vuela el rancho');
insert into como_esta_el_clima (nombre) values ('Pa ir a la plaza');
insert into como_esta_el_clima (nombre) values ('Dia de vicio');


select * from como_esta_el_clima

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------


create table playlist (
	id serial primary key,
	nombre text,
	usuario_id int
);

select * from playlist

create table lista (
	id serial primary key,
	playlist_id int,
	canciones_id int
);

select * from lista
