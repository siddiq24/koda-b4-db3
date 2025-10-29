select concat(d.first_name, ' ', d.last_name) as director, count(dg.genre) as "total_genre"
from directors as d
join directors_genres as dg on dg.director_id = d.id
GROUP BY d.first_name, d.last_name;

SELECT  "actor_name", p.roles
from (
    SELECT concat(a.first_name, ' ', a.last_name) as "actor_name", count(r.role) as roles
    from actors as a
    JOIN roles as r ON r.actor_id = a.id
    GROUP BY a.first_name, a.last_name
) as p
WHERE roles > 5;


SELECT concat(d.first_name, ' ', d.last_name ) as "director_name", COUNT(md.movie_id) as movies
FROM directors as d
JOIN movies_directors as md on md.director_id = d.id
GROUP BY d.first_name, d.last_name
ORDER BY movies desc
limit 1;

SELECT m.year, count(m.year) 
from movies as m
GROUP BY m.year
ORDER BY count(m.year) DESC
limit 1;
