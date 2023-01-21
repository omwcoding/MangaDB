-- Active: 1672329880844@@127.0.0.1@3306@mangadb
USE MangaDB;

-- Inserimento autori (delle serie che inseriamo)
INSERT INTO AUTORE (nome) VALUES
('Kentaro Miura'),
('Inio Asano'),
('Tatsuki Fujimoto'),
('Go Nagai'),
('Hiromu Arakawa');

-- Inserimento generi (vedere come sviluppare i sottogeneri e se ne servono altri)
INSERT INTO GENERE (nome) VALUES
('Action'), ('Adult'), ('Adventure'),
('Comedy'), ('Drama'), ('Slice of Life'),
('Fantasy'), ('Supernatural'), ('Horror'),
('Psychological'), ('Sci'), ('Thriller'),
('Sports'), ('Graphic Novel');

-- Inserimento case editrici
INSERT INTO EDITORE (nome) VALUES
('Panini Comics'),
('Star Comics'),
('J-Pop');

-- Categorie di manga (questi rimarranno fissi)
INSERT INTO CATEGORIA (nome) VALUES 
('Shonen'),
('Shoujo'),
('Seinen'),
('Josei');

-- Inserisci tutte le serie in tuo possesso
INSERT INTO SERIE (nome, anno_pubblicazione, is_finished, n_volumi) VALUES 
('Berserk', 1989, 'ON GOING', 41),
('Buonanotte, Punpun', 2007, 'FINISHED', 13), 
('Devilman', 1972, 'FINISHED', 5),
('Chainsaw Man', 2018, 'ON GOING', 12),
('Tatsuki Fujimoto Short Stories', 2021, 'FINISHED', 2),
('Fullmetal Alchemist Deluxe', 2001, 'FINISHED', 18),
('Fire Punch', 2016, 'FINISHED', 8),
('Look Back', 2021, 'FINISHED', 1);

-- Inserisci tutti i volumi di una serie inserita
INSERT INTO VOLUME (nome, possesso, prezzo, id_serie) VALUES
('volume 1', 1, 5.5, 1), ('volume 2', 1, 5.5, 1), ('volume 3', 1, 5.5, 1), ('volume 4', 1, 5.5, 1),
('volume 5', 1, 5.5, 1), ('volume 6', 1, 5.5, 1), ('volume 7', 1, 5.5, 1), ('volume 8', 1, 5.5, 1),
('volume 9', 1, 5.5, 1), ('volume 10', 1, 5.5, 1), ('volume 11', 1, 5.5, 1), ('volume 12', 1, 5.5, 1),
('volume 13', 1, 5.5, 1), ('volume 14', 1, 5.5, 1), ('volume 15', 1, 5.5, 1), ('volume 16', 1, 5.5, 1), 
('volume 17', 1, 5.5, 1), ('volume 18', 1, 5.5, 1), ('volume 19', 1, 5.5, 1), ('volume 20', 1, 5.5, 1),
('volume 21', 1, 5.5, 1), ('volume 22', 1, 5.5, 1), ('volume 23', 0, 5.5, 1), ('volume 24', 0, 5.5, 1), 
('volume 25', 1, 5.5, 1), ('volume 26', 0, 5.5, 1), ('volume 27', 0, 5.5, 1), ('volume 28', 1, 5.5, 1), 
('volume 29', 0, 5.5, 1), ('volume 30', 0, 5.5, 1), ('volume 31', 0, 5.5, 1), ('volume 32', 0, 5.5, 1), 
('volume 33', 0, 5.5, 1), ('volume 34', 0, 5.5, 1), ('volume 35', 0, 5.5, 1), ('volume 36', 0, 5.5, 1), 
('volume 37', 1, 5.5, 1), ('volume 38', 0, 5.5, 1), ('volume 39', 1, 5.5, 1), ('volume 40', 1, 5.5, 1),

('volume 1', 1, 4.9, 3), ('volume 2', 1, 4.9, 3), ('volume 3', 1, 4.9, 3), ('volume 4', 1, 4.9, 3),
('volume 5', 1, 4.9, 3), ('volume 6', 1, 4.9, 3), ('volume 7', 1, 4.9, 3), ('volume 8', 1, 4.9, 3),
('volume 9', 1, 4.9, 3), ('volume 10', 1, 5.2, 3), ('volume 11', 1, 5.2, 3),

('17-21', 1, 5.9, 5), ('22-26', 1, 5.9, 5),

('volume 1', 1, 12.0, 6), ('volume 2', 1, 12.0, 6),
('volume 3', 1, 12.0, 6), ('volume 4', 1, 12.0, 6),
('volume 5', 1, 12.0, 6), ('volume 6', 1, 12.0, 6),
('volume 7', 1, 12.0, 6), ('volume 8', 1, 12.0, 6),
('volume 9', 1, 12.0, 6), ('volume 10', 1, 12.0, 6),
('volume 11', 0, 12.0, 6), ('volume 12', 0, 12.0, 6),
('volume 13', 0, 12.0, 6), ('volume 14', 0, 12.0, 6),
('volume 15', 0, 12.0, 6), ('volume 16', 0, 12.0, 6),
('volume 17', 0, 12.0, 6), ('volume 18', 0, 12.0, 6),

('volume 1', 1, 7.5, 3), ('volume 2', 1, 7.5, 3), ('volume 3', 1, 7.5, 3),
('volume 4', 0, 7.5, 3), ('volume 5', 0, 7.5, 3),

('volume 1', 1, 7.5, 2), ('volume 2', 1, 7.5, 2), ('volume 3', 1, 7.5, 2),
('volume 4', 1, 7.5, 2), ('volume 5', 0, 7.5, 2), ('volume 6', 0, 7.5, 2),
('volume 7', 0, 7.5, 2), ('volume 8', 0, 7.5, 2), ('volume 9', 0, 7.5, 2),
('volume 10', 0, 7.5, 2), ('volume 11', 0, 7.5, 2), ('volume 12', 0, 7.5, 2),
('volume 13', 0, 7.5, 2),

('volume 1', 1, 5.0, 7), ('volume 2', 1, 5.0, 7), ('volume 3', 1, 5.0, 7), ('volume 4', 1, 5.0, 7), 
('volume 5', 1, 5.0, 7), ('volume 6', 1, 5.0, 7), ('volume 7', 1, 5.0, 7), ('volume 8', 1, 5.0, 7), 

('volume 1', 1, 5.9, 8);

INSERT INTO VOLUME (nome, possesso, prezzo, id_serie, is_standard) VALUES
    ('volume 41 Special Edition', 1, 20.0, 1, 0)
;