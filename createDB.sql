CREATE TABLE users (
	id SERIAL PRIMARY KEY NOT NULL,
	userName VARCHAR(25) NOT NULL,
	firstName VARCHAR(25) NOT NULL,
	lastName VARCHAR(25) NOT NULL,
	email VARCHAR(25) NOT NULL,
	userPassword VARCHAR(25) NOT NULL,
	avatarId INT,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE users
ADD FOREIGN KEY (avatarid) REFERENCES files (id)

ALTER TABLE users
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE users
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE files (
	id SERIAL PRIMARY KEY NOT NULL,
	fileName VARCHAR(25) NOT NULL,
	MIMEType VARCHAR(25) NOT NULL,
	fileKey VARCHAR(25) NOT NULL,
	url VARCHAR(25) NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE files
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE files
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE movies (
	id SERIAL PRIMARY KEY NOT NULL,
	title VARCHAR(50) NOT NULL,
	description TEXT NOT NULL,
	budget INT NOT NULL,
	releaseDate DATE NOT NULL,
	duration VARCHAR(10) NOT NULL,
	directorId INT NOT NULL,
	countryId INT NOT NULL,
	posterId INT NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE movies
ADD FOREIGN KEY (posterid) REFERENCES files (id)

ALTER TABLE movies
ADD FOREIGN KEY (directorid) REFERENCES persons (id)

ALTER TABLE movies
ADD FOREIGN KEY (countryid) REFERENCES countries (id)

ALTER TABLE movies
ALTER COLUMN releasedate TYPE VARCHAR(4)

ALTER TABLE movies
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE movies
ALTER COLUMN updatedat SET DEFAULT NOW();

ALTER TABLE movies
ALTER COLUMN duration TYPE INT
USING duration::integer

CREATE TABLE persons (
	id SERIAL PRIMARY KEY NOT NULL,
	firstName VARCHAR(25) NOT NULL,
	lastName VARCHAR(25) NOT NULL,
	biography TEXT,
	birthDate DATE,
	gender VARCHAR(6) NOT NULL,
	countryId INT,
	mainPhotoId INT,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE persons
ADD FOREIGN KEY (countryid) REFERENCES countries (id)

ALTER TABLE persons
ADD FOREIGN KEY (mainphotoid) REFERENCES files (id)

ALTER TABLE persons
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE persons
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TYPE CharacterRole AS ENUM ('leading', 'supporting', 'background');

CREATE TABLE characters (
	id SERIAL PRIMARY KEY NOT NULL,
	characterName VARCHAR(25) NOT NULL,
	description TEXT,
	characterRole CharacterRole NOT NULL,
	actorId INT,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE characters
ADD FOREIGN KEY (actorid) REFERENCES persons (id)

ALTER TABLE characters
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE characters
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE countries (
	id SERIAL PRIMARY KEY NOT NULL,
	countryName VARCHAR(25) NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE countries
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE countries
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE genres (
	id SERIAL PRIMARY KEY NOT NULL,
	genreName VARCHAR(25) NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE genres
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE genres
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE movies_genres (
	id SERIAL PRIMARY KEY NOT NULL,
	movieId INT NOT NULL,
	genreId INT NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE movies_genres
ADD FOREIGN KEY (movieid) REFERENCES movies (id)

ALTER TABLE movies_genres
ADD FOREIGN KEY (genreid) REFERENCES genres (id)

ALTER TABLE movies_genres
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE movies_genres
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE movies_persons (
	id SERIAL PRIMARY KEY NOT NULL,
	movieId INT NOT NULL,
	personId INT NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE movies_persons
ADD FOREIGN KEY (movieid) REFERENCES movies (id)

ALTER TABLE movies_persons
ADD FOREIGN KEY (personid) REFERENCES persons (id)

ALTER TABLE movies_persons
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE movies_persons
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE persons_files (
	id SERIAL PRIMARY KEY NOT NULL,
	personId INT NOT NULL,
	fileId INT NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE persons_files
ADD FOREIGN KEY (personid) REFERENCES persons (id)

ALTER TABLE persons_files
ADD FOREIGN KEY (fileid) REFERENCES files (id)

ALTER TABLE persons_files
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE persons_files
ALTER COLUMN updatedat SET DEFAULT NOW();

CREATE TABLE movies_users (
	id SERIAL PRIMARY KEY NOT NULL,
	movieId INT NOT NULL,
	userId INT NOT NULL,
	createdAt TIMESTAMP,
	updatedAt TIMESTAMP
)

ALTER TABLE movies_users
ADD FOREIGN KEY (movieid) REFERENCES movies (id)

ALTER TABLE movies_users
ADD FOREIGN KEY (userid) REFERENCES users (id)

ALTER TABLE movies_users
ALTER COLUMN createdat SET DEFAULT NOW();

ALTER TABLE movies_users
ALTER COLUMN updatedat SET DEFAULT NOW();