-- Заполнение album_id таблицы track
UPDATE public.track
	SET album_id=3
	WHERE id=1;
UPDATE public.track
	SET album_id=6
	WHERE id=2;
UPDATE public.track
	SET album_id=2
	WHERE id=3;
UPDATE public.track
	SET album_id=1
	WHERE id=4;
UPDATE public.track
	SET album_id=1
	WHERE id=5;
UPDATE public.track
	SET album_id=7
	WHERE id=6;
UPDATE public.track
	SET album_id=3
	WHERE id=7;
UPDATE public.track
	SET album_id=9
	WHERE id=8;
UPDATE public.track
	SET album_id=10
	WHERE id=9;
UPDATE public.track
	SET album_id=8
	WHERE id=10;
UPDATE public.track
	SET album_id=3
	WHERE id=11;
UPDATE public.track
	SET album_id=9
	WHERE id=12;
UPDATE public.track
	SET album_id=10
	WHERE id=13;
UPDATE public.track
	SET album_id=7
	WHERE id=14;
UPDATE public.track
	SET album_id=3
	WHERE id=15;
UPDATE public.track
	SET album_id=5
	WHERE id=16;
UPDATE public.track
	SET album_id=4
	WHERE id=17;

-- Заполнение singer_id, album_id таблицы singer_album
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (1,4);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (1,2);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (3,4);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (5,7);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (8,4);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (5,8);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (9,10);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (1,8);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (6,5);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (2,4);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (1,3);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (7,3);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (10,1);
INSERT INTO public.singer_album (singer_id,album_id)
	VALUES (11,1);

-- Заполнение singer_id, genre_id таблицы singer_genre
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (1,1);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (2,1);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (3,5);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (3,6);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (7,9);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (6,1);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (6,8);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (15,5);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (11,8);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (14,9);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (10,3);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (4,2);

-- Заполнение track_id, collection_id таблицы track_collection
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (1,2);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (2,2);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (4,6);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (6,3);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (6,1);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (7,7);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (9,3);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (14,5);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (10,9);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (9,10);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (9,5);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (5,7);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (15,8);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (17,4);



