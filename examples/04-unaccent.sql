CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;

-- SELECT to_tsvector('Romanian', 'Mogoșa') @@ to_tsquery('Romanian', 'Mogosa');

-- SELECT to_tsvector('Romanian', unaccent('Mogoșa')) @@ to_tsquery('Romanian', 'Mogosa');

-- SELECT to_tsvector('Romanian', unaccent('Mogoșa')) @@ to_tsquery('Romanian', 'Mogoșa');

-- SELECT to_tsvector('Romanian', unaccent('Mogoșa')) @@ to_tsquery('Romanian', unaccent('Mogoșa'));

-- SELECT to_tsvector('Romanian', UNACCENT('cunosc cunoaștere cunoaște cunoaștem cunoașteți cunoscător'));
