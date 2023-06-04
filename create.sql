CREATE TABLE IF NOT EXISTS Albums(
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(50) NOT NULL,
	year DATE
);

CREATE TABLE IF NOT EXISTS 	Singers(
	id SERIAL PRIMARY KEY,
	singer_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers_albums (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	singer_id INTEGER NOT NULL REFERENCES Singers(id)
);

CREATE TABLE IF NOT EXISTS Genres(
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers_genres (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genres(id),
	singer_id INTEGER NOT NULL REFERENCES Singers(id)
);

CREATE TABLE IF NOT EXISTS Collections(
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(50) NOT NULL,
	year DATE
);

CREATE TABLE IF NOT EXISTS Tracks(
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(50) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	track_time TIME
);

CREATE TABLE IF NOT EXISTS Collections_tracks (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES Collections(id),
	track_id INTEGER NOT NULL REFERENCES Tracks(id)
);



