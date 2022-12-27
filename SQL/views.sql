-- Active: 1669719169707@@127.0.0.1@3306@mangadb
CREATE VIEW MangaInPossesso
AS
SELECT nome FROM mangadb.volume WHERE possesso = 1;

CREATE VIEW MangaMancanti
AS
SELECT nome FROM mangadb.volume WHERE possesso = 0;

CREATE VIEW SerieInPossesso
AS
SELECT * FROM mangadb.serie ORDER BY `stato` desc;

CREATE VIEW Mangaka
AS
SELECT * FROM mangadb.autore;

