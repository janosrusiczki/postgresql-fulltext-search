DROP TRIGGER IF EXISTS tsvupdate ON news;
DROP FUNCTION IF EXISTS news_trigger;

CREATE FUNCTION news_trigger() RETURNS trigger LANGUAGE plpgsql AS $$
declare
news_category record;

begin
select name into news_category from categories where categories.id = new.category_id;
new.tsv :=
  setweight(to_tsvector('Romanian', unaccent(coalesce(new.title, ''))), 'A') ||
  setweight(to_tsvector('Romanian', unaccent(coalesce(new.body, ''))), 'A') ||
  setweight(to_tsvector('Romanian', unaccent(coalesce(news_category.name, ''))), 'B');
return new;
end
$$;

CREATE TRIGGER tsvupdate BEFORE INSERT OR UPDATE
ON news FOR EACH ROW EXECUTE FUNCTION news_trigger();

-- INSERT INTO news (title, body, category_id) VALUES('cucubau', 'hamham', 1);

-- SELECT id, title, body FROM news WHERE tsv @@ to_tsquery('Romanian', 'cucubau');

-- SELECT tsv FROM news;
