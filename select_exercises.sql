

-- 3a. How many rows are in the albums table? 31

SELECT *
FROM albums;

-- b. How many unique artist names are in the albums table? 23

SELECT DISTINCT artist
FROM albums;

-- c. What is the primary key for the albums table? id

SHOW CREATE TABLE albums;

albums	CREATE TABLE `albums` (↵  `id` int unsigned NOT NULL AUTO_INCREMENT,↵  `artist` varchar(240) DEFAULT NULL,↵  `name` varchar(240) NOT NULL,↵  `release_date` int DEFAULT NULL,↵  `sales` float DEFAULT NULL,↵  `genre` varchar(240) DEFAULT NULL,↵  PRIMARY KEY (`id`)↵) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;


-- d. What is the oldest release date for any album in the albums table? 1967 What is the most recent release date? 2011

SELECT MIN(release_date)
FROM albums
WHERE release_date;


SELECT MAX(release_date)
FROM albums
WHERE release_date;

-- 4a. The name of all albums by Pink Floyd? The Dark Side of the Moon and The Wall

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

-- b. The year Sgt. Pepper's Lonely Hearts Club Band was released? 1967

SELECT release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";


-- c. The genre for the album Nevermind? Grunge, Alternative rock

SELECT genre
FROM albums
WHERE name = 'Nevermind';

-- d. Which albums were released in the 1990s? 21 and 1

SELECT name
FROM albums
WHERE release_date >= 2000;


-- e. Which albums had less than 20 million certified sales? 

/*Grease: The Original Soundtrack from the Motion Picture
Bad
Sgt. Pepper's Lonely Hearts Club Band
Dirty Dancing
Let's Talk About Love
Dangerous
The Immaculate Collection
Abbey Road
Born in the U.S.A.
Brothers in Arms
Titanic: Music from the Motion Picture
Nevermind
The Wall*/

SELECT name
FROM albums
WHERE sales < 20;


-- f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"? Sgt. Pepper's Lonely Hearts Club Band, 1, Abbey Road, Born in the U.S.A., Supernatural
-- Query resuls only return 'rock' genre results because that is exactly what was specified between the '' 


SELECT name
FROM albums
WHERE genre = 'rock';



