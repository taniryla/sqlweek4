INSERT INTO moma_artists (info) VALUES (
	json_object('{display_name, Ablade Glover}', '{nationality, Ghanaian}')
);

SELECT info 
FROM moma_artists
ORDER BY id
DESC LIMIT 1;