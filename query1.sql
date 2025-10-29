-- movies dgn tahun release lebih dari 2000
select * from movies WHERE year > 2000;

-- actors dengan akhiran s
select * from actors where last_name like '%s';

-- movie dgn rating antara 5-7 dan tahun release 2004-2006
select * from movies WHERE 
rankscore >= 5 and 
rankscore <= 7 and
year >=2004 and year <= 2006;

-- jumlah movie dgn rating 6
SELECT count(*) as "jumlah_movie_dgn_rating_6" from movies
where rankscore = 6;