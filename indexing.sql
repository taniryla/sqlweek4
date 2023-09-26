SELECT * FROM pg_indexes;

SELECT tablename, indexname, indexdef FROM pg_indexes 
WHERE tablename NOT LIKE 'pg_%';

-- btree index
CREATE INDEX moma_works_btree_index ON moma_works(artist);

-- hash index
DROP INDEX moma_works_btree_index;
CREATE INDEX moma_works_hash_index ON moma_works USING HASH (artist);