select genre_name, count(artist_name)
from "Genre" as g
left join "Artist_genre" as ag on g.id = ag.genre_id 
left join "Artist" as a on ag.artist_id = a.id 
group by g.genre_name 
order by count(a.id) desc;

select count(track_name)
from "Albums" as a
left join "Tracks" as t on t.album_id = a.album_id  
where (a."year"  >= 2019) and (a."year"  <= 2020);

select album_name, AVG(duration)
from "Albums" as a
left join "Tracks" as t on t.album_id = a.album_id 
group by a.album_name 
order by AVG(t.duration);

select distinct artist_name
from "Artist" as a
where a.artist_name not in (
select distinct a.artist_name 
from "Artist" as a
left join "Album_artist" as aa on a.id = aa.artist_id 
left join "Albums" as al on al.album_id = aa.album_id 
where al."year" = 2020
)
order by a.artist_name ;

select distinct name
from "Compilations" as c
left join "Track_compilation" as tc on c.compilation_id = tc.compilation_id 
left join "Tracks" as t on t.track_id = tc.track_id 
left join "Albums" as a on a.album_id = t.track_id 
left join "Album_artist" as aa on aa.album_id = a.album_id 
left join "Artist" as a2 on a2.id = aa.artist_id 
where a2.artist_name like '%%Amatory%%'
order by c."name";

select distinct album_name
from "Albums" as a
left join "Album_artist" as aa on a.album_id = aa.album_id 
left join "Artist" as a2 on a2.id = aa.artist_id 
left join "Artist_genre" as ag on ag.artist_id = a2.id
left join "Genre" as g on g.id = ag.genre_id 
group by a.album_name 
having count(distinct g.genre_name) > 1;

select track_name
from "Tracks" as t
left join "Track_compilation" as tc on t.track_id = tc.track_id 
where tc.track_id is null;

select artist_name, duration
from "Tracks" as t
left join "Albums" as a on a.album_id = t.album_id 
left join "Album_artist" as aa on aa.album_id = a.album_id 
left join "Artist" as a2 on a2.id = aa.artist_id 
group by a2.artist_name, t.duration 
having t.duration = (select min(duration) from "Tracks" )
order by a2.artist_name;

select distinct album_name
from "Albums" as a
left join "Tracks" as t on t.album_id  = a.album_id 
where t.album_id  in (
	select album_id 
	from "Tracks"
	group by album_id
	having count(album_id) = (
		select count(album_id)
		from "Tracks"
		group by album_id 
		order by count
		limit 1
	)
)
order by a.album_name ;
