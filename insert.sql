USE MangaDB;

-- Inserisci tutte le serie in tuo possesso (pensare di inserirne altre come "wishlist")
INSERT INTO SERIE (nome, anno_pubblicazione, completo) VALUES 
('Berserk', 1989, 0),
('Buonanotte, Punpun', 2007, 1),
('Devilman', 1972, 1),
('One Piece', 1997, 0);

-- Categorie di manga (questi rimarranno fissi)
INSERT INTO categoria (nome) VALUES 
('Shonen'),
('Shoujo'),
('Seinen'),
('Josei');


