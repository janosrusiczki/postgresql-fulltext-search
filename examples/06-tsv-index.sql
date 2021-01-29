-- ALTER TABLE news DROP COLUMN tsv;

ALTER TABLE news ADD COLUMN tsv tsvector;
CREATE INDEX tsv_idx ON news USING gin(tsv);

-- UPDATE news SET tsv = to_tsvector('Romanian', coalesce(title, '') || ' ' || coalesce(body, ''));

-- SELECT id, title FROM news WHERE tsv @@ to_tsquery('Romanian', 'iohannis');
