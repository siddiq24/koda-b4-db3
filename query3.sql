select concat(d.first_name, ' ', d.last_name) as director, count(dg.genre) as "total_genre"
from directors as d
join directors_genres as dg on dg.director_id = d.id
GROUP BY d.first_name, d.last_name;

