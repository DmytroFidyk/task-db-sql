ALTER SEQUENCE countries_id_seq RESTART WITH 1;
ALTER SEQUENCE persons_id_seq RESTART WITH 1;
ALTER SEQUENCE movies_id_seq RESTART WITH 1;
ALTER SEQUENCE files_id_seq RESTART WITH 1;

INSERT INTO countries (countryname) 
	VALUES ('Україна'), ('Литва'), ('Латвія'), ('Естонія'), ('Польща'), 
	('Сакартвело'), ('Сполучене Королівство'), ('Франція'), ('Німеччина'), ('Данія')

INSERT INTO files (filename, mimetype, filekey, url) 
	VALUES ('image1', 'image/png', 'img1', 'images/'),
	('image2', 'image/png', 'img2', 'images/'),
	('image3', 'image/png', 'img3', 'images/'),
	('image4', 'image/png', 'img4', 'images/'),
	('image5', 'image/png', 'img5', 'images/'),
	('image6', 'image/png', 'img6', 'images/'),
	('image7', 'image/png', 'img7', 'images/'),
	('image8', 'image/png', 'img8', 'images/'),
	('image9', 'image/png', 'img9', 'images/'),
	('image10', 'image/png', 'img10', 'images/'),
	('image11', 'image/png', 'img11', 'images/'),
	('image12', 'image/png', 'img12', 'images/'),
	('image13', 'image/png', 'img13', 'images/'),
	('image14', 'image/png', 'img14', 'images/'),
	('image15', 'image/png', 'img15', 'images/'),
	('image16', 'image/png', 'img16', 'images/'),
	('image17', 'image/png', 'img17', 'images/'),
	('image18', 'image/png', 'img18', 'images/'),
	('image19', 'image/png', 'img19', 'images/'),
	('image20', 'image/png', 'img20', 'images/')

INSERT INTO genres (genrename) 
	VALUES ('Драма'), ('Мультфільм'), ('Комедія'), ('Пригоди'), ('Фантастика'),
	('Детектив'), ('Бойовик'), ('Документальний'), ('Воєнний'), ('Дитячий')

INSERT INTO persons (firstname, lastname, biography, birthdate, gender, countryid, mainphotoid)
VALUES ('Імя1', 'Прізвище1', 'Біо1', '1990-09-20', 'Male', 2, 10),
		('Імя2', 'Прізвище2', 'Біо2', '1982-11-25', 'Female', 5, 7),
		('Імя3', 'Прізвище3', 'Біо3', '1973-12-14', 'Male', 3, 2),
		('Імя4', 'Прізвище4', 'Біо4', '1989-05-05', 'Female', 5, 3),
		('Імя5', 'Прізвище5', 'Біо5', '1990-06-09', 'Male', 4, 5),
		('Імя6', 'Прізвище6', 'Біо6', '1978-09-17', 'Male', 4, 4),
		('Імя7', 'Прізвище7', 'Біо7', '1993-07-20', 'Male', 8, 1),
		('Імя8', 'Прізвище8', 'Біо8', '1965-01-23', 'Female', 9, 6),
		('Імя9', 'Прізвище9', 'Біо9', '1997-12-14', 'Male', 1, 9),
		('Імя10', 'Прізвище10', 'Біо10', '1982-10-03', 'Female', 1, 8)

INSERT INTO movies (title, description, budget, releasedate, duration, directorid, countryid, posterid)
VALUES ('Назва1', 'Опис1', 10000000, '1980', 160, 7, 4, 15),
		('Назва2', 'Опис2', 25000000, '2001', 140, 5, 6, 14),
		('Назва3', 'Опис3', 30000000, '2010', 90, 2, 9, 17),
		('Назва4', 'Опис4', 9000000, '2017', 120, 1, 4, 11),
		('Назва5', 'Опис5', 17000000, '1987', 130, 7, 3, 12),
		('Назва6', 'Опис6', 14000000, '1990', 170, 9, 7, 16),
		('Назва7', 'Опис7', 10000000, '2015', 190, 4, 8, 13),
		('Назва8', 'Опис8', 11000000, '2015', 175, 1, 9, 19),
		('Назва9', 'Опис9', 20000000, '2020', 145, 2, 2, 18),
		('Назва10', 'Опис10', 30000000, '2020', 135, 3, 2, 20)

INSERT INTO movies_persons (movieid, personid) 
	VALUES (1, 7), (2, 5), (4, 7), (2, 9), (9, 3), (5, 4), (6, 7), (2, 1), (4, 8), (2, 7)

	