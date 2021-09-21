INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (1,4);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (2,1);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (3,8);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (3,5);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (17,10);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (5,3);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (7,8);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (9,6);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (9,5);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (9,1);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (14,4);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (16,3);
INSERT INTO public.track_collection (track_id,collection_id)
	VALUES (8,2);

INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (18,3);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (18,7);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (17,4);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (20,4);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (23,10);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (24,8);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (22,10);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (26,7);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (20,3);
INSERT INTO public.singer_genre (singer_id,genre_id)
	VALUES (31,6);


UPDATE public.track
	SET singer_id=27,album_id=6
	WHERE id=1;
UPDATE public.track
	SET singer_id=22,album_id=6
	WHERE id=2;
UPDATE public.track
	SET singer_id=20,album_id=9
	WHERE id=3;
UPDATE public.track
	SET singer_id=19,album_id=8
	WHERE id=4;
UPDATE public.track
	SET singer_id=18,album_id=8
	WHERE id=5;
UPDATE public.track
	SET singer_id=22,album_id=4
	WHERE id=6;
UPDATE public.track
	SET singer_id=23,album_id=4
	WHERE id=7;
UPDATE public.track
	SET singer_id=26,album_id=6
	WHERE id=8;
UPDATE public.track
	SET singer_id=31,album_id=9
	WHERE id=9;
UPDATE public.track
	SET singer_id=20,album_id=7
	WHERE id=10;
UPDATE public.track
	SET singer_id=18,album_id=6
	WHERE id=11;
UPDATE public.track
	SET singer_id=20,album_id=2
	WHERE id=12;
UPDATE public.track
	SET singer_id=20,album_id=9
	WHERE id=13;
UPDATE public.track
	SET singer_id=21,album_id=9
	WHERE id=14;
UPDATE public.track
	SET singer_id=20,album_id=1
	WHERE id=15;
UPDATE public.track
	SET singer_id=27,album_id=1
	WHERE id=16;
UPDATE public.track
	SET singer_id=28,album_id=1
	WHERE id=17;
