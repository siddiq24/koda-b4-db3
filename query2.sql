select m.id, m.name, m.rankscore, d.first_name
from movies as m
JOIN movies_directors as md ON md.movie_id = m.id
JOIN directors as d on md.director_id = d.id
limit 50;

SELECT a.first_name, m.name, r.role
from actors as a
left JOIN roles as r ON r.actor_id = a.id
left JOIN movies as m ON r.movie_id = m.id
GROUP BY a.first_name, m.name, r.role;

