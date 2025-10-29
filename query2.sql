select m.id, m.name as "movie_name", d.first_name as "director", mg.genre
from movies as m
JOIN movies_directors as md ON md.movie_id = m.id
JOIN directors as d on md.director_id = d.id
JOIN movies_genres as mg on mg.movie_id = m.id
limit 50;

SELECT a.first_name, m.name as "movies name", r.role
from actors as a
left JOIN roles as r ON r.actor_id = a.id
left JOIN movies as m ON r.movie_id = m.id;
