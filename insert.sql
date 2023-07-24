INSERT INTO public."Artist"
(id, artist_name)
VALUES(default,'Amatory');

INSERT INTO public."Artist"
(id, artist_name)
VALUES(default,'Animal ДжаZ');

INSERT INTO public."Artist"
(id, artist_name)
VALUES(default, 'AK-47');

INSERT INTO public."Artist"
(id, artist_name)
VALUES(default, 'Алиса');

INSERT INTO public."Artist"
(id, artist_name)
VALUES(default, 'Ария');

INSERT INTO public."Artist"
(id, artist_name)
VALUES(default, 'Bad Balance');

INSERT INTO public."Artist"
(id, artist_name)
VALUES(default, 'Би-2');

INSERT INTO public."Artist"
(artist_name)
VALUES('Metallica');

INSERT INTO public."Artist"
(artist_name)
VALUES('Amatory');


INSERT INTO public."Genre"
(id, genre_name)
VALUES(default,'Альтернативный метал');

INSERT INTO public."Genre"
(id, genre_name)
VALUES(default,'Русский Рэп');

INSERT INTO public."Genre"
(id, genre_name)
VALUES(default,'Хард рок');

INSERT INTO public."Genre"
(id, genre_name)
VALUES(default,'Хэви метал');

INSERT INTO public."Genre"
(id, genre_name)
VALUES(default,'Альтернативный рок');

INSERT INTO public."Artist_genre" (artist_id,genre_id) values
	 (29,1);
INSERT INTO public."Artist_genre" (artist_id,genre_id) VALUES
	 (30,5);
INSERT INTO public."Artist_genre" (artist_id,genre_id) values
	 (31,2);
INSERT INTO public."Artist_genre" (artist_id,genre_id) VALUES
	 (32,5);
INSERT INTO public."Artist_genre" (artist_id,genre_id) VALUES
	 (33,4);
INSERT INTO public."Artist_genre" (artist_id,genre_id) VALUES
	 (34,2);
INSERT INTO public."Artist_genre" (artist_id,genre_id) VALUES
	 (35,5);
INSERT INTO public."Artist_genre" (artist_id,genre_id) VALUES
	 (36,4);


INSERT INTO public."Albums" (album_name,"year") VALUES
	 ('Вечно прячется судьба',2003),
	 ('Шаг Вдох',2006),
	 ('Третий',2015),
	 ('Посолонь',2019),
	 ('Проклятье морей',2018),
	 ('Каменный лес',2001),
	 ('Лунапарк',2009),
	 ('Kill ’Em All',1986);


INSERT INTO public."Album_artist" (artist_id,album_id) VALUES
	 (29,1),
	 (30,2),
	 (31,3),
	 (32,4),
	 (33,5),
	 (34,6),
	 (35,7),
	 (36,8);

INSERT INTO public."Tracks" (track_name,album_id,duration) VALUES
	 ('Восковой дождь',1,'02:21:00'),
	 ('Осколки',1,'04:04:00'),
	 ('Время выбирать',2,'02:43:00'),
	 ('Двое',2,'04:15:00'),
	 ('No Pasaran !!',3,'04:14:00'),
	 ('Домашняя Работа',3,'04:39:00'),
	 ('Под дождём',4,'05:43:00'),
	 ('Окаянные дни',4,'06:13:00'),
	 ('Варяг',5,'06:38:00'),
	 ('Всё начинается там, где кончается ночь',5,'05:21:00');
	 ('Джунгли',6,'01:14:00'),
	 ('Казаки',6,'03:54:00'),
	 ('Банзай',7,'04:02:00'),
	 ('Третий Рим',7,'03:18:00'),
	 ('Hit the Lights',8,'04:17:00');

INSERT INTO public."Compilations" ("name","year") VALUES
	 ('Сборник 1',1990),
	 ('Сборник 2',1996),
	 ('Сборник 3',2001),
	 ('Сборник 4',2006),
	 ('Сборник 5',2010),
	 ('Сборник 6',2016),
	 ('Сборник 7',2019),
	 ('Сборник 8',2020);

INSERT INTO public."Track_compilation" (track_id,compilation_id) VALUES
	 (15,1),
	 (1,5),
	 (2,5),
	 (10,7),
	 (11,7),
	 (12,7),
	 (13,8),
	 (14,8);
