SELECT
CEIL(width) + 2 AS frame_width
CEIL(height) + 4 AS frame_height
FROM moma_works 
WHERE classification = 'Photograph' AND height >0 AND width > 0;