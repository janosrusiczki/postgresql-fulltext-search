SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'iohANNis');

-- SELECT to_tsquery('Romanian', 'alabala & portocala');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'iohannis & bara');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'bara & iohannis');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ plainto_tsquery('Romanian', 'iohannis bara');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'capra');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'convocase');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'convocat & Iohannis');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'convocat & Iliescu');

-- SELECT to_tsvector('Romanian', 'Iohannis a convocat 2 miniștri la Cotroceni, să-i țină bara când bagă piept') @@ to_tsquery('Romanian', 'Iohannis | Iliescu');
