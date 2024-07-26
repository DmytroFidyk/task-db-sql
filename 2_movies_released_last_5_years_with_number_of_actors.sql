SELECT movies.id, movies.title, COUNT(movies_persons.personid) AS actors_count FROM ((movies
INNER JOIN movies_persons ON movies_persons.movieid = movies.id)
INNER JOIN persons ON persons.id = movies_persons.personid)
WHERE movies.releasedate > '2019'
GROUP BY movies.id