SELECT 
info -> 'display_name' AS name,
info -> 'nationality' AS nationality
FROM moma_artists 
ORDER BY id
LIMIT 50;