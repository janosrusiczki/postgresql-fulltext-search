SELECT id, title, body FROM news WHERE tsv @@ to_tsquery('Romanian', 'medical');

-- SELECT news.id, news.title, categories.name FROM news JOIN categories ON news.category_id = categories.id;

-- UPDATE news SET tsv = to_tsvector('Romanian', coalesce(news.title, '') || ' ' || coalesce(news.body, '') || ' ' || coalesce(categories.name))
-- FROM categories
-- WHERE news.category_id = categories.id;

-- SELECT news.id, title, body, categories.name FROM news, categories WHERE categories.id = category_id AND tsv @@ to_tsquery('Romanian', 'medical');
