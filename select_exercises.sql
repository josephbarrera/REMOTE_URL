

-- 3a. How many rows are in the albums table? 31

SELECT *
FROM albums;

-- b. How many unique artist names are in the albums table? 23

SELECT DISTINCT artist
FROM albums;

-- c. What is the primary key for the albums table? id

SHOW CREATE TABLE albums;

albums	CREATE TABLE `albums` (↵  `id` int unsigned NOT NULL AUTO_INCREMENT,↵  `artist` varchar(240) DEFAULT NULL,↵  `name` varchar(240) NOT NULL,↵  `release_date` int DEFAULT NULL,↵  `sales` float DEFAULT NULL,↵  `genre` varchar(240) DEFAULT NULL,↵  PRIMARY KEY (`id`)↵) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1


-- d. What is the oldest release date for any album in the albums table? 1967 What is the most recent release date? 2011

SELECT MIN(release_date)
FROM albums
WHERE release_date;


SELECT MAX(release_date)
FROM albums
WHERE release_date;

-- 4a. The name of all albums by Pink Floyd

SELECT DISTINCT name
FROM albums;

-- b. The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT 


-- c. The genre for the album Nevermind - Grunge, Alternative rock

SELECT genre
FROM albums
WHERE id = 28;

-- d. Which albums were released in the 1990s

SELECT name
FROM albums
WHERE release date => 2000;


-- e. Which albums had less than 20 million certified sales

SELECT albums
FROM albums



-- f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?





