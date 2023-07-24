SELECT album_name, "year"
FROM public."Albums"
WHERE year=2018;

SELECT track_name, duration
FROM public."Tracks"
WHERE "duration"=(
	select max("duration")
	from public."Tracks");

SELECT track_name
FROM public."Tracks"
WHERE duration >time '00:03:30';

SELECT album_id
FROM public."Albums"
where "year" between 2018 and 2020;


