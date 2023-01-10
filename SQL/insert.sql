-- Active: 1672329880844@@127.0.0.1@3306@mangadb
USE MangaDB;

-- Inserisci tutte le serie in tuo possesso
INSERT INTO SERIE (nome, anno_pubblicazione, stato, n_volumi) VALUES 
('Berserk', 1989, 'ON GOING', 41),
('Buonanotte, Punpun', 2007, 'FINISHED', 13), 
('Devilman', 1972, 'FINISHED', 5),
('Chainsaw Man', 2018, 'ON GOING', 12),
('Tatsuki Fujimoto Short Stories', 2021, 'FINISHED', 2),
('Fullmetal Alchemist', 2001, 'FINISHED', 18),
('Fire Punch', 2016, 'FINISHED', 8),
('Look Back', 2021, 'FINISHED', 1);

-- Categorie di manga (questi rimarranno fissi)
INSERT INTO CATEGORIA (nome) VALUES 
('Shonen'),
('Shoujo'),
('Seinen'),
('Josei');

-- Inserisci tutti i volumi di una serie inserita
INSERT INTO VOLUME (nome, possesso) VALUES
('Berserk vol 1', 1), ('Berserk vol 2', 1), ('Berserk vol 3', 1), ('Berserk vol 4', 1),
('Berserk vol 5', 1), ('Berserk vol 6', 1), ('Berserk vol 7', 1), ('Berserk vol 8', 1),
('Berserk vol 9', 1), ('Berserk vol 10', 1), ('Berserk vol 11', 1), ('Berserk vol 12', 1),
('Berserk vol 13', 1), ('Berserk vol 14', 1), ('Berserk vol 15', 1), ('Berserk vol 16', 1), 
('Berserk vol 17', 1), ('Berserk vol 18', 1), ('Berserk vol 19', 1), ('Berserk vol 20', 1),
('Berserk vol 22', 1), ('Berserk vol 23', 0), ('Berserk vol 24', 0), ('Berserk vol 25', 1),
('Berserk vol 26', 0), ('Berserk vol 27', 0), ('Berserk vol 28', 1), ('Berserk vol 29', 0),
('Berserk vol 30', 0), ('Berserk vol 31', 0), ('Berserk vol 32', 0), ('Berserk vol 33', 0),
('Berserk vol 34', 0), ('Berserk vol 35', 0), ('Berserk vol 36', 0), ('Berserk vol 37', 1),
('Berserk vol 38', 0), ('Berserk vol 39', 1), ('Berserk vol 40', 1), ('Berserk vol 41', 1),
('Chainsaw Man vol 1', 1), ('Chainsaw Man vol 2', 1), ('Chainsaw Man vol 3', 1), ('Chainsaw Man vol 4', 1),
('Chainsaw Man vol 5', 1), ('Chainsaw Man vol 6', 1), ('Chainsaw Man vol 7', 1), ('Chainsaw Man vol 8', 1),
('Chainsaw Man vol 9', 1), ('Chainsaw Man vol 10', 1), ('Chainsaw Man vol 11', 1),
('Tatsuki Fujimoto Short Stories 17-21', 1), ('Tatsuki Fujimoto Short Stories 22-26', 1),
('Fullmetal Alchemist Deluxe vol 1', 1), ('Fullmetal Alchemist Deluxe vol 2', 1),
('Fullmetal Alchemist Deluxe vol 3', 1), ('Fullmetal Alchemist Deluxe vol 4', 1),
('Fullmetal Alchemist Deluxe vol 5', 1), ('Fullmetal Alchemist Deluxe vol 6', 1),
('Fullmetal Alchemist Deluxe vol 7', 1), ('Fullmetal Alchemist Deluxe vol 8', 1),
('Fullmetal Alchemist Deluxe vol 9', 1), ('Fullmetal Alchemist Deluxe vol 10', 1),
('Fullmetal Alchemist Deluxe vol 11', 0), ('Fullmetal Alchemist Deluxe vol 12', 0),
('Fullmetal Alchemist Deluxe vol 13', 0), ('Fullmetal Alchemist Deluxe vol 14', 0),
('Fullmetal Alchemist Deluxe vol 15', 0), ('Fullmetal Alchemist Deluxe vol 16', 0),
('Fullmetal Alchemist Deluxe vol 17', 0), ('Fullmetal Alchemist Deluxe vol 18', 0),
('Devilman vol 1', 1), ('Devilman vol 2', 1), ('Devilman vol 3', 1),
('Devilman vol 4', 0), ('Devilman vol 5', 0),
('Buonanotte, Punpun vol 1', 1), ('Buonanotte, Punpun vol 2', 1), ('Buonanotte, Punpun vol 3', 1),
('Buonanotte, Punpun vol 4', 1), ('Buonanotte, Punpun vol 5', 0), ('Buonanotte, Punpun vol 6', 0),
('Buonanotte, Punpun vol 7', 0), ('Buonanotte, Punpun vol 8', 0), ('Buonanotte, Punpun vol 9', 0),
('Buonanotte, Punpun vol 10', 0), ('Buonanotte, Punpun vol 11', 0), ('Buonanotte, Punpun vol 12', 0),
('Buonanotte, Punpun vol 13', 0),
('Fire Punch vol 1', 1), ('Fire Punch vol 2', 1), ('Fire Punch vol 3', 1), ('Fire Punch vol 4', 1), 
('Fire Punch vol 5', 1), ('Fire Punch vol 6', 1), ('Fire Punch vol 7', 1), ('Fire Punch vol8', 1), 
('Look Back', 1);

-- Inserimento autori (delle serie che inseriamo)
INSERT INTO AUTORE (nome, nazionalità) VALUES
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
INSERT INTO EDITORE (nome, nazione) VALUES
('Panini Comics'),
('Star Comics'),
('J-Pop');