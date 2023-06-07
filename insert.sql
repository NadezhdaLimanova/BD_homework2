INSERT INTO singers(singer_name)
VALUES('Arctic Monkeys'), ('Cardigans'), ('Baseballs'), ('Saint Motel'), ('Cafe del Mare'), ('Eminem');

INSERT INTO genres(genre_name)
VALUES('indie-rock'), ('rock-n-roll'), ('indie-pop'), ('chillout'), ('hip-hop');

INSERT INTO albums(album_name, year)
VALUES ('AM', '20130909'), ( 'Humbug', '20090819'), ('My Type', '20140417'), 
('Hit me baby', '20160909'), ('Super extra Gravity', '20051014'), 
('The Marshall Mathers LP', '20190523'), ('CAFE DEL MAR: THE BEST OF CAFE DEL MAR', '20200319');

INSERT INTO tracks(track_name, album_id, track_time)
VALUES ('Stan', 1, '00:06:44'), ('R U Mine?', 2, '00:03:20'), ('My Type', 4, '00:03:26'), 
('The Sign', 5, '00:02:54'), ('Secret Door', 3, '00:03:46'), ('Do I Wanna Know?', 2, '00:04:33'), 
('I Need Some Fine Wine And You, You Need To Be Nice', 6, '00:03:33'),
('Blah Blah Blah', 6, '00:03:00'), ('The Real Slim Shady', 1, '00:04:44'),
('D Votion', 7, '00:07:05'), ('Myself', 1, '00:03:00'), ('My own', 2, '00:03:30'), 
('my', 3, '00:03:01'), ('Oh my god', 2, '00:04:03'), ('Own my', 3, '00:04:30');

INSERT INTO collections (collection_name, year)
VALUES ('Curtain Call: The Hits', '20051206'), ('Best Of', '20080130'), 
('The Other Side of the Moon', '19971205'), ('Eminem Presents: The Re-Up', '20201204');


INSERT INTO singers_albums(album_id, singer_id)
VALUES (1, 6), (2, 1), (3, 1), (4, 4), (5, 3), (6, 2), (7, 5);

INSERT INTO singers_genres(genre_id, singer_id)
VALUES (1, 1), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (3, 1);

INSERT INTO collections_tracks(collection_id, track_id)
VALUES (1, 1), (2, 7), (3, 8), (4, 1);
