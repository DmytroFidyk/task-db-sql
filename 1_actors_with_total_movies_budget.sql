SELECT persons.id, persons.firstname, persons.lastname, SUM(movies.budget) AS total_movies_budget FROM ((persons
INNER JOIN movies_persons ON movies_persons.personid = persons.id)
INNER JOIN movies ON movies_persons.movieid = movies.id)
GROUP BY persons.id