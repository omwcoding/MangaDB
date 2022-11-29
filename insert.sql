USE MangaDB;

-- Inserisci tutte le serie in tuo possesso (pensare se inserirne altre come "wishlist")
INSERT INTO SERIE (nome, anno_pubblicazione) VALUES 
('Berserk', 1989),
('Buonanotte, Punpun', 2007),
('Devilman', 1972),
('Chainsaw Man', 2018),
('Tatsuki Fujimoto Short Stories', 2021),
('Fullmetal Alchemist', 2001),
('Look Back', 2021);

-- Categorie di manga (questi rimarranno fissi)
INSERT INTO CATEGORIA (nome) VALUES 
('Shonen'),
('Shoujo'),
('Seinen'),
('Josei');

-- Inserisci tutti i volumi di una serie inserita
INSERT INTO VOLUME (nome, possesso) VALUES
('Berserk vol 1', TRUE), ('Berserk vol 2', TRUE), ('Berserk vol 3', TRUE), ('Berserk vol 4', TRUE),
('Berserk vol 5', TRUE), ('Berserk vol 6', TRUE), ('Berserk vol 7', TRUE), ('Berserk vol 8', TRUE),
('Berserk vol 9', TRUE), ('Berserk vol 10', TRUE), ('Berserk vol 11', TRUE), ('Berserk vol 12', TRUE),
('Berserk vol 13', TRUE), ('Berserk vol 14', TRUE), ('Berserk vol 15', TRUE), ('Berserk vol 16', TRUE), 
('Berserk vol 17', TRUE), ('Berserk vol 18', TRUE), ('Berserk vol 19', TRUE), ('Berserk vol 20', TRUE),
('Berserk vol 22', TRUE), ('Berserk vol 23'), ('Berserk vol 24'), ('Berserk vol 25', TRUE),
('Berserk vol 26'), ('Berserk vol 27'), ('Berserk vol 28', TRUE), ('Berserk vol 29'),
('Berserk vol 30'), ('Berserk vol 31'), ('Berserk vol 32'), ('Berserk vol 33'),
('Berserk vol 34'), ('Berserk vol 35'), ('Berserk vol 36'), ('Berserk vol 37', TRUE),
('Berserk vol 38'), ('Berserk vol 39'), ('Berserk vol 40', TRUE), ('Berserk vol 41'),
('Chainsaw Man vol 1', TRUE), ('Chainsaw Man vol 2', TRUE), ('Chainsaw Man vol 3', TRUE), ('Chainsaw Man vol 4', TRUE),
('Chainsaw Man vol 5', TRUE), ('Chainsaw Man vol 6', TRUE), ('Chainsaw Man vol 7', TRUE), ('Chainsaw Man vol 8', TRUE),
('Chainsaw Man vol 9', TRUE), ('Chainsaw Man vol 10', TRUE), ('Chainsaw Man vol 11', TRUE),
('Tatsuki Fujimoto Short Stories 17-21', TRUE), ('Tatsuki Fujimoto Short Stories 22-26', TRUE),
('Fullmetal Alchemist Deluxe vol 1', TRUE), ('Fullmetal Alchemist Deluxe vol 2', TRUE),
('Fullmetal Alchemist Deluxe vol 3', TRUE), ('Fullmetal Alchemist Deluxe vol 4', TRUE),
('Fullmetal Alchemist Deluxe vol 5', TRUE), ('Fullmetal Alchemist Deluxe vol 6', TRUE),
('Fullmetal Alchemist Deluxe vol 7', TRUE), ('Fullmetal Alchemist Deluxe vol 8', TRUE),
('Fullmetal Alchemist Deluxe vol 9', TRUE), ('Fullmetal Alchemist Deluxe vol 10', TRUE),
('Fullmetal Alchemist Deluxe vol 11'), ('Fullmetal Alchemist Deluxe vol 12'),
('Fullmetal Alchemist Deluxe vol 13'), ('Fullmetal Alchemist Deluxe vol 14'),
('Fullmetal Alchemist Deluxe vol 15'), ('Fullmetal Alchemist Deluxe vol 16'),
('Fullmetal Alchemist Deluxe vol 17'), ('Fullmetal Alchemist Deluxe vol 18'),
('Devilman vol 1', TRUE), ('Devilman vol 2', TRUE), ('Devilman vol 3', TRUE),
('Devilman vol 4'), ('Devilman vol 5'),
('Buonanotte, Punpun vol 1', TRUE), ('Buonanotte, Punpun vol 2', TRUE), ('Buonanotte, Punpun vol 3', TRUE),
('Buonanotte, Punpun vol 4', TRUE), ('Buonanotte, Punpun vol 5'), ('Buonanotte, Punpun vol 6'),
('Buonanotte, Punpun vol 7'), ('Buonanotte, Punpun vol 8'), ('Buonanotte, Punpun vol 9'),
('Buonanotte, Punpun vol 10'), ('Buonanotte, Punpun vol 11'), ('Buonanotte, Punpun vol 12'),
('Buonanotte, Punpun vol 13'),
('Look Back', TRUE);

-- Inserimento autori (delle serie che inseriamo)
INSERT INTO AUTORE (nome, nazionalità) VALUES
('Kentaro Miura', 'Japan'),
('Inio Asano', 'Japan'),
('Tatsuki Fujimoto', 'Japan'),
('Go Nagai', 'Japan'),
('Hiromu Arakawa', 'Japan');

-- Inserimento generi (vedere come sviluppare i sottogeneri e se ne servono altri)
INSERT INTO GENERE (nome) VALUES
('Action'), ('Adult'), ('Adventure'),
('Comedy'), ('Drama'), ('Slice of Life'),
('Fantasy'), ('Supernatural'), ('Horror'),
('Psychological'), ('Sci'), ('Thriller'),
('Sports'), ('Graphic Novel');

-- Inserimento case editrici
INSERT INTO CASA_EDITRICE (nome, nazione) VALUES
('Panini Comics', 'Italy'),
('Star Comics', 'Italy'),
('J-Pop', 'Italy');