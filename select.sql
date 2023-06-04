--task 2

SELECT MAX(track_time)
FROM tracks;

SELECT track_name, track_time
FROM tracks 
WHERE track_time > '3:30';


SELECT collection_name, YEAR 
FROM collections
WHERE YEAR BETWEEN '20180101' AND '20201231';

SELECT singer_name
FROM singers
WHERE singer_name NOT LIKE '% %';

SELECT track_name
FROM tracks
WHERE track_name LIKE '%My%' OR track_name LIKE '%мой%';


--task 3

SELECT genre_name, count(genre_id) AS count_of_singers
FROM singers s JOIN singers_genres sg  ON s.id = sg.singer_id 
JOIN genres g ON g.id = sg.genre_id
GROUP BY genre_name;

SELECT album_name, count(track_name) AS count_of_tracks
FROM albums a JOIN tracks t ON a.id = t.album_id
WHERE YEAR BETWEEN '20190101' AND '20201231'
GROUP BY album_name;

SELECT album_name, AVG(track_time) AS average_time_of_tracks
FROM albums a JOIN tracks t ON a.id = t.album_id
GROUP BY album_name;

SELECT DISTINCT singer_name
FROM singers s JOIN singers_albums sa ON s.id = sa.singer_id
JOIN albums a ON sa.album_id = a.id
WHERE NOT YEAR BETWEEN '20200101' AND '20201231';

SELECT collection_name
FROM collections c JOIN collections_tracks ct ON c.id = ct.collection_id 
JOIN tracks t ON t.id = ct.track_id 
JOIN albums a ON a.id = t.album_id 
JOIN singers_albums sa ON a.id = sa.album_id 
JOIN singers s ON sa.singer_id = s.id 
WHERE singer_name = 'Eminem';

-- task 4

SELECT album_name 
FROM albums a JOIN singers_albums sa ON a.id = sa.album_id 
JOIN singers s ON s.id = sa.singer_id 
JOIN singers_genres sg ON sg.singer_id = s.id 
GROUP BY album_name
HAVING count(genre_id) > 1;

SELECT track_name
FROM tracks
WHERE track_name NOT IN(SELECT track_name
FROM tracks t JOIN collections_tracks ct ON t.id = ct.track_id);

SELECT singer_name, track_time
FROM singers s JOIN singers_albums sa ON s.id = sa.singer_id 
JOIN albums a ON sa.album_id = a.id 
JOIN tracks t ON a.id = t.album_id
GROUP BY singer_name, track_time 
HAVING track_time IN (SELECT min(track_time)
FROM tracks
GROUP BY album_id
ORDER BY min
LIMIT 1);

SELECT album_name
FROM (SELECT album_name, count(track_name) 
FROM albums a JOIN tracks t ON a.id = t.album_id 
GROUP BY album_name)query_in
WHERE count = (SELECT min(count) 
FROM (SELECT album_name, count(track_name) 
FROM albums a JOIN tracks t ON a.id = t.album_id 
GROUP BY album_name)query_in);



