SELECT id, title FROM news WHERE to_tsvector('Romanian', title) @@ to_tsquery('Romanian', 'copii | iohannis');

-- SELECT id, title FROM news WHERE to_tsvector('Romanian', title) || to_tsvector('Romanian', body) @@ to_tsquery('Romanian', 'medicament');
