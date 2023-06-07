--исправленные задачи:

--Название и продолжительность самого длительного трека

SELECT track_name, track_time
FROM tracks 
WHERE track_time = (SELECT max(track_time) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут

SELECT track_name, track_time
FROM tracks 
WHERE track_time >= '00:03:30';

--Название треков, которые содержат слово «мой» или «my»

SELECT track_name
FROM tracks 
WHERE track_name ILIKE 'my' OR track_name ILIKE 'мой'
OR track_name ILIKE '%my' OR track_name ILIKE '%мой'
OR track_name ILIKE 'my %' OR track_name ILIKE 'мой %'
OR track_name ILIKE '% my %' OR track_name ILIKE '% мой %';

--Количество треков, вошедших в альбомы 2019–2020 годов

SELECT count(track_name) AS count_of_tracks
FROM tracks t JOIN albums a ON a.id = t.album_id 
WHERE YEAR BETWEEN '20190101' AND '20201231';

--Все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT singer_name
FROM singers
WHERE singer_name NOT IN(SELECT singer_name FROM singers s JOIN singers_albums sa ON s.id = sa.singer_id
JOIN albums a ON sa.album_id = a.id
WHERE YEAR BETWEEN '20200101' AND '20201231');

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра

SELECT DISTINCT album_name
FROM albums a JOIN singers_albums sa ON a.id = sa.album_id
JOIN singers s ON s.id = sa.singer_id
JOIN singers_genres sg ON sg.singer_id = s.id
GROUP BY album_name, sa.singer_id
HAVING count(genre_id) > 1;

--Исполнитель или исполнители, написавшие самый короткий 
--по продолжительности трек, — теоретически таких треков может быть несколько

SELECT singer_name, track_time
FROM singers s JOIN singers_albums sa ON s.id = sa.singer_id 
JOIN albums a ON sa.album_id = a.id 
JOIN tracks t ON a.id = t.album_id 
WHERE track_time = (SELECT min(track_time) FROM tracks t 
JOIN singers_albums sa2 ON sa2.album_id = t.album_id);

--Названия альбомов, содержащих наименьшее количество треков

SELECT album_name 
FROM albums a JOIN tracks t ON a.id = t.album_id
GROUP BY album_name 
HAVING count(t.id) = (SELECT count(id) FROM tracks 
GROUP BY album_id 
ORDER BY 1 
LIMIT 1);

-------------------------------------------------------------

--task 2

SELECT collection_name, YEAR 
FROM collections
WHERE YEAR BETWEEN '20180101' AND '20201231';

SELECT singer_name
FROM singers
WHERE singer_name NOT LIKE '% %';


--task 3

SELECT genre_name, count(genre_id) AS count_of_singers
FROM singers s JOIN singers_genres sg  ON s.id = sg.singer_id 
JOIN genres g ON g.id = sg.genre_id
GROUP BY genre_name;

SELECT album_name, AVG(track_time) AS average_time_of_tracks
FROM albums a JOIN tracks t ON a.id = t.album_id
GROUP BY album_name;

SELECT collection_name
FROM collections c JOIN collections_tracks ct ON c.id = ct.collection_id 
JOIN tracks t ON t.id = ct.track_id 
JOIN albums a ON a.id = t.album_id 
JOIN singers_albums sa ON a.id = sa.album_id 
JOIN singers s ON sa.singer_id = s.id 
WHERE singer_name = 'Eminem';

-- task 4

SELECT track_name
FROM tracks
WHERE track_name NOT IN(SELECT track_name
FROM tracks t JOIN collections_tracks ct ON t.id = ct.track_id);


