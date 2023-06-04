INSERT INTO singers(singer_name)
VALUES('Arctic Monkeys'), ('Cardigans'), ('Baseballs'), ('Saint Motel'), ('Cafe del Mare'), ('Eminem');

INSERT INTO genres(genre_name)
VALUES('indie-rock'), ('rock-n-roll'), ('indie-pop'), ('chillout'), ('hip-hop');

INSERT INTO albums(album_name, year)
VALUES ('AM', '20130909'), ( 'Humbug', '20090819'), ('My Type', '20140417'), 
('Hit me baby', '20160909'), ('Super extra Gravity', '20051014'), 
('The Marshall Mathers LP', '20190523'), ('CAF? DEL MAR: THE BEST OF CAF? DEL MAR', '20200319');

INSERT INTO tracks(track_name, album_id, track_time)
VALUES  ('Stan', 1, '6:44'), ('R U Mine?', 2, '3:20'), ('My Type', 4, '3:26'), 
('The Sign', 5, '2:54'), ('Secret Door', 3, '3:46'), ('Do I Wanna Know?', 2, '4:33'), 
('I Need Some Fine Wine And You, You Need To Be Nice', 6, '3:33'),
('Blah Blah Blah', 6, '3:00'), ('The Real Slim Shady', 1, '4:44'), ('D Votion', 8, '7:05');


INSERT INTO collections (collection_name, year)
VALUES ('Curtain Call: The Hits', '20051206'), ('Best Of', '20080130'), 
('The Other Side of the Moon', '19971205'), ('Eminem Presents: The Re-Up', '20201204');


INSERT INTO singers_albums(album_id, singer_id)
VALUES (1, 6), (2, 1), (3, 1), (4, 4), (5, 3), (6, 2), (8, 5);

INSERT INTO singers_genres(genre_id, singer_id)
VALUES (1, 1), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (3, 1);

INSERT INTO collections_tracks(collection_id, track_id)
VALUES (1, 1), (2, 7), (3, 8), (4, 1);



