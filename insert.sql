USE MangaDB;

INSERT INTO SERIE (nome, anno_pubblicazione, completo) VALUES 
('Berserk', 1989, 0),
('Buonanotte, Punpun', 2007, 1),
('Devilman', 1972, 1),
('One Piece', 1997, 0);

SELECT * FROM serie ORDER BY `nome` asc;

INSERT INTO categoria (id, nome) VALUES 
(1, 'Shonen'),
(2, 'Shoujo'),
(3, 'Seinen'),
(4, 'Josei');

