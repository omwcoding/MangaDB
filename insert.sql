-- USE MangaDB;

-- Inserisci tutte le serie in tuo possesso (pensare di inserirne altre come "wishlist")
INSERT INTO SERIE (nome, anno_pubblicazione, completo) VALUES 
('Berserk', 1989, 0),
('Buonanotte, Punpun', 2007, 1),
('Devilman', 1972, 1),
('Chainsaw Man', 2018, 0),
('Tatsuki Fujimoto Short Stories', 2021, 1),
('Look Back', 2021, 1);



-- Categorie di manga (questi rimarranno fissi)
INSERT INTO categoria (nome) VALUES 
('Shonen'),
('Shoujo'),
('Seinen'),
('Josei');

-- Inserisci tutti i volumi di una serie
INSERT INTO volume (nome, prezzo) VALUES(
('Berserk vol 1', 05.20), 
('Berserk vol 2', 05.20), 
('Berserk vol 3', 05.20), 
('Berserk vol 4', 05.20),
('Berserk vol 5', 05.20), 
('Berserk vol 6', 05.20), 
('Berserk vol 7', 05.20), 
('Berserk vol 8', 05.20),
('Berserk vol 9', 05.20), 
('Berserk vol 10', 05.20), 
('Berserk vol 11', 05.20), 
('Berserk vol 12', 05.20),
('Berserk vol 13', 05.20), ('Berserk vol 14', 05.20), ('Berserk vol 15', 05.20), ('Berserk vol 16', 05.20), 
('Berserk vol 17', 05.20), ('Berserk vol 18', 05.20), ('Berserk vol 19', 05.20), ('Berserk vol 20', 05.20),
('Berserk vol 22', 05.20), ('Berserk vol 23', 05.20), ('Berserk vol 24', 05.20), ('Berserk vol 25', 05.20),
('Berserk vol 26', 05.20), ('Berserk vol 27', 05.20), ('Berserk vol 28', 05.20), ('Berserk vol 29', 05.20),
('Berserk vol 30', 05.20), ('Berserk vol 31', 05.20), ('Berserk vol 32', 05.20), ('Berserk vol 33', 05.20),
('Berserk vol 34', 05.20), ('Berserk vol 35', 05.20), ('Berserk vol 36', 05.20), ('Berserk vol 37', 05.20),
('Berserk vol 38', 05.20), ('Berserk vol 39', 05.20), ('Berserk vol 40', 05.20), ('Berserk vol 41'),
('Chainsaw Man vol 1', 04.90),
('Chainsaw Man vol 2', 04.90),
('Chainsaw Man vol 3', 04.90),
('Chainsaw Man vol 4', 04.90),
('Chainsaw Man vol 5', 04.90),
('Chainsaw Man vol 6', 04.90),
('Chainsaw Man vol 7', 04.90),
('Chainsaw Man vol 8', 04.90),
('Chainsaw Man vol 9', 04.90),
('Chainsaw Man vol 10', 05.20),
('Chainsaw Man vol 11', 05.20),
('Look Back vol Unico', 05.90));
