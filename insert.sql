USE MangaDB;

-- Inserisci tutte le serie in tuo possesso (pensare se inserirne altre come "wishlist")
INSERT INTO SERIE (nome, anno_pubblicazione, completato) VALUES 
('Berserk', 1989, 0),
('Buonanotte, Punpun', 2007, 1),
('Devilman', 1972, 1),
('Chainsaw Man', 2018, 0),
('Tatsuki Fujimoto Short Stories', 2021, 1),
('Fullmetal Alchemist', 2001, 1),
('Look Back', 2021, 1);




-- Categorie di manga (questi rimarranno fissi)
INSERT INTO categoria (nome) VALUES 
('Shonen'),
('Shoujo'),
('Seinen'),
('Josei');

-- Inserisci tutti i volumi di una serie inserita
INSERT INTO volume (nome) VALUES
('Berserk vol 1'), ('Berserk vol 2'), ('Berserk vol 3'), ('Berserk vol 4'),
('Berserk vol 5'), ('Berserk vol 6'), ('Berserk vol 7'), ('Berserk vol 8'),
('Berserk vol 9'), ('Berserk vol 10'), ('Berserk vol 11'), ('Berserk vol 12'),
('Berserk vol 13'), ('Berserk vol 14'), ('Berserk vol 15'), ('Berserk vol 16'), 
('Berserk vol 17'), ('Berserk vol 18'), ('Berserk vol 19'), ('Berserk vol 20'),
('Berserk vol 22'), ('Berserk vol 23'), ('Berserk vol 24'), ('Berserk vol 25'),
('Berserk vol 26'), ('Berserk vol 27'), ('Berserk vol 28'), ('Berserk vol 29'),
('Berserk vol 30'), ('Berserk vol 31'), ('Berserk vol 32'), ('Berserk vol 33'),
('Berserk vol 34'), ('Berserk vol 35'), ('Berserk vol 36'), ('Berserk vol 37'),
('Berserk vol 38'), ('Berserk vol 39'), ('Berserk vol 40'), ('Berserk vol 41'),

('Chainsaw Man vol 1'), ('Chainsaw Man vol 2'), ('Chainsaw Man vol 3'), ('Chainsaw Man vol 4'),
('Chainsaw Man vol 5'), ('Chainsaw Man vol 6'), ('Chainsaw Man vol 7'), ('Chainsaw Man vol 8'),
('Chainsaw Man vol 9'), ('Chainsaw Man vol 10'), ('Chainsaw Man vol 11'),

('Tatsuki Fujimoto Short Stories 17-21'), ('Tatsuki Fujimoto Short Stories 22-26'),

('Fullmetal Alchemist Deluxe vol 1'), ('Fullmetal Alchemist Deluxe vol 2'),
('Fullmetal Alchemist Deluxe vol 3'), ('Fullmetal Alchemist Deluxe vol 4'),
('Fullmetal Alchemist Deluxe vol 5'), ('Fullmetal Alchemist Deluxe vol 6'),
('Fullmetal Alchemist Deluxe vol 7'), ('Fullmetal Alchemist Deluxe vol 8'),
('Fullmetal Alchemist Deluxe vol 9'), ('Fullmetal Alchemist Deluxe vol 10'),
('Fullmetal Alchemist Deluxe vol 11'), ('Fullmetal Alchemist Deluxe vol 12'),
('Fullmetal Alchemist Deluxe vol 13'), ('Fullmetal Alchemist Deluxe vol 14'),
('Fullmetal Alchemist Deluxe vol 15'), ('Fullmetal Alchemist Deluxe vol 16'),
('Fullmetal Alchemist Deluxe vol 17'), ('Fullmetal Alchemist Deluxe vol 18'),

('Devilman vol 1'), ('Devilman vol 2'), ('Devilman vol 3'),
('Devilman vol 4'), ('Devilman vol 5'),

('Buonanotte, Punpun vol 1'), ('Buonanotte, Punpun vol 2'), ('Buonanotte, Punpun vol 3'),
('Buonanotte, Punpun vol 4'), ('Buonanotte, Punpun vol 5'), ('Buonanotte, Punpun vol 6'),
('Buonanotte, Punpun vol 7'), ('Buonanotte, Punpun vol 8'), ('Buonanotte, Punpun vol 9'),
('Buonanotte, Punpun vol 10'), ('Buonanotte, Punpun vol 11'), ('Buonanotte, Punpun vol 12'),
('Buonanotte, Punpun vol 13'),

('Look Back');

INSERT INTO autore (nome, nazionalità) VALUES
('Kentaro Miura', 'Japan'),
('Inio Asano', 'Japan'),
('Tatsuki Fujimoto', 'Japan'),
('Go Nagai', 'Japan'),
('Hiromu Arakawa', 'Japan');